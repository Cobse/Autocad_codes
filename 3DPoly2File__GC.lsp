 
;;
;; Par GC (gile) - Liste des points XYZ d'une Polyligne 3D 
;; 
;; Commande/Command :  3DPoly2File
;; 
;; Enregistrer en fichier .txt et l'ouvrir avec excel (s�parateur = virgule), 
;; en .csv si Windows est param�tr� pour le s�parateur de donn�es = virgule 
;; et en .scr si utilisation comme script pour recopier les polylignes dans d'autres dessins.
;; La pr�cision des points d�pend de la valeur de la variable LUPREC 
;; 


(defun c:3DPoly2File (/ path ss file lst)
(vl-load-com)
(if (and
(setq path (getfiled "Create a File " (getvar "DWGPREFIX") "" 1))
(ssget '((0 . "POLYLINE") (-4 . "&") (70 . 8)))
)
(progn
(setq file (open path "w"))
(vlax-for pl (setq ss (vla-get-ActiveSelectionSet
(vla-get-ActiveDocument
(vlax-get-acad-object)
)
)
)
(write-line "_3DPoly" file)
(setq lst (vlax-get pl 'Coordinates))
(while lst
(write-line
(strcat (rtos (car lst))
","
(rtos (cadr lst))
","
(rtos (caddr lst))
)
file
)
(setq lst (cdddr lst))
)
(write-line "" file)
)
(close file)
)
)
(princ)
)  

