// Generated by gencpp from file object_tracker_srv_definitions/start_tracker.msg
// DO NOT EDIT!


#ifndef OBJECT_TRACKER_SRV_DEFINITIONS_MESSAGE_START_TRACKER_H
#define OBJECT_TRACKER_SRV_DEFINITIONS_MESSAGE_START_TRACKER_H

#include <ros/service_traits.h>


#include <object_tracker_srv_definitions/start_trackerRequest.h>
#include <object_tracker_srv_definitions/start_trackerResponse.h>


namespace object_tracker_srv_definitions
{

struct start_tracker
{

typedef start_trackerRequest Request;
typedef start_trackerResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct start_tracker
} // namespace object_tracker_srv_definitions


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::object_tracker_srv_definitions::start_tracker > {
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::object_tracker_srv_definitions::start_tracker&) { return value(); }
};

template<>
struct DataType< ::object_tracker_srv_definitions::start_tracker > {
  static const char* value()
  {
    return "object_tracker_srv_definitions/start_tracker";
  }

  static const char* value(const ::object_tracker_srv_definitions::start_tracker&) { return value(); }
};


// service_traits::MD5Sum< ::object_tracker_srv_definitions::start_trackerRequest> should match 
// service_traits::MD5Sum< ::object_tracker_srv_definitions::start_tracker > 
template<>
struct MD5Sum< ::object_tracker_srv_definitions::start_trackerRequest>
{
  static const char* value()
  {
    return MD5Sum< ::object_tracker_srv_definitions::start_tracker >::value();
  }
  static const char* value(const ::object_tracker_srv_definitions::start_trackerRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::object_tracker_srv_definitions::start_trackerRequest> should match 
// service_traits::DataType< ::object_tracker_srv_definitions::start_tracker > 
template<>
struct DataType< ::object_tracker_srv_definitions::start_trackerRequest>
{
  static const char* value()
  {
    return DataType< ::object_tracker_srv_definitions::start_tracker >::value();
  }
  static const char* value(const ::object_tracker_srv_definitions::start_trackerRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::object_tracker_srv_definitions::start_trackerResponse> should match 
// service_traits::MD5Sum< ::object_tracker_srv_definitions::start_tracker > 
template<>
struct MD5Sum< ::object_tracker_srv_definitions::start_trackerResponse>
{
  static const char* value()
  {
    return MD5Sum< ::object_tracker_srv_definitions::start_tracker >::value();
  }
  static const char* value(const ::object_tracker_srv_definitions::start_trackerResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::object_tracker_srv_definitions::start_trackerResponse> should match 
// service_traits::DataType< ::object_tracker_srv_definitions::start_tracker > 
template<>
struct DataType< ::object_tracker_srv_definitions::start_trackerResponse>
{
  static const char* value()
  {
    return DataType< ::object_tracker_srv_definitions::start_tracker >::value();
  }
  static const char* value(const ::object_tracker_srv_definitions::start_trackerResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // OBJECT_TRACKER_SRV_DEFINITIONS_MESSAGE_START_TRACKER_H
