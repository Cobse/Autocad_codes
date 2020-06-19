

(defun c:bb()
(command "color" "white" "")



(command "style"  "" "arial" "" "" "" "" "" "")


(command "color" 2 "")
(command "line" (list 75 -250 ) (list 75 375 ) (list 18425 375 ) (list 18425 -250 )"")



(command "line" (list 150 300 ) (list 150 75 ) (list 18350 75 ) (list 18350 300 )"")





(command "zoom" "w" (list -100 -600 ) (list 700 550 ))
(command "fillet" "r" 40 "")
(command "fillet" (list 75 0 ) (list 575 375 ) "")

(command "zoom" "w" (list -100 -600 ) (list 700 550 ) "")
(command "fillet" "r" 40 "")
(command "fillet" (list 150 75 ) (list 575 75 ) "")


(command "dimasz" 75 "")


(command "zoom" "w" (list 18575 -600 ) (list 17800 550 ) "")
(command "fillet" "r"  "")
(command "fillet" (list 18425 0 ) (list 17925 375 ) "")

(command "zoom" "w" (list 18575 -600 ) (list 17800 550 ) "")
(command "fillet" "r" 40 "")
(command "fillet" (list 18350 75 ) (list 17875 75 ) "")




(command "color" 1 "")

(command "line" (list 500 -500 ) (list 500 0 ) (list 7000 0 ) (list 7000 -500 ) "")
(command "line" (list 500 950 ) (list 500 450 ) (list 7000 450 ) (list 7000 950 ) "")






(command "color" 2 "")

(command "line" (list 1200 150 ) (list 6300 150 ) "")
(command "line" (list 225 150 ) (list 225 300 ) (list 2558 300 ) "")

(command "color" 3 "")

(command "leader" (list 4600 150 ) (list 4750 300 ) (list 4750 -225 ) (list 4950 -225 ) "" "" "N")





(command "text" (list 4975 -275 ) "100" "0" "2-16" "")
(command "text" (list 2483 625 ) "100" "0" "2-16" "")
(command "color" 2 "")
(command "line" (list 7250 300 ) (list 4916 300 ) "")
(command "color" 3 "")
(command "text" (list 2483 625 ) "100" "0" "2-16" "")3
(command "color" 2 "")
(command "line" (list 18250 150 ) (list 18250 300 ) (list 18250 300 ) "")
(command "color" 3 "")

(command "leader" (list 17750 300 ) (list 17600 150 ) (list 17600 675 ) (list 17400 675 ) "" "" "N")
(command "color" 3 "")
(command "text" (list 17100 625 ) "" "0" "2-16" "")



(command "color" 1 "")



(command "line" (list 0 -500 ) (list 0 950 ) "")

(command "line" (list 18500 -500 ) (list 18500 950 ) "")


(command "color" 3 "")

(command "leader" (list 3750 375 ) (list 3750 675 ) (list 3950 675 ) "" "" "N")


(command "leader" (list 3750 75 ) (list 3750 -225 ) (list 3950 -225 ) "" "" "N")


(command "text" (list 3975 625 ) "100" "0" "2-16"  "")
(command "text" (list 3975 -275 ) "100" "0" "2-16"  "")




(command "dimlinear" (list 500 -500 ) (list 7000 -500 ) (list 7000 -500 ))

(command "text" "j" "MC" (list 3750 -425 ) "100" "0" "2L-8# @ 150 C/C" )



(command "dimasz" 75 "")




(command "color" 1 "")

(command "line" (list 7500 -500 ) (list 7500 0 ) (list 12000 0 ) (list 12000 -500 ) "")
(command "line" (list 7500 950 ) (list 7500 450 ) (list 12000 450 ) (list 12000 950 ) "")



(command "color" 3 "")

(command "leader" (list 9750 375 ) (list 9750 675 ) (list 9950 675 ) "" "" "N")


(command "leader" (list 9750 75 ) (list 9750 -225 ) (list 9950 -225 ) "" "" "N")

(command "dimlinear" (list 7500 -500 ) (list 12000 -500 ) (list 12000 -500 ))

(command "text" "j" "MC" (list 9750 -425 ) "100" "0" "2L-8# @ 150 C/C" )


(command "line" (list 8000 412.5 ) (list 8000 37.5 ) "")
(command "line" (list 8200 412.5 ) (list 8200 37.5 ) "")


(command "text" "j" "ML" (list 10000 675 ) "100" "0" "2-16" )
(command "text" "j" "ML" (list 10000 -225 ) "100" "0" "2-16" )


(command "color" 2 "")

(command "line" (list 8000 150 ) (list 11500 150 ) "")
(command "line" (list 7250 300 ) (list 8916 300 ) "")


(command "color" 3 "")

(command "leader" (list 10333 150 ) (list 10483 300 ) (list 10483 -225 ) (list 10683 -225 ) "" "" "N")

(command "color" 3 "")

(command "leader" (list 8466 300 ) (list 8616 150 ) (list 8616 675 ) (list 8816 675 ) "" "" "N")

(command "text" (list 10708 -275 ) "" "0" "2-16" "")
(command "text" (list 8841 625 ) "" "0" "2-16" "")



(command "color" 1 "")

(command "line" (list 12500 -500 ) (list 12500 0 ) (list 18000 0 ) (list 18000 -500 ) "")
(command "line" (list 12500 950 ) (list 12500 450 ) (list 18000 450 ) (list 18000 950 ) "")



(command "color" 3 "")

(command "leader" (list 15250 375 ) (list 15250 675 ) (list 15450 675 ) "" "" "N")


(command "leader" (list 15250 75 ) (list 15250 -225 ) (list 15450 -225 ) "" "" "N")

(command "dimlinear" (list 12500 -500 ) (list 18000 -500 ) (list 18000 -500 ))

(command "text" "j" "MC" (list 15250 -425 ) "100" "0" "2L-8# @ 150 C/C" )


(command "line" (list 13000 412.5 ) (list 13000 37.5 ) "")
(command "line" (list 13200 412.5 ) (list 13200 37.5 ) "")


(command "text" "j" "ML" (list 15500 675 ) "100" "0" "2-16" )
(command "text" "j" "ML" (list 15500 -225 ) "100" "0" "2-16" )


(command "color" 2 "")

(command "line" (list 13100 150 ) (list 17650 150 ) "")
(command "line" (list 12250 300 ) (list 14250 300 ) "")


(command "color" 3 "")

(command "leader" (list 16133 150 ) (list 16283 300 ) (list 16283 -225 ) (list 16483 -225 ) "" "" "N")

(command "color" 3 "")

(command "leader" (list 13800 300 ) (list 13950 150 ) (list 13950 675 ) (list 14150 675 ) "" "" "N")

(command "text" (list 16508 -275 ) "" "0" "2-16" "")
(command "text" (list 14175 625 ) "" "0" "2-16" "")



(command "color" 1 "")






(command "color" 3 "")



















(command "color" 2 "")





(command "color" 3 "")



(command "color" 3 "")









(command "color" 1 "")






(command "color" 3 "")



















(command "color" 2 "")





(command "color" 3 "")



(command "color" 3 "")








(command "color" 1 "")






(command "color" 3 "")



















(command "color" 2 "")





(command "color" 3 "")



(command "color" 3 "")








(command "color" 1 "")






(command "color" 3 "")



















(command "color" 2 "")





(command "color" 3 "")



(command "color" 3 "")








(command "color" 1 "")






(command "color" 3 "")



















(command "color" 2 "")





(command "color" 3 "")



(command "color" 3 "")








(command "color" 1 "")






(command "color" 3 "")



















(command "color" 2 "")





(command "color" 3 "")



(command "color" 3 "")








(command "color" 1 "")






(command "color" 3 "")



















(command "color" 2 "")





(command "color" 3 "")



(command "color" 3 "")










(command "text" "j" "ML" (list 0 -1000 ) "150" "0" "%%uBEAM (230 X 450)")

(command "zoom" "E"))
