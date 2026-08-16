import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapNextTrueChunk13

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapNext_flag_step_chunk14 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ m, 224 ≤ m → m < 240 → gapNextFlag rho m = trueFactor (nextBits rho) m * gapNextFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p15, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart15 at p15
  rcases p15 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1272, r1273, r1274, r1275, r1276, r1277, r1278, r1279⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart16 at p16
  rcases p16 with ⟨r1280, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1272 at r1272
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1273 at r1273
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1274 at r1274
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1275 at r1275
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1276 at r1276
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1277 at r1277
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1278 at r1278
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1279 at r1279
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1280 at r1280
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapNextFlag rho 224 = rho 949 from rfl, show gapNextFlag rho 225 = rho 949 from rfl]
    have hb : pmBit 224 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 224 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 225 = rho 949 from rfl, show gapNextFlag rho 226 = rho 948 from rfl]
    have hb : pmBit 225 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 225 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1280
  · rw [show gapNextFlag rho 226 = rho 948 from rfl, show gapNextFlag rho 227 = rho 947 from rfl]
    have hb : pmBit 226 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 226 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1279
  · rw [show gapNextFlag rho 227 = rho 947 from rfl, show gapNextFlag rho 228 = rho 946 from rfl]
    have hb : pmBit 227 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 227 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1278
  · rw [show gapNextFlag rho 228 = rho 946 from rfl, show gapNextFlag rho 229 = rho 945 from rfl]
    have hb : pmBit 228 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 228 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1277
  · rw [show gapNextFlag rho 229 = rho 945 from rfl, show gapNextFlag rho 230 = rho 945 from rfl]
    have hb : pmBit 229 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 229 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 230 = rho 945 from rfl, show gapNextFlag rho 231 = rho 944 from rfl]
    have hb : pmBit 230 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 230 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1276
  · rw [show gapNextFlag rho 231 = rho 944 from rfl, show gapNextFlag rho 232 = rho 944 from rfl]
    have hb : pmBit 231 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 231 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 232 = rho 944 from rfl, show gapNextFlag rho 233 = rho 943 from rfl]
    have hb : pmBit 232 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 232 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1275
  · rw [show gapNextFlag rho 233 = rho 943 from rfl, show gapNextFlag rho 234 = rho 943 from rfl]
    have hb : pmBit 233 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 233 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 234 = rho 943 from rfl, show gapNextFlag rho 235 = rho 942 from rfl]
    have hb : pmBit 234 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 234 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1274
  · rw [show gapNextFlag rho 235 = rho 942 from rfl, show gapNextFlag rho 236 = rho 942 from rfl]
    have hb : pmBit 235 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 235 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 236 = rho 942 from rfl, show gapNextFlag rho 237 = rho 942 from rfl]
    have hb : pmBit 236 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 236 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 237 = rho 942 from rfl, show gapNextFlag rho 238 = rho 941 from rfl]
    have hb : pmBit 237 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 237 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1273
  · rw [show gapNextFlag rho 238 = rho 941 from rfl, show gapNextFlag rho 239 = rho 940 from rfl]
    have hb : pmBit 238 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 238 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1272
  · rw [show gapNextFlag rho 239 = rho 940 from rfl, show gapNextFlag rho 240 = rho 940 from rfl]
    have hb : pmBit 239 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 239 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
