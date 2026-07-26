import Mathlib.Algebra.Ring.Defs
import ShielddGnarkFormal.StructuredLC

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalent_9751fe87fa2c56ff1ab94b413c6c480f6675c29236b522f924826fe36f060dd3

variable {F : Type} [CommRing F]

def relationLc0 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2, 1, 251⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 255, 1, 251⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationSegment0 (rho : Nat -> F) (k : Prop) : Prop :=
    ((1 : F) * rho 1) * (relationLc0 rho) = ((1 : F) * rho 253) ∧
    ((1 : F) * rho 254) * (relationLc1 rho) = ((1 : F) * rho 506) ∧
    ((1 : F)) * ((1 : F) * rho 253) = ((1 : F) * rho 506) ∧ k

def relation (rho : Nat -> F) : Prop :=
    relationSegment0 rho (True)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalent_9751fe87fa2c56ff1ab94b413c6c480f6675c29236b522f924826fe36f060dd3
