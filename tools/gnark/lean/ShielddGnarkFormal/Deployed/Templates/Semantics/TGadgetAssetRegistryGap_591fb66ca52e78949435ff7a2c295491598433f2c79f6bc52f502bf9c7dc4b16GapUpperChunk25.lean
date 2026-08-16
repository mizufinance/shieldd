import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapUpperChunk24
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep50 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        202 (upperPeImt rho 51) (upperIlImt rho 51)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      203 (upperPeImt rho 50) (upperIlImt rho 50) := by
  have r2728 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2728 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.1
  have r2729 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2729 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.1
  have r2730 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2730 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.1
  have r2731 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2731 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2728 at r2728
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2729 at r2729
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2730 at r2730
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2731 at r2731
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 202
    (upperPeImt rho 50 *
      (1 + 2 * ((idBitsImt rho)[202]! * (nextBitsImt rho)[202]!)
        - (idBitsImt rho)[202]!
        - (nextBitsImt rho)[202]!))
    (upperIlImt rho 50 + upperPeImt rho 50 *
      ((1 - (idBitsImt rho)[202]!) *
        (nextBitsImt rho)[202]!))
  rw [show
      upperPeImt rho 50 *
        (1 + 2 * ((idBitsImt rho)[202]! * (nextBitsImt rho)[202]!)
          - (idBitsImt rho)[202]!
          - (nextBitsImt rho)[202]!) =
        upperPeImt rho 51 by
    have hPe :
        upperPe rho 50 *
          (1 + 2 * ((idBits rho)[202]! * (nextBits rho)[202]!)
            - (idBits rho)[202]!
            - (nextBits rho)[202]!) =
          upperPe rho 51 := by
      rw [idBits_get rho 202 (by omega),
        nextBits_get rho 202 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2731 + 2 * (rho 2230) * r2730
    simpa only [
      upperPeImt,
      idBits_get rho 202 (by omega),
      nextBits_get rho 202 (by omega),
      idBitsImt_get rho 202 (by omega),
      nextBitsImt_get rho 202 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 50 + upperPeImt rho 50 *
        ((1 - (idBitsImt rho)[202]!) *
          (nextBitsImt rho)[202]!) =
        upperIlImt rho 51 by
    have hIl :
        upperIl rho 50 + upperPe rho 50 *
          ((1 - (idBits rho)[202]!) *
            (nextBits rho)[202]!) =
          upperIl rho 51 := by
      rw [idBits_get rho 202 (by omega),
        nextBits_get rho 202 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 50 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 49 + rho 2232 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 49)
      rw [hsum]
      linear_combination (rho 883) * r2728 + r2729
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 202 (by omega),
      nextBits_get rho 202 (by omega),
      idBitsImt_get rho 202 (by omega),
      nextBitsImt_get rho 202 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep51 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        201 (upperPeImt rho 52) (upperIlImt rho 52)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      202 (upperPeImt rho 51) (upperIlImt rho 51) := by
  have r2732 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2732 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2733 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2733 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2734 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2734 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2735 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2735 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2732 at r2732
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2733 at r2733
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2734 at r2734
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2735 at r2735
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 201
    (upperPeImt rho 51 *
      (1 + 2 * ((idBitsImt rho)[201]! * (nextBitsImt rho)[201]!)
        - (idBitsImt rho)[201]!
        - (nextBitsImt rho)[201]!))
    (upperIlImt rho 51 + upperPeImt rho 51 *
      ((1 - (idBitsImt rho)[201]!) *
        (nextBitsImt rho)[201]!))
  rw [show
      upperPeImt rho 51 *
        (1 + 2 * ((idBitsImt rho)[201]! * (nextBitsImt rho)[201]!)
          - (idBitsImt rho)[201]!
          - (nextBitsImt rho)[201]!) =
        upperPeImt rho 52 by
    have hPe :
        upperPe rho 51 *
          (1 + 2 * ((idBits rho)[201]! * (nextBits rho)[201]!)
            - (idBits rho)[201]!
            - (nextBits rho)[201]!) =
          upperPe rho 52 := by
      rw [idBits_get rho 201 (by omega),
        nextBits_get rho 201 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2735 + 2 * (rho 2234) * r2734
    simpa only [
      upperPeImt,
      idBits_get rho 201 (by omega),
      nextBits_get rho 201 (by omega),
      idBitsImt_get rho 201 (by omega),
      nextBitsImt_get rho 201 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 51 + upperPeImt rho 51 *
        ((1 - (idBitsImt rho)[201]!) *
          (nextBitsImt rho)[201]!) =
        upperIlImt rho 52 by
    have hIl :
        upperIl rho 51 + upperPe rho 51 *
          ((1 - (idBits rho)[201]!) *
            (nextBits rho)[201]!) =
          upperIl rho 52 := by
      rw [idBits_get rho 201 (by omega),
        nextBits_get rho 201 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 51 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 50 + rho 2236 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 50)
      rw [hsum]
      linear_combination (rho 882) * r2732 + r2733
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 201 (by omega),
      nextBits_get rho 201 (by omega),
      idBitsImt_get rho 201 (by omega),
      nextBitsImt_get rho 201 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange25 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      201 (upperPeImt rho 52) (upperIlImt rho 52)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      203 (upperPeImt rho 50) (upperIlImt rho 50) := by
  exact upperStep50 rho h k (upperStep51 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
