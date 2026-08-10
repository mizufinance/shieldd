import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLeafCompareChunk10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapLeaf_compare_chunk11 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ j, 176 ≤ j → j < 192 → pmBit j = false → (leafBits rho)[j]! * (1 - (leafBits rho)[j]! - gapLeafFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, _, p4, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart4 at p4
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r370, r371, r372, r373, r374, r375, r376, r377, r378, r379, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow370 at r370
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow371 at r371
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow372 at r372
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow373 at r373
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow374 at r374
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow375 at r375
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow376 at r376
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow377 at r377
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow378 at r378
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow379 at r379
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [leafBits_get rho 176 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 177 = rho 290 from rfl]
    linear_combination r379
  · erw [leafBits_get rho 177 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 178 = rho 290 from rfl]
    linear_combination r378
  · have hb : pmBit 178 = true := by decide +kernel
    simp [hb] at hpm
  · erw [leafBits_get rho 179 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 180 = rho 289 from rfl]
    linear_combination r377
  · have hb : pmBit 180 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 181 = true := by decide +kernel
    simp [hb] at hpm
  · erw [leafBits_get rho 182 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 183 = rho 287 from rfl]
    linear_combination r376
  · have hb : pmBit 183 = true := by decide +kernel
    simp [hb] at hpm
  · erw [leafBits_get rho 184 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 185 = rho 286 from rfl]
    linear_combination r375
  · erw [leafBits_get rho 185 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 186 = rho 286 from rfl]
    linear_combination r374
  · erw [leafBits_get rho 186 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 187 = rho 286 from rfl]
    linear_combination r373
  · erw [leafBits_get rho 187 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 188 = rho 286 from rfl]
    linear_combination r372
  · erw [leafBits_get rho 188 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 189 = rho 286 from rfl]
    linear_combination r371
  · have hb : pmBit 189 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 190 = true := by decide +kernel
    simp [hb] at hpm
  · erw [leafBits_get rho 191 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapLeafFlag rho 192 = rho 284 from rfl]
    linear_combination r370

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
