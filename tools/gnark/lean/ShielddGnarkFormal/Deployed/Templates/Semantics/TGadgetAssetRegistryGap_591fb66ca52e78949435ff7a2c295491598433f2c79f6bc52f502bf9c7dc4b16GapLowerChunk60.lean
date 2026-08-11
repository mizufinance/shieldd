import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk59
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep120 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        132 (lowerPeImt rho 121) (lowerIlImt rho 121)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      133 (lowerPeImt rho 120) (lowerIlImt rho 120) := by
  have r1998 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1998 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1999 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1999 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2
  have r2000 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2000 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1
  have r2001 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2001 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1998 at r1998
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1999 at r1999
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2000 at r2000
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2001 at r2001
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 132
    (lowerPeImt rho 120 *
      (1 + 2 * ((leafBitsImt rho)[132]! * (idBitsImt rho)[132]!)
        - (leafBitsImt rho)[132]!
        - (idBitsImt rho)[132]!))
    (lowerIlImt rho 120 + lowerPeImt rho 120 *
      ((1 - (leafBitsImt rho)[132]!) *
        (idBitsImt rho)[132]!))
  rw [show
      lowerPeImt rho 120 *
        (1 + 2 * ((leafBitsImt rho)[132]! * (idBitsImt rho)[132]!)
          - (leafBitsImt rho)[132]!
          - (idBitsImt rho)[132]!) =
        lowerPeImt rho 121 by
    have hPe :
        lowerPe rho 120 *
          (1 + 2 * ((leafBits rho)[132]! * (idBits rho)[132]!)
            - (leafBits rho)[132]!
            - (idBits rho)[132]!) =
          lowerPe rho 121 := by
      rw [leafBits_get rho 132 (by omega),
        idBits_get rho 132 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2001 + 2 * (rho 1500) * r2000
    simpa only [
      lowerPeImt,
      leafBits_get rho 132 (by omega),
      idBits_get rho 132 (by omega),
      leafBitsImt_get rho 132 (by omega),
      idBitsImt_get rho 132 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 120 + lowerPeImt rho 120 *
        ((1 - (leafBitsImt rho)[132]!) *
          (idBitsImt rho)[132]!) =
        lowerIlImt rho 121 by
    have hIl :
        lowerIl rho 120 + lowerPe rho 120 *
          ((1 - (leafBits rho)[132]!) *
            (idBits rho)[132]!) =
          lowerIl rho 121 := by
      rw [leafBits_get rho 132 (by omega),
        idBits_get rho 132 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 120 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 119 + rho 1502 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 119)
      rw [hsum]
      linear_combination (rho 473) * r1998 + r1999
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 132 (by omega),
      idBits_get rho 132 (by omega),
      leafBitsImt_get rho 132 (by omega),
      idBitsImt_get rho 132 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep121 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        131 (lowerPeImt rho 122) (lowerIlImt rho 122)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      132 (lowerPeImt rho 121) (lowerIlImt rho 121) := by
  have r2002 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2002 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.1
  have r2003 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2003 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.1
  have r2004 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2004 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.1
  have r2005 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2005 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2002 at r2002
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2003 at r2003
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2004 at r2004
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2005 at r2005
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 131
    (lowerPeImt rho 121 *
      (1 + 2 * ((leafBitsImt rho)[131]! * (idBitsImt rho)[131]!)
        - (leafBitsImt rho)[131]!
        - (idBitsImt rho)[131]!))
    (lowerIlImt rho 121 + lowerPeImt rho 121 *
      ((1 - (leafBitsImt rho)[131]!) *
        (idBitsImt rho)[131]!))
  rw [show
      lowerPeImt rho 121 *
        (1 + 2 * ((leafBitsImt rho)[131]! * (idBitsImt rho)[131]!)
          - (leafBitsImt rho)[131]!
          - (idBitsImt rho)[131]!) =
        lowerPeImt rho 122 by
    have hPe :
        lowerPe rho 121 *
          (1 + 2 * ((leafBits rho)[131]! * (idBits rho)[131]!)
            - (leafBits rho)[131]!
            - (idBits rho)[131]!) =
          lowerPe rho 122 := by
      rw [leafBits_get rho 131 (by omega),
        idBits_get rho 131 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2005 + 2 * (rho 1504) * r2004
    simpa only [
      lowerPeImt,
      leafBits_get rho 131 (by omega),
      idBits_get rho 131 (by omega),
      leafBitsImt_get rho 131 (by omega),
      idBitsImt_get rho 131 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 121 + lowerPeImt rho 121 *
        ((1 - (leafBitsImt rho)[131]!) *
          (idBitsImt rho)[131]!) =
        lowerIlImt rho 122 by
    have hIl :
        lowerIl rho 121 + lowerPe rho 121 *
          ((1 - (leafBits rho)[131]!) *
            (idBits rho)[131]!) =
          lowerIl rho 122 := by
      rw [leafBits_get rho 131 (by omega),
        idBits_get rho 131 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 121 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 120 + rho 1506 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 120)
      rw [hsum]
      linear_combination (rho 472) * r2002 + r2003
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 131 (by omega),
      idBits_get rho 131 (by omega),
      leafBitsImt_get rho 131 (by omega),
      idBitsImt_get rho 131 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange60 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      131 (lowerPeImt rho 122) (lowerIlImt rho 122)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      133 (lowerPeImt rho 120) (lowerIlImt rho 120) := by
  exact lowerStep120 rho h k (lowerStep121 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
