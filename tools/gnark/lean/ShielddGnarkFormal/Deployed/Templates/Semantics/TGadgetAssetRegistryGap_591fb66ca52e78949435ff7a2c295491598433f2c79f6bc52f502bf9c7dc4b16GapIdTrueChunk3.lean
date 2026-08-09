import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapIdTrueChunk2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapId_flag_step_chunk3 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ m, 48 ≤ m → m < 64 → gapIdFlag rho m = trueFactor (idBits rho) m * gapIdFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    p10, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart10 at p10
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r841, r842, r843, r844, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow841 at r841
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow842 at r842
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow843 at r843
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow844 at r844
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapIdFlag rho 48 = rho 679 from rfl, show gapIdFlag rho 49 = rho 678 from rfl]
    have hb : pmBit 48 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 48 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r844
  · rw [show gapIdFlag rho 49 = rho 678 from rfl, show gapIdFlag rho 50 = rho 678 from rfl]
    have hb : pmBit 49 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 49 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 50 = rho 678 from rfl, show gapIdFlag rho 51 = rho 678 from rfl]
    have hb : pmBit 50 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 50 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 51 = rho 678 from rfl, show gapIdFlag rho 52 = rho 678 from rfl]
    have hb : pmBit 51 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 51 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 52 = rho 678 from rfl, show gapIdFlag rho 53 = rho 677 from rfl]
    have hb : pmBit 52 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 52 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r843
  · rw [show gapIdFlag rho 53 = rho 677 from rfl, show gapIdFlag rho 54 = rho 677 from rfl]
    have hb : pmBit 53 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 53 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 54 = rho 677 from rfl, show gapIdFlag rho 55 = rho 677 from rfl]
    have hb : pmBit 54 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 54 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 55 = rho 677 from rfl, show gapIdFlag rho 56 = rho 677 from rfl]
    have hb : pmBit 55 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 55 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 56 = rho 677 from rfl, show gapIdFlag rho 57 = rho 677 from rfl]
    have hb : pmBit 56 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 56 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 57 = rho 677 from rfl, show gapIdFlag rho 58 = rho 676 from rfl]
    have hb : pmBit 57 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 57 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r842
  · rw [show gapIdFlag rho 58 = rho 676 from rfl, show gapIdFlag rho 59 = rho 676 from rfl]
    have hb : pmBit 58 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 58 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 59 = rho 676 from rfl, show gapIdFlag rho 60 = rho 675 from rfl]
    have hb : pmBit 59 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 59 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r841
  · rw [show gapIdFlag rho 60 = rho 675 from rfl, show gapIdFlag rho 61 = rho 675 from rfl]
    have hb : pmBit 60 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 60 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 61 = rho 675 from rfl, show gapIdFlag rho 62 = rho 675 from rfl]
    have hb : pmBit 61 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 61 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 62 = rho 675 from rfl, show gapIdFlag rho 63 = rho 675 from rfl]
    have hb : pmBit 62 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 62 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 63 = rho 675 from rfl, show gapIdFlag rho 64 = rho 675 from rfl]
    have hb : pmBit 63 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 63 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
