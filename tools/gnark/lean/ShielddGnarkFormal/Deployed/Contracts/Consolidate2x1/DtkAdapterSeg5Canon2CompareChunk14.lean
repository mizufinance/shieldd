import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5Canon2CompareChunk13

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg5Canon2_compare_chunk14 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) :
    ∀ j, 224 ≤ j → j < 240 → pmBit j = false → (seg5Canon2Bits rho)[j]! * (1 - (seg5Canon2Bits rho)[j]! - seg5Canon2Flag rho (j + 1)) = 0 := by
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
  rcases p11 with ⟨_, _, _, _, r884, r885, r886, r887, r888, r889, r890, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg5.relationRow884 at r884
  unfold Seg5.relationRow885 at r885
  unfold Seg5.relationRow886 at r886
  unfold Seg5.relationRow887 at r887
  unfold Seg5.relationRow888 at r888
  unfold Seg5.relationRow889 at r889
  unfold Seg5.relationRow890 at r890
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg5Canon2Bits_get rho 224 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 225 = rho 840 from rfl]
    linear_combination r890
  · have hb : pmBit 225 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 226 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 227 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 228 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon2Bits_get rho 229 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 230 = rho 836 from rfl]
    linear_combination r889
  · have hb : pmBit 230 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon2Bits_get rho 231 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 232 = rho 835 from rfl]
    linear_combination r888
  · have hb : pmBit 232 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon2Bits_get rho 233 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 234 = rho 834 from rfl]
    linear_combination r887
  · have hb : pmBit 234 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon2Bits_get rho 235 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 236 = rho 833 from rfl]
    linear_combination r886
  · erw [seg5Canon2Bits_get rho 236 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 237 = rho 833 from rfl]
    linear_combination r885
  · have hb : pmBit 237 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 238 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon2Bits_get rho 239 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 240 = rho 831 from rfl]
    linear_combination r884

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
