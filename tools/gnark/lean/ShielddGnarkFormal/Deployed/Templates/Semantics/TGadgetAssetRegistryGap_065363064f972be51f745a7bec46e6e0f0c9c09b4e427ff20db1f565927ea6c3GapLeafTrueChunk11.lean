import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLeafTrueChunk10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapLeaf_flag_step_chunk11 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ m, 176 ≤ m → m < 192 → gapLeafFlag rho m = trueFactor (leafBits rho) m * gapLeafFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, p3, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r284, r285, r286, r287, r288, r289, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow284 at r284
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow285 at r285
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow286 at r286
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow287 at r287
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow288 at r288
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow289 at r289
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapLeafFlag rho 176 = rho 290 from rfl, show gapLeafFlag rho 177 = rho 290 from rfl]
    have hb : pmBit 176 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 176 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 177 = rho 290 from rfl, show gapLeafFlag rho 178 = rho 290 from rfl]
    have hb : pmBit 177 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 177 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 178 = rho 290 from rfl, show gapLeafFlag rho 179 = rho 289 from rfl]
    have hb : pmBit 178 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 178 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r289
  · rw [show gapLeafFlag rho 179 = rho 289 from rfl, show gapLeafFlag rho 180 = rho 289 from rfl]
    have hb : pmBit 179 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 179 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 180 = rho 289 from rfl, show gapLeafFlag rho 181 = rho 288 from rfl]
    have hb : pmBit 180 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 180 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r288
  · rw [show gapLeafFlag rho 181 = rho 288 from rfl, show gapLeafFlag rho 182 = rho 287 from rfl]
    have hb : pmBit 181 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 181 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r287
  · rw [show gapLeafFlag rho 182 = rho 287 from rfl, show gapLeafFlag rho 183 = rho 287 from rfl]
    have hb : pmBit 182 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 182 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 183 = rho 287 from rfl, show gapLeafFlag rho 184 = rho 286 from rfl]
    have hb : pmBit 183 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 183 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r286
  · rw [show gapLeafFlag rho 184 = rho 286 from rfl, show gapLeafFlag rho 185 = rho 286 from rfl]
    have hb : pmBit 184 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 184 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 185 = rho 286 from rfl, show gapLeafFlag rho 186 = rho 286 from rfl]
    have hb : pmBit 185 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 185 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 186 = rho 286 from rfl, show gapLeafFlag rho 187 = rho 286 from rfl]
    have hb : pmBit 186 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 186 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 187 = rho 286 from rfl, show gapLeafFlag rho 188 = rho 286 from rfl]
    have hb : pmBit 187 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 187 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 188 = rho 286 from rfl, show gapLeafFlag rho 189 = rho 286 from rfl]
    have hb : pmBit 188 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 188 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 189 = rho 286 from rfl, show gapLeafFlag rho 190 = rho 285 from rfl]
    have hb : pmBit 189 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 189 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r285
  · rw [show gapLeafFlag rho 190 = rho 285 from rfl, show gapLeafFlag rho 191 = rho 284 from rfl]
    have hb : pmBit 190 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 190 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r284
  · rw [show gapLeafFlag rho 191 = rho 284 from rfl, show gapLeafFlag rho 192 = rho 284 from rfl]
    have hb : pmBit 191 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 191 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
