import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapIdCompareChunk7

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapId_compare_chunk8 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ j, 128 ≤ j → j < 144 → pmBit j = false → (idBits rho)[j]! * (1 - (idBits rho)[j]! - gapIdFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, p11, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart11 at p11
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r901, r902, r903, r904, r905, r906, r907, r908, r909, r910, r911, r912, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow901 at r901
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow902 at r902
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow903 at r903
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow904 at r904
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow905 at r905
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow906 at r906
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow907 at r907
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow908 at r908
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow909 at r909
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow910 at r910
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow911 at r911
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow912 at r912
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 128 = true := by decide +kernel
    simp [hb] at hpm
  · erw [idBits_get rho 129 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 130 = rho 650 from rfl]
    linear_combination r912
  · erw [idBits_get rho 130 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 131 = rho 650 from rfl]
    linear_combination r911
  · erw [idBits_get rho 131 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 132 = rho 650 from rfl]
    linear_combination r910
  · erw [idBits_get rho 132 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 133 = rho 650 from rfl]
    linear_combination r909
  · erw [idBits_get rho 133 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 134 = rho 650 from rfl]
    linear_combination r908
  · erw [idBits_get rho 134 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 135 = rho 650 from rfl]
    linear_combination r907
  · erw [idBits_get rho 135 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 136 = rho 650 from rfl]
    linear_combination r906
  · erw [idBits_get rho 136 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 137 = rho 650 from rfl]
    linear_combination r905
  · erw [idBits_get rho 137 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 138 = rho 650 from rfl]
    linear_combination r904
  · erw [idBits_get rho 138 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 139 = rho 650 from rfl]
    linear_combination r903
  · erw [idBits_get rho 139 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 140 = rho 650 from rfl]
    linear_combination r902
  · have hb : pmBit 140 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 141 = true := by decide +kernel
    simp [hb] at hpm
  · erw [idBits_get rho 142 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 143 = rho 648 from rfl]
    linear_combination r901
  · have hb : pmBit 143 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
