import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34Base
import ShielddGnarkFormal.CanonicalFqBitsDeployedKernel
import ShielddGnarkFormal.CanonicalFqBitsChainAcc
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.CompressAdapterCommon
import ShielddGnarkFormal.RvkToBinary

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg34Canon1_recover (rho : Nat -> Seg34.F) (h : Seg34.relation rho) :
    recover_binary_zmod' (seg34Canon1Bits rho) = rho 31807 := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r281, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrecover := recover_ofFn_eq_recBits rho 31808 253
  have hacc : powSumAcc rho 0 1 31808 253 = rho 31807 := by
    unfold Seg34.relationRow281 Seg34.relationLc0 Seg34.relationLc0Part0 Seg34.relationLc0Part1 Seg34.relationLc0Part2 Seg34.relationLc0Part3 Seg34.relationLc0Part4 Seg34.relationLc0Part5 Seg34.relationLc0Part6 Seg34.relationLc0Part7 at r281
    simp only [powSumAcc]
    linear_combination r281
  have hrec : recover_binary_zmod' (seg34Canon1Bits rho) = rho 31807 := by
    simp only [seg34Canon1Bits]
    rw [hrecover]
    rw [powSumAcc_eq] at hacc
    simpa using hacc
  exact hrec

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
