import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapIdCompareChunk3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapId_compare_chunk4 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ j, 64 ≤ j → j < 80 → pmBit j = false → (idBits rho)[j]! * (1 - (idBits rho)[j]! - gapIdFlag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, p11, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationPart11 at p11
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r938, r939, r940, r941, r942, r943, r944, r945, r946, r947, r948, r949, r950, r951, r952, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow938 at r938
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow939 at r939
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow940 at r940
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow941 at r941
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow942 at r942
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow943 at r943
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow944 at r944
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow945 at r945
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow946 at r946
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow947 at r947
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow948 at r948
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow949 at r949
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow950 at r950
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow951 at r951
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow952 at r952
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 64 = true := by decide +kernel
    simp [hb] at hpm
  · erw [idBits_get rho 65 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 66 = rho 674 from rfl]
    linear_combination r952
  · erw [idBits_get rho 66 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 67 = rho 674 from rfl]
    linear_combination r951
  · erw [idBits_get rho 67 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 68 = rho 674 from rfl]
    linear_combination r950
  · erw [idBits_get rho 68 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 69 = rho 674 from rfl]
    linear_combination r949
  · erw [idBits_get rho 69 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 70 = rho 674 from rfl]
    linear_combination r948
  · erw [idBits_get rho 70 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 71 = rho 674 from rfl]
    linear_combination r947
  · erw [idBits_get rho 71 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 72 = rho 674 from rfl]
    linear_combination r946
  · erw [idBits_get rho 72 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 73 = rho 674 from rfl]
    linear_combination r945
  · erw [idBits_get rho 73 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 74 = rho 674 from rfl]
    linear_combination r944
  · erw [idBits_get rho 74 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 75 = rho 674 from rfl]
    linear_combination r943
  · erw [idBits_get rho 75 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 76 = rho 674 from rfl]
    linear_combination r942
  · erw [idBits_get rho 76 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 77 = rho 674 from rfl]
    linear_combination r941
  · erw [idBits_get rho 77 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 78 = rho 674 from rfl]
    linear_combination r940
  · erw [idBits_get rho 78 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 79 = rho 674 from rfl]
    linear_combination r939
  · erw [idBits_get rho 79 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show gapIdFlag rho 80 = rho 674 from rfl]
    linear_combination r938

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
