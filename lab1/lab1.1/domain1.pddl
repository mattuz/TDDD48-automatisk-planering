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

    )

    (:action LOAD-UAV
        :parameters (?c - crate ?uav - uav ?l - location)
        :precondition (and (at ?c ?l) (at ?uav ?l))
        :effect (and (carry ?uav ?c) (not(at ?c ?l)))
    )

    (:action UNLOAD-UAV
        :parameters (?uav - uav ?c - crate ?l - location)
        :precondition (and (at ?uav ?l) (carry ?uav ?c))
        :effect (and (at ?c ?l) (not(carry ?uav ?c)))
    )

    (:action FLY-UAV
        :parameters (?uav - uav ?l1 - location ?l2 - location)
        :precondition (and (at ?uav ?l1))
        :effect (and (at ?uav ?l2) (not (at ?uav ?l1)))
    )
    

    
)