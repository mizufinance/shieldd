import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6Canon2CompareChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg6Canon2_compare_chunk7 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) :
    ∀ j, 112 ≤ j → j < 128 → pmBit j = false → (seg6Canon2Bits rho)[j]! * (1 - (seg6Canon2Bits rho)[j]! - seg6Canon2Flag rho (j + 1)) = 0 := by
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
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r945, r946, r947, r948, r949, r950, r951, r952, _, _, _, _, _, _, _⟩
  unfold Seg6.relationRow945 at r945
  unfold Seg6.relationRow946 at r946
  unfold Seg6.relationRow947 at r947
  unfold Seg6.relationRow948 at r948
  unfold Seg6.relationRow949 at r949
  unfold Seg6.relationRow950 at r950
  unfold Seg6.relationRow951 at r951
  unfold Seg6.relationRow952 at r952
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg6Canon2Bits_get rho 112 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 113 = rho 1593 from rfl]
    linear_combination r952
  · have hb : pmBit 113 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon2Bits_get rho 114 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 115 = rho 1592 from rfl]
    linear_combination r951
  · have hb : pmBit 115 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon2Bits_get rho 116 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 117 = rho 1591 from rfl]
    linear_combination r950
  · have hb : pmBit 117 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon2Bits_get rho 118 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 119 = rho 1590 from rfl]
    linear_combination r949
  · have hb : pmBit 119 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 120 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon2Bits_get rho 121 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 122 = rho 1588 from rfl]
    linear_combination r948
  · erw [seg6Canon2Bits_get rho 122 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 123 = rho 1588 from rfl]
    linear_combination r947
  · have hb : pmBit 123 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 124 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon2Bits_get rho 125 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 126 = rho 1586 from rfl]
    linear_combination r946
  · have hb : pmBit 126 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon2Bits_get rho 127 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 128 = rho 1585 from rfl]
    linear_combination r945

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
