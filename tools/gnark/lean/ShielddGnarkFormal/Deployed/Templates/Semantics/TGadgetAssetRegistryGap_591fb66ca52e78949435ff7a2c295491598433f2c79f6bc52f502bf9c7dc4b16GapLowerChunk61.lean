import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk60
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep122 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        130 (lowerPeImt rho 123) (lowerIlImt rho 123)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      131 (lowerPeImt rho 122) (lowerIlImt rho 122) := by
  have r2006 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2006 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.1
  have r2007 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2007 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.1
  have r2008 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2008 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.1
  have r2009 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2009 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2006 at r2006
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2007 at r2007
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2008 at r2008
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2009 at r2009
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 130
    (lowerPeImt rho 122 *
      (1 + 2 * ((leafBitsImt rho)[130]! * (idBitsImt rho)[130]!)
        - (leafBitsImt rho)[130]!
        - (idBitsImt rho)[130]!))
    (lowerIlImt rho 122 + lowerPeImt rho 122 *
      ((1 - (leafBitsImt rho)[130]!) *
        (idBitsImt rho)[130]!))
  rw [show
      lowerPeImt rho 122 *
        (1 + 2 * ((leafBitsImt rho)[130]! * (idBitsImt rho)[130]!)
          - (leafBitsImt rho)[130]!
          - (idBitsImt rho)[130]!) =
        lowerPeImt rho 123 by
    have hPe :
        lowerPe rho 122 *
          (1 + 2 * ((leafBits rho)[130]! * (idBits rho)[130]!)
            - (leafBits rho)[130]!
            - (idBits rho)[130]!) =
          lowerPe rho 123 := by
      rw [leafBits_get rho 130 (by omega),
        idBits_get rho 130 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2009 + 2 * (rho 1508) * r2008
    simpa only [
      lowerPeImt,
      leafBits_get rho 130 (by omega),
      idBits_get rho 130 (by omega),
      leafBitsImt_get rho 130 (by omega),
      idBitsImt_get rho 130 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 122 + lowerPeImt rho 122 *
        ((1 - (leafBitsImt rho)[130]!) *
          (idBitsImt rho)[130]!) =
        lowerIlImt rho 123 by
    have hIl :
        lowerIl rho 122 + lowerPe rho 122 *
          ((1 - (leafBits rho)[130]!) *
            (idBits rho)[130]!) =
          lowerIl rho 123 := by
      rw [leafBits_get rho 130 (by omega),
        idBits_get rho 130 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 122 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 121 + rho 1510 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 121)
      rw [hsum]
      linear_combination (rho 471) * r2006 + r2007
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 130 (by omega),
      idBits_get rho 130 (by omega),
      leafBitsImt_get rho 130 (by omega),
      idBitsImt_get rho 130 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep123 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        129 (lowerPeImt rho 124) (lowerIlImt rho 124)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      130 (lowerPeImt rho 123) (lowerIlImt rho 123) := by
  have r2010 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2010 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.1
  have r2011 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2011 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.1
  have r2012 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2012 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2013 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2013 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2010 at r2010
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2011 at r2011
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2012 at r2012
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2013 at r2013
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 129
    (lowerPeImt rho 123 *
      (1 + 2 * ((leafBitsImt rho)[129]! * (idBitsImt rho)[129]!)
        - (leafBitsImt rho)[129]!
        - (idBitsImt rho)[129]!))
    (lowerIlImt rho 123 + lowerPeImt rho 123 *
      ((1 - (leafBitsImt rho)[129]!) *
        (idBitsImt rho)[129]!))
  rw [show
      lowerPeImt rho 123 *
        (1 + 2 * ((leafBitsImt rho)[129]! * (idBitsImt rho)[129]!)
          - (leafBitsImt rho)[129]!
          - (idBitsImt rho)[129]!) =
        lowerPeImt rho 124 by
    have hPe :
        lowerPe rho 123 *
          (1 + 2 * ((leafBits rho)[129]! * (idBits rho)[129]!)
            - (leafBits rho)[129]!
            - (idBits rho)[129]!) =
          lowerPe rho 124 := by
      rw [leafBits_get rho 129 (by omega),
        idBits_get rho 129 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2013 + 2 * (rho 1512) * r2012
    simpa only [
      lowerPeImt,
      leafBits_get rho 129 (by omega),
      idBits_get rho 129 (by omega),
      leafBitsImt_get rho 129 (by omega),
      idBitsImt_get rho 129 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 123 + lowerPeImt rho 123 *
        ((1 - (leafBitsImt rho)[129]!) *
          (idBitsImt rho)[129]!) =
        lowerIlImt rho 124 by
    have hIl :
        lowerIl rho 123 + lowerPe rho 123 *
          ((1 - (leafBits rho)[129]!) *
            (idBits rho)[129]!) =
          lowerIl rho 124 := by
      rw [leafBits_get rho 129 (by omega),
        idBits_get rho 129 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 123 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 122 + rho 1514 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 122)
      rw [hsum]
      linear_combination (rho 470) * r2010 + r2011
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 129 (by omega),
      idBits_get rho 129 (by omega),
      leafBitsImt_get rho 129 (by omega),
      idBitsImt_get rho 129 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange61 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      129 (lowerPeImt rho 124) (lowerIlImt rho 124)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      131 (lowerPeImt rho 122) (lowerIlImt rho 122) := by
  exact lowerStep122 rho h k (lowerStep123 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
