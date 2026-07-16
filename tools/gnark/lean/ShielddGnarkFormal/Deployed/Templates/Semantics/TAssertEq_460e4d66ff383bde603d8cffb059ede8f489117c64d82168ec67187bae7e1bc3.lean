import ShielddGnarkFormal.Deployed.Templates.Relations.TAssertEq_460e4d66ff383bde603d8cffb059ede8f489117c64d82168ec67187bae7e1bc3
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEq_460e4d66ff383bde603d8cffb059ede8f489117c64d82168ec67187bae7e1bc3

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def relation (rho : Nat -> F) : Prop :=
  Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_460e4d66ff383bde603d8cffb059ede8f489117c64d82168ec67187bae7e1bc3.relation rho

def spec (rho : Nat -> F) : Prop :=
  rho 1 = rho 2 + rho 3

theorem sound (rho : Nat -> F) (h : relation rho) : spec rho := by
  simp only [relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_460e4d66ff383bde603d8cffb059ede8f489117c64d82168ec67187bae7e1bc3.relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_460e4d66ff383bde603d8cffb059ede8f489117c64d82168ec67187bae7e1bc3.relationSegment0] at h
  obtain ⟨h0, _⟩ := h
  linear_combination h0

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEq_460e4d66ff383bde603d8cffb059ede8f489117c64d82168ec67187bae7e1bc3
