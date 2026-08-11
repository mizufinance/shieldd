import Mathlib.Algebra.Ring.Defs
import ShielddGnarkFormal.StructuredLC

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertActiveRange_20f60cd1d2731f356241de975318b0d5af7d0d8f6c6c620b7e11711c4f10405b

variable {F : Type} [CommRing F]

def relationSegment0 (rho : Nat -> F) (k : Prop) : Prop :=
    ((6 : F) + (-1 : F) * rho 1 + (-1 : F) * rho 2 + (-1 : F) * rho 3 + (-1 : F) * rho 4 + (-1 : F) * rho 5 + (-1 : F) * rho 6 + (-1 : F) * rho 7 + (-1 : F) * rho 8) * ((5 : F) + (-1 : F) * rho 1 + (-1 : F) * rho 2 + (-1 : F) * rho 3 + (-1 : F) * rho 4 + (-1 : F) * rho 5 + (-1 : F) * rho 6 + (-1 : F) * rho 7 + (-1 : F) * rho 8) = ((1 : F) * rho 9) ∧
    ((1 : F) * rho 9) * ((4 : F) + (-1 : F) * rho 1 + (-1 : F) * rho 2 + (-1 : F) * rho 3 + (-1 : F) * rho 4 + (-1 : F) * rho 5 + (-1 : F) * rho 6 + (-1 : F) * rho 7 + (-1 : F) * rho 8) = ((1 : F) * rho 10) ∧
    ((1 : F) * rho 10) * ((3 : F) + (-1 : F) * rho 1 + (-1 : F) * rho 2 + (-1 : F) * rho 3 + (-1 : F) * rho 4 + (-1 : F) * rho 5 + (-1 : F) * rho 6 + (-1 : F) * rho 7 + (-1 : F) * rho 8) = ((1 : F) * rho 11) ∧
    ((1 : F) * rho 11) * ((2 : F) + (-1 : F) * rho 1 + (-1 : F) * rho 2 + (-1 : F) * rho 3 + (-1 : F) * rho 4 + (-1 : F) * rho 5 + (-1 : F) * rho 6 + (-1 : F) * rho 7 + (-1 : F) * rho 8) = ((1 : F) * rho 12) ∧
    ((1 : F) * rho 12) * ((1 : F) + (-1 : F) * rho 1 + (-1 : F) * rho 2 + (-1 : F) * rho 3 + (-1 : F) * rho 4 + (-1 : F) * rho 5 + (-1 : F) * rho 6 + (-1 : F) * rho 7 + (-1 : F) * rho 8) = ((1 : F) * rho 13) ∧
    ((1 : F) * rho 13) * ((-1 : F) * rho 1 + (-1 : F) * rho 2 + (-1 : F) * rho 3 + (-1 : F) * rho 4 + (-1 : F) * rho 5 + (-1 : F) * rho 6 + (-1 : F) * rho 7 + (-1 : F) * rho 8) = ((1 : F) * rho 14) ∧
    ((1 : F)) * ((1 : F) * rho 14) = ((0 : F)) ∧ k

def relation (rho : Nat -> F) : Prop :=
    relationSegment0 rho (True)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertActiveRange_20f60cd1d2731f356241de975318b0d5af7d0d8f6c6c620b7e11711c4f10405b
