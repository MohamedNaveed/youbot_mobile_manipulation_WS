#include <iostream> // for standard operations

using namespace std;

void apply_PID()
{
  ros::Rate odom_rate(.1);//rate at which data is being published

  while(ros::ok())
  {
    odom_rate.sleep();
    ros::spinOnce();
    cout<<"at apply_PID"<<" x_present:"<<x_present<<" y_present:"<<y_present<<endl;
  }
}
