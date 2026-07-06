import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52CanonCompareChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg52Canon_compare_chunk12 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ j, 192 ≤ j → j < 208 → pmBit j = false → (seg52CanonBits rho)[j]! * (1 - (seg52CanonBits rho)[j]! - seg52CanonFlag rho (j + 1)) = 0 := by
  unfold Seg52.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, p7, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg52.relationPart7 at p7
  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r620, r621, r622, r623, r624, r625, r626, r627, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg52.relationRow620 at r620
  unfold Seg52.relationRow621 at r621
  unfold Seg52.relationRow622 at r622
  unfold Seg52.relationRow623 at r623
  unfold Seg52.relationRow624 at r624
  unfold Seg52.relationRow625 at r625
  unfold Seg52.relationRow626 at r626
  unfold Seg52.relationRow627 at r627
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg52CanonBits_get rho 192 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 193 = rho 45100 from rfl]
    linear_combination r627
  · have hb : pmBit 193 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 194 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 195 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 196 = rho 45098 from rfl]
    linear_combination r626
  · have hb : pmBit 196 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 197 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 198 = rho 45097 from rfl]
    linear_combination r625
  · have hb : pmBit 198 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 199 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 200 = rho 45096 from rfl]
    linear_combination r624
  · have hb : pmBit 200 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 201 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 202 = rho 45095 from rfl]
    linear_combination r623
  · have hb : pmBit 202 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 203 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 204 = rho 45094 from rfl]
    linear_combination r622
  · erw [seg52CanonBits_get rho 204 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 205 = rho 45094 from rfl]
    linear_combination r621
  · have hb : pmBit 205 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 206 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 207 = rho 45093 from rfl]
    linear_combination r620
  · have hb : pmBit 207 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
