import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5Base
import ShielddGnarkFormal.CanonicalFqBitsDeployedKernel
import ShielddGnarkFormal.CanonicalFqBitsChainAcc
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.CompressAdapterCommon
import ShielddGnarkFormal.RvkToBinary

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg5Canon1_recover (rho : Nat -> Seg5.F) (h : Seg5.relation rho) :
    recover_binary_zmod' (seg5Canon1Bits rho) = rho 230 := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, p3, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r281, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrecover := recover_ofFn_eq_recBits rho 231 253
  have hacc : powSumAcc rho 0 1 231 253 = rho 230 := by
    unfold Seg5.relationRow281 Seg5.relationLc0 Seg5.relationLc0Part0 Seg5.relationLc0Part1 Seg5.relationLc0Part2 Seg5.relationLc0Part3 Seg5.relationLc0Part4 Seg5.relationLc0Part5 Seg5.relationLc0Part6 Seg5.relationLc0Part7 at r281
    simp only [powSumAcc]
    linear_combination r281
  have hrec : recover_binary_zmod' (seg5Canon1Bits rho) = rho 230 := by
    simp only [seg5Canon1Bits]
    rw [hrecover]
    rw [powSumAcc_eq] at hacc
    simpa using hacc
  exact hrec

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
