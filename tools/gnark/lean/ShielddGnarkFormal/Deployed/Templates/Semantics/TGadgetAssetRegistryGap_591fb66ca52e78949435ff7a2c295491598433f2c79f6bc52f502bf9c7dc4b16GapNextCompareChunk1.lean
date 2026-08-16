import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapNextCompareChunk0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapNext_compare_chunk1 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ j, 16 ≤ j → j < 32 → pmBit j = false → (nextBits rho)[j]! * (1 - (nextBits rho)[j]! - gapNextFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p18, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart18 at p18
  rcases p18 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1486, r1487, r1488, r1489, r1490, r1491, r1492, r1493, r1494, r1495, r1496, r1497, r1498, r1499, r1500, r1501, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1486 at r1486
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1487 at r1487
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1488 at r1488
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1489 at r1489
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1490 at r1490
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1491 at r1491
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1492 at r1492
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1493 at r1493
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1494 at r1494
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1495 at r1495
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1496 at r1496
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1497 at r1497
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1498 at r1498
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1499 at r1499
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1500 at r1500
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1501 at r1501
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [nextBits_get rho 16 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 17 = rho 1020 from rfl]
    linear_combination r1501
  · erw [nextBits_get rho 17 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 18 = rho 1020 from rfl]
    linear_combination r1500
  · erw [nextBits_get rho 18 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 19 = rho 1020 from rfl]
    linear_combination r1499
  · erw [nextBits_get rho 19 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 20 = rho 1020 from rfl]
    linear_combination r1498
  · erw [nextBits_get rho 20 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 21 = rho 1020 from rfl]
    linear_combination r1497
  · erw [nextBits_get rho 21 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 22 = rho 1020 from rfl]
    linear_combination r1496
  · erw [nextBits_get rho 22 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 23 = rho 1020 from rfl]
    linear_combination r1495
  · erw [nextBits_get rho 23 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 24 = rho 1020 from rfl]
    linear_combination r1494
  · erw [nextBits_get rho 24 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 25 = rho 1020 from rfl]
    linear_combination r1493
  · erw [nextBits_get rho 25 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 26 = rho 1020 from rfl]
    linear_combination r1492
  · erw [nextBits_get rho 26 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 27 = rho 1020 from rfl]
    linear_combination r1491
  · erw [nextBits_get rho 27 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 28 = rho 1020 from rfl]
    linear_combination r1490
  · erw [nextBits_get rho 28 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 29 = rho 1020 from rfl]
    linear_combination r1489
  · erw [nextBits_get rho 29 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 30 = rho 1020 from rfl]
    linear_combination r1488
  · erw [nextBits_get rho 30 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 31 = rho 1020 from rfl]
    linear_combination r1487
  · erw [nextBits_get rho 31 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 32 = rho 1020 from rfl]
    linear_combination r1486

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
