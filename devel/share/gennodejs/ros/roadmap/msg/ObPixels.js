// Auto-generated. Do not edit!

// (in-package roadmap.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ObPixels {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.i_pixels = null;
    }
    else {
      if (initObj.hasOwnProperty('i_pixels')) {
        this.i_pixels = initObj.i_pixels
      }
      else {
        this.i_pixels = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObPixels
    // Serialize message field [i_pixels]
    bufferOffset = _arraySerializer.int32(obj.i_pixels, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObPixels
    let len;
    let data = new ObPixels(null);
    // Deserialize message field [i_pixels]
    data.i_pixels = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.i_pixels.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roadmap/ObPixels';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7420fa011a5dd82868f361f09461436b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Indices of the obstacle pixels
    int32[] i_pixels
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObPixels(null);
    if (msg.i_pixels !== undefined) {
      resolved.i_pixels = msg.i_pixels;
    }
    else {
      resolved.i_pixels = []
    }

    return resolved;
    }
};

module.exports = ObPixels;
