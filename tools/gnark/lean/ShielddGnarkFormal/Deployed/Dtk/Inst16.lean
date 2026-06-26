import ShielddGnarkFormal.DtkBridge
import ShielddGnarkFormal.Deployed.Dtk.Ladder
import ShielddGnarkFormal.Deployed.Dtk.LtConst

/-! # DTK deployed-slice bridge — instance seg16 (shape 24407a)

Top composition glue. The deployed-row obligation reduces to three sub-bridges
(seg0 prefix, ltConst ladder, scalarMul ladder); this file fixes the wiring from
those to the extracted `circuit` predicate and then to the spec, so the
sub-bridges can be filled independently. Built before the row-emission stage to
lock the continuation shape (`dtk_circuit_eq` RHS) against the compiler. -/

namespace Shieldd.GnarkFormal.Deployed.Dtk.Inst16

open Shieldd.GnarkFormal.DtkBridge
open Shieldd.GnarkFormal.ScalarMulBridge (finalKWithOutputCurve)

set_option maxRecDepth 8000

variable [Fact (Nat.Prime Extracted.DecafEdwardsAdd.Order)]

/-- The extracted DTK `circuit` predicate holds once `dtkSeg0` is established with
the full tail continuation (`dtkTailK` + the scalarMul-ladder existential `k₀`).
This is exactly `dtk_circuit_eq.mpr` after unfolding `dtkCircuitK`/`dtkTailK` to
the `dtkSeg0∘…∘dtkSeg14` nest. -/
theorem circuit_of_seg0
    (Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient OutX OutY : F)
    (hseg0 : dtkSeg0 Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient
      (fun bits => dtkTailK bits IvkQuotient
        (∃ b, GatesDef.to_binary IvkReduced 251 b ∧
          dtkLadderK b (finalKWithOutputCurve OutX OutY) 251 0 ⟨0, 1⟩ ⟨DivGenX, DivGenY⟩))) :
    Extracted.DecafDtk.circuit Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio
      IvkReduced IvkQuotient OutX OutY := by
  rw [dtk_circuit_eq]
  exact hseg0

end Shieldd.GnarkFormal.Deployed.Dtk.Inst16
