import Mathlib.Algebra.Ring.Defs
import ShielddGnarkFormal.StructuredLC

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalentIf_15b90c10255335c2e3dea5cc594b560b13a2e116f7c31cc0431980b3843c0350

variable {F : Type} [CommRing F]

def relationSegment0 (rho : Nat -> F) (k : Prop) : Prop :=
    ((1 : F) * rho 1) * ((1 : F) * rho 2) = ((1 : F) * rho 3) ∧
    ((1 : F) * rho 4) * ((1 : F) * rho 5) = ((1 : F) * rho 6) ∧
    ((1 : F) * rho 7) * ((1 : F) * rho 3) = ((1 : F) * rho 8) ∧
    ((1 : F) * rho 7) * ((1 : F) * rho 6) = ((1 : F) * rho 9) ∧
    ((1 : F)) * ((1 : F) * rho 8) = ((1 : F) * rho 9) ∧ k

def relation (rho : Nat -> F) : Prop :=
    relationSegment0 rho (True)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalentIf_15b90c10255335c2e3dea5cc594b560b13a2e116f7c31cc0431980b3843c0350
