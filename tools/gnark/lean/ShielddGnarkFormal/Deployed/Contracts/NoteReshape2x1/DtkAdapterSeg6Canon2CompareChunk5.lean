import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6Canon2CompareChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg6Canon2_compare_chunk5 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) :
    ∀ j, 80 ≤ j → j < 96 → pmBit j = false → (seg6Canon2Bits rho)[j]! * (1 - (seg6Canon2Bits rho)[j]! - seg6Canon2Flag rho (j + 1)) = 0 := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, p11, p12, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart11 at p11
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r957, r958, r959⟩
  unfold Seg6.relationPart12 at p12
  rcases p12 with ⟨r960, r961, r962, r963, r964, r965, r966, r967, r968, r969, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg6.relationRow957 at r957
  unfold Seg6.relationRow958 at r958
  unfold Seg6.relationRow959 at r959
  unfold Seg6.relationRow960 at r960
  unfold Seg6.relationRow961 at r961
  unfold Seg6.relationRow962 at r962
  unfold Seg6.relationRow963 at r963
  unfold Seg6.relationRow964 at r964
  unfold Seg6.relationRow965 at r965
  unfold Seg6.relationRow966 at r966
  unfold Seg6.relationRow967 at r967
  unfold Seg6.relationRow968 at r968
  unfold Seg6.relationRow969 at r969
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg6Canon2Bits_get rho 80 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 81 = rho 1608 from rfl]
    linear_combination r969
  · erw [seg6Canon2Bits_get rho 81 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 82 = rho 1608 from rfl]
    linear_combination r968
  · erw [seg6Canon2Bits_get rho 82 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 83 = rho 1608 from rfl]
    linear_combination r967
  · erw [seg6Canon2Bits_get rho 83 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 84 = rho 1608 from rfl]
    linear_combination r966
  · erw [seg6Canon2Bits_get rho 84 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 85 = rho 1608 from rfl]
    linear_combination r965
  · erw [seg6Canon2Bits_get rho 85 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 86 = rho 1608 from rfl]
    linear_combination r964
  · erw [seg6Canon2Bits_get rho 86 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 87 = rho 1608 from rfl]
    linear_combination r963
  · erw [seg6Canon2Bits_get rho 87 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 88 = rho 1608 from rfl]
    linear_combination r962
  · erw [seg6Canon2Bits_get rho 88 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 89 = rho 1608 from rfl]
    linear_combination r961
  · erw [seg6Canon2Bits_get rho 89 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 90 = rho 1608 from rfl]
    linear_combination r960
  · erw [seg6Canon2Bits_get rho 90 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 91 = rho 1608 from rfl]
    linear_combination r959
  · erw [seg6Canon2Bits_get rho 91 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 92 = rho 1608 from rfl]
    linear_combination r958
  · have hb : pmBit 92 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon2Bits_get rho 93 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 94 = rho 1607 from rfl]
    linear_combination r957
  · have hb : pmBit 94 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 95 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
