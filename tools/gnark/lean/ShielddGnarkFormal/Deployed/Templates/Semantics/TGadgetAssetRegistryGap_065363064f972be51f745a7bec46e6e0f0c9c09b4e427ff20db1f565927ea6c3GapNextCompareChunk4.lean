import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapNextCompareChunk3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapNext_compare_chunk4 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ j, 64 ≤ j → j < 80 → pmBit j = false → (nextBits rho)[j]! * (1 - (nextBits rho)[j]! - gapNextFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p18, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart18 at p18
  rcases p18 with ⟨_, _, _, _, r1444, r1445, r1446, r1447, r1448, r1449, r1450, r1451, r1452, r1453, r1454, r1455, r1456, r1457, r1458, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1444 at r1444
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1445 at r1445
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1446 at r1446
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1447 at r1447
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1448 at r1448
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1449 at r1449
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1450 at r1450
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1451 at r1451
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1452 at r1452
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1453 at r1453
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1454 at r1454
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1455 at r1455
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1456 at r1456
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1457 at r1457
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1458 at r1458
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 64 = true := by decide +kernel
    simp [hb] at hpm
  · erw [nextBits_get rho 65 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 66 = rho 1014 from rfl]
    linear_combination r1458
  · erw [nextBits_get rho 66 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 67 = rho 1014 from rfl]
    linear_combination r1457
  · erw [nextBits_get rho 67 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 68 = rho 1014 from rfl]
    linear_combination r1456
  · erw [nextBits_get rho 68 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 69 = rho 1014 from rfl]
    linear_combination r1455
  · erw [nextBits_get rho 69 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 70 = rho 1014 from rfl]
    linear_combination r1454
  · erw [nextBits_get rho 70 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 71 = rho 1014 from rfl]
    linear_combination r1453
  · erw [nextBits_get rho 71 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 72 = rho 1014 from rfl]
    linear_combination r1452
  · erw [nextBits_get rho 72 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 73 = rho 1014 from rfl]
    linear_combination r1451
  · erw [nextBits_get rho 73 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 74 = rho 1014 from rfl]
    linear_combination r1450
  · erw [nextBits_get rho 74 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 75 = rho 1014 from rfl]
    linear_combination r1449
  · erw [nextBits_get rho 75 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 76 = rho 1014 from rfl]
    linear_combination r1448
  · erw [nextBits_get rho 76 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 77 = rho 1014 from rfl]
    linear_combination r1447
  · erw [nextBits_get rho 77 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 78 = rho 1014 from rfl]
    linear_combination r1446
  · erw [nextBits_get rho 78 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 79 = rho 1014 from rfl]
    linear_combination r1445
  · erw [nextBits_get rho 79 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 80 = rho 1014 from rfl]
    linear_combination r1444

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
