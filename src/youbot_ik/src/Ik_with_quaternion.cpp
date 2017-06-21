//Header files
#include "ros/ros.h"
#include "boost/units/systems/si.hpp"
#include "boost/units/io.hpp"

#include "brics_actuator/JointPositions.h"
#include "geometry_msgs/Twist.h"
#include "nav_msgs/Odometry.h"
#include "trajectory_msgs/JointTrajectory.h"//message type for publising on topic associated with arm and gripper in gazebo
#include "object_recognition_msgs/RecognizedObjectArray.h"


#include <iostream> // for standard operations
using namespace std;//standard namespace
#include <eigen3/Eigen/Geometry>//for quarternion to rotatioin matrix conversion
#include <eigen3/Eigen/Dense> // for matrix operation
using namespace Eigen;//eigen namespace
#include <math.h> // for mathematical operations
#include "Math_other.h"//self-defined mathemetical functions

//#include "YouBot_publisher.h"//uncomment it while publishing data to youbot and comment it while publishing data to gazebo
#include "YouBot_publisher_gazebo.h"//uncomment it while simulating  on gazebo and comment while running bot
#include "YouBot_odom_subscriber.h"//subscribe to odometry data
#include "Obj_pose_subs.h"//subscriber to object pose

#include "Configuration.h"//set youbot parameters
#include "Manipulator.h"//functions to solve inverse and forward kinematics

#include "Traj_gen_func.h"//function for trajectory generation
#include "Traj_data.h"//functions to generate data for a trajectorty
#include "Control_bot.h"//functions to control robot
#include "Transform.h"//function to transform object pose from kinect frame to youbot frame
#include "Get_pose_coke.h"//functions to give pose of objectsget in youbot frame

#include <tf/transform_broadcaster.h>

Eigen::Matrix3d R, R1, R2;
Eigen::Matrix4d T_kinect_to_wheelaxis, T_wheelaxis_to_J1, T_J1_to_J2;
Eigen::Vector3d pose;
Eigen::MatrixXd T, T1, T2;

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

void home_position()
{
  open_gripper();
	ros::Duration(1).sleep();
	moveArm(rad(0), rad(-64), rad(145), rad(-101), rad(3));
	ros::Duration(3).sleep();
}

int main(int argc, char **argv)
{
  /*double rho1, Beta, Theta; //rho1 - redundancy

  ros::init(argc, argv , "youbot_manipulator_ik_with_quaternion"); //initialize NodeHandle
  youbot_publisher();
  pose_subscriber();
	static tf::TransformBroadcaster br;
  tf::Transform transform1,transform2;

  confg set;//Intializing all parameters

	origin wheelaxis;
	origin Joint1;
	origin Joint2;
	rho1=0;//rho1 redundancy
	wheelaxis.x=228; wheelaxis.y=0; wheelaxis.z=-34; // wrt base frame
	Joint1.x=-61; Joint1.y=0; Joint1.z=195;//wrt wheel axis frame
	Joint2.x=33*cos(rad(rho1)); Joint2.y=33*sin(rad(rho1)); Joint2.z=0;//wrt Joint 1 frame
  home_position();
  cout<<"initial parameters set..."<<endl;

  //Getting pose
  //pose<<get_pose_coke();
	//cout<<"Received pose:"<<pose<<endl;
  tf::Quaternion q(pose(3), pose(4), pose(5), pose(6));//w,x,y,z
  Eigen::Quaterniond eigen_q(q);//convert to quaternion in eigen
  R = eigen_q.toRotationMatrix();//Rotation matrix of the quaternion
  cout<<"The rotation matrix is"<<R<<endl;

	T=R;
	T.conservativeResize(T.rows(),T.cols()+1);
	T.col(3)<<pose(0),pose(1),pose(2);
	T.conservativeResize(T.rows()+1,T.cols());
	T.row(3)<<0,0,0,1;
	cout<<"Transformation:"<<T<<endl;

  //Transformations
	kinect_to_bot_transform();
	T_wheelaxis_to_J1= Translate(-Joint1.x, -Joint1.y, -Joint1.z)*Rot_x(rad(180))*T_kinect_to_wheelaxis; //bot_to_J1_transform
	cout<<"T_wheelaxis_to_J1:"<<T_wheelaxis_to_J1<<endl;
	T_J1_to_J2= Translate(-Joint2.x, -Joint2.y, -Joint2.z)*Rot_z(rad(-90))*Rot_x(rad(90))*Rot_z(rad(rho1))*T_wheelaxis_to_J1; //J1_to_J2_transform
	cout<<"T_J1_to_J2:"<<T_J1_to_J2<<endl;

	transform1.setOrigin(tf::Vector3(T_kinect_to_wheelaxis(3,0),T_kinect_to_wheelaxis(3,1),T_kinect_to_wheelaxis(3,2)));
	transform2.setOrigin(tf::Vector3(T_J1_to_J2(3,0),T_J1_to_J2(3,1),T_J1_to_J2(3,2)));
	T1=T_kinect_to_wheelaxis;
	T2=T_J1_to_J2;
	T1.conservativeResize(T1.rows()-1, T1.cols()-1);
	T2.conservativeResize(T2.rows()-1, T2.cols()-1);
	R1=T1; R2=T2;
	Eigen::Quaterniond q1(R1);
	Eigen::Quaterniond q2(R2);
	tf::Quaternion q_new_1(q1.w(), q1.x(),q1.y(),q1.z());
	tf::Quaternion q_new_2(q2.w(), q2.x(),q2.y(),q2.z());
	transform1.setRotation(q_new_1);
	transform2.setRotation(q_new_2);

  Beta=atan2(T_kinect_to_wheelaxis(2,2), pow(pow(T_kinect_to_wheelaxis(2,0),2)+pow(T_kinect_to_wheelaxis(2,1),2),2));
	cout<<"Beta:"<<Beta*57.324<<endl;
	Theta=atan2(T_kinect_to_wheelaxis(2,1), T_kinect_to_wheelaxis(2,0));
	cout<<"Theta:"<<Theta*57.32<<endl;

	while(ros::ok())
  {
    br.sendTransform(tf::StampedTransform(transform1, ros::Time::now(),"world","T_kinect_to_wheelaxis"));
    br.sendTransform(tf::StampedTransform(transform2, ros::Time::now(),"world","T_J1_to_J2"));
    ros::Duration(1).sleep();
  }
*/
}
