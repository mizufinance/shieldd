import ShielddGnarkFormal.RvkBridge
import ShielddGnarkFormal.EdwardsCompleteness

/-! Fixed-base constants for the deployed RVK ladder. -/

namespace Shieldd.GnarkFormal.RvkFixedBaseConstants

open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)
open Shieldd.GnarkFormal.EdwardsBridge (Point onCurve doubleF double_onCurve)

variable [Fact (Nat.Prime Order)]

instance : Fact (Nat.Prime Extracted.DecafEdwardsDouble.Order) := ‹_›
instance : Fact (Nat.Prime Extracted.DecafEdwardsNeg.Order) := ‹_›

abbrev F := EdwardsBridge.F

/-- The exact fixed base hard-coded by gnark's RVK ladder. -/
def generator : Point :=
  ⟨(RvkBridge.genXNat : F), (RvkBridge.genYNat : F)⟩

/-- `C i` is the kernel-reduced recurrence used by the deployed folded ladder. -/
def C : ℕ → Point
  | 0 => generator
  | i + 1 => doubleF (C i)

theorem generator_onCurve : onCurve generator := by
  simpa [generator, RvkBridge.genXNat, RvkBridge.genYNat] using RvkBridge.generator_onCurve

theorem C_succ (i : ℕ) : C (i + 1) = doubleF (C i) := rfl

theorem C_onCurve : ∀ i, onCurve (C i)
  | 0 => generator_onCurve
  | i + 1 => by
      rw [C_succ]
      exact double_onCurve (C i) (C_onCurve i)

end Shieldd.GnarkFormal.RvkFixedBaseConstants
