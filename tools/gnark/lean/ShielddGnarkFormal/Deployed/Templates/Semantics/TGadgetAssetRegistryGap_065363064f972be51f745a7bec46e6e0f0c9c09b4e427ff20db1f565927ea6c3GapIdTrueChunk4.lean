import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapIdTrueChunk3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapId_flag_step_chunk4 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ m, 64 ≤ m → m < 80 → gapIdFlag rho m = trueFactor (idBits rho) m * gapIdFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    p10, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart10 at p10
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r840, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow840 at r840
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapIdFlag rho 64 = rho 675 from rfl, show gapIdFlag rho 65 = rho 674 from rfl]
    have hb : pmBit 64 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 64 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r840
  · rw [show gapIdFlag rho 65 = rho 674 from rfl, show gapIdFlag rho 66 = rho 674 from rfl]
    have hb : pmBit 65 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 65 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 66 = rho 674 from rfl, show gapIdFlag rho 67 = rho 674 from rfl]
    have hb : pmBit 66 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 66 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 67 = rho 674 from rfl, show gapIdFlag rho 68 = rho 674 from rfl]
    have hb : pmBit 67 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 67 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 68 = rho 674 from rfl, show gapIdFlag rho 69 = rho 674 from rfl]
    have hb : pmBit 68 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 68 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 69 = rho 674 from rfl, show gapIdFlag rho 70 = rho 674 from rfl]
    have hb : pmBit 69 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 69 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 70 = rho 674 from rfl, show gapIdFlag rho 71 = rho 674 from rfl]
    have hb : pmBit 70 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 70 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 71 = rho 674 from rfl, show gapIdFlag rho 72 = rho 674 from rfl]
    have hb : pmBit 71 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 71 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 72 = rho 674 from rfl, show gapIdFlag rho 73 = rho 674 from rfl]
    have hb : pmBit 72 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 72 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 73 = rho 674 from rfl, show gapIdFlag rho 74 = rho 674 from rfl]
    have hb : pmBit 73 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 73 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 74 = rho 674 from rfl, show gapIdFlag rho 75 = rho 674 from rfl]
    have hb : pmBit 74 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 74 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 75 = rho 674 from rfl, show gapIdFlag rho 76 = rho 674 from rfl]
    have hb : pmBit 75 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 75 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 76 = rho 674 from rfl, show gapIdFlag rho 77 = rho 674 from rfl]
    have hb : pmBit 76 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 76 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 77 = rho 674 from rfl, show gapIdFlag rho 78 = rho 674 from rfl]
    have hb : pmBit 77 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 77 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 78 = rho 674 from rfl, show gapIdFlag rho 79 = rho 674 from rfl]
    have hb : pmBit 78 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 78 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 79 = rho 674 from rfl, show gapIdFlag rho 80 = rho 674 from rfl]
    have hb : pmBit 79 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 79 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
