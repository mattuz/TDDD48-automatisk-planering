(define (problem uav_problem_u1_r1_l3_p5_c10_g6_ct3)
(:domain uav-domain)
(:objects
	uav1 - uav
	depot - location
	loc1 - location
	loc2 - location
	loc3 - location
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
	carrier1 - carrier
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
	(= (fly-cost loc1 depot) 203)
	(= (fly-cost loc1 loc1) 1)
	(= (fly-cost loc1 loc2) 128)
	(= (fly-cost loc1 loc3) 195)
	(= (fly-cost loc2 depot) 86)
	(= (fly-cost loc2 loc1) 128)
	(= (fly-cost loc2 loc2) 1)
	(= (fly-cost loc2 loc3) 134)
	(= (fly-cost loc3 depot) 193)
	(= (fly-cost loc3 loc1) 195)
	(= (fly-cost loc3 loc2) 134)
	(= (fly-cost loc3 loc3) 1)
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
	(at carrier1 depot)
	(count carrier1 n0)
	(loadable carrier1)
	(at person1 loc1)
	(ready-for-delivery person1)
	(at person2 loc2)
	(ready-for-delivery person2)
	(at person3 loc1)
	(ready-for-delivery person3)
	(at person4 loc3)
	(ready-for-delivery person4)
	(at person5 loc2)
	(ready-for-delivery person5)
	(wants person1 food)
	(wants person1 water)
	(wants person2 water)
	(wants person4 water)
	(wants person5 food)
	(wants person5 medicine)
)
(:goal (and
	(at uav1 depot)
	(at carrier1 depot)
	(has person1 food)
	(has person1 water)
	(has person2 water)
	(has person4 water)
	(has person5 food)
	(has person5 medicine)
	))
(:metric minimize (total-cost))
)
