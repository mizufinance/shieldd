import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5Canon2CompareChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg5Canon2_compare_chunk7 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) :
    ∀ j, 112 ≤ j → j < 128 → pmBit j = false → (seg5Canon2Bits rho)[j]! * (1 - (seg5Canon2Bits rho)[j]! - seg5Canon2Flag rho (j + 1)) = 0 := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart11 at p11
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r945, r946, r947, r948, r949, r950, r951, r952, _, _, _, _, _, _, _⟩
  unfold Seg5.relationRow945 at r945
  unfold Seg5.relationRow946 at r946
  unfold Seg5.relationRow947 at r947
  unfold Seg5.relationRow948 at r948
  unfold Seg5.relationRow949 at r949
  unfold Seg5.relationRow950 at r950
  unfold Seg5.relationRow951 at r951
  unfold Seg5.relationRow952 at r952
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg5Canon2Bits_get rho 112 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 113 = rho 890 from rfl]
    linear_combination r952
  · have hb : pmBit 113 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon2Bits_get rho 114 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 115 = rho 889 from rfl]
    linear_combination r951
  · have hb : pmBit 115 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon2Bits_get rho 116 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 117 = rho 888 from rfl]
    linear_combination r950
  · have hb : pmBit 117 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon2Bits_get rho 118 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 119 = rho 887 from rfl]
    linear_combination r949
  · have hb : pmBit 119 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 120 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon2Bits_get rho 121 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 122 = rho 885 from rfl]
    linear_combination r948
  · erw [seg5Canon2Bits_get rho 122 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 123 = rho 885 from rfl]
    linear_combination r947
  · have hb : pmBit 123 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 124 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon2Bits_get rho 125 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 126 = rho 883 from rfl]
    linear_combination r946
  · have hb : pmBit 126 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon2Bits_get rho 127 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 128 = rho 882 from rfl]
    linear_combination r945

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
