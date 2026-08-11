import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapIdTrueChunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapId_flag_step_chunk15 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ m, 240 ≤ m → m < 253 → gapIdFlag rho m = trueFactor (idBits rho) m * gapIdFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, p9,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart9 at p9
  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r760, r761, r762, r763, r764, r765, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow760 at r760
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow761 at r761
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow762 at r762
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow763 at r763
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow764 at r764
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow765 at r765
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapIdFlag rho 240 = rho 600 from rfl, show gapIdFlag rho 241 = rho 599 from rfl]
    have hb : pmBit 240 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 240 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r765
  · rw [show gapIdFlag rho 241 = rho 599 from rfl, show gapIdFlag rho 242 = rho 598 from rfl]
    have hb : pmBit 241 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 241 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r764
  · rw [show gapIdFlag rho 242 = rho 598 from rfl, show gapIdFlag rho 243 = rho 598 from rfl]
    have hb : pmBit 242 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 242 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 243 = rho 598 from rfl, show gapIdFlag rho 244 = rho 597 from rfl]
    have hb : pmBit 243 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 243 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r763
  · rw [show gapIdFlag rho 244 = rho 597 from rfl, show gapIdFlag rho 245 = rho 597 from rfl]
    have hb : pmBit 244 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 244 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 245 = rho 597 from rfl, show gapIdFlag rho 246 = rho 596 from rfl]
    have hb : pmBit 245 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 245 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r762
  · rw [show gapIdFlag rho 246 = rho 596 from rfl, show gapIdFlag rho 247 = rho 596 from rfl]
    have hb : pmBit 246 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 246 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 247 = rho 596 from rfl, show gapIdFlag rho 248 = rho 595 from rfl]
    have hb : pmBit 247 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 247 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r761
  · rw [show gapIdFlag rho 248 = rho 595 from rfl, show gapIdFlag rho 249 = rho 595 from rfl]
    have hb : pmBit 248 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 248 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 249 = rho 595 from rfl, show gapIdFlag rho 250 = rho 593 from rfl]
    have hb : pmBit 249 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 249 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r760
  · rw [show gapIdFlag rho 250 = rho 593 from rfl, show gapIdFlag rho 251 = rho 593 from rfl]
    have hb : pmBit 250 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 250 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 251 = rho 593 from rfl, show gapIdFlag rho 252 = rho 593 from rfl]
    have hb : pmBit 251 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 251 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 252 = rho 593 from rfl, show gapIdFlag rho 253 = 1 from rfl]
    have hb : pmBit 252 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 252 (by omega)]
    simp only [Nat.reduceAdd]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
