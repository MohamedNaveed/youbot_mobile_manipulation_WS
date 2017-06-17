#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <iostream>
using namespace std;

int main(int argc, char** argv)
{
  double x,y,z,roll,pitch,yaw;

  cout<<"Enter x:"<<endl;
  cin>>x;
  cout<<"Enter y:"<<endl;
  cin>>y;
  cout<<"Enter z:"<<endl;
  cin>>z;
  // cout<<"Enter roll:"<<endl;
  // cin>>roll;
  // cout<<"Enter pitch:"<<endl;
  // cin>>pitch;
  // cout<<"Enter yaw:"<<endl;
  // cin>>yaw;

  ros::init(argc, argv, "my_tf_broadcaster");

  static tf::TransformBroadcaster br;
  tf::Transform transform1,transform2;
  transform1.setOrigin(tf::Vector3(x,y,z));
  transform1.setOrigin(tf::Vector3(x,y,z));
  tf::Quaternion q(0, 1, 0, 0);
  tf::Matrix3x3 m(q);
  m.getRPY(roll, pitch, yaw);
  cout<<"roll:"<<roll*57.324<<" pitch:"<<pitch*57.324<<" yaw:"<<yaw*57.324<<endl; // 57.324 for converting rad to degrees
  transform1.setRotation(q);
  transform2.setRotation(q);

  while(ros::ok())
  {
    br.sendTransform(tf::StampedTransform(transform1, ros::Time::now(),"world","frame"));
    br.sendTransform(tf::StampedTransform(transform2, ros::Time::now(),"world","new"));
    ros::Duration(1).sleep();
  }

}
