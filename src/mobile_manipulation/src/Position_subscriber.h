/*
Writtern by Mohamed Naveed G , B.Tech, NITT
Mail id: mohdnaveed96@gmail.com
June 2017
*/
#include <iostream> // for standard operations

using namespace std;

double x_present, y_present, phi_present_w,phi_present_x,phi_present_y,phi_present_z;
ros::Subscriber ObjOdomSubscriber;

void Odom_data_callback(const nav_msgs::Odometry::ConstPtr& msg)
{
  x_present=msg->pose.pose.position.x;
  y_present=msg->pose.pose.position.y;
  phi_present_w=msg->pose.pose.orientation.w;
  phi_present_x=msg->pose.pose.orientation.x;
  phi_present_y=msg->pose.pose.orientation.y;
  phi_present_z=msg->pose.pose.orientation.z;
  //cout<<"Odom called"<<endl;
}

void get_position()
{
  ros::NodeHandle n;
  cout<<"I'm at get_position"<<endl;
  ObjOdomSubscriber=n.subscribe("odom", 1, Odom_data_callback);
}
