import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5Canon1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg5Canon2_recover (rho : Nat -> Seg5.F) (h : Seg5.relation rho) :
    recover_binary_zmod' (seg5Canon2Bits rho) = rho 572 := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart9 at p9
  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r791, _, _, _, _, _, _, _, _⟩
  have hrecover := recover_ofFn_eq_recBits rho 573 253
  have hacc : powSumAcc rho 0 1 573 253 = rho 572 := by
    unfold Seg5.relationRow791 Seg5.relationLc1 Seg5.relationLc1Part0 Seg5.relationLc1Part1 Seg5.relationLc1Part2 Seg5.relationLc1Part3 Seg5.relationLc1Part4 Seg5.relationLc1Part5 Seg5.relationLc1Part6 Seg5.relationLc1Part7 at r791
    simp only [powSumAcc]
    linear_combination r791
  have hrec : recover_binary_zmod' (seg5Canon2Bits rho) = rho 572 := by
    simp only [seg5Canon2Bits]
    rw [hrecover]
    rw [powSumAcc_eq] at hacc
    simpa using hacc
  exact hrec

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
