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
#include <eigen3/Eigen/Dense> // for matrix operation
using namespace Eigen;//eigen namespace
#include <math.h> // for mathematical operations
#include "Math_other.h"//self-defined mathemetical functions

#include "YouBot_publisher.h"//uncomment it while publishing data to youbot and comment it while publishing data to gazebo
//#include "YouBopositionublisher_gazebo.h"//uncomment it while publishing data to gazebo and comment it while publishing data to youbot

#include "YouBot_odom_subscriber.h"//subscribe to odometry data
#include "Obj_pose_subs.h"//subscriber to object pose

#include "Configuration.h"//set youbot parameters
#include "Manipulator.h"//functions to solve inverse and forward kinematics

#include "Traj_gen_func.h"//function for trajectory generation
#include "Traj_data.h"//functions to generate data for a trajectorty
#include "Control_bot.h"//functions to control robot
#include "Transform.h"//function to transform object pose from kinect frame to youbot frame
#include "Get_pose.h"//functions to give pose of objectsget in youbot frame




extern double pose_lin_x,pose_lin_y,pose_lin_z,pose_ang_x,pose_ang_y,pose_ang_z,pose_ang_w,detect;
extern string obj_key;
extern double odom_lin_x_vel, odom_lin_y_vel, odom_ang_z_vel, odom_lin_x_pose, odom_lin_y_pose, odom_ang_z_pose;

