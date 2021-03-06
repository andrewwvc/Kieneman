(in-package :kieneman)

(DEFAULT-FOREIGN-LANGUAGE :stdc)
(default-foreign-library "OgreTut1.dll")

;;Node
(def-call-out set-scale
  (:name "set_scale")
  (:arguments (cptr c-pointer) (x Single-Float)  (y Single-Float)  (z Single-Float))
  (:return-type nil))

(def-call-out get-name
  (:name "get_name")
  (:arguments (cptr c-pointer))
  (:return-type c-string))

(def-call-out get-parent
  (:name "get_parent")
  (:arguments (cptr c-pointer))
  (:return-type c-pointer))

(def-call-out get-orientation
  (:name "get_orientation")
  (:arguments (cptr c-pointer))
  (:return-type c-pointer))

(def-call-out set-orientation-q
  (:name "set_orientation_q")
  (:arguments (cptr c-pointer) (quat c-pointer))
  (:return-type nil))

(def-call-out set-orientation-f
  (:name "set_orientation_f")
  (:arguments (cptr c-pointer)  (w Single-Float)  (x Single-Float)  (y Single-Float)  (z Single-Float))
  (:return-type nil))

(def-call-out reset-orientation
  (:name "reset_orientation")
  (:arguments (cptr c-pointer))
  (:return-type nil))

(def-call-out set-position-v
  (:name "set_position_v")
  (:arguments (cptr c-pointer) (vec3 c-pointer))
  (:return-type nil))

(def-call-out set-position-f
  (:name "set_position_f")
  (:arguments (cptr c-pointer) (x Single-Float)  (y Single-Float)  (z Single-Float))
  (:return-type nil))

(def-call-out get-position
  (:name "get_position")
  (:arguments (cptr c-pointer))
  (:return-type c-pointer))

(def-call-out set-scale-v
  (:name "set_scale_v")
  (:arguments (cptr c-pointer) (vec3 c-pointer))
  (:return-type nil))

(def-call-out set-scale-f
  (:name "set_scale_f")
  (:arguments (cptr c-pointer) (x Single-Float)  (y Single-Float)  (z Single-Float))
  (:return-type nil))

(def-call-out get-scale
  (:name "get_scale")
  (:arguments (cptr c-pointer))
  (:return-type c-pointer))

(def-call-out set-inherit-orientation
  (:name "set_inherit_orientation")
  (:arguments (cptr c-pointer) (inherit boolean))
  (:return-type nil))

(def-call-out get-inherit-orientation
  (:name "get_inherit_orientation")
  (:arguments (cptr c-pointer))
  (:return-type boolean))

(def-call-out set-inherit-scale
  (:name "set_inherit_scale")
  (:arguments (cptr c-pointer) (inherit boolean))
  (:return-type nil))

(def-call-out get-inherit-scale
  (:name "get_inherit_scale")
  (:arguments (cptr c-pointer))
  (:return-type boolean))

(def-call-out scale-v
  (:name "scale_v")
  (:arguments (cptr c-pointer) (scale Vector3))
  (:return-type nil))

(def-call-out scale-f
  (:name "scale_f")
  (:arguments (cptr c-pointer) (x Single-Float)  (y Single-Float)  (z Single-Float))
  (:return-type nil))

(def-call-out translate-v
  (:name "translate_v")
 (:arguments (cptr c-pointer) (vec3 c-pointer) (rt transform-space))
  (:return-type nil))

(def-call-out translate-f
  (:name "translate_f")
  (:arguments (cptr c-pointer) (x Single-Float)  (y Single-Float)  (z Single-Float)  (rt transform-space))
  (:return-type nil))

(def-call-out -roll
  (:name "roll")
  (:arguments (cptr c-pointer) (angle Single-Float)  (relativeTo transform-space))
  (:return-type nil))

(defun roll (cptr angle &optional (relativeTo TS_LOCAL))
  (-roll cptr angle relativeTo))

(def-call-out -pitch
  (:name "pitch")
  (:arguments (cptr c-pointer) (angle Single-Float)  (rt transform-space))
  (:return-type nil))

(defun pitch (cptr angle &optional (relativeTo TS_LOCAL))
  (-pitch cptr angle relativeTo))

(def-call-out -yaw
  (:name "yaw")
  (:arguments (cptr c-pointer) (angle Single-Float)  (rt transform-space))
  (:return-type nil))

(defun yaw (cptr angle &optional (relativeTo TS_LOCAL))
  (-yaw cptr angle relativeTo))

(def-call-out rotate-v
  (:name "rotate_v")
  (:arguments (cptr c-pointer) (vec vector3) (ang radian)  (RelativeTo transform-space))
  (:return-type nil))

(def-call-out rotate-q
  (:name "rotate_q")
  (:arguments (cptr c-pointer) (q c-pointer)  (RelativeTo transform-space))
  (:return-type nil))

(def-call-out rotate-f
  (:name "rotate_f")
  (:arguments (cptr node) (w Single-Float)  (x Single-Float)  (y Single-Float)  (z Single-Float))
  (:return-type nil))

(def-call-out create-child
  (:name "create_child")
  (:arguments (cptr c-pointer) (vec3 c-pointer) (quat c-pointer))
  (:return-type c-pointer))

(def-call-out create-child-named
  (:name "create_child_named")
  (:arguments (cptr c-pointer) (name c-string) (vec3 c-pointer) (quat c-pointer))
  (:return-type c-pointer))

