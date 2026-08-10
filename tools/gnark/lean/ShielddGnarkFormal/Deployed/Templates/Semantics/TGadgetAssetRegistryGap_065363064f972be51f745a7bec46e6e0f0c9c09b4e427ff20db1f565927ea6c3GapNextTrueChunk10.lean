import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapNextTrueChunk9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapNext_flag_step_chunk10 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ m, 160 ≤ m → m < 176 → gapNextFlag rho m = trueFactor (nextBits rho) m * gapNextFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1302, r1303, r1304, r1305, r1306, r1307, r1308, r1309, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1302 at r1302
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1303 at r1303
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1304 at r1304
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1305 at r1305
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1306 at r1306
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1307 at r1307
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1308 at r1308
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1309 at r1309
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapNextFlag rho 160 = rho 978 from rfl, show gapNextFlag rho 161 = rho 978 from rfl]
    have hb : pmBit 160 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 160 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 161 = rho 978 from rfl, show gapNextFlag rho 162 = rho 977 from rfl]
    have hb : pmBit 161 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 161 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1309
  · rw [show gapNextFlag rho 162 = rho 977 from rfl, show gapNextFlag rho 163 = rho 976 from rfl]
    have hb : pmBit 162 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 162 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1308
  · rw [show gapNextFlag rho 163 = rho 976 from rfl, show gapNextFlag rho 164 = rho 975 from rfl]
    have hb : pmBit 163 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 163 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1307
  · rw [show gapNextFlag rho 164 = rho 975 from rfl, show gapNextFlag rho 165 = rho 974 from rfl]
    have hb : pmBit 164 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 164 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1306
  · rw [show gapNextFlag rho 165 = rho 974 from rfl, show gapNextFlag rho 166 = rho 974 from rfl]
    have hb : pmBit 165 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 165 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 166 = rho 974 from rfl, show gapNextFlag rho 167 = rho 974 from rfl]
    have hb : pmBit 166 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 166 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 167 = rho 974 from rfl, show gapNextFlag rho 168 = rho 974 from rfl]
    have hb : pmBit 167 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 167 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 168 = rho 974 from rfl, show gapNextFlag rho 169 = rho 973 from rfl]
    have hb : pmBit 168 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 168 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1305
  · rw [show gapNextFlag rho 169 = rho 973 from rfl, show gapNextFlag rho 170 = rho 973 from rfl]
    have hb : pmBit 169 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 169 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 170 = rho 973 from rfl, show gapNextFlag rho 171 = rho 972 from rfl]
    have hb : pmBit 170 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 170 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1304
  · rw [show gapNextFlag rho 171 = rho 972 from rfl, show gapNextFlag rho 172 = rho 971 from rfl]
    have hb : pmBit 171 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 171 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1303
  · rw [show gapNextFlag rho 172 = rho 971 from rfl, show gapNextFlag rho 173 = rho 971 from rfl]
    have hb : pmBit 172 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 172 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 173 = rho 971 from rfl, show gapNextFlag rho 174 = rho 971 from rfl]
    have hb : pmBit 173 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 173 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 174 = rho 971 from rfl, show gapNextFlag rho 175 = rho 970 from rfl]
    have hb : pmBit 174 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [nextBits_get rho 174 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1302
  · rw [show gapNextFlag rho 175 = rho 970 from rfl, show gapNextFlag rho 176 = rho 970 from rfl]
    have hb : pmBit 175 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 175 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
