import Mathlib.Algebra.Ring.Defs
import ShielddGnarkFormal.StructuredLC

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9

variable {F : Type} [CommRing F]

def relationSegment0 (rho : Nat -> F) (k : Prop) : Prop :=
    ((1 : F)) * ((1 : F) * rho 1) = ((0 : F)) ∧
    ((1 : F) * rho 1) * ((1 : F) + (-1 : F) * rho 2) = ((1 : F) * rho 3) ∧
    ((1 : F)) * ((1 : F) * rho 3) = ((0 : F)) ∧
    ((1 : F) * rho 2) * ((1 : F) + (-1 : F) * rho 4) = ((1 : F) * rho 5) ∧
    ((1 : F)) * ((1 : F) * rho 5) = ((0 : F)) ∧
    ((1 : F) * rho 4) * ((1 : F) + (-1 : F) * rho 6) = ((1 : F) * rho 7) ∧
    ((1 : F)) * ((1 : F) * rho 7) = ((0 : F)) ∧
    ((1 : F) * rho 6) * ((1 : F) + (-1 : F) * rho 8) = ((1 : F) * rho 9) ∧
    ((1 : F)) * ((1 : F) * rho 9) = ((0 : F)) ∧
    ((1 : F) * rho 8) * ((1 : F) + (-1 : F) * rho 10) = ((1 : F) * rho 11) ∧
    ((1 : F)) * ((1 : F) * rho 11) = ((0 : F)) ∧
    ((1 : F) * rho 10) * ((1 : F) + (-1 : F) * rho 12) = ((1 : F) * rho 13) ∧
    ((1 : F)) * ((1 : F) * rho 13) = ((0 : F)) ∧
    ((1 : F) * rho 12) * ((1 : F) + (-1 : F) * rho 14) = ((1 : F) * rho 15) ∧
    ((1 : F)) * ((1 : F) * rho 15) = ((0 : F)) ∧ k

def relation (rho : Nat -> F) : Prop :=
    relationSegment0 rho (True)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9
