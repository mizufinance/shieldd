import ShielddGnarkFormal.Deployed.Templates.Relations.TAssertEq_460e4d66ff383bde603d8cffb059ede8f489117c64d82168ec67187bae7e1bc3
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEq_460e4d66ff383bde603d8cffb059ede8f489117c64d82168ec67187bae7e1bc3

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def spec (rho : Nat -> F) : Prop :=
  ((1 : F) * rho 2 + (1 : F) * rho 3) = ((1 : F)) * ((1 : F) * rho 1)

theorem sound (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_460e4d66ff383bde603d8cffb059ede8f489117c64d82168ec67187bae7e1bc3.relation rho) : spec rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_460e4d66ff383bde603d8cffb059ede8f489117c64d82168ec67187bae7e1bc3.relation Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_460e4d66ff383bde603d8cffb059ede8f489117c64d82168ec67187bae7e1bc3.relationSegment0 at h
  exact h.1.symm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEq_460e4d66ff383bde603d8cffb059ede8f489117c64d82168ec67187bae7e1bc3
