import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapIdCompareChunk2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapId_compare_chunk3 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ j, 48 ≤ j → j < 64 → pmBit j = false → (idBits rho)[j]! * (1 - (idBits rho)[j]! - gapIdFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, p11, p12, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart11 at p11
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r953, r954, r955, r956, r957, r958, r959⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart12 at p12
  rcases p12 with ⟨r960, r961, r962, r963, r964, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow953 at r953
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow954 at r954
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow955 at r955
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow956 at r956
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow957 at r957
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow958 at r958
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow959 at r959
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow960 at r960
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow961 at r961
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow962 at r962
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow963 at r963
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow964 at r964
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 48 = true := by decide +kernel
    simp [hb] at hpm
  · erw [idBits_get rho 49 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 50 = rho 678 from rfl]
    linear_combination r964
  · erw [idBits_get rho 50 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 51 = rho 678 from rfl]
    linear_combination r963
  · erw [idBits_get rho 51 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 52 = rho 678 from rfl]
    linear_combination r962
  · have hb : pmBit 52 = true := by decide +kernel
    simp [hb] at hpm
  · erw [idBits_get rho 53 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 54 = rho 677 from rfl]
    linear_combination r961
  · erw [idBits_get rho 54 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 55 = rho 677 from rfl]
    linear_combination r960
  · erw [idBits_get rho 55 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 56 = rho 677 from rfl]
    linear_combination r959
  · erw [idBits_get rho 56 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 57 = rho 677 from rfl]
    linear_combination r958
  · have hb : pmBit 57 = true := by decide +kernel
    simp [hb] at hpm
  · erw [idBits_get rho 58 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 59 = rho 676 from rfl]
    linear_combination r957
  · have hb : pmBit 59 = true := by decide +kernel
    simp [hb] at hpm
  · erw [idBits_get rho 60 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 61 = rho 675 from rfl]
    linear_combination r956
  · erw [idBits_get rho 61 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 62 = rho 675 from rfl]
    linear_combination r955
  · erw [idBits_get rho 62 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 63 = rho 675 from rfl]
    linear_combination r954
  · erw [idBits_get rho 63 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 64 = rho 675 from rfl]
    linear_combination r953

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
