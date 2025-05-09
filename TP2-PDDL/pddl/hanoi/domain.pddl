(define (domain hanoi)
  (:requirements :strips :typing)

  (:types
    disk peg
  )

  (:predicates
    (on ?d - disk ?p - peg)
    (top ?d - disk)
    (smaller ?d1 - disk ?d2 - disk)
    (clear ?p - peg)
    (top-disk ?p - peg ?d - disk)
  )

  ;; Déplacer un disque vers un piquet vide
  (:action move-to-empty
    :parameters (?d - disk ?from - peg ?to - peg)
    :precondition (and
      (on ?d ?from)
      (top ?d)
      (top-disk ?from ?d)
      (clear ?to)
    )
    :effect (and
      (not (on ?d ?from))
      (on ?d ?to)
      (top-disk ?to ?d)
      (clear ?from)
      (not (top-disk ?from ?d))
      (not (clear ?to))
    )
  )

  ;; Déplacer un disque vers un piquet avec un disque plus grand au sommet
  (:action move-on-bigger
    :parameters (?d - disk ?from - peg ?to - peg ?dtop - disk)
    :precondition (and
      (on ?d ?from)
      (top ?d)
      (top-disk ?from ?d)
      (top-disk ?to ?dtop)
      (smaller ?d ?dtop)
    )
    :effect (and
      (not (on ?d ?from))
      (on ?d ?to)
      (top-disk ?to ?d)
      (clear ?from)
      (not (top-disk ?from ?d))
    )
  )
)