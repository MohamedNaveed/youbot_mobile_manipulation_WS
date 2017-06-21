#include <iostream> // for standard operations
using namespace std;

Eigen::Matrix3d temp, R;
Eigen::Matrix4d T_kinect_to_wheelaxis, T_wheelaxis_to_J1, T_J1_to_J2;
Eigen::MatrixXd T, final_R, T1;
double rho1=0;


tf::Transform transform1,transform2,transform3;

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

class origin
{
public:
	float x;
	float y;
	float z;
};

Vector3d transform_k_J2(double x, double y, double z, double q_w, double q_x, double q_y, double q_z)
{
  tf::Quaternion q(q_w, q_x, q_y, q_z);
  Eigen::Quaterniond eigen_q(q);
  R = eigen_q.toRotationMatrix();
  transform1.setRotation(q);//Transform for input values
  transform1.setOrigin(tf::Vector3(x,y,z));
  origin wheelaxis;
	origin Joint1;
	origin Joint2;

  rho1=0;//rho1 redundancy
	wheelaxis.x=.228; wheelaxis.y=0; wheelaxis.z=-.034; // wrt base frame
	Joint1.x=-.061; Joint1.y=0; Joint1.z=.195;//wrt wheel axis frame
	Joint2.x=.033*cos(rad(rho1)); Joint2.y=.033*sin(rad(rho1)); Joint2.z=0;//wrt Joint 1 frame

  T=R;
	T.conservativeResize(T.rows(),T.cols()+1);
	T.col(3)<<x,y,z;
	T.conservativeResize(T.rows()+1,T.cols());
	T.row(3)<<0,0,0,1;
	cout<<"Transformation:"<<T<<endl;

	kinect_to_bot_transform();
	T_wheelaxis_to_J1= Translate(-Joint1.x, -Joint1.y, -Joint1.z)*Rot_x(rad(180))*T_kinect_to_wheelaxis; //bot_to_J1_transform
	cout<<"T_wheelaxis_to_J1:"<<T_wheelaxis_to_J1<<endl;
	T_J1_to_J2= Translate(-Joint2.x, -Joint2.y, -Joint2.z)*Rot_z(rad(-90))*Rot_x(rad(90))*Rot_z(rad(rho1))*T_wheelaxis_to_J1; //J1_to_J2_transform
	cout<<"T_J1_to_J2:"<<T_J1_to_J2<<endl;

  cout<<"Wheel axis x:"<<T_kinect_to_wheelaxis(0,3)<<" y:"<<T_kinect_to_wheelaxis(1,3)<<" z:"<<T_kinect_to_wheelaxis(2,3)<<endl;
  Vector3d position_xyz=Vector3d::Zero();
  position_xyz<<T_kinect_to_wheelaxis(0,3),T_kinect_to_wheelaxis(1,3),T_kinect_to_wheelaxis(2,3);
  return position_xyz;
}
