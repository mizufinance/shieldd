import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapIdCompareChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapId_compare_chunk12 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ j, 192 ≤ j → j < 208 → pmBit j = false → (idBits rho)[j]! * (1 - (idBits rho)[j]! - gapIdFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    p10, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart10 at p10
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r868, r869, r870, r871, r872, r873, r874, r875, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow868 at r868
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow869 at r869
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow870 at r870
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow871 at r871
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow872 at r872
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow873 at r873
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow874 at r874
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow875 at r875
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [idBits_get rho 192 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 193 = rho 624 from rfl]
    linear_combination r875
  · have hb : pmBit 193 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 194 = true := by decide +kernel
    simp [hb] at hpm
  · erw [idBits_get rho 195 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 196 = rho 622 from rfl]
    linear_combination r874
  · have hb : pmBit 196 = true := by decide +kernel
    simp [hb] at hpm
  · erw [idBits_get rho 197 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 198 = rho 621 from rfl]
    linear_combination r873
  · have hb : pmBit 198 = true := by decide +kernel
    simp [hb] at hpm
  · erw [idBits_get rho 199 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 200 = rho 620 from rfl]
    linear_combination r872
  · have hb : pmBit 200 = true := by decide +kernel
    simp [hb] at hpm
  · erw [idBits_get rho 201 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 202 = rho 619 from rfl]
    linear_combination r871
  · have hb : pmBit 202 = true := by decide +kernel
    simp [hb] at hpm
  · erw [idBits_get rho 203 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 204 = rho 618 from rfl]
    linear_combination r870
  · erw [idBits_get rho 204 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 205 = rho 618 from rfl]
    linear_combination r869
  · have hb : pmBit 205 = true := by decide +kernel
    simp [hb] at hpm
  · erw [idBits_get rho 206 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 207 = rho 617 from rfl]
    linear_combination r868
  · have hb : pmBit 207 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
