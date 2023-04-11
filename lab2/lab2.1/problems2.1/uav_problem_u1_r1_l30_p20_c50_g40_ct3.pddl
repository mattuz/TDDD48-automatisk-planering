(define (problem uav_problem_u1_r1_l30_p20_c50_g40_ct3)
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
	crate36 - crate
	crate37 - crate
	crate38 - crate
	crate39 - crate
	crate40 - crate
	crate41 - crate
	crate42 - crate
	crate43 - crate
	crate44 - crate
	crate45 - crate
	crate46 - crate
	crate47 - crate
	crate48 - crate
	crate49 - crate
	crate50 - crate
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
	(contains crate4 medicine)
	(available crate4)
	(at crate5 depot)
	(contains crate5 medicine)
	(available crate5)
	(at crate6 depot)
	(contains crate6 medicine)
	(available crate6)
	(at crate7 depot)
	(contains crate7 medicine)
	(available crate7)
	(at crate8 depot)
	(contains crate8 medicine)
	(available crate8)
	(at crate9 depot)
	(contains crate9 medicine)
	(available crate9)
	(at crate10 depot)
	(contains crate10 medicine)
	(available crate10)
	(at crate11 depot)
	(contains crate11 medicine)
	(available crate11)
	(at crate12 depot)
	(contains crate12 medicine)
	(available crate12)
	(at crate13 depot)
	(contains crate13 medicine)
	(available crate13)
	(at crate14 depot)
	(contains crate14 medicine)
	(available crate14)
	(at crate15 depot)
	(contains crate15 medicine)
	(available crate15)
	(at crate16 depot)
	(contains crate16 medicine)
	(available crate16)
	(at crate17 depot)
	(contains crate17 medicine)
	(available crate17)
	(at crate18 depot)
	(contains crate18 medicine)
	(available crate18)
	(at crate19 depot)
	(contains crate19 medicine)
	(available crate19)
	(at crate20 depot)
	(contains crate20 medicine)
	(available crate20)
	(at crate21 depot)
	(contains crate21 water)
	(available crate21)
	(at crate22 depot)
	(contains crate22 water)
	(available crate22)
	(at crate23 depot)
	(contains crate23 water)
	(available crate23)
	(at crate24 depot)
	(contains crate24 water)
	(available crate24)
	(at crate25 depot)
	(contains crate25 water)
	(available crate25)
	(at crate26 depot)
	(contains crate26 water)
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
	(at crate41 depot)
	(contains crate41 water)
	(available crate41)
	(at crate42 depot)
	(contains crate42 water)
	(available crate42)
	(at crate43 depot)
	(contains crate43 water)
	(available crate43)
	(at crate44 depot)
	(contains crate44 water)
	(available crate44)
	(at crate45 depot)
	(contains crate45 water)
	(available crate45)
	(at crate46 depot)
	(contains crate46 water)
	(available crate46)
	(at crate47 depot)
	(contains crate47 water)
	(available crate47)
	(at crate48 depot)
	(contains crate48 water)
	(available crate48)
	(at crate49 depot)
	(contains crate49 water)
	(available crate49)
	(at crate50 depot)
	(contains crate50 water)
	(available crate50)
	(at uav1 depot)
	(free uav1)
	(at carrier1 depot)
	(at person1 loc11)
	(at person2 loc22)
	(at person3 loc28)
	(at person4 loc4)
	(at person5 loc24)
	(at person6 loc29)
	(at person7 loc10)
	(at person8 loc17)
	(at person9 loc10)
	(at person10 loc22)
	(at person11 loc14)
	(at person12 loc11)
	(at person13 loc13)
	(at person14 loc23)
	(at person15 loc10)
	(at person16 loc18)
	(at person17 loc5)
	(at person18 loc7)
	(at person19 loc14)
	(at person20 loc22)
	(wants person1 medicine)
	(wants person1 water)
	(wants person2 water)
	(wants person3 food)
	(wants person3 medicine)
	(wants person3 water)
	(wants person4 medicine)
	(wants person4 water)
	(wants person5 medicine)
	(wants person5 water)
	(wants person6 medicine)
	(wants person6 water)
	(wants person7 medicine)
	(wants person7 water)
	(wants person8 medicine)
	(wants person8 water)
	(wants person9 medicine)
	(wants person9 water)
	(wants person10 medicine)
	(wants person10 water)
	(wants person11 medicine)
	(wants person11 water)
	(wants person12 food)
	(wants person12 medicine)
	(wants person12 water)
	(wants person13 medicine)
	(wants person13 water)
	(wants person14 medicine)
	(wants person14 water)
	(wants person15 medicine)
	(wants person15 water)
	(wants person16 medicine)
	(wants person16 water)
	(wants person17 medicine)
	(wants person17 water)
	(wants person18 medicine)
	(wants person18 water)
	(wants person19 medicine)
	(wants person19 water)
	(wants person20 water)
)
(:goal (and

	(at uav1 depot)
	(has person1 medicine)
	(has person1 water)
	(has person2 water)
	(has person3 food)
	(has person3 medicine)
	(has person3 water)
	(has person4 medicine)
	(has person4 water)
	(has person5 medicine)
	(has person5 water)
	(has person6 medicine)
	(has person6 water)
	(has person7 medicine)
	(has person7 water)
	(has person8 medicine)
	(has person8 water)
	(has person9 medicine)
	(has person9 water)
	(has person10 medicine)
	(has person10 water)
	(has person11 medicine)
	(has person11 water)
	(has person12 food)
	(has person12 medicine)
	(has person12 water)
	(has person13 medicine)
	(has person13 water)
	(has person14 medicine)
	(has person14 water)
	(has person15 medicine)
	(has person15 water)
	(has person16 medicine)
	(has person16 water)
	(has person17 medicine)
	(has person17 water)
	(has person18 medicine)
	(has person18 water)
	(has person19 medicine)
	(has person19 water)
	(has person20 water)
	))
)
