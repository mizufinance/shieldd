import Mathlib.Tactic.LinearCombination

/-!
Deliberately-broken certificate: the tactic cannot close this (false) goal, so
the harness must report FAIL FAST (well under the leaf budget), proving a bad
cert diagnoses quickly instead of grinding. It imports only the tactic substrate,
so the self-test measures tactic-level fast-fail rather than Seg16 import RSS. `sorry`-free
(a wrong `linear_combination`, not an admit).  Lives OUTSIDE the
`ShielddGnarkFormal` lib tree so the package build never sees it.
-/

example (x : Int) : x = x + 1 := by linear_combination
