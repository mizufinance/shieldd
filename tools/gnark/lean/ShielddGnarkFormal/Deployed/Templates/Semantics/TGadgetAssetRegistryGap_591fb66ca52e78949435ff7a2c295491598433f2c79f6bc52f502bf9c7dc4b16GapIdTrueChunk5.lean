import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapIdTrueChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapId_flag_step_chunk5 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ m, 80 ≤ m → m < 96 → gapIdFlag rho m = trueFactor (idBits rho) m * gapIdFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    p10, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart10 at p10
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r837, r838, r839, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow837 at r837
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow838 at r838
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow839 at r839
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapIdFlag rho 80 = rho 674 from rfl, show gapIdFlag rho 81 = rho 674 from rfl]
    have hb : pmBit 80 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 80 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 81 = rho 674 from rfl, show gapIdFlag rho 82 = rho 674 from rfl]
    have hb : pmBit 81 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 81 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 82 = rho 674 from rfl, show gapIdFlag rho 83 = rho 674 from rfl]
    have hb : pmBit 82 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 82 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 83 = rho 674 from rfl, show gapIdFlag rho 84 = rho 674 from rfl]
    have hb : pmBit 83 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 83 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 84 = rho 674 from rfl, show gapIdFlag rho 85 = rho 674 from rfl]
    have hb : pmBit 84 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 84 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 85 = rho 674 from rfl, show gapIdFlag rho 86 = rho 674 from rfl]
    have hb : pmBit 85 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 85 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 86 = rho 674 from rfl, show gapIdFlag rho 87 = rho 674 from rfl]
    have hb : pmBit 86 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 86 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 87 = rho 674 from rfl, show gapIdFlag rho 88 = rho 674 from rfl]
    have hb : pmBit 87 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 87 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 88 = rho 674 from rfl, show gapIdFlag rho 89 = rho 674 from rfl]
    have hb : pmBit 88 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 88 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 89 = rho 674 from rfl, show gapIdFlag rho 90 = rho 674 from rfl]
    have hb : pmBit 89 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 89 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 90 = rho 674 from rfl, show gapIdFlag rho 91 = rho 674 from rfl]
    have hb : pmBit 90 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 90 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 91 = rho 674 from rfl, show gapIdFlag rho 92 = rho 674 from rfl]
    have hb : pmBit 91 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 91 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 92 = rho 674 from rfl, show gapIdFlag rho 93 = rho 673 from rfl]
    have hb : pmBit 92 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 92 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r839
  · rw [show gapIdFlag rho 93 = rho 673 from rfl, show gapIdFlag rho 94 = rho 673 from rfl]
    have hb : pmBit 93 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 93 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 94 = rho 673 from rfl, show gapIdFlag rho 95 = rho 672 from rfl]
    have hb : pmBit 94 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 94 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r838
  · rw [show gapIdFlag rho 95 = rho 672 from rfl, show gapIdFlag rho 96 = rho 671 from rfl]
    have hb : pmBit 95 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 95 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r837

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
