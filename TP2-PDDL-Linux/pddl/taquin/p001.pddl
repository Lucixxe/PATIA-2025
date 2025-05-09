(define (problem taquin-test-1)
  (:domain taquin)

  (:objects
    t1 t2 t3 t4 t5 t6 t7 t8 - tile
    p11 p12 p13
    p21 p22 p23
    p31 p32 p33 - position
  )

  (:init
    ;; Tuiles positionnées
    (at t1 p11)
    (at t2 p12)
    (at t3 p13)
    (at t4 p21)
    (at t5 p22)
    (at t6 p23)
    (at t7 p31)
    (at t8 p32)

    ;; Le trou (case vide) en bas à droite
    (blank p33)

    ;; Adjacence horizontale
    (adjacent p11 p12) (adjacent p12 p11)
    (adjacent p12 p13) (adjacent p13 p12)
    (adjacent p21 p22) (adjacent p22 p21)
    (adjacent p22 p23) (adjacent p23 p22)
    (adjacent p31 p32) (adjacent p32 p31)
    (adjacent p32 p33) (adjacent p33 p32)

    ;; Adjacence verticale
    (adjacent p11 p21) (adjacent p21 p11)
    (adjacent p21 p31) (adjacent p31 p21)
    (adjacent p12 p22) (adjacent p22 p12)
    (adjacent p22 p32) (adjacent p32 p22)
    (adjacent p13 p23) (adjacent p23 p13)
    (adjacent p23 p33) (adjacent p33 p23)
  )

  (:goal
    (and
      (at t1 p11)
      (at t2 p12)
      (at t3 p13)
      (at t4 p21)
      (at t5 p22)
      (at t6 p23)
      (at t7 p31)
      (at t8 p32)
      (blank p33)
    )
  )
)