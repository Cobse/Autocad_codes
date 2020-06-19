;;  ----------------------------------------------------------------------------
;;  PL_plist
;;  ----------------------------------------------------------------------------
;;  Function  Return list of points from an LWPOLYLINE or POLYLINE
;;  Arguments
;;             'ename'  - The entity name of the polyline, line, 3dface or
;;                        spline. In case of a SPLINE, the fit points are
;;                        returned.
;;  Action    Returns a list of all fit points of the polyline
;;             Does not return the control points of spline polylines
;;             or SPLINE objects.
;;  Returns   List of all points (3D format)
;;  Updated   Septemer 22, 1998
;;  e-mail    rakesh.rao@4d-technologies.com 
;;  Web       www.4d-technologies.com
;;  ----------------------------------------------------------------------------


(defun PL_plist ( ename  en entl flag vlist pt Elev sa ea Rad CenPt )

(setq
	vlist '()
	entl   (entget ename)
	en     (LI_item 0 entl)
)
(cond
	((= en LWPOLYLINE)
		(setq
			vlist '()
			Elev   (LI_item 38 entl)
		)
		(foreach pt entl
			(if (= (car pt) 10)
				(setq vlist (cons (list (cadr pt) (caddr pt) Elev) vlist))
			)
		)
		(setq vlist (reverse vlist))
	)
	((= en SPLINE)
		(setq vlist (LI_mitem 11 entl))
		(if (not vlist)
			(setq vlist (LI_mitem 10 entl))
			(setq vlist (reverse vlist))
		)
	)
	((= en POLYLINE)
		(setq
			ename  (entnext ename)
			entl   (entget ename)
			en     (LI_item 0 entl)
			vlist '()
		)
		(while (= en VERTEX)
			(setq flag (LI_item 70 entl))
			(if	(and
					(zerop (logand flag 1))
					(zerop (logand flag 2))
					(zerop (logand flag 8))
					(= flag 128)
				)
				(setq
					pt (LI_item 10 entl)
					vlist (cons pt vlist)
				)
			)
			(setq
				ename (entnext ename)
				entl  (entget ename)
				en    (LI_item 0 entl)
			)
		)
		(setq vlist (reverse vlist))
	)
	((= en LINE)
		(setq vlist (list (LI_item 10 entl) (LI_item 11 entl)))
	)
	((= en ARC)
		(setq
			CenPt (LI_item 10 entl)
			sa    (LI_item 50 entl)
			ea    (LI_item 51 entl)
			Rad   (LI_item 40 entl)
			vlist (list (polar CenPt sa Rad) (polar CenPt ea Rad))
		)
	)
	((= en 3DFACE)
		(setq vlist (list
						(LI_item 10 entl) (LI_item 11 entl)
						(LI_item 12 entl) (LI_item 13 entl)
					)
		)
	)
)
vlist
)