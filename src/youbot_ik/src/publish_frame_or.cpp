#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <iostream>
using namespace std;
#include <eigen3/Eigen/Geometry>//for quarternion to rotatioin matrix conversion
#include <eigen3/Eigen/Dense> // for matrix operation
using namespace Eigen;
#include <math.h> // for mathematical operations


Eigen::Matrix3d temp, R;
Eigen::Matrix4d T_kinect_to_wheelaxis, T_wheelaxis_to_J1, T_J1_to_J2;
Eigen::Vector3d position;
Eigen::MatrixXd T, final_R, T1;

class origin
{
public:
	float x;
	float y;
	float z;
};

Matrix4d Rot_x(double rot_x)
{
	Matrix4d X=Matrix4d::Identity();
	X << 1,0,0,0,
		0, cos(rot_x), -sin(rot_x), 0,
		0, sin(rot_x), cos(rot_x), 0,
		0, 0, 0, 1;

	return X;
}

Matrix4d Rot_y(double rot_y)
{
	Matrix4d Y=Matrix4d::Identity();
	Y << cos(rot_y), 0, sin(rot_y),0,
		0, 1, 0, 0,
		-sin(rot_y), 0, cos(rot_y), 0,
		0, 0, 0, 1;

	return Y;
}

Matrix4d Rot_z(double rot_z)
{
	Matrix4d Z=Matrix4d::Identity();
	Z << cos(rot_z), -sin(rot_z),0, 0,
		sin(rot_z), cos(rot_z), 0, 0,
		0, 0, 1, 0,
		0, 0, 0, 1;

	return Z;
}

Matrix4d Translate(double trans_x, double trans_y, double trans_z)
{
	Matrix4d Trans=Matrix4d::Identity();
	Trans <<1, 0, 0, trans_x,
     	0, 1, 0, trans_y,
      0, 0, 1, trans_z,
      0, 0, 0, 1;

	return Trans;
}

double rad(double angle)
{
	double rad_angle=angle*3.14/180;
	return rad_angle;
}

void kinect_to_bot_transform()
{
  // double rot_x=rad(-135);
  // double rot_z=rad(-90);
	double trans_x=-0.292;
	double trans_y=-0.101995;
	double trans_z=1.147;

	Matrix4d Tw2k_trans= Matrix4d::Identity();//transformation matrix for tranlation from kinect to bot coordinate frame
  Tw2k_trans=Translate(trans_x, trans_y, trans_z);

  T_kinect_to_wheelaxis = Tw2k_trans*Rot_z(rad(-90))*Rot_x(rad(-135))*T;

  cout<<"The Transformation from kinect to wheel axis is"<<T_kinect_to_wheelaxis<<endl;

}

