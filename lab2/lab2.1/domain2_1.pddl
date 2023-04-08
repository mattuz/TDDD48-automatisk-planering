(define (domain uav-domain)
    (:requirements :strips :typing)
    (:types
        num
        crate carrier - carriable
        person uav contents location carriable - object
        ;Is it possible to have carriable objects within object type?
    )
    (:predicates
        (at ?x - object ?l - location) ;Check if an object is at a location
        (contains ?c - crate ?cont - contents) ;Crate contains a specific content type
        (carry ?uav - uav ?c - carriable) ;A UAV is carrying the given crate
        (has ?p - person ?cont - contents) ;A person has the content(s) given
        (wants ?p - person ?cont - contents) ;A person wants/needs the specified content(s)
        (free ?uav - uav) ;UAV is free, meaning it is not currently carrying a crate (or anything else)
        (loaded ?carrier - carrier ?c - crate)
        (next ?numA ?numB - num)
        (count ?num - num)
        )

    ;Load the given UAV with the given crate. 
    (:action LOAD-UAV
        :parameters (?c - carriable ?uav - uav ?l - location)
        :precondition (and (at ?c ?l) (at ?uav ?l)
        (free ?uav)
        ) 
        :effect (and (carry ?uav ?c) (not(at ?c ?l))
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
        (at ?uav ?l) (free ?uav)
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
        :precondition (and (at ?uav ?l1) (carry ?uav ?carrier))
        :effect (and (at ?uav ?l2) (not(at ?uav ?l1)))
    )
    
    (:action RELEASE-CARRIER
        :parameters (?uav - uav ?carrier - carrier ?l - location)
        :precondition (and (carry ?uav ?carrier) (at ?uav ?l))
        :effect (and (not(carry ?uav ?carrier) (free ?uav)
        (at ?uav ?l) (at ?carrier ?l)))
    )

    (:action LOAD-CRATE-ON-CARRIER
        :parameters (?uav - uav ?carrier - carrier ?l - location
            ?c - crate
        )
        :precondition (and (at ?uav ?l) (at ?carrier ?l) (at ?c ?l)
        (free ?uav))
        :effect (and (loaded ?carrier ?c))
    )
    
    (:action TAKE-CRATE-FROM-CARRIER
        :parameters ()
        :precondition (and )
        :effect (and )
    )
    
    
)