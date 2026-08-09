import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk33
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep68 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        184 (lowerPeImt rho 69) (lowerIlImt rho 69)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      185 (lowerPeImt rho 68) (lowerIlImt rho 68) := by
  have r1790 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1790 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1791 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1791 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1792 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1792 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1793 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1793 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1790 at r1790
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1791 at r1791
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1792 at r1792
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1793 at r1793
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 184
    (lowerPeImt rho 68 *
      (1 + 2 * ((leafBitsImt rho)[184]! * (idBitsImt rho)[184]!)
        - (leafBitsImt rho)[184]!
        - (idBitsImt rho)[184]!))
    (lowerIlImt rho 68 + lowerPeImt rho 68 *
      ((1 - (leafBitsImt rho)[184]!) *
        (idBitsImt rho)[184]!))
  rw [show
      lowerPeImt rho 68 *
        (1 + 2 * ((leafBitsImt rho)[184]! * (idBitsImt rho)[184]!)
          - (leafBitsImt rho)[184]!
          - (idBitsImt rho)[184]!) =
        lowerPeImt rho 69 by
    have hPe :
        lowerPe rho 68 *
          (1 + 2 * ((leafBits rho)[184]! * (idBits rho)[184]!)
            - (leafBits rho)[184]!
            - (idBits rho)[184]!) =
          lowerPe rho 69 := by
      rw [leafBits_get rho 184 (by omega),
        idBits_get rho 184 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1793 + 2 * (rho 1292) * r1792
    simpa only [
      lowerPeImt,
      leafBits_get rho 184 (by omega),
      idBits_get rho 184 (by omega),
      leafBitsImt_get rho 184 (by omega),
      idBitsImt_get rho 184 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 68 + lowerPeImt rho 68 *
        ((1 - (leafBitsImt rho)[184]!) *
          (idBitsImt rho)[184]!) =
        lowerIlImt rho 69 by
    have hIl :
        lowerIl rho 68 + lowerPe rho 68 *
          ((1 - (leafBits rho)[184]!) *
            (idBits rho)[184]!) =
          lowerIl rho 69 := by
      rw [leafBits_get rho 184 (by omega),
        idBits_get rho 184 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 68 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 67 + rho 1294 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 67)
      rw [hsum]
      linear_combination (rho 525) * r1790 + r1791
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 184 (by omega),
      idBits_get rho 184 (by omega),
      leafBitsImt_get rho 184 (by omega),
      idBitsImt_get rho 184 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep69 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        183 (lowerPeImt rho 70) (lowerIlImt rho 70)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      184 (lowerPeImt rho 69) (lowerIlImt rho 69) := by
  have r1794 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1794 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1795 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1795 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1796 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1796 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1797 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1797 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1794 at r1794
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1795 at r1795
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1796 at r1796
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1797 at r1797
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 183
    (lowerPeImt rho 69 *
      (1 + 2 * ((leafBitsImt rho)[183]! * (idBitsImt rho)[183]!)
        - (leafBitsImt rho)[183]!
        - (idBitsImt rho)[183]!))
    (lowerIlImt rho 69 + lowerPeImt rho 69 *
      ((1 - (leafBitsImt rho)[183]!) *
        (idBitsImt rho)[183]!))
  rw [show
      lowerPeImt rho 69 *
        (1 + 2 * ((leafBitsImt rho)[183]! * (idBitsImt rho)[183]!)
          - (leafBitsImt rho)[183]!
          - (idBitsImt rho)[183]!) =
        lowerPeImt rho 70 by
    have hPe :
        lowerPe rho 69 *
          (1 + 2 * ((leafBits rho)[183]! * (idBits rho)[183]!)
            - (leafBits rho)[183]!
            - (idBits rho)[183]!) =
          lowerPe rho 70 := by
      rw [leafBits_get rho 183 (by omega),
        idBits_get rho 183 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1797 + 2 * (rho 1296) * r1796
    simpa only [
      lowerPeImt,
      leafBits_get rho 183 (by omega),
      idBits_get rho 183 (by omega),
      leafBitsImt_get rho 183 (by omega),
      idBitsImt_get rho 183 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 69 + lowerPeImt rho 69 *
        ((1 - (leafBitsImt rho)[183]!) *
          (idBitsImt rho)[183]!) =
        lowerIlImt rho 70 by
    have hIl :
        lowerIl rho 69 + lowerPe rho 69 *
          ((1 - (leafBits rho)[183]!) *
            (idBits rho)[183]!) =
          lowerIl rho 70 := by
      rw [leafBits_get rho 183 (by omega),
        idBits_get rho 183 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 69 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 68 + rho 1298 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 68)
      rw [hsum]
      linear_combination (rho 524) * r1794 + r1795
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 183 (by omega),
      idBits_get rho 183 (by omega),
      leafBitsImt_get rho 183 (by omega),
      idBitsImt_get rho 183 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange34 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      183 (lowerPeImt rho 70) (lowerIlImt rho 70)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      185 (lowerPeImt rho 68) (lowerIlImt rho 68) := by
  exact lowerStep68 rho h k (lowerStep69 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
