import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapIdCompareChunk1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapId_compare_chunk2 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ j, 32 ≤ j → j < 48 → pmBit j = false → (idBits rho)[j]! * (1 - (idBits rho)[j]! - gapIdFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, p12, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart12 at p12
  rcases p12 with ⟨_, _, _, _, _, r965, r966, r967, r968, r969, r970, r971, r972, r973, r974, r975, r976, r977, r978, r979, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow965 at r965
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow966 at r966
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow967 at r967
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow968 at r968
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow969 at r969
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow970 at r970
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow971 at r971
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow972 at r972
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow973 at r973
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow974 at r974
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow975 at r975
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow976 at r976
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow977 at r977
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow978 at r978
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow979 at r979
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [idBits_get rho 32 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 33 = rho 680 from rfl]
    linear_combination r979
  · erw [idBits_get rho 33 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 34 = rho 680 from rfl]
    linear_combination r978
  · erw [idBits_get rho 34 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 35 = rho 680 from rfl]
    linear_combination r977
  · erw [idBits_get rho 35 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 36 = rho 680 from rfl]
    linear_combination r976
  · erw [idBits_get rho 36 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 37 = rho 680 from rfl]
    linear_combination r975
  · erw [idBits_get rho 37 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 38 = rho 680 from rfl]
    linear_combination r974
  · erw [idBits_get rho 38 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 39 = rho 680 from rfl]
    linear_combination r973
  · erw [idBits_get rho 39 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 40 = rho 680 from rfl]
    linear_combination r972
  · erw [idBits_get rho 40 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 41 = rho 680 from rfl]
    linear_combination r971
  · erw [idBits_get rho 41 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 42 = rho 680 from rfl]
    linear_combination r970
  · erw [idBits_get rho 42 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 43 = rho 680 from rfl]
    linear_combination r969
  · erw [idBits_get rho 43 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 44 = rho 680 from rfl]
    linear_combination r968
  · erw [idBits_get rho 44 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 45 = rho 680 from rfl]
    linear_combination r967
  · erw [idBits_get rho 45 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 46 = rho 680 from rfl]
    linear_combination r966
  · erw [idBits_get rho 46 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 47 = rho 680 from rfl]
    linear_combination r965
  · have hb : pmBit 47 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
