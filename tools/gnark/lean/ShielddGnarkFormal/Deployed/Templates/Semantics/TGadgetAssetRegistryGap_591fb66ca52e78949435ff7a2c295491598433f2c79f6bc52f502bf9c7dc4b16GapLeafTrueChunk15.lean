import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLeafTrueChunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapLeaf_flag_step_chunk15 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ m, 240 ≤ m → m < 253 → gapLeafFlag rho m = trueFactor (leafBits rho) m * gapLeafFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, p3, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r254, r255, r256, r257, r258, r259, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow254 at r254
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow255 at r255
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow256 at r256
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow257 at r257
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow258 at r258
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow259 at r259
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapLeafFlag rho 240 = rho 260 from rfl, show gapLeafFlag rho 241 = rho 259 from rfl]
    have hb : pmBit 240 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 240 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r259
  · rw [show gapLeafFlag rho 241 = rho 259 from rfl, show gapLeafFlag rho 242 = rho 258 from rfl]
    have hb : pmBit 241 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 241 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r258
  · rw [show gapLeafFlag rho 242 = rho 258 from rfl, show gapLeafFlag rho 243 = rho 258 from rfl]
    have hb : pmBit 242 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 242 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 243 = rho 258 from rfl, show gapLeafFlag rho 244 = rho 257 from rfl]
    have hb : pmBit 243 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 243 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r257
  · rw [show gapLeafFlag rho 244 = rho 257 from rfl, show gapLeafFlag rho 245 = rho 257 from rfl]
    have hb : pmBit 244 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 244 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 245 = rho 257 from rfl, show gapLeafFlag rho 246 = rho 256 from rfl]
    have hb : pmBit 245 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 245 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r256
  · rw [show gapLeafFlag rho 246 = rho 256 from rfl, show gapLeafFlag rho 247 = rho 256 from rfl]
    have hb : pmBit 246 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 246 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 247 = rho 256 from rfl, show gapLeafFlag rho 248 = rho 255 from rfl]
    have hb : pmBit 247 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 247 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r255
  · rw [show gapLeafFlag rho 248 = rho 255 from rfl, show gapLeafFlag rho 249 = rho 255 from rfl]
    have hb : pmBit 248 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 248 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 249 = rho 255 from rfl, show gapLeafFlag rho 250 = rho 253 from rfl]
    have hb : pmBit 249 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 249 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r254
  · rw [show gapLeafFlag rho 250 = rho 253 from rfl, show gapLeafFlag rho 251 = rho 253 from rfl]
    have hb : pmBit 250 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 250 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 251 = rho 253 from rfl, show gapLeafFlag rho 252 = rho 253 from rfl]
    have hb : pmBit 251 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 251 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 252 = rho 253 from rfl, show gapLeafFlag rho 253 = 1 from rfl]
    have hb : pmBit 252 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 252 (by omega)]
    simp only [Nat.reduceAdd]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
