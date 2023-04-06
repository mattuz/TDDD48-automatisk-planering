(define (problem uav_problem_u1_r0_l5_p5_c6_g6_ct3)
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
	(contains crate2 medicine)
	(at crate3 depot)
	(contains crate3 water)
	(at crate4 depot)
	(contains crate4 water)
	(at crate5 depot)
	(contains crate5 water)
	(at crate6 depot)
	(contains crate6 water)
	(at uav1 depot)
	(free uav1)
	(at person1 loc1)
	(at person2 loc4)
	(at person3 loc1)
	(at person4 loc5)
	(at person5 loc3)
	(wants person1 water)
	(wants person2 water)
	(wants person4 food)
	(wants person4 water)
	(wants person5 medicine)
	(wants person5 water)
)
(:goal (and

	(at uav1 depot)
	(has person1 water)
	(has person2 water)
	(has person4 food)
	(has person4 water)
	(has person5 medicine)
	(has person5 water)
	))
)
