import ShielddGnarkFormal.Deployed.Templates.Relations.TAssertActiveRange_18b8939dae25543d281e6aa5ebcc56c4fdd030a9a7e506b73e9157a2e4a8b549
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertActiveRange_18b8939dae25543d281e6aa5ebcc56c4fdd030a9a7e506b73e9157a2e4a8b549

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def relation (rho : Nat -> F) : Prop :=
  Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertActiveRange_18b8939dae25543d281e6aa5ebcc56c4fdd030a9a7e506b73e9157a2e4a8b549.relation rho

def activeCount (rho : Nat -> F) : F :=
  rho 1 + rho 2 + rho 3 + rho 4

def spec (rho : Nat -> F) : Prop :=
  ((rho 1 + rho 2 + rho 3 + rho 4) - 0) * ((rho 1 + rho 2 + rho 3 + rho 4) - 1) = 0

theorem sound (rho : Nat -> F) (h : relation rho) : spec rho := by
  simp only [relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertActiveRange_18b8939dae25543d281e6aa5ebcc56c4fdd030a9a7e506b73e9157a2e4a8b549.relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertActiveRange_18b8939dae25543d281e6aa5ebcc56c4fdd030a9a7e506b73e9157a2e4a8b549.relationSegment0] at h
  obtain ⟨h0, h1, _⟩ := h
  simp only [spec]
  linear_combination h0 + h1

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertActiveRange_18b8939dae25543d281e6aa5ebcc56c4fdd030a9a7e506b73e9157a2e4a8b549
