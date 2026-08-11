import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLeafTrue

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapLeaf_compare_chunk0 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ j, 0 ≤ j → j < 16 → pmBit j = false → (leafBits rho)[j]! * (1 - (leafBits rho)[j]! - gapLeafFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, p6, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart6 at p6
  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, r490, r491, r492, r493, r494, r495, r496, r497, r498, r499, r500, r501, r502, r503, r504, r505, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow490 at r490
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow491 at r491
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow492 at r492
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow493 at r493
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow494 at r494
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow495 at r495
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow496 at r496
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow497 at r497
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow498 at r498
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow499 at r499
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow500 at r500
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow501 at r501
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow502 at r502
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow503 at r503
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow504 at r504
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow505 at r505
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [leafBits_get rho 0 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 1 = rho 340 from rfl]
    linear_combination r505
  · erw [leafBits_get rho 1 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 2 = rho 340 from rfl]
    linear_combination r504
  · erw [leafBits_get rho 2 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 3 = rho 340 from rfl]
    linear_combination r503
  · erw [leafBits_get rho 3 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 4 = rho 340 from rfl]
    linear_combination r502
  · erw [leafBits_get rho 4 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 5 = rho 340 from rfl]
    linear_combination r501
  · erw [leafBits_get rho 5 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 6 = rho 340 from rfl]
    linear_combination r500
  · erw [leafBits_get rho 6 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 7 = rho 340 from rfl]
    linear_combination r499
  · erw [leafBits_get rho 7 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 8 = rho 340 from rfl]
    linear_combination r498
  · erw [leafBits_get rho 8 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 9 = rho 340 from rfl]
    linear_combination r497
  · erw [leafBits_get rho 9 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 10 = rho 340 from rfl]
    linear_combination r496
  · erw [leafBits_get rho 10 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 11 = rho 340 from rfl]
    linear_combination r495
  · erw [leafBits_get rho 11 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 12 = rho 340 from rfl]
    linear_combination r494
  · erw [leafBits_get rho 12 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 13 = rho 340 from rfl]
    linear_combination r493
  · erw [leafBits_get rho 13 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 14 = rho 340 from rfl]
    linear_combination r492
  · erw [leafBits_get rho 14 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 15 = rho 340 from rfl]
    linear_combination r491
  · erw [leafBits_get rho 15 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 16 = rho 340 from rfl]
    linear_combination r490

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
