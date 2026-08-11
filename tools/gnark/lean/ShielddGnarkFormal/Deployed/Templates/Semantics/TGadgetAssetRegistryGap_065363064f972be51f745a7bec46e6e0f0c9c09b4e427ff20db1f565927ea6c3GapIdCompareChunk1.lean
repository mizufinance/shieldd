import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapIdCompareChunk0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapId_compare_chunk1 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ j, 16 ≤ j → j < 32 → pmBit j = false → (idBits rho)[j]! * (1 - (idBits rho)[j]! - gapIdFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, p12, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart12 at p12
  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r980, r981, r982, r983, r984, r985, r986, r987, r988, r989, r990, r991, r992, r993, r994, r995, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow980 at r980
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow981 at r981
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow982 at r982
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow983 at r983
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow984 at r984
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow985 at r985
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow986 at r986
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow987 at r987
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow988 at r988
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow989 at r989
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow990 at r990
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow991 at r991
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow992 at r992
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow993 at r993
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow994 at r994
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow995 at r995
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [idBits_get rho 16 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 17 = rho 680 from rfl]
    linear_combination r995
  · erw [idBits_get rho 17 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 18 = rho 680 from rfl]
    linear_combination r994
  · erw [idBits_get rho 18 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 19 = rho 680 from rfl]
    linear_combination r993
  · erw [idBits_get rho 19 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 20 = rho 680 from rfl]
    linear_combination r992
  · erw [idBits_get rho 20 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 21 = rho 680 from rfl]
    linear_combination r991
  · erw [idBits_get rho 21 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 22 = rho 680 from rfl]
    linear_combination r990
  · erw [idBits_get rho 22 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 23 = rho 680 from rfl]
    linear_combination r989
  · erw [idBits_get rho 23 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 24 = rho 680 from rfl]
    linear_combination r988
  · erw [idBits_get rho 24 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 25 = rho 680 from rfl]
    linear_combination r987
  · erw [idBits_get rho 25 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 26 = rho 680 from rfl]
    linear_combination r986
  · erw [idBits_get rho 26 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 27 = rho 680 from rfl]
    linear_combination r985
  · erw [idBits_get rho 27 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 28 = rho 680 from rfl]
    linear_combination r984
  · erw [idBits_get rho 28 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 29 = rho 680 from rfl]
    linear_combination r983
  · erw [idBits_get rho 29 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 30 = rho 680 from rfl]
    linear_combination r982
  · erw [idBits_get rho 30 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 31 = rho 680 from rfl]
    linear_combination r981
  · erw [idBits_get rho 31 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 32 = rho 680 from rfl]
    linear_combination r980

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
