(define (problem service1) 
    (:domain emergency-services)
(:objects 
    p1 - person 
    uav1 - uav 
    c - crate 
    food - contents
    start l1 depot - location
)

(:init
    (wants p1 food) (at c depot) (at uav1 start)
    (at p1 l1) (contains c food) (free uav1)
)

(:goal (and
    (has p1 food)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
