import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Base
import ShielddGnarkFormal.CanonicalFqBitsDeployedKernel
import ShielddGnarkFormal.CanonicalFqBitsChainAcc
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.CompressAdapterCommon
import ShielddGnarkFormal.RvkToBinary

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg45Canon1_recover (rho : Nat -> Seg45.F) (h : Seg45.relation rho) :
    recover_binary_zmod' (seg45Canon1Bits rho) = rho 38763 := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r281, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrecover := recover_ofFn_eq_recBits rho 38764 253
  have hacc : powSumAcc rho 0 1 38764 253 = rho 38763 := by
    unfold Seg45.relationRow281 Seg45.relationLc0 Seg45.relationLc0Part0 Seg45.relationLc0Part1 Seg45.relationLc0Part2 Seg45.relationLc0Part3 Seg45.relationLc0Part4 Seg45.relationLc0Part5 Seg45.relationLc0Part6 Seg45.relationLc0Part7 at r281
    simp only [powSumAcc]
    linear_combination r281
  have hrec : recover_binary_zmod' (seg45Canon1Bits rho) = rho 38763 := by
    simp only [seg45Canon1Bits]
    rw [hrecover]
    rw [powSumAcc_eq] at hacc
    simpa using hacc
  exact hrec

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
