import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapNextTrueChunk8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapNext_flag_step_chunk9 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ m, 144 ≤ m → m < 160 → gapNextFlag rho m = trueFactor (nextBits rho) m * gapNextFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1310, r1311, r1312, r1313, r1314, r1315, r1316, r1317, r1318, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1310 at r1310
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1311 at r1311
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1312 at r1312
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1313 at r1313
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1314 at r1314
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1315 at r1315
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1316 at r1316
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1317 at r1317
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1318 at r1318
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapNextFlag rho 144 = rho 987 from rfl, show gapNextFlag rho 145 = rho 986 from rfl]
    have hb : pmBit 144 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 144 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1318
  · rw [show gapNextFlag rho 145 = rho 986 from rfl, show gapNextFlag rho 146 = rho 985 from rfl]
    have hb : pmBit 145 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 145 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1317
  · rw [show gapNextFlag rho 146 = rho 985 from rfl, show gapNextFlag rho 147 = rho 984 from rfl]
    have hb : pmBit 146 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 146 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1316
  · rw [show gapNextFlag rho 147 = rho 984 from rfl, show gapNextFlag rho 148 = rho 984 from rfl]
    have hb : pmBit 147 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 147 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 148 = rho 984 from rfl, show gapNextFlag rho 149 = rho 983 from rfl]
    have hb : pmBit 148 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 148 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1315
  · rw [show gapNextFlag rho 149 = rho 983 from rfl, show gapNextFlag rho 150 = rho 982 from rfl]
    have hb : pmBit 149 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 149 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1314
  · rw [show gapNextFlag rho 150 = rho 982 from rfl, show gapNextFlag rho 151 = rho 982 from rfl]
    have hb : pmBit 150 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 150 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 151 = rho 982 from rfl, show gapNextFlag rho 152 = rho 982 from rfl]
    have hb : pmBit 151 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 151 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 152 = rho 982 from rfl, show gapNextFlag rho 153 = rho 982 from rfl]
    have hb : pmBit 152 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 152 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 153 = rho 982 from rfl, show gapNextFlag rho 154 = rho 982 from rfl]
    have hb : pmBit 153 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 153 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 154 = rho 982 from rfl, show gapNextFlag rho 155 = rho 981 from rfl]
    have hb : pmBit 154 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 154 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1313
  · rw [show gapNextFlag rho 155 = rho 981 from rfl, show gapNextFlag rho 156 = rho 980 from rfl]
    have hb : pmBit 155 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 155 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1312
  · rw [show gapNextFlag rho 156 = rho 980 from rfl, show gapNextFlag rho 157 = rho 979 from rfl]
    have hb : pmBit 156 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 156 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1311
  · rw [show gapNextFlag rho 157 = rho 979 from rfl, show gapNextFlag rho 158 = rho 979 from rfl]
    have hb : pmBit 157 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 157 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 158 = rho 979 from rfl, show gapNextFlag rho 159 = rho 978 from rfl]
    have hb : pmBit 158 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 158 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1310
  · rw [show gapNextFlag rho 159 = rho 978 from rfl, show gapNextFlag rho 160 = rho 978 from rfl]
    have hb : pmBit 159 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 159 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
