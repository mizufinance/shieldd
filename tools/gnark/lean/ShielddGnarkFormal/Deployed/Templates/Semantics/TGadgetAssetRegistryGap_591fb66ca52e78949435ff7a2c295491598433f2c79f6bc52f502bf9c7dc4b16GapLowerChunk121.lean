import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk120
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep242 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        10 (lowerPeImt rho 243) (lowerIlImt rho 243)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      11 (lowerPeImt rho 242) (lowerIlImt rho 242) := by
  have r2486 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2486 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.1
  have r2487 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2487 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.1
  have r2488 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2488 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.1
  have r2489 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2489 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2486 at r2486
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2487 at r2487
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2488 at r2488
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2489 at r2489
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 10
    (lowerPeImt rho 242 *
      (1 + 2 * ((leafBitsImt rho)[10]! * (idBitsImt rho)[10]!)
        - (leafBitsImt rho)[10]!
        - (idBitsImt rho)[10]!))
    (lowerIlImt rho 242 + lowerPeImt rho 242 *
      ((1 - (leafBitsImt rho)[10]!) *
        (idBitsImt rho)[10]!))
  rw [show
      lowerPeImt rho 242 *
        (1 + 2 * ((leafBitsImt rho)[10]! * (idBitsImt rho)[10]!)
          - (leafBitsImt rho)[10]!
          - (idBitsImt rho)[10]!) =
        lowerPeImt rho 243 by
    have hPe :
        lowerPe rho 242 *
          (1 + 2 * ((leafBits rho)[10]! * (idBits rho)[10]!)
            - (leafBits rho)[10]!
            - (idBits rho)[10]!) =
          lowerPe rho 243 := by
      rw [leafBits_get rho 10 (by omega),
        idBits_get rho 10 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2489 + 2 * (rho 1988) * r2488
    simpa only [
      lowerPeImt,
      leafBits_get rho 10 (by omega),
      idBits_get rho 10 (by omega),
      leafBitsImt_get rho 10 (by omega),
      idBitsImt_get rho 10 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 242 + lowerPeImt rho 242 *
        ((1 - (leafBitsImt rho)[10]!) *
          (idBitsImt rho)[10]!) =
        lowerIlImt rho 243 by
    have hIl :
        lowerIl rho 242 + lowerPe rho 242 *
          ((1 - (leafBits rho)[10]!) *
            (idBits rho)[10]!) =
          lowerIl rho 243 := by
      rw [leafBits_get rho 10 (by omega),
        idBits_get rho 10 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 242 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 241 + rho 1990 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 241)
      rw [hsum]
      linear_combination (rho 351) * r2486 + r2487
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 10 (by omega),
      idBits_get rho 10 (by omega),
      leafBitsImt_get rho 10 (by omega),
      idBitsImt_get rho 10 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep243 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        9 (lowerPeImt rho 244) (lowerIlImt rho 244)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      10 (lowerPeImt rho 243) (lowerIlImt rho 243) := by
  have r2490 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2490 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.1
  have r2491 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2491 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.1
  have r2492 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2492 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2493 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2493 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2490 at r2490
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2491 at r2491
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2492 at r2492
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2493 at r2493
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 9
    (lowerPeImt rho 243 *
      (1 + 2 * ((leafBitsImt rho)[9]! * (idBitsImt rho)[9]!)
        - (leafBitsImt rho)[9]!
        - (idBitsImt rho)[9]!))
    (lowerIlImt rho 243 + lowerPeImt rho 243 *
      ((1 - (leafBitsImt rho)[9]!) *
        (idBitsImt rho)[9]!))
  rw [show
      lowerPeImt rho 243 *
        (1 + 2 * ((leafBitsImt rho)[9]! * (idBitsImt rho)[9]!)
          - (leafBitsImt rho)[9]!
          - (idBitsImt rho)[9]!) =
        lowerPeImt rho 244 by
    have hPe :
        lowerPe rho 243 *
          (1 + 2 * ((leafBits rho)[9]! * (idBits rho)[9]!)
            - (leafBits rho)[9]!
            - (idBits rho)[9]!) =
          lowerPe rho 244 := by
      rw [leafBits_get rho 9 (by omega),
        idBits_get rho 9 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2493 + 2 * (rho 1992) * r2492
    simpa only [
      lowerPeImt,
      leafBits_get rho 9 (by omega),
      idBits_get rho 9 (by omega),
      leafBitsImt_get rho 9 (by omega),
      idBitsImt_get rho 9 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 243 + lowerPeImt rho 243 *
        ((1 - (leafBitsImt rho)[9]!) *
          (idBitsImt rho)[9]!) =
        lowerIlImt rho 244 by
    have hIl :
        lowerIl rho 243 + lowerPe rho 243 *
          ((1 - (leafBits rho)[9]!) *
            (idBits rho)[9]!) =
          lowerIl rho 244 := by
      rw [leafBits_get rho 9 (by omega),
        idBits_get rho 9 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 243 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 242 + rho 1994 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 242)
      rw [hsum]
      linear_combination (rho 350) * r2490 + r2491
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 9 (by omega),
      idBits_get rho 9 (by omega),
      leafBitsImt_get rho 9 (by omega),
      idBitsImt_get rho 9 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange121 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      9 (lowerPeImt rho 244) (lowerIlImt rho 244)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      11 (lowerPeImt rho 242) (lowerIlImt rho 242) := by
  exact lowerStep242 rho h k (lowerStep243 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
