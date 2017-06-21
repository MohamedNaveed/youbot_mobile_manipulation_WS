#include <eigen3/Eigen/Geometry>//for quarternion to rotatioin matrix conversion
#include <eigen3/Eigen/Dense> // for matrix operation
using namespace Eigen;
#include <iostream>
using namespace std;
#include <math.h> // for mathematical operations
#include "Math_other.h"//self-defined mathemetical functions
#include <ros/ros.h>

int main()
{
  Eigen::Quaterniond rot;

  //rot.setFromTwoVectors(Eigen::Vector3d(0,1,0), pos);

  Eigen::Matrix<double,3,3> rotationMatrix;

  rotationMatrix = rot.toRotationMatrix();

  Eigen::Quaterniond q(0.5773, 0.5773, 0.5773, 0);
  std::cout << "This quaternion consists of a scalar " << q.w() << " and a vector " << std::endl << q.vec() << std::endl;

  q.normalize();

  std::cout << "To represent rotation, we need to normalize it such that its length is " << q.norm() << std::endl;

  // Eigen::Vector3d vec(1, 2, -1);
  // Eigen::Quaterniond p;
  // p.w() = 0;
  // p.vec() = vec;
  // Eigen::Quaterniond rotatedP = q * p * q.inverse();
  // Eigen::Vector3d rotatedV = rotatedP.vec();
  // std::cout << "We can now use it to rotate a vector " << std::endl << vec << " to " << std::endl << rotatedV << std::endl;

// convert a quaternion to a 3x3 rotation matrix:
  Eigen::Matrix3d R = q.toRotationMatrix();

  //std::cout << "Compare with the result using an rotation matrix " << std::endl << R * vec << std::endl;
  cout<<"The rotation matrix is"<<R<<endl;


  double rot_x=rad(-135);
  double rot_z=rad(-90);

  Matrix3d rotz= Matrix3d::Identity();//transformation matrix for rotation of kinect frame about its own z axis
  rotz << cos(rot_z), -sin(rot_z), 0,
     	    sin(rot_z), cos(rot_z), 0,
      	  0, 0, 1;

  Matrix3d rotx= Matrix3d::Identity();//transformation matrix for rotation of kinect frame about its own x axis
  rotx << 1, 0, 0,
          0, cos(rot_x), -sin(rot_x),
          0, sin(rot_x), cos(rot_x);

  Eigen::Matrix3d final_R = rotz*rotx*R;

  cout<<"The final rotation matrix is"<<final_R<<endl;

  Eigen::Quaterniond quaternion(final_R);

  cout<<"w:"<<quaternion.w()<<" x:"<<quaternion.x()<<" y:"<<quaternion.y()<<" z:"<<quaternion.z()<<endl;


  return 0;
}
