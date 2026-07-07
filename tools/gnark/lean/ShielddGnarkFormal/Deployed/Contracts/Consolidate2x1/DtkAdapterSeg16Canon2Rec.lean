import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16Canon1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg16Canon2_recover (rho : Nat -> Seg16.F) (h : Seg16.relation rho) :
    recover_binary_zmod' (seg16Canon2Bits rho) = rho 13449 := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart9 at p9
  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r791, _, _, _, _, _, _, _, _⟩
  have hrecover := recover_ofFn_eq_recBits rho 13450 253
  have hacc : powSumAcc rho 0 1 13450 253 = rho 13449 := by
    unfold Seg16.relationRow791 Seg16.relationLc1 Seg16.relationLc1Part0 Seg16.relationLc1Part1 Seg16.relationLc1Part2 Seg16.relationLc1Part3 Seg16.relationLc1Part4 Seg16.relationLc1Part5 Seg16.relationLc1Part6 Seg16.relationLc1Part7 at r791
    simp only [powSumAcc]
    linear_combination r791
  have hrec : recover_binary_zmod' (seg16Canon2Bits rho) = rho 13449 := by
    simp only [seg16Canon2Bits]
    rw [hrecover]
    rw [powSumAcc_eq] at hacc
    simpa using hacc
  exact hrec

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
