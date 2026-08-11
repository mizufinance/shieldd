import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapNextTrueChunk12

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapNext_flag_step_chunk13 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ m, 208 ≤ m → m < 224 → gapNextFlag rho m = trueFactor (nextBits rho) m * gapNextFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart16 at p16
  rcases p16 with ⟨_, r1281, r1282, r1283, r1284, r1285, r1286, r1287, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1281 at r1281
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1282 at r1282
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1283 at r1283
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1284 at r1284
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1285 at r1285
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1286 at r1286
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1287 at r1287
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapNextFlag rho 208 = rho 956 from rfl, show gapNextFlag rho 209 = rho 956 from rfl]
    have hb : pmBit 208 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 208 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 209 = rho 956 from rfl, show gapNextFlag rho 210 = rho 956 from rfl]
    have hb : pmBit 209 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 209 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 210 = rho 956 from rfl, show gapNextFlag rho 211 = rho 955 from rfl]
    have hb : pmBit 210 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 210 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1287
  · rw [show gapNextFlag rho 211 = rho 955 from rfl, show gapNextFlag rho 212 = rho 954 from rfl]
    have hb : pmBit 211 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 211 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1286
  · rw [show gapNextFlag rho 212 = rho 954 from rfl, show gapNextFlag rho 213 = rho 954 from rfl]
    have hb : pmBit 212 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 212 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 213 = rho 954 from rfl, show gapNextFlag rho 214 = rho 953 from rfl]
    have hb : pmBit 213 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 213 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1285
  · rw [show gapNextFlag rho 214 = rho 953 from rfl, show gapNextFlag rho 215 = rho 953 from rfl]
    have hb : pmBit 214 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 214 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 215 = rho 953 from rfl, show gapNextFlag rho 216 = rho 953 from rfl]
    have hb : pmBit 215 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 215 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 216 = rho 953 from rfl, show gapNextFlag rho 217 = rho 953 from rfl]
    have hb : pmBit 216 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 216 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 217 = rho 953 from rfl, show gapNextFlag rho 218 = rho 952 from rfl]
    have hb : pmBit 217 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 217 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1284
  · rw [show gapNextFlag rho 218 = rho 952 from rfl, show gapNextFlag rho 219 = rho 952 from rfl]
    have hb : pmBit 218 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 218 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 219 = rho 952 from rfl, show gapNextFlag rho 220 = rho 951 from rfl]
    have hb : pmBit 219 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 219 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1283
  · rw [show gapNextFlag rho 220 = rho 951 from rfl, show gapNextFlag rho 221 = rho 950 from rfl]
    have hb : pmBit 220 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 220 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1282
  · rw [show gapNextFlag rho 221 = rho 950 from rfl, show gapNextFlag rho 222 = rho 950 from rfl]
    have hb : pmBit 221 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 221 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 222 = rho 950 from rfl, show gapNextFlag rho 223 = rho 950 from rfl]
    have hb : pmBit 222 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 222 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 223 = rho 950 from rfl, show gapNextFlag rho 224 = rho 949 from rfl]
    have hb : pmBit 223 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 223 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1281

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
