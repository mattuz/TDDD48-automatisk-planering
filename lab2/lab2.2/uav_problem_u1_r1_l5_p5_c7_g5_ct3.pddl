(define (problem uav_problem_u1_r1_l5_p5_c7_g5_ct3)
(:domain uav-domain)
(:objects
	uav1 - uav
	depot - location
	loc1 - location
	loc2 - location
	loc3 - location
	loc4 - location
	loc5 - location
	crate1 - crate
	crate2 - crate
	crate3 - crate
	crate4 - crate
	crate5 - crate
	crate6 - crate
	crate7 - crate
	food - contents
	medicine - contents
	water - contents
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	carrier1 - carrier
	n1 - num
	n2 - num
	n3 - num
	n4 - num
)
(:init
	(= (total-cost) 0)
	(next n1 n2)
	(next n2 n3)
	(next n3 n4)
	(= (fly-cost depot depot) 1)
	(= (fly-cost depot loc1) 203)
	(= (fly-cost depot loc2) 86)
	(= (fly-cost depot loc3) 193)
	(= (fly-cost depot loc4) 177)
	(= (fly-cost depot loc5) 237)
	(= (fly-cost loc1 depot) 203)
	(= (fly-cost loc1 loc1) 1)
	(= (fly-cost loc1 loc2) 128)
	(= (fly-cost loc1 loc3) 195)
	(= (fly-cost loc1 loc4) 193)
	(= (fly-cost loc1 loc5) 70)
	(= (fly-cost loc2 depot) 86)
	(= (fly-cost loc2 loc1) 128)
	(= (fly-cost loc2 loc2) 1)
	(= (fly-cost loc2 loc3) 134)
	(= (fly-cost loc2 loc4) 122)
	(= (fly-cost loc2 loc5) 152)
	(= (fly-cost loc3 depot) 193)
	(= (fly-cost loc3 loc1) 195)
	(= (fly-cost loc3 loc2) 134)
	(= (fly-cost loc3 loc3) 1)
	(= (fly-cost loc3 loc4) 18)
	(= (fly-cost loc3 loc5) 162)
	(= (fly-cost loc4 depot) 177)
	(= (fly-cost loc4 loc1) 193)
	(= (fly-cost loc4 loc2) 122)
	(= (fly-cost loc4 loc3) 18)
	(= (fly-cost loc4 loc4) 1)
	(= (fly-cost loc4 loc5) 167)
	(= (fly-cost loc5 depot) 237)
	(= (fly-cost loc5 loc1) 70)
	(= (fly-cost loc5 loc2) 152)
	(= (fly-cost loc5 loc3) 162)
	(= (fly-cost loc5 loc4) 167)
	(= (fly-cost loc5 loc5) 1)
	(at crate1 depot)
	(contains crate1 food)
	(available crate1)
	(at crate2 depot)
	(contains crate2 medicine)
	(available crate2)
	(at crate3 depot)
	(contains crate3 water)
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
	(at uav1 depot)
	(free uav1)
	(at carrier1 depot)
	(count carrier1 n1)
	(at person1 loc2)
	(at person2 loc4)
	(at person3 loc5)
	(at person4 loc3)
	(at person5 loc1)
	(wants person1 water)
	(wants person2 water)
	(wants person4 food)
	(wants person5 medicine)
	(wants person5 water)
)
(:goal (and

	(at uav1 depot)
	(has person1 water)
	(has person2 water)
	(has person4 food)
	(has person5 medicine)
	(has person5 water)
	))
(:metric minimize (total-cost))
)
