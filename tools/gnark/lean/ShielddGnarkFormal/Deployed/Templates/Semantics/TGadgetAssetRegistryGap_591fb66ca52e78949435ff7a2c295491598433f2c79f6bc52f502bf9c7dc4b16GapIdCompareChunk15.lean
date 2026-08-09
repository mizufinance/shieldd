import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapIdCompareChunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapId_compare_chunk15 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ j, 240 ≤ j → j < 253 → pmBit j = false → (idBits rho)[j]! * (1 - (idBits rho)[j]! - gapIdFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    p10, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart10 at p10
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r846, r847, r848, r849, r850, r851, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow846 at r846
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow847 at r847
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow848 at r848
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow849 at r849
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow850 at r850
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow851 at r851
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 240 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 241 = true := by decide +kernel
    simp [hb] at hpm
  · erw [idBits_get rho 242 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 243 = rho 598 from rfl]
    linear_combination r851
  · have hb : pmBit 243 = true := by decide +kernel
    simp [hb] at hpm
  · erw [idBits_get rho 244 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 245 = rho 597 from rfl]
    linear_combination r850
  · have hb : pmBit 245 = true := by decide +kernel
    simp [hb] at hpm
  · erw [idBits_get rho 246 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 247 = rho 596 from rfl]
    linear_combination r849
  · have hb : pmBit 247 = true := by decide +kernel
    simp [hb] at hpm
  · erw [idBits_get rho 248 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 249 = rho 595 from rfl]
    linear_combination r848
  · have hb : pmBit 249 = true := by decide +kernel
    simp [hb] at hpm
  · erw [idBits_get rho 250 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 251 = rho 593 from rfl]
    linear_combination r847
  · erw [idBits_get rho 251 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 252 = rho 593 from rfl]
    linear_combination r846
  · have hb : pmBit 252 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
