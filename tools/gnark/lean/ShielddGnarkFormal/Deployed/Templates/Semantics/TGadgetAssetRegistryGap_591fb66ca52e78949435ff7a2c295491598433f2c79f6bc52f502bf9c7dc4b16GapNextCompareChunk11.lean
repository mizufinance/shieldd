import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapNextCompareChunk10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapNext_compare_chunk11 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ j, 176 ≤ j → j < 192 → pmBit j = false → (nextBits rho)[j]! * (1 - (nextBits rho)[j]! - gapNextFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p17, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart17 at p17
  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1382, r1383, r1384, r1385, r1386, r1387, r1388, r1389, r1390, r1391, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1382 at r1382
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1383 at r1383
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1384 at r1384
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1385 at r1385
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1386 at r1386
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1387 at r1387
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1388 at r1388
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1389 at r1389
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1390 at r1390
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1391 at r1391
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [nextBits_get rho 176 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 177 = rho 970 from rfl]
    linear_combination r1391
  · erw [nextBits_get rho 177 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 178 = rho 970 from rfl]
    linear_combination r1390
  · have hb : pmBit 178 = true := by decide +kernel
    simp [hb] at hpm
  · erw [nextBits_get rho 179 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 180 = rho 969 from rfl]
    linear_combination r1389
  · have hb : pmBit 180 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 181 = true := by decide +kernel
    simp [hb] at hpm
  · erw [nextBits_get rho 182 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 183 = rho 967 from rfl]
    linear_combination r1388
  · have hb : pmBit 183 = true := by decide +kernel
    simp [hb] at hpm
  · erw [nextBits_get rho 184 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 185 = rho 966 from rfl]
    linear_combination r1387
  · erw [nextBits_get rho 185 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 186 = rho 966 from rfl]
    linear_combination r1386
  · erw [nextBits_get rho 186 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 187 = rho 966 from rfl]
    linear_combination r1385
  · erw [nextBits_get rho 187 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 188 = rho 966 from rfl]
    linear_combination r1384
  · erw [nextBits_get rho 188 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 189 = rho 966 from rfl]
    linear_combination r1383
  · have hb : pmBit 189 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 190 = true := by decide +kernel
    simp [hb] at hpm
  · erw [nextBits_get rho 191 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 192 = rho 964 from rfl]
    linear_combination r1382

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
