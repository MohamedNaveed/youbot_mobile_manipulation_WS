#include <iostream> // for standard operations

using namespace std;

void get_odom(){
	ros::Rate r(90.9);
	r.sleep();
	ros::spinOnce();
	cout<<odom_lin_x_pose<<endl;
}