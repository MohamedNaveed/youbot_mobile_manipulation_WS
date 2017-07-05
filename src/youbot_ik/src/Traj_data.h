//This func gives trajectory data for movement of base
//Note: x, y, and phi stand for x-coordinate, y-coordinate and yaw angle if bot is starting from 0,0,0
#include <math.h>
MatrixXd move_base_data(double time, double step, double x, double y, double phi)
{
    confg base;
	Traj_gen traj;

    VectorXd initial_pose=VectorXd::Zero(3);
    initial_pose=base.prev_base_pose();//Get previous pose of bot to get intial values for trajectory

    base.store_base_pose(x,y,phi);//Store current goal to use during next execution as previous value

    // Intial and final data to move base
    //Data related to x-coordinate
    double xi=initial_pose(0); double xidot=0; double xiddot=0;
    double xf=x; double xfdot=0; double xfddot=0;
    //Data related to y-coordinate
    double yi=initial_pose(1); double yidot=0; double yiddot=0;
    double yf=y; double yfdot=0; double yfddot=0;
    //Data related to yaw angle phi
    double phii=initial_pose(2); double phiidot=0; double phiiddot=0;
    double phif=phi; double phifdot=0; double phifddot=0;
    // inital anf final time repectively
    double t0=0; double tf=time;

    //Declaration of matrix to store trajectory data
    MatrixXd data_x=MatrixXd::Zero(step+1,4);
    MatrixXd data_y=MatrixXd::Zero(step+1,4);
    MatrixXd data_phi=MatrixXd::Zero(step+1,4);

    //Storing trajectory data in declared matrix
    data_x=traj.traj_gen(xi,xidot,xiddot,xf,xfdot,xfddot,t0,tf,step);
    data_y=traj.traj_gen(yi,yidot,yiddot,yf,yfdot,yfddot,t0,tf,step);
    data_phi=traj.traj_gen(phii,phiidot,phiiddot,phif,phifdot,phifddot,t0,tf,step);


    //Storing all data in one matrix
    MatrixXd all_data=MatrixXd::Zero(step+1,12);
    all_data<<data_x,data_y,data_phi;

    return all_data;
}


//This function gives trajectory data for movement of base whithout holding previous information
//Note: x, y, and phi stand for x distance, y distance and yaw angle bot need to move

MatrixXd move_base_ml_data(double time, double step, double x, double y, double phi, double xi, double yi, double phii)
{
    confg base;
    Traj_gen traj;

    // Intial and final data to move base
    //Data related to x-coordinate
    double xidot=0; double xiddot=0;
    double xf=x+xi; double xfdot=0; double xfddot=0;
    //Data related to y-coordinate
    double yidot=0; double yiddot=0;
    double yf=y+yi; double yfdot=0; double yfddot=0;
    //Data related to yaw angle phi
    double phiidot=0; double phiiddot=0;
    double phif=phi+phii; double phifdot=0; double phifddot=0;
    // inital anf final time repectively
    double t0=0; double tf=time;

    //Declaration of matrix to store trajectory data
    MatrixXd data_x=MatrixXd::Zero(step+1,4);
    MatrixXd data_y=MatrixXd::Zero(step+1,4);
    MatrixXd data_phi=MatrixXd::Zero(step+1,4);

    //Storing trajectory data in declared matrix
    data_x=traj.traj_gen(xi,xidot,xiddot,xf,xfdot,xfddot,t0,tf,step);

    data_y=traj.traj_gen(yi,yidot,yiddot,yf,yfdot,yfddot,t0,tf,step);

    data_phi=traj.traj_gen(phii,phiidot,phiiddot,phif,phifdot,phifddot,t0,tf,step);

    //Storing all data in one matrix
    MatrixXd all_data=MatrixXd::Zero(step+1,12);
    all_data<<data_x,data_y,data_phi;

    cout<<"trajectory generated..."<<endl;
    return all_data;
}


