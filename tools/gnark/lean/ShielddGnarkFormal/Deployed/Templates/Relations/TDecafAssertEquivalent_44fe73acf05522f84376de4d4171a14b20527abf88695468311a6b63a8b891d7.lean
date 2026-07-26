import Mathlib.Algebra.Ring.Defs
import ShielddGnarkFormal.StructuredLC

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalent_44fe73acf05522f84376de4d4171a14b20527abf88695468311a6b63a8b891d7

variable {F : Type} [CommRing F]

def relationLc0 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 3, 1, 250⟩], residual := [((4661681602708190761543544705274244814260880986867766715334030151044279151219 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 255, 1, 250⟩], residual := [((4337336842509898676347982752646772244181661588533917621717979456142867120377 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationSegment0 (rho : Nat -> F) (k : Prop) : Prop :=
    ((1 : F) * rho 1) * (relationLc0 rho) = ((1 : F) * rho 253) ∧
    ((1 : F) * rho 254) * (relationLc1 rho) = ((1 : F) * rho 505) ∧
    ((1 : F)) * ((1 : F) * rho 253) = ((1 : F) * rho 505) ∧ k

def relation (rho : Nat -> F) : Prop :=
    relationSegment0 rho (True)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalent_44fe73acf05522f84376de4d4171a14b20527abf88695468311a6b63a8b891d7
