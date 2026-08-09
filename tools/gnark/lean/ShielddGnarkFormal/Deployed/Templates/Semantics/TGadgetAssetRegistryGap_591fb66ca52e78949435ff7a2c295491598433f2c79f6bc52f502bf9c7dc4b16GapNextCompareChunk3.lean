import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapNextCompareChunk2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapNext_compare_chunk3 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ j, 48 ≤ j → j < 64 → pmBit j = false → (nextBits rho)[j]! * (1 - (nextBits rho)[j]! - gapNextFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p18, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart18 at p18
  rcases p18 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1459, r1460, r1461, r1462, r1463, r1464, r1465, r1466, r1467, r1468, r1469, r1470, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1459 at r1459
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1460 at r1460
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1461 at r1461
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1462 at r1462
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1463 at r1463
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1464 at r1464
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1465 at r1465
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1466 at r1466
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1467 at r1467
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1468 at r1468
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1469 at r1469
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1470 at r1470
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 48 = true := by decide +kernel
    simp [hb] at hpm
  · erw [nextBits_get rho 49 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 50 = rho 1018 from rfl]
    linear_combination r1470
  · erw [nextBits_get rho 50 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 51 = rho 1018 from rfl]
    linear_combination r1469
  · erw [nextBits_get rho 51 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 52 = rho 1018 from rfl]
    linear_combination r1468
  · have hb : pmBit 52 = true := by decide +kernel
    simp [hb] at hpm
  · erw [nextBits_get rho 53 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 54 = rho 1017 from rfl]
    linear_combination r1467
  · erw [nextBits_get rho 54 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 55 = rho 1017 from rfl]
    linear_combination r1466
  · erw [nextBits_get rho 55 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 56 = rho 1017 from rfl]
    linear_combination r1465
  · erw [nextBits_get rho 56 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 57 = rho 1017 from rfl]
    linear_combination r1464
  · have hb : pmBit 57 = true := by decide +kernel
    simp [hb] at hpm
  · erw [nextBits_get rho 58 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 59 = rho 1016 from rfl]
    linear_combination r1463
  · have hb : pmBit 59 = true := by decide +kernel
    simp [hb] at hpm
  · erw [nextBits_get rho 60 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 61 = rho 1015 from rfl]
    linear_combination r1462
  · erw [nextBits_get rho 61 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 62 = rho 1015 from rfl]
    linear_combination r1461
  · erw [nextBits_get rho 62 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 63 = rho 1015 from rfl]
    linear_combination r1460
  · erw [nextBits_get rho 63 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 64 = rho 1015 from rfl]
    linear_combination r1459

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