int main(int argc, char **argv) {
	ros::init(argc, argv, "youbot_ros_control");
	youbot_publisher();
	pose_subscriber();

	double time_m, step_m, row3, zg, beta, row2, th1, th5;
	double x_g, y_g, yaw_g, time_x, time_y, time_yaw, step_x, step_y, step_yaw;
	Vector3d obj_position=Vector3d::Zero();

//---------------------set it to initial position---------------------------------

	confg set;//Intializing all parameters
	open_gripper();
		ros::Duration(1).sleep();
	moveArm(rad(0), rad(-64), rad(145), rad(-101), rad(3));
	ros::Duration(3).sleep();

	obj_position=get_pose_cylinder();


 //----------------------------self detect and pick---------------------------
 	for(int x=0; x<5; x++){

		obj_position=get_pose_cylinder();

		row3=0;
		zg=(obj_position(2)+50+30), beta=rad(-30), row2=380;
		th1=rad(0);
		th5=rad(3);
		time_m=1;
		step_m=time_m*200;

		x_g=(obj_position(0)-380)/1000;
		time_x=abs(x_g/0.05);
		step_x=time_x*200;

		y_g=obj_position(1)/1000;
		time_y=abs(y_g/0.05);
		step_y=time_y*200;

		move_base_ml(time_y, step_y, 0, y_g, 0);
		ros::Duration(0.5).sleep();

		move_base_ml(time_x, step_x, x_g, 0, 0);
		ros::Duration(0.5).sleep();

		obj_position=get_pose_cylinder();

		while(abs(obj_position(0)-380)>10){
			move_base_ml(2, 400, -0.1, 0, 0);
			ros::Duration(1).sleep();

			obj_position=get_pose_cylinder();

			x_g=(obj_position(0)-380)/1000;
			time_x=abs(x_g/0.03);
			step_x=time_x*200;

			move_base_ml(time_x, step_x, x_g, 0, 0);
			ros::Duration(1).sleep();

			obj_position=get_pose_cylinder();
		 }

		obj_position=get_pose_cylinder();

		while(abs(obj_position(1))>10){
			if(obj_position(1)>0){
				move_base_ml(1, 200, 0, 0.025, 0);
				ros::Duration(1).sleep();
		 	}
		 	if(obj_position(1)<0){
		 		move_base_ml(1, 200, 0, -0.025, 0);
				ros::Duration(1).sleep();
		 	}


			obj_position=get_pose_cylinder();

			y_g=obj_position(1)/1000;
			time_y=abs(y_g/0.05);
			step_y=time_y*200;

			move_base_ml(time_y, step_y, 0, y_g, 0);
			ros::Duration(1).sleep();

			obj_position=get_pose_cylinder();
		 }

		open_gripper();
		ros::Duration(1).sleep();

		move_manip_js(time_m, step_m, 0, 30, beta, 300, th1, th5);//move arm to goal in desired time
		ros::Duration(1).sleep();

		move_manip_cs(time_m, step_m, 0, 30, beta, 380, th1, th5);//move arm to goal in desired time
		ros::Duration(1).sleep();

	//------

		close_gripper();
		ros::Duration(10).sleep();

		moveArm(rad(0), rad(0), rad(0), rad(0), rad(3));
		ros::Duration(1).sleep();

		moveArm(rad(0), rad(30), rad(-150), rad(20), rad(3));
		ros::Duration(1).sleep();

		moveArm(rad(20), rad(30), rad(-150), rad(20), rad(3));
		ros::Duration(10).sleep();

		open_gripper();
		ros::Duration(1).sleep();

		moveArm(rad(20), rad(0), rad(0), rad(0), rad(3));
		ros::Duration(1).sleep();

		moveArm(rad(0), rad(-64), rad(145), rad(-101), rad(3));
		ros::Duration(5).sleep();

	}
//----------------------------------------------------
	// if(position(0)>0.2)
	// {
	// double x_goal=position(0)-0.2;
	// cout<<x_goal<<endl;
	// double y_goal=position(1);
	// cout<<y_goal<<endl;
	// double yaw_angle=0;
	// //move base to object
	// move_base(10, step, x_goal, y_goal, yaw_angle);
	// ros::Duration(2).sleep();
	// }

	// open_gripper();
	// ros::Duration(3).sleep();

	// move_manip_js(time, step, row3, zg-5, rad(0), row2-50, 0, th5);//move arm to goal in desired time
	// ros::Duration(1).sleep();

	// move_manip_cs(time, step, row3, zg-5, rad(0), row2-25, 0, th5);//move arm to goal in desired time
	// ros::Duration(1).sleep();
	// move_manip_cs(time, step, row3, zg-5, rad(0), row2, 0, th5);//move arm to goal in desired time
	// ros::Duration(1).sleep();

	// close_gripper();
	// ros::Duration(2).sleep();

	// moveArm(rad(0), rad(-64), rad(145), rad(-101), rad(-166));
	// ros::Duration(3).sleep();

//-----------------------------------fixed coordinate, only manipulator-----------------------------------
	// open_gripper();
	// ros::Duration(5).sleep();

	// // //goal data
	// double time=1, step=time*200;
	// // //double row3=0, zg=730.1, beta=rad(90), row2=-28;//up straight
	// double row3=0, zg=50, beta=rad(-90), row2=250;
	// double th1=rad(0);
	// double th5=rad(3);
	// double x_goal=0;
	// //x_goal=(obj_position(0)-250)/1000.0;

	// double y_goal=0;
	// //y_goal=obj_position(1)/1000.0;
	// double yaw_angle=rad(0);

	// //move_base(time, step, x_goal, y_goal, yaw_angle);

	// // //get the arm into  position
	// //move_manip_cs(time, step, row3, zg, beta, row2, th1, th5);//move arm to goal in desired time
	// ros::Duration(1).sleep();


	// close_gripper();
	// ros::Duration(1).sleep();

	// moveArm(rad(0), rad(-64), rad(145), rad(-101), rad(-166));
	// ros::Duration(1).sleep();

	//--------------------------------fixed coordinate, base and manipulator-------------------------------------

	// //goal data
	// double time=1, step=time*200;
	// double time1=1, step1=time1*200;
	// //double x_goal=0.8, y_goal=0.8, yaw_angle=rad(30);
	// //double row3=0, zg=730.1, beta=rad(90), row2=-28;//up straight
	// double row3=0, zg=250, beta=rad(0), row2=300;
	// double th1=rad(0);
	// double th5=rad(0);

	// // //move base to object
	// // move_base(time, step, x_goal, y_goal, yaw_angle);
	// // ros::Duration(2).sleep();


	// //get the arm into  position
	// move_manip_js(time, step, row3, zg, beta, row2, th1, th5);//move arm to goal in desired time
	// ros::Duration(1).sleep();

	// move_manip_cs(time1, step1, row3, zg, beta, 350, th1, th5);//move arm to goal in desired time
	// ros::Duration(1).sleep();

	// moveArm(set.JA1, set.JA2, set.JA3, set.JA4, set.JA5);//move all joints to home position
	// ros::Duration(1).sleep();


	// //move base back to the original position
	// // move_base(time,step,0,0,0);
	// // ros::Duration(1).sleep();

//-----------------------------------------------------------------------

	//moveArm(rad(-168), rad(-64), rad(145), rad(-101), rad(-166));
	// ros::Duration(1).sleep();

	// moveArm(rad(0), rad(-64), rad(145), rad(-101), rad(-166));
	// ros::Duration(1).sleep();

	// moveArm(set.JA1, set.JA2, set.JA3, set.JA4, set.JA5);//take manipulator arm up straight
	// ros::Duration(1).sleep();

	sleep(1);
	ros::shutdown();

	return 0;
}
