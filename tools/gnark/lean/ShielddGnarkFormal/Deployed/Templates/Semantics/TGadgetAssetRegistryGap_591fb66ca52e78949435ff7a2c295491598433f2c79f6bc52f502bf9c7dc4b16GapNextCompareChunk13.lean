import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapNextCompareChunk12

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapNext_compare_chunk13 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ j, 208 ≤ j → j < 224 → pmBit j = false → (nextBits rho)[j]! * (1 - (nextBits rho)[j]! - gapNextFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p17, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart17 at p17
  rcases p17 with ⟨_, _, _, _, _, r1365, r1366, r1367, r1368, r1369, r1370, r1371, r1372, r1373, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1365 at r1365
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1366 at r1366
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1367 at r1367
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1368 at r1368
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1369 at r1369
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1370 at r1370
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1371 at r1371
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1372 at r1372
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1373 at r1373
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [nextBits_get rho 208 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 209 = rho 956 from rfl]
    linear_combination r1373
  · erw [nextBits_get rho 209 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 210 = rho 956 from rfl]
    linear_combination r1372
  · have hb : pmBit 210 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 211 = true := by decide +kernel
    simp [hb] at hpm
  · erw [nextBits_get rho 212 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 213 = rho 954 from rfl]
    linear_combination r1371
  · have hb : pmBit 213 = true := by decide +kernel
    simp [hb] at hpm
  · erw [nextBits_get rho 214 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 215 = rho 953 from rfl]
    linear_combination r1370
  · erw [nextBits_get rho 215 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 216 = rho 953 from rfl]
    linear_combination r1369
  · erw [nextBits_get rho 216 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 217 = rho 953 from rfl]
    linear_combination r1368
  · have hb : pmBit 217 = true := by decide +kernel
    simp [hb] at hpm
  · erw [nextBits_get rho 218 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 219 = rho 952 from rfl]
    linear_combination r1367
  · have hb : pmBit 219 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 220 = true := by decide +kernel
    simp [hb] at hpm
  · erw [nextBits_get rho 221 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 222 = rho 950 from rfl]
    linear_combination r1366
  · erw [nextBits_get rho 222 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapNextFlag rho 223 = rho 950 from rfl]
    linear_combination r1365
  · have hb : pmBit 223 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
