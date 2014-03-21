(slide
  (t "PART I : PARAMETRICITY"))

;; (slide #:title "What is a Type?"
;;   (item "Traditional notion: A type is a set.")
;;   'next
;;   (subitem (bt "Whitehead & Russell (1925): ") "A type is a" (it "collection") "of objects having a similar structure.")
;;   'next
;;   (subitem (bt "Pierce: ") "A type system is a tractable syntactic method for proving the absence of certain program behaviors by classifying phrases according to the kinds of values they compute."))
;;   ;; http://mathgate.info/cebrown/notes/reynolds89.php
;;   ;; (subitem "types are sets of equivalence classes of partial equivalence relations on a model of the untyped lambda calculus")
;;   ;; (subitem "types are Scott domains")

(slide #:title "Parametricity"
  (para "A type is a" (it "relation") "."))

(slide #:title "Parametricity"
  (it "Types, Abstraction, and Parametric Polymorphism")
  (para #:align 'right (it "Reynolds (1983)"))
  'next
  (item "A type is a syntactic discipline for manipulating levels of abstraction.")
  'next
  (item "The meaning of a type is independent of its underlying representation.")
  'next
  (item (it "Parametricity") "leverages the idea of types as relations to gain insight about the underlying structure."))

;; Reynold's original paper used "invariance properties" in math as motivation
(slide #:title "Invariance Properties"
  (t "Storytime! Prof. Descartes & Prof. Bessel.")
  (para "Lesson: types are an abstraction that can be realized or represented by a variety of sets."))

(slide #:title "Parametricity: Aside"
  (para "Note that there are two main variants of polymorphism.")
  'next
  (item "Under" (it "ad hoc") "polymorphism, one function may have different meanings for different types.")
  'next
  (subitem "Example: overriden methods.")
  'next
  (item (it "Parametric") "polymorphism gives one meaning, independent of specific argument type.")
  'next
  (item "We only care about" (it "parametric") "polymorphism")
  'next
  (it "\"I am convinced that a satisfactory model should exclude ad hoc polymorphism.\"")
  (para #:align 'right "John C. Reynolds"))

(slide #:title "Application: Theorems for Free"
   (para "Wadler (1989) shows how to derive invariance properties (a.k.a. free theorems) from type signatures")
   'next
   (item "Examples: "
          (subitem (tt "map (lambda x . x + 1) (rev xs) = rev (map (lambda x . x + 1) xs)"))
          (subitem (tt "filter (lambda x . (x % 2) = 0) (sort xs) = (sort (filter (lambda x . (x % 2) = 0) xs))")))
   'next
   (para "Polymorphic functions manipulate arguments independent of their underlying data representation."))

(slide #:title "Application: Theorems for Free"
   ;; pretend it wasn't called 'map', pretend it had a different name
   (tt "map : (α → β) → α list → β list")
      ;; (subitem (code "filter : ('a \rightarrow bool) \rightarrow 'a list \rightarrow 'a list"))
      ;; (subitem (code "sort : ('a \rightarrow int) \rightarrow 'a list \rightarrow 'a list"))
   'next
   (para "\"Intuitively, you know that map is the only interesting function of this type: that all others must be rearranging functions composed with map.\"")
   (para #:align 'right "Wadler (1989)")
   'next
   (item (tt "rev : α list → α list"))
   'next
   (item (tt "cdr : α list → α list"))
   'next
   (item (tt "id* : α list → α list"))
   'next
   (para "For any of the above functions" (code "f") ", " (code "map ∘ f = f ∘ map")))

(slide #:title "Application: Theorems for Free"
   (para "Results like these do not apply to arbitrary functions.")
   'next
   (para "Wadler gives the example:")
   'next
   (tt "succ* (evens [1,2,3]) =") 'next (tt "[3]")
   'next
   (tt "evens (succ* [1,2,3]) =") 'next (tt "[2,4]")
   'next
   (para "These functions are" (it "too specific")"."
         "The signature" (code "int list → int list") "is not general enough for parametricity to apply."))

(slide #:title "Application: Theorems for Free"
   (para (bt "Bottom line: ") "functions with related types have related values."))
