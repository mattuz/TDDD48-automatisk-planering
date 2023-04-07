(define (domain uav-domain)
    (:requirements :strips :typing)
    (:types
        person uav crate contents location - object
    )
    (:predicates
        (at ?x - object ?l - location) ;Check if an object is at a location
        (contains ?c - crate ?cont - contents) ;Crate contains a specific content type
        (carry ?uav - uav ?c - crate) ;A UAV is carrying the given crate
        (has ?p - person ?cont - contents) ;A person has the content(s) given
        (wants ?p - person ?cont - contents) ;A person wants/needs the specified content(s)
        (free ?uav - uav) ;UAV is free, meaning it is not currently carrying a crate (or anything else)
    )

    ;Load the given UAV with the given crate. 
    (:action LOAD-UAV
        :parameters (?c - crate ?uav - uav ?l - location)
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
    

    
    
)