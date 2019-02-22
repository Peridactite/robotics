;; Auto-generated. Do not edit!


(when (boundp 'roadmap::GridInfo)
  (if (not (find-package "ROADMAP"))
    (make-package "ROADMAP"))
  (shadow 'GridInfo (find-package "ROADMAP")))
(unless (find-package "ROADMAP::GRIDINFO")
  (make-package "ROADMAP::GRIDINFO"))

(in-package "ROS")
;;//! \htmlinclude GridInfo.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass roadmap::GridInfo
  :super ros::object
  :slots (_grid _obs ))

(defmethod roadmap::GridInfo
  (:init
   (&key
    ((:grid __grid) (instance nav_msgs::OccupancyGrid :init))
    ((:obs __obs) (let (r) (dotimes (i 0) (push (instance roadmap::ObPixels :init) r)) r))
    )
   (send-super :init)
   (setq _grid __grid)
   (setq _obs __obs)
   self)
  (:grid
   (&rest __grid)
   (if (keywordp (car __grid))
       (send* _grid __grid)
     (progn
       (if __grid (setq _grid (car __grid)))
       _grid)))
  (:obs
   (&rest __obs)
   (if (keywordp (car __obs))
       (send* _obs __obs)
     (progn
       (if __obs (setq _obs (car __obs)))
       _obs)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/OccupancyGrid _grid
    (send _grid :serialization-length)
    ;; roadmap/ObPixels[] _obs
    (apply #'+ (send-all _obs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/OccupancyGrid _grid
       (send _grid :serialize s)
     ;; roadmap/ObPixels[] _obs
     (write-long (length _obs) s)
     (dolist (elem _obs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/OccupancyGrid _grid
     (send _grid :deserialize buf ptr-) (incf ptr- (send _grid :serialization-length))
   ;; roadmap/ObPixels[] _obs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obs (let (r) (dotimes (i n) (push (instance roadmap::ObPixels :init) r)) r))
     (dolist (elem- _obs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get roadmap::GridInfo :md5sum-) "9d9aaf9b814c3c7b9bba84602720161b")
(setf (get roadmap::GridInfo :datatype-) "roadmap/GridInfo")
(setf (get roadmap::GridInfo :definition-)
      "
nav_msgs/OccupancyGrid grid

# Array of obstacle pixel arrays
roadmap/ObPixels[] obs

================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: roadmap/ObPixels
# Indices of the obstacle pixels
int32[] i_pixels

")



(provide :roadmap/GridInfo "9d9aaf9b814c3c7b9bba84602720161b")


