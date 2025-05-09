(define (problem hanoi-3disks)
  (:domain hanoi)

  (:objects
    d1 d2 d3 - disk
    peg1 peg2 peg3 - peg
  )

  (:init
    (on d1 peg1)
    (top d1)
    (top-disk peg1 d1)
    (clear peg2)
    (clear peg3)
  )

  (:goal
    (on d1 peg3)
  )
)