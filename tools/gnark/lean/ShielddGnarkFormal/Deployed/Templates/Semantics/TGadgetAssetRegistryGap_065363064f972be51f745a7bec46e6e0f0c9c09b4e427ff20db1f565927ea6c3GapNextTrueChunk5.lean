import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapNextTrueChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapNext_flag_step_chunk5 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ m, 80 ≤ m → m < 96 → gapNextFlag rho m = trueFactor (nextBits rho) m * gapNextFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1343, r1344, r1345, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1343 at r1343
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1344 at r1344
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1345 at r1345
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapNextFlag rho 80 = rho 1014 from rfl, show gapNextFlag rho 81 = rho 1014 from rfl]
    have hb : pmBit 80 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 80 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 81 = rho 1014 from rfl, show gapNextFlag rho 82 = rho 1014 from rfl]
    have hb : pmBit 81 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 81 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 82 = rho 1014 from rfl, show gapNextFlag rho 83 = rho 1014 from rfl]
    have hb : pmBit 82 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 82 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 83 = rho 1014 from rfl, show gapNextFlag rho 84 = rho 1014 from rfl]
    have hb : pmBit 83 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 83 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 84 = rho 1014 from rfl, show gapNextFlag rho 85 = rho 1014 from rfl]
    have hb : pmBit 84 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 84 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 85 = rho 1014 from rfl, show gapNextFlag rho 86 = rho 1014 from rfl]
    have hb : pmBit 85 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 85 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 86 = rho 1014 from rfl, show gapNextFlag rho 87 = rho 1014 from rfl]
    have hb : pmBit 86 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 86 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 87 = rho 1014 from rfl, show gapNextFlag rho 88 = rho 1014 from rfl]
    have hb : pmBit 87 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 87 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 88 = rho 1014 from rfl, show gapNextFlag rho 89 = rho 1014 from rfl]
    have hb : pmBit 88 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 88 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 89 = rho 1014 from rfl, show gapNextFlag rho 90 = rho 1014 from rfl]
    have hb : pmBit 89 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 89 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 90 = rho 1014 from rfl, show gapNextFlag rho 91 = rho 1014 from rfl]
    have hb : pmBit 90 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 90 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 91 = rho 1014 from rfl, show gapNextFlag rho 92 = rho 1014 from rfl]
    have hb : pmBit 91 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 91 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 92 = rho 1014 from rfl, show gapNextFlag rho 93 = rho 1013 from rfl]
    have hb : pmBit 92 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 92 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1345
  · rw [show gapNextFlag rho 93 = rho 1013 from rfl, show gapNextFlag rho 94 = rho 1013 from rfl]
    have hb : pmBit 93 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 93 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 94 = rho 1013 from rfl, show gapNextFlag rho 95 = rho 1012 from rfl]
    have hb : pmBit 94 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 94 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1344
  · rw [show gapNextFlag rho 95 = rho 1012 from rfl, show gapNextFlag rho 96 = rho 1011 from rfl]
    have hb : pmBit 95 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 95 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1343

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
