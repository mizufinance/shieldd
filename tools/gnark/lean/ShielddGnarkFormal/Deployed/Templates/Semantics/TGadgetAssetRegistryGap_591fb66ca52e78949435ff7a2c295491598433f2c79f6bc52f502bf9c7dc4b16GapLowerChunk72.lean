import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk71
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep144 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        108 (lowerPeImt rho 145) (lowerIlImt rho 145)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      109 (lowerPeImt rho 144) (lowerIlImt rho 144) := by
  have r2094 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2094 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2095 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2095 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2096 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2096 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2097 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2097 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2094 at r2094
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2095 at r2095
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2096 at r2096
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2097 at r2097
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 108
    (lowerPeImt rho 144 *
      (1 + 2 * ((leafBitsImt rho)[108]! * (idBitsImt rho)[108]!)
        - (leafBitsImt rho)[108]!
        - (idBitsImt rho)[108]!))
    (lowerIlImt rho 144 + lowerPeImt rho 144 *
      ((1 - (leafBitsImt rho)[108]!) *
        (idBitsImt rho)[108]!))
  rw [show
      lowerPeImt rho 144 *
        (1 + 2 * ((leafBitsImt rho)[108]! * (idBitsImt rho)[108]!)
          - (leafBitsImt rho)[108]!
          - (idBitsImt rho)[108]!) =
        lowerPeImt rho 145 by
    have hPe :
        lowerPe rho 144 *
          (1 + 2 * ((leafBits rho)[108]! * (idBits rho)[108]!)
            - (leafBits rho)[108]!
            - (idBits rho)[108]!) =
          lowerPe rho 145 := by
      rw [leafBits_get rho 108 (by omega),
        idBits_get rho 108 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2097 + 2 * (rho 1596) * r2096
    simpa only [
      lowerPeImt,
      leafBits_get rho 108 (by omega),
      idBits_get rho 108 (by omega),
      leafBitsImt_get rho 108 (by omega),
      idBitsImt_get rho 108 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 144 + lowerPeImt rho 144 *
        ((1 - (leafBitsImt rho)[108]!) *
          (idBitsImt rho)[108]!) =
        lowerIlImt rho 145 by
    have hIl :
        lowerIl rho 144 + lowerPe rho 144 *
          ((1 - (leafBits rho)[108]!) *
            (idBits rho)[108]!) =
          lowerIl rho 145 := by
      rw [leafBits_get rho 108 (by omega),
        idBits_get rho 108 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 144 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 143 + rho 1598 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 143)
      rw [hsum]
      linear_combination (rho 449) * r2094 + r2095
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 108 (by omega),
      idBits_get rho 108 (by omega),
      leafBitsImt_get rho 108 (by omega),
      idBitsImt_get rho 108 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep145 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        107 (lowerPeImt rho 146) (lowerIlImt rho 146)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      108 (lowerPeImt rho 145) (lowerIlImt rho 145) := by
  have r2098 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2098 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2099 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2099 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2100 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2100 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2101 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2101 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2098 at r2098
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2099 at r2099
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2100 at r2100
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2101 at r2101
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 107
    (lowerPeImt rho 145 *
      (1 + 2 * ((leafBitsImt rho)[107]! * (idBitsImt rho)[107]!)
        - (leafBitsImt rho)[107]!
        - (idBitsImt rho)[107]!))
    (lowerIlImt rho 145 + lowerPeImt rho 145 *
      ((1 - (leafBitsImt rho)[107]!) *
        (idBitsImt rho)[107]!))
  rw [show
      lowerPeImt rho 145 *
        (1 + 2 * ((leafBitsImt rho)[107]! * (idBitsImt rho)[107]!)
          - (leafBitsImt rho)[107]!
          - (idBitsImt rho)[107]!) =
        lowerPeImt rho 146 by
    have hPe :
        lowerPe rho 145 *
          (1 + 2 * ((leafBits rho)[107]! * (idBits rho)[107]!)
            - (leafBits rho)[107]!
            - (idBits rho)[107]!) =
          lowerPe rho 146 := by
      rw [leafBits_get rho 107 (by omega),
        idBits_get rho 107 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2101 + 2 * (rho 1600) * r2100
    simpa only [
      lowerPeImt,
      leafBits_get rho 107 (by omega),
      idBits_get rho 107 (by omega),
      leafBitsImt_get rho 107 (by omega),
      idBitsImt_get rho 107 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 145 + lowerPeImt rho 145 *
        ((1 - (leafBitsImt rho)[107]!) *
          (idBitsImt rho)[107]!) =
        lowerIlImt rho 146 by
    have hIl :
        lowerIl rho 145 + lowerPe rho 145 *
          ((1 - (leafBits rho)[107]!) *
            (idBits rho)[107]!) =
          lowerIl rho 146 := by
      rw [leafBits_get rho 107 (by omega),
        idBits_get rho 107 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 145 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 144 + rho 1602 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 144)
      rw [hsum]
      linear_combination (rho 448) * r2098 + r2099
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 107 (by omega),
      idBits_get rho 107 (by omega),
      leafBitsImt_get rho 107 (by omega),
      idBitsImt_get rho 107 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange72 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      107 (lowerPeImt rho 146) (lowerIlImt rho 146)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      109 (lowerPeImt rho 144) (lowerIlImt rho 144) := by
  exact lowerStep144 rho h k (lowerStep145 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
