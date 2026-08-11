import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def relation (rho : Nat → F) : Prop :=
  Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f.relation rho

def guard (rho : Nat → F) : F :=
  (1 : F) + (-1 : F) * rho 1

def selector (rho : Nat → F) : F :=
  (1 : F) * rho 1

def selectorIsBoolean (rho : Nat → F) : Prop :=
  selector rho = 0 ∨ selector rho = 1

def leftCrossProduct (rho : Nat → F) : F :=
  ((1 : F) * rho 2) * ((1 : F) * rho 3)

def rightCrossProduct (rho : Nat → F) : F :=
  ((1 : F) * rho 5) * ((1 : F) * rho 6)

def spec (rho : Nat → F) : Prop :=
  selectorIsBoolean rho ∧
    (guard rho = 0 ∨ leftCrossProduct rho = rightCrossProduct rho)

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
  unfold relation Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f.relation Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f.relationSegment0 at h
  rcases h with ⟨h0, h1, h2, h3, h4, h5, _⟩
  unfold spec
  constructor
  · unfold selectorIsBoolean
    have hboolean : selector rho * (1 - selector rho) = 0 := by
      unfold selector
      linear_combination h0
    rcases mul_eq_zero.mp hboolean with hzero | hone
    · exact Or.inl hzero
    · right
      linear_combination -hone
  · have hproduct :
        guard rho * (leftCrossProduct rho - rightCrossProduct rho) = 0 := by
      unfold guard leftCrossProduct rightCrossProduct
      linear_combination
        ((1 : F) + (-1 : F) * rho 1) * h1 - ((1 : F) + (-1 : F) * rho 1) * h2 +
        h3 - h4 + h5
    rcases mul_eq_zero.mp hproduct with hdisabled | hequivalent
    · exact Or.inl hdisabled
    · right
      linear_combination hequivalent

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f
