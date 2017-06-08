//Note: If you are including this header somewhere then include Math_other.h before it as it uses a function from it

class Manipulator: public confg
{
	public:
		double temp_JA2, temp_JA3, temp_JA4;//Calculated joint angle		
		double z24, x24;//Vertical and horizontal distanc e etween joint 2 and 4 respectively 
		double cal_JA2();//Calculate joint angle 2
		double cal_JA3();//Calculate joint angle 3
		double cal_JA4();//Clculate joint angle 4
		
		// double Tsgrip[4][4];//Gripper transformation matrix
		// Matrix4d forward_kinematics();//To find end effector global pose
		// double ealpha, ebeta, egamma;
		// void calculate_theta5();
};


double Manipulator::cal_JA3()
{ 
  z24=rf(zg-(l4*(sin(beta))));
  x24=rf(row2-(l4*(cos(beta))));
  double cos_theta3=rf((pow(z24,2)+pow(x24,2)-pow(l2,2)-pow(l3,2))/(2*l2*l3));
  double sin_theta3=rf(-1*sqrt(1-pow(cos_theta3,2)));
  if (row3==1){
    sin_theta3=rf(sqrt(1-pow(cos_theta3,2)));
  }
  temp_JA3= rf(atan2(sin_theta3,cos_theta3));
  JA3=-temp_JA3;

  //Check if temp_JA3 is within range
  if(JA3>rad(-151) && JA3<rad(146)){
    cout<<"JA3 in deg: "<<JA3*180/pi()<<endl;
  }
  else{
    cout<<"JA3: "<<JA3*180/pi()<<", angle exceeded the allowed range"<<endl;
    cout<<"Bringing it back to zero"<<endl;
    //JA3=0;
  }
  return JA3;
}


double Manipulator::cal_JA2()
{
  double k1=rf(l2+(l3*cos(temp_JA3)));
  double k2=rf(l3*sin(temp_JA3));
  temp_JA2=rf(atan2(z24,x24)-atan2(k2,k1));
  JA2=rf((pi()/2)-temp_JA2);

  //Check if temp_JA2 is within range
  if(JA2>rad(-65) && JA2<rad(90)){
    cout<<"JA2 in deg: "<<JA2*180/pi()<<endl;
   }
  else{
    cout<<"JA2: "<<JA2*180/pi()<<", angle exceeded the allowed range"<<endl;
    cout<<"Bringing it back to zero"<<endl;
    //JA2=0;
  }
  return JA2;
}


double Manipulator::cal_JA4()
{
  double temp_theta4=rf(-temp_JA2-temp_JA3+beta);
  double cos_theta4=rf(cos(temp_theta4));
  double sin_theta4=rf(sin(temp_theta4));
  temp_JA4=rf(atan2(sin_theta4,cos_theta4));

  JA4=-temp_JA4;

//Check if temp_JA4 is within range
  if(JA4>rad(-102.5) && JA4<rad(102.5)){
    cout<<"JA4 in deg: "<<JA4*180/pi()<<endl;
    cout<<"------"<<endl;
    cout<<"   "<<endl;
  }
  else{
    cout<<"JA4: "<<JA4*180/pi()<<", angle exceeded the allowed range"<<endl;
    cout<<"Bringing it back to zero"<<endl;
    //JA4=0;
  }
  return JA4;
}


// Matrix4d Manipulator::forward_kinematics()
// {
//  double xb, yb,zb;
 
//  xb=5;
//  yb=5;
//  zb=0;

//  Matrix4d Tbg= Matrix4d::Identity();//global fixed coordinate

