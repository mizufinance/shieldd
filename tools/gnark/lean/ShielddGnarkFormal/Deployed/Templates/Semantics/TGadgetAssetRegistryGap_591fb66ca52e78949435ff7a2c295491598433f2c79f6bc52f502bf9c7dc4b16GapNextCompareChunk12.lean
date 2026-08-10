import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapNextCompareChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapNext_compare_chunk12 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ j, 192 ≤ j → j < 208 → pmBit j = false → (nextBits rho)[j]! * (1 - (nextBits rho)[j]! - gapNextFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p17, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart17 at p17
  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r1374, r1375, r1376, r1377, r1378, r1379, r1380, r1381, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1374 at r1374
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1375 at r1375
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1376 at r1376
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1377 at r1377
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1378 at r1378
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1379 at r1379
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1380 at r1380
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1381 at r1381
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [nextBits_get rho 192 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 193 = rho 964 from rfl]
    linear_combination r1381
  · have hb : pmBit 193 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 194 = true := by decide +kernel
    simp [hb] at hpm
  · erw [nextBits_get rho 195 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 196 = rho 962 from rfl]
    linear_combination r1380
  · have hb : pmBit 196 = true := by decide +kernel
    simp [hb] at hpm
  · erw [nextBits_get rho 197 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 198 = rho 961 from rfl]
    linear_combination r1379
  · have hb : pmBit 198 = true := by decide +kernel
    simp [hb] at hpm
  · erw [nextBits_get rho 199 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 200 = rho 960 from rfl]
    linear_combination r1378
  · have hb : pmBit 200 = true := by decide +kernel
    simp [hb] at hpm
  · erw [nextBits_get rho 201 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 202 = rho 959 from rfl]
    linear_combination r1377
  · have hb : pmBit 202 = true := by decide +kernel
    simp [hb] at hpm
  · erw [nextBits_get rho 203 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 204 = rho 958 from rfl]
    linear_combination r1376
  · erw [nextBits_get rho 204 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 205 = rho 958 from rfl]
    linear_combination r1375
  · have hb : pmBit 205 = true := by decide +kernel
    simp [hb] at hpm
  · erw [nextBits_get rho 206 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 207 = rho 957 from rfl]
    linear_combination r1374
  · have hb : pmBit 207 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
