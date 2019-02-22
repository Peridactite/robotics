; Auto-generated. Do not edit!


(cl:in-package roadmap-msg)


;//! \htmlinclude ObPixels.msg.html

(cl:defclass <ObPixels> (roslisp-msg-protocol:ros-message)
  ((i_pixels
    :reader i_pixels
    :initarg :i_pixels
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass ObPixels (<ObPixels>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObPixels>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObPixels)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roadmap-msg:<ObPixels> is deprecated: use roadmap-msg:ObPixels instead.")))

(cl:ensure-generic-function 'i_pixels-val :lambda-list '(m))
(cl:defmethod i_pixels-val ((m <ObPixels>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roadmap-msg:i_pixels-val is deprecated.  Use roadmap-msg:i_pixels instead.")
  (i_pixels m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObPixels>) ostream)
  "Serializes a message object of type '<ObPixels>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'i_pixels))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'i_pixels))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObPixels>) istream)
  "Deserializes a message object of type '<ObPixels>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'i_pixels) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'i_pixels)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObPixels>)))
  "Returns string type for a message object of type '<ObPixels>"
  "roadmap/ObPixels")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObPixels)))
  "Returns string type for a message object of type 'ObPixels"
  "roadmap/ObPixels")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObPixels>)))
  "Returns md5sum for a message object of type '<ObPixels>"
  "7420fa011a5dd82868f361f09461436b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObPixels)))
  "Returns md5sum for a message object of type 'ObPixels"
  "7420fa011a5dd82868f361f09461436b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObPixels>)))
  "Returns full string definition for message of type '<ObPixels>"
  (cl:format cl:nil "# Indices of the obstacle pixels~%int32[] i_pixels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObPixels)))
  "Returns full string definition for message of type 'ObPixels"
  (cl:format cl:nil "# Indices of the obstacle pixels~%int32[] i_pixels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObPixels>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'i_pixels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObPixels>))
  "Converts a ROS message object to a list"
  (cl:list 'ObPixels
    (cl:cons ':i_pixels (i_pixels msg))
))
