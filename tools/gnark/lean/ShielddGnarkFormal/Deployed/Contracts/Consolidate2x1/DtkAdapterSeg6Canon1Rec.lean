import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6Base
import ShielddGnarkFormal.CanonicalFqBitsDeployedKernel
import ShielddGnarkFormal.CanonicalFqBitsChainAcc
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.CompressAdapterCommon
import ShielddGnarkFormal.RvkToBinary

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg6Canon1_recover (rho : Nat -> Seg6.F) (h : Seg6.relation rho) :
    recover_binary_zmod' (seg6Canon1Bits rho) = rho 933 := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, p3, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r281, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrecover := recover_ofFn_eq_recBits rho 934 253
  have hacc : powSumAcc rho 0 1 934 253 = rho 933 := by
    unfold Seg6.relationRow281 Seg6.relationLc0 Seg6.relationLc0Part0 Seg6.relationLc0Part1 Seg6.relationLc0Part2 Seg6.relationLc0Part3 Seg6.relationLc0Part4 Seg6.relationLc0Part5 Seg6.relationLc0Part6 Seg6.relationLc0Part7 at r281
    simp only [powSumAcc]
    linear_combination r281
  have hrec : recover_binary_zmod' (seg6Canon1Bits rho) = rho 933 := by
    simp only [seg6Canon1Bits]
    rw [hrecover]
    rw [powSumAcc_eq] at hacc
    simpa using hacc
  exact hrec

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
