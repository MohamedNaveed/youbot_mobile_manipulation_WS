#include <iostream> // for standard operations

using namespace std;

Vector4d transform(double kinect_x, double kinect_y, double kinect_z){

double rot_x=rad(-135);
double rot_z=rad(-90);
double trans_x=-0.292;
double trans_y=-0.101995;
double trans_z=1.147;

 
 Vector4d pose_kinect=Vector4d::Zero();//vector to store pose of object in kinect frame
 pose_kinect<<kinect_x,kinect_y,kinect_z,1;

 Vector4d pose_bot=Vector4d::Zero();//vector to store pose of object in bot frame

 Matrix4d Tw2k_trans= Matrix4d::Identity();//transformation matrix for tranlation from kinect to bot coordinate frame
  Tw2k_trans << 1, 0, 0, trans_x,
    	        0, 1, 0, trans_y,
     	        0, 0, 1, trans_z,
     	        0, 0, 0, 1;

 Matrix4d Tk2k_rotz= Matrix4d::Identity();//transformation matrix for rotation of kinect frame about its own z axis
 Tk2k_rotz << cos(rot_z), -sin(rot_z), 0, 0,
    	       sin(rot_z), cos(rot_z), 0, 0,
     	      0, 0, 1, 0,
     	      0, 0, 0, 1;

 Matrix4d Tk2k_rotx= Matrix4d::Identity();//transformation matrix for rotation of kinect frame about its own x axis
 Tk2k_rotx << 1, 0, 0, 0,
 		      0, cos(rot_x), -sin(rot_x), 0,
    	      0, sin(rot_x), cos(rot_x), 0,
     	      0, 0, 0, 1;

 
 pose_bot=Tw2k_trans*Tk2k_rotz*Tk2k_rotx*pose_kinect;

// cout<<"object position in bot coordinate frame(in mm): "<<endl;
// cout<<"x-coordinate: "<<pose_bot(0)*1000<<endl;
// cout<<"y-coordinate: "<<pose_bot(1)*1000<<endl;
// cout<<"z-coordinate: "<<pose_bot(2)*1000<<endl;

return pose_bot*1000;//return coordinates
}