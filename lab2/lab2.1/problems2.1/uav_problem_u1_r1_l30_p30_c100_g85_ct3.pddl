(define (problem uav_problem_u1_r1_l30_p30_c100_g85_ct3)
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
	crate51 - crate
	crate52 - crate
	crate53 - crate
	crate54 - crate
	crate55 - crate
	crate56 - crate
	crate57 - crate
	crate58 - crate
	crate59 - crate
	crate60 - crate
	crate61 - crate
	crate62 - crate
	crate63 - crate
	crate64 - crate
	crate65 - crate
	crate66 - crate
	crate67 - crate
	crate68 - crate
	crate69 - crate
	crate70 - crate
	crate71 - crate
	crate72 - crate
	crate73 - crate
	crate74 - crate
	crate75 - crate
	crate76 - crate
	crate77 - crate
	crate78 - crate
	crate79 - crate
	crate80 - crate
	crate81 - crate
	crate82 - crate
	crate83 - crate
	crate84 - crate
	crate85 - crate
	crate86 - crate
	crate87 - crate
	crate88 - crate
	crate89 - crate
	crate90 - crate
	crate91 - crate
	crate92 - crate
	crate93 - crate
	crate94 - crate
	crate95 - crate
	crate96 - crate
	crate97 - crate
	crate98 - crate
	crate99 - crate
	crate100 - crate
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
	person21 - person
	person22 - person
	person23 - person
	person24 - person
	person25 - person
	person26 - person
	person27 - person
	person28 - person
	person29 - person
	person30 - person
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
	(contains crate19 food)
	(available crate19)
	(at crate20 depot)
	(contains crate20 food)
	(available crate20)
	(at crate21 depot)
	(contains crate21 food)
	(available crate21)
	(at crate22 depot)
	(contains crate22 food)
	(available crate22)
	(at crate23 depot)
	(contains crate23 food)
	(available crate23)
	(at crate24 depot)
	(contains crate24 food)
	(available crate24)
	(at crate25 depot)
	(contains crate25 food)
	(available crate25)
	(at crate26 depot)
	(contains crate26 food)
	(available crate26)
	(at crate27 depot)
	(contains crate27 food)
	(available crate27)
	(at crate28 depot)
	(contains crate28 food)
	(available crate28)
	(at crate29 depot)
	(contains crate29 food)
	(available crate29)
	(at crate30 depot)
	(contains crate30 food)
	(available crate30)
	(at crate31 depot)
	(contains crate31 medicine)
	(available crate31)
	(at crate32 depot)
	(contains crate32 medicine)
	(available crate32)
	(at crate33 depot)
	(contains crate33 medicine)
	(available crate33)
	(at crate34 depot)
	(contains crate34 medicine)
	(available crate34)
	(at crate35 depot)
	(contains crate35 medicine)
	(available crate35)
	(at crate36 depot)
	(contains crate36 medicine)
	(available crate36)
	(at crate37 depot)
	(contains crate37 medicine)
	(available crate37)
	(at crate38 depot)
	(contains crate38 medicine)
	(available crate38)
	(at crate39 depot)
	(contains crate39 medicine)
	(available crate39)
	(at crate40 depot)
	(contains crate40 medicine)
	(available crate40)
	(at crate41 depot)
	(contains crate41 medicine)
	(available crate41)
	(at crate42 depot)
	(contains crate42 medicine)
	(available crate42)
	(at crate43 depot)
	(contains crate43 medicine)
	(available crate43)
	(at crate44 depot)
	(contains crate44 medicine)
	(available crate44)
	(at crate45 depot)
	(contains crate45 medicine)
	(available crate45)
	(at crate46 depot)
	(contains crate46 medicine)
	(available crate46)
	(at crate47 depot)
	(contains crate47 medicine)
	(available crate47)
	(at crate48 depot)
	(contains crate48 medicine)
	(available crate48)
	(at crate49 depot)
	(contains crate49 medicine)
	(available crate49)
	(at crate50 depot)
	(contains crate50 medicine)
	(available crate50)
	(at crate51 depot)
	(contains crate51 medicine)
	(available crate51)
	(at crate52 depot)
	(contains crate52 medicine)
	(available crate52)
	(at crate53 depot)
	(contains crate53 medicine)
	(available crate53)
	(at crate54 depot)
	(contains crate54 medicine)
	(available crate54)
	(at crate55 depot)
	(contains crate55 medicine)
	(available crate55)
	(at crate56 depot)
	(contains crate56 medicine)
	(available crate56)
	(at crate57 depot)
	(contains crate57 medicine)
	(available crate57)
	(at crate58 depot)
	(contains crate58 medicine)
	(available crate58)
	(at crate59 depot)
	(contains crate59 medicine)
	(available crate59)
	(at crate60 depot)
	(contains crate60 medicine)
	(available crate60)
	(at crate61 depot)
	(contains crate61 medicine)
	(available crate61)
	(at crate62 depot)
	(contains crate62 medicine)
	(available crate62)
	(at crate63 depot)
	(contains crate63 medicine)
	(available crate63)
	(at crate64 depot)
	(contains crate64 medicine)
	(available crate64)
	(at crate65 depot)
	(contains crate65 medicine)
	(available crate65)
	(at crate66 depot)
	(contains crate66 medicine)
	(available crate66)
	(at crate67 depot)
	(contains crate67 medicine)
	(available crate67)
	(at crate68 depot)
	(contains crate68 medicine)
	(available crate68)
	(at crate69 depot)
	(contains crate69 water)
	(available crate69)
	(at crate70 depot)
	(contains crate70 water)
	(available crate70)
	(at crate71 depot)
	(contains crate71 water)
	(available crate71)
	(at crate72 depot)
	(contains crate72 water)
	(available crate72)
	(at crate73 depot)
	(contains crate73 water)
	(available crate73)
	(at crate74 depot)
	(contains crate74 water)
	(available crate74)
	(at crate75 depot)
	(contains crate75 water)
	(available crate75)
	(at crate76 depot)
	(contains crate76 water)
	(available crate76)
	(at crate77 depot)
	(contains crate77 water)
	(available crate77)
	(at crate78 depot)
	(contains crate78 water)
	(available crate78)
	(at crate79 depot)
	(contains crate79 water)
	(available crate79)
	(at crate80 depot)
	(contains crate80 water)
	(available crate80)
	(at crate81 depot)
	(contains crate81 water)
	(available crate81)
	(at crate82 depot)
	(contains crate82 water)
	(available crate82)
	(at crate83 depot)
	(contains crate83 water)
	(available crate83)
	(at crate84 depot)
	(contains crate84 water)
	(available crate84)
	(at crate85 depot)
	(contains crate85 water)
	(available crate85)
	(at crate86 depot)
	(contains crate86 water)
	(available crate86)
	(at crate87 depot)
	(contains crate87 water)
	(available crate87)
	(at crate88 depot)
	(contains crate88 water)
	(available crate88)
	(at crate89 depot)
	(contains crate89 water)
	(available crate89)
	(at crate90 depot)
	(contains crate90 water)
	(available crate90)
	(at crate91 depot)
	(contains crate91 water)
	(available crate91)
	(at crate92 depot)
	(contains crate92 water)
	(available crate92)
	(at crate93 depot)
	(contains crate93 water)
	(available crate93)
	(at crate94 depot)
	(contains crate94 water)
	(available crate94)
	(at crate95 depot)
	(contains crate95 water)
	(available crate95)
	(at crate96 depot)
	(contains crate96 water)
	(available crate96)
	(at crate97 depot)
	(contains crate97 water)
	(available crate97)
	(at crate98 depot)
	(contains crate98 water)
	(available crate98)
	(at crate99 depot)
	(contains crate99 water)
	(available crate99)
	(at crate100 depot)
	(contains crate100 water)
	(available crate100)
	(at uav1 depot)
	(free uav1)
	(at carrier1 depot)
	(at person1 loc15)
	(at person2 loc14)
	(at person3 loc2)
	(at person4 loc7)
	(at person5 loc27)
	(at person6 loc14)
	(at person7 loc13)
	(at person8 loc29)
	(at person9 loc25)
	(at person10 loc19)
	(at person11 loc23)
	(at person12 loc1)
	(at person13 loc28)
	(at person14 loc29)
	(at person15 loc25)
	(at person16 loc19)
	(at person17 loc13)
	(at person18 loc16)
	(at person19 loc1)
	(at person20 loc12)
	(at person21 loc10)
	(at person22 loc25)
	(at person23 loc13)
	(at person24 loc28)
	(at person25 loc29)
	(at person26 loc27)
	(at person27 loc14)
	(at person28 loc18)
	(at person29 loc24)
	(at person30 loc24)
	(wants person1 food)
	(wants person1 medicine)
	(wants person1 water)
	(wants person2 food)
	(wants person2 water)
	(wants person3 food)
	(wants person3 medicine)
	(wants person3 water)
	(wants person4 food)
	(wants person4 medicine)
	(wants person4 water)
	(wants person5 food)
	(wants person5 medicine)
	(wants person5 water)
	(wants person6 food)
	(wants person6 medicine)
	(wants person6 water)
	(wants person7 food)
	(wants person7 medicine)
	(wants person7 water)
	(wants person8 food)
	(wants person8 medicine)
	(wants person8 water)
	(wants person9 food)
	(wants person9 medicine)
	(wants person9 water)
	(wants person10 medicine)
	(wants person10 water)
	(wants person11 food)
	(wants person11 medicine)
	(wants person11 water)
	(wants person12 food)
	(wants person12 medicine)
	(wants person12 water)
	(wants person13 food)
	(wants person13 medicine)
	(wants person13 water)
	(wants person14 food)
	(wants person14 medicine)
	(wants person14 water)
	(wants person15 food)
	(wants person15 medicine)
	(wants person15 water)
	(wants person16 food)
	(wants person16 medicine)
	(wants person16 water)
	(wants person17 food)
	(wants person17 medicine)
	(wants person17 water)
	(wants person18 food)
	(wants person18 water)
	(wants person19 food)
	(wants person19 medicine)
	(wants person19 water)
	(wants person20 food)
	(wants person20 medicine)
	(wants person20 water)
	(wants person21 medicine)
	(wants person21 water)
	(wants person22 food)
	(wants person22 medicine)
	(wants person22 water)
	(wants person23 food)
	(wants person23 medicine)
	(wants person23 water)
	(wants person24 medicine)
	(wants person24 water)
	(wants person25 food)
	(wants person25 medicine)
	(wants person25 water)
	(wants person26 food)
	(wants person26 medicine)
	(wants person26 water)
	(wants person27 food)
	(wants person27 medicine)
	(wants person27 water)
	(wants person28 food)
	(wants person28 medicine)
	(wants person28 water)
	(wants person29 food)
	(wants person29 medicine)
	(wants person29 water)
	(wants person30 food)
	(wants person30 medicine)
	(wants person30 water)
)
(:goal (and

	(at uav1 depot)
	(has person1 food)
	(has person1 medicine)
	(has person1 water)
	(has person2 food)
	(has person2 water)
	(has person3 food)
	(has person3 medicine)
	(has person3 water)
	(has person4 food)
	(has person4 medicine)
	(has person4 water)
	(has person5 food)
	(has person5 medicine)
	(has person5 water)
	(has person6 food)
	(has person6 medicine)
	(has person6 water)
	(has person7 food)
	(has person7 medicine)
	(has person7 water)
	(has person8 food)
	(has person8 medicine)
	(has person8 water)
	(has person9 food)
	(has person9 medicine)
	(has person9 water)
	(has person10 medicine)
	(has person10 water)
	(has person11 food)
	(has person11 medicine)
	(has person11 water)
	(has person12 food)
	(has person12 medicine)
	(has person12 water)
	(has person13 food)
	(has person13 medicine)
	(has person13 water)
	(has person14 food)
	(has person14 medicine)
	(has person14 water)
	(has person15 food)
	(has person15 medicine)
	(has person15 water)
	(has person16 food)
	(has person16 medicine)
	(has person16 water)
	(has person17 food)
	(has person17 medicine)
	(has person17 water)
	(has person18 food)
	(has person18 water)
	(has person19 food)
	(has person19 medicine)
	(has person19 water)
	(has person20 food)
	(has person20 medicine)
	(has person20 water)
	(has person21 medicine)
	(has person21 water)
	(has person22 food)
	(has person22 medicine)
	(has person22 water)
	(has person23 food)
	(has person23 medicine)
	(has person23 water)
	(has person24 medicine)
	(has person24 water)
	(has person25 food)
	(has person25 medicine)
	(has person25 water)
	(has person26 food)
	(has person26 medicine)
	(has person26 water)
	(has person27 food)
	(has person27 medicine)
	(has person27 water)
	(has person28 food)
	(has person28 medicine)
	(has person28 water)
	(has person29 food)
	(has person29 medicine)
	(has person29 water)
	(has person30 food)
	(has person30 medicine)
	(has person30 water)
	))
)
