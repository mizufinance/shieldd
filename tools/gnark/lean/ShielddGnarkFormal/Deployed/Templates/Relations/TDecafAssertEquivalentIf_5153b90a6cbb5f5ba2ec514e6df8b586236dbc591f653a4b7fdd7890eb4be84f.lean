import Mathlib.Algebra.Ring.Defs
import ShielddGnarkFormal.StructuredLC

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f

variable {F : Type} [CommRing F]

def relationSegment0 (rho : Nat -> F) (k : Prop) : Prop :=
    ((1 : F) * rho 1) * ((1 : F) + (-1 : F) * rho 1) = ((0 : F)) ∧
    ((1 : F) * rho 2) * ((1 : F) * rho 3) = ((1 : F) * rho 4) ∧
    ((1 : F) * rho 5) * ((1 : F) * rho 6) = ((1 : F) * rho 7) ∧
    ((1 : F) * rho 4) * ((1 : F) + (-1 : F) * rho 1) = ((1 : F) * rho 8) ∧
    ((1 : F) * rho 7) * ((1 : F) + (-1 : F) * rho 1) = ((1 : F) * rho 9) ∧
    ((1 : F)) * ((1 : F) * rho 8) = ((1 : F) * rho 9) ∧ k

def relation (rho : Nat -> F) : Prop :=
    relationSegment0 rho (True)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f
