import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16Canon2CompareChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg16Canon2_compare_chunk5 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) :
    ∀ j, 80 ≤ j → j < 96 → pmBit j = false → (seg16Canon2Bits rho)[j]! * (1 - (seg16Canon2Bits rho)[j]! - seg16Canon2Flag rho (j + 1)) = 0 := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, p11, p12, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart11 at p11
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r957, r958, r959⟩
  unfold Seg16.relationPart12 at p12
  rcases p12 with ⟨r960, r961, r962, r963, r964, r965, r966, r967, r968, r969, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow957 at r957
  unfold Seg16.relationRow958 at r958
  unfold Seg16.relationRow959 at r959
  unfold Seg16.relationRow960 at r960
  unfold Seg16.relationRow961 at r961
  unfold Seg16.relationRow962 at r962
  unfold Seg16.relationRow963 at r963
  unfold Seg16.relationRow964 at r964
  unfold Seg16.relationRow965 at r965
  unfold Seg16.relationRow966 at r966
  unfold Seg16.relationRow967 at r967
  unfold Seg16.relationRow968 at r968
  unfold Seg16.relationRow969 at r969
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg16Canon2Bits_get rho 80 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 81 = rho 13782 from rfl]
    linear_combination r969
  · erw [seg16Canon2Bits_get rho 81 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 82 = rho 13782 from rfl]
    linear_combination r968
  · erw [seg16Canon2Bits_get rho 82 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 83 = rho 13782 from rfl]
    linear_combination r967
  · erw [seg16Canon2Bits_get rho 83 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 84 = rho 13782 from rfl]
    linear_combination r966
  · erw [seg16Canon2Bits_get rho 84 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 85 = rho 13782 from rfl]
    linear_combination r965
  · erw [seg16Canon2Bits_get rho 85 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 86 = rho 13782 from rfl]
    linear_combination r964
  · erw [seg16Canon2Bits_get rho 86 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 87 = rho 13782 from rfl]
    linear_combination r963
  · erw [seg16Canon2Bits_get rho 87 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 88 = rho 13782 from rfl]
    linear_combination r962
  · erw [seg16Canon2Bits_get rho 88 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 89 = rho 13782 from rfl]
    linear_combination r961
  · erw [seg16Canon2Bits_get rho 89 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 90 = rho 13782 from rfl]
    linear_combination r960
  · erw [seg16Canon2Bits_get rho 90 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 91 = rho 13782 from rfl]
    linear_combination r959
  · erw [seg16Canon2Bits_get rho 91 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 92 = rho 13782 from rfl]
    linear_combination r958
  · have hb : pmBit 92 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon2Bits_get rho 93 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 94 = rho 13781 from rfl]
    linear_combination r957
  · have hb : pmBit 94 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 95 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
