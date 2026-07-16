import ShielddGnarkFormal.Deployed.Templates.Relations.TAssertActiveRange_20f60cd1d2731f356241de975318b0d5af7d0d8f6c6c620b7e11711c4f10405b
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertActiveRange_20f60cd1d2731f356241de975318b0d5af7d0d8f6c6c620b7e11711c4f10405b

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def relation (rho : Nat -> F) : Prop :=
  Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertActiveRange_20f60cd1d2731f356241de975318b0d5af7d0d8f6c6c620b7e11711c4f10405b.relation rho

def activeCount (rho : Nat -> F) : F :=
  rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8

def spec (rho : Nat -> F) : Prop :=
  ((rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8) - 0) * ((rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8) - 1) * ((rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8) - 2) * ((rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8) - 3) * ((rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8) - 4) * ((rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8) - 5) * ((rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8) - 6) = 0

theorem sound (rho : Nat -> F) (h : relation rho) : spec rho := by
  simp only [relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertActiveRange_20f60cd1d2731f356241de975318b0d5af7d0d8f6c6c620b7e11711c4f10405b.relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertActiveRange_20f60cd1d2731f356241de975318b0d5af7d0d8f6c6c620b7e11711c4f10405b.relationSegment0] at h
  obtain ⟨h0, h1, h2, h3, h4, h5, h6, _⟩ := h
  simp only [spec]
  linear_combination -((4 - (rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8)) * (3 - (rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8)) * (2 - (rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8)) * (1 - (rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8)) * (0 - (rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8))) * h0 + -((3 - (rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8)) * (2 - (rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8)) * (1 - (rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8)) * (0 - (rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8))) * h1 + -((2 - (rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8)) * (1 - (rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8)) * (0 - (rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8))) * h2 + -((1 - (rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8)) * (0 - (rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8))) * h3 + -((0 - (rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8))) * h4 + -h5 + -h6

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertActiveRange_20f60cd1d2731f356241de975318b0d5af7d0d8f6c6c620b7e11711c4f10405b
