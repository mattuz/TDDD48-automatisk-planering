(define (problem uav_problem_u1_r1_l7_p7_c8_g7_ct3)
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
	(= (fly-cost depot loc1) 191)
	(= (fly-cost depot loc2) 95)
	(= (fly-cost depot loc3) 69)
	(= (fly-cost depot loc4) 191)
	(= (fly-cost depot loc5) 258)
	(= (fly-cost depot loc6) 142)
	(= (fly-cost depot loc7) 188)
	(= (fly-cost loc1 depot) 191)
	(= (fly-cost loc1 loc1) 1)
	(= (fly-cost loc1 loc2) 143)
	(= (fly-cost loc1 loc3) 163)
	(= (fly-cost loc1 loc4) 245)
	(= (fly-cost loc1 loc5) 168)
	(= (fly-cost loc1 loc6) 214)
	(= (fly-cost loc1 loc7) 167)
	(= (fly-cost loc2 depot) 95)
	(= (fly-cost loc2 loc1) 143)
	(= (fly-cost loc2 loc2) 1)
	(= (fly-cost loc2 loc3) 30)
	(= (fly-cost loc2 loc4) 124)
	(= (fly-cost loc2 loc5) 164)
	(= (fly-cost loc2 loc6) 80)
	(= (fly-cost loc2 loc7) 94)
	(= (fly-cost loc3 depot) 69)
	(= (fly-cost loc3 loc1) 163)
	(= (fly-cost loc3 loc2) 30)
	(= (fly-cost loc3 loc3) 1)
	(= (fly-cost loc3 loc4) 132)
	(= (fly-cost loc3 loc5) 193)
	(= (fly-cost loc3 loc6) 84)
	(= (fly-cost loc3 loc7) 120)
	(= (fly-cost loc4 depot) 191)
	(= (fly-cost loc4 loc1) 245)
	(= (fly-cost loc4 loc2) 124)
	(= (fly-cost loc4 loc3) 132)
	(= (fly-cost loc4 loc4) 1)
	(= (fly-cost loc4 loc5) 164)
	(= (fly-cost loc4 loc6) 50)
	(= (fly-cost loc4 loc7) 90)
	(= (fly-cost loc5 depot) 258)
	(= (fly-cost loc5 loc1) 168)
	(= (fly-cost loc5 loc2) 164)
	(= (fly-cost loc5 loc3) 193)
	(= (fly-cost loc5 loc4) 164)
	(= (fly-cost loc5 loc5) 1)
	(= (fly-cost loc5 loc6) 171)
	(= (fly-cost loc5 loc7) 84)
	(= (fly-cost loc6 depot) 142)
	(= (fly-cost loc6 loc1) 214)
	(= (fly-cost loc6 loc2) 80)
	(= (fly-cost loc6 loc3) 84)
	(= (fly-cost loc6 loc4) 50)
	(= (fly-cost loc6 loc5) 171)
	(= (fly-cost loc6 loc6) 1)
	(= (fly-cost loc6 loc7) 87)
	(= (fly-cost loc7 depot) 188)
	(= (fly-cost loc7 loc1) 167)
	(= (fly-cost loc7 loc2) 94)
	(= (fly-cost loc7 loc3) 120)
	(= (fly-cost loc7 loc4) 90)
	(= (fly-cost loc7 loc5) 84)
	(= (fly-cost loc7 loc6) 87)
	(= (fly-cost loc7 loc7) 1)
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
	(contains crate7 medicine)
	(available crate7)
	(at crate8 depot)
	(contains crate8 water)
	(available crate8)
	(at uav1 depot)
	(free uav1)
	(at carrier1 depot)
	(count carrier1 n1)
	(at person1 loc3)
	(at person2 loc3)
	(at person3 loc2)
	(at person4 loc2)
	(at person5 loc7)
	(at person6 loc3)
	(at person7 loc1)
	(wants person1 food)
	(wants person2 water)
	(wants person3 food)
	(wants person4 food)
	(wants person5 food)
	(wants person6 medicine)
	(wants person7 food)
)
(:goal (and

	(at uav1 depot)
	(has person1 food)
	(has person2 water)
	(has person3 food)
	(has person4 food)
	(has person5 food)
	(has person6 medicine)
	(has person7 food)
	))
(:metric minimize (total-cost))
)
