#include <iostream> // for standard operations

using namespace std;
double rate=0.5;//rate at which data is being published

void get_pose_coke()
{
	cout<<"searching object..."<<endl;

	//string obj="9547923ecae03571d31e993c2b000b7c";//object ID in couch db
	string obj="04b5278cd950500b5a9afe75680009f2";//object ID in couch db

	ros::Rate r(rate);

	double temp_pose_lin_x=0,temp_pose_lin_y=0,temp_pose_lin_z=0;
	int numb=1;//number of pose data to collect for taking average
	int i=0;
	detect=0;
	Vector3d transformed_pose=Vector3d::Zero();

	while(i<numb)
	{
		r.sleep();
		ros::spinOnce();


		transformed_pose=transform_k_J2(pose_lin_x, pose_lin_y, pose_lin_z, pose_ang_w, pose_ang_x, pose_ang_y, pose_ang_z);


		if(detect==1 && obj_key==obj){
			cout<<"Detect "<<i<<": x: "<<transformed_pose(0)<<"  y: "<<transformed_pose(1)<<"  z:"<<transformed_pose(2)<<endl;
			temp_pose_lin_x +=transformed_pose(0);
			temp_pose_lin_y +=transformed_pose(1);
			temp_pose_lin_z +=transformed_pose(2);

			i=i+1;
		}
	}

	pose_lin_x=temp_pose_lin_x/numb;
	pose_lin_y=temp_pose_lin_y/numb;
	pose_lin_z=temp_pose_lin_z/numb;

	cout<<"yellow cylinder position coordinates in bot frame (in mm)"<<endl;
	cout<<"x coordinate: "<<pose_lin_x<<endl;
	cout<<"y coordinate: "<<pose_lin_y<<endl;
	cout<<"z coordinate: "<<pose_lin_z<<endl;
	cout<<"ang w: "<<pose_ang_w<<" ang x:"<<pose_ang_x<<" ang y:"<<pose_ang_y<<" ang z:"<<pose_ang_z<<endl;

	cout<<"pose subscription done..."<<endl;
}
