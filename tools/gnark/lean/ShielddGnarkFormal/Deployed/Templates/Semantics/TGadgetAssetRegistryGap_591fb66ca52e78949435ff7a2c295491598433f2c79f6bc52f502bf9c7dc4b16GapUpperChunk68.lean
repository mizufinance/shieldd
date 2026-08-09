import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapUpperChunk67
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep136 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        116 (upperPeImt rho 137) (upperIlImt rho 137)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      117 (upperPeImt rho 136) (upperIlImt rho 136) := by
  have r3072 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3072 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3073 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3073 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3074 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3074 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3075 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3075 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3072 at r3072
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3073 at r3073
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3074 at r3074
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3075 at r3075
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 116
    (upperPeImt rho 136 *
      (1 + 2 * ((idBitsImt rho)[116]! * (nextBitsImt rho)[116]!)
        - (idBitsImt rho)[116]!
        - (nextBitsImt rho)[116]!))
    (upperIlImt rho 136 + upperPeImt rho 136 *
      ((1 - (idBitsImt rho)[116]!) *
        (nextBitsImt rho)[116]!))
  rw [show
      upperPeImt rho 136 *
        (1 + 2 * ((idBitsImt rho)[116]! * (nextBitsImt rho)[116]!)
          - (idBitsImt rho)[116]!
          - (nextBitsImt rho)[116]!) =
        upperPeImt rho 137 by
    have hPe :
        upperPe rho 136 *
          (1 + 2 * ((idBits rho)[116]! * (nextBits rho)[116]!)
            - (idBits rho)[116]!
            - (nextBits rho)[116]!) =
          upperPe rho 137 := by
      rw [idBits_get rho 116 (by omega),
        nextBits_get rho 116 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3075 + 2 * (rho 2574) * r3074
    simpa only [
      upperPeImt,
      idBits_get rho 116 (by omega),
      nextBits_get rho 116 (by omega),
      idBitsImt_get rho 116 (by omega),
      nextBitsImt_get rho 116 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 136 + upperPeImt rho 136 *
        ((1 - (idBitsImt rho)[116]!) *
          (nextBitsImt rho)[116]!) =
        upperIlImt rho 137 by
    have hIl :
        upperIl rho 136 + upperPe rho 136 *
          ((1 - (idBits rho)[116]!) *
            (nextBits rho)[116]!) =
          upperIl rho 137 := by
      rw [idBits_get rho 116 (by omega),
        nextBits_get rho 116 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 136 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 135 + rho 2576 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 135)
      rw [hsum]
      linear_combination (rho 797) * r3072 + r3073
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 116 (by omega),
      nextBits_get rho 116 (by omega),
      idBitsImt_get rho 116 (by omega),
      nextBitsImt_get rho 116 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep137 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        115 (upperPeImt rho 138) (upperIlImt rho 138)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      116 (upperPeImt rho 137) (upperIlImt rho 137) := by
  have r3076 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3076 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3077 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3077 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3078 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3078 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3079 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3079 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3076 at r3076
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3077 at r3077
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3078 at r3078
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3079 at r3079
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 115
    (upperPeImt rho 137 *
      (1 + 2 * ((idBitsImt rho)[115]! * (nextBitsImt rho)[115]!)
        - (idBitsImt rho)[115]!
        - (nextBitsImt rho)[115]!))
    (upperIlImt rho 137 + upperPeImt rho 137 *
      ((1 - (idBitsImt rho)[115]!) *
        (nextBitsImt rho)[115]!))
  rw [show
      upperPeImt rho 137 *
        (1 + 2 * ((idBitsImt rho)[115]! * (nextBitsImt rho)[115]!)
          - (idBitsImt rho)[115]!
          - (nextBitsImt rho)[115]!) =
        upperPeImt rho 138 by
    have hPe :
        upperPe rho 137 *
          (1 + 2 * ((idBits rho)[115]! * (nextBits rho)[115]!)
            - (idBits rho)[115]!
            - (nextBits rho)[115]!) =
          upperPe rho 138 := by
      rw [idBits_get rho 115 (by omega),
        nextBits_get rho 115 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3079 + 2 * (rho 2578) * r3078
    simpa only [
      upperPeImt,
      idBits_get rho 115 (by omega),
      nextBits_get rho 115 (by omega),
      idBitsImt_get rho 115 (by omega),
      nextBitsImt_get rho 115 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 137 + upperPeImt rho 137 *
        ((1 - (idBitsImt rho)[115]!) *
          (nextBitsImt rho)[115]!) =
        upperIlImt rho 138 by
    have hIl :
        upperIl rho 137 + upperPe rho 137 *
          ((1 - (idBits rho)[115]!) *
            (nextBits rho)[115]!) =
          upperIl rho 138 := by
      rw [idBits_get rho 115 (by omega),
        nextBits_get rho 115 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 137 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 136 + rho 2580 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 136)
      rw [hsum]
      linear_combination (rho 796) * r3076 + r3077
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 115 (by omega),
      nextBits_get rho 115 (by omega),
      idBitsImt_get rho 115 (by omega),
      nextBitsImt_get rho 115 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange68 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      115 (upperPeImt rho 138) (upperIlImt rho 138)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      117 (upperPeImt rho 136) (upperIlImt rho 136) := by
  exact upperStep136 rho h k (upperStep137 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
