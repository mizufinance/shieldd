import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52CanonTrueChunk10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg52Canon_flag_step_chunk11 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ m, 176 ≤ m → m < 192 → seg52CanonFlag rho m = trueFactor (seg52CanonBits rho) m * seg52CanonFlag rho (m + 1) := by
  unfold Seg52.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, p6, _, _, _,
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
  unfold Seg52.relationPart6 at p6
  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r542, r543, r544, r545, r546, r547, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg52.relationRow542 at r542
  unfold Seg52.relationRow543 at r543
  unfold Seg52.relationRow544 at r544
  unfold Seg52.relationRow545 at r545
  unfold Seg52.relationRow546 at r546
  unfold Seg52.relationRow547 at r547
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg52CanonFlag rho 176 = rho 45106 from rfl, show seg52CanonFlag rho 177 = rho 45106 from rfl]
    have hb : pmBit 176 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 176 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 177 = rho 45106 from rfl, show seg52CanonFlag rho 178 = rho 45106 from rfl]
    have hb : pmBit 177 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 177 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 178 = rho 45106 from rfl, show seg52CanonFlag rho 179 = rho 45105 from rfl]
    have hb : pmBit 178 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 178 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r547
  · rw [show seg52CanonFlag rho 179 = rho 45105 from rfl, show seg52CanonFlag rho 180 = rho 45105 from rfl]
    have hb : pmBit 179 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 179 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 180 = rho 45105 from rfl, show seg52CanonFlag rho 181 = rho 45104 from rfl]
    have hb : pmBit 180 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 180 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r546
  · rw [show seg52CanonFlag rho 181 = rho 45104 from rfl, show seg52CanonFlag rho 182 = rho 45103 from rfl]
    have hb : pmBit 181 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 181 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r545
  · rw [show seg52CanonFlag rho 182 = rho 45103 from rfl, show seg52CanonFlag rho 183 = rho 45103 from rfl]
    have hb : pmBit 182 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 182 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 183 = rho 45103 from rfl, show seg52CanonFlag rho 184 = rho 45102 from rfl]
    have hb : pmBit 183 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 183 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r544
  · rw [show seg52CanonFlag rho 184 = rho 45102 from rfl, show seg52CanonFlag rho 185 = rho 45102 from rfl]
    have hb : pmBit 184 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 184 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 185 = rho 45102 from rfl, show seg52CanonFlag rho 186 = rho 45102 from rfl]
    have hb : pmBit 185 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 185 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 186 = rho 45102 from rfl, show seg52CanonFlag rho 187 = rho 45102 from rfl]
    have hb : pmBit 186 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 186 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 187 = rho 45102 from rfl, show seg52CanonFlag rho 188 = rho 45102 from rfl]
    have hb : pmBit 187 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 187 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 188 = rho 45102 from rfl, show seg52CanonFlag rho 189 = rho 45102 from rfl]
    have hb : pmBit 188 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 188 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 189 = rho 45102 from rfl, show seg52CanonFlag rho 190 = rho 45101 from rfl]
    have hb : pmBit 189 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 189 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r543
  · rw [show seg52CanonFlag rho 190 = rho 45101 from rfl, show seg52CanonFlag rho 191 = rho 45100 from rfl]
    have hb : pmBit 190 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 190 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r542
  · rw [show seg52CanonFlag rho 191 = rho 45100 from rfl, show seg52CanonFlag rho 192 = rho 45100 from rfl]
    have hb : pmBit 191 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 191 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
