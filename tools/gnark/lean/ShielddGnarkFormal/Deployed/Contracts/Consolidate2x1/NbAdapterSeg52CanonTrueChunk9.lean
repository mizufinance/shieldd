import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52CanonTrueChunk8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg52Canon_flag_step_chunk9 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ m, 144 ≤ m → m < 160 → seg52CanonFlag rho m = trueFactor (seg52CanonBits rho) m * seg52CanonFlag rho (m + 1) := by
  unfold Seg52.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, p6, p7, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Seg52.relationPart6 at p6
  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r556, r557, r558, r559⟩
  unfold Seg52.relationPart7 at p7
  rcases p7 with ⟨r560, r561, r562, r563, r564, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg52.relationRow556 at r556
  unfold Seg52.relationRow557 at r557
  unfold Seg52.relationRow558 at r558
  unfold Seg52.relationRow559 at r559
  unfold Seg52.relationRow560 at r560
  unfold Seg52.relationRow561 at r561
  unfold Seg52.relationRow562 at r562
  unfold Seg52.relationRow563 at r563
  unfold Seg52.relationRow564 at r564
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg52CanonFlag rho 144 = rho 45123 from rfl, show seg52CanonFlag rho 145 = rho 45122 from rfl]
    have hb : pmBit 144 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 144 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r564
  · rw [show seg52CanonFlag rho 145 = rho 45122 from rfl, show seg52CanonFlag rho 146 = rho 45121 from rfl]
    have hb : pmBit 145 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 145 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r563
  · rw [show seg52CanonFlag rho 146 = rho 45121 from rfl, show seg52CanonFlag rho 147 = rho 45120 from rfl]
    have hb : pmBit 146 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 146 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r562
  · rw [show seg52CanonFlag rho 147 = rho 45120 from rfl, show seg52CanonFlag rho 148 = rho 45120 from rfl]
    have hb : pmBit 147 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 147 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 148 = rho 45120 from rfl, show seg52CanonFlag rho 149 = rho 45119 from rfl]
    have hb : pmBit 148 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 148 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r561
  · rw [show seg52CanonFlag rho 149 = rho 45119 from rfl, show seg52CanonFlag rho 150 = rho 45118 from rfl]
    have hb : pmBit 149 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 149 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r560
  · rw [show seg52CanonFlag rho 150 = rho 45118 from rfl, show seg52CanonFlag rho 151 = rho 45118 from rfl]
    have hb : pmBit 150 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 150 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 151 = rho 45118 from rfl, show seg52CanonFlag rho 152 = rho 45118 from rfl]
    have hb : pmBit 151 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 151 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 152 = rho 45118 from rfl, show seg52CanonFlag rho 153 = rho 45118 from rfl]
    have hb : pmBit 152 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 152 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 153 = rho 45118 from rfl, show seg52CanonFlag rho 154 = rho 45118 from rfl]
    have hb : pmBit 153 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 153 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 154 = rho 45118 from rfl, show seg52CanonFlag rho 155 = rho 45117 from rfl]
    have hb : pmBit 154 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 154 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r559
  · rw [show seg52CanonFlag rho 155 = rho 45117 from rfl, show seg52CanonFlag rho 156 = rho 45116 from rfl]
    have hb : pmBit 155 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 155 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r558
  · rw [show seg52CanonFlag rho 156 = rho 45116 from rfl, show seg52CanonFlag rho 157 = rho 45115 from rfl]
    have hb : pmBit 156 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 156 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r557
  · rw [show seg52CanonFlag rho 157 = rho 45115 from rfl, show seg52CanonFlag rho 158 = rho 45115 from rfl]
    have hb : pmBit 157 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 157 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 158 = rho 45115 from rfl, show seg52CanonFlag rho 159 = rho 45114 from rfl]
    have hb : pmBit 158 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 158 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r556
  · rw [show seg52CanonFlag rho 159 = rho 45114 from rfl, show seg52CanonFlag rho 160 = rho 45114 from rfl]
    have hb : pmBit 159 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 159 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
