import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapNextTrueChunk7

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapNext_flag_step_chunk8 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ m, 128 ≤ m → m < 144 → gapNextFlag rho m = trueFactor (nextBits rho) m * gapNextFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1319, r1320, r1321, r1322, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1319 at r1319
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1320 at r1320
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1321 at r1321
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1322 at r1322
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapNextFlag rho 128 = rho 991 from rfl, show gapNextFlag rho 129 = rho 990 from rfl]
    have hb : pmBit 128 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 128 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1322
  · rw [show gapNextFlag rho 129 = rho 990 from rfl, show gapNextFlag rho 130 = rho 990 from rfl]
    have hb : pmBit 129 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 129 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 130 = rho 990 from rfl, show gapNextFlag rho 131 = rho 990 from rfl]
    have hb : pmBit 130 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 130 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 131 = rho 990 from rfl, show gapNextFlag rho 132 = rho 990 from rfl]
    have hb : pmBit 131 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 131 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 132 = rho 990 from rfl, show gapNextFlag rho 133 = rho 990 from rfl]
    have hb : pmBit 132 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 132 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 133 = rho 990 from rfl, show gapNextFlag rho 134 = rho 990 from rfl]
    have hb : pmBit 133 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 133 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 134 = rho 990 from rfl, show gapNextFlag rho 135 = rho 990 from rfl]
    have hb : pmBit 134 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 134 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 135 = rho 990 from rfl, show gapNextFlag rho 136 = rho 990 from rfl]
    have hb : pmBit 135 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 135 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 136 = rho 990 from rfl, show gapNextFlag rho 137 = rho 990 from rfl]
    have hb : pmBit 136 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 136 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 137 = rho 990 from rfl, show gapNextFlag rho 138 = rho 990 from rfl]
    have hb : pmBit 137 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 137 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 138 = rho 990 from rfl, show gapNextFlag rho 139 = rho 990 from rfl]
    have hb : pmBit 138 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 138 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 139 = rho 990 from rfl, show gapNextFlag rho 140 = rho 990 from rfl]
    have hb : pmBit 139 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 139 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 140 = rho 990 from rfl, show gapNextFlag rho 141 = rho 989 from rfl]
    have hb : pmBit 140 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 140 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1321
  · rw [show gapNextFlag rho 141 = rho 989 from rfl, show gapNextFlag rho 142 = rho 988 from rfl]
    have hb : pmBit 141 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 141 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1320
  · rw [show gapNextFlag rho 142 = rho 988 from rfl, show gapNextFlag rho 143 = rho 988 from rfl]
    have hb : pmBit 142 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 142 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 143 = rho 988 from rfl, show gapNextFlag rho 144 = rho 987 from rfl]
    have hb : pmBit 143 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 143 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1319

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
