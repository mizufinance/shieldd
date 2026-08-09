import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapIdCompareChunk9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapId_compare_chunk10 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ j, 160 ≤ j → j < 176 → pmBit j = false → (idBits rho)[j]! * (1 - (idBits rho)[j]! - gapIdFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, p11, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart11 at p11
  rcases p11 with ⟨_, _, _, _, _, _, r886, r887, r888, r889, r890, r891, r892, r893, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow886 at r886
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow887 at r887
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow888 at r888
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow889 at r889
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow890 at r890
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow891 at r891
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow892 at r892
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow893 at r893
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [idBits_get rho 160 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 161 = rho 638 from rfl]
    linear_combination r893
  · have hb : pmBit 161 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 162 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 163 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 164 = true := by decide +kernel
    simp [hb] at hpm
  · erw [idBits_get rho 165 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 166 = rho 634 from rfl]
    linear_combination r892
  · erw [idBits_get rho 166 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 167 = rho 634 from rfl]
    linear_combination r891
  · erw [idBits_get rho 167 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 168 = rho 634 from rfl]
    linear_combination r890
  · have hb : pmBit 168 = true := by decide +kernel
    simp [hb] at hpm
  · erw [idBits_get rho 169 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 170 = rho 633 from rfl]
    linear_combination r889
  · have hb : pmBit 170 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 171 = true := by decide +kernel
    simp [hb] at hpm
  · erw [idBits_get rho 172 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 173 = rho 631 from rfl]
    linear_combination r888
  · erw [idBits_get rho 173 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 174 = rho 631 from rfl]
    linear_combination r887
  · have hb : pmBit 174 = true := by decide +kernel
    simp [hb] at hpm
  · erw [idBits_get rho 175 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 176 = rho 630 from rfl]
    linear_combination r886

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
