import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapIdTrue

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapId_compare_chunk0 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ j, 0 ≤ j → j < 16 → pmBit j = false → (idBits rho)[j]! * (1 - (idBits rho)[j]! - gapIdFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, p12, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart12 at p12
  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r996, r997, r998, r999, r1000, r1001, r1002, r1003, r1004, r1005, r1006, r1007, r1008, r1009, r1010, r1011, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow996 at r996
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow997 at r997
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow998 at r998
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow999 at r999
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1000 at r1000
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1001 at r1001
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1002 at r1002
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1003 at r1003
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1004 at r1004
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1005 at r1005
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1006 at r1006
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1007 at r1007
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1008 at r1008
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1009 at r1009
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1010 at r1010
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1011 at r1011
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [idBits_get rho 0 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 1 = rho 680 from rfl]
    linear_combination r1011
  · erw [idBits_get rho 1 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 2 = rho 680 from rfl]
    linear_combination r1010
  · erw [idBits_get rho 2 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 3 = rho 680 from rfl]
    linear_combination r1009
  · erw [idBits_get rho 3 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 4 = rho 680 from rfl]
    linear_combination r1008
  · erw [idBits_get rho 4 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 5 = rho 680 from rfl]
    linear_combination r1007
  · erw [idBits_get rho 5 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 6 = rho 680 from rfl]
    linear_combination r1006
  · erw [idBits_get rho 6 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 7 = rho 680 from rfl]
    linear_combination r1005
  · erw [idBits_get rho 7 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 8 = rho 680 from rfl]
    linear_combination r1004
  · erw [idBits_get rho 8 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 9 = rho 680 from rfl]
    linear_combination r1003
  · erw [idBits_get rho 9 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 10 = rho 680 from rfl]
    linear_combination r1002
  · erw [idBits_get rho 10 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 11 = rho 680 from rfl]
    linear_combination r1001
  · erw [idBits_get rho 11 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 12 = rho 680 from rfl]
    linear_combination r1000
  · erw [idBits_get rho 12 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 13 = rho 680 from rfl]
    linear_combination r999
  · erw [idBits_get rho 13 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 14 = rho 680 from rfl]
    linear_combination r998
  · erw [idBits_get rho 14 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 15 = rho 680 from rfl]
    linear_combination r997
  · erw [idBits_get rho 15 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 16 = rho 680 from rfl]
    linear_combination r996

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
