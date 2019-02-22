; Auto-generated. Do not edit!


(cl:in-package roadmap-msg)


;//! \htmlinclude GridInfo.msg.html

(cl:defclass <GridInfo> (roslisp-msg-protocol:ros-message)
  ((grid
    :reader grid
    :initarg :grid
    :type nav_msgs-msg:OccupancyGrid
    :initform (cl:make-instance 'nav_msgs-msg:OccupancyGrid))
   (obs
    :reader obs
    :initarg :obs
    :type (cl:vector roadmap-msg:ObPixels)
   :initform (cl:make-array 0 :element-type 'roadmap-msg:ObPixels :initial-element (cl:make-instance 'roadmap-msg:ObPixels))))
)

(cl:defclass GridInfo (<GridInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GridInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GridInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roadmap-msg:<GridInfo> is deprecated: use roadmap-msg:GridInfo instead.")))

(cl:ensure-generic-function 'grid-val :lambda-list '(m))
(cl:defmethod grid-val ((m <GridInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roadmap-msg:grid-val is deprecated.  Use roadmap-msg:grid instead.")
  (grid m))

(cl:ensure-generic-function 'obs-val :lambda-list '(m))
(cl:defmethod obs-val ((m <GridInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roadmap-msg:obs-val is deprecated.  Use roadmap-msg:obs instead.")
  (obs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GridInfo>) ostream)
  "Serializes a message object of type '<GridInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'grid) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GridInfo>) istream)
  "Deserializes a message object of type '<GridInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'grid) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'roadmap-msg:ObPixels))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GridInfo>)))
  "Returns string type for a message object of type '<GridInfo>"
  "roadmap/GridInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GridInfo)))
  "Returns string type for a message object of type 'GridInfo"
  "roadmap/GridInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GridInfo>)))
  "Returns md5sum for a message object of type '<GridInfo>"
  "9d9aaf9b814c3c7b9bba84602720161b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GridInfo)))
  "Returns md5sum for a message object of type 'GridInfo"
  "9d9aaf9b814c3c7b9bba84602720161b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GridInfo>)))
  "Returns full string definition for message of type '<GridInfo>"
  (cl:format cl:nil "~%nav_msgs/OccupancyGrid grid~%~%# Array of obstacle pixel arrays~%roadmap/ObPixels[] obs~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: roadmap/ObPixels~%# Indices of the obstacle pixels~%int32[] i_pixels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GridInfo)))
  "Returns full string definition for message of type 'GridInfo"
  (cl:format cl:nil "~%nav_msgs/OccupancyGrid grid~%~%# Array of obstacle pixel arrays~%roadmap/ObPixels[] obs~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: roadmap/ObPixels~%# Indices of the obstacle pixels~%int32[] i_pixels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GridInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'grid))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GridInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'GridInfo
    (cl:cons ':grid (grid msg))
    (cl:cons ':obs (obs msg))
))
