// Auto-generated. Do not edit!

// (in-package roadmap.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObPixels = require('./ObPixels.js');
let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------

class GridInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.grid = null;
      this.obs = null;
    }
    else {
      if (initObj.hasOwnProperty('grid')) {
        this.grid = initObj.grid
      }
      else {
        this.grid = new nav_msgs.msg.OccupancyGrid();
      }
      if (initObj.hasOwnProperty('obs')) {
        this.obs = initObj.obs
      }
      else {
        this.obs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GridInfo
    // Serialize message field [grid]
    bufferOffset = nav_msgs.msg.OccupancyGrid.serialize(obj.grid, buffer, bufferOffset);
    // Serialize message field [obs]
    // Serialize the length for message field [obs]
    bufferOffset = _serializer.uint32(obj.obs.length, buffer, bufferOffset);
    obj.obs.forEach((val) => {
      bufferOffset = ObPixels.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GridInfo
    let len;
    let data = new GridInfo(null);
    // Deserialize message field [grid]
    data.grid = nav_msgs.msg.OccupancyGrid.deserialize(buffer, bufferOffset);
    // Deserialize message field [obs]
    // Deserialize array length for message field [obs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obs[i] = ObPixels.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_msgs.msg.OccupancyGrid.getMessageSize(object.grid);
    object.obs.forEach((val) => {
      length += ObPixels.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roadmap/GridInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9d9aaf9b814c3c7b9bba84602720161b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GridInfo(null);
    if (msg.grid !== undefined) {
      resolved.grid = nav_msgs.msg.OccupancyGrid.Resolve(msg.grid)
    }
    else {
      resolved.grid = new nav_msgs.msg.OccupancyGrid()
    }

    if (msg.obs !== undefined) {
      resolved.obs = new Array(msg.obs.length);
      for (let i = 0; i < resolved.obs.length; ++i) {
        resolved.obs[i] = ObPixels.Resolve(msg.obs[i]);
      }
    }
    else {
      resolved.obs = []
    }

    return resolved;
    }
};

module.exports = GridInfo;
