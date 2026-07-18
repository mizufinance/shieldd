import ShielddGnarkFormal.Deployed.Templates.Relations.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def relation (rho : Nat -> F) : Prop :=
  Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9.relation rho

def spec (rho : Nat -> F) : Prop :=
  rho 1 = 0 ∧
  rho 1 * (1 - rho 2) = 0 ∧
  rho 2 * (1 - rho 4) = 0 ∧
  rho 4 * (1 - rho 6) = 0 ∧
  rho 6 * (1 - rho 8) = 0 ∧
  rho 8 * (1 - rho 10) = 0 ∧
  rho 10 * (1 - rho 12) = 0 ∧
  rho 12 * (1 - rho 14) = 0

theorem sound (rho : Nat -> F) (h : relation rho) : spec rho := by
  simp only [relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9.relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9.relationSegment0] at h
  simp only [spec]
  obtain ⟨h0, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, _⟩ := h
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
  constructor
  · calc
      rho 4 * (1 - rho 6) = rho 7 := by linear_combination h5
      _ = 0 := by linear_combination h6
  constructor
  · calc
      rho 6 * (1 - rho 8) = rho 9 := by linear_combination h7
      _ = 0 := by linear_combination h8
  constructor
  · calc
      rho 8 * (1 - rho 10) = rho 11 := by linear_combination h9
      _ = 0 := by linear_combination h10
  constructor
  · calc
      rho 10 * (1 - rho 12) = rho 13 := by linear_combination h11
      _ = 0 := by linear_combination h12
  · calc
      rho 12 * (1 - rho 14) = rho 15 := by linear_combination h13
      _ = 0 := by linear_combination h14

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9
