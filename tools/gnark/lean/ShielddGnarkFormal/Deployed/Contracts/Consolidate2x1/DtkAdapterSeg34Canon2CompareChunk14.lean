import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34Canon2CompareChunk13

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg34Canon2_compare_chunk14 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) :
    ∀ j, 224 ≤ j → j < 240 → pmBit j = false → (seg34Canon2Bits rho)[j]! * (1 - (seg34Canon2Bits rho)[j]! - seg34Canon2Flag rho (j + 1)) = 0 := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart11 at p11
  rcases p11 with ⟨_, _, _, _, r884, r885, r886, r887, r888, r889, r890, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow884 at r884
  unfold Seg34.relationRow885 at r885
  unfold Seg34.relationRow886 at r886
  unfold Seg34.relationRow887 at r887
  unfold Seg34.relationRow888 at r888
  unfold Seg34.relationRow889 at r889
  unfold Seg34.relationRow890 at r890
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg34Canon2Bits_get rho 224 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon2Flag rho 225 = rho 32417 from rfl]
    linear_combination r890
  · have hb : pmBit 225 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 226 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 227 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 228 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg34Canon2Bits_get rho 229 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon2Flag rho 230 = rho 32413 from rfl]
    linear_combination r889
  · have hb : pmBit 230 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg34Canon2Bits_get rho 231 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon2Flag rho 232 = rho 32412 from rfl]
    linear_combination r888
  · have hb : pmBit 232 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg34Canon2Bits_get rho 233 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon2Flag rho 234 = rho 32411 from rfl]
    linear_combination r887
  · have hb : pmBit 234 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg34Canon2Bits_get rho 235 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon2Flag rho 236 = rho 32410 from rfl]
    linear_combination r886
  · erw [seg34Canon2Bits_get rho 236 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon2Flag rho 237 = rho 32410 from rfl]
    linear_combination r885
  · have hb : pmBit 237 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 238 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg34Canon2Bits_get rho 239 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon2Flag rho 240 = rho 32408 from rfl]
    linear_combination r884

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
