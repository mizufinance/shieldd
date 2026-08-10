import ShielddGnarkFormal.Deployed.Templates.Relations.TAssertEq_ca693c9a644d7a101d49302f9052719ee7e0f45605900d8e80b3c59e6b2e2ddd
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEq_ca693c9a644d7a101d49302f9052719ee7e0f45605900d8e80b3c59e6b2e2ddd

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def spec (rho : Nat -> F) : Prop :=
  ((0 : F)) = ((1 : F)) * ((1 : F) * rho 1)

theorem sound (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_ca693c9a644d7a101d49302f9052719ee7e0f45605900d8e80b3c59e6b2e2ddd.relation rho) : spec rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_ca693c9a644d7a101d49302f9052719ee7e0f45605900d8e80b3c59e6b2e2ddd.relation Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_ca693c9a644d7a101d49302f9052719ee7e0f45605900d8e80b3c59e6b2e2ddd.relationSegment0 at h
  exact h.1.symm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEq_ca693c9a644d7a101d49302f9052719ee7e0f45605900d8e80b3c59e6b2e2ddd
