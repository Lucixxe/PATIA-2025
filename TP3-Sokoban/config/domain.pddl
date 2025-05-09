(define (domain sokoban)
  (:requirements :strips :typing)

  (:types
    agent box position
  )

  (:predicates
    (at ?x - (either agent box) ?p - position)
    (floor ?p - position)
    (goal ?p - position)
    (adjacent ?p1 - position ?p2 - position)
  )

  (:action move
    :parameters (?a - agent ?from - position ?to - position)
    :precondition (and
      (at ?a ?from)
      (adjacent ?from ?to)
      (floor ?to)
    )
    :effect (and
      (not (at ?a ?from))
      (at ?a ?to)
    )
  )

  (:action push
    :parameters (?a - agent ?b - box ?from - position ?to - position ?next - position)
    :precondition (and
      (at ?a ?from)
      (at ?b ?to)
      (adjacent ?from ?to)
      (adjacent ?to ?next)
      (floor ?next)
    )
    :effect (and
      (not (at ?a ?from))
      (not (at ?b ?to))
      (at ?a ?to)
      (at ?b ?next)
    )
  )
)