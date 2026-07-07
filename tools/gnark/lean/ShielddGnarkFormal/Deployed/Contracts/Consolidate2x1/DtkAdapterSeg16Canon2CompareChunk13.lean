import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16Canon2CompareChunk12

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg16Canon2_compare_chunk13 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) :
    ∀ j, 208 ≤ j → j < 224 → pmBit j = false → (seg16Canon2Bits rho)[j]! * (1 - (seg16Canon2Bits rho)[j]! - seg16Canon2Flag rho (j + 1)) = 0 := by
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
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, r891, r892, r893, r894, r895, r896, r897, r898, r899, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow891 at r891
  unfold Seg16.relationRow892 at r892
  unfold Seg16.relationRow893 at r893
  unfold Seg16.relationRow894 at r894
  unfold Seg16.relationRow895 at r895
  unfold Seg16.relationRow896 at r896
  unfold Seg16.relationRow897 at r897
  unfold Seg16.relationRow898 at r898
  unfold Seg16.relationRow899 at r899
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg16Canon2Bits_get rho 208 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 209 = rho 13724 from rfl]
    linear_combination r899
  · erw [seg16Canon2Bits_get rho 209 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 210 = rho 13724 from rfl]
    linear_combination r898
  · have hb : pmBit 210 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 211 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon2Bits_get rho 212 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 213 = rho 13722 from rfl]
    linear_combination r897
  · have hb : pmBit 213 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon2Bits_get rho 214 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 215 = rho 13721 from rfl]
    linear_combination r896
  · erw [seg16Canon2Bits_get rho 215 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 216 = rho 13721 from rfl]
    linear_combination r895
  · erw [seg16Canon2Bits_get rho 216 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 217 = rho 13721 from rfl]
    linear_combination r894
  · have hb : pmBit 217 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon2Bits_get rho 218 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 219 = rho 13720 from rfl]
    linear_combination r893
  · have hb : pmBit 219 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 220 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon2Bits_get rho 221 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 222 = rho 13718 from rfl]
    linear_combination r892
  · erw [seg16Canon2Bits_get rho 222 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 223 = rho 13718 from rfl]
    linear_combination r891
  · have hb : pmBit 223 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
