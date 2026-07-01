import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Canon2CompareChunk7

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg45Canon2_compare_chunk8 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) :
    ∀ j, 128 ≤ j → j < 144 → pmBit j = false → (seg45Canon2Bits rho)[j]! * (1 - (seg45Canon2Bits rho)[j]! - seg45Canon2Flag rho (j + 1)) = 0 := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, p11, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart11 at p11
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r933, r934, r935, r936, r937, r938, r939, r940, r941, r942, r943, r944, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow933 at r933
  unfold Seg45.relationRow934 at r934
  unfold Seg45.relationRow935 at r935
  unfold Seg45.relationRow936 at r936
  unfold Seg45.relationRow937 at r937
  unfold Seg45.relationRow938 at r938
  unfold Seg45.relationRow939 at r939
  unfold Seg45.relationRow940 at r940
  unfold Seg45.relationRow941 at r941
  unfold Seg45.relationRow942 at r942
  unfold Seg45.relationRow943 at r943
  unfold Seg45.relationRow944 at r944
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 128 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon2Bits_get rho 129 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 130 = rho 39414 from rfl]
    linear_combination r944
  · erw [seg45Canon2Bits_get rho 130 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 131 = rho 39414 from rfl]
    linear_combination r943
  · erw [seg45Canon2Bits_get rho 131 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 132 = rho 39414 from rfl]
    linear_combination r942
  · erw [seg45Canon2Bits_get rho 132 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 133 = rho 39414 from rfl]
    linear_combination r941
  · erw [seg45Canon2Bits_get rho 133 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 134 = rho 39414 from rfl]
    linear_combination r940
  · erw [seg45Canon2Bits_get rho 134 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 135 = rho 39414 from rfl]
    linear_combination r939
  · erw [seg45Canon2Bits_get rho 135 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 136 = rho 39414 from rfl]
    linear_combination r938
  · erw [seg45Canon2Bits_get rho 136 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 137 = rho 39414 from rfl]
    linear_combination r937
  · erw [seg45Canon2Bits_get rho 137 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 138 = rho 39414 from rfl]
    linear_combination r936
  · erw [seg45Canon2Bits_get rho 138 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 139 = rho 39414 from rfl]
    linear_combination r935
  · erw [seg45Canon2Bits_get rho 139 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 140 = rho 39414 from rfl]
    linear_combination r934
  · have hb : pmBit 140 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 141 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon2Bits_get rho 142 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 143 = rho 39412 from rfl]
    linear_combination r933
  · have hb : pmBit 143 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
