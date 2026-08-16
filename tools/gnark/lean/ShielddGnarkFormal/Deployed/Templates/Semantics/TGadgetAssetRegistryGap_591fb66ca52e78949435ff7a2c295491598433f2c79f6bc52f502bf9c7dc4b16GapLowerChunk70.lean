import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk69
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep140 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        112 (lowerPeImt rho 141) (lowerIlImt rho 141)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      113 (lowerPeImt rho 140) (lowerIlImt rho 140) := by
  have r2078 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2078 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2079 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2079 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2
  have r2080 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2080 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1
  have r2081 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2081 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2078 at r2078
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2079 at r2079
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2080 at r2080
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2081 at r2081
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 112
    (lowerPeImt rho 140 *
      (1 + 2 * ((leafBitsImt rho)[112]! * (idBitsImt rho)[112]!)
        - (leafBitsImt rho)[112]!
        - (idBitsImt rho)[112]!))
    (lowerIlImt rho 140 + lowerPeImt rho 140 *
      ((1 - (leafBitsImt rho)[112]!) *
        (idBitsImt rho)[112]!))
  rw [show
      lowerPeImt rho 140 *
        (1 + 2 * ((leafBitsImt rho)[112]! * (idBitsImt rho)[112]!)
          - (leafBitsImt rho)[112]!
          - (idBitsImt rho)[112]!) =
        lowerPeImt rho 141 by
    have hPe :
        lowerPe rho 140 *
          (1 + 2 * ((leafBits rho)[112]! * (idBits rho)[112]!)
            - (leafBits rho)[112]!
            - (idBits rho)[112]!) =
          lowerPe rho 141 := by
      rw [leafBits_get rho 112 (by omega),
        idBits_get rho 112 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2081 + 2 * (rho 1580) * r2080
    simpa only [
      lowerPeImt,
      leafBits_get rho 112 (by omega),
      idBits_get rho 112 (by omega),
      leafBitsImt_get rho 112 (by omega),
      idBitsImt_get rho 112 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 140 + lowerPeImt rho 140 *
        ((1 - (leafBitsImt rho)[112]!) *
          (idBitsImt rho)[112]!) =
        lowerIlImt rho 141 by
    have hIl :
        lowerIl rho 140 + lowerPe rho 140 *
          ((1 - (leafBits rho)[112]!) *
            (idBits rho)[112]!) =
          lowerIl rho 141 := by
      rw [leafBits_get rho 112 (by omega),
        idBits_get rho 112 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 140 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 139 + rho 1582 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 139)
      rw [hsum]
      linear_combination (rho 453) * r2078 + r2079
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 112 (by omega),
      idBits_get rho 112 (by omega),
      leafBitsImt_get rho 112 (by omega),
      idBitsImt_get rho 112 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep141 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        111 (lowerPeImt rho 142) (lowerIlImt rho 142)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      112 (lowerPeImt rho 141) (lowerIlImt rho 141) := by
  have r2082 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2082 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.1
  have r2083 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2083 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.1
  have r2084 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2084 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.1
  have r2085 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2085 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2082 at r2082
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2083 at r2083
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2084 at r2084
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2085 at r2085
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 111
    (lowerPeImt rho 141 *
      (1 + 2 * ((leafBitsImt rho)[111]! * (idBitsImt rho)[111]!)
        - (leafBitsImt rho)[111]!
        - (idBitsImt rho)[111]!))
    (lowerIlImt rho 141 + lowerPeImt rho 141 *
      ((1 - (leafBitsImt rho)[111]!) *
        (idBitsImt rho)[111]!))
  rw [show
      lowerPeImt rho 141 *
        (1 + 2 * ((leafBitsImt rho)[111]! * (idBitsImt rho)[111]!)
          - (leafBitsImt rho)[111]!
          - (idBitsImt rho)[111]!) =
        lowerPeImt rho 142 by
    have hPe :
        lowerPe rho 141 *
          (1 + 2 * ((leafBits rho)[111]! * (idBits rho)[111]!)
            - (leafBits rho)[111]!
            - (idBits rho)[111]!) =
          lowerPe rho 142 := by
      rw [leafBits_get rho 111 (by omega),
        idBits_get rho 111 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2085 + 2 * (rho 1584) * r2084
    simpa only [
      lowerPeImt,
      leafBits_get rho 111 (by omega),
      idBits_get rho 111 (by omega),
      leafBitsImt_get rho 111 (by omega),
      idBitsImt_get rho 111 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 141 + lowerPeImt rho 141 *
        ((1 - (leafBitsImt rho)[111]!) *
          (idBitsImt rho)[111]!) =
        lowerIlImt rho 142 by
    have hIl :
        lowerIl rho 141 + lowerPe rho 141 *
          ((1 - (leafBits rho)[111]!) *
            (idBits rho)[111]!) =
          lowerIl rho 142 := by
      rw [leafBits_get rho 111 (by omega),
        idBits_get rho 111 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 141 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 140 + rho 1586 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 140)
      rw [hsum]
      linear_combination (rho 452) * r2082 + r2083
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 111 (by omega),
      idBits_get rho 111 (by omega),
      leafBitsImt_get rho 111 (by omega),
      idBitsImt_get rho 111 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange70 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      111 (lowerPeImt rho 142) (lowerIlImt rho 142)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      113 (lowerPeImt rho 140) (lowerIlImt rho 140) := by
  exact lowerStep140 rho h k (lowerStep141 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
