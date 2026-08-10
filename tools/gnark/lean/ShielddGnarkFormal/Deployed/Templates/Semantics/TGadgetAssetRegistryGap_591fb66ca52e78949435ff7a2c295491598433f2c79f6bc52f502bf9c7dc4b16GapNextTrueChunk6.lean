import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapNextTrueChunk5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapNext_flag_step_chunk6 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ m, 96 ≤ m → m < 112 → gapNextFlag rho m = trueFactor (nextBits rho) m * gapNextFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1331, r1332, r1333, r1334, r1335, r1336, r1337, r1338, r1339, r1340, r1341, r1342, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1331 at r1331
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1332 at r1332
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1333 at r1333
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1334 at r1334
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1335 at r1335
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1336 at r1336
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1337 at r1337
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1338 at r1338
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1339 at r1339
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1340 at r1340
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1341 at r1341
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1342 at r1342
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapNextFlag rho 96 = rho 1011 from rfl, show gapNextFlag rho 97 = rho 1011 from rfl]
    have hb : pmBit 96 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 96 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 97 = rho 1011 from rfl, show gapNextFlag rho 98 = rho 1010 from rfl]
    have hb : pmBit 97 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 97 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1342
  · rw [show gapNextFlag rho 98 = rho 1010 from rfl, show gapNextFlag rho 99 = rho 1009 from rfl]
    have hb : pmBit 98 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 98 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1341
  · rw [show gapNextFlag rho 99 = rho 1009 from rfl, show gapNextFlag rho 100 = rho 1008 from rfl]
    have hb : pmBit 99 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 99 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1340
  · rw [show gapNextFlag rho 100 = rho 1008 from rfl, show gapNextFlag rho 101 = rho 1007 from rfl]
    have hb : pmBit 100 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 100 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1339
  · rw [show gapNextFlag rho 101 = rho 1007 from rfl, show gapNextFlag rho 102 = rho 1006 from rfl]
    have hb : pmBit 101 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 101 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1338
  · rw [show gapNextFlag rho 102 = rho 1006 from rfl, show gapNextFlag rho 103 = rho 1005 from rfl]
    have hb : pmBit 102 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 102 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1337
  · rw [show gapNextFlag rho 103 = rho 1005 from rfl, show gapNextFlag rho 104 = rho 1004 from rfl]
    have hb : pmBit 103 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 103 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1336
  · rw [show gapNextFlag rho 104 = rho 1004 from rfl, show gapNextFlag rho 105 = rho 1004 from rfl]
    have hb : pmBit 104 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 104 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 105 = rho 1004 from rfl, show gapNextFlag rho 106 = rho 1003 from rfl]
    have hb : pmBit 105 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 105 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1335
  · rw [show gapNextFlag rho 106 = rho 1003 from rfl, show gapNextFlag rho 107 = rho 1002 from rfl]
    have hb : pmBit 106 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 106 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1334
  · rw [show gapNextFlag rho 107 = rho 1002 from rfl, show gapNextFlag rho 108 = rho 1002 from rfl]
    have hb : pmBit 107 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 107 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 108 = rho 1002 from rfl, show gapNextFlag rho 109 = rho 1001 from rfl]
    have hb : pmBit 108 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 108 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1333
  · rw [show gapNextFlag rho 109 = rho 1001 from rfl, show gapNextFlag rho 110 = rho 1000 from rfl]
    have hb : pmBit 109 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 109 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1332
  · rw [show gapNextFlag rho 110 = rho 1000 from rfl, show gapNextFlag rho 111 = rho 999 from rfl]
    have hb : pmBit 110 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 110 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1331
  · rw [show gapNextFlag rho 111 = rho 999 from rfl, show gapNextFlag rho 112 = rho 999 from rfl]
    have hb : pmBit 111 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 111 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
