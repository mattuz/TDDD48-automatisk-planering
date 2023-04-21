(define (problem uav_problem_u4_r1_l4_p4_c5_g4_ct3)
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
	crate1 - crate
	crate2 - crate
	crate3 - crate
	crate4 - crate
	crate5 - crate
	food - contents
	medicine - contents
	water - contents
	person1 - person
	person2 - person
	person3 - person
	person4 - person
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
	(= (fly-cost depot loc1) 191)
	(= (fly-cost depot loc2) 95)
	(= (fly-cost depot loc3) 69)
	(= (fly-cost depot loc4) 191)
	(= (fly-cost loc1 depot) 191)
	(= (fly-cost loc1 loc1) 1)
	(= (fly-cost loc1 loc2) 143)
	(= (fly-cost loc1 loc3) 163)
	(= (fly-cost loc1 loc4) 245)
	(= (fly-cost loc2 depot) 95)
	(= (fly-cost loc2 loc1) 143)
	(= (fly-cost loc2 loc2) 1)
	(= (fly-cost loc2 loc3) 30)
	(= (fly-cost loc2 loc4) 124)
	(= (fly-cost loc3 depot) 69)
	(= (fly-cost loc3 loc1) 163)
	(= (fly-cost loc3 loc2) 30)
	(= (fly-cost loc3 loc3) 1)
	(= (fly-cost loc3 loc4) 132)
	(= (fly-cost loc4 depot) 191)
	(= (fly-cost loc4 loc1) 245)
	(= (fly-cost loc4 loc2) 124)
	(= (fly-cost loc4 loc3) 132)
	(= (fly-cost loc4 loc4) 1)
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
	(contains crate4 medicine)
	(available crate4)
	(at crate5 depot)
	(contains crate5 water)
	(available crate5)
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
	(at person1 loc1)
	(ready-for-delivery person1)
	(at person2 loc2)
	(ready-for-delivery person2)
	(at person3 loc4)
	(ready-for-delivery person3)
	(at person4 loc2)
	(ready-for-delivery person4)
	(wants person1 food)
	(wants person1 water)
	(wants person2 food)
	(wants person4 food)
)
(:goal (and

	(at uav1 depot)

	(at uav2 depot)

	(at uav3 depot)

	(at uav4 depot)
	(at carrier1 depot)
	(has person1 food)
	(has person1 water)
	(has person2 food)
	(has person4 food)
	))
)
