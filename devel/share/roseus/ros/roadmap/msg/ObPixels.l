;; Auto-generated. Do not edit!


(when (boundp 'roadmap::ObPixels)
  (if (not (find-package "ROADMAP"))
    (make-package "ROADMAP"))
  (shadow 'ObPixels (find-package "ROADMAP")))
(unless (find-package "ROADMAP::OBPIXELS")
  (make-package "ROADMAP::OBPIXELS"))

(in-package "ROS")
;;//! \htmlinclude ObPixels.msg.html


(defclass roadmap::ObPixels
  :super ros::object
  :slots (_i_pixels ))

(defmethod roadmap::ObPixels
  (:init
   (&key
    ((:i_pixels __i_pixels) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _i_pixels __i_pixels)
   self)
  (:i_pixels
   (&optional __i_pixels)
   (if __i_pixels (setq _i_pixels __i_pixels)) _i_pixels)
  (:serialization-length
   ()
   (+
    ;; int32[] _i_pixels
    (* 4    (length _i_pixels)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _i_pixels
     (write-long (length _i_pixels) s)
     (dotimes (i (length _i_pixels))
       (write-long (elt _i_pixels i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _i_pixels
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _i_pixels (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _i_pixels i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get roadmap::ObPixels :md5sum-) "7420fa011a5dd82868f361f09461436b")
(setf (get roadmap::ObPixels :datatype-) "roadmap/ObPixels")
(setf (get roadmap::ObPixels :definition-)
      "# Indices of the obstacle pixels
int32[] i_pixels

")



(provide :roadmap/ObPixels "7420fa011a5dd82868f361f09461436b")


