import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapIdCompareChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapId_compare_chunk5 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ j, 80 ≤ j → j < 96 → pmBit j = false → (idBits rho)[j]! * (1 - (idBits rho)[j]! - gapIdFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, p11, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart11 at p11
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r925, r926, r927, r928, r929, r930, r931, r932, r933, r934, r935, r936, r937, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow925 at r925
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow926 at r926
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow927 at r927
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow928 at r928
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow929 at r929
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow930 at r930
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow931 at r931
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow932 at r932
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow933 at r933
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow934 at r934
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow935 at r935
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow936 at r936
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow937 at r937
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [idBits_get rho 80 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 81 = rho 674 from rfl]
    linear_combination r937
  · erw [idBits_get rho 81 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 82 = rho 674 from rfl]
    linear_combination r936
  · erw [idBits_get rho 82 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 83 = rho 674 from rfl]
    linear_combination r935
  · erw [idBits_get rho 83 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 84 = rho 674 from rfl]
    linear_combination r934
  · erw [idBits_get rho 84 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 85 = rho 674 from rfl]
    linear_combination r933
  · erw [idBits_get rho 85 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 86 = rho 674 from rfl]
    linear_combination r932
  · erw [idBits_get rho 86 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 87 = rho 674 from rfl]
    linear_combination r931
  · erw [idBits_get rho 87 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 88 = rho 674 from rfl]
    linear_combination r930
  · erw [idBits_get rho 88 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 89 = rho 674 from rfl]
    linear_combination r929
  · erw [idBits_get rho 89 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 90 = rho 674 from rfl]
    linear_combination r928
  · erw [idBits_get rho 90 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 91 = rho 674 from rfl]
    linear_combination r927
  · erw [idBits_get rho 91 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 92 = rho 674 from rfl]
    linear_combination r926
  · have hb : pmBit 92 = true := by decide +kernel
    simp [hb] at hpm
  · erw [idBits_get rho 93 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 94 = rho 673 from rfl]
    linear_combination r925
  · have hb : pmBit 94 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 95 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
