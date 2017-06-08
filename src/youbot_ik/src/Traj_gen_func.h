//Trajectory generation

class Traj_gen
{
	public:
		//To genrate trajector for movement of bot base
    	MatrixXd traj_gen(double ui,double uidot,double uiddot,double uf,double ufdot,double ufddot, double t0,double tf,double step);
};

MatrixXd Traj_gen::traj_gen(double ui,double uidot,double uiddot,double uf,double ufdot,double ufddot,double t0,double tf,double step)
{ 
  VectorXd t=VectorXd::LinSpaced(step+1,t0,tf);

  VectorXd ft=VectorXd::Zero(step+1);// Vector to store time
  VectorXd fq=VectorXd::Zero(step+1);// Vector to store position
  VectorXd fqd=VectorXd::Zero(step+1);// Vector to store velocity
  VectorXd fqdd=VectorXd::Zero(step+1);// Vector to acceleration 
  VectorXd b=VectorXd::Zero(6);// Vector to store conditional values
  VectorXd a=VectorXd::Zero(6);// Vector to store coefficients of equations
  MatrixXd M= MatrixXd::Zero(6,6);// Transformation matrix for joint 4 wrt joint 3

  ft(0)=t(0);
  fq(0)=ui;
  fqd(0)=uidot;
  fqdd(0)=uiddot;

  M << 1,t0,pow(t0,2),pow(t0,3),pow(t0,4),pow(t0,5),
     0,1,2*t0,3*pow(t0,2),4*pow(t0,3),5*pow(t0,4),
     0,0,2,6*t0,12*pow(t0,2),20*pow(t0,3),
     1,tf,pow(tf,2),pow(tf,3),pow(tf,4),pow(tf,5),
     0,1,2*tf,3*pow(tf,2),4*pow(tf,3),5*pow(tf,4),
     0,0,2,6*tf,12*pow(tf,2),20*pow(tf,3);

  b<< ui,uidot,uiddot,uf,ufdot,ufddot;

  // Solve to get coefficients
  a= M.inverse()*b;

//Store time, position, velocity, acceleration data at each step in declared vectors
  for(double i=1; i<=step;i++)
  {
    if(ui==uf){
      ft(i)=t(i);
      fq(i)=ui;
      fqd(i)=0;
      fqdd(i)=0;
    }
    else{
      ft(i)=t(i);
      fq(i)=a(0)+a(1)*t(i)+a(2)*pow(t(i),2)+a(3)*pow(t(i),3)+ a(4)*pow(t(i),4)+a(5)*pow(t(i),5);  
      fqd(i)=a(1)+2*a(2)*t(i)+3*a(3)*pow(t(i),2)+4*a(4)*pow(t(i),3)+5*a(5)*pow(t(i),4);
      fqdd(i)=2*a(2)+6*a(3)*t(i)+12*a(4)*pow(t(i),2)+20*a(5)*pow(t(i),3);
    }
  }

//store all data vectors in a single matrix
  MatrixXd all_data=MatrixXd::Zero(step+1,4);
  all_data.col(0)=ft;
  all_data.col(1)=fq;
  all_data.col(2)=fqd;
  all_data.col(3)=fqdd;

  return all_data;
}