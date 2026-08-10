import Mathlib.Algebra.Ring.Defs
import ShielddGnarkFormal.StructuredLC

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_8d8c35e681ce1b5e96aa42ceee0013036302fc4e1b1594a361d481be589b6d6c

variable {F : Type} [CommRing F]

def relationSegment0 (rho : Nat -> F) (k : Prop) : Prop :=
    ((1 : F)) * ((1 : F) * rho 1 + (1 : F) * rho 2) = ((1 : F)) ∧ k

def relation (rho : Nat -> F) : Prop :=
    relationSegment0 rho (True)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_8d8c35e681ce1b5e96aa42ceee0013036302fc4e1b1594a361d481be589b6d6c
