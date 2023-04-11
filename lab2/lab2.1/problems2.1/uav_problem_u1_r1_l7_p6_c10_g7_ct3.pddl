(define (problem uav_problem_u1_r1_l7_p6_c10_g7_ct3)
(:domain uav-domain)
(:objects
	uav1 - uav
	depot - location
	loc1 - location
	loc2 - location
	loc3 - location
	loc4 - location
	loc5 - location
	loc6 - location
	loc7 - location
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
	carrier1 - carrier
	n1 - num
	n2 - num
	n3 - num
	n4 - num
)
(:init
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
	(at person1 loc2)
	(at person2 loc4)
	(at person3 loc5)
	(at person4 loc3)
	(at person5 loc7)
	(at person6 loc7)
	(wants person1 food)
	(wants person1 water)
	(wants person2 food)
	(wants person2 water)
	(wants person5 medicine)
	(wants person5 water)
	(wants person6 water)
)
(:goal (and

	(at uav1 depot)
	(has person1 food)
	(has person1 water)
	(has person2 food)
	(has person2 water)
	(has person5 medicine)
	(has person5 water)
	(has person6 water)
	))
)
