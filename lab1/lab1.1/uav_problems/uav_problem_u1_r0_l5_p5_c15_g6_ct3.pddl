(define (problem uav_problem_u1_r0_l5_p5_c15_g6_ct3)
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
	crate8 - crate
	crate9 - crate
	crate10 - crate
	crate11 - crate
	crate12 - crate
	crate13 - crate
	crate14 - crate
	crate15 - crate
	food - contents
	medicine - contents
	water - contents
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
)
(:init
	(at crate1 depot)
	(contains crate1 food)
	(at crate2 depot)
	(contains crate2 food)
	(at crate3 depot)
	(contains crate3 food)
	(at crate4 depot)
	(contains crate4 food)
	(at crate5 depot)
	(contains crate5 food)
	(at crate6 depot)
	(contains crate6 food)
	(at crate7 depot)
	(contains crate7 food)
	(at crate8 depot)
	(contains crate8 food)
	(at crate9 depot)
	(contains crate9 food)
	(at crate10 depot)
	(contains crate10 food)
	(at crate11 depot)
	(contains crate11 food)
	(at crate12 depot)
	(contains crate12 medicine)
	(at crate13 depot)
	(contains crate13 water)
	(at crate14 depot)
	(contains crate14 water)
	(at crate15 depot)
	(contains crate15 water)
	(at uav1 depot)
	(free uav1)
	(at person1 loc3)
	(at person2 loc3)
	(at person3 loc5)
	(at person4 loc3)
	(at person5 loc1)
	(wants person1 food)
	(wants person2 water)
	(wants person3 food)
	(wants person4 food)
	(wants person5 food)
	(wants person5 medicine)
)
(:goal (and

	(at uav1 depot)
	(has person1 food)
	(has person2 water)
	(has person3 food)
	(has person4 food)
	(has person5 food)
	(has person5 medicine)
	))
)
