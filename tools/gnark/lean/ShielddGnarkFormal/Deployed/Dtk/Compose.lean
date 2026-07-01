import ShielddGnarkFormal.DtkBridge
import ShielddGnarkFormal.Deployed.Dtk.Ladder
import ShielddGnarkFormal.Deployed.Dtk.LtConst

/-! Shared composition from a deployed DTK prefix to the extracted circuit. -/

namespace Shieldd.GnarkFormal.Deployed.Dtk

open Shieldd.GnarkFormal.DtkBridge
open Shieldd.GnarkFormal.ScalarMulBridge (finalKWithOutputCurve)

set_option maxRecDepth 8000

variable [Fact (Nat.Prime Extracted.DecafEdwardsAdd.Order)]

theorem dtk_circuit_of_seg0
    (Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient OutX OutY : F)
    (hseg0 : dtkSeg0 Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient
      (fun bits => dtkTailK bits IvkQuotient
        (∃ b, GatesDef.to_binary IvkReduced 251 b ∧
          dtkLadderK b (finalKWithOutputCurve OutX OutY) 251 0 ⟨0, 1⟩ ⟨DivGenX, DivGenY⟩))) :
    Extracted.DecafDtk.circuit Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio
      IvkReduced IvkQuotient OutX OutY := by
  rw [dtk_circuit_eq]
  exact hseg0

end Shieldd.GnarkFormal.Deployed.Dtk
