import ShielddGnarkFormal.Deployed.Templates.Relations.TAssertActiveRange_486bb61d926bd1688072104ae23c98ba7bcac3614cb3a0c6b005c31b6b4b4861
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertActiveRange_486bb61d926bd1688072104ae23c98ba7bcac3614cb3a0c6b005c31b6b4b4861

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def relation (rho : Nat -> F) : Prop :=
  Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertActiveRange_486bb61d926bd1688072104ae23c98ba7bcac3614cb3a0c6b005c31b6b4b4861.relation rho

def activeCount (rho : Nat -> F) : F :=
  rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8

def spec (rho : Nat -> F) : Prop :=
  ((rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8) - 0) * ((rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8) - 1) * ((rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8) - 2) * ((rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8) - 3) = 0

theorem sound (rho : Nat -> F) (h : relation rho) : spec rho := by
  simp only [relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertActiveRange_486bb61d926bd1688072104ae23c98ba7bcac3614cb3a0c6b005c31b6b4b4861.relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertActiveRange_486bb61d926bd1688072104ae23c98ba7bcac3614cb3a0c6b005c31b6b4b4861.relationSegment0] at h
  obtain ⟨h0, h1, h2, h3, _⟩ := h
  simp only [spec]
  linear_combination ((1 - (rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8)) * (0 - (rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8))) * h0 + ((0 - (rho 1 + rho 2 + rho 3 + rho 4 + rho 5 + rho 6 + rho 7 + rho 8))) * h1 + h2 + h3

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertActiveRange_486bb61d926bd1688072104ae23c98ba7bcac3614cb3a0c6b005c31b6b4b4861
