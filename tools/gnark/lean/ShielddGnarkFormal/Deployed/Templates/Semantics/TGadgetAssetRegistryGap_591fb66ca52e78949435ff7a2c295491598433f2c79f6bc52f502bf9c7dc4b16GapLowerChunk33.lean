import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk32
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep66 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        186 (lowerPeImt rho 67) (lowerIlImt rho 67)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      187 (lowerPeImt rho 66) (lowerIlImt rho 66) := by
  have r1782 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1782 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1783 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1783 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1784 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1784 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1785 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1785 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1782 at r1782
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1783 at r1783
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1784 at r1784
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1785 at r1785
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 186
    (lowerPeImt rho 66 *
      (1 + 2 * ((leafBitsImt rho)[186]! * (idBitsImt rho)[186]!)
        - (leafBitsImt rho)[186]!
        - (idBitsImt rho)[186]!))
    (lowerIlImt rho 66 + lowerPeImt rho 66 *
      ((1 - (leafBitsImt rho)[186]!) *
        (idBitsImt rho)[186]!))
  rw [show
      lowerPeImt rho 66 *
        (1 + 2 * ((leafBitsImt rho)[186]! * (idBitsImt rho)[186]!)
          - (leafBitsImt rho)[186]!
          - (idBitsImt rho)[186]!) =
        lowerPeImt rho 67 by
    have hPe :
        lowerPe rho 66 *
          (1 + 2 * ((leafBits rho)[186]! * (idBits rho)[186]!)
            - (leafBits rho)[186]!
            - (idBits rho)[186]!) =
          lowerPe rho 67 := by
      rw [leafBits_get rho 186 (by omega),
        idBits_get rho 186 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1785 + 2 * (rho 1284) * r1784
    simpa only [
      lowerPeImt,
      leafBits_get rho 186 (by omega),
      idBits_get rho 186 (by omega),
      leafBitsImt_get rho 186 (by omega),
      idBitsImt_get rho 186 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 66 + lowerPeImt rho 66 *
        ((1 - (leafBitsImt rho)[186]!) *
          (idBitsImt rho)[186]!) =
        lowerIlImt rho 67 by
    have hIl :
        lowerIl rho 66 + lowerPe rho 66 *
          ((1 - (leafBits rho)[186]!) *
            (idBits rho)[186]!) =
          lowerIl rho 67 := by
      rw [leafBits_get rho 186 (by omega),
        idBits_get rho 186 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 66 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 65 + rho 1286 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 65)
      rw [hsum]
      linear_combination (rho 527) * r1782 + r1783
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 186 (by omega),
      idBits_get rho 186 (by omega),
      leafBitsImt_get rho 186 (by omega),
      idBitsImt_get rho 186 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep67 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        185 (lowerPeImt rho 68) (lowerIlImt rho 68)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      186 (lowerPeImt rho 67) (lowerIlImt rho 67) := by
  have r1786 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1786 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1787 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1787 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1788 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1788 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1789 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1789 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1786 at r1786
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1787 at r1787
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1788 at r1788
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1789 at r1789
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 185
    (lowerPeImt rho 67 *
      (1 + 2 * ((leafBitsImt rho)[185]! * (idBitsImt rho)[185]!)
        - (leafBitsImt rho)[185]!
        - (idBitsImt rho)[185]!))
    (lowerIlImt rho 67 + lowerPeImt rho 67 *
      ((1 - (leafBitsImt rho)[185]!) *
        (idBitsImt rho)[185]!))
  rw [show
      lowerPeImt rho 67 *
        (1 + 2 * ((leafBitsImt rho)[185]! * (idBitsImt rho)[185]!)
          - (leafBitsImt rho)[185]!
          - (idBitsImt rho)[185]!) =
        lowerPeImt rho 68 by
    have hPe :
        lowerPe rho 67 *
          (1 + 2 * ((leafBits rho)[185]! * (idBits rho)[185]!)
            - (leafBits rho)[185]!
            - (idBits rho)[185]!) =
          lowerPe rho 68 := by
      rw [leafBits_get rho 185 (by omega),
        idBits_get rho 185 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1789 + 2 * (rho 1288) * r1788
    simpa only [
      lowerPeImt,
      leafBits_get rho 185 (by omega),
      idBits_get rho 185 (by omega),
      leafBitsImt_get rho 185 (by omega),
      idBitsImt_get rho 185 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 67 + lowerPeImt rho 67 *
        ((1 - (leafBitsImt rho)[185]!) *
          (idBitsImt rho)[185]!) =
        lowerIlImt rho 68 by
    have hIl :
        lowerIl rho 67 + lowerPe rho 67 *
          ((1 - (leafBits rho)[185]!) *
            (idBits rho)[185]!) =
          lowerIl rho 68 := by
      rw [leafBits_get rho 185 (by omega),
        idBits_get rho 185 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 67 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 66 + rho 1290 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 66)
      rw [hsum]
      linear_combination (rho 526) * r1786 + r1787
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 185 (by omega),
      idBits_get rho 185 (by omega),
      leafBitsImt_get rho 185 (by omega),
      idBitsImt_get rho 185 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange33 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      185 (lowerPeImt rho 68) (lowerIlImt rho 68)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      187 (lowerPeImt rho 66) (lowerIlImt rho 66) := by
  exact lowerStep66 rho h k (lowerStep67 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
