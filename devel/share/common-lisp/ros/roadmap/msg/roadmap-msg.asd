
(cl:in-package :asdf)

(defsystem "roadmap-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :nav_msgs-msg
)
  :components ((:file "_package")
    (:file "GridInfo" :depends-on ("_package_GridInfo"))
    (:file "_package_GridInfo" :depends-on ("_package"))
    (:file "ObPixels" :depends-on ("_package_ObPixels"))
    (:file "_package_ObPixels" :depends-on ("_package"))
  ))