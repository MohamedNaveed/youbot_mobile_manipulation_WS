//Function to move base (remembers the coordinates)
#include "Position_subscriber.h"
void apply_PID(double rate)
{
  ros::Rate odom_rate(rate);//rate at which data is being published

    odom_rate.sleep();
    ros::spinOnce();
    cout<<"at apply_PID"<<" x_present:"<<x_present<<" y_present:"<<y_present<<endl;
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

//Function to move robot (dont remeber the coordinate)
void move_base_ml(double time, double step, double x, double y, double phi)
{
	double x_error, x_dot,sum_x_error,dif_x_error, x_error_old;
  double Kp=1, Ki=0, Kd=0;

	cout<<"move_base_ml called..."<<endl;
	cout<<"x:"<<x<<" y:"<<y<<" phi:"<<phi<<endl;
	MatrixXd data=MatrixXd::Zero(step+1,12);
	data=move_base_ml_data(time, step, x, y, phi);
	double dt=time/step;
	cout<<"moving base"<<endl;


	for(int i=0; i<=step; i++)
     {
			 	apply_PID(1/dt);
				if(i>0)
			 		x_error=data(i-1,1)-x_present;
			 	sum_x_error+=x_error;
			 	dif_x_error=x_error-x_error_old;
			 	x_dot=Kp*x_error + Ki*sum_x_error + Kd*dif_x_error;
			 	cout<<"PID x_dot:"<<x_dot<<"x error:"<<x_error<<endl;
			 	cout<<"x:"<<data(i,1)<<" xdot:"<<data(i,2)<<endl;
        movePlatform(rf(data(i,2)+x_dot),rf(data(i,6)),rf(data(i,10)));
				x_error_old=x_error;
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
	data_base=move_base_ml_data(time, step, x, y, phi);
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
