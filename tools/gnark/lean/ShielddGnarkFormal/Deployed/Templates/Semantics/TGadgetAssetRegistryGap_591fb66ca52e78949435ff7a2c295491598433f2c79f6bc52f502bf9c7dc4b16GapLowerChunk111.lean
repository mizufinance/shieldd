import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk110
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep222 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        30 (lowerPeImt rho 223) (lowerIlImt rho 223)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      31 (lowerPeImt rho 222) (lowerIlImt rho 222) := by
  have r2406 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2406 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.1
  have r2407 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2407 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.1
  have r2408 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2408 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.1
  have r2409 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2409 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2406 at r2406
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2407 at r2407
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2408 at r2408
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2409 at r2409
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 30
    (lowerPeImt rho 222 *
      (1 + 2 * ((leafBitsImt rho)[30]! * (idBitsImt rho)[30]!)
        - (leafBitsImt rho)[30]!
        - (idBitsImt rho)[30]!))
    (lowerIlImt rho 222 + lowerPeImt rho 222 *
      ((1 - (leafBitsImt rho)[30]!) *
        (idBitsImt rho)[30]!))
  rw [show
      lowerPeImt rho 222 *
        (1 + 2 * ((leafBitsImt rho)[30]! * (idBitsImt rho)[30]!)
          - (leafBitsImt rho)[30]!
          - (idBitsImt rho)[30]!) =
        lowerPeImt rho 223 by
    have hPe :
        lowerPe rho 222 *
          (1 + 2 * ((leafBits rho)[30]! * (idBits rho)[30]!)
            - (leafBits rho)[30]!
            - (idBits rho)[30]!) =
          lowerPe rho 223 := by
      rw [leafBits_get rho 30 (by omega),
        idBits_get rho 30 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2409 + 2 * (rho 1908) * r2408
    simpa only [
      lowerPeImt,
      leafBits_get rho 30 (by omega),
      idBits_get rho 30 (by omega),
      leafBitsImt_get rho 30 (by omega),
      idBitsImt_get rho 30 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 222 + lowerPeImt rho 222 *
        ((1 - (leafBitsImt rho)[30]!) *
          (idBitsImt rho)[30]!) =
        lowerIlImt rho 223 by
    have hIl :
        lowerIl rho 222 + lowerPe rho 222 *
          ((1 - (leafBits rho)[30]!) *
            (idBits rho)[30]!) =
          lowerIl rho 223 := by
      rw [leafBits_get rho 30 (by omega),
        idBits_get rho 30 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 222 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 221 + rho 1910 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 221)
      rw [hsum]
      linear_combination (rho 371) * r2406 + r2407
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 30 (by omega),
      idBits_get rho 30 (by omega),
      leafBitsImt_get rho 30 (by omega),
      idBitsImt_get rho 30 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep223 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        29 (lowerPeImt rho 224) (lowerIlImt rho 224)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      30 (lowerPeImt rho 223) (lowerIlImt rho 223) := by
  have r2410 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2410 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.1
  have r2411 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2411 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.1
  have r2412 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2412 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2413 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2413 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2410 at r2410
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2411 at r2411
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2412 at r2412
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2413 at r2413
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 29
    (lowerPeImt rho 223 *
      (1 + 2 * ((leafBitsImt rho)[29]! * (idBitsImt rho)[29]!)
        - (leafBitsImt rho)[29]!
        - (idBitsImt rho)[29]!))
    (lowerIlImt rho 223 + lowerPeImt rho 223 *
      ((1 - (leafBitsImt rho)[29]!) *
        (idBitsImt rho)[29]!))
  rw [show
      lowerPeImt rho 223 *
        (1 + 2 * ((leafBitsImt rho)[29]! * (idBitsImt rho)[29]!)
          - (leafBitsImt rho)[29]!
          - (idBitsImt rho)[29]!) =
        lowerPeImt rho 224 by
    have hPe :
        lowerPe rho 223 *
          (1 + 2 * ((leafBits rho)[29]! * (idBits rho)[29]!)
            - (leafBits rho)[29]!
            - (idBits rho)[29]!) =
          lowerPe rho 224 := by
      rw [leafBits_get rho 29 (by omega),
        idBits_get rho 29 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2413 + 2 * (rho 1912) * r2412
    simpa only [
      lowerPeImt,
      leafBits_get rho 29 (by omega),
      idBits_get rho 29 (by omega),
      leafBitsImt_get rho 29 (by omega),
      idBitsImt_get rho 29 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 223 + lowerPeImt rho 223 *
        ((1 - (leafBitsImt rho)[29]!) *
          (idBitsImt rho)[29]!) =
        lowerIlImt rho 224 by
    have hIl :
        lowerIl rho 223 + lowerPe rho 223 *
          ((1 - (leafBits rho)[29]!) *
            (idBits rho)[29]!) =
          lowerIl rho 224 := by
      rw [leafBits_get rho 29 (by omega),
        idBits_get rho 29 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 223 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 222 + rho 1914 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 222)
      rw [hsum]
      linear_combination (rho 370) * r2410 + r2411
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 29 (by omega),
      idBits_get rho 29 (by omega),
      leafBitsImt_get rho 29 (by omega),
      idBitsImt_get rho 29 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange111 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      29 (lowerPeImt rho 224) (lowerIlImt rho 224)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      31 (lowerPeImt rho 222) (lowerIlImt rho 222) := by
  exact lowerStep222 rho h k (lowerStep223 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
