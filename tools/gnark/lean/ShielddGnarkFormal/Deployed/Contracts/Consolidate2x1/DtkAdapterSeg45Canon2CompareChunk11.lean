import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Canon2CompareChunk10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg45Canon2_compare_chunk11 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) :
    ∀ j, 176 ≤ j → j < 192 → pmBit j = false → (seg45Canon2Bits rho)[j]! * (1 - (seg45Canon2Bits rho)[j]! - seg45Canon2Flag rho (j + 1)) = 0 := by
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
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r908, r909, r910, r911, r912, r913, r914, r915, r916, r917, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow908 at r908
  unfold Seg45.relationRow909 at r909
  unfold Seg45.relationRow910 at r910
  unfold Seg45.relationRow911 at r911
  unfold Seg45.relationRow912 at r912
  unfold Seg45.relationRow913 at r913
  unfold Seg45.relationRow914 at r914
  unfold Seg45.relationRow915 at r915
  unfold Seg45.relationRow916 at r916
  unfold Seg45.relationRow917 at r917
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg45Canon2Bits_get rho 176 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 177 = rho 39394 from rfl]
    linear_combination r917
  · erw [seg45Canon2Bits_get rho 177 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 178 = rho 39394 from rfl]
    linear_combination r916
  · have hb : pmBit 178 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon2Bits_get rho 179 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 180 = rho 39393 from rfl]
    linear_combination r915
  · have hb : pmBit 180 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 181 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon2Bits_get rho 182 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 183 = rho 39391 from rfl]
    linear_combination r914
  · have hb : pmBit 183 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon2Bits_get rho 184 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 185 = rho 39390 from rfl]
    linear_combination r913
  · erw [seg45Canon2Bits_get rho 185 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 186 = rho 39390 from rfl]
    linear_combination r912
  · erw [seg45Canon2Bits_get rho 186 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 187 = rho 39390 from rfl]
    linear_combination r911
  · erw [seg45Canon2Bits_get rho 187 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 188 = rho 39390 from rfl]
    linear_combination r910
  · erw [seg45Canon2Bits_get rho 188 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 189 = rho 39390 from rfl]
    linear_combination r909
  · have hb : pmBit 189 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 190 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon2Bits_get rho 191 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 192 = rho 39388 from rfl]
    linear_combination r908

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
