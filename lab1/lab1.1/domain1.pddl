(define (domain emergency-services)
    (:requirements :strips :typing)
    (:types
        person uav crate contents location - obj
    )
    (:predicates
        (at ?x - obj ?l - location)
        (contains ?c - crate ?cont - contents)
        (carry ?uav - uav ?c - crate)
        (has ?p - person ?cont - contents)
        (wants ?p - person ?cont - contents)
    )

    (:action LOAD-UAV
        :parameters (?c - crate ?uav - uav ?l - location)
        :precondition (and (at ?c ?l) (at ?uav ?l))
        :effect (and (carry ?uav ?c) (not(at ?c ?l)))
    )

    (:action UNLOAD-UAV-TO-PERSON
        :parameters (
            ?uav - uav ?c - crate ?l - location
            ?p - person ?cont - contents
        )
        :precondition (and (at ?uav ?l) (carry ?uav ?c)
        (contains ?c ?cont) (wants ?p ?cont))
        :effect (and (at ?c ?l) (not(carry ?uav ?c))
        (not (wants ?p ?cont)) (has ?p ?cont)
        )
    )

    (:action FLY-UAV
        :parameters (?uav - uav ?l1 - location ?l2 - location)
        :precondition (and (at ?uav ?l1))
        :effect (and (at ?uav ?l2) (not (at ?uav ?l1)))
    )
    

    
    
)