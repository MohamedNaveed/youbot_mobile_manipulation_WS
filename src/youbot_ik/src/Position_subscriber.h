/*
Writtern by Mohamed Naveed G , B.Tech, NITT
Mail id: mohdnaveed96@gmail.com
June 2017
*/
#include <iostream> // for standard operations

using namespace std;

double x_present, y_present;
ros::Subscriber ObjOdomSubscriber;

void Odom_data_callback(const nav_msgs::Odometry::ConstPtr& msg)
{
  x_present=msg->pose.pose.position.x;
  y_present=msg->pose.pose.position.y;
  cout<<"Hi I got called"<<endl;
}

void get_position()
{
  ros::NodeHandle n;
  cout<<"I'm at get_position"<<endl;
  ObjOdomSubscriber=n.subscribe("odom", 1, Odom_data_callback);
}
