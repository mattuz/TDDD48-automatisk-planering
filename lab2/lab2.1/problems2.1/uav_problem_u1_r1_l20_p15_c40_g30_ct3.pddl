(define (problem uav_problem_u1_r1_l20_p15_c40_g30_ct3)
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
	crate36 - crate
	crate37 - crate
	crate38 - crate
	crate39 - crate
	crate40 - crate
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
	(contains crate7 food)
	(available crate7)
	(at crate8 depot)
	(contains crate8 food)
	(available crate8)
	(at crate9 depot)
	(contains crate9 food)
	(available crate9)
	(at crate10 depot)
	(contains crate10 food)
	(available crate10)
	(at crate11 depot)
	(contains crate11 food)
	(available crate11)
	(at crate12 depot)
	(contains crate12 food)
	(available crate12)
	(at crate13 depot)
	(contains crate13 food)
	(available crate13)
	(at crate14 depot)
	(contains crate14 food)
	(available crate14)
	(at crate15 depot)
	(contains crate15 food)
	(available crate15)
	(at crate16 depot)
	(contains crate16 food)
	(available crate16)
	(at crate17 depot)
	(contains crate17 food)
	(available crate17)
	(at crate18 depot)
	(contains crate18 food)
	(available crate18)
	(at crate19 depot)
	(contains crate19 medicine)
	(available crate19)
	(at crate20 depot)
	(contains crate20 medicine)
	(available crate20)
	(at crate21 depot)
	(contains crate21 medicine)
	(available crate21)
	(at crate22 depot)
	(contains crate22 medicine)
	(available crate22)
	(at crate23 depot)
	(contains crate23 medicine)
	(available crate23)
	(at crate24 depot)
	(contains crate24 medicine)
	(available crate24)
	(at crate25 depot)
	(contains crate25 medicine)
	(available crate25)
	(at crate26 depot)
	(contains crate26 medicine)
	(available crate26)
	(at crate27 depot)
	(contains crate27 water)
	(available crate27)
	(at crate28 depot)
	(contains crate28 water)
	(available crate28)
	(at crate29 depot)
	(contains crate29 water)
	(available crate29)
	(at crate30 depot)
	(contains crate30 water)
	(available crate30)
	(at crate31 depot)
	(contains crate31 water)
	(available crate31)
	(at crate32 depot)
	(contains crate32 water)
	(available crate32)
	(at crate33 depot)
	(contains crate33 water)
	(available crate33)
	(at crate34 depot)
	(contains crate34 water)
	(available crate34)
	(at crate35 depot)
	(contains crate35 water)
	(available crate35)
	(at crate36 depot)
	(contains crate36 water)
	(available crate36)
	(at crate37 depot)
	(contains crate37 water)
	(available crate37)
	(at crate38 depot)
	(contains crate38 water)
	(available crate38)
	(at crate39 depot)
	(contains crate39 water)
	(available crate39)
	(at crate40 depot)
	(contains crate40 water)
	(available crate40)
	(at uav1 depot)
	(free uav1)
	(at carrier1 depot)
	(at person1 loc8)
	(at person2 loc18)
	(at person3 loc18)
	(at person4 loc9)
	(at person5 loc19)
	(at person6 loc14)
	(at person7 loc19)
	(at person8 loc13)
	(at person9 loc12)
	(at person10 loc8)
	(at person11 loc5)
	(at person12 loc17)
	(at person13 loc16)
	(at person14 loc3)
	(at person15 loc2)
	(wants person1 water)
	(wants person2 food)
	(wants person2 water)
	(wants person3 medicine)
	(wants person3 water)
	(wants person4 food)
	(wants person4 medicine)
	(wants person4 water)
	(wants person5 food)
	(wants person5 water)
	(wants person6 food)
	(wants person6 medicine)
	(wants person7 food)
	(wants person7 medicine)
	(wants person7 water)
	(wants person8 food)
	(wants person8 water)
	(wants person9 food)
	(wants person10 food)
	(wants person10 medicine)
	(wants person10 water)
	(wants person11 food)
	(wants person12 food)
	(wants person12 medicine)
	(wants person12 water)
	(wants person13 food)
	(wants person14 food)
	(wants person14 medicine)
	(wants person15 medicine)
	(wants person15 water)
)
(:goal (and

	(at uav1 depot)
	(has person1 water)
	(has person2 food)
	(has person2 water)
	(has person3 medicine)
	(has person3 water)
	(has person4 food)
	(has person4 medicine)
	(has person4 water)
	(has person5 food)
	(has person5 water)
	(has person6 food)
	(has person6 medicine)
	(has person7 food)
	(has person7 medicine)
	(has person7 water)
	(has person8 food)
	(has person8 water)
	(has person9 food)
	(has person10 food)
	(has person10 medicine)
	(has person10 water)
	(has person11 food)
	(has person12 food)
	(has person12 medicine)
	(has person12 water)
	(has person13 food)
	(has person14 food)
	(has person14 medicine)
	(has person15 medicine)
	(has person15 water)
	))
)
