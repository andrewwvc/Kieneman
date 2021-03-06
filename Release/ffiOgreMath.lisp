(in-package :kieneman)

(DEFAULT-FOREIGN-LANGUAGE :stdc)
(default-foreign-library "OgreTut1.dll")

(def-call-out degree
  (:arguments (deg single-float))
  (:return-type degree))

(def-call-out radian
  (:arguments (rad single-float))
  (:return-type radian))

;Vectors
(def-call-out vector3
  (:arguments (x single-float) (y single-float) (z single-float))
  (:return-type vector3))

(def-call-out vector3-plus
  (:name "vector3_plus")
  (:arguments (a vector3) (b vector3))
  (:return-type vector3))

(def-call-out v3+x
  (:name "vector3_add_x")
  (:arguments (a vector3) (x single-float))
  (:return-type vector3))

(def-call-out v3+y
  (:name "vector3_add_y")
  (:arguments (a vector3) (y single-float))
  (:return-type vector3))

(def-call-out v3+z
  (:name "vector3_add_z")
  (:arguments (a vector3) (z single-float))
  (:return-type vector3))

;Quaternions

(def-call-out quaternion
  (:arguments (w single-float) (x single-float) (y single-float) (z single-float))
  (:return-type quaternion))

(def-call-out copy-quaternion
  (:name "copy_quaternion")
  (:arguments (w quaternion))
  (:return-type quaternion))