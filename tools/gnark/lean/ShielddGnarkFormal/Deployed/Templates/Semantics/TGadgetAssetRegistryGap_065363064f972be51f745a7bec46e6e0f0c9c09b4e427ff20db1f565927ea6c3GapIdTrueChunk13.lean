import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapIdTrueChunk12

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapId_flag_step_chunk13 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ m, 208 ≤ m → m < 224 → gapIdFlag rho m = trueFactor (idBits rho) m * gapIdFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, p9,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart9 at p9
  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r775, r776, r777, r778, r779, r780, r781, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow775 at r775
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow776 at r776
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow777 at r777
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow778 at r778
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow779 at r779
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow780 at r780
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow781 at r781
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapIdFlag rho 208 = rho 616 from rfl, show gapIdFlag rho 209 = rho 616 from rfl]
    have hb : pmBit 208 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 208 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 209 = rho 616 from rfl, show gapIdFlag rho 210 = rho 616 from rfl]
    have hb : pmBit 209 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 209 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 210 = rho 616 from rfl, show gapIdFlag rho 211 = rho 615 from rfl]
    have hb : pmBit 210 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 210 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r781
  · rw [show gapIdFlag rho 211 = rho 615 from rfl, show gapIdFlag rho 212 = rho 614 from rfl]
    have hb : pmBit 211 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 211 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r780
  · rw [show gapIdFlag rho 212 = rho 614 from rfl, show gapIdFlag rho 213 = rho 614 from rfl]
    have hb : pmBit 212 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 212 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 213 = rho 614 from rfl, show gapIdFlag rho 214 = rho 613 from rfl]
    have hb : pmBit 213 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 213 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r779
  · rw [show gapIdFlag rho 214 = rho 613 from rfl, show gapIdFlag rho 215 = rho 613 from rfl]
    have hb : pmBit 214 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 214 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 215 = rho 613 from rfl, show gapIdFlag rho 216 = rho 613 from rfl]
    have hb : pmBit 215 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 215 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 216 = rho 613 from rfl, show gapIdFlag rho 217 = rho 613 from rfl]
    have hb : pmBit 216 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 216 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 217 = rho 613 from rfl, show gapIdFlag rho 218 = rho 612 from rfl]
    have hb : pmBit 217 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 217 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r778
  · rw [show gapIdFlag rho 218 = rho 612 from rfl, show gapIdFlag rho 219 = rho 612 from rfl]
    have hb : pmBit 218 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 218 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 219 = rho 612 from rfl, show gapIdFlag rho 220 = rho 611 from rfl]
    have hb : pmBit 219 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 219 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r777
  · rw [show gapIdFlag rho 220 = rho 611 from rfl, show gapIdFlag rho 221 = rho 610 from rfl]
    have hb : pmBit 220 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 220 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r776
  · rw [show gapIdFlag rho 221 = rho 610 from rfl, show gapIdFlag rho 222 = rho 610 from rfl]
    have hb : pmBit 221 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 221 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 222 = rho 610 from rfl, show gapIdFlag rho 223 = rho 610 from rfl]
    have hb : pmBit 222 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 222 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 223 = rho 610 from rfl, show gapIdFlag rho 224 = rho 609 from rfl]
    have hb : pmBit 223 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 223 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r775

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
