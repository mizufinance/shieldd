import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapIdTrueChunk13

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapId_flag_step_chunk14 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ m, 224 ≤ m → m < 240 → gapIdFlag rho m = trueFactor (idBits rho) m * gapIdFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, p9,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart9 at p9
  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r766, r767, r768, r769, r770, r771, r772, r773, r774, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow766 at r766
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow767 at r767
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow768 at r768
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow769 at r769
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow770 at r770
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow771 at r771
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow772 at r772
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow773 at r773
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow774 at r774
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapIdFlag rho 224 = rho 609 from rfl, show gapIdFlag rho 225 = rho 609 from rfl]
    have hb : pmBit 224 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 224 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 225 = rho 609 from rfl, show gapIdFlag rho 226 = rho 608 from rfl]
    have hb : pmBit 225 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 225 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r774
  · rw [show gapIdFlag rho 226 = rho 608 from rfl, show gapIdFlag rho 227 = rho 607 from rfl]
    have hb : pmBit 226 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 226 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r773
  · rw [show gapIdFlag rho 227 = rho 607 from rfl, show gapIdFlag rho 228 = rho 606 from rfl]
    have hb : pmBit 227 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 227 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r772
  · rw [show gapIdFlag rho 228 = rho 606 from rfl, show gapIdFlag rho 229 = rho 605 from rfl]
    have hb : pmBit 228 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 228 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r771
  · rw [show gapIdFlag rho 229 = rho 605 from rfl, show gapIdFlag rho 230 = rho 605 from rfl]
    have hb : pmBit 229 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 229 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 230 = rho 605 from rfl, show gapIdFlag rho 231 = rho 604 from rfl]
    have hb : pmBit 230 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 230 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r770
  · rw [show gapIdFlag rho 231 = rho 604 from rfl, show gapIdFlag rho 232 = rho 604 from rfl]
    have hb : pmBit 231 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 231 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 232 = rho 604 from rfl, show gapIdFlag rho 233 = rho 603 from rfl]
    have hb : pmBit 232 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 232 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r769
  · rw [show gapIdFlag rho 233 = rho 603 from rfl, show gapIdFlag rho 234 = rho 603 from rfl]
    have hb : pmBit 233 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 233 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 234 = rho 603 from rfl, show gapIdFlag rho 235 = rho 602 from rfl]
    have hb : pmBit 234 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 234 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r768
  · rw [show gapIdFlag rho 235 = rho 602 from rfl, show gapIdFlag rho 236 = rho 602 from rfl]
    have hb : pmBit 235 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 235 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 236 = rho 602 from rfl, show gapIdFlag rho 237 = rho 602 from rfl]
    have hb : pmBit 236 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 236 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 237 = rho 602 from rfl, show gapIdFlag rho 238 = rho 601 from rfl]
    have hb : pmBit 237 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 237 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r767
  · rw [show gapIdFlag rho 238 = rho 601 from rfl, show gapIdFlag rho 239 = rho 600 from rfl]
    have hb : pmBit 238 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 238 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r766
  · rw [show gapIdFlag rho 239 = rho 600 from rfl, show gapIdFlag rho 240 = rho 600 from rfl]
    have hb : pmBit 239 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 239 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
