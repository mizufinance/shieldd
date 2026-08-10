import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLeafCompareChunk2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapLeaf_compare_chunk3 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ j, 48 ≤ j → j < 64 → pmBit j = false → (leafBits rho)[j]! * (1 - (leafBits rho)[j]! - gapLeafFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, p5, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart5 at p5
  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r447, r448, r449, r450, r451, r452, r453, r454, r455, r456, r457, r458, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow447 at r447
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow448 at r448
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow449 at r449
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow450 at r450
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow451 at r451
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow452 at r452
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow453 at r453
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow454 at r454
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow455 at r455
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow456 at r456
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow457 at r457
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow458 at r458
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 48 = true := by decide +kernel
    simp [hb] at hpm
  · erw [leafBits_get rho 49 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 50 = rho 338 from rfl]
    linear_combination r458
  · erw [leafBits_get rho 50 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 51 = rho 338 from rfl]
    linear_combination r457
  · erw [leafBits_get rho 51 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 52 = rho 338 from rfl]
    linear_combination r456
  · have hb : pmBit 52 = true := by decide +kernel
    simp [hb] at hpm
  · erw [leafBits_get rho 53 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 54 = rho 337 from rfl]
    linear_combination r455
  · erw [leafBits_get rho 54 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 55 = rho 337 from rfl]
    linear_combination r454
  · erw [leafBits_get rho 55 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 56 = rho 337 from rfl]
    linear_combination r453
  · erw [leafBits_get rho 56 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 57 = rho 337 from rfl]
    linear_combination r452
  · have hb : pmBit 57 = true := by decide +kernel
    simp [hb] at hpm
  · erw [leafBits_get rho 58 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 59 = rho 336 from rfl]
    linear_combination r451
  · have hb : pmBit 59 = true := by decide +kernel
    simp [hb] at hpm
  · erw [leafBits_get rho 60 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 61 = rho 335 from rfl]
    linear_combination r450
  · erw [leafBits_get rho 61 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 62 = rho 335 from rfl]
    linear_combination r449
  · erw [leafBits_get rho 62 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 63 = rho 335 from rfl]
    linear_combination r448
  · erw [leafBits_get rho 63 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 64 = rho 335 from rfl]
    linear_combination r447

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
