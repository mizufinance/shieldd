import ShielddGnarkFormal.ScalarMulBridge
import ShielddGnarkFormal.ChoiceFreeZMod

/-! Constructive bridge from the Edwards output invariant to deployed gates. -/

namespace Shieldd.GnarkFormal.Deployed.Dtk.OutputCurve

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Shieldd.GnarkFormal.ScalarMulBridge
open EdwardsBridge (onCurve)

theorem outputCurveGates_of_onCurve (x y : F) (h : onCurve ⟨x, y⟩) :
    Shieldd.GnarkFormal.ScalarMulBridge.outputCurveGates x y := by
  unfold Shieldd.GnarkFormal.ScalarMulBridge.outputCurveGates
  refine ⟨x * x, rfl, y * y, rfl, y * y - x * x, rfl,
    3021 * (x * x), rfl, 3021 * (x * x) * (y * y), rfl,
    1 + 3021 * (x * x) * (y * y), rfl, ?_, trivial⟩
  change -(x * x) + y * y = 1 + 3021 * (x * x) * (y * y) at h
  change y * y - x * x = 1 + 3021 * (x * x) * (y * y)
  linear_combination h

end Shieldd.GnarkFormal.Deployed.Dtk.OutputCurve
