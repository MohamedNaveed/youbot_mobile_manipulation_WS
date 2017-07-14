/*
Writtern by Mohamed Naveed G , B.Tech, NITT
Mail id: mohdnaveed96@gmail.com
June 2017
*/
#include <iostream> // for standard operations
using namespace std;
#include "ros/ros.h"
#include <eigen3/Eigen/Geometry>//for quarternion to rotatioin matrix conversion
#include <eigen3/Eigen/Dense> // for matrix operation
using namespace Eigen;//eigen namespace
#include<geometry_msgs/PoseStamped.h>


ros::Publisher nav_goal;
Matrix3d rot_nav_goal=Matrix3d::Identity();

void publish_goal(double pointx, double pointy, double pointz, double w, double x, double y, double z)
{
  //cout<<"at publisher"<<endl;
  geometry_msgs::PoseStamped pos;
  pos.pose.position.x=pointx;
  pos.pose.position.y=pointy;
  pos.pose.position.z=pointz;
  pos.pose.orientation.w=w;
  pos.pose.orientation.x=x;
  pos.pose.orientation.y=y;
  pos.pose.orientation.z=z;
  pos.header.frame_id="map";
  nav_goal.publish(pos);
}

void goal_publisher()
{
  ros::NodeHandle n;
  nav_goal=n.advertise<geometry_msgs::PoseStamped>("move_base_simple/goal", 1);
  cout<<"Goal Publisher called.."<<endl;
  sleep(1);
}

Matrix3d Rot_z_3(double rot_z)
{
	Matrix3d Z=Matrix3d::Identity();
	Z << cos(rot_z), -sin(rot_z),0,
		sin(rot_z), cos(rot_z), 0,
		0, 0, 1;

	return Z;
}