//This function gives trajectory data in joint space for movement of arm

MatrixXd move_manip_js_data(double time, double step, double row3, double zg, double beta, double row2, double th1, double th5)
{
    Manipulator manip;
    Traj_gen traj;

    VectorXd initial_JA=VectorXd::Zero(5);
    initial_JA=manip.prev_JA();//Get previous joint angle value of bot arm to get intial values for trajectory
    cout<<"pho2 before set goal:"<<row2<<endl;
    manip.set_goal(row3,zg,beta,row2);//Set goal data to find theta 2, 3 and 4
    manip.store_goal(zg,beta,row2);//Set goal data to find theta 2, 3 and 4

    double th3=manip.cal_JA3();//calculate joint angle2
    double th2=manip.cal_JA2();//calculate joint angle3
    double th4=manip.cal_JA4();//calculate joint angle4

    if(th2<rad(-64) || th2>rad(89) || th3<rad(-150) || th3>rad(145) || th4<rad(-102) ||th4>rad(102)){
        th2=initial_JA(1);
        th3=initial_JA(2);
        th4=initial_JA(3);
    }

    manip.store_JA(th1,th2,th3,th4,th5);//Store current arm joint angles to use next time as initial value

     // Intial and final data to move arm
    //Data related to joint angle1
    double th1i=initial_JA(0); double th1idot=0; double th1iddot=0;
    double th1f=th1; double th1fdot=0; double th1fddot=0;
    //Data related to joint angle2
    double th2i=initial_JA(1); double th2idot=0; double th2iddot=0;
    double th2f=th2; double th2fdot=0; double th2fddot=0;
    //Data related to joint angle3
    double th3i=initial_JA(2); double th3idot=0; double th3iddot=0;
    double th3f=th3; double th3fdot=0; double th3fddot=0;
    //Data related to joint angle4
    double th4i=initial_JA(3); double th4idot=0; double th4iddot=0;
    double th4f=th4; double th4fdot=0; double th4fddot=0;
    //Data related to joint angle5
    double th5i=initial_JA(4); double th5idot=0; double th5iddot=0;
    double th5f=th5; double th5fdot=0; double th5fddot=0;
    // inital anf final time repectively
    double t0=0; double tf=time;

    //Declaration of matrix to store trajectory data
    MatrixXd data_th1=MatrixXd::Zero(step+1,4);
    MatrixXd data_th2=MatrixXd::Zero(step+1,4);
    MatrixXd data_th3=MatrixXd::Zero(step+1,4);
    MatrixXd data_th4=MatrixXd::Zero(step+1,4);
    MatrixXd data_th5=MatrixXd::Zero(step+1,4);

    //Storing trajectory data in declared matrix
    data_th1=traj.traj_gen(th1i,th1idot,th1iddot,th1f,th1fdot,th1fddot,t0,tf,step);
    data_th2=traj.traj_gen(th2i,th2idot,th2iddot,th2f,th2fdot,th2fddot,t0,tf,step);
    data_th3=traj.traj_gen(th3i,th3idot,th3iddot,th3f,th3fdot,th3fddot,t0,tf,step);
    data_th4=traj.traj_gen(th4i,th4idot,th4iddot,th4f,th4fdot,th4fddot,t0,tf,step);
    data_th5=traj.traj_gen(th5i,th5idot,th5iddot,th5f,th5fdot,th5fddot,t0,tf,step);

    //Storing all data in one matrix
    MatrixXd all_data=MatrixXd::Zero(step+1,20);
    all_data<<data_th1,data_th2,data_th3,data_th4,data_th5;
    cout<<" manipulator trajectory generated..."<<endl;
    return all_data;
}


////This function gives trajectory data in cartesian space for movement of arm

MatrixXd move_manip_cs_data(double time, double step, double row3, double zg, double beta, double row2, double th1, double th5)
{
    confg arm;
    Manipulator manip;
    Traj_gen traj;

    VectorXd last_goal=VectorXd::Zero(3);
    last_goal=manip.prev_goal();//Get previous goal data of bot arm to get intial values for trajectory
    cout<<"prev_goal: "<<last_goal(0)<<" "<<last_goal(1)<<" "<<last_goal(2)<<endl;
    cout<<"current_goal: "<<zg<<" "<<beta<<" "<<row2<<endl;
    VectorXd initial_JA=VectorXd::Zero(5);
    initial_JA=manip.prev_JA();//Get previous joint angle value of bot arm to get intial values for trajectory

     arm.store_goal(zg,beta,row2);//Store current goal data to use next time as initial value

    // Intial and final data to move arm
    //Data related z
    double zi=last_goal(0); double zidot=0; double ziddot=0;
    double zf=zg; double zfdot=0; double zfddot=0;
    //Data related beta
    double betai=last_goal(1); double betaidot=0; double betaiddot=0;
    double betaf=beta; double betafdot=0; double betafddot=0;
    //Data related row2
    double row2i=last_goal(2); double row2idot=0; double row2iddot=0;
    double row2f=row2; double row2fdot=0; double row2fddot=0;
    // inital anf final time repectively
    double t0=0; double tf=time;

    //Declaration of matrix to store trajectory data
    MatrixXd data_z=MatrixXd::Zero(step+1,4);
    MatrixXd data_beta=MatrixXd::Zero(step+1,4);
    //MatrixXd data_row2=MatrixXd::Zero(step+1,4);
    VectorXd data_row2=VectorXd::Zero(step+1);
    //Storing trajectory data in declared matrix
    data_z=traj.traj_gen(zi,zidot,ziddot,zf,zfdot,zfddot,t0,tf,step);
    data_beta=traj.traj_gen(betai,betaidot,betaiddot,betaf,betafdot,betafddot,t0,tf,step);
    //data_row2=traj.traj_gen(row2i,row2idot,row2iddot,row2f,row2fdot,row2fddot,t0,tf,step);
    for(int var=0; var<=step; var++)
    {
      data_row2(var)=(cos(beta)/sin(beta))*(data_z(var,1)-zi) + row2i;//line equation for motion in cartesian space
    }
    double th2,th3,th4;//declare variable to store joint angle 2, 3 and 4 for each trajectory data

    MatrixXd all_data=MatrixXd::Zero(step+1,5);//matrix to store joint angles for each point in tranjectory

    //Calculation of joint angles for each point in trajectory

    double temp_th2=initial_JA(1);
    double temp_th3=initial_JA(2);
    double temp_th4=initial_JA(3);
    cout<<"temp_angle"<<temp_th2*180/pi()<<" "<<temp_th3*180/pi()<<" "<<temp_th4*180/pi()<<endl;

    for(int i=0; i<=step; i++)
     {
        manip.set_goal(row3,data_z(i,1),data_beta(i,1),data_row2(i));
        cout<<data_z(i,1)<<" "<<data_beta(i,1)<<" "<<data_row2(i)<<endl;;

        th3=manip.cal_JA3();
        th2=manip.cal_JA2();
        th4=manip.cal_JA4();
        cout<<th2<<" "<<th3<<" "<< th4<<" "<< endl;

        if(th2<rad(-64) || th2>rad(89) || th3<rad(-150) || th3>rad(145) || th4<rad(-102) ||th4>rad(102)){
            th2=temp_th2;
            th3=temp_th3;
            th4=temp_th4;
        }

        all_data(i,0)=th1;
        all_data(i,1)=th2;
        all_data(i,2)=th3;
        all_data(i,3)=th4;
        all_data(i,4)=th5;
        cout<<"th2:"<<th2<<" th3:"<<th3<<" th4:"<< th4<<" "<< endl;

        temp_th2=th2;
        temp_th3=th3;
        temp_th4=th4;


     }

     return all_data;
}
