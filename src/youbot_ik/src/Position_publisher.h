/*
Writtern by Mohamed Naveed G , B.Tech, NITT
Mail id: mohdnaveed96@gmail.com
June 2017
*/
#include <iostream> // for standard operations
using namespace std;

ros::Publisher pub;
void publish_data(double pointx, double pointy)
{
  cout<<"at publisher"<<endl;
  geometry_msgs::Point pos;
  pos.x=pointx;
  pos.y=pointy;
  pub.publish(pos);
}

void position_publisher()
{
  ros::NodeHandle n;
  pub=n.advertise<geometry_msgs::Point>("youbot/cmd_pos", 1);
  cout<<"Position publisher called"<<endl;
  sleep(1);
}
