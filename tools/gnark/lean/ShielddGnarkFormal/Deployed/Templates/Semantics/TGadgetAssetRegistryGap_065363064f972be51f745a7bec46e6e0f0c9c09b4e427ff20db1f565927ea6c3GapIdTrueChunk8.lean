import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapIdTrueChunk7

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapId_flag_step_chunk8 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ m, 128 ≤ m → m < 144 → gapIdFlag rho m = trueFactor (idBits rho) m * gapIdFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    p10, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart10 at p10
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r813, r814, r815, r816, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow813 at r813
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow814 at r814
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow815 at r815
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow816 at r816
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapIdFlag rho 128 = rho 651 from rfl, show gapIdFlag rho 129 = rho 650 from rfl]
    have hb : pmBit 128 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 128 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r816
  · rw [show gapIdFlag rho 129 = rho 650 from rfl, show gapIdFlag rho 130 = rho 650 from rfl]
    have hb : pmBit 129 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 129 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 130 = rho 650 from rfl, show gapIdFlag rho 131 = rho 650 from rfl]
    have hb : pmBit 130 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 130 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 131 = rho 650 from rfl, show gapIdFlag rho 132 = rho 650 from rfl]
    have hb : pmBit 131 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 131 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 132 = rho 650 from rfl, show gapIdFlag rho 133 = rho 650 from rfl]
    have hb : pmBit 132 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 132 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 133 = rho 650 from rfl, show gapIdFlag rho 134 = rho 650 from rfl]
    have hb : pmBit 133 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 133 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 134 = rho 650 from rfl, show gapIdFlag rho 135 = rho 650 from rfl]
    have hb : pmBit 134 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 134 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 135 = rho 650 from rfl, show gapIdFlag rho 136 = rho 650 from rfl]
    have hb : pmBit 135 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 135 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 136 = rho 650 from rfl, show gapIdFlag rho 137 = rho 650 from rfl]
    have hb : pmBit 136 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 136 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 137 = rho 650 from rfl, show gapIdFlag rho 138 = rho 650 from rfl]
    have hb : pmBit 137 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 137 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 138 = rho 650 from rfl, show gapIdFlag rho 139 = rho 650 from rfl]
    have hb : pmBit 138 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 138 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 139 = rho 650 from rfl, show gapIdFlag rho 140 = rho 650 from rfl]
    have hb : pmBit 139 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 139 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 140 = rho 650 from rfl, show gapIdFlag rho 141 = rho 649 from rfl]
    have hb : pmBit 140 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 140 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r815
  · rw [show gapIdFlag rho 141 = rho 649 from rfl, show gapIdFlag rho 142 = rho 648 from rfl]
    have hb : pmBit 141 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 141 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r814
  · rw [show gapIdFlag rho 142 = rho 648 from rfl, show gapIdFlag rho 143 = rho 648 from rfl]
    have hb : pmBit 142 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 142 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 143 = rho 648 from rfl, show gapIdFlag rho 144 = rho 647 from rfl]
    have hb : pmBit 143 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 143 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r813

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
