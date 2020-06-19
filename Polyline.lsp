; ----------------------------------------------------------------------
;             (Export LWPOLYLINE Vertices & Points to File)
;            Copyright (C) 2000 DotSoft, All Rights Reserved
;                   Website: http://www.dotsoft.com
; ----------------------------------------------------------------------
; DISCLAIMER:  DotSoft Disclaims any and all liability for any damages
; arising out of the use or operation, or inability to use the software.
; FURTHERMORE, User agrees to hold DotSoft harmless from such claims.
; DotSoft makes no warranty, either expressed or implied, as to the
; fitness of this product for a particular purpose.  All materials are
; to be considered ‘as-is’, and use of this software should be
; considered as AT YOUR OWN RISK.
; ----------------------------------------------------------------------
;;Revised 8/23/07 CAB to report coordinates in current UCS
(defun c:ptexport ()
  (setq sset (ssget '((-4 . "<OR")(0 . "POINT")
                      (0 . "LWPOLYLINE")(-4 . "OR>"))))
  (if sset
    (progn
      (setq itm 0 num (sslength sset))
      (setq fn (getfiled "Point Export File" "" "txt" 1))
      (if (/= fn nil)
        (progn
          (setq fh (open fn "w"))
          (while (< itm num)
            (setq hnd (ssname sset itm))
            (setq ent (entget hnd))
            (setq obj (cdr (assoc 0 ent)))
            (cond
              ((= obj "POINT")
                (setq pnt (cdr (assoc 10 ent)))
                (setq pnt (trans pnt 0 1));;**CAB
                (princ (strcat (rtos (car pnt) 2 8) ","
                               (rtos (cadr pnt) 2 8) ","
                               (rtos (caddr pnt) 2 8)) fh)
                (princ "\n" fh)
              )
              ((= obj "LWPOLYLINE")
                (if (= (cdr (assoc 38 ent)) nil)
                  (setq elv 0.0)
                  (setq elv (cdr (assoc 38 ent)))
                )
                (foreach rec ent
                  (if (= (car rec) 10)
                    (progn
                      (setq pnt (cdr rec))
                      (setq pnt (trans pnt 0 1));;**CAB
                      (princ (strcat (rtos (car pnt) 2 8) ","
                                     (rtos (cadr pnt) 2 8) ","
                                     (rtos elv 2 8)) fh)
                      (princ "\n" fh)
                    )
                  )
                )
              )
              (t nil)
            )
            (setq itm (1+ itm))
          )
          (close fh)
        )
      )
    )
  )
  (princ)
)

(princ "\nPoint Export loaded, type PTEXPORT to run.")
(princ)