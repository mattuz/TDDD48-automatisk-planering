(define (domain uav-domain)
    (:requirements :strips :typing)
    (:types
        person uav crate contents location - object
    )
    (:predicates
        (at ?x - object ?l - location)
        (contains ?c - crate ?cont - contents)
        (carry ?uav - uav ?c - crate)
        (has ?p - person ?cont - contents)
        (wants ?p - person ?cont - contents)
        (free ?uav - uav)
    )

    (:action LOAD-UAV
        :parameters (?c - crate ?uav - uav ?l - location)
        :precondition (and (at ?c ?l) (at ?uav ?l)
        (free ?uav)
        )
        :effect (and (carry ?uav ?c) (not(at ?c ?l))
        (not(free ?uav))
        )
    )

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

    (:action FLY-UAV
        :parameters (?uav - uav ?l1 - location ?l2 - location)
        :precondition (and (at ?uav ?l1))
        :effect (and (at ?uav ?l2) (not (at ?uav ?l1)))
    )
    

    
    
)