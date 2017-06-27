class confg//
{
	public:
    confg();//constructor

  	static int row3; //row3: Parameter to choose between elbow up and elbow down configuration
  	static double zg; //zg : Verticle distance between Ground and goal
  	static double beta; //beta : Link4 (end-effector) angle with horizontal axis
  	static double row2; //row2: Prameter to choose distance between goal and head of axis of front wheel along x axis of frame {0}
    static double JA1, JA2, JA3, JA4, JA5;//Joint angles of manipualtor

    static double prev_th1, prev_th2, prev_th3, prev_th4,prev_th5;//variables to store last published joint angles
    void store_JA(double p_th1, double p_th2, double p_th3, double p_th4, double p_th5);//function to store last published joint angles
    VectorXd prev_JA();//To get last joint angles

    static double prev_x, prev_y, prev_yaw;//variable to store last bot base pose
    void store_base_pose(double p_x, double p_y, double p_yaw);//function to store last bot base pose
    VectorXd prev_base_pose();//To get last bot base pose

    static double prev_zg, prev_beta, prev_row2;//To store last goal data
    void store_goal(double x_zg, double beta, double row2);//To store last goal data
    VectorXd prev_goal();//To get last goal data

    void set_goal(int r3, double z, double b, double r2);//To set new goal

 	protected:
    //l2,l3,l4: Length of link2, link3 and link4 respectively
    static double l2;
    static double l3;
    static double l4;
};
//all are in m
double confg::l2=.155;
double confg::l3=.135;
double confg::l4=.1951;

int confg::row3=0;
double confg::zg=0;
double confg::beta=0;
double confg::row2=0;

double confg::JA1=rad(0);
double confg::JA2=rad(0);
double confg::JA3=rad(0);
double confg::JA4=rad(0);
double confg::JA5=rad(3);


double confg::prev_x=0;
double confg::prev_y=0;
double confg::prev_yaw=0;

double confg::prev_zg=730.1;
double confg::prev_beta=rad(90);
double confg::prev_row2=-28;

double confg::prev_th1=rad(0);
double confg::prev_th2=rad(0);
double confg::prev_th3=rad(0);
double confg::prev_th4=rad(0);
double confg::prev_th5=rad(3);

confg::confg()
{
cout<<"configuring youbot..."<<endl;
}

void confg::set_goal(int r3, double z, double b, double r2)
{
    row3=r3;
    zg=z,
    beta=b,
    row2=r2;

    //zg=-215;//-245;
    //row2=row2;
		cout<<"rho2 at set goal : "<<row2<<endl;
}

void confg::store_JA(double p_th1, double p_th2, double p_th3, double p_th4, double p_th5)
{
  prev_th1= p_th1;
  prev_th2=p_th2;
  prev_th3=p_th3;
  prev_th4=p_th4;
  prev_th5=p_th5;
  cout<<"prev_stored"<<prev_th2*180/pi()<<prev_th3*180/pi()<<prev_th4*180/pi()<<endl;
}

VectorXd confg::prev_JA()
{
  VectorXd prev_JA=VectorXd::Zero(5);
  prev_JA<<prev_th1,prev_th2,prev_th3,prev_th4,prev_th5;
  cout<<"prev_returned"<<prev_th2*180/pi()<<prev_th3*180/pi()<<prev_th4*180/pi()<<endl;

  return prev_JA;
}

void confg::store_base_pose(double p_x, double p_y, double p_yaw)
{
  prev_x= p_x;
  prev_y=p_y;
  prev_yaw=p_yaw;
}

VectorXd confg::prev_base_pose()
{
  VectorXd prev_BP=VectorXd::Zero(3);
  prev_BP<<prev_x,prev_y,prev_yaw;
  return prev_BP;
}

void confg::store_goal(double zg, double beta, double row2)
{
  prev_zg=zg;
  prev_beta=beta;
  prev_row2=row2;
}

VectorXd confg::prev_goal()
{
  VectorXd prev_goal=VectorXd::Zero(3);
  prev_goal<<prev_zg,prev_beta,prev_row2;
  return prev_goal;
}
