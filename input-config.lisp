;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE INFO
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "KIENEMAN")

(defun make-lamb (a b)
	#'(lambda () (or (funcall a) (funcall b))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; INPUT CONFIGURATION GENERATORS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defvar k1-config
  (list
   :a1 (get-kbi KC_G) "G"
   :a2 (get-kbi KC_H) "H"
   :defense (get-kbi KC_J) "J"
   :move (get-kbi KC_T) "T"
   :dodge (get-kbi KC_Y) "Y"
   :cancel (get-kbi KC_U) "U"
   :down (get-kbi KC_S) "S"
   :up (get-kbi KC_W) "W"
   :r-left (get-kbi KC_A) "A"
   :r-right (get-kbi KC_D) "D"))

(defvar k2-config
  (list
   :a1 (get-kbi KC_L) "L"
   :a2 (get-kbi KC_SEMICOLON) ";"
   :defense (get-kbi KC_APOSTROPHE) "'"
   :alt-def (get-kbi KC_SLASH) "/"
   :dodge (get-kbi KC_O) "O"
   :move (get-kbi KC_LBRACKET) "["
   :cancel (get-kbi KC_P) "P"
   :down (get-kbi KC_DOWN) "down"
   :up (get-kbi KC_UP) "up"
   :r-left (get-kbi KC_LEFT) "left"
   :r-right (get-kbi KC_RIGHT) "right"))

(defun make-PS3-defult-config (pad)
  (let ((d (get-di south pad)) (d2 (get-ai 2 pad)) (u (get-di north pad)) (u2 (get-ai 2 pad :dir -1))
  (l (get-di west pad)) (l2 (get-ai 3 pad :dir -1)) (r (get-di east pad)) (r2 (get-ai 3 pad)))
   (list
   :a1  (get-ji 3 pad) "Button 1"
   :a2 (get-ji 0 pad) "Button 2"
   :defense (get-ji 5 pad) "b7"
   :alt-def (get-ji 7 pad) "b6"
   :move (get-ji 1 pad) "Button 8"
   :cancel (let ((f1 (get-ji 4 pad)) (f2 (get-ji 6 pad))) #'(lambda () (or (funcall f1) (funcall f2)))) "Button 3"
   :dodge (get-ji 2  pad) "Left Trigger"
   :down (make-lamb d d2) "Down Arrow"
   :up  (make-lamb u u2) "Up Arrow"
   :r-left  (make-lamb l l2) "Left Arrow"
   :r-right  (make-lamb r r2) "Right Arrow")))
   
(defun make-PS3-alt-config (pad)
	(let ((d (get-di south pad)) (d2 (get-ai 6 pad)) (u (get-di north pad)) (u2 (get-ai 6 pad :dir -1))
  (l (get-di west pad)) (l2 (get-ai 7 pad :dir -1)) (r (get-di east pad)) (r2 (get-ai 7 pad)))
	(list
   :a1  (get-ji 3 pad) "Button 1"
   :a2 (get-ji 0 pad) "Button 2"
   :defense (get-ji 7 pad) "b7"
   :alt-def (get-ji 6 pad) "b6"
   :move (get-ji 2  pad) "Button 8"
   :cancel (let ((f1 (get-ji 4 pad)) (f2 (get-ji 5 pad))) #'(lambda () (or (funcall f1) (funcall f2)))) "Button 3"
   :dodge (get-ji 1  pad) "Left Trigger"
   :down (make-lamb d d2) "Down Arrow"
   :up  (make-lamb u u2) "Up Arrow"
   :r-left  (make-lamb l l2) "Left Arrow"
   :r-right  (make-lamb r r2) "Right Arrow")))

(defun make-logitech-config (pad)
  (let ((d (get-di south pad)) (d2 (get-ai 0 pad)) (u (get-di north pad)) (u2 (get-ai 0 pad :dir -1))
  (l (get-di west pad)) (l2 (get-ai 1 pad :dir -1)) (r (get-di east pad)) (r2 (get-ai 1 pad)))
   (list
   :a1  (get-ji 2 pad) "Button 1"
   :a2 (get-ji 1 pad) "Button 2"
   :defense (get-ji 5 pad) "b7"
   :alt-def (get-ji 7 pad) "b6"
   :move (get-ji 0 pad) "Button 8"
   :cancel (let ((f1 (get-ji 4 pad)) (f2 (get-ji 6 pad))) #'(lambda () (or (funcall f1) (funcall f2)))) "Button 3"
   :dodge (get-ji 3  pad) "Left Trigger"
   :down (make-lamb d d2) "Down Arrow"
   :up  (make-lamb u u2) "Up Arrow"
   :r-left  (make-lamb l l2) "Left Arrow"
   :r-right  (make-lamb r r2) "Right Arrow")))

   

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PLAYER INPUT CONFIGURATIONS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#|;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 Modify the below section in order to change change major control configurations
 Remove the semicolon ';' from the beginning of the configuration you want and add a semicolon ';' on to the
 beginning of all configurations you don't want.
 
 So, if you wanted the logitech configuration for player 1 make the defvar form look like this:
 
 (defvar *1p-input*
  ;k1-config
  ;(make-PS3-defult-config 0)
  (make-logitech-config 0)
  )
 
 NOTE: A logitech controler is not needed for this specific configuration. This simply gives a default configuration
 which is most likely to work well with a logitech gamepad by default.
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;|#

(defvar *1p-input*
  ;k1-config
  ;(make-PS3-defult-config 0)
  (make-logitech-config 0)
  )

(defvar *2p-input*
  ;k2-config
  (make-PS3-alt-config 1)
  ;(make-logitech-config 1)
  )