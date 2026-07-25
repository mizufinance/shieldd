import ShielddGnarkFormal.RvkBridge
import ShielddGnarkFormal.EdwardsCompleteness
import ShielddGnarkFormal.ChoiceFreeZModCast

/-! Choice-free fixed-base constants for normalized RVK semantic providers. -/

namespace Shieldd.GnarkFormal.RvkFixedBaseConstantsChoiceFree

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)
open Shieldd.GnarkFormal.EdwardsBridge (Point onCurve doubleF double_onCurve)

variable [Fact (Nat.Prime Order)]

instance : Fact (Nat.Prime Extracted.DecafEdwardsDouble.Order) := ‹_›
instance : Fact (Nat.Prime Extracted.DecafEdwardsNeg.Order) := ‹_›

abbrev F := EdwardsBridge.F

def generator : Point :=
  ⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627 : F),
   (6060471950081851567114691557659790004756535011754163002297540472747064943288 : F)⟩

theorem generator_onCurve : onCurve generator := by
  have hcast :
      ((RvkBridge.genYNat * RvkBridge.genYNat +
          (Order - 1) * (RvkBridge.genXNat * RvkBridge.genXNat) : ℕ) : F) =
        ((1 + EdwardsBridge.dNat *
          (RvkBridge.genXNat * RvkBridge.genXNat) *
          (RvkBridge.genYNat * RvkBridge.genYNat) : ℕ) : F) := by
    exact ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq Order _ _
      (Nat.Prime.ne_zero Fact.out)
      RvkBridge.gen_onCurve_nat
  have ha : ((Order - 1 : ℕ) : F) = -1 := by decide
  have hx : ((RvkBridge.genXNat : ℕ) : F) =
      (4959445789346820725352484487855828915252512307947624787834978378872129235627 : F) := by
    rfl
  have hy : ((RvkBridge.genYNat : ℕ) : F) =
      (6060471950081851567114691557659790004756535011754163002297540472747064943288 : F) := by
    rfl
  simp only [Nat.cast_add, Nat.cast_mul, Nat.cast_one] at hcast
  rw [ha, hx, hy, ← EdwardsBridge.d_natCast] at hcast
  simp only [generator]
  show -(_ * _) + _ * _ = 1 + EdwardsBridge.d * (_ * _) * (_ * _)
  linear_combination hcast

def C : ℕ → Point
  | 0 => generator
  | i + 1 => doubleF (C i)

theorem C_succ (i : ℕ) : C (i + 1) = doubleF (C i) := rfl

theorem C_onCurve : ∀ i, onCurve (C i)
  | 0 => generator_onCurve
  | i + 1 => by
      rw [C_succ]
      exact double_onCurve (C i) (C_onCurve i)

end Shieldd.GnarkFormal.RvkFixedBaseConstantsChoiceFree
