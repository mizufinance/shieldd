import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapNextTrueChunk1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapNext_flag_step_chunk2 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ m, 32 ≤ m → m < 48 → gapNextFlag rho m = trueFactor (nextBits rho) m * gapNextFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1351, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1351 at r1351
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapNextFlag rho 32 = rho 1020 from rfl, show gapNextFlag rho 33 = rho 1020 from rfl]
    have hb : pmBit 32 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 32 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 33 = rho 1020 from rfl, show gapNextFlag rho 34 = rho 1020 from rfl]
    have hb : pmBit 33 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 33 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 34 = rho 1020 from rfl, show gapNextFlag rho 35 = rho 1020 from rfl]
    have hb : pmBit 34 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 34 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 35 = rho 1020 from rfl, show gapNextFlag rho 36 = rho 1020 from rfl]
    have hb : pmBit 35 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 35 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 36 = rho 1020 from rfl, show gapNextFlag rho 37 = rho 1020 from rfl]
    have hb : pmBit 36 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 36 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 37 = rho 1020 from rfl, show gapNextFlag rho 38 = rho 1020 from rfl]
    have hb : pmBit 37 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 37 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 38 = rho 1020 from rfl, show gapNextFlag rho 39 = rho 1020 from rfl]
    have hb : pmBit 38 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 38 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 39 = rho 1020 from rfl, show gapNextFlag rho 40 = rho 1020 from rfl]
    have hb : pmBit 39 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 39 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 40 = rho 1020 from rfl, show gapNextFlag rho 41 = rho 1020 from rfl]
    have hb : pmBit 40 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 40 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 41 = rho 1020 from rfl, show gapNextFlag rho 42 = rho 1020 from rfl]
    have hb : pmBit 41 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 41 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 42 = rho 1020 from rfl, show gapNextFlag rho 43 = rho 1020 from rfl]
    have hb : pmBit 42 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 42 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 43 = rho 1020 from rfl, show gapNextFlag rho 44 = rho 1020 from rfl]
    have hb : pmBit 43 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 43 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 44 = rho 1020 from rfl, show gapNextFlag rho 45 = rho 1020 from rfl]
    have hb : pmBit 44 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 44 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 45 = rho 1020 from rfl, show gapNextFlag rho 46 = rho 1020 from rfl]
    have hb : pmBit 45 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 45 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 46 = rho 1020 from rfl, show gapNextFlag rho 47 = rho 1020 from rfl]
    have hb : pmBit 46 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 46 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 47 = rho 1020 from rfl, show gapNextFlag rho 48 = rho 1019 from rfl]
    have hb : pmBit 47 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 47 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1351

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
