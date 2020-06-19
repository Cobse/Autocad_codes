(defun c:pts (/ pl )
(and (setq pl (ssget '((0 . "LWPOLYLINE"))))
     (foreach itm
	(setq ptlist (mapcar 'cdr
				     (vl-remove-if-not
				       '(lambda	(x)
					  (= (car x) 10)
					)
				       (entget (ssname pl 0))
				     )
			     )
		)
       (print itm)
       )
     )
  (princ)
  )