//Header files
#include "ros/ros.h"
#include "boost/units/systems/si.hpp"
#include "boost/units/io.hpp"
#include <tf/transform_broadcaster.h>
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
//#include "Position_subscriber.h"

#include "Traj_gen_func.h"//function for trajectory generation
#include "Traj_data.h"//functions to generate data for a trajectorty
#include "Control_bot.h"//functions to control robot
#include "Transform_k2J2.h"//function to transform object pose from kinect frame to youbot joint frame
#include "Transform.h"
#include "Get_pose_coke.h"//functions to give pose of objectsget in youbot frame

void home_position()
{
  open_gripper();
	ros::Duration(1).sleep();
	moveArm(rad(0), rad(-64), rad(145), rad(-101), rad(3));
	ros::Duration(3).sleep();
}


int main(int argc, char** argv)
{
  double roll=0,pitch=0,yaw=0, rho2=.300, Beta, Theta; //rho1 - redundancy
	double L=.033;//distance between J1 and J2 along x
	double M=.061;//distance between Wheel axis and J1 along x


  // double x_error, x_dot,sum_x_error,dif_x_error, x_error_old;
  //
  // double Kp=1, Ki=0, Kd=0;

	ros::init(argc, argv, "my_tf_broadcaster");
	static tf::TransformBroadcaster br;
	youbot_publisher();
  pose_subscriber();
  get_position();
	confg set;

	//Getting pose
	home_position(); // moving arm to home position
  //movePlatform(rf(-0.009),0,0);//give an input velocity to check bot movement
  //cout<<"Testing velocity"<<endl;
  //ros::Duration(10).sleep();
  //cout<<"tested"<<endl;
  //get_pose_coke();
	cout<<"Received pose x :"<<pose_lin_x<<" y:"<<pose_lin_y<<" z:"<<pose_lin_z<<endl;
	cout<<"Orient"<<" W:"<<pose_ang_w<<" X:"<<pose_ang_x<<" Y:"<<pose_ang_y<<" Z:"<<pose_ang_z<<endl;

	Beta=atan2(T_kinect_to_wheelaxis(2,2), pow(pow(T_kinect_to_wheelaxis(2,0),2)+pow(T_kinect_to_wheelaxis(2,1),2),2));
	cout<<"Beta:"<<Beta*57.324<<endl;
	Theta=atan2(T_kinect_to_wheelaxis(2,1), T_kinect_to_wheelaxis(2,0));
	cout<<"Theta:"<<Theta*57.32<<endl;

	//cout<<"roll:"<<roll*57.324<<" pitch:"<<pitch*57.324<<" yaw:"<<yaw*57.324<<endl; // 57.324 for converting rad to degrees


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

	double x_goal=1 + M-L*cos(rho1) - rho2*cos(rho1);
	double y_goal=0 - L*sin(rho1) - rho2*sin(rho1);
	cout<<"x_goal:"<<x_goal<<"  y_goal:"<<y_goal<<endl;
	double time_x=abs(x_goal/0.05);
  double step_x=time_x*200;
	double time_y=abs(y_goal/0.05);
  double step_y=time_y*200;

	double time_max=max(time_x,time_y);//find maximum time to reach the goal position
  double step_max=max(step_x,step_y);

  cout<<"moving youbot platform..."<<endl;
  move_base_ml(time_max, step_max, x_goal, y_goal, rad(yaw));
  movePlatform(0,0,0);
  while(ros::ok())
  {
    br.sendTransform(tf::StampedTransform(transform1, ros::Time::now(),"kinect2_rgb_optical_frame","input"));
    //br.sendTransform(tf::StampedTransform(transform2, ros::Time::now(),"kinect2_rgb_optical_frame","wheel axis"));
		//br.sendTransform(tf::StampedTransform(transform3, ros::Time::now(),"wheel axis","Joint2"));
		ros::Duration(10).sleep();

  }

}
