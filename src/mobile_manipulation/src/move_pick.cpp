//Header files
/*
Writtern by Mohamed Naveed G , B.Tech, NITT
Mail id: mohdnaveed96@gmail.com
June 2017

Some of the header files and function used were written by Vijendra Singh
*/
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

#include "YouBot_publisher.h"//uncomment it while publishing data to youbot and comment it while publishing data to gazebo
//#include "YouBot_publisher_gazebo.h"//uncomment it while simulating  on gazebo and comment while running bot
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
  confg home;
  home.store_JA(rad(0),rad(-64),rad(145),rad(-101),rad(3));
}

void check_IK()
{
  pose_lin_x=1;pose_lin_y=1;pose_lin_z=0.1;
  double orient_angle=0;

  Eigen::MatrixXd Rot_temp;
  Rot_temp=Rot_x(rad(orient_angle));
  cout<<"Rot_temp"<<Rot_temp<<endl;
  Rot_temp.col(3)<<pose_lin_x, pose_lin_y, pose_lin_z,1;
  cout<<"Rot_temp"<<Rot_temp<<endl;
  T_obj_wheelaxis=Rot_temp;
  bot_to_J1_transform();
  J1_to_J2_transform();
}

void transform_frame_3()
{
  Eigen::Matrix3d R_temp;
  R_temp<<1, 0, 0,
          0, 1, 0,
          0, 0, 1;

  Eigen::Quaterniond q_R_temp(R_temp);
  tf::Quaternion q_R_temp_1( q_R_temp.x(),q_R_temp.y(),q_R_temp.z(), q_R_temp.w());//x,y,z,w format
  transform3.setRotation(q_R_temp_1);//Transform for input values
  transform3.setOrigin(tf::Vector3(.228,0,-.034));
}

int main(int argc, char** argv)
{
  double roll=0,pitch=0,yaw=0, rho2=0, rho3=0, Beta, Theta, Theta_5; //rho1 - redundancy
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
  position_publisher();
	confg set;

	//Getting pose
	home_position(); // moving arm to home position
  //ros::Duration(10).sleep();

  get_pose_coke();
	cout<<"Received pose x :"<<pose_lin_x<<" y:"<<pose_lin_y<<" z:"<<pose_lin_z<<endl;
	cout<<"Orient"<<" W:"<<pose_ang_w<<" X:"<<pose_ang_x<<" Y:"<<pose_ang_y<<" Z:"<<pose_ang_z<<endl;
  //check_IK();
  ros::Duration(2).sleep();

  Beta=atan2(T_obj_wheelaxis(2,2), pow(pow(T_obj_wheelaxis(1,2),2)+pow(T_obj_wheelaxis(0,2),2),2))-1.57;//-1.57 (90) added so that the object is grasped perpendicularly. Varies for different objects
	cout<<"Beta:"<<Beta*57.324<<endl;
	Theta=atan2(T_obj_wheelaxis(1,2), T_obj_wheelaxis(0,2));
	cout<<"Theta:"<<Theta*57.32<<endl;

  ros::Duration(2).sleep();
	//cout<<"roll:"<<roll*57.324<<" pitch:"<<pitch*57.324<<" yaw:"<<yaw*57.324<<endl; // 57.324 for converting rad to degrees


  transform_frame_3();//display wheel axis frame in rviz

	cout<<"Kinect_obj_wheel"<<T_obj_wheelaxis(0,3)<<T_obj_wheelaxis(1,3)<<T_obj_wheelaxis(2,3)<<endl;
	T1=T_obj_wheelaxis;
	T1.conservativeResize(T1.rows()-1, T1.cols()-1);
	temp=T1;
	Eigen::Quaterniond q1(temp);
	tf::Quaternion q_wheelaxis(q1.x(),q1.y(),q1.z(),q1.w());
	transform2.setRotation(q_wheelaxis);//transform for wheel axis

	cout<<"T_obj_J2:"<<T_obj_J2(0,3)<<T_obj_J2(1,3)<<T_obj_J2(2,3)<<endl;
	final_R=T_obj_J2;
	final_R.conservativeResize(final_R.rows()-1, final_R.cols()-1);
	//cout<<"final_R:"<<final_R<<endl;
	temp=final_R;//using temp, because Eigen:: Quaterniond quaternion takes only Matrix3d as input while final_R is matrixXd
	Eigen::Quaterniond quaternion(temp);
  tf::Quaternion q_J2(quaternion.x(),quaternion.y(),quaternion.z(), quaternion.w());

  if(Beta<-2.5)//Pose might be inverted, to prevent that
    Beta=-3.14-Beta;
  Beta=min(-.52,Beta);//compensate low height
  rho2=.200 + .1951*cos(Beta);//to conpesate for last link pose

	double x_goal=T_obj_wheelaxis(0,3) + M-L*cos(rho1) - rho2*cos(rho1);//
	double y_goal=T_obj_wheelaxis(1,3) - L*sin(rho1) - rho2*sin(rho1);//

  cout<<"x_goal:"<<x_goal<<"  y_goal:"<<y_goal<<endl;
	double time_x=abs(x_goal/0.05);
  double step_x=time_x*200;
	double time_y=abs(y_goal/0.05);
  double step_y=time_y*200;

	double time_max=max(time_x,time_y);//find maximum time to reach the goal position
  double step_max=max(step_x,step_y);

  cout<<"moving youbot platform..."<<endl;
  move_base_ml(time_max, step_max, x_goal, y_goal, 0);
  movePlatform(0,0,0);//the final x_dot , y_dot might be a non-zero value

  transform2.setOrigin(tf::Vector3(T_obj_wheelaxis(0,3)-x_goal,T_obj_wheelaxis(1,3)-y_goal,T_obj_wheelaxis(2,3)));
  double time_m=5, step_m=200*time_m;
  cout<<"matrix is "<<T_obj_J2<<" Given z :"<<T_obj_J2(0,3)<<endl;
  Theta_5=acos(T_obj_wheelaxis(2,2));
  if(Theta_5>1.57)
    Theta_5=Theta_5-3.14;
  cout<<"Theta 5:"<<Theta_5<<endl;

  ros::Duration(2).sleep();
  cout<<" Object goal wrt J2:"<<T_obj_J2(0,3)<<endl;
  move_manip_js(time_m, step_m, rho3, T_obj_J2(0,3), Beta, rho2, rad(rho1), -Theta);//move arm to goal in desired time give data in m //.1 added to compensate for height of wheel kept below
  ros::Duration(4).sleep();
  close_gripper();
  ros::Duration(2).sleep();
  transform_frame_3();
  while(ros::ok())
  {
    br.sendTransform(tf::StampedTransform(transform1, ros::Time::now(),"kinect2_rgb_optical_frame","object"));
    br.sendTransform(tf::StampedTransform(transform2, ros::Time::now(),"wheel axis","object_w"));
		br.sendTransform(tf::StampedTransform(transform3, ros::Time::now(),"base_link","wheel axis"));
		ros::Duration(1).sleep();

  }

}
