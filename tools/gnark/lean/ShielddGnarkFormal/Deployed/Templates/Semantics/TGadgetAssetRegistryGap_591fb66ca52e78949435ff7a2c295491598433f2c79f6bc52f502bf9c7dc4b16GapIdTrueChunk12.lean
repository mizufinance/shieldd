import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapIdTrueChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapId_flag_step_chunk12 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ m, 192 ≤ m → m < 208 → gapIdFlag rho m = trueFactor (idBits rho) m * gapIdFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, p9,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart9 at p9
  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r782, r783, r784, r785, r786, r787, r788, r789, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow782 at r782
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow783 at r783
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow784 at r784
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow785 at r785
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow786 at r786
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow787 at r787
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow788 at r788
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow789 at r789
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapIdFlag rho 192 = rho 624 from rfl, show gapIdFlag rho 193 = rho 624 from rfl]
    have hb : pmBit 192 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 192 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 193 = rho 624 from rfl, show gapIdFlag rho 194 = rho 623 from rfl]
    have hb : pmBit 193 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 193 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r789
  · rw [show gapIdFlag rho 194 = rho 623 from rfl, show gapIdFlag rho 195 = rho 622 from rfl]
    have hb : pmBit 194 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 194 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r788
  · rw [show gapIdFlag rho 195 = rho 622 from rfl, show gapIdFlag rho 196 = rho 622 from rfl]
    have hb : pmBit 195 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 195 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 196 = rho 622 from rfl, show gapIdFlag rho 197 = rho 621 from rfl]
    have hb : pmBit 196 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 196 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r787
  · rw [show gapIdFlag rho 197 = rho 621 from rfl, show gapIdFlag rho 198 = rho 621 from rfl]
    have hb : pmBit 197 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 197 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 198 = rho 621 from rfl, show gapIdFlag rho 199 = rho 620 from rfl]
    have hb : pmBit 198 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 198 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r786
  · rw [show gapIdFlag rho 199 = rho 620 from rfl, show gapIdFlag rho 200 = rho 620 from rfl]
    have hb : pmBit 199 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 199 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 200 = rho 620 from rfl, show gapIdFlag rho 201 = rho 619 from rfl]
    have hb : pmBit 200 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 200 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r785
  · rw [show gapIdFlag rho 201 = rho 619 from rfl, show gapIdFlag rho 202 = rho 619 from rfl]
    have hb : pmBit 201 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 201 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 202 = rho 619 from rfl, show gapIdFlag rho 203 = rho 618 from rfl]
    have hb : pmBit 202 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 202 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r784
  · rw [show gapIdFlag rho 203 = rho 618 from rfl, show gapIdFlag rho 204 = rho 618 from rfl]
    have hb : pmBit 203 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 203 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 204 = rho 618 from rfl, show gapIdFlag rho 205 = rho 618 from rfl]
    have hb : pmBit 204 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 204 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 205 = rho 618 from rfl, show gapIdFlag rho 206 = rho 617 from rfl]
    have hb : pmBit 205 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 205 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r783
  · rw [show gapIdFlag rho 206 = rho 617 from rfl, show gapIdFlag rho 207 = rho 617 from rfl]
    have hb : pmBit 206 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 206 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 207 = rho 617 from rfl, show gapIdFlag rho 208 = rho 616 from rfl]
    have hb : pmBit 207 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 207 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r782

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
