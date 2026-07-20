import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6Canon2CompareChunk5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg6Canon2_compare_chunk6 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) :
    ∀ j, 96 ≤ j → j < 112 → pmBit j = false → (seg6Canon2Bits rho)[j]! * (1 - (seg6Canon2Bits rho)[j]! - seg6Canon2Flag rho (j + 1)) = 0 := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, p11, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart11 at p11
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r953, r954, r955, r956, _, _, _⟩
  unfold Seg6.relationRow953 at r953
  unfold Seg6.relationRow954 at r954
  unfold Seg6.relationRow955 at r955
  unfold Seg6.relationRow956 at r956
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg6Canon2Bits_get rho 96 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 97 = rho 1599 from rfl]
    linear_combination r956
  · have hb : pmBit 97 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 98 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 99 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 100 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 101 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 102 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 103 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon2Bits_get rho 104 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 105 = rho 1592 from rfl]
    linear_combination r955
  · have hb : pmBit 105 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 106 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon2Bits_get rho 107 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 108 = rho 1590 from rfl]
    linear_combination r954
  · have hb : pmBit 108 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 109 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 110 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon2Bits_get rho 111 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 112 = rho 1587 from rfl]
    linear_combination r953

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
