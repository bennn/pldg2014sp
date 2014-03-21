(slide (t "PART II: PHYSICAL SYSTEMS"))

(slide #:title "Invariance Properties"
   (item "Parametricity is not a new idea.")
   'next
   (item "Invariance properties appear in more than just software systems!")
   'next
   (item (it "Physical") "systems are characterized by their own invariance properties"))

(slide #:title "Invariance Properties"
   (para "Example: points on a plane.") ; this could be the title
   'next
   (frame (para (todo "<insert graph, animate with vector>")))
   'next
   (item "Distance between these points is a vector.") ; aka relationship
)

(slide #:title "Invariance Properties"
   (frame (para (todo "<insert vector>")))
   (item "This vector is independent of the underlying coordinate system!")
   'next
   (subitem "Invariant under translation of the points (provided both are acted on simultaneously).")
   'next
   (subitem "Invariant under change of coordinate plane (could be cartesian, complex, polar, etc.).")
   'next
   (item "Distance is a" (it "relationship") "between points, independent of the particles' position."))
   
;; "Conservation of Energy")
(slide #:title "Invariance Properties"
   ; explain how pendulum works conversationally. Kinetic -> Potential -> Kinetic ...
   (para "Example: pendulum")
   (frame (para (todo "<insert pendulum, swinging vigorously>")))
   (para "Total energy of the system is conserved.")
   'next
   ; Just like the distance between points on a plane, the energy of the pendulum is invariant of the coordinates
   (para "Energy is" (it "invariant") "of the position of the pendulum."))

(slide #:title "Invariance Properties"
   (para "Why does this work?")
   'next
   (item "Physics!")
   'next
   ; We can characterize the system with equations
   (item (todo "<energy equation>"))
   'next
   ; more generally, the lagrangian of a system (any system) describes it nicely
   (item (todo "<lagrangian>")))

(slide #:title "Noether's Theorem"
    ; in particular, we care about Noether's work in physics. He stepped back and noticed what's common here.
   (para "Logician Emmy Noether identified and characterized invariances in physical systems.")
   'next
   (para (todo "<noether's first theorem>"))
   'next
   (para "Any differentiable symmetry of the action of a physical system has a corresponding conservation law."))
