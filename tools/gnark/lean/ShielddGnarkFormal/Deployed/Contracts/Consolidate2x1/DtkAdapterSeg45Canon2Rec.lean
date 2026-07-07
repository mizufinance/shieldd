import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Canon1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg45Canon2_recover (rho : Nat -> Seg45.F) (h : Seg45.relation rho) :
    recover_binary_zmod' (seg45Canon2Bits rho) = rho 39105 := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, p9,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart9 at p9
  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r791, _, _, _, _, _, _, _, _⟩
  have hrecover := recover_ofFn_eq_recBits rho 39106 253
  have hacc : powSumAcc rho 0 1 39106 253 = rho 39105 := by
    unfold Seg45.relationRow791 Seg45.relationLc1 Seg45.relationLc1Part0 Seg45.relationLc1Part1 Seg45.relationLc1Part2 Seg45.relationLc1Part3 Seg45.relationLc1Part4 Seg45.relationLc1Part5 Seg45.relationLc1Part6 Seg45.relationLc1Part7 at r791
    simp only [powSumAcc]
    linear_combination r791
  have hrec : recover_binary_zmod' (seg45Canon2Bits rho) = rho 39105 := by
    simp only [seg45Canon2Bits]
    rw [hrecover]
    rw [powSumAcc_eq] at hacc
    simpa using hacc
  exact hrec

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
