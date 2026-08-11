import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLeafTrueChunk7

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapLeaf_flag_step_chunk8 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ m, 128 ≤ m → m < 144 → gapLeafFlag rho m = trueFactor (leafBits rho) m * gapLeafFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, p3, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r307, r308, r309, r310, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow307 at r307
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow308 at r308
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow309 at r309
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow310 at r310
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapLeafFlag rho 128 = rho 311 from rfl, show gapLeafFlag rho 129 = rho 310 from rfl]
    have hb : pmBit 128 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 128 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r310
  · rw [show gapLeafFlag rho 129 = rho 310 from rfl, show gapLeafFlag rho 130 = rho 310 from rfl]
    have hb : pmBit 129 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 129 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 130 = rho 310 from rfl, show gapLeafFlag rho 131 = rho 310 from rfl]
    have hb : pmBit 130 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 130 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 131 = rho 310 from rfl, show gapLeafFlag rho 132 = rho 310 from rfl]
    have hb : pmBit 131 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 131 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 132 = rho 310 from rfl, show gapLeafFlag rho 133 = rho 310 from rfl]
    have hb : pmBit 132 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 132 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 133 = rho 310 from rfl, show gapLeafFlag rho 134 = rho 310 from rfl]
    have hb : pmBit 133 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 133 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 134 = rho 310 from rfl, show gapLeafFlag rho 135 = rho 310 from rfl]
    have hb : pmBit 134 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 134 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 135 = rho 310 from rfl, show gapLeafFlag rho 136 = rho 310 from rfl]
    have hb : pmBit 135 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 135 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 136 = rho 310 from rfl, show gapLeafFlag rho 137 = rho 310 from rfl]
    have hb : pmBit 136 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 136 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 137 = rho 310 from rfl, show gapLeafFlag rho 138 = rho 310 from rfl]
    have hb : pmBit 137 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 137 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 138 = rho 310 from rfl, show gapLeafFlag rho 139 = rho 310 from rfl]
    have hb : pmBit 138 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 138 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 139 = rho 310 from rfl, show gapLeafFlag rho 140 = rho 310 from rfl]
    have hb : pmBit 139 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 139 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 140 = rho 310 from rfl, show gapLeafFlag rho 141 = rho 309 from rfl]
    have hb : pmBit 140 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 140 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r309
  · rw [show gapLeafFlag rho 141 = rho 309 from rfl, show gapLeafFlag rho 142 = rho 308 from rfl]
    have hb : pmBit 141 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 141 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r308
  · rw [show gapLeafFlag rho 142 = rho 308 from rfl, show gapLeafFlag rho 143 = rho 308 from rfl]
    have hb : pmBit 142 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 142 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 143 = rho 308 from rfl, show gapLeafFlag rho 144 = rho 307 from rfl]
    have hb : pmBit 143 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 143 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r307

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
