import Mathlib.Algebra.Ring.Defs
import ShielddGnarkFormal.StructuredLC

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_d1faf7346a5dbff8ee29cd3032dc35de5268dd9eb13f3bf487edc1ef70d2e0bd

variable {F : Type} [CommRing F]

def relationSegment0 (rho : Nat -> F) (k : Prop) : Prop :=
    ((1 : F)) * ((1 : F) * rho 1) = ((1 : F) * rho 2) ∧ k

def relation (rho : Nat -> F) : Prop :=
    relationSegment0 rho (True)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_d1faf7346a5dbff8ee29cd3032dc35de5268dd9eb13f3bf487edc1ef70d2e0bd
