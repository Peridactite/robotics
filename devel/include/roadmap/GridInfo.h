// Generated by gencpp from file roadmap/GridInfo.msg
// DO NOT EDIT!


#ifndef ROADMAP_MESSAGE_GRIDINFO_H
#define ROADMAP_MESSAGE_GRIDINFO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <nav_msgs/OccupancyGrid.h>
#include <roadmap/ObPixels.h>

namespace roadmap
{
template <class ContainerAllocator>
struct GridInfo_
{
  typedef GridInfo_<ContainerAllocator> Type;

  GridInfo_()
    : grid()
    , obs()  {
    }
  GridInfo_(const ContainerAllocator& _alloc)
    : grid(_alloc)
    , obs(_alloc)  {
  (void)_alloc;
    }



   typedef  ::nav_msgs::OccupancyGrid_<ContainerAllocator>  _grid_type;
  _grid_type grid;

   typedef std::vector< ::roadmap::ObPixels_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::roadmap::ObPixels_<ContainerAllocator> >::other >  _obs_type;
  _obs_type obs;





  typedef boost::shared_ptr< ::roadmap::GridInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roadmap::GridInfo_<ContainerAllocator> const> ConstPtr;

}; // struct GridInfo_

typedef ::roadmap::GridInfo_<std::allocator<void> > GridInfo;

typedef boost::shared_ptr< ::roadmap::GridInfo > GridInfoPtr;
typedef boost::shared_ptr< ::roadmap::GridInfo const> GridInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roadmap::GridInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roadmap::GridInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace roadmap

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/melodic/share/nav_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/melodic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'roadmap': ['/home/turtlebot/catkin_ws/src/roadmap/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::roadmap::GridInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roadmap::GridInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roadmap::GridInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roadmap::GridInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roadmap::GridInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roadmap::GridInfo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roadmap::GridInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9d9aaf9b814c3c7b9bba84602720161b";
  }

  static const char* value(const ::roadmap::GridInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9d9aaf9b814c3c7bULL;
  static const uint64_t static_value2 = 0x9bba84602720161bULL;
};

template<class ContainerAllocator>
struct DataType< ::roadmap::GridInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roadmap/GridInfo";
  }

  static const char* value(const ::roadmap::GridInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roadmap::GridInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
nav_msgs/OccupancyGrid grid\n\
\n\
# Array of obstacle pixel arrays\n\
roadmap/ObPixels[] obs\n\
\n\
================================================================================\n\
MSG: nav_msgs/OccupancyGrid\n\
# This represents a 2-D grid map, in which each cell represents the probability of\n\
# occupancy.\n\
\n\
Header header \n\
\n\
#MetaData for the map\n\
MapMetaData info\n\
\n\
# The map data, in row-major order, starting with (0,0).  Occupancy\n\
# probabilities are in the range [0,100].  Unknown is -1.\n\
int8[] data\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: nav_msgs/MapMetaData\n\
# This hold basic information about the characterists of the OccupancyGrid\n\
\n\
# The time at which the map was loaded\n\
time map_load_time\n\
# The map resolution [m/cell]\n\
float32 resolution\n\
# Map width [cells]\n\
uint32 width\n\
# Map height [cells]\n\
uint32 height\n\
# The origin of the map [m, m, rad].  This is the real-world pose of the\n\
# cell (0,0) in the map.\n\
geometry_msgs/Pose origin\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
================================================================================\n\
MSG: roadmap/ObPixels\n\
# Indices of the obstacle pixels\n\
int32[] i_pixels\n\
";
  }

  static const char* value(const ::roadmap::GridInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roadmap::GridInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.grid);
      stream.next(m.obs);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GridInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roadmap::GridInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roadmap::GridInfo_<ContainerAllocator>& v)
  {
    s << indent << "grid: ";
    s << std::endl;
    Printer< ::nav_msgs::OccupancyGrid_<ContainerAllocator> >::stream(s, indent + "  ", v.grid);
    s << indent << "obs[]" << std::endl;
    for (size_t i = 0; i < v.obs.size(); ++i)
    {
      s << indent << "  obs[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::roadmap::ObPixels_<ContainerAllocator> >::stream(s, indent + "    ", v.obs[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROADMAP_MESSAGE_GRIDINFO_H