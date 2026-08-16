import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLeafCompareChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapLeaf_compare_chunk5 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ j, 80 ≤ j → j < 96 → pmBit j = false → (leafBits rho)[j]! * (1 - (leafBits rho)[j]! - gapLeafFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, p5, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart5 at p5
  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r419, r420, r421, r422, r423, r424, r425, r426, r427, r428, r429, r430, r431, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow419 at r419
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow420 at r420
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow421 at r421
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow422 at r422
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow423 at r423
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow424 at r424
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow425 at r425
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow426 at r426
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow427 at r427
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow428 at r428
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow429 at r429
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow430 at r430
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow431 at r431
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [leafBits_get rho 80 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 81 = rho 334 from rfl]
    linear_combination r431
  · erw [leafBits_get rho 81 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 82 = rho 334 from rfl]
    linear_combination r430
  · erw [leafBits_get rho 82 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 83 = rho 334 from rfl]
    linear_combination r429
  · erw [leafBits_get rho 83 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 84 = rho 334 from rfl]
    linear_combination r428
  · erw [leafBits_get rho 84 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 85 = rho 334 from rfl]
    linear_combination r427
  · erw [leafBits_get rho 85 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 86 = rho 334 from rfl]
    linear_combination r426
  · erw [leafBits_get rho 86 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 87 = rho 334 from rfl]
    linear_combination r425
  · erw [leafBits_get rho 87 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 88 = rho 334 from rfl]
    linear_combination r424
  · erw [leafBits_get rho 88 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 89 = rho 334 from rfl]
    linear_combination r423
  · erw [leafBits_get rho 89 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 90 = rho 334 from rfl]
    linear_combination r422
  · erw [leafBits_get rho 90 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 91 = rho 334 from rfl]
    linear_combination r421
  · erw [leafBits_get rho 91 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 92 = rho 334 from rfl]
    linear_combination r420
  · have hb : pmBit 92 = true := by decide +kernel
    simp [hb] at hpm
  · erw [leafBits_get rho 93 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 94 = rho 333 from rfl]
    linear_combination r419
  · have hb : pmBit 94 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 95 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
