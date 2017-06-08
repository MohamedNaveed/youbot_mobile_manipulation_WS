#include <iostream> // for standard operations
using namespace std;

//Declare publisher objects
ros::Publisher platformPublisher;
ros::Publisher armPublisher;
ros::Publisher gripperPublisher;

// create a brics actuator message with the given joint position values
trajectory_msgs::JointTrajectory createArmPositionCommand(std::vector<double>& newPositions) 
{
	int numberOfJoints = 5;
	trajectory_msgs::JointTrajectory msg;

	if (newPositions.size() < numberOfJoints)
		return msg; // return empty message if not enough values provided

	trajectory_msgs::JointTrajectoryPoint point;

	for (int i = 0; i < 5; i++) { // 5 DOF
		point.positions.push_back(newPositions[i]);
		point.velocities.push_back(0);
		point.accelerations.push_back(0);
	}
	point.time_from_start = ros::Duration(0.3);
	msg.points.push_back(point);

	// set joint names
	for (int i = 0; i < 5; i++) {
		std::stringstream jointName;
		jointName << "arm_joint_" << (i + 1);
		msg.joint_names.push_back(jointName.str());
	}
	
	// fill message header and sent it out
	msg.header.frame_id = "arm_link_0";
	msg.header.stamp = ros::Time::now();

	return msg;
}

// create a brics actuator message for the gripper using the same position for both fingers
trajectory_msgs::JointTrajectory createGripperPositionCommand(double newPosition) {
	
	trajectory_msgs::JointTrajectory msg;

	trajectory_msgs::JointTrajectoryPoint point;

	for (int i = 0; i < 2; i++) { // 5 DOF
		point.positions.push_back(newPosition);
		point.velocities.push_back(0);
		point.accelerations.push_back(0);
	}
	point.time_from_start = ros::Duration(0.3);
	msg.points.push_back(point);

	// set joint names
	for (int i = 0; i < 2; i++) {
		std::stringstream jointName;
		if(i==0)
			jointName << "gripper_finger_joint_l";
		else
			jointName << "gripper_finger_joint_r";

		msg.joint_names.push_back(jointName.str());
	}
	
	// fill message header and sent it out
	msg.header.frame_id = "gripper_finger_joint_l";
	msg.header.stamp = ros::Time::now();

	return msg;
}

// move platform to goal
void movePlatform(double x_vel,double y_vel, double yaw_vel) {
	geometry_msgs::Twist twist;

	twist.linear.x = x_vel;
	twist.linear.y = y_vel;
	twist.angular.z=yaw_vel;

	platformPublisher.publish(twist);
	//ros::Duration(time).sleep();

	//cout<<"X_vel: "<<x_vel<<" y_vel: "<<y_vel<<"yaw "<<yaw<<endl;
}

// move arm
void moveArm (double th1,double th2,double th3,double th4,double th5) {
	trajectory_msgs::JointTrajectory msg;

	std::vector<double> jointvalues(5);

	th1=rf(0.0100692+((th1+rad(169))*5.8300708)/(rad(338)));
	th2=rf(0.0100692+((th2+rad(65))*2.6079208)/(rad(155)));
	th3=rf(-5.02655+((th3+rad(151))*5.010842)/(rad(297)));
	th4=rf(0.0221239+((th4+rad(102.5))*3.4070761)/(rad(205)));
	th5=rf(0.110619+((th5+rad(167.5))*5.530971)/(rad(335)));

	jointvalues[0] = th1;
	jointvalues[1] = th2;
	jointvalues[2] = th3;
	jointvalues[3] = th4;
	jointvalues[4] = th5;
	
	msg = createArmPositionCommand(jointvalues);
	armPublisher.publish(msg);
	//ros::Duration(time).sleep();

	//cout<<th1<<" "<<th2<<" "<<th3<<" "<<th4<<" "<<th5<<endl;
}

// open and close gripper
void open_gripper() {
	trajectory_msgs::JointTrajectory msg;
	
	// open gripper
	msg = createGripperPositionCommand(0.011);
	gripperPublisher.publish(msg);
	//ros::Duration(5).sleep();
}

void close_gripper() {
	trajectory_msgs::JointTrajectory msg;
	
	// close gripper
	msg = createGripperPositionCommand(0);
	gripperPublisher.publish(msg);
	//ros::Duration(5).sleep();
}

void youbot_publisher()
{
	ros::NodeHandle n;

	platformPublisher = n.advertise<geometry_msgs::Twist>("cmd_vel", 1);
	armPublisher = n.advertise<trajectory_msgs::JointTrajectory>("arm_1/arm_controller/command", 1);
	gripperPublisher = n.advertise<trajectory_msgs::JointTrajectory>("arm_1/gripper_controller/command", 1);

	sleep(1);
}