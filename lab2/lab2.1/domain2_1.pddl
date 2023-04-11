(define (domain uav-domain)
    (:requirements :strips :typing)
    (:types
        person uav contents location crate carrier num - object
    )
    (:predicates
        (at ?x - object ?l - location) ;Check if an object is at a location
        (contains ?c - crate ?cont - contents) ;Crate contains a specific content type
        (carry ?uav - uav ?c - crate) ;A UAV is carrying the given crate
        (has ?p - person ?cont - contents) ;A person has the content(s) given
        (wants ?p - person ?cont - contents) ;A person wants/needs the specified content(s)
        (free ?uav - uav) ;UAV is free, meaning it is not currently carrying a crate (or anything else)
        (available ?c - crate) ;Used to check if a crate has been distributed already
        (loaded ?carrier - carrier ?c - crate)
        (next ?numA ?numB - num)
        (count ?carrier - carrier ?num - num)
        )

    ;Load the given UAV with the given crate. 
    (:action LOAD-UAV
        :parameters (?c - crate ?uav - uav ?l - location)
        :precondition (and (at ?c ?l) (at ?uav ?l)
        (free ?uav) (available ?c)
        ) 
        :effect (and (not(at ?c ?l)) (carry ?uav ?c)
        (not(free ?uav))
        )
    )

    ;Unload the UAV's crate at the given location, if it is where a person needs its contents. 
    (:action UNLOAD-UAV-TO-PERSON
        :parameters (
            ?uav - uav ?c - crate ?l - location
            ?p - person ?cont - contents
        )
        :precondition (and (at ?uav ?l) (carry ?uav ?c)
        (contains ?c ?cont) (wants ?p ?cont) (at ?p ?l)
        )
        :effect (and (at ?c ?l) (not(carry ?uav ?c))
        (not (wants ?p ?cont)) (has ?p ?cont)
        (at ?uav ?l) (free ?uav) (not(available ?c))
        )
    )

    ;Fly the UAV from one location to another. 
    (:action FLY-UAV
        :parameters (?uav - uav ?l1 - location ?l2 - location)
        :precondition (and (at ?uav ?l1))
        :effect (and (at ?uav ?l2) (not (at ?uav ?l1)))
    )
    
    (:action FLY-CARRIER
        :parameters (?uav - uav ?carrier - carrier ?l1 - location
                    ?l2 - location
        )
        :precondition (and (at ?uav ?l1) (at ?carrier ?l1)
        (free ?uav)
        )
        :effect (and (at ?uav ?l2) (not(at ?uav ?l1)) 
        (at ?carrier ?l2) (not(at ?carrier ?l1))
        )
    )

    (:action LOAD-CRATE-ON-CARRIER
        :parameters (?uav - uav ?carrier - carrier ?l - location
            ?c - crate ?from ?to - num
        )
        :precondition (and (at ?uav ?l) (at ?carrier ?l) (at ?c ?l)
        (carry ?uav ?c)
        (count ?carrier ?from) (next ?from ?to))
        :effect (and (loaded ?carrier ?c) (not (count ?carrier ?from))
        (count ?carrier ?to) (not(at ?c ?l))
        )
    )
    
    (:action TAKE-CRATE-FROM-CARRIER
        :parameters (?uav - uav ?carrier - carrier ?l - location
        ?c - crate)
        :precondition (and (at ?uav ?l) (at ?carrier ?l) 
        (loaded ?carrier ?c)
        )
        :effect (and (at ?c ?l))
    )
    
    
)