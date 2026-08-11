import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapNextTrueChunk3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapNext_flag_step_chunk4 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ m, 64 ≤ m → m < 80 → gapNextFlag rho m = trueFactor (nextBits rho) m * gapNextFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1346, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1346 at r1346
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapNextFlag rho 64 = rho 1015 from rfl, show gapNextFlag rho 65 = rho 1014 from rfl]
    have hb : pmBit 64 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 64 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1346
  · rw [show gapNextFlag rho 65 = rho 1014 from rfl, show gapNextFlag rho 66 = rho 1014 from rfl]
    have hb : pmBit 65 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 65 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 66 = rho 1014 from rfl, show gapNextFlag rho 67 = rho 1014 from rfl]
    have hb : pmBit 66 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 66 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 67 = rho 1014 from rfl, show gapNextFlag rho 68 = rho 1014 from rfl]
    have hb : pmBit 67 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 67 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 68 = rho 1014 from rfl, show gapNextFlag rho 69 = rho 1014 from rfl]
    have hb : pmBit 68 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 68 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 69 = rho 1014 from rfl, show gapNextFlag rho 70 = rho 1014 from rfl]
    have hb : pmBit 69 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 69 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 70 = rho 1014 from rfl, show gapNextFlag rho 71 = rho 1014 from rfl]
    have hb : pmBit 70 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 70 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 71 = rho 1014 from rfl, show gapNextFlag rho 72 = rho 1014 from rfl]
    have hb : pmBit 71 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 71 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 72 = rho 1014 from rfl, show gapNextFlag rho 73 = rho 1014 from rfl]
    have hb : pmBit 72 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 72 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 73 = rho 1014 from rfl, show gapNextFlag rho 74 = rho 1014 from rfl]
    have hb : pmBit 73 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 73 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 74 = rho 1014 from rfl, show gapNextFlag rho 75 = rho 1014 from rfl]
    have hb : pmBit 74 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 74 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 75 = rho 1014 from rfl, show gapNextFlag rho 76 = rho 1014 from rfl]
    have hb : pmBit 75 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 75 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 76 = rho 1014 from rfl, show gapNextFlag rho 77 = rho 1014 from rfl]
    have hb : pmBit 76 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 76 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 77 = rho 1014 from rfl, show gapNextFlag rho 78 = rho 1014 from rfl]
    have hb : pmBit 77 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 77 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 78 = rho 1014 from rfl, show gapNextFlag rho 79 = rho 1014 from rfl]
    have hb : pmBit 78 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 78 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 79 = rho 1014 from rfl, show gapNextFlag rho 80 = rho 1014 from rfl]
    have hb : pmBit 79 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 79 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
