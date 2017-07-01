//Self defined mathematical functions

#include <iostream> 
using namespace std;

//To round off number till 5th digit of decimal place
double rf(double num)
{
  double t=floor(num*100000)/100000;
  return t;
}

//To get convert degree to radian
double rad(double angle)
{
	double rad_angle=angle*3.14/180;
	return rad_angle;
}

//To get valuee of pi
double pi()
{
	double pi=2*acos(0.0);
	return pi;
}