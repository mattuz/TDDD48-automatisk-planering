(define (problem service2) (:domain emergency-services)
(:objects 
    mark ellie - person
    uav1 - uav
    c1 c2 c3 - crate
    medicine food water - contents
    l1 l2 start depot - location
)

(:init
    (at c1 depot) (at c2 depot) (at c3 depot)
    (at mark l1) (at ellie l2) (at uav1 start)
    (contains c1 medicine) (contains c2 food) (contains c3 water)
    (wants mark food) (wants ellie medicine)
)

(:goal (and
    (has mark food) (has ellie medicine)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
