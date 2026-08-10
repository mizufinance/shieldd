import ShielddGnarkFormal.Deployed.Templates.Relations.TSelectPoint_cd6a18f36bb22ee661a01f3d85090d2686861341dca12d69ab8204ef3780c799
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TSelectPoint_cd6a18f36bb22ee661a01f3d85090d2686861341dca12d69ab8204ef3780c799

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def relation (rho : Nat → F) : Prop :=
  Shieldd.GnarkFormal.Deployed.Templates.Relations.TSelectPoint_cd6a18f36bb22ee661a01f3d85090d2686861341dca12d69ab8204ef3780c799.relation rho

def selector (rho : Nat → F) : F :=
  (1 : F) * rho 1

def deltaX (rho : Nat → F) : F :=
  (4617491044499661354199399458855367018016837978387850223760889670113802729481 : F) + (1 : F) * rho 2

def deltaY (rho : Nat → F) : F :=
  (4009406879518373341044590760267486013467361742873740276013817087117129386580 : F) + (1 : F) * rho 4

def selectedX (rho : Nat → F) : F :=
  (1 : F) * rho 3

def selectedY (rho : Nat → F) : F :=
  (1 : F) * rho 5

def spec (rho : Nat → F) : Prop :=
  selectedX rho = selector rho * deltaX rho ∧
    selectedY rho = selector rho * deltaY rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
  unfold relation Shieldd.GnarkFormal.Deployed.Templates.Relations.TSelectPoint_cd6a18f36bb22ee661a01f3d85090d2686861341dca12d69ab8204ef3780c799.relation Shieldd.GnarkFormal.Deployed.Templates.Relations.TSelectPoint_cd6a18f36bb22ee661a01f3d85090d2686861341dca12d69ab8204ef3780c799.relationSegment0 at h
  rcases h with ⟨h0, h1, _⟩
  unfold spec
  constructor
  · unfold selectedX selector deltaX
    exact h0.symm
  · unfold selectedY selector deltaY
    exact h1.symm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TSelectPoint_cd6a18f36bb22ee661a01f3d85090d2686861341dca12d69ab8204ef3780c799
