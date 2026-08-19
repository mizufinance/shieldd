import Mathlib.Algebra.Ring.Defs
import ShielddGnarkFormal.StructuredLC

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEqIf_21d2c12b00d06e5e5a9b561d8f13c30059ff3ae69a31740109ba30ed73bb89aa

variable {F : Type} [CommRing F]

def relationSegment0 (rho : Nat -> F) (k : Prop) : Prop :=
    ((1 : F) * rho 1) * ((-1 : F) + (1 : F) * rho 2) = ((1 : F) * rho 3) ∧
    ((1 : F)) * ((1 : F) * rho 3) = ((0 : F)) ∧ k

def relation (rho : Nat -> F) : Prop :=
    relationSegment0 rho (True)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEqIf_21d2c12b00d06e5e5a9b561d8f13c30059ff3ae69a31740109ba30ed73bb89aa
