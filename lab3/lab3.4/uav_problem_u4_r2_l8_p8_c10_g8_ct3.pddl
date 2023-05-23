(define (problem uav_problem_u4_r2_l8_p8_c10_g8_ct3)
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
	crate10 - crate
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
	(= (fly-cost depot loc1) 203)
	(= (fly-cost depot loc2) 86)
	(= (fly-cost depot loc3) 193)
	(= (fly-cost depot loc4) 177)
	(= (fly-cost depot loc5) 237)
	(= (fly-cost depot loc6) 154)
	(= (fly-cost depot loc7) 110)
	(= (fly-cost depot loc8) 26)
	(= (fly-cost loc1 depot) 203)
	(= (fly-cost loc1 loc1) 1)
	(= (fly-cost loc1 loc2) 128)
	(= (fly-cost loc1 loc3) 195)
	(= (fly-cost loc1 loc4) 193)
	(= (fly-cost loc1 loc5) 70)
	(= (fly-cost loc1 loc6) 186)
	(= (fly-cost loc1 loc7) 103)
	(= (fly-cost loc1 loc8) 188)
	(= (fly-cost loc2 depot) 86)
	(= (fly-cost loc2 loc1) 128)
	(= (fly-cost loc2 loc2) 1)
	(= (fly-cost loc2 loc3) 134)
	(= (fly-cost loc2 loc4) 122)
	(= (fly-cost loc2 loc5) 152)
	(= (fly-cost loc2 loc6) 103)
	(= (fly-cost loc2 loc7) 68)
	(= (fly-cost loc2 loc8) 65)
	(= (fly-cost loc3 depot) 193)
	(= (fly-cost loc3 loc1) 195)
	(= (fly-cost loc3 loc2) 134)
	(= (fly-cost loc3 loc3) 1)
	(= (fly-cost loc3 loc4) 18)
	(= (fly-cost loc3 loc5) 162)
	(= (fly-cost loc3 loc6) 40)
	(= (fly-cost loc3 loc7) 195)
	(= (fly-cost loc3 loc8) 168)
	(= (fly-cost loc4 depot) 177)
	(= (fly-cost loc4 loc1) 193)
	(= (fly-cost loc4 loc2) 122)
	(= (fly-cost loc4 loc3) 18)
	(= (fly-cost loc4 loc4) 1)
	(= (fly-cost loc4 loc5) 167)
	(= (fly-cost loc4 loc6) 23)
	(= (fly-cost loc4 loc7) 185)
	(= (fly-cost loc4 loc8) 152)
	(= (fly-cost loc5 depot) 237)
	(= (fly-cost loc5 loc1) 70)
	(= (fly-cost loc5 loc2) 152)
	(= (fly-cost loc5 loc3) 162)
	(= (fly-cost loc5 loc4) 167)
	(= (fly-cost loc5 loc5) 1)
	(= (fly-cost loc5 loc6) 168)
	(= (fly-cost loc5 loc7) 155)
	(= (fly-cost loc5 loc8) 216)
	(= (fly-cost loc6 depot) 154)
	(= (fly-cost loc6 loc1) 186)
	(= (fly-cost loc6 loc2) 103)
	(= (fly-cost loc6 loc3) 40)
	(= (fly-cost loc6 loc4) 23)
	(= (fly-cost loc6 loc5) 168)
	(= (fly-cost loc6 loc6) 1)
	(= (fly-cost loc6 loc7) 167)
	(= (fly-cost loc6 loc8) 129)
	(= (fly-cost loc7 depot) 110)
	(= (fly-cost loc7 loc1) 103)
	(= (fly-cost loc7 loc2) 68)
	(= (fly-cost loc7 loc3) 195)
	(= (fly-cost loc7 loc4) 185)
	(= (fly-cost loc7 loc5) 155)
	(= (fly-cost loc7 loc6) 167)
	(= (fly-cost loc7 loc7) 1)
	(= (fly-cost loc7 loc8) 103)
	(= (fly-cost loc8 depot) 26)
	(= (fly-cost loc8 loc1) 188)
	(= (fly-cost loc8 loc2) 65)
	(= (fly-cost loc8 loc3) 168)
	(= (fly-cost loc8 loc4) 152)
	(= (fly-cost loc8 loc5) 216)
	(= (fly-cost loc8 loc6) 129)
	(= (fly-cost loc8 loc7) 103)
	(= (fly-cost loc8 loc8) 1)
	(at crate1 depot)
	(contains crate1 food)
	(available crate1)
	(at crate2 depot)
	(contains crate2 food)
	(available crate2)
	(at crate3 depot)
	(contains crate3 medicine)
	(available crate3)
	(at crate4 depot)
	(contains crate4 water)
	(available crate4)
	(at crate5 depot)
	(contains crate5 water)
	(available crate5)
	(at crate6 depot)
	(contains crate6 water)
	(available crate6)
	(at crate7 depot)
	(contains crate7 water)
	(available crate7)
	(at crate8 depot)
	(contains crate8 water)
	(available crate8)
	(at crate9 depot)
	(contains crate9 water)
	(available crate9)
	(at crate10 depot)
	(contains crate10 water)
	(available crate10)
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
	(at person1 loc5)
	(ready-for-delivery person1)
	(at person2 loc6)
	(ready-for-delivery person2)
	(at person3 loc4)
	(ready-for-delivery person3)
	(at person4 loc2)
	(ready-for-delivery person4)
	(at person5 loc1)
	(ready-for-delivery person5)
	(at person6 loc4)
	(ready-for-delivery person6)
	(at person7 loc5)
	(ready-for-delivery person7)
	(at person8 loc2)
	(ready-for-delivery person8)
	(wants person1 water)
	(wants person2 water)
	(wants person3 water)
	(wants person4 food)
	(wants person4 water)
	(wants person7 food)
	(wants person7 medicine)
	(wants person8 water)
)
(:goal (and
	(at uav1 depot)
	(at uav2 depot)
	(at uav3 depot)
	(at uav4 depot)
	(at carrier1 depot)
	(at carrier2 depot)
	(has person1 water)
	(has person2 water)
	(has person3 water)
	(has person4 food)
	(has person4 water)
	(has person7 food)
	(has person7 medicine)
	(has person8 water)
	))
)
