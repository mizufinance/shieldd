import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapNextTrueChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapNext_flag_step_chunk7 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ m, 112 ≤ m → m < 128 → gapNextFlag rho m = trueFactor (nextBits rho) m * gapNextFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1323, r1324, r1325, r1326, r1327, r1328, r1329, r1330, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1323 at r1323
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1324 at r1324
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1325 at r1325
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1326 at r1326
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1327 at r1327
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1328 at r1328
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1329 at r1329
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1330 at r1330
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapNextFlag rho 112 = rho 999 from rfl, show gapNextFlag rho 113 = rho 999 from rfl]
    have hb : pmBit 112 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 112 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 113 = rho 999 from rfl, show gapNextFlag rho 114 = rho 998 from rfl]
    have hb : pmBit 113 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 113 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1330
  · rw [show gapNextFlag rho 114 = rho 998 from rfl, show gapNextFlag rho 115 = rho 998 from rfl]
    have hb : pmBit 114 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 114 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 115 = rho 998 from rfl, show gapNextFlag rho 116 = rho 997 from rfl]
    have hb : pmBit 115 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 115 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1329
  · rw [show gapNextFlag rho 116 = rho 997 from rfl, show gapNextFlag rho 117 = rho 997 from rfl]
    have hb : pmBit 116 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 116 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 117 = rho 997 from rfl, show gapNextFlag rho 118 = rho 996 from rfl]
    have hb : pmBit 117 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 117 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1328
  · rw [show gapNextFlag rho 118 = rho 996 from rfl, show gapNextFlag rho 119 = rho 996 from rfl]
    have hb : pmBit 118 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 118 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 119 = rho 996 from rfl, show gapNextFlag rho 120 = rho 995 from rfl]
    have hb : pmBit 119 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 119 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1327
  · rw [show gapNextFlag rho 120 = rho 995 from rfl, show gapNextFlag rho 121 = rho 994 from rfl]
    have hb : pmBit 120 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 120 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1326
  · rw [show gapNextFlag rho 121 = rho 994 from rfl, show gapNextFlag rho 122 = rho 994 from rfl]
    have hb : pmBit 121 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 121 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 122 = rho 994 from rfl, show gapNextFlag rho 123 = rho 994 from rfl]
    have hb : pmBit 122 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 122 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 123 = rho 994 from rfl, show gapNextFlag rho 124 = rho 993 from rfl]
    have hb : pmBit 123 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 123 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1325
  · rw [show gapNextFlag rho 124 = rho 993 from rfl, show gapNextFlag rho 125 = rho 992 from rfl]
    have hb : pmBit 124 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 124 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1324
  · rw [show gapNextFlag rho 125 = rho 992 from rfl, show gapNextFlag rho 126 = rho 992 from rfl]
    have hb : pmBit 125 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 125 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 126 = rho 992 from rfl, show gapNextFlag rho 127 = rho 991 from rfl]
    have hb : pmBit 126 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 126 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1323
  · rw [show gapNextFlag rho 127 = rho 991 from rfl, show gapNextFlag rho 128 = rho 991 from rfl]
    have hb : pmBit 127 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 127 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
