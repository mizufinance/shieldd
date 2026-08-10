import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLeafTrueChunk8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapLeaf_flag_step_chunk9 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ m, 144 ≤ m → m < 160 → gapLeafFlag rho m = trueFactor (leafBits rho) m * gapLeafFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, p3, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r298, r299, r300, r301, r302, r303, r304, r305, r306, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow298 at r298
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow299 at r299
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow300 at r300
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow301 at r301
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow302 at r302
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow303 at r303
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow304 at r304
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow305 at r305
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow306 at r306
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapLeafFlag rho 144 = rho 307 from rfl, show gapLeafFlag rho 145 = rho 306 from rfl]
    have hb : pmBit 144 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 144 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r306
  · rw [show gapLeafFlag rho 145 = rho 306 from rfl, show gapLeafFlag rho 146 = rho 305 from rfl]
    have hb : pmBit 145 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 145 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r305
  · rw [show gapLeafFlag rho 146 = rho 305 from rfl, show gapLeafFlag rho 147 = rho 304 from rfl]
    have hb : pmBit 146 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 146 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r304
  · rw [show gapLeafFlag rho 147 = rho 304 from rfl, show gapLeafFlag rho 148 = rho 304 from rfl]
    have hb : pmBit 147 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 147 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 148 = rho 304 from rfl, show gapLeafFlag rho 149 = rho 303 from rfl]
    have hb : pmBit 148 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 148 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r303
  · rw [show gapLeafFlag rho 149 = rho 303 from rfl, show gapLeafFlag rho 150 = rho 302 from rfl]
    have hb : pmBit 149 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 149 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r302
  · rw [show gapLeafFlag rho 150 = rho 302 from rfl, show gapLeafFlag rho 151 = rho 302 from rfl]
    have hb : pmBit 150 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 150 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 151 = rho 302 from rfl, show gapLeafFlag rho 152 = rho 302 from rfl]
    have hb : pmBit 151 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 151 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 152 = rho 302 from rfl, show gapLeafFlag rho 153 = rho 302 from rfl]
    have hb : pmBit 152 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 152 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 153 = rho 302 from rfl, show gapLeafFlag rho 154 = rho 302 from rfl]
    have hb : pmBit 153 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 153 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 154 = rho 302 from rfl, show gapLeafFlag rho 155 = rho 301 from rfl]
    have hb : pmBit 154 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 154 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r301
  · rw [show gapLeafFlag rho 155 = rho 301 from rfl, show gapLeafFlag rho 156 = rho 300 from rfl]
    have hb : pmBit 155 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 155 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r300
  · rw [show gapLeafFlag rho 156 = rho 300 from rfl, show gapLeafFlag rho 157 = rho 299 from rfl]
    have hb : pmBit 156 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 156 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r299
  · rw [show gapLeafFlag rho 157 = rho 299 from rfl, show gapLeafFlag rho 158 = rho 299 from rfl]
    have hb : pmBit 157 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 157 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 158 = rho 299 from rfl, show gapLeafFlag rho 159 = rho 298 from rfl]
    have hb : pmBit 158 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 158 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r298
  · rw [show gapLeafFlag rho 159 = rho 298 from rfl, show gapLeafFlag rho 160 = rho 298 from rfl]
    have hb : pmBit 159 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 159 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
