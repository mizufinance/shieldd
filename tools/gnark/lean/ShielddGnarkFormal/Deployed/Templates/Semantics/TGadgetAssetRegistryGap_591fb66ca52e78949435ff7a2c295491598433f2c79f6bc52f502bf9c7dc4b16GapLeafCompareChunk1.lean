import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLeafCompareChunk0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapLeaf_compare_chunk1 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ j, 16 ≤ j → j < 32 → pmBit j = false → (leafBits rho)[j]! * (1 - (leafBits rho)[j]! - gapLeafFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, _, _, p5, p6, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart5 at p5
  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r474, r475, r476, r477, r478, r479⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart6 at p6
  rcases p6 with ⟨r480, r481, r482, r483, r484, r485, r486, r487, r488, r489, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow474 at r474
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow475 at r475
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow476 at r476
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow477 at r477
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow478 at r478
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow479 at r479
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow480 at r480
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow481 at r481
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow482 at r482
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow483 at r483
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow484 at r484
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow485 at r485
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow486 at r486
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow487 at r487
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow488 at r488
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow489 at r489
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [leafBits_get rho 16 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 17 = rho 340 from rfl]
    linear_combination r489
  · erw [leafBits_get rho 17 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 18 = rho 340 from rfl]
    linear_combination r488
  · erw [leafBits_get rho 18 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 19 = rho 340 from rfl]
    linear_combination r487
  · erw [leafBits_get rho 19 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 20 = rho 340 from rfl]
    linear_combination r486
  · erw [leafBits_get rho 20 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 21 = rho 340 from rfl]
    linear_combination r485
  · erw [leafBits_get rho 21 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 22 = rho 340 from rfl]
    linear_combination r484
  · erw [leafBits_get rho 22 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 23 = rho 340 from rfl]
    linear_combination r483
  · erw [leafBits_get rho 23 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 24 = rho 340 from rfl]
    linear_combination r482
  · erw [leafBits_get rho 24 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 25 = rho 340 from rfl]
    linear_combination r481
  · erw [leafBits_get rho 25 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 26 = rho 340 from rfl]
    linear_combination r480
  · erw [leafBits_get rho 26 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 27 = rho 340 from rfl]
    linear_combination r479
  · erw [leafBits_get rho 27 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 28 = rho 340 from rfl]
    linear_combination r478
  · erw [leafBits_get rho 28 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 29 = rho 340 from rfl]
    linear_combination r477
  · erw [leafBits_get rho 29 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 30 = rho 340 from rfl]
    linear_combination r476
  · erw [leafBits_get rho 30 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 31 = rho 340 from rfl]
    linear_combination r475
  · erw [leafBits_get rho 31 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 32 = rho 340 from rfl]
    linear_combination r474

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
