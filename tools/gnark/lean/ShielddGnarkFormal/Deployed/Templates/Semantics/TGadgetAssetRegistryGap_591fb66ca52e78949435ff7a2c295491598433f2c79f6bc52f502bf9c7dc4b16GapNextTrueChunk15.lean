import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapNextTrueChunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapNext_flag_step_chunk15 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ m, 240 ≤ m → m < 253 → gapNextFlag rho m = trueFactor (nextBits rho) m * gapNextFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p15, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart15 at p15
  rcases p15 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1266, r1267, r1268, r1269, r1270, r1271, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1266 at r1266
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1267 at r1267
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1268 at r1268
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1269 at r1269
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1270 at r1270
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1271 at r1271
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapNextFlag rho 240 = rho 940 from rfl, show gapNextFlag rho 241 = rho 939 from rfl]
    have hb : pmBit 240 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 240 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1271
  · rw [show gapNextFlag rho 241 = rho 939 from rfl, show gapNextFlag rho 242 = rho 938 from rfl]
    have hb : pmBit 241 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 241 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1270
  · rw [show gapNextFlag rho 242 = rho 938 from rfl, show gapNextFlag rho 243 = rho 938 from rfl]
    have hb : pmBit 242 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 242 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 243 = rho 938 from rfl, show gapNextFlag rho 244 = rho 937 from rfl]
    have hb : pmBit 243 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 243 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1269
  · rw [show gapNextFlag rho 244 = rho 937 from rfl, show gapNextFlag rho 245 = rho 937 from rfl]
    have hb : pmBit 244 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 244 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 245 = rho 937 from rfl, show gapNextFlag rho 246 = rho 936 from rfl]
    have hb : pmBit 245 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 245 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1268
  · rw [show gapNextFlag rho 246 = rho 936 from rfl, show gapNextFlag rho 247 = rho 936 from rfl]
    have hb : pmBit 246 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 246 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 247 = rho 936 from rfl, show gapNextFlag rho 248 = rho 935 from rfl]
    have hb : pmBit 247 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 247 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1267
  · rw [show gapNextFlag rho 248 = rho 935 from rfl, show gapNextFlag rho 249 = rho 935 from rfl]
    have hb : pmBit 248 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 248 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 249 = rho 935 from rfl, show gapNextFlag rho 250 = rho 933 from rfl]
    have hb : pmBit 249 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 249 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1266
  · rw [show gapNextFlag rho 250 = rho 933 from rfl, show gapNextFlag rho 251 = rho 933 from rfl]
    have hb : pmBit 250 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 250 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 251 = rho 933 from rfl, show gapNextFlag rho 252 = rho 933 from rfl]
    have hb : pmBit 251 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 251 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 252 = rho 933 from rfl, show gapNextFlag rho 253 = 1 from rfl]
    have hb : pmBit 252 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 252 (by omega)]
    simp only [Nat.reduceAdd]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
