import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapUpperChunk19
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep40 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        212 (upperPeImt rho 41) (upperIlImt rho 41)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      213 (upperPeImt rho 40) (upperIlImt rho 40) := by
  have r2688 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2688 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2689 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2689 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2690 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2690 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2691 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2691 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2688 at r2688
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2689 at r2689
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2690 at r2690
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2691 at r2691
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 212
    (upperPeImt rho 40 *
      (1 + 2 * ((idBitsImt rho)[212]! * (nextBitsImt rho)[212]!)
        - (idBitsImt rho)[212]!
        - (nextBitsImt rho)[212]!))
    (upperIlImt rho 40 + upperPeImt rho 40 *
      ((1 - (idBitsImt rho)[212]!) *
        (nextBitsImt rho)[212]!))
  rw [show
      upperPeImt rho 40 *
        (1 + 2 * ((idBitsImt rho)[212]! * (nextBitsImt rho)[212]!)
          - (idBitsImt rho)[212]!
          - (nextBitsImt rho)[212]!) =
        upperPeImt rho 41 by
    have hPe :
        upperPe rho 40 *
          (1 + 2 * ((idBits rho)[212]! * (nextBits rho)[212]!)
            - (idBits rho)[212]!
            - (nextBits rho)[212]!) =
          upperPe rho 41 := by
      rw [idBits_get rho 212 (by omega),
        nextBits_get rho 212 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2691 + 2 * (rho 2190) * r2690
    simpa only [
      upperPeImt,
      idBits_get rho 212 (by omega),
      nextBits_get rho 212 (by omega),
      idBitsImt_get rho 212 (by omega),
      nextBitsImt_get rho 212 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 40 + upperPeImt rho 40 *
        ((1 - (idBitsImt rho)[212]!) *
          (nextBitsImt rho)[212]!) =
        upperIlImt rho 41 by
    have hIl :
        upperIl rho 40 + upperPe rho 40 *
          ((1 - (idBits rho)[212]!) *
            (nextBits rho)[212]!) =
          upperIl rho 41 := by
      rw [idBits_get rho 212 (by omega),
        nextBits_get rho 212 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 40 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 39 + rho 2192 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 39)
      rw [hsum]
      linear_combination (rho 893) * r2688 + r2689
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 212 (by omega),
      nextBits_get rho 212 (by omega),
      idBitsImt_get rho 212 (by omega),
      nextBitsImt_get rho 212 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep41 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        211 (upperPeImt rho 42) (upperIlImt rho 42)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      212 (upperPeImt rho 41) (upperIlImt rho 41) := by
  have r2692 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2692 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2693 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2693 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2694 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2694 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2695 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2695 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2692 at r2692
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2693 at r2693
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2694 at r2694
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2695 at r2695
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 211
    (upperPeImt rho 41 *
      (1 + 2 * ((idBitsImt rho)[211]! * (nextBitsImt rho)[211]!)
        - (idBitsImt rho)[211]!
        - (nextBitsImt rho)[211]!))
    (upperIlImt rho 41 + upperPeImt rho 41 *
      ((1 - (idBitsImt rho)[211]!) *
        (nextBitsImt rho)[211]!))
  rw [show
      upperPeImt rho 41 *
        (1 + 2 * ((idBitsImt rho)[211]! * (nextBitsImt rho)[211]!)
          - (idBitsImt rho)[211]!
          - (nextBitsImt rho)[211]!) =
        upperPeImt rho 42 by
    have hPe :
        upperPe rho 41 *
          (1 + 2 * ((idBits rho)[211]! * (nextBits rho)[211]!)
            - (idBits rho)[211]!
            - (nextBits rho)[211]!) =
          upperPe rho 42 := by
      rw [idBits_get rho 211 (by omega),
        nextBits_get rho 211 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2695 + 2 * (rho 2194) * r2694
    simpa only [
      upperPeImt,
      idBits_get rho 211 (by omega),
      nextBits_get rho 211 (by omega),
      idBitsImt_get rho 211 (by omega),
      nextBitsImt_get rho 211 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 41 + upperPeImt rho 41 *
        ((1 - (idBitsImt rho)[211]!) *
          (nextBitsImt rho)[211]!) =
        upperIlImt rho 42 by
    have hIl :
        upperIl rho 41 + upperPe rho 41 *
          ((1 - (idBits rho)[211]!) *
            (nextBits rho)[211]!) =
          upperIl rho 42 := by
      rw [idBits_get rho 211 (by omega),
        nextBits_get rho 211 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 41 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 40 + rho 2196 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 40)
      rw [hsum]
      linear_combination (rho 892) * r2692 + r2693
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 211 (by omega),
      nextBits_get rho 211 (by omega),
      idBitsImt_get rho 211 (by omega),
      nextBitsImt_get rho 211 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange20 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      211 (upperPeImt rho 42) (upperIlImt rho 42)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      213 (upperPeImt rho 40) (upperIlImt rho 40) := by
  exact upperStep40 rho h k (upperStep41 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
