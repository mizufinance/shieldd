import Mathlib.Algebra.Ring.Defs
import ShielddGnarkFormal.StructuredLC

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertActiveRange_18b8939dae25543d281e6aa5ebcc56c4fdd030a9a7e506b73e9157a2e4a8b549

variable {F : Type} [CommRing F]

def relationSegment0 (rho : Nat -> F) (k : Prop) : Prop :=
    ((-1 : F) * rho 1 + (-1 : F) * rho 2 + (-1 : F) * rho 3 + (-1 : F) * rho 4) * ((1 : F) + (-1 : F) * rho 1 + (-1 : F) * rho 2 + (-1 : F) * rho 3 + (-1 : F) * rho 4) = ((1 : F) * rho 5) ∧
    ((1 : F)) * ((1 : F) * rho 5) = ((0 : F)) ∧ k

def relation (rho : Nat -> F) : Prop :=
    relationSegment0 rho (True)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertActiveRange_18b8939dae25543d281e6aa5ebcc56c4fdd030a9a7e506b73e9157a2e4a8b549
