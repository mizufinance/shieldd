import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLeafTrueChunk5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapLeaf_flag_step_chunk6 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ m, 96 ≤ m → m < 112 → gapLeafFlag rho m = trueFactor (leafBits rho) m * gapLeafFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, p3, p4, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r319⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart4 at p4
  rcases p4 with ⟨r320, r321, r322, r323, r324, r325, r326, r327, r328, r329, r330, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow319 at r319
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow320 at r320
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow321 at r321
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow322 at r322
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow323 at r323
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow324 at r324
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow325 at r325
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow326 at r326
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow327 at r327
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow328 at r328
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow329 at r329
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow330 at r330
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapLeafFlag rho 96 = rho 331 from rfl, show gapLeafFlag rho 97 = rho 331 from rfl]
    have hb : pmBit 96 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 96 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 97 = rho 331 from rfl, show gapLeafFlag rho 98 = rho 330 from rfl]
    have hb : pmBit 97 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 97 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r330
  · rw [show gapLeafFlag rho 98 = rho 330 from rfl, show gapLeafFlag rho 99 = rho 329 from rfl]
    have hb : pmBit 98 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 98 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r329
  · rw [show gapLeafFlag rho 99 = rho 329 from rfl, show gapLeafFlag rho 100 = rho 328 from rfl]
    have hb : pmBit 99 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 99 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r328
  · rw [show gapLeafFlag rho 100 = rho 328 from rfl, show gapLeafFlag rho 101 = rho 327 from rfl]
    have hb : pmBit 100 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 100 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r327
  · rw [show gapLeafFlag rho 101 = rho 327 from rfl, show gapLeafFlag rho 102 = rho 326 from rfl]
    have hb : pmBit 101 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 101 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r326
  · rw [show gapLeafFlag rho 102 = rho 326 from rfl, show gapLeafFlag rho 103 = rho 325 from rfl]
    have hb : pmBit 102 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 102 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r325
  · rw [show gapLeafFlag rho 103 = rho 325 from rfl, show gapLeafFlag rho 104 = rho 324 from rfl]
    have hb : pmBit 103 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 103 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r324
  · rw [show gapLeafFlag rho 104 = rho 324 from rfl, show gapLeafFlag rho 105 = rho 324 from rfl]
    have hb : pmBit 104 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 104 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 105 = rho 324 from rfl, show gapLeafFlag rho 106 = rho 323 from rfl]
    have hb : pmBit 105 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 105 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r323
  · rw [show gapLeafFlag rho 106 = rho 323 from rfl, show gapLeafFlag rho 107 = rho 322 from rfl]
    have hb : pmBit 106 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 106 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r322
  · rw [show gapLeafFlag rho 107 = rho 322 from rfl, show gapLeafFlag rho 108 = rho 322 from rfl]
    have hb : pmBit 107 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 107 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 108 = rho 322 from rfl, show gapLeafFlag rho 109 = rho 321 from rfl]
    have hb : pmBit 108 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 108 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r321
  · rw [show gapLeafFlag rho 109 = rho 321 from rfl, show gapLeafFlag rho 110 = rho 320 from rfl]
    have hb : pmBit 109 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 109 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r320
  · rw [show gapLeafFlag rho 110 = rho 320 from rfl, show gapLeafFlag rho 111 = rho 319 from rfl]
    have hb : pmBit 110 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 110 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r319
  · rw [show gapLeafFlag rho 111 = rho 319 from rfl, show gapLeafFlag rho 112 = rho 319 from rfl]
    have hb : pmBit 111 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 111 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
