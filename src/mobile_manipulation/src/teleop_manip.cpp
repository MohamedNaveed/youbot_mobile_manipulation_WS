//Header files
#include "ros/ros.h"
#include "boost/units/systems/si.hpp"
#include "boost/units/io.hpp"

#include "brics_actuator/JointPositions.h"
#include "geometry_msgs/Twist.h"
#include "nav_msgs/Odometry.h"
#include "trajectory_msgs/JointTrajectory.h"//message type for publising on topic associated with arm and gripper in gazebo
#include "object_recognition_msgs/RecognizedObjectArray.h"


#include <eigen3/Eigen/Dense> // for matrix operation
#include <math.h> // for mathematical operations
#include "Math_other.h"//self-defined mathemetical functions

//publish data to control robot
#include "YouBot_publisher.h"//uncomment it while running youbot and comment while simulating on gazebo
//#include "YouBot_publisher_gazebo.h"//uncomment it while simulating  on gazebo and comment while running bot


int main(int argc, char **argv) {
	ros::init(argc, argv, "youbot_ros_control");
	youbot_publisher();

	double ang=0;
	int joint=1;
	double prev_th1=-168, prev_th2=-64, prev_th3=145, prev_th4=-102, prev_th5=-166;

	while(joint!=0){
		cout<<"which joint do you want to set?"<<endl;
		cout<<"set joint=0 if you want to exit, 1-5 to operate respective individual joints, 6 to operate gripper, 9 for to take arm up straight and 10 for home position"<<endl;
		cin>>joint;
		if(joint==0){
			break;
		}

		if (joint==1){
			cout<<"At what angle do you want to set the joint?"<<endl;
			cout<<"Range for J1: -168 to 168"<<endl;
			cout<<"-ve for anticlockwise and +ve for clockwise rotation"<<endl;
			cin>> ang;
			cout<<"------"<<endl;
			cout<<"   "<<endl;
			if(-168<=ang<=168){
				moveArm(rad(ang), rad(prev_th2), rad(prev_th3), rad(prev_th4),rad(prev_th5));
			}
			else{
				cout<<"[WARNING]: please enter a value within range"<<endl;
				cout<<"------"<<endl;
				cout<<"   "<<endl;
			}
			prev_th1=ang;
		}
		else if (joint==2){
			cout<<"At what angle do you want to set the joint?"<<endl;
			cout<<"Range for J2: -64 to 89"<<endl;
			cout<<"-ve for backward and +ve for forward"<<endl;
			cin>> ang;
			cout<<"------"<<endl;
			cout<<"   "<<endl;
			if(-64<=ang<=89){
				moveArm(rad(prev_th1), rad(ang), rad(prev_th3), rad(prev_th4),rad(prev_th5));
			}
			else{
				cout<<"[WARNING]: please enter a value within range"<<endl;
				cout<<"------"<<endl;
				cout<<"   "<<endl;
			}
			prev_th2=ang;
		}
		else if (joint==3){
			cout<<"At what angle do you want to set the joint?"<<endl;
			cout<<"Range for J3: -150 to 145"<<endl;
			cout<<"-ve for backward and +ve for forward"<<endl;
			cin>> ang;
			cout<<"------"<<endl;
			cout<<"   "<<endl;
			if(-150<=ang<=145){
				moveArm(rad(prev_th1), rad(prev_th2), rad(ang), rad(prev_th4),rad(prev_th5));
			}
			else{
				cout<<"[WARNING]: please enter a value within range"<<endl;
				cout<<"------"<<endl;
				cout<<"   "<<endl;
			}
			prev_th3=ang;
		}
		else if (joint==4){
			cout<<"At what angle do you want to set the joint?"<<endl;
			cout<<"Range for J4: -101 to 101"<<endl;
			cout<<"-ve for backward and +ve for forward"<<endl;
			cin>> ang;
			cout<<"------"<<endl;
			cout<<"   "<<endl;
			if(-102<=ang<=102){
				moveArm(rad(prev_th1), rad(prev_th2), rad(prev_th3), rad(ang),rad(prev_th5));
			}
			else{
				cout<<"[WARNING]: please enter a value within range"<<endl;
				cout<<"------"<<endl;
				cout<<"   "<<endl;
			}
			prev_th4=ang;
		}
		else if (joint==5){
			cout<<"At what angle do you want to set the joint?"<<endl;
			cout<<"Range for J5: -166 to 166"<<endl;
			cout<<"-ve for anticlockwise and +ve for clockwise rotation"<<endl;
			cin>> ang;
			cout<<"------"<<endl;
			cout<<"   "<<endl;
			if(-166<=ang<=166){

				moveArm(rad(prev_th1), rad(prev_th2), rad(prev_th3), rad(prev_th4),rad(ang));
			}
			else{
				cout<<"[WARNING]: please enter a value within range"<<endl;
				cout<<"------"<<endl;
				cout<<"   "<<endl;
			}
			prev_th5=ang;
		}

		else if (joint==6){
			int v=1;
			while(ros::ok()){
			cout<<"enter 1 to open gripper, enter 2 to close gripper; enter any other number to exit"<<endl;
			cin>>v;
			if(v==1){
				open_gripper();
				ros::Duration(2).sleep();
			}
			else if (v==2){
				close_gripper();
				ros::Duration(2).sleep();
			}
			else{
				break;
			}
		}
		}

		else if(joint==9)
		{
			cout<<"Taking arm to upstraight position"<<endl;
			moveArm(rad(0), rad(0), rad(0), rad(0), rad(0));
			ros::Duration(1).sleep();
		}

		else if(joint==10)
		{
			cout<<"Taking arm to home position"<<endl;
			moveArm(rad(-168), rad(-64), rad(145), rad(-101), rad(-166));
			ros::Duration(1).sleep();
		}

		else{
			cout<<"------"<<endl;
			cout<<"[WARNING]: wrong input, please read instruction mentioned above"<<endl;
			cout<<"------"<<endl;
			cout<<"   "<<endl;
			int i=1;
		}

	}

	sleep(1);
	ros::shutdown();

	return 0;
}
