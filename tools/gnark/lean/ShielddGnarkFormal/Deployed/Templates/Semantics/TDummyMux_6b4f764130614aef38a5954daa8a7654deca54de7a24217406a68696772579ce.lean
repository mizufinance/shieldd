import ShielddGnarkFormal.Deployed.Templates.Relations.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def relation (rho : Nat -> F) : Prop :=
  Shieldd.GnarkFormal.Deployed.Templates.Relations.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce.relation rho

def spec (rho : Nat -> F) : Prop :=
  rho 6 = (1 - rho 1) * ((6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) * rho 2 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 3 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 4 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 5) ∧
  rho 11 = rho 1 * ((6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) * rho 7 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 8 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 9 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 10)

theorem sound (rho : Nat -> F) (h : relation rho) : spec rho := by
  simp only [relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce.relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce.relationSegment0] at h
  simp only [spec]
  obtain ⟨h0, h1, _⟩ := h
  constructor
  · linear_combination -h0
  · linear_combination -h1

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce
