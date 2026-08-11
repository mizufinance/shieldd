import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapIdTrueChunk9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapId_flag_step_chunk10 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ m, 160 ≤ m → m < 176 → gapIdFlag rho m = trueFactor (idBits rho) m * gapIdFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, p9,
    p10, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart9 at p9
  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r796, r797, r798, r799⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart10 at p10
  rcases p10 with ⟨r800, r801, r802, r803, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow796 at r796
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow797 at r797
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow798 at r798
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow799 at r799
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow800 at r800
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow801 at r801
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow802 at r802
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow803 at r803
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapIdFlag rho 160 = rho 638 from rfl, show gapIdFlag rho 161 = rho 638 from rfl]
    have hb : pmBit 160 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 160 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 161 = rho 638 from rfl, show gapIdFlag rho 162 = rho 637 from rfl]
    have hb : pmBit 161 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 161 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r803
  · rw [show gapIdFlag rho 162 = rho 637 from rfl, show gapIdFlag rho 163 = rho 636 from rfl]
    have hb : pmBit 162 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 162 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r802
  · rw [show gapIdFlag rho 163 = rho 636 from rfl, show gapIdFlag rho 164 = rho 635 from rfl]
    have hb : pmBit 163 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 163 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r801
  · rw [show gapIdFlag rho 164 = rho 635 from rfl, show gapIdFlag rho 165 = rho 634 from rfl]
    have hb : pmBit 164 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 164 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r800
  · rw [show gapIdFlag rho 165 = rho 634 from rfl, show gapIdFlag rho 166 = rho 634 from rfl]
    have hb : pmBit 165 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 165 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 166 = rho 634 from rfl, show gapIdFlag rho 167 = rho 634 from rfl]
    have hb : pmBit 166 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 166 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 167 = rho 634 from rfl, show gapIdFlag rho 168 = rho 634 from rfl]
    have hb : pmBit 167 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 167 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 168 = rho 634 from rfl, show gapIdFlag rho 169 = rho 633 from rfl]
    have hb : pmBit 168 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 168 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r799
  · rw [show gapIdFlag rho 169 = rho 633 from rfl, show gapIdFlag rho 170 = rho 633 from rfl]
    have hb : pmBit 169 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 169 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 170 = rho 633 from rfl, show gapIdFlag rho 171 = rho 632 from rfl]
    have hb : pmBit 170 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 170 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r798
  · rw [show gapIdFlag rho 171 = rho 632 from rfl, show gapIdFlag rho 172 = rho 631 from rfl]
    have hb : pmBit 171 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 171 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r797
  · rw [show gapIdFlag rho 172 = rho 631 from rfl, show gapIdFlag rho 173 = rho 631 from rfl]
    have hb : pmBit 172 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 172 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 173 = rho 631 from rfl, show gapIdFlag rho 174 = rho 631 from rfl]
    have hb : pmBit 173 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 173 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 174 = rho 631 from rfl, show gapIdFlag rho 175 = rho 630 from rfl]
    have hb : pmBit 174 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 174 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r796
  · rw [show gapIdFlag rho 175 = rho 630 from rfl, show gapIdFlag rho 176 = rho 630 from rfl]
    have hb : pmBit 175 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 175 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
