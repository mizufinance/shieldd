import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLeafCompareChunk1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapLeaf_compare_chunk2 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ j, 32 ≤ j → j < 48 → pmBit j = false → (leafBits rho)[j]! * (1 - (leafBits rho)[j]! - gapLeafFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, _, _, p5, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart5 at p5
  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r459, r460, r461, r462, r463, r464, r465, r466, r467, r468, r469, r470, r471, r472, r473, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow459 at r459
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow460 at r460
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow461 at r461
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow462 at r462
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow463 at r463
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow464 at r464
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow465 at r465
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow466 at r466
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow467 at r467
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow468 at r468
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow469 at r469
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow470 at r470
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow471 at r471
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow472 at r472
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow473 at r473
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [leafBits_get rho 32 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 33 = rho 340 from rfl]
    linear_combination r473
  · erw [leafBits_get rho 33 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 34 = rho 340 from rfl]
    linear_combination r472
  · erw [leafBits_get rho 34 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 35 = rho 340 from rfl]
    linear_combination r471
  · erw [leafBits_get rho 35 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 36 = rho 340 from rfl]
    linear_combination r470
  · erw [leafBits_get rho 36 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 37 = rho 340 from rfl]
    linear_combination r469
  · erw [leafBits_get rho 37 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 38 = rho 340 from rfl]
    linear_combination r468
  · erw [leafBits_get rho 38 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 39 = rho 340 from rfl]
    linear_combination r467
  · erw [leafBits_get rho 39 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 40 = rho 340 from rfl]
    linear_combination r466
  · erw [leafBits_get rho 40 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 41 = rho 340 from rfl]
    linear_combination r465
  · erw [leafBits_get rho 41 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 42 = rho 340 from rfl]
    linear_combination r464
  · erw [leafBits_get rho 42 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 43 = rho 340 from rfl]
    linear_combination r463
  · erw [leafBits_get rho 43 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 44 = rho 340 from rfl]
    linear_combination r462
  · erw [leafBits_get rho 44 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 45 = rho 340 from rfl]
    linear_combination r461
  · erw [leafBits_get rho 45 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 46 = rho 340 from rfl]
    linear_combination r460
  · erw [leafBits_get rho 46 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 47 = rho 340 from rfl]
    linear_combination r459
  · have hb : pmBit 47 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
