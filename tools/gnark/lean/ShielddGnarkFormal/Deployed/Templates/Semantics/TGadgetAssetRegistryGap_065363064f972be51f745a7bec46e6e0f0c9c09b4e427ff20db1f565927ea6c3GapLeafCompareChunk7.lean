import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLeafCompareChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapLeaf_compare_chunk7 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ j, 112 ≤ j → j < 128 → pmBit j = false → (leafBits rho)[j]! * (1 - (leafBits rho)[j]! - gapLeafFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, p5, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart5 at p5
  rcases p5 with ⟨_, _, _, _, _, _, _, r407, r408, r409, r410, r411, r412, r413, r414, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow407 at r407
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow408 at r408
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow409 at r409
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow410 at r410
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow411 at r411
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow412 at r412
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow413 at r413
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow414 at r414
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [leafBits_get rho 112 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 113 = rho 319 from rfl]
    linear_combination r414
  · have hb : pmBit 113 = true := by decide +kernel
    simp [hb] at hpm
  · erw [leafBits_get rho 114 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 115 = rho 318 from rfl]
    linear_combination r413
  · have hb : pmBit 115 = true := by decide +kernel
    simp [hb] at hpm
  · erw [leafBits_get rho 116 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 117 = rho 317 from rfl]
    linear_combination r412
  · have hb : pmBit 117 = true := by decide +kernel
    simp [hb] at hpm
  · erw [leafBits_get rho 118 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 119 = rho 316 from rfl]
    linear_combination r411
  · have hb : pmBit 119 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 120 = true := by decide +kernel
    simp [hb] at hpm
  · erw [leafBits_get rho 121 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 122 = rho 314 from rfl]
    linear_combination r410
  · erw [leafBits_get rho 122 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 123 = rho 314 from rfl]
    linear_combination r409
  · have hb : pmBit 123 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 124 = true := by decide +kernel
    simp [hb] at hpm
  · erw [leafBits_get rho 125 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 126 = rho 312 from rfl]
    linear_combination r408
  · have hb : pmBit 126 = true := by decide +kernel
    simp [hb] at hpm
  · erw [leafBits_get rho 127 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 128 = rho 311 from rfl]
    linear_combination r407

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
