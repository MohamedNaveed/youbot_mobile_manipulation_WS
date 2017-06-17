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
  cout<<"Enter roll:"<<endl;
  cin>>roll;
  cout<<"Enter pitch:"<<endl;
  cin>>pitch;
  cout<<"Enter yaw:"<<endl;
  cin>>yaw;

  ros::init(argc, argv, "my_tf_broadcaster");

  static tf::TransformBroadcaster br;
  tf::Transform transform;
  transform.setOrigin(tf::Vector3(x,y,z));
  tf::Quaternion q;
  q.setRPY(roll,pitch,yaw);
  transform.setRotation(q);
  br.sendTransform(tf::StampedTransform(transform, ros::Time::now(),"world","frame"));

  while(ros::ok())
  {
    br.sendTransform(tf::StampedTransform(transform, ros::Time::now(),"world","frame"));
  }

}
