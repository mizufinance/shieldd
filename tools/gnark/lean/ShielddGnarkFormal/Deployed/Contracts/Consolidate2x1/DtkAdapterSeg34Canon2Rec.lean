import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34Canon1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg34Canon2_recover (rho : Nat -> Seg34.F) (h : Seg34.relation rho) :
    recover_binary_zmod' (seg34Canon2Bits rho) = rho 32149 := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart9 at p9
  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r791, _, _, _, _, _, _, _, _⟩
  have hrecover := recover_ofFn_eq_recBits rho 32150 253
  have hacc : powSumAcc rho 0 1 32150 253 = rho 32149 := by
    unfold Seg34.relationRow791 Seg34.relationLc1 Seg34.relationLc1Part0 Seg34.relationLc1Part1 Seg34.relationLc1Part2 Seg34.relationLc1Part3 Seg34.relationLc1Part4 Seg34.relationLc1Part5 Seg34.relationLc1Part6 Seg34.relationLc1Part7 at r791
    simp only [powSumAcc]
    linear_combination r791
  have hrec : recover_binary_zmod' (seg34Canon2Bits rho) = rho 32149 := by
    simp only [seg34Canon2Bits]
    rw [hrecover]
    rw [powSumAcc_eq] at hacc
    simpa using hacc
  exact hrec

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
