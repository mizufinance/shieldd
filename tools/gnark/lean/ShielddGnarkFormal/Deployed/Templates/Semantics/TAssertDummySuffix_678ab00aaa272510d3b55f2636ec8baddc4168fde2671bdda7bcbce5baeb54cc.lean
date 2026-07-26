import ShielddGnarkFormal.Deployed.Templates.Relations.TAssertDummySuffix_678ab00aaa272510d3b55f2636ec8baddc4168fde2671bdda7bcbce5baeb54cc
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertDummySuffix_678ab00aaa272510d3b55f2636ec8baddc4168fde2671bdda7bcbce5baeb54cc

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def relation (rho : Nat -> F) : Prop :=
  Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertDummySuffix_678ab00aaa272510d3b55f2636ec8baddc4168fde2671bdda7bcbce5baeb54cc.relation rho

def spec (rho : Nat -> F) : Prop :=
  rho 1 = 0 ∧
  rho 1 * (1 - rho 2) = 0 ∧
  rho 2 * (1 - rho 4) = 0 ∧
  rho 4 * (1 - rho 6) = 0

theorem sound (rho : Nat -> F) (h : relation rho) : spec rho := by
  simp only [relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertDummySuffix_678ab00aaa272510d3b55f2636ec8baddc4168fde2671bdda7bcbce5baeb54cc.relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertDummySuffix_678ab00aaa272510d3b55f2636ec8baddc4168fde2671bdda7bcbce5baeb54cc.relationSegment0] at h
  simp only [spec]
  obtain ⟨h0, h1, h2, h3, h4, h5, h6, _⟩ := h
  constructor
  · linear_combination h0
  constructor
  · calc
      rho 1 * (1 - rho 2) = rho 3 := by linear_combination h1
      _ = 0 := by linear_combination h2
  constructor
  · calc
      rho 2 * (1 - rho 4) = rho 5 := by linear_combination h3
      _ = 0 := by linear_combination h4
  · calc
      rho 4 * (1 - rho 6) = rho 7 := by linear_combination h5
      _ = 0 := by linear_combination h6

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertDummySuffix_678ab00aaa272510d3b55f2636ec8baddc4168fde2671bdda7bcbce5baeb54cc
