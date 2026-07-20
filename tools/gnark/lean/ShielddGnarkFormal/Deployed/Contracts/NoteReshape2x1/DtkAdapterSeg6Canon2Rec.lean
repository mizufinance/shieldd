import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6Canon1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg6Canon2_recover (rho : Nat -> Seg6.F) (h : Seg6.relation rho) :
    recover_binary_zmod' (seg6Canon2Bits rho) = rho 1269 := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, p9,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart9 at p9
  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r791, _, _, _, _, _, _, _, _⟩
  have hrecover := recover_ofFn_eq_recBits rho 1270 253
  have hacc : powSumAcc rho 0 1 1270 253 = rho 1269 := by
    unfold Seg6.relationRow791 Seg6.relationLc1 Seg6.relationLc1Part0 Seg6.relationLc1Part1 Seg6.relationLc1Part2 Seg6.relationLc1Part3 Seg6.relationLc1Part4 Seg6.relationLc1Part5 Seg6.relationLc1Part6 Seg6.relationLc1Part7 at r791
    simp only [powSumAcc]
    linear_combination r791
  have hrec : recover_binary_zmod' (seg6Canon2Bits rho) = rho 1269 := by
    simp only [seg6Canon2Bits]
    rw [hrecover]
    rw [powSumAcc_eq] at hacc
    simpa using hacc
  exact hrec

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
