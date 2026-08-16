import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLeafCompareChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapLeaf_compare_chunk12 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ j, 192 ≤ j → j < 208 → pmBit j = false → (leafBits rho)[j]! * (1 - (leafBits rho)[j]! - gapLeafFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, p4, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart4 at p4
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r362, r363, r364, r365, r366, r367, r368, r369, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow362 at r362
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow363 at r363
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow364 at r364
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow365 at r365
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow366 at r366
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow367 at r367
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow368 at r368
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow369 at r369
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [leafBits_get rho 192 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 193 = rho 284 from rfl]
    linear_combination r369
  · have hb : pmBit 193 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 194 = true := by decide +kernel
    simp [hb] at hpm
  · erw [leafBits_get rho 195 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 196 = rho 282 from rfl]
    linear_combination r368
  · have hb : pmBit 196 = true := by decide +kernel
    simp [hb] at hpm
  · erw [leafBits_get rho 197 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 198 = rho 281 from rfl]
    linear_combination r367
  · have hb : pmBit 198 = true := by decide +kernel
    simp [hb] at hpm
  · erw [leafBits_get rho 199 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 200 = rho 280 from rfl]
    linear_combination r366
  · have hb : pmBit 200 = true := by decide +kernel
    simp [hb] at hpm
  · erw [leafBits_get rho 201 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 202 = rho 279 from rfl]
    linear_combination r365
  · have hb : pmBit 202 = true := by decide +kernel
    simp [hb] at hpm
  · erw [leafBits_get rho 203 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 204 = rho 278 from rfl]
    linear_combination r364
  · erw [leafBits_get rho 204 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 205 = rho 278 from rfl]
    linear_combination r363
  · have hb : pmBit 205 = true := by decide +kernel
    simp [hb] at hpm
  · erw [leafBits_get rho 206 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 207 = rho 277 from rfl]
    linear_combination r362
  · have hb : pmBit 207 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
