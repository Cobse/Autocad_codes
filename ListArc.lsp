 

(vl-load-com)

(defun c:LA2CSV ( / *error* file i pb pm pe en)
  
  (defun *error* (errmsg)
    (if (not (wcmatch errmsg "Function cancelled,quit / exit abort,console break,end"))
      (princ (strcat "\nError: " errmsg)))
    (if file (close file))
    (princ))

  (if (and (setq ss (ssget '((0 . "LINE,ARC"))))
           (setq file (open (strcat (getvar 'DWGPREFIX) (vl-string-right-trim ".dwg" (getvar 'DWGNAME)) "-CooExport.csv") "w"))
          ; (write-line "x1,y1,xm,ym,x2,y2" file)				; heading
           )
    (repeat (setq i (sslength ss))
      (setq en (ssname ss (setq i (1- i)))
            pb (vlax-curve-getStartPoint en)
            pe (vlax-curve-getEndPoint en)
            pm (if (= "ARC" (cdr (assoc 0 (entget en))))
                 (cdr (assoc 10 (entget en)))
                 '(0 0 0)))
      			  ;x			  y
      (write-line (strcat (rtos (car pb) 2 8) "," (rtos (cadr pb) 2 8) "," 					; delimiter
                          (rtos (car pm) 2 8) "," (rtos (cadr pm) 2 8) ","					; delimiter
                          (rtos (car pe) 2 8) "," (rtos (cadr pe) 2 8)						; delimiter
                          ) file)))
  (princ (strcat "\nFile exported: "(getvar 'DWGPREFIX) (vl-string-right-trim ".dwg" (getvar 'DWGNAME)) "-CooExport.csv"))
  (*error* "end")
)