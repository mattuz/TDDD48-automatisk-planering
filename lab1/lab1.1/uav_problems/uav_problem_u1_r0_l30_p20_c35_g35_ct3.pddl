(define (problem uav_problem_u1_r0_l30_p20_c35_g35_ct3)
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
	loc8 - location
	loc9 - location
	loc10 - location
	loc11 - location
	loc12 - location
	loc13 - location
	loc14 - location
	loc15 - location
	loc16 - location
	loc17 - location
	loc18 - location
	loc19 - location
	loc20 - location
	loc21 - location
	loc22 - location
	loc23 - location
	loc24 - location
	loc25 - location
	loc26 - location
	loc27 - location
	loc28 - location
	loc29 - location
	loc30 - location
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
	crate16 - crate
	crate17 - crate
	crate18 - crate
	crate19 - crate
	crate20 - crate
	crate21 - crate
	crate22 - crate
	crate23 - crate
	crate24 - crate
	crate25 - crate
	crate26 - crate
	crate27 - crate
	crate28 - crate
	crate29 - crate
	crate30 - crate
	crate31 - crate
	crate32 - crate
	crate33 - crate
	crate34 - crate
	crate35 - crate
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
	person9 - person
	person10 - person
	person11 - person
	person12 - person
	person13 - person
	person14 - person
	person15 - person
	person16 - person
	person17 - person
	person18 - person
	person19 - person
	person20 - person
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
	(contains crate12 food)
	(at crate13 depot)
	(contains crate13 food)
	(at crate14 depot)
	(contains crate14 food)
	(at crate15 depot)
	(contains crate15 food)
	(at crate16 depot)
	(contains crate16 food)
	(at crate17 depot)
	(contains crate17 food)
	(at crate18 depot)
	(contains crate18 food)
	(at crate19 depot)
	(contains crate19 medicine)
	(at crate20 depot)
	(contains crate20 medicine)
	(at crate21 depot)
	(contains crate21 medicine)
	(at crate22 depot)
	(contains crate22 medicine)
	(at crate23 depot)
	(contains crate23 medicine)
	(at crate24 depot)
	(contains crate24 medicine)
	(at crate25 depot)
	(contains crate25 medicine)
	(at crate26 depot)
	(contains crate26 medicine)
	(at crate27 depot)
	(contains crate27 water)
	(at crate28 depot)
	(contains crate28 water)
	(at crate29 depot)
	(contains crate29 water)
	(at crate30 depot)
	(contains crate30 water)
	(at crate31 depot)
	(contains crate31 water)
	(at crate32 depot)
	(contains crate32 water)
	(at crate33 depot)
	(contains crate33 water)
	(at crate34 depot)
	(contains crate34 water)
	(at crate35 depot)
	(contains crate35 water)
	(at uav1 depot)
	(free uav1)
	(at person1 loc10)
	(at person2 loc12)
	(at person3 loc29)
	(at person4 loc30)
	(at person5 loc26)
	(at person6 loc28)
	(at person7 loc2)
	(at person8 loc29)
	(at person9 loc12)
	(at person10 loc7)
	(at person11 loc22)
	(at person12 loc8)
	(at person13 loc22)
	(at person14 loc4)
	(at person15 loc12)
	(at person16 loc25)
	(at person17 loc18)
	(at person18 loc29)
	(at person19 loc28)
	(at person20 loc14)
	(wants person1 food)
	(wants person2 food)
	(wants person3 food)
	(wants person3 water)
	(wants person4 food)
	(wants person4 medicine)
	(wants person5 food)
	(wants person5 water)
	(wants person6 water)
	(wants person7 food)
	(wants person7 water)
	(wants person8 food)
	(wants person8 medicine)
	(wants person8 water)
	(wants person9 food)
	(wants person9 medicine)
	(wants person9 water)
	(wants person11 food)
	(wants person11 medicine)
	(wants person12 food)
	(wants person12 medicine)
	(wants person13 food)
	(wants person13 water)
	(wants person14 food)
	(wants person14 water)
	(wants person15 food)
	(wants person15 medicine)
	(wants person16 food)
	(wants person16 medicine)
	(wants person17 food)
	(wants person18 food)
	(wants person18 water)
	(wants person19 food)
	(wants person19 medicine)
	(wants person20 food)
)
(:goal (and

	(at uav1 depot)
	(has person1 food)
	(has person2 food)
	(has person3 food)
	(has person3 water)
	(has person4 food)
	(has person4 medicine)
	(has person5 food)
	(has person5 water)
	(has person6 water)
	(has person7 food)
	(has person7 water)
	(has person8 food)
	(has person8 medicine)
	(has person8 water)
	(has person9 food)
	(has person9 medicine)
	(has person9 water)
	(has person11 food)
	(has person11 medicine)
	(has person12 food)
	(has person12 medicine)
	(has person13 food)
	(has person13 water)
	(has person14 food)
	(has person14 water)
	(has person15 food)
	(has person15 medicine)
	(has person16 food)
	(has person16 medicine)
	(has person17 food)
	(has person18 food)
	(has person18 water)
	(has person19 food)
	(has person19 medicine)
	(has person20 food)
	))
)