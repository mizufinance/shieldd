import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLeafCompareChunk3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapLeaf_compare_chunk4 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ j, 64 ≤ j → j < 80 → pmBit j = false → (leafBits rho)[j]! * (1 - (leafBits rho)[j]! - gapLeafFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, _, _, p5, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart5 at p5
  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r432, r433, r434, r435, r436, r437, r438, r439, r440, r441, r442, r443, r444, r445, r446, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow432 at r432
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow433 at r433
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow434 at r434
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow435 at r435
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow436 at r436
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow437 at r437
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow438 at r438
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow439 at r439
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow440 at r440
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow441 at r441
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow442 at r442
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow443 at r443
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow444 at r444
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow445 at r445
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow446 at r446
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 64 = true := by decide +kernel
    simp [hb] at hpm
  · erw [leafBits_get rho 65 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 66 = rho 334 from rfl]
    linear_combination r446
  · erw [leafBits_get rho 66 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 67 = rho 334 from rfl]
    linear_combination r445
  · erw [leafBits_get rho 67 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 68 = rho 334 from rfl]
    linear_combination r444
  · erw [leafBits_get rho 68 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 69 = rho 334 from rfl]
    linear_combination r443
  · erw [leafBits_get rho 69 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 70 = rho 334 from rfl]
    linear_combination r442
  · erw [leafBits_get rho 70 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 71 = rho 334 from rfl]
    linear_combination r441
  · erw [leafBits_get rho 71 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 72 = rho 334 from rfl]
    linear_combination r440
  · erw [leafBits_get rho 72 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 73 = rho 334 from rfl]
    linear_combination r439
  · erw [leafBits_get rho 73 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 74 = rho 334 from rfl]
    linear_combination r438
  · erw [leafBits_get rho 74 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 75 = rho 334 from rfl]
    linear_combination r437
  · erw [leafBits_get rho 75 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 76 = rho 334 from rfl]
    linear_combination r436
  · erw [leafBits_get rho 76 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 77 = rho 334 from rfl]
    linear_combination r435
  · erw [leafBits_get rho 77 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 78 = rho 334 from rfl]
    linear_combination r434
  · erw [leafBits_get rho 78 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 79 = rho 334 from rfl]
    linear_combination r433
  · erw [leafBits_get rho 79 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 80 = rho 334 from rfl]
    linear_combination r432

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
