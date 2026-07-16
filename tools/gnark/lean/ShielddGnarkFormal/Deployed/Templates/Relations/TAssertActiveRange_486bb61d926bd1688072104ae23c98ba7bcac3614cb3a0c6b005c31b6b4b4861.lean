import Mathlib.Algebra.Ring.Defs
import ShielddGnarkFormal.StructuredLC

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertActiveRange_486bb61d926bd1688072104ae23c98ba7bcac3614cb3a0c6b005c31b6b4b4861

variable {F : Type} [CommRing F]

def relationSegment0 (rho : Nat -> F) (k : Prop) : Prop :=
    ((3 : F) + (-1 : F) * rho 1 + (-1 : F) * rho 2 + (-1 : F) * rho 3 + (-1 : F) * rho 4 + (-1 : F) * rho 5 + (-1 : F) * rho 6 + (-1 : F) * rho 7 + (-1 : F) * rho 8) * ((2 : F) + (-1 : F) * rho 1 + (-1 : F) * rho 2 + (-1 : F) * rho 3 + (-1 : F) * rho 4 + (-1 : F) * rho 5 + (-1 : F) * rho 6 + (-1 : F) * rho 7 + (-1 : F) * rho 8) = ((1 : F) * rho 9) ∧
    ((1 : F) * rho 9) * ((1 : F) + (-1 : F) * rho 1 + (-1 : F) * rho 2 + (-1 : F) * rho 3 + (-1 : F) * rho 4 + (-1 : F) * rho 5 + (-1 : F) * rho 6 + (-1 : F) * rho 7 + (-1 : F) * rho 8) = ((1 : F) * rho 10) ∧
    ((1 : F) * rho 10) * ((-1 : F) * rho 1 + (-1 : F) * rho 2 + (-1 : F) * rho 3 + (-1 : F) * rho 4 + (-1 : F) * rho 5 + (-1 : F) * rho 6 + (-1 : F) * rho 7 + (-1 : F) * rho 8) = ((1 : F) * rho 11) ∧
    ((1 : F)) * ((1 : F) * rho 11) = ((0 : F)) ∧ k

def relation (rho : Nat -> F) : Prop :=
    relationSegment0 rho (True)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertActiveRange_486bb61d926bd1688072104ae23c98ba7bcac3614cb3a0c6b005c31b6b4b4861
