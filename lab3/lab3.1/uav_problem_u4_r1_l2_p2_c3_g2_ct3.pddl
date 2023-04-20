(define (problem uav_problem_u4_r1_l2_p2_c3_g2_ct3)
(:domain uav-domain)
(:objects
	uav1 - uav
	uav2 - uav
	uav3 - uav
	uav4 - uav
	depot - location
	loc1 - location
	loc2 - location
	crate1 - crate
	crate2 - crate
	crate3 - crate
	food - contents
	medicine - contents
	water - contents
	person1 - person
	person2 - person
	carrier1 - carrier
	n0 - num
	n1 - num
	n2 - num
	n3 - num
	n4 - num
)
(:init
	(= (total-cost) 0)
	(next n0 n1)
	(next n1 n2)
	(next n2 n3)
	(next n3 n4)
	(= (fly-cost depot depot) 1)
	(= (fly-cost depot loc1) 203)
	(= (fly-cost depot loc2) 86)
	(= (fly-cost loc1 depot) 203)
	(= (fly-cost loc1 loc1) 1)
	(= (fly-cost loc1 loc2) 128)
	(= (fly-cost loc2 depot) 86)
	(= (fly-cost loc2 loc1) 128)
	(= (fly-cost loc2 loc2) 1)
	(at crate1 depot)
	(contains crate1 food)
	(available crate1)
	(at crate2 depot)
	(contains crate2 medicine)
	(available crate2)
	(at crate3 depot)
	(contains crate3 water)
	(available crate3)
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
	(at person1 loc1)
	(at person2 loc1)
	(wants person1 water)
	(wants person2 food)
)
(:goal (and

	(at uav1 depot)

	(at uav2 depot)

	(at uav3 depot)

	(at uav4 depot)
	(at carrier1 depot)
	(has person1 water)
	(has person2 food)
	))
(:metric minimize (total-cost))
)
