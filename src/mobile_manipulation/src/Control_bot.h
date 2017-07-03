/*
Written by Vijendra Singh, Modified by Mohamed Naveed G , B.Tech, NITT (PID control was added for trajectory)
Mail id: mohdnaveed96@gmail.com
June 2017
*/
//Function to move base (remembers the coordinates)
#include "Position_subscriber.h"
#include <geometry_msgs/Pose2D.h>//required to publish Pose2D messages
#include "Position_publisher.h"
void call_odom(double rate)
{
  ros::Rate odom_rate(rate);//rate at which data is being published

    odom_rate.sleep();
    ros::spinOnce();
    //cout<<"at apply_PID"<<" x_present:"<<x_present<<" y_present:"<<y_present<<endl;
}

void move_base(double time, double step, double x, double y, double phi)
{
	MatrixXd data=MatrixXd::Zero(step+1,12);
	data=move_base_data(time, step, x, y, phi);
	double dt=time/step;

	for(int i=0; i<=step; i++)
     {
         movePlatform(rf(data(i,2)),rf(data(i,6)),rf(data(i,10)));
         ros::Duration(dt).sleep();
     }
}

double find_phi_present()//orientation is in quaternion, this function converts it to angle
{
  Eigen::Quaterniond Phi_q(phi_present_w,phi_present_x,phi_present_y,phi_present_z);
  Phi_q.normalize();
  Eigen::Matrix<double,3,3> R_phi;
  R_phi = Phi_q.toRotationMatrix();//Rotation matrix of phi
  double phi_present=atan2(R_phi(1,0),R_phi(0,0));
  //cout<<"phi: "<<phi_present<<endl;
  return phi_present;
}

//Function to move robot (dont remeber the coordinate)
void move_base_ml(double time, double step, double x, double y, double phi)
{
	double x_error, x_dot,sum_x_error,dif_x_error, x_error_old;
  double y_error, y_dot,sum_y_error,dif_y_error, y_error_old;
  double phi_error, phi_dot, sum_phi_error, dif_phi_error, phi_error_old;
  double phi_present;
  double Kp_x=0, Ki_x=0, Kd_x=0;
  double Kp_y=0.5, Ki_y=0, Kd_y=0;
  double Kp_phi=0.5, Ki_phi=0, Kd_phi=0;
	cout<<"move_base_ml called..."<<endl;
	cout<<"x:"<<x<<" y:"<<y<<" phi:"<<phi<<endl;
	MatrixXd data=MatrixXd::Zero(step+1,12);
  double dt=time/step;
  call_odom(1/dt);
  phi_present=find_phi_present();
	data=move_base_ml_data(time, step, x, y, phi, x_present, y_present, phi_present);

	cout<<"moving base"<<endl;
  //publish_traj();

	for(int i=0; i<=step; i++)
     {
			 	call_odom(1/dt);
        phi_present=find_phi_present();//orientation is in quaternion, this function converts it to angle
				if(i>0)//to prevent data(-1, x) when i=0
        {
			 		x_error=data(i-1,1)-x_present;
          y_error=data(i-1,5)-y_present;//x,y in meters
          phi_error=data(i-1,9)-phi_present;//phi is in rad
        }
			 	sum_x_error+=x_error;
        sum_y_error+=y_error;
        sum_phi_error+=phi_error;
			 	dif_x_error=x_error-x_error_old;
        dif_y_error=y_error-y_error_old;
        dif_phi_error=phi_error-phi_error_old;

        x_dot=Kp_x*x_error + Ki_x*sum_x_error + Kd_x*dif_x_error;//PID equation
        y_dot=Kp_y*y_error + Ki_y*sum_y_error + Kd_y*dif_x_error;
        phi_dot=Kp_phi*phi_error +  Ki_phi*sum_phi_error + Kd_phi*dif_phi_error;

        //cout<<"PID x_dot:"<<x_dot<<"x error:"<<x_error<<endl;
        //cout<<"PID y_dot:"<<y_dot<<"y error:"<<y_error<<endl;
			 //	cout<<"x:"<<data(i,1)<<" xdot:"<<data(i,2)<<endl;
      //  cout<<"y:"<<data(i,5)<<" ydot:"<<data(i,6)<<endl;
				publish_data(x_error, y_error, phi_error);
        movePlatform(rf(data(i,2)+x_dot),rf(data(i,6)+y_dot),rf(data(i,10)+phi_dot));
				x_error_old=x_error;
        y_error_old=y_error;
        phi_error_old=phi_error;
        //ros::Duration(dt).sleep();
     }
}

//Function to move arm using joint space tajectory
void move_manip_js(double time, double step, double row3, double zg, double beta, double row2,
	double th1, double th5)
{
	cout<<"move_manip_js called..."<<endl;
	MatrixXd data=MatrixXd::Zero(step+1,20);

	data=move_manip_js_data(time, step, row3, zg, beta, row2, th1, th5);
	double dt=time/step;

	for(int i=0; i<=step; i++)
     {
         moveArm(rf(data(i,1)),rf(data(i,5)),rf(data(i,9)),rf(data(i,13)),rf(data(i,17)));
				 //cout<<"Joint 1:"<<data(i,5)<<" Velocity:"<<rf(data(i,6))<<endl;
         //ros::Duration(dt).sleep();
     }
}

//Function to move arm using cartesian space trajectory
void move_manip_cs(double time, double step, double row3, double zg, double beta, double row2,
	double th1, double th5)
{
	MatrixXd data=MatrixXd::Zero(step+1,5);
	data=move_manip_cs_data(time, step, row3, zg, beta, row2, th1, th5);
	double dt=time/step;

	for(int i=0; i<=step; i++)
     {
         moveArm(rf(data(i,0)),rf(data(i,1)),rf(data(i,2)),rf(data(i,3)),rf(data(i,4)));
         ros::Duration(dt).sleep();
     }
}

//Form to mobase and arm parallely
void move_and_wave(double time, double step, double x, double y, double phi,
	double row3, double zg, double beta, double row2,double th1, double th5)
{
	MatrixXd data_base=MatrixXd::Zero(step+1,5);
	data_base=move_base_ml_data(time, step, x, y, phi, 0, 0, 0);
	MatrixXd data_arm=MatrixXd::Zero(step+1,5);
	data_arm=move_manip_cs_data(time, step, row3, zg, beta, row2, th1, th5);
	double dt=time/step;

	for(int i=0; i<=step; i++)
     {
     	 movePlatform(rf(data_base(i,2)),rf(data_base(i,6)),rf(data_base(i,10)));
         moveArm(rf(data_arm(i,0)),rf(data_arm(i,1)),rf(data_arm(i,2)),rf(data_arm(i,3)),rf(data_arm(i,4)));
         ros::Duration(dt).sleep();
     }
}
