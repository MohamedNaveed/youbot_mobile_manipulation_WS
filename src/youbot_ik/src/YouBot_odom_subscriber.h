#include <iostream> // for standard operations

using namespace std;

double odom_lin_x_vel, odom_lin_y_vel, odom_ang_z_vel, odom_lin_x_pose, odom_lin_y_pose, odom_ang_z_pose;

ros::Subscriber odometrySubscriber;

//A callback function. Execcuted each time a odometry message arrives
void OdomDataRecieved(const nav_msgs::Odometry::ConstPtr& msg){
	odom_lin_x_vel=msg->twist.twist.linear.x;
	odom_lin_y_vel=msg->twist.twist.linear.y;
	odom_ang_z_vel=msg->twist.twist.angular.z;
	odom_lin_x_pose=msg->pose.pose.position.x;
	odom_lin_y_pose=msg->pose.pose.position.y;
	odom_ang_z_pose=msg->pose.pose.orientation.z;
}

void odom_subscriber(){
	ros::NodeHandle n;
	odometrySubscriber= n.subscribe ("odom",1000,&OdomDataRecieved);
}