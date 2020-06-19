;; | ---------------------------------------------------------------------------
;; | LI_item
;; | ---------------------------------------------------------------------------
;; | Function : Returns the first occurence of a DXF dotted pair from a list
;; | Argument : 'n'     - The DXF code to check
;; |            'alist' - The List to check
;; | Returns  : The value of the DXF dotted pair, if it exists else returns nil
;; | Update   : December 26, 1998
;; | e-mail   : rakesh.rao@4d-technologies.com 
;; | Web      : www.4d-technologies.com
;; | ---------------------------------------------------------------------------


(defun LI_item (n alist)

	(cdr (assoc n alist))
)
