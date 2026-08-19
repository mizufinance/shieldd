import ShielddGnarkFormal.Deployed.Templates.Relations.TAssertEqIf_21d2c12b00d06e5e5a9b561d8f13c30059ff3ae69a31740109ba30ed73bb89aa
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEqIf_21d2c12b00d06e5e5a9b561d8f13c30059ff3ae69a31740109ba30ed73bb89aa

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def relation (rho : Nat → F) : Prop :=
  Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEqIf_21d2c12b00d06e5e5a9b561d8f13c30059ff3ae69a31740109ba30ed73bb89aa.relation rho

def guard (rho : Nat → F) : F :=
  (1 : F) * rho 1

def residual (rho : Nat → F) : F :=
  (-1 : F) + (1 : F) * rho 2

def spec (rho : Nat → F) : Prop :=
  guard rho = 0 ∨ residual rho = 0

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
  unfold relation Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEqIf_21d2c12b00d06e5e5a9b561d8f13c30059ff3ae69a31740109ba30ed73bb89aa.relation Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEqIf_21d2c12b00d06e5e5a9b561d8f13c30059ff3ae69a31740109ba30ed73bb89aa.relationSegment0 at h
  rcases h with ⟨h0, h1, _⟩
  have hproduct : guard rho * residual rho = 0 := by
    unfold guard residual
    linear_combination h0 + h1
  exact mul_eq_zero.mp hproduct

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEqIf_21d2c12b00d06e5e5a9b561d8f13c30059ff3ae69a31740109ba30ed73bb89aa
