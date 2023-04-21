(define (domain uav-domain)
    (:requirements :strips :typing :durative-actions :fluents)
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
        (loaded ?carrier - carrier ?c - crate) ;carrier loaded with crate c
        (next ?numA ?numB - num) ;number sematics
        (count ?carrier - carrier ?num - num) ;used for tracking crates on a carrier
        (loadable ?carrier - carrier) ;Used for concurrency with carriers
        (ready-for-delivery ?p - person) ;used for concurrency, a person can only get one crate at a time
        )
    (:functions (fly-cost ?from ?to - location) - number)
    

    ;Load the given UAV with the given crate. 
    (:durative-action LOAD-UAV
        :parameters (?c - crate ?uav - uav ?l - location)
        :duration (= ?duration 10)
        :condition (and 
            (at start(at ?c ?l)) 
            (over all (at ?uav ?l)) ;at the same location when loading
            (at start (free ?uav)) 
            (over all (available ?c))
        ) 
        :effect (and (at start(not(at ?c ?l))) 
        (at start(not(free ?uav))) 
        (at end (carry ?uav ?c))
        )
    )

    ;Unload the UAV's crate at the given location, if it is where a person needs its contents. 
    (:durative-action UNLOAD-UAV-TO-PERSON
        :parameters (
            ?uav - uav ?c - crate ?l - location
            ?p - person ?cont - contents
        )
        :duration (= ?duration 10)
        :condition (and 
            (over all(at ?uav ?l)) 
            (at start(carry ?uav ?c))
            (at start(ready-for-delivery ?p))
            (over all(contains ?c ?cont)) 
            (over all(wants ?p ?cont)) 
            (over all(at ?p ?l))
        )
        :effect (and 
            (at start(not(available ?c)))
            (at start(not(carry ?uav ?c)))
            (at start(not(ready-for-delivery ?p)))
            (at end (ready-for-delivery ?p))
            (at end(not (wants ?p ?cont))) 
            (at end(has ?p ?cont))
            (at end(at ?uav ?l)) ;might not be necessary
            (at end(free ?uav)) 
            (at end(at ?c ?l)) 
        )
    )

    ;Fly the UAV from one location to another. 
    (:durative-action FLY-UAV
        :parameters (?uav - uav ?l1 - location ?l2 - location
            
        )
        :duration (= ?duration (fly-cost ?l1 ?l2))
        :condition (and 
            (at start(at ?uav ?l1)))
        :effect (and 
            (at start(not (at ?uav ?l1)))
            (at end(at ?uav ?l2)) 
            ;should mby add "between l1 l2" for concurrency reasons?
        )
    )
    
    (:durative-action FLY-CARRIER
        :parameters (?uav - uav ?carrier - carrier ?l1 - location
                    ?l2 - location
        )
        :duration (= ?duration (fly-cost ?l1 ?l2))
        :condition (and 
            (at start(at ?uav ?l1)) 
            (at start(at ?carrier ?l1))
            (over all(free ?uav))
        )
        :effect (and 
            (at start(not(at ?carrier ?l1)))
            (at start(not(at ?uav ?l1))) 
            (at end(at ?uav ?l2)) 
            (at end(at ?carrier ?l2)) 
        )
    )

    (:durative-action LOAD-CRATE-ON-CARRIER
        :parameters (?uav - uav ?carrier - carrier ?l - location
            ?c - crate ?from - num ?to - num
        )
        :duration (= ?duration 10)
        :condition (and 
            (over all(at ?uav ?l)) 
            (over all(at ?carrier ?l))
            (at start(carry ?uav ?c)) 
            (at start(count ?carrier ?from)) 
            (at start(next ?from ?to))
            (at start(loadable ?carrier))
        )
        :effect (and 
            (at start(count ?carrier ?to)) 
            (at start(not(loadable ?carrier)))
            (at start(not (count ?carrier ?from)))
            (at end(loaded ?carrier ?c)) 
            (at end(not (carry ?uav ?c)))
            (at end(free ?uav))
            (at end(loadable ?carrier))
        )
    )
    
    (:durative-action TAKE-CRATE-FROM-CARRIER
        :parameters (?uav - uav ?carrier - carrier ?l - location
            ?c - crate
        )
        :duration (= ?duration 10)
        :condition (and 
            (over all(at ?uav ?l)) 
            (over all(at ?carrier ?l))
            (at start(loaded ?carrier ?c)) 
            (at start(free ?uav))
        )
        :effect (and 
            (at start(not(loaded ?carrier ?c))) 
            (at start(carry ?uav ?c))
            (at start(not (free ?uav)))
        )
    )
)