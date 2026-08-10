import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk122
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep246 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        6 (lowerPeImt rho 247) (lowerIlImt rho 247)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      7 (lowerPeImt rho 246) (lowerIlImt rho 246) := by
  have r2502 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2502 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2503 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2503 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2504 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2504 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2505 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2505 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2502 at r2502
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2503 at r2503
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2504 at r2504
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2505 at r2505
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 6
    (lowerPeImt rho 246 *
      (1 + 2 * ((leafBitsImt rho)[6]! * (idBitsImt rho)[6]!)
        - (leafBitsImt rho)[6]!
        - (idBitsImt rho)[6]!))
    (lowerIlImt rho 246 + lowerPeImt rho 246 *
      ((1 - (leafBitsImt rho)[6]!) *
        (idBitsImt rho)[6]!))
  rw [show
      lowerPeImt rho 246 *
        (1 + 2 * ((leafBitsImt rho)[6]! * (idBitsImt rho)[6]!)
          - (leafBitsImt rho)[6]!
          - (idBitsImt rho)[6]!) =
        lowerPeImt rho 247 by
    have hPe :
        lowerPe rho 246 *
          (1 + 2 * ((leafBits rho)[6]! * (idBits rho)[6]!)
            - (leafBits rho)[6]!
            - (idBits rho)[6]!) =
          lowerPe rho 247 := by
      rw [leafBits_get rho 6 (by omega),
        idBits_get rho 6 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2505 + 2 * (rho 2004) * r2504
    simpa only [
      lowerPeImt,
      leafBits_get rho 6 (by omega),
      idBits_get rho 6 (by omega),
      leafBitsImt_get rho 6 (by omega),
      idBitsImt_get rho 6 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 246 + lowerPeImt rho 246 *
        ((1 - (leafBitsImt rho)[6]!) *
          (idBitsImt rho)[6]!) =
        lowerIlImt rho 247 by
    have hIl :
        lowerIl rho 246 + lowerPe rho 246 *
          ((1 - (leafBits rho)[6]!) *
            (idBits rho)[6]!) =
          lowerIl rho 247 := by
      rw [leafBits_get rho 6 (by omega),
        idBits_get rho 6 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 246 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 245 + rho 2006 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 245)
      rw [hsum]
      linear_combination (rho 347) * r2502 + r2503
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 6 (by omega),
      idBits_get rho 6 (by omega),
      leafBitsImt_get rho 6 (by omega),
      idBitsImt_get rho 6 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep247 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        5 (lowerPeImt rho 248) (lowerIlImt rho 248)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      6 (lowerPeImt rho 247) (lowerIlImt rho 247) := by
  have r2506 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2506 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2507 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2507 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2508 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2508 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2509 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2509 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2506 at r2506
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2507 at r2507
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2508 at r2508
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2509 at r2509
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 5
    (lowerPeImt rho 247 *
      (1 + 2 * ((leafBitsImt rho)[5]! * (idBitsImt rho)[5]!)
        - (leafBitsImt rho)[5]!
        - (idBitsImt rho)[5]!))
    (lowerIlImt rho 247 + lowerPeImt rho 247 *
      ((1 - (leafBitsImt rho)[5]!) *
        (idBitsImt rho)[5]!))
  rw [show
      lowerPeImt rho 247 *
        (1 + 2 * ((leafBitsImt rho)[5]! * (idBitsImt rho)[5]!)
          - (leafBitsImt rho)[5]!
          - (idBitsImt rho)[5]!) =
        lowerPeImt rho 248 by
    have hPe :
        lowerPe rho 247 *
          (1 + 2 * ((leafBits rho)[5]! * (idBits rho)[5]!)
            - (leafBits rho)[5]!
            - (idBits rho)[5]!) =
          lowerPe rho 248 := by
      rw [leafBits_get rho 5 (by omega),
        idBits_get rho 5 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2509 + 2 * (rho 2008) * r2508
    simpa only [
      lowerPeImt,
      leafBits_get rho 5 (by omega),
      idBits_get rho 5 (by omega),
      leafBitsImt_get rho 5 (by omega),
      idBitsImt_get rho 5 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 247 + lowerPeImt rho 247 *
        ((1 - (leafBitsImt rho)[5]!) *
          (idBitsImt rho)[5]!) =
        lowerIlImt rho 248 by
    have hIl :
        lowerIl rho 247 + lowerPe rho 247 *
          ((1 - (leafBits rho)[5]!) *
            (idBits rho)[5]!) =
          lowerIl rho 248 := by
      rw [leafBits_get rho 5 (by omega),
        idBits_get rho 5 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 247 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 246 + rho 2010 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 246)
      rw [hsum]
      linear_combination (rho 346) * r2506 + r2507
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 5 (by omega),
      idBits_get rho 5 (by omega),
      leafBitsImt_get rho 5 (by omega),
      idBitsImt_get rho 5 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange123 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      5 (lowerPeImt rho 248) (lowerIlImt rho 248)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      7 (lowerPeImt rho 246) (lowerIlImt rho 246) := by
  exact lowerStep246 rho h k (lowerStep247 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
