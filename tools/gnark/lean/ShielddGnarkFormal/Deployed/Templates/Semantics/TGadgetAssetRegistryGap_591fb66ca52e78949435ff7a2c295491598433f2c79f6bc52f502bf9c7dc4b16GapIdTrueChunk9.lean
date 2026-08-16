import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapIdTrueChunk8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapId_flag_step_chunk9 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ m, 144 ≤ m → m < 160 → gapIdFlag rho m = trueFactor (idBits rho) m * gapIdFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    p10, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart10 at p10
  rcases p10 with ⟨_, _, _, _, r804, r805, r806, r807, r808, r809, r810, r811, r812, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow804 at r804
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow805 at r805
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow806 at r806
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow807 at r807
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow808 at r808
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow809 at r809
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow810 at r810
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow811 at r811
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow812 at r812
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapIdFlag rho 144 = rho 647 from rfl, show gapIdFlag rho 145 = rho 646 from rfl]
    have hb : pmBit 144 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 144 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r812
  · rw [show gapIdFlag rho 145 = rho 646 from rfl, show gapIdFlag rho 146 = rho 645 from rfl]
    have hb : pmBit 145 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 145 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r811
  · rw [show gapIdFlag rho 146 = rho 645 from rfl, show gapIdFlag rho 147 = rho 644 from rfl]
    have hb : pmBit 146 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 146 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r810
  · rw [show gapIdFlag rho 147 = rho 644 from rfl, show gapIdFlag rho 148 = rho 644 from rfl]
    have hb : pmBit 147 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 147 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 148 = rho 644 from rfl, show gapIdFlag rho 149 = rho 643 from rfl]
    have hb : pmBit 148 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 148 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r809
  · rw [show gapIdFlag rho 149 = rho 643 from rfl, show gapIdFlag rho 150 = rho 642 from rfl]
    have hb : pmBit 149 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 149 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r808
  · rw [show gapIdFlag rho 150 = rho 642 from rfl, show gapIdFlag rho 151 = rho 642 from rfl]
    have hb : pmBit 150 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 150 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 151 = rho 642 from rfl, show gapIdFlag rho 152 = rho 642 from rfl]
    have hb : pmBit 151 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 151 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 152 = rho 642 from rfl, show gapIdFlag rho 153 = rho 642 from rfl]
    have hb : pmBit 152 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 152 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 153 = rho 642 from rfl, show gapIdFlag rho 154 = rho 642 from rfl]
    have hb : pmBit 153 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 153 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 154 = rho 642 from rfl, show gapIdFlag rho 155 = rho 641 from rfl]
    have hb : pmBit 154 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 154 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r807
  · rw [show gapIdFlag rho 155 = rho 641 from rfl, show gapIdFlag rho 156 = rho 640 from rfl]
    have hb : pmBit 155 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 155 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r806
  · rw [show gapIdFlag rho 156 = rho 640 from rfl, show gapIdFlag rho 157 = rho 639 from rfl]
    have hb : pmBit 156 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 156 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r805
  · rw [show gapIdFlag rho 157 = rho 639 from rfl, show gapIdFlag rho 158 = rho 639 from rfl]
    have hb : pmBit 157 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 157 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 158 = rho 639 from rfl, show gapIdFlag rho 159 = rho 638 from rfl]
    have hb : pmBit 158 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 158 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r804
  · rw [show gapIdFlag rho 159 = rho 638 from rfl, show gapIdFlag rho 160 = rho 638 from rfl]
    have hb : pmBit 159 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 159 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
