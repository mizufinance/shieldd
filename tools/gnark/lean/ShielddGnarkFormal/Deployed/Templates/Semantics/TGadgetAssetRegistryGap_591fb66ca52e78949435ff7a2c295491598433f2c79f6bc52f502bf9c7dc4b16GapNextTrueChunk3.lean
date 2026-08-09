import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapNextTrueChunk2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapNext_flag_step_chunk3 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ m, 48 ≤ m → m < 64 → gapNextFlag rho m = trueFactor (nextBits rho) m * gapNextFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1347, r1348, r1349, r1350, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1347 at r1347
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1348 at r1348
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1349 at r1349
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1350 at r1350
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapNextFlag rho 48 = rho 1019 from rfl, show gapNextFlag rho 49 = rho 1018 from rfl]
    have hb : pmBit 48 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 48 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1350
  · rw [show gapNextFlag rho 49 = rho 1018 from rfl, show gapNextFlag rho 50 = rho 1018 from rfl]
    have hb : pmBit 49 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 49 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 50 = rho 1018 from rfl, show gapNextFlag rho 51 = rho 1018 from rfl]
    have hb : pmBit 50 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 50 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 51 = rho 1018 from rfl, show gapNextFlag rho 52 = rho 1018 from rfl]
    have hb : pmBit 51 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 51 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 52 = rho 1018 from rfl, show gapNextFlag rho 53 = rho 1017 from rfl]
    have hb : pmBit 52 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 52 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1349
  · rw [show gapNextFlag rho 53 = rho 1017 from rfl, show gapNextFlag rho 54 = rho 1017 from rfl]
    have hb : pmBit 53 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 53 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 54 = rho 1017 from rfl, show gapNextFlag rho 55 = rho 1017 from rfl]
    have hb : pmBit 54 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 54 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 55 = rho 1017 from rfl, show gapNextFlag rho 56 = rho 1017 from rfl]
    have hb : pmBit 55 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 55 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 56 = rho 1017 from rfl, show gapNextFlag rho 57 = rho 1017 from rfl]
    have hb : pmBit 56 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 56 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 57 = rho 1017 from rfl, show gapNextFlag rho 58 = rho 1016 from rfl]
    have hb : pmBit 57 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 57 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1348
  · rw [show gapNextFlag rho 58 = rho 1016 from rfl, show gapNextFlag rho 59 = rho 1016 from rfl]
    have hb : pmBit 58 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 58 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 59 = rho 1016 from rfl, show gapNextFlag rho 60 = rho 1015 from rfl]
    have hb : pmBit 59 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 59 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1347
  · rw [show gapNextFlag rho 60 = rho 1015 from rfl, show gapNextFlag rho 61 = rho 1015 from rfl]
    have hb : pmBit 60 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 60 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 61 = rho 1015 from rfl, show gapNextFlag rho 62 = rho 1015 from rfl]
    have hb : pmBit 61 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 61 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 62 = rho 1015 from rfl, show gapNextFlag rho 63 = rho 1015 from rfl]
    have hb : pmBit 62 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 62 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 63 = rho 1015 from rfl, show gapNextFlag rho 64 = rho 1015 from rfl]
    have hb : pmBit 63 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 63 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
