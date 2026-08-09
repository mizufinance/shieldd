import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapIdTrueChunk10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapId_flag_step_chunk11 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ m, 176 ≤ m → m < 192 → gapIdFlag rho m = trueFactor (idBits rho) m * gapIdFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, p9,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart9 at p9
  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r790, r791, r792, r793, r794, r795, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow790 at r790
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow791 at r791
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow792 at r792
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow793 at r793
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow794 at r794
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow795 at r795
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapIdFlag rho 176 = rho 630 from rfl, show gapIdFlag rho 177 = rho 630 from rfl]
    have hb : pmBit 176 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 176 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 177 = rho 630 from rfl, show gapIdFlag rho 178 = rho 630 from rfl]
    have hb : pmBit 177 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 177 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 178 = rho 630 from rfl, show gapIdFlag rho 179 = rho 629 from rfl]
    have hb : pmBit 178 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 178 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r795
  · rw [show gapIdFlag rho 179 = rho 629 from rfl, show gapIdFlag rho 180 = rho 629 from rfl]
    have hb : pmBit 179 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 179 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 180 = rho 629 from rfl, show gapIdFlag rho 181 = rho 628 from rfl]
    have hb : pmBit 180 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 180 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r794
  · rw [show gapIdFlag rho 181 = rho 628 from rfl, show gapIdFlag rho 182 = rho 627 from rfl]
    have hb : pmBit 181 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 181 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r793
  · rw [show gapIdFlag rho 182 = rho 627 from rfl, show gapIdFlag rho 183 = rho 627 from rfl]
    have hb : pmBit 182 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 182 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 183 = rho 627 from rfl, show gapIdFlag rho 184 = rho 626 from rfl]
    have hb : pmBit 183 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 183 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r792
  · rw [show gapIdFlag rho 184 = rho 626 from rfl, show gapIdFlag rho 185 = rho 626 from rfl]
    have hb : pmBit 184 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 184 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 185 = rho 626 from rfl, show gapIdFlag rho 186 = rho 626 from rfl]
    have hb : pmBit 185 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 185 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 186 = rho 626 from rfl, show gapIdFlag rho 187 = rho 626 from rfl]
    have hb : pmBit 186 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 186 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 187 = rho 626 from rfl, show gapIdFlag rho 188 = rho 626 from rfl]
    have hb : pmBit 187 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 187 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 188 = rho 626 from rfl, show gapIdFlag rho 189 = rho 626 from rfl]
    have hb : pmBit 188 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 188 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 189 = rho 626 from rfl, show gapIdFlag rho 190 = rho 625 from rfl]
    have hb : pmBit 189 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 189 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r791
  · rw [show gapIdFlag rho 190 = rho 625 from rfl, show gapIdFlag rho 191 = rho 624 from rfl]
    have hb : pmBit 190 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 190 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r790
  · rw [show gapIdFlag rho 191 = rho 624 from rfl, show gapIdFlag rho 192 = rho 624 from rfl]
    have hb : pmBit 191 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 191 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
