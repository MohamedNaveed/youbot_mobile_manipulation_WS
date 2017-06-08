#include <iostream> // for standard operations

using namespace std;

double pose_lin_x, pose_lin_y, pose_lin_z, pose_ang_x, pose_ang_y, pose_ang_z, pose_ang_w, detect;
string obj_key;

ros::Subscriber ObjPoseSubscriber;

//A callback function. Executed each time a recognized object message arrives
void PoseDataRecieved(const object_recognition_msgs::RecognizedObjectArray::ConstPtr& msg){
	if(msg->objects.size()>0){
		pose_lin_x=msg->objects[0].pose.pose.pose.position.x;
		pose_lin_y=msg->objects[0].pose.pose.pose.position.y;
		pose_lin_z=msg->objects[0].pose.pose.pose.position.z;
		pose_ang_x=msg->objects[0].pose.pose.pose.orientation.x;
		pose_ang_y=msg->objects[0].pose.pose.pose.orientation.y;
		pose_ang_z=msg->objects[0].pose.pose.pose.orientation.z;
		pose_ang_w=msg->objects[0].pose.pose.pose.orientation.w;
		obj_key=msg->objects[0].type.key;
		detect=1;		
	}
	else{
		detect=0;
	}
return;	
}

void pose_subscriber(){
	ros::NodeHandle n;
	ObjPoseSubscriber= n.subscribe ("recognized_object_array",1, &PoseDataRecieved);
}