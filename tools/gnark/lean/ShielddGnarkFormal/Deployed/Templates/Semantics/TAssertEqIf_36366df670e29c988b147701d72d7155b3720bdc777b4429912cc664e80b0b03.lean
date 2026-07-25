import ShielddGnarkFormal.Deployed.Templates.Relations.TAssertEqIf_36366df670e29c988b147701d72d7155b3720bdc777b4429912cc664e80b0b03
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEqIf_36366df670e29c988b147701d72d7155b3720bdc777b4429912cc664e80b0b03

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def relation (rho : Nat -> F) : Prop :=
  Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEqIf_36366df670e29c988b147701d72d7155b3720bdc777b4429912cc664e80b0b03.relation rho

def residual (rho : Nat -> F) : F :=
  ((-1 : F) * rho 2 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 3 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 4 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 5 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 6 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 7)

def spec (rho : Nat -> F) : Prop :=
  rho 1 = 1 ∨ residual rho = 0

theorem sound (rho : Nat -> F) (h : relation rho) : spec rho := by
  simp only [relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEqIf_36366df670e29c988b147701d72d7155b3720bdc777b4429912cc664e80b0b03.relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEqIf_36366df670e29c988b147701d72d7155b3720bdc777b4429912cc664e80b0b03.relationSegment0] at h
  obtain ⟨h0, h1, _⟩ := h
  have hp : (1 - rho 1) * residual rho = 0 := by
    calc
      (1 - rho 1) * residual rho = rho 8 := by
        simp only [residual]
        linear_combination h0
      _ = 0 := by linear_combination h1
  rcases mul_eq_zero.mp hp with henabled | heq
  · left
    linear_combination -henabled
  · exact Or.inr heq

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEqIf_36366df670e29c988b147701d72d7155b3720bdc777b4429912cc664e80b0b03
