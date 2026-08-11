import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapIdTrueChunk5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapId_flag_step_chunk6 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ m, 96 ≤ m → m < 112 → gapIdFlag rho m = trueFactor (idBits rho) m * gapIdFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    p10, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart10 at p10
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r825, r826, r827, r828, r829, r830, r831, r832, r833, r834, r835, r836, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow825 at r825
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow826 at r826
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow827 at r827
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow828 at r828
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow829 at r829
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow830 at r830
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow831 at r831
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow832 at r832
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow833 at r833
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow834 at r834
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow835 at r835
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow836 at r836
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapIdFlag rho 96 = rho 671 from rfl, show gapIdFlag rho 97 = rho 671 from rfl]
    have hb : pmBit 96 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 96 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 97 = rho 671 from rfl, show gapIdFlag rho 98 = rho 670 from rfl]
    have hb : pmBit 97 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 97 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r836
  · rw [show gapIdFlag rho 98 = rho 670 from rfl, show gapIdFlag rho 99 = rho 669 from rfl]
    have hb : pmBit 98 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 98 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r835
  · rw [show gapIdFlag rho 99 = rho 669 from rfl, show gapIdFlag rho 100 = rho 668 from rfl]
    have hb : pmBit 99 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 99 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r834
  · rw [show gapIdFlag rho 100 = rho 668 from rfl, show gapIdFlag rho 101 = rho 667 from rfl]
    have hb : pmBit 100 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 100 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r833
  · rw [show gapIdFlag rho 101 = rho 667 from rfl, show gapIdFlag rho 102 = rho 666 from rfl]
    have hb : pmBit 101 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 101 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r832
  · rw [show gapIdFlag rho 102 = rho 666 from rfl, show gapIdFlag rho 103 = rho 665 from rfl]
    have hb : pmBit 102 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 102 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r831
  · rw [show gapIdFlag rho 103 = rho 665 from rfl, show gapIdFlag rho 104 = rho 664 from rfl]
    have hb : pmBit 103 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 103 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r830
  · rw [show gapIdFlag rho 104 = rho 664 from rfl, show gapIdFlag rho 105 = rho 664 from rfl]
    have hb : pmBit 104 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 104 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 105 = rho 664 from rfl, show gapIdFlag rho 106 = rho 663 from rfl]
    have hb : pmBit 105 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 105 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r829
  · rw [show gapIdFlag rho 106 = rho 663 from rfl, show gapIdFlag rho 107 = rho 662 from rfl]
    have hb : pmBit 106 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 106 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r828
  · rw [show gapIdFlag rho 107 = rho 662 from rfl, show gapIdFlag rho 108 = rho 662 from rfl]
    have hb : pmBit 107 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 107 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 108 = rho 662 from rfl, show gapIdFlag rho 109 = rho 661 from rfl]
    have hb : pmBit 108 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 108 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r827
  · rw [show gapIdFlag rho 109 = rho 661 from rfl, show gapIdFlag rho 110 = rho 660 from rfl]
    have hb : pmBit 109 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 109 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r826
  · rw [show gapIdFlag rho 110 = rho 660 from rfl, show gapIdFlag rho 111 = rho 659 from rfl]
    have hb : pmBit 110 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 110 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r825
  · rw [show gapIdFlag rho 111 = rho 659 from rfl, show gapIdFlag rho 112 = rho 659 from rfl]
    have hb : pmBit 111 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 111 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