//  Matrix4d Tbb= Matrix4d::Identity();//Transformation matrix for Robot wrt global
//  Tbb << cos(theta), -sin(theta), 0, xb,
//      sin(theta), cos(theta), 0, yb,
//      0, 0, 1, zb,
//      0,0,0,1;
//  Matrix4d Tb0= Matrix4d::Identity();//Transformation matrix for joint 0/fixed base wrt bot
//  Tb0 << 1, 0, 0, 143,
//      0, 1, 0, 0,
//      0, 0, 1, 46,
//      0,0,0,1;
//  Matrix4d Tb1= Matrix4d::Identity();//Transformation matrix for joint 1 wrt joint 0
//  Tb1 << cos(theta1), -sin(theta1), 0, 24,
//      -sin(theta1), -cos(theta1), 0, 0,
//      0, 0, -1, 115,
//      0,0,0,1;
//  Matrix4d Tb2= Matrix4d::Identity();//Transformation matrix for joint 2 wrt joint 1
//  Tb2 << sin(JA2), cos(JA2), 0, 33,
//    0, 0, -1, 0,
//      -cos(JA2), sin(JA2), 0, 0,
//      0,0,0,1;
//  Matrix4d Tb3= Matrix4d::Identity();//Transformation matrix for joint 3 wrt joint 2
//  Tb3 << sin(JA3), cos(JA3), 0, 155,
//      -cos(JA3), sin(JA3), 0, 0,
//      0, 0, 1, 0,
//      0,0,0,1;
//  Matrix4d Tb4= Matrix4d::Identity();//Transformation matrix for joint 4 wrt joint 3
//  Tb4 << cos(JA4), -sin(JA4), 0, 0,
//      sin(JA4), cos(JA4), 0, 135,
//      0, 0, 1, 0,
//      0,0,0,1;
//  Matrix4d Tb5= Matrix4d::Identity(); //Transformation matrix for joint 5 wrt joint 4
//  Tb5 << cos(theta5), -sin(theta5), 0, 0,
//    0, 0, 1, 113.6,
//      -sin(theta5), -cos(theta5), 0, 0,
//      0,0,0,1;
//  Matrix4d Tbgrip= Matrix4d::Identity();//Transformation matrix for gripper end wrt joint 5
//  Tbgrip << -1, 0, 0, 0,
//      0, -1, 0, 0,
//      0, 0, 1, 80.66,
//      0,0,0,1;
//  Matrix4d Tbcmgrip= Matrix4d::Identity();//Transformation matrix for center of mass of gripper wrt joint 5
//  Tbcmgrip << -1, 0, 0, 0,
//      0, 0, -1, 0,
//      0, -1, 0, 28.9,
//      0,0,0,1;

//  Matrix4d Tsg=Tbg;//global fixed coordinate
//  Matrix4d Tsb=Tsg*Tbb;//Transformation matrix for Robot wrt to global
//  Matrix4d Ts0=Tsb*Tb0;//Transformation matrix for joint 0/fixed base wrt global
//  Matrix4d Ts1=Ts0*Tb1;//Transformation matrix for joint 1 wrt global
//  Matrix4d Ts2=Ts1*Tb2;//Transformation matrix for joint 2 wrt global
//  Matrix4d Ts3=Ts2*Tb3;//Transformation matrix for joint 3 wrt global
//  Matrix4d Ts4=Ts3*Tb4;//Transformation matrix for joint 4 wrt global
//  Matrix4d Ts5=Ts4*Tb5;//Transformation matrix for joint 5 wrt global
//  Matrix4d Tsgrip=Ts5*Tbgrip;//Transformation matrix for gripper end wrt global
//  Matrix4d Tscmgrip=Ts5*Tbcmgrip;//Transformation matrix for center of mass of gripper wrt global

//  cout<<"Tsgrip:"<<endl<<Tsgrip<<endl;

//  return Tsgrip;
// }

// void Manipulator::calculate_theta5()
// {
//   ealpha=0;
//   ebeta=0;
//   egamma=0;

//   double e11, g11, e21, g21, e31, g31, e12, e22, e32;
//   e11=Tsgip(0,0);
//   g11=cos(ealpha)*cos(ebeta)*cos(egamma)+sin(ealpha)*sin(egamma);
//   e21=Tsgrip(1,0);
//   g21= -cos(ebetta)*cos(egamma)*sin(ealpha)+cos(ealpha)*sin(egamma);
//   e31=Tsgrip(2,0);
//   g31=-cos(egamma)*sin(ebetta);
//   e12=Tsgrip(0,1);
//   e22=Tsgrip(1,1);
//   e32=Tsgrip(2,1);

//   double cos_theata5=e11*g11+e21*g21+e31*g31;
//   double sin_theta5=e12*g11+e22*g21+e32*g31;
//   theta5=atan2(sin_theta5,cos_theata5);

//   cout<<"theta5= "<<theta5<<endl;
// }