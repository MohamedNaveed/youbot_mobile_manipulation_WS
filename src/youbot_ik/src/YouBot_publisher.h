#include <iostream> // for standard operations
using namespace std;

//Declare publisher objects
ros::Publisher platformPublisher;
ros::Publisher armPublisher;
ros::Publisher gripperPublisher;

// create a brics actuator message with the given joint position values
brics_actuator::JointPositions createArmPositionCommand(std::vector<double>& newPositions) {
	int numberOfJoints = 5;
	brics_actuator::JointPositions msg;

	if (newPositions.size() < numberOfJoints)
		return msg; // return empty message if not enough values provided

	for (int i = 0; i < numberOfJoints; i++) {
		// Set all values for one joint, i.e. time, name, value and unit
		brics_actuator::JointValue joint;
		joint.timeStamp = ros::Time::now();
		joint.value = newPositions[i];
		joint.unit = boost::units::to_string(boost::units::si::radian);

		// create joint names: "arm_joint_1" to "arm_joint_5" (for 5 DoF)
		std::stringstream jointName;
		jointName << "arm_joint_" << (i + 1);
		joint.joint_uri = jointName.str();

		// add joint to message
		msg.positions.push_back(joint);
	}
	return msg;
}

// create a brics actuator message for the gripper using the same position for both fingers
brics_actuator::JointPositions createGripperPositionCommand(double newPosition) {
	brics_actuator::JointPositions msg;

	brics_actuator::JointValue joint;
	joint.timeStamp = ros::Time::now();
	joint.unit = boost::units::to_string(boost::units::si::meter); // = "m"
	joint.value = newPosition;
	joint.joint_uri = "gripper_finger_joint_l";
	msg.positions.push_back(joint);		
	joint.joint_uri = "gripper_finger_joint_r";
	msg.positions.push_back(joint);		

	return msg;
}

// move platform to goal
void movePlatform(double x_vel,double y_vel, double yaw_vel) {
	geometry_msgs::Twist twist;

	twist.linear.x = x_vel;
	twist.linear.y = y_vel;
	twist.angular.z=yaw_vel;

	platformPublisher.publish(twist);
	//ros::Duration(1).sleep();
}

// move arm
void moveArm (double th1,double th2,double th3,double th4,double th5) {
	brics_actuator::JointPositions msg;
	
	std::vector<double> jointvalues(5);

	th1=rf(0.0100692+((th1+rad(169))*5.8300708)/(rad(338)));
	th2=rf(0.0100692+((th2+rad(65))*2.6079208)/(rad(155)));
	th3=rf(-5.02655+((th3+rad(151))*5.010842)/(rad(297)));
	th4=rf(0.0221239+((th4+rad(102.5))*3.4070761)/(rad(205)));
	th5=rf(0.110619+((th5+rad(167.5))*5.530971)/(rad(335)));
	//cout<<"mapped: "<<th2<<" "<<th3<<" "<<th4<<endl;

	jointvalues[0] = th1;
	jointvalues[1] = th2;
	jointvalues[2] = th3;
	jointvalues[3] = th4;
	jointvalues[4] = th5;
	
	msg = createArmPositionCommand(jointvalues);
	armPublisher.publish(msg);
	//ros::Duration(1).sleep();
}

// open and close gripper
void open_gripper() {
	brics_actuator::JointPositions msg;
	
	// open gripper
	msg = createGripperPositionCommand(0.011);
	gripperPublisher.publish(msg);
	//ros::Duration(1).sleep();
}

void close_gripper() {
	brics_actuator::JointPositions msg;
	
	// close gripper
	msg = createGripperPositionCommand(0);
	gripperPublisher.publish(msg);
	//ros::Duration(1).sleep();
}

void youbot_publisher()
{
	ros::NodeHandle n;

	platformPublisher = n.advertise<geometry_msgs::Twist>("cmd_vel", 1);
	armPublisher = n.advertise<brics_actuator::JointPositions>("arm_1/arm_controller/position_command", 1);
	gripperPublisher = n.advertise<brics_actuator::JointPositions>("arm_1/gripper_controller/position_command", 1);

	sleep(1);
}