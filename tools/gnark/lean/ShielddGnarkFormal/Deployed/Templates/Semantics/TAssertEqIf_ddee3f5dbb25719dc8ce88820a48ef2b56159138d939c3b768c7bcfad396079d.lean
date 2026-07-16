import ShielddGnarkFormal.Deployed.Templates.Relations.TAssertEqIf_ddee3f5dbb25719dc8ce88820a48ef2b56159138d939c3b768c7bcfad396079d
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEqIf_ddee3f5dbb25719dc8ce88820a48ef2b56159138d939c3b768c7bcfad396079d

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def relation (rho : Nat -> F) : Prop :=
  Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEqIf_ddee3f5dbb25719dc8ce88820a48ef2b56159138d939c3b768c7bcfad396079d.relation rho

def spec (rho : Nat -> F) : Prop :=
  rho 1 = 0 ∨ rho 2 = 0

theorem sound (rho : Nat -> F) (h : relation rho) : spec rho := by
  simp only [relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEqIf_ddee3f5dbb25719dc8ce88820a48ef2b56159138d939c3b768c7bcfad396079d.relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEqIf_ddee3f5dbb25719dc8ce88820a48ef2b56159138d939c3b768c7bcfad396079d.relationSegment0] at h
  obtain ⟨h0, h1, _⟩ := h
  apply mul_eq_zero.mp
  calc
    rho 1 * rho 2 = rho 3 := by linear_combination h0
    _ = 0 := by linear_combination h1

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEqIf_ddee3f5dbb25719dc8ce88820a48ef2b56159138d939c3b768c7bcfad396079d
