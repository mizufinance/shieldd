import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLeafTrueChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapLeaf_flag_step_chunk7 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ m, 112 ≤ m → m < 128 → gapLeafFlag rho m = trueFactor (leafBits rho) m * gapLeafFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, p3, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r311, r312, r313, r314, r315, r316, r317, r318, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow311 at r311
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow312 at r312
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow313 at r313
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow314 at r314
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow315 at r315
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow316 at r316
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow317 at r317
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow318 at r318
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapLeafFlag rho 112 = rho 319 from rfl, show gapLeafFlag rho 113 = rho 319 from rfl]
    have hb : pmBit 112 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 112 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 113 = rho 319 from rfl, show gapLeafFlag rho 114 = rho 318 from rfl]
    have hb : pmBit 113 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 113 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r318
  · rw [show gapLeafFlag rho 114 = rho 318 from rfl, show gapLeafFlag rho 115 = rho 318 from rfl]
    have hb : pmBit 114 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 114 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 115 = rho 318 from rfl, show gapLeafFlag rho 116 = rho 317 from rfl]
    have hb : pmBit 115 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 115 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r317
  · rw [show gapLeafFlag rho 116 = rho 317 from rfl, show gapLeafFlag rho 117 = rho 317 from rfl]
    have hb : pmBit 116 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 116 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 117 = rho 317 from rfl, show gapLeafFlag rho 118 = rho 316 from rfl]
    have hb : pmBit 117 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 117 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r316
  · rw [show gapLeafFlag rho 118 = rho 316 from rfl, show gapLeafFlag rho 119 = rho 316 from rfl]
    have hb : pmBit 118 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 118 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 119 = rho 316 from rfl, show gapLeafFlag rho 120 = rho 315 from rfl]
    have hb : pmBit 119 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 119 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r315
  · rw [show gapLeafFlag rho 120 = rho 315 from rfl, show gapLeafFlag rho 121 = rho 314 from rfl]
    have hb : pmBit 120 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 120 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r314
  · rw [show gapLeafFlag rho 121 = rho 314 from rfl, show gapLeafFlag rho 122 = rho 314 from rfl]
    have hb : pmBit 121 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 121 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 122 = rho 314 from rfl, show gapLeafFlag rho 123 = rho 314 from rfl]
    have hb : pmBit 122 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 122 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 123 = rho 314 from rfl, show gapLeafFlag rho 124 = rho 313 from rfl]
    have hb : pmBit 123 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 123 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r313
  · rw [show gapLeafFlag rho 124 = rho 313 from rfl, show gapLeafFlag rho 125 = rho 312 from rfl]
    have hb : pmBit 124 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 124 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r312
  · rw [show gapLeafFlag rho 125 = rho 312 from rfl, show gapLeafFlag rho 126 = rho 312 from rfl]
    have hb : pmBit 125 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 125 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 126 = rho 312 from rfl, show gapLeafFlag rho 127 = rho 311 from rfl]
    have hb : pmBit 126 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 126 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r311
  · rw [show gapLeafFlag rho 127 = rho 311 from rfl, show gapLeafFlag rho 128 = rho 311 from rfl]
    have hb : pmBit 127 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 127 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
