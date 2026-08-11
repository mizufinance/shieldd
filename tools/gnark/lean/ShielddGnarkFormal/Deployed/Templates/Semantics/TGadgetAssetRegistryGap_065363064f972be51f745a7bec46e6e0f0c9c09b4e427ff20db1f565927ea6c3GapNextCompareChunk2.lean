import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapNextCompareChunk1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapNext_compare_chunk2 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ j, 32 ≤ j → j < 48 → pmBit j = false → (nextBits rho)[j]! * (1 - (nextBits rho)[j]! - gapNextFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p18, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart18 at p18
  rcases p18 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1471, r1472, r1473, r1474, r1475, r1476, r1477, r1478, r1479, r1480, r1481, r1482, r1483, r1484, r1485, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1471 at r1471
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1472 at r1472
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1473 at r1473
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1474 at r1474
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1475 at r1475
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1476 at r1476
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1477 at r1477
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1478 at r1478
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1479 at r1479
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1480 at r1480
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1481 at r1481
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1482 at r1482
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1483 at r1483
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1484 at r1484
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1485 at r1485
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [nextBits_get rho 32 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 33 = rho 1020 from rfl]
    linear_combination r1485
  · erw [nextBits_get rho 33 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 34 = rho 1020 from rfl]
    linear_combination r1484
  · erw [nextBits_get rho 34 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 35 = rho 1020 from rfl]
    linear_combination r1483
  · erw [nextBits_get rho 35 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 36 = rho 1020 from rfl]
    linear_combination r1482
  · erw [nextBits_get rho 36 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 37 = rho 1020 from rfl]
    linear_combination r1481
  · erw [nextBits_get rho 37 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 38 = rho 1020 from rfl]
    linear_combination r1480
  · erw [nextBits_get rho 38 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 39 = rho 1020 from rfl]
    linear_combination r1479
  · erw [nextBits_get rho 39 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 40 = rho 1020 from rfl]
    linear_combination r1478
  · erw [nextBits_get rho 40 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 41 = rho 1020 from rfl]
    linear_combination r1477
  · erw [nextBits_get rho 41 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 42 = rho 1020 from rfl]
    linear_combination r1476
  · erw [nextBits_get rho 42 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 43 = rho 1020 from rfl]
    linear_combination r1475
  · erw [nextBits_get rho 43 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 44 = rho 1020 from rfl]
    linear_combination r1474
  · erw [nextBits_get rho 44 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 45 = rho 1020 from rfl]
    linear_combination r1473
  · erw [nextBits_get rho 45 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 46 = rho 1020 from rfl]
    linear_combination r1472
  · erw [nextBits_get rho 46 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 47 = rho 1020 from rfl]
    linear_combination r1471
  · have hb : pmBit 47 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
