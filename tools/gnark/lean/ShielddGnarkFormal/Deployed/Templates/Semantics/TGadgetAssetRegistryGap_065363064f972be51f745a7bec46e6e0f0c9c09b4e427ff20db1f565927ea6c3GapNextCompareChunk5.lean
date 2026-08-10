import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapNextCompareChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapNext_compare_chunk5 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ j, 80 ≤ j → j < 96 → pmBit j = false → (nextBits rho)[j]! * (1 - (nextBits rho)[j]! - gapNextFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p17, p18, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart17 at p17
  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1431, r1432, r1433, r1434, r1435, r1436, r1437, r1438, r1439⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart18 at p18
  rcases p18 with ⟨r1440, r1441, r1442, r1443, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1431 at r1431
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1432 at r1432
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1433 at r1433
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1434 at r1434
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1435 at r1435
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1436 at r1436
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1437 at r1437
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1438 at r1438
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1439 at r1439
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1440 at r1440
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1441 at r1441
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1442 at r1442
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1443 at r1443
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [nextBits_get rho 80 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 81 = rho 1014 from rfl]
    linear_combination r1443
  · erw [nextBits_get rho 81 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 82 = rho 1014 from rfl]
    linear_combination r1442
  · erw [nextBits_get rho 82 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 83 = rho 1014 from rfl]
    linear_combination r1441
  · erw [nextBits_get rho 83 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 84 = rho 1014 from rfl]
    linear_combination r1440
  · erw [nextBits_get rho 84 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 85 = rho 1014 from rfl]
    linear_combination r1439
  · erw [nextBits_get rho 85 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 86 = rho 1014 from rfl]
    linear_combination r1438
  · erw [nextBits_get rho 86 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 87 = rho 1014 from rfl]
    linear_combination r1437
  · erw [nextBits_get rho 87 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 88 = rho 1014 from rfl]
    linear_combination r1436
  · erw [nextBits_get rho 88 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 89 = rho 1014 from rfl]
    linear_combination r1435
  · erw [nextBits_get rho 89 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 90 = rho 1014 from rfl]
    linear_combination r1434
  · erw [nextBits_get rho 90 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 91 = rho 1014 from rfl]
    linear_combination r1433
  · erw [nextBits_get rho 91 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 92 = rho 1014 from rfl]
    linear_combination r1432
  · have hb : pmBit 92 = true := by decide +kernel
    simp [hb] at hpm
  · erw [nextBits_get rho 93 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 94 = rho 1013 from rfl]
    linear_combination r1431
  · have hb : pmBit 94 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 95 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
