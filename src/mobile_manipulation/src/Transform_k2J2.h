/*
Writtern by Mohamed Naveed G , B.Tech, NITT
Mail id: mohdnaveed96@gmail.com
June 2017
*/

#include <iostream> // for standard operations
using namespace std;

Eigen::Matrix3d temp, R;
Eigen::Matrix4d T_obj_wheelaxis, T_obj_J1, T_obj_J2;
Eigen::MatrixXd T_obj_kinect, final_R, T1;
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
	double trans_x=-0.300;
	double trans_y=-0.070;
	double trans_z=0.738;

	Matrix4d Tw2k_trans= Matrix4d::Identity();//transformation matrix for tranlation from kinect to bot coordinate frame
  Tw2k_trans=Translate(trans_x, trans_y, trans_z);

  T_obj_wheelaxis =Tw2k_trans*Rot_z(rad(-90))*Rot_x(rad(-122))*T_obj_kinect;

  cout<<"The Transformation from kinect to wheel axis is"<<T_obj_wheelaxis<<endl;

}

class origin
{
public:
	float x;

	float y;
	float z;
};

void bot_to_J1_transform()
{
	origin Joint1;
	Joint1.x=-.061; Joint1.y=0; Joint1.z=.195;//wrt wheel axis frame
	T_obj_J1= Translate(-Joint1.x, -Joint1.y, Joint1.z)*Rot_x(rad(180))*T_obj_wheelaxis; //bot_to_J1_transform
	cout<<"T_obj_J1:"<<T_obj_J1<<endl;

}

void J1_to_J2_transform()
{
	origin Joint2;
	Joint2.x=.033*cos(rad(rho1)); Joint2.y=.033*sin(rad(rho1)); Joint2.z=0;//wrt Joint 1 frame
	T_obj_J2= Translate(-Joint2.z, -Joint2.x, -Joint2.y)*Rot_z(rad(90))*Rot_x(rad(-90))*Rot_z(rad(rho1))*T_obj_J1;
	//J1_to_J2_transform //for better understanding look at at the translate matrix as mere values than reprsenting as Joint.x,y,z.
	cout<<"T_obj_J2:"<<T_obj_J2<<endl;
}

Vector3d transform_k_J2(double x, double y, double z, double q_w, double q_x, double q_y, double q_z)
{
  tf::Quaternion q(q_x, q_y, q_z, q_w);//x,y,z,w
  Eigen::Quaterniond eigen_q(q);
  R = eigen_q.toRotationMatrix();
  transform1.setRotation(q);//Transform for input values
  transform1.setOrigin(tf::Vector3(x,y,z));
	cout<<"pose x:"<<x<<" y:"<<y<<" z:"<<z<<endl;
  origin wheelaxis;

  rho1=0;//rho1 redundancy
	wheelaxis.x=.228; wheelaxis.y=0; wheelaxis.z=-.034; // wrt base frame

  T_obj_kinect=R;
	T_obj_kinect.conservativeResize(T_obj_kinect.rows(),T_obj_kinect.cols()+1);
	T_obj_kinect.col(3)<<x,y,z;
	T_obj_kinect.conservativeResize(T_obj_kinect.rows()+1,T_obj_kinect.cols());
	T_obj_kinect.row(3)<<0,0,0,1;
	cout<<"Transformation:"<<T_obj_kinect<<endl;

	kinect_to_bot_transform();
	bot_to_J1_transform();
	J1_to_J2_transform();
  cout<<"Wheel axis x:"<<T_obj_wheelaxis(0,3)<<" y:"<<T_obj_wheelaxis(1,3)<<" z:"<<T_obj_wheelaxis(2,3)<<endl;
  Vector3d position_xyz=Vector3d::Zero();
  position_xyz<<T_obj_wheelaxis(0,3),T_obj_wheelaxis(1,3),T_obj_wheelaxis(2,3);
  return position_xyz;
}
