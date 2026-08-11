import ShielddGnarkFormal.Deployed.Templates.Relations.TSelectField_0831068cd4400989eb055a4a46c8e3b124fc35949178bdf5efd7e4ce47ea044e
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TSelectField_0831068cd4400989eb055a4a46c8e3b124fc35949178bdf5efd7e4ce47ea044e

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def relation (rho : Nat → F) : Prop :=
  Shieldd.GnarkFormal.Deployed.Templates.Relations.TSelectField_0831068cd4400989eb055a4a46c8e3b124fc35949178bdf5efd7e4ce47ea044e.relation rho

def selector (rho : Nat → F) : F :=
  (1 : F) * rho 1

def delta (rho : Nat → F) : F :=
  (8297544345344610931163050155937404748251340632479704177539866819333114399182 : F) + (1 : F) * rho 2

def selected (rho : Nat → F) : F :=
  (1 : F) * rho 3

def spec (rho : Nat → F) : Prop :=
  selected rho = selector rho * delta rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
  unfold relation Shieldd.GnarkFormal.Deployed.Templates.Relations.TSelectField_0831068cd4400989eb055a4a46c8e3b124fc35949178bdf5efd7e4ce47ea044e.relation Shieldd.GnarkFormal.Deployed.Templates.Relations.TSelectField_0831068cd4400989eb055a4a46c8e3b124fc35949178bdf5efd7e4ce47ea044e.relationSegment0 at h
  rcases h with ⟨h0, _⟩
  unfold spec selected selector delta
  simpa [mul_assoc] using h0.symm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TSelectField_0831068cd4400989eb055a4a46c8e3b124fc35949178bdf5efd7e4ce47ea044e
