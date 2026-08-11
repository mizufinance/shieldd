import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapNextTrueChunk10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapNext_flag_step_chunk11 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ m, 176 ≤ m → m < 192 → gapNextFlag rho m = trueFactor (nextBits rho) m * gapNextFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1296, r1297, r1298, r1299, r1300, r1301, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1296 at r1296
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1297 at r1297
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1298 at r1298
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1299 at r1299
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1300 at r1300
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1301 at r1301
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapNextFlag rho 176 = rho 970 from rfl, show gapNextFlag rho 177 = rho 970 from rfl]
    have hb : pmBit 176 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 176 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 177 = rho 970 from rfl, show gapNextFlag rho 178 = rho 970 from rfl]
    have hb : pmBit 177 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 177 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 178 = rho 970 from rfl, show gapNextFlag rho 179 = rho 969 from rfl]
    have hb : pmBit 178 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 178 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1301
  · rw [show gapNextFlag rho 179 = rho 969 from rfl, show gapNextFlag rho 180 = rho 969 from rfl]
    have hb : pmBit 179 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 179 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 180 = rho 969 from rfl, show gapNextFlag rho 181 = rho 968 from rfl]
    have hb : pmBit 180 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 180 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1300
  · rw [show gapNextFlag rho 181 = rho 968 from rfl, show gapNextFlag rho 182 = rho 967 from rfl]
    have hb : pmBit 181 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 181 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1299
  · rw [show gapNextFlag rho 182 = rho 967 from rfl, show gapNextFlag rho 183 = rho 967 from rfl]
    have hb : pmBit 182 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 182 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 183 = rho 967 from rfl, show gapNextFlag rho 184 = rho 966 from rfl]
    have hb : pmBit 183 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 183 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1298
  · rw [show gapNextFlag rho 184 = rho 966 from rfl, show gapNextFlag rho 185 = rho 966 from rfl]
    have hb : pmBit 184 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 184 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 185 = rho 966 from rfl, show gapNextFlag rho 186 = rho 966 from rfl]
    have hb : pmBit 185 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 185 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 186 = rho 966 from rfl, show gapNextFlag rho 187 = rho 966 from rfl]
    have hb : pmBit 186 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 186 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 187 = rho 966 from rfl, show gapNextFlag rho 188 = rho 966 from rfl]
    have hb : pmBit 187 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 187 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 188 = rho 966 from rfl, show gapNextFlag rho 189 = rho 966 from rfl]
    have hb : pmBit 188 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 188 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 189 = rho 966 from rfl, show gapNextFlag rho 190 = rho 965 from rfl]
    have hb : pmBit 189 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 189 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1297
  · rw [show gapNextFlag rho 190 = rho 965 from rfl, show gapNextFlag rho 191 = rho 964 from rfl]
    have hb : pmBit 190 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 190 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1296
  · rw [show gapNextFlag rho 191 = rho 964 from rfl, show gapNextFlag rho 192 = rho 964 from rfl]
    have hb : pmBit 191 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 191 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
