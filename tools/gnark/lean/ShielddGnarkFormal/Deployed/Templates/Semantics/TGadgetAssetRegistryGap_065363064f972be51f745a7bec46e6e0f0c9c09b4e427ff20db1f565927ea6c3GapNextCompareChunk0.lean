import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapNextTrue

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapNext_compare_chunk0 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ j, 0 ≤ j → j < 16 → pmBit j = false → (nextBits rho)[j]! * (1 - (nextBits rho)[j]! - gapNextFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p18, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart18 at p18
  rcases p18 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1502, r1503, r1504, r1505, r1506, r1507, r1508, r1509, r1510, r1511, r1512, r1513, r1514, r1515, r1516, r1517, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1502 at r1502
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1503 at r1503
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1504 at r1504
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1505 at r1505
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1506 at r1506
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1507 at r1507
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1508 at r1508
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1509 at r1509
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1510 at r1510
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1511 at r1511
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1512 at r1512
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1513 at r1513
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1514 at r1514
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1515 at r1515
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1516 at r1516
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1517 at r1517
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [nextBits_get rho 0 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 1 = rho 1020 from rfl]
    linear_combination r1517
  · erw [nextBits_get rho 1 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 2 = rho 1020 from rfl]
    linear_combination r1516
  · erw [nextBits_get rho 2 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 3 = rho 1020 from rfl]
    linear_combination r1515
  · erw [nextBits_get rho 3 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 4 = rho 1020 from rfl]
    linear_combination r1514
  · erw [nextBits_get rho 4 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 5 = rho 1020 from rfl]
    linear_combination r1513
  · erw [nextBits_get rho 5 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 6 = rho 1020 from rfl]
    linear_combination r1512
  · erw [nextBits_get rho 6 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 7 = rho 1020 from rfl]
    linear_combination r1511
  · erw [nextBits_get rho 7 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 8 = rho 1020 from rfl]
    linear_combination r1510
  · erw [nextBits_get rho 8 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 9 = rho 1020 from rfl]
    linear_combination r1509
  · erw [nextBits_get rho 9 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 10 = rho 1020 from rfl]
    linear_combination r1508
  · erw [nextBits_get rho 10 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 11 = rho 1020 from rfl]
    linear_combination r1507
  · erw [nextBits_get rho 11 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 12 = rho 1020 from rfl]
    linear_combination r1506
  · erw [nextBits_get rho 12 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 13 = rho 1020 from rfl]
    linear_combination r1505
  · erw [nextBits_get rho 13 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 14 = rho 1020 from rfl]
    linear_combination r1504
  · erw [nextBits_get rho 14 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 15 = rho 1020 from rfl]
    linear_combination r1503
  · erw [nextBits_get rho 15 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 16 = rho 1020 from rfl]
    linear_combination r1502

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
