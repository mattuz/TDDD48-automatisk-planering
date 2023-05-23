(define (problem uav_problem_u4_r2_l8_p8_c9_g8_ct3)
(:domain uav-domain)
(:objects
	uav1 - uav
	uav2 - uav
	uav3 - uav
	uav4 - uav
	depot - location
	loc1 - location
	loc2 - location
	loc3 - location
	loc4 - location
	loc5 - location
	loc6 - location
	loc7 - location
	loc8 - location
	crate1 - crate
	crate2 - crate
	crate3 - crate
	crate4 - crate
	crate5 - crate
	crate6 - crate
	crate7 - crate
	crate8 - crate
	crate9 - crate
	food - contents
	medicine - contents
	water - contents
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
	person7 - person
	person8 - person
	carrier1 - carrier
	carrier2 - carrier
	n0 - num
	n1 - num
	n2 - num
	n3 - num
	n4 - num
)
(:init
	(next n0 n1)
	(next n1 n2)
	(next n2 n3)
	(next n3 n4)
	(= (fly-cost depot depot) 1)
	(= (fly-cost depot loc1) 191)
	(= (fly-cost depot loc2) 95)
	(= (fly-cost depot loc3) 69)
	(= (fly-cost depot loc4) 191)
	(= (fly-cost depot loc5) 258)
	(= (fly-cost depot loc6) 142)
	(= (fly-cost depot loc7) 188)
	(= (fly-cost depot loc8) 13)
	(= (fly-cost loc1 depot) 191)
	(= (fly-cost loc1 loc1) 1)
	(= (fly-cost loc1 loc2) 143)
	(= (fly-cost loc1 loc3) 163)
	(= (fly-cost loc1 loc4) 245)
	(= (fly-cost loc1 loc5) 168)
	(= (fly-cost loc1 loc6) 214)
	(= (fly-cost loc1 loc7) 167)
	(= (fly-cost loc1 loc8) 183)
	(= (fly-cost loc2 depot) 95)
	(= (fly-cost loc2 loc1) 143)
	(= (fly-cost loc2 loc2) 1)
	(= (fly-cost loc2 loc3) 30)
	(= (fly-cost loc2 loc4) 124)
	(= (fly-cost loc2 loc5) 164)
	(= (fly-cost loc2 loc6) 80)
	(= (fly-cost loc2 loc7) 94)
	(= (fly-cost loc2 loc8) 83)
	(= (fly-cost loc3 depot) 69)
	(= (fly-cost loc3 loc1) 163)
	(= (fly-cost loc3 loc2) 30)
	(= (fly-cost loc3 loc3) 1)
	(= (fly-cost loc3 loc4) 132)
	(= (fly-cost loc3 loc5) 193)
	(= (fly-cost loc3 loc6) 84)
	(= (fly-cost loc3 loc7) 120)
	(= (fly-cost loc3 loc8) 57)
	(= (fly-cost loc4 depot) 191)
	(= (fly-cost loc4 loc1) 245)
	(= (fly-cost loc4 loc2) 124)
	(= (fly-cost loc4 loc3) 132)
	(= (fly-cost loc4 loc4) 1)
	(= (fly-cost loc4 loc5) 164)
	(= (fly-cost loc4 loc6) 50)
	(= (fly-cost loc4 loc7) 90)
	(= (fly-cost loc4 loc8) 182)
	(= (fly-cost loc5 depot) 258)
	(= (fly-cost loc5 loc1) 168)
	(= (fly-cost loc5 loc2) 164)
	(= (fly-cost loc5 loc3) 193)
	(= (fly-cost loc5 loc4) 164)
	(= (fly-cost loc5 loc5) 1)
	(= (fly-cost loc5 loc6) 171)
	(= (fly-cost loc5 loc7) 84)
	(= (fly-cost loc5 loc8) 246)
	(= (fly-cost loc6 depot) 142)
	(= (fly-cost loc6 loc1) 214)
	(= (fly-cost loc6 loc2) 80)
	(= (fly-cost loc6 loc3) 84)
	(= (fly-cost loc6 loc4) 50)
	(= (fly-cost loc6 loc5) 171)
	(= (fly-cost loc6 loc6) 1)
	(= (fly-cost loc6 loc7) 87)
	(= (fly-cost loc6 loc8) 132)
	(= (fly-cost loc7 depot) 188)
	(= (fly-cost loc7 loc1) 167)
	(= (fly-cost loc7 loc2) 94)
	(= (fly-cost loc7 loc3) 120)
	(= (fly-cost loc7 loc4) 90)
	(= (fly-cost loc7 loc5) 84)
	(= (fly-cost loc7 loc6) 87)
	(= (fly-cost loc7 loc7) 1)
	(= (fly-cost loc7 loc8) 176)
	(= (fly-cost loc8 depot) 13)
	(= (fly-cost loc8 loc1) 183)
	(= (fly-cost loc8 loc2) 83)
	(= (fly-cost loc8 loc3) 57)
	(= (fly-cost loc8 loc4) 182)
	(= (fly-cost loc8 loc5) 246)
	(= (fly-cost loc8 loc6) 132)
	(= (fly-cost loc8 loc7) 176)
	(= (fly-cost loc8 loc8) 1)
	(at crate1 depot)
	(contains crate1 food)
	(available crate1)
	(at crate2 depot)
	(contains crate2 food)
	(available crate2)
	(at crate3 depot)
	(contains crate3 food)
	(available crate3)
	(at crate4 depot)
	(contains crate4 food)
	(available crate4)
	(at crate5 depot)
	(contains crate5 food)
	(available crate5)
	(at crate6 depot)
	(contains crate6 food)
	(available crate6)
	(at crate7 depot)
	(contains crate7 medicine)
	(available crate7)
	(at crate8 depot)
	(contains crate8 water)
	(available crate8)
	(at crate9 depot)
	(contains crate9 water)
	(available crate9)
	(at uav1 depot)
	(free uav1)
	(at uav2 depot)
	(free uav2)
	(at uav3 depot)
	(free uav3)
	(at uav4 depot)
	(free uav4)
	(at carrier1 depot)
	(count carrier1 n0)
	(loadable carrier1)
	(at carrier2 depot)
	(count carrier2 n0)
	(loadable carrier2)
	(at person1 loc8)
	(ready-for-delivery person1)
	(at person2 loc7)
	(ready-for-delivery person2)
	(at person3 loc5)
	(ready-for-delivery person3)
	(at person4 loc4)
	(ready-for-delivery person4)
	(at person5 loc6)
	(ready-for-delivery person5)
	(at person6 loc1)
	(ready-for-delivery person6)
	(at person7 loc4)
	(ready-for-delivery person7)
	(at person8 loc1)
	(ready-for-delivery person8)
	(wants person1 water)
	(wants person2 food)
	(wants person4 food)
	(wants person4 water)
	(wants person5 food)
	(wants person6 food)
	(wants person7 food)
	(wants person7 medicine)
)
(:goal (and
	(at uav1 depot)
	(at uav2 depot)
	(at uav3 depot)
	(at uav4 depot)
	(at carrier1 depot)
	(at carrier2 depot)
	(has person1 water)
	(has person2 food)
	(has person4 food)
	(has person4 water)
	(has person5 food)
	(has person6 food)
	(has person7 food)
	(has person7 medicine)
	))
)
