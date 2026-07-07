import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16Canon2CompareChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg16Canon2_compare_chunk7 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) :
    ∀ j, 112 ≤ j → j < 128 → pmBit j = false → (seg16Canon2Bits rho)[j]! * (1 - (seg16Canon2Bits rho)[j]! - seg16Canon2Flag rho (j + 1)) = 0 := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart11 at p11
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r945, r946, r947, r948, r949, r950, r951, r952, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow945 at r945
  unfold Seg16.relationRow946 at r946
  unfold Seg16.relationRow947 at r947
  unfold Seg16.relationRow948 at r948
  unfold Seg16.relationRow949 at r949
  unfold Seg16.relationRow950 at r950
  unfold Seg16.relationRow951 at r951
  unfold Seg16.relationRow952 at r952
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg16Canon2Bits_get rho 112 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 113 = rho 13767 from rfl]
    linear_combination r952
  · have hb : pmBit 113 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon2Bits_get rho 114 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 115 = rho 13766 from rfl]
    linear_combination r951
  · have hb : pmBit 115 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon2Bits_get rho 116 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 117 = rho 13765 from rfl]
    linear_combination r950
  · have hb : pmBit 117 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon2Bits_get rho 118 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 119 = rho 13764 from rfl]
    linear_combination r949
  · have hb : pmBit 119 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 120 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon2Bits_get rho 121 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 122 = rho 13762 from rfl]
    linear_combination r948
  · erw [seg16Canon2Bits_get rho 122 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 123 = rho 13762 from rfl]
    linear_combination r947
  · have hb : pmBit 123 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 124 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon2Bits_get rho 125 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 126 = rho 13760 from rfl]
    linear_combination r946
  · have hb : pmBit 126 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon2Bits_get rho 127 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 128 = rho 13759 from rfl]
    linear_combination r945

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
