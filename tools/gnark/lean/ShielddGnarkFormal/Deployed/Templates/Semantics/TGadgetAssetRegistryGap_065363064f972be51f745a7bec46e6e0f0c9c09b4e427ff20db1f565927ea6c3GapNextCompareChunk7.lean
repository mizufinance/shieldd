import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapNextCompareChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapNext_compare_chunk7 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ j, 112 ≤ j → j < 128 → pmBit j = false → (nextBits rho)[j]! * (1 - (nextBits rho)[j]! - gapNextFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p17, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart17 at p17
  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1419, r1420, r1421, r1422, r1423, r1424, r1425, r1426, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1419 at r1419
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1420 at r1420
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1421 at r1421
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1422 at r1422
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1423 at r1423
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1424 at r1424
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1425 at r1425
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1426 at r1426
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [nextBits_get rho 112 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 113 = rho 999 from rfl]
    linear_combination r1426
  · have hb : pmBit 113 = true := by decide +kernel
    simp [hb] at hpm
  · erw [nextBits_get rho 114 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 115 = rho 998 from rfl]
    linear_combination r1425
  · have hb : pmBit 115 = true := by decide +kernel
    simp [hb] at hpm
  · erw [nextBits_get rho 116 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 117 = rho 997 from rfl]
    linear_combination r1424
  · have hb : pmBit 117 = true := by decide +kernel
    simp [hb] at hpm
  · erw [nextBits_get rho 118 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 119 = rho 996 from rfl]
    linear_combination r1423
  · have hb : pmBit 119 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 120 = true := by decide +kernel
    simp [hb] at hpm
  · erw [nextBits_get rho 121 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 122 = rho 994 from rfl]
    linear_combination r1422
  · erw [nextBits_get rho 122 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 123 = rho 994 from rfl]
    linear_combination r1421
  · have hb : pmBit 123 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 124 = true := by decide +kernel
    simp [hb] at hpm
  · erw [nextBits_get rho 125 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 126 = rho 992 from rfl]
    linear_combination r1420
  · have hb : pmBit 126 = true := by decide +kernel
    simp [hb] at hpm
  · erw [nextBits_get rho 127 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 128 = rho 991 from rfl]
    linear_combination r1419

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
