import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Seating

namespace Shieldd.GnarkFormal.Deployed.Templates.Simple

variable {F : Type} [CommRing F]

def assertEqRelation (rho : Nat → F) : Prop :=
  (1 : F) * rho 1 = (1 : F) * rho 2

def assertEqSpec (rho : Nat → F) : Prop := (1 : F) * rho 2 = (1 : F) * rho 1

theorem assertEqSound (rho : Nat → F) :
    assertEqRelation rho → assertEqSpec rho := by
  intro h
  unfold assertEqRelation at h
  unfold assertEqSpec
  linear_combination -h

def onCurveRelation (rho : Nat → F) : Prop :=
  ((1 : F) * rho 1) * ((1 : F) * rho 1) = (1 : F) * rho 2 ∧
  ((1 : F) * rho 3) * ((1 : F) * rho 3) = (1 : F) * rho 4 ∧
  ((3021 : F) * rho 2) * ((1 : F) * rho 4) = (1 : F) * rho 5 ∧
  (1 : F) * ((-1 : F) * rho 2 + (1 : F) * rho 4) =
    (1 : F) + (1 : F) * rho 5

def onCurveSpec (rho : Nat → F) : Prop :=
  -((rho 1) * (rho 1)) + (rho 3) * (rho 3) =
    1 + 3021 * ((rho 1) * (rho 1)) * ((rho 3) * (rho 3))

theorem onCurveSound (rho : Nat → F) :
    onCurveRelation rho → onCurveSpec rho := by
  intro h
  unfold onCurveSpec
  linear_combination h.2.2.2 - h.1 + h.2.1 - h.2.2.1 -
    3021 * rho 4 * h.1 - 3021 * (rho 1 * rho 1) * h.2.1

end Shieldd.GnarkFormal.Deployed.Templates.Simple