int main(int argc, char** argv)
{
  double x,y,z,roll,pitch,yaw, P1, Beta, Theta; //P1 rho1 - redundancy

	origin wheelaxis;
	origin Joint1;
	origin Joint2;
	P1=0;//rho1 redundancy
	wheelaxis.x=.228; wheelaxis.y=0; wheelaxis.z=-.034; // wrt base frame
	Joint1.x=-.061; Joint1.y=0; Joint1.z=.195;//wrt wheel axis frame
	Joint2.x=.033*cos(rad(P1)); Joint2.y=.033*sin(rad(P1)); Joint2.z=0;//wrt Joint 1 frame

  cout<<"Enter x:"<<endl;
  cin>>x;
  cout<<"Enter y:"<<endl;
  cin>>y;
  cout<<"Enter z:"<<endl;
  cin>>z;
  // cout<<"Enter roll:"<<endl;
  // cin>>roll;
  // cout<<"Enter pitch:"<<endl;
  // cin>>pitch;
  // cout<<"Enter yaw:"<<endl;
  // cin>>yaw;

  ros::init(argc, argv, "my_tf_broadcaster");

  static tf::TransformBroadcaster br;
  tf::Transform transform1,transform2,transform3;

  // Eigen::Quaterniond rot;
  // Eigen::Matrix<double,3,3> rotationMatrix;
  //rotationMatrix = rot.toRotationMatrix();
	position<<x,y,z;
  tf::Quaternion q(0, 1, 0, 0);
  tf::Matrix3x3 m(q);
  m.getRPY(roll, pitch, yaw);

  Eigen::Quaterniond eigen_q(q);
  R = eigen_q.toRotationMatrix();

  cout<<"The rotation matrix is"<<R<<endl;

	T=R;
	T.conservativeResize(T.rows(),T.cols()+1);
	T.col(3)= position;
	T.conservativeResize(T.rows()+1,T.cols());
	T.row(3)<<0,0,0,1;
	cout<<"Transformation:"<<T<<endl;

	kinect_to_bot_transform();
	T_wheelaxis_to_J1= Translate(-Joint1.x, -Joint1.y, -Joint1.z)*Rot_x(rad(180))*T_kinect_to_wheelaxis; //bot_to_J1_transform
	cout<<"T_wheelaxis_to_J1:"<<T_wheelaxis_to_J1<<endl;
	T_J1_to_J2= Translate(-Joint2.x, -Joint2.y, -Joint2.z)*Rot_z(rad(-90))*Rot_x(rad(90))*Rot_z(rad(P1))*T_wheelaxis_to_J1; //J1_to_J2_transform
	cout<<"T_J1_to_J2:"<<T_J1_to_J2<<endl;



	Beta=atan2(T_kinect_to_wheelaxis(2,2), pow(pow(T_kinect_to_wheelaxis(2,0),2)+pow(T_kinect_to_wheelaxis(2,1),2),2));
	cout<<"Beta:"<<Beta*57.324<<endl;
	Theta=atan2(T_kinect_to_wheelaxis(2,1), T_kinect_to_wheelaxis(2,0));
	cout<<"Theta:"<<Theta*57.32<<endl;

	//cout<<"roll:"<<roll*57.324<<" pitch:"<<pitch*57.324<<" yaw:"<<yaw*57.324<<endl; // 57.324 for converting rad to degrees
	transform1.setOrigin(tf::Vector3(x,y,z));
	transform1.setRotation(q);//Transform for input values
	transform2.setOrigin(tf::Vector3(T_kinect_to_wheelaxis(0,3),T_kinect_to_wheelaxis(1,3),T_kinect_to_wheelaxis(2,3)));
	cout<<"Kinect_to wheel"<<T_kinect_to_wheelaxis(0,3)<<T_kinect_to_wheelaxis(1,3)<<T_kinect_to_wheelaxis(2,3)<<endl;
	T1=T_kinect_to_wheelaxis;
	T1.conservativeResize(T1.rows()-1, T1.cols()-1);
	temp=T1;
	Eigen::Quaterniond q1(temp);
	tf::Quaternion q_wheelaxis(q1.w(), q1.x(),q1.y(),q1.z());
	transform2.setRotation(q_wheelaxis);//transform for wheel axis
	transform3.setOrigin(tf::Vector3(T_J1_to_J2(0,3),T_J1_to_J2(1,3),T_J1_to_J2(2,3)));
	cout<<"T_J1_J2:"<<T_J1_to_J2(0,3)<<T_J1_to_J2(1,3)<<T_J1_to_J2(2,3)<<endl;
	final_R=T_J1_to_J2;
	final_R.conservativeResize(final_R.rows()-1, final_R.cols()-1);
	//cout<<"final_R:"<<final_R<<endl;
	temp=final_R;//using temp, because Eigen:: Quaterniond quaternion takes only Matrix3d as input while final_R is matrixXd
	Eigen::Quaterniond quaternion(temp);
  tf::Quaternion q_J2(quaternion.w(), quaternion.x(),quaternion.y(),quaternion.z());
  transform3.setRotation(q_J2);//transform for J2

  while(ros::ok())
  {
    br.sendTransform(tf::StampedTransform(transform1, ros::Time::now(),"world","input"));
    br.sendTransform(tf::StampedTransform(transform2, ros::Time::now(),"world","wheel axis"));
		br.sendTransform(tf::StampedTransform(transform3, ros::Time::now(),"world","Joint2"));
    ros::Duration(1).sleep();
  }

}
