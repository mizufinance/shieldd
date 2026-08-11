import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapIdTrueChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapId_flag_step_chunk7 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ m, 112 ≤ m → m < 128 → gapIdFlag rho m = trueFactor (idBits rho) m * gapIdFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    p10, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart10 at p10
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r817, r818, r819, r820, r821, r822, r823, r824, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow817 at r817
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow818 at r818
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow819 at r819
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow820 at r820
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow821 at r821
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow822 at r822
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow823 at r823
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow824 at r824
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapIdFlag rho 112 = rho 659 from rfl, show gapIdFlag rho 113 = rho 659 from rfl]
    have hb : pmBit 112 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 112 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 113 = rho 659 from rfl, show gapIdFlag rho 114 = rho 658 from rfl]
    have hb : pmBit 113 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 113 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r824
  · rw [show gapIdFlag rho 114 = rho 658 from rfl, show gapIdFlag rho 115 = rho 658 from rfl]
    have hb : pmBit 114 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 114 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 115 = rho 658 from rfl, show gapIdFlag rho 116 = rho 657 from rfl]
    have hb : pmBit 115 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 115 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r823
  · rw [show gapIdFlag rho 116 = rho 657 from rfl, show gapIdFlag rho 117 = rho 657 from rfl]
    have hb : pmBit 116 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 116 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 117 = rho 657 from rfl, show gapIdFlag rho 118 = rho 656 from rfl]
    have hb : pmBit 117 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 117 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r822
  · rw [show gapIdFlag rho 118 = rho 656 from rfl, show gapIdFlag rho 119 = rho 656 from rfl]
    have hb : pmBit 118 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 118 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 119 = rho 656 from rfl, show gapIdFlag rho 120 = rho 655 from rfl]
    have hb : pmBit 119 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 119 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r821
  · rw [show gapIdFlag rho 120 = rho 655 from rfl, show gapIdFlag rho 121 = rho 654 from rfl]
    have hb : pmBit 120 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 120 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r820
  · rw [show gapIdFlag rho 121 = rho 654 from rfl, show gapIdFlag rho 122 = rho 654 from rfl]
    have hb : pmBit 121 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 121 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 122 = rho 654 from rfl, show gapIdFlag rho 123 = rho 654 from rfl]
    have hb : pmBit 122 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 122 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 123 = rho 654 from rfl, show gapIdFlag rho 124 = rho 653 from rfl]
    have hb : pmBit 123 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 123 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r819
  · rw [show gapIdFlag rho 124 = rho 653 from rfl, show gapIdFlag rho 125 = rho 652 from rfl]
    have hb : pmBit 124 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 124 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r818
  · rw [show gapIdFlag rho 125 = rho 652 from rfl, show gapIdFlag rho 126 = rho 652 from rfl]
    have hb : pmBit 125 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 125 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 126 = rho 652 from rfl, show gapIdFlag rho 127 = rho 651 from rfl]
    have hb : pmBit 126 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 126 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r817
  · rw [show gapIdFlag rho 127 = rho 651 from rfl, show gapIdFlag rho 128 = rho 651 from rfl]
    have hb : pmBit 127 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 127 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
