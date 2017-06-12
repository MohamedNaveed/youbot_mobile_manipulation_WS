//Header files
#include "ros/ros.h"
#include "boost/units/systems/si.hpp"
#include "boost/units/io.hpp"

#include "brics_actuator/JointPositions.h"
#include "geometry_msgs/Twist.h"
#include "nav_msgs/Odometry.h"
#include "trajectory_msgs/JointTrajectory.h"//message type for publising on topic associated with arm and gripper in gazebo
#include "object_recognition_msgs/RecognizedObjectArray.h"


#include <iostream> // for standard operations
using namespace std;//standard namespace
#include <eigen3/Eigen/Dense> // for matrix operation
using namespace Eigen;//eigen namespace
#include <math.h> // for mathematical operations
#include "Math_other.h"//self-defined mathemetical functions

//#include "YouBot_publisher.h"//uncomment it while publishing data to youbot and comment it while publishing data to gazebo
#include "YouBot_publisher_gazebo.h"//uncomment it while simulating  on gazebo and comment while running bot
#include "YouBot_odom_subscriber.h"//subscribe to odometry data

#include "Configuration.h"//set youbot parameters
#include "Manipulator.h"//functions to solve inverse and forward kinematics

#include "Traj_gen_func.h"//function for trajectory generation
#include "Traj_data.h"//functions to generate data for a trajectorty
#include "Control_bot.h"//functions to control robot
#include "Transform.h"//function to transform object pose from kinect frame to youbot frame


int main(int argc, char **argv)
{
  ros::init(argc, argv , "youbot_manipulator_ik"); //initialize NodeHandle
  youbot_publisher();

  confg set;//Intializing all parameters
  double x,y,z,rho2=300, rho3=0, beta=0; //x,y,z are the input goal locations, rho2,rho3=0 (elbow up) 1 (elbow down) are the redunend parameters, beta is the angle made by last link with horizontal
  double time_m=.05;
  double step_m=time_m*200;
  double theta_1=rad(0), theta_5=rad(3);
  cout<<"enter x:"<<endl;
  cin>>x;
  cout<<"enter pitch:"<<endl;
  cin>>beta;
  cout<<"enter z:"<<endl;
  cin>>z;
  cout<<"enter roll:"<<endl;
  cin>>th5;
  cout<<"The entered values are x:"<<x<<" y:"<<y<<" z:"<<z<<endl;

  cout<<"moving youbot manipulator..."<<endl;
  while(ros::ok())
  {
    move_manip_js(time_m, step_m, rho3, z, beta, x, theta_1, theta_5);//move arm to goal in desired time
    //ros::Duration(1).sleep();
  }
  sleep(1);
  return 0;
}
