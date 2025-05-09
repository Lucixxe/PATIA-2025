(define (domain taquin)
  (:requirements :strips :typing)

  (:types
    tile position
  )

  (:predicates
    (at ?t - tile ?p - position)       ; la tuile t est à la position p
    (blank ?p - position)              ; le trou est à la position p
    (adjacent ?p1 - position ?p2 - position) ; p1 est adjacente à p2
  )

  ;; Action générique : échanger une tuile avec le trou
  (:action move
    :parameters (?t - tile ?from - position ?to - position)
    :precondition (and
      (at ?t ?from)
      (blank ?to)
      (adjacent ?from ?to)
    )
    :effect (and
      (not (at ?t ?from))
      (at ?t ?to)
      (not (blank ?to))
      (blank ?from)
    )
  )
)