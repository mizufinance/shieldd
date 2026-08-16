import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapNextTrueChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapNext_flag_step_chunk12 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ m, 192 ≤ m → m < 208 → gapNextFlag rho m = trueFactor (nextBits rho) m * gapNextFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, r1288, r1289, r1290, r1291, r1292, r1293, r1294, r1295, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1288 at r1288
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1289 at r1289
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1290 at r1290
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1291 at r1291
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1292 at r1292
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1293 at r1293
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1294 at r1294
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1295 at r1295
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapNextFlag rho 192 = rho 964 from rfl, show gapNextFlag rho 193 = rho 964 from rfl]
    have hb : pmBit 192 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 192 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 193 = rho 964 from rfl, show gapNextFlag rho 194 = rho 963 from rfl]
    have hb : pmBit 193 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 193 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1295
  · rw [show gapNextFlag rho 194 = rho 963 from rfl, show gapNextFlag rho 195 = rho 962 from rfl]
    have hb : pmBit 194 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 194 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1294
  · rw [show gapNextFlag rho 195 = rho 962 from rfl, show gapNextFlag rho 196 = rho 962 from rfl]
    have hb : pmBit 195 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 195 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 196 = rho 962 from rfl, show gapNextFlag rho 197 = rho 961 from rfl]
    have hb : pmBit 196 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 196 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1293
  · rw [show gapNextFlag rho 197 = rho 961 from rfl, show gapNextFlag rho 198 = rho 961 from rfl]
    have hb : pmBit 197 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 197 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 198 = rho 961 from rfl, show gapNextFlag rho 199 = rho 960 from rfl]
    have hb : pmBit 198 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 198 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1292
  · rw [show gapNextFlag rho 199 = rho 960 from rfl, show gapNextFlag rho 200 = rho 960 from rfl]
    have hb : pmBit 199 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 199 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 200 = rho 960 from rfl, show gapNextFlag rho 201 = rho 959 from rfl]
    have hb : pmBit 200 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 200 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1291
  · rw [show gapNextFlag rho 201 = rho 959 from rfl, show gapNextFlag rho 202 = rho 959 from rfl]
    have hb : pmBit 201 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 201 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 202 = rho 959 from rfl, show gapNextFlag rho 203 = rho 958 from rfl]
    have hb : pmBit 202 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 202 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1290
  · rw [show gapNextFlag rho 203 = rho 958 from rfl, show gapNextFlag rho 204 = rho 958 from rfl]
    have hb : pmBit 203 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 203 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 204 = rho 958 from rfl, show gapNextFlag rho 205 = rho 958 from rfl]
    have hb : pmBit 204 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 204 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 205 = rho 958 from rfl, show gapNextFlag rho 206 = rho 957 from rfl]
    have hb : pmBit 205 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 205 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1289
  · rw [show gapNextFlag rho 206 = rho 957 from rfl, show gapNextFlag rho 207 = rho 957 from rfl]
    have hb : pmBit 206 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 206 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 207 = rho 957 from rfl, show gapNextFlag rho 208 = rho 956 from rfl]
    have hb : pmBit 207 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 207 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1288

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
