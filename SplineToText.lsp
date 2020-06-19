(defun c:pldiv2file ( / *error* file aa en int i mx file)

  (defun *error* (errmsg)
    (if (not (wcmatch errmsg "Function cancelled,quit / exit abort,console break,end"))
      (princ (strcat "\nError: " errmsg)))
    (if file (close file))
    (princ))

  (princ "\nRequired single geometrical object, ")
  (while (not (setq ss (ssget "_+.:E:S" '((0 . "*POLYLINE,SPLINE,ARC,CIRCLE,LINE"))))))

  (initget 7)
  (setq int (getdist "\nSet interval: ")
	en (ssname ss 0)
	i 0.
	mx (vlax-curve-getDistAtParam en (vlax-curve-getEndParam en)))


  (if (setq file (open (strcat (getvar 'DWGPREFIX) (vl-string-right-trim ".dwg" (getvar 'DWGNAME)) ".csv") "a"))
    (progn
      (write-line (strcat "---- " (rtos (getvar "CDATE") 2 4)  " ---------------") file)
      (while (< i mx)
	(if (setq pt (vlax-curve-getPointAtDist en i))
	  (write-line (strcat (rtos (car pt) 2) "," (rtos (cadr pt) 2) "," (rtos (last pt) 2)) file))
	(setq i (+ i int)))
      (if (setq pt (vlax-curve-getPointAtDist en mx))
	(write-line (strcat (rtos (car pt) 2) "," (rtos (cadr pt) 2) "," (rtos (last pt) 2)) file))))
  
  (*error* "end")
)