import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapUpperChunk5
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep12 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        240 (upperPeImt rho 13) (upperIlImt rho 13)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      241 (upperPeImt rho 12) (upperIlImt rho 12) := by
  have r2576 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2576 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2577 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2577 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2578 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2578 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2579 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2579 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2576 at r2576
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2577 at r2577
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2578 at r2578
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2579 at r2579
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 240
    (upperPeImt rho 12 *
      (1 + 2 * ((idBitsImt rho)[240]! * (nextBitsImt rho)[240]!)
        - (idBitsImt rho)[240]!
        - (nextBitsImt rho)[240]!))
    (upperIlImt rho 12 + upperPeImt rho 12 *
      ((1 - (idBitsImt rho)[240]!) *
        (nextBitsImt rho)[240]!))
  rw [show
      upperPeImt rho 12 *
        (1 + 2 * ((idBitsImt rho)[240]! * (nextBitsImt rho)[240]!)
          - (idBitsImt rho)[240]!
          - (nextBitsImt rho)[240]!) =
        upperPeImt rho 13 by
    have hPe :
        upperPe rho 12 *
          (1 + 2 * ((idBits rho)[240]! * (nextBits rho)[240]!)
            - (idBits rho)[240]!
            - (nextBits rho)[240]!) =
          upperPe rho 13 := by
      rw [idBits_get rho 240 (by omega),
        nextBits_get rho 240 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2579 + 2 * (rho 2078) * r2578
    simpa only [
      upperPeImt,
      idBits_get rho 240 (by omega),
      nextBits_get rho 240 (by omega),
      idBitsImt_get rho 240 (by omega),
      nextBitsImt_get rho 240 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 12 + upperPeImt rho 12 *
        ((1 - (idBitsImt rho)[240]!) *
          (nextBitsImt rho)[240]!) =
        upperIlImt rho 13 by
    have hIl :
        upperIl rho 12 + upperPe rho 12 *
          ((1 - (idBits rho)[240]!) *
            (nextBits rho)[240]!) =
          upperIl rho 13 := by
      rw [idBits_get rho 240 (by omega),
        nextBits_get rho 240 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 12 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 11 + rho 2080 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 11)
      rw [hsum]
      linear_combination (rho 921) * r2576 + r2577
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 240 (by omega),
      nextBits_get rho 240 (by omega),
      idBitsImt_get rho 240 (by omega),
      nextBitsImt_get rho 240 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep13 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        239 (upperPeImt rho 14) (upperIlImt rho 14)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      240 (upperPeImt rho 13) (upperIlImt rho 13) := by
  have r2580 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2580 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2581 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2581 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2582 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2582 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2583 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2583 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2580 at r2580
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2581 at r2581
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2582 at r2582
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2583 at r2583
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 239
    (upperPeImt rho 13 *
      (1 + 2 * ((idBitsImt rho)[239]! * (nextBitsImt rho)[239]!)
        - (idBitsImt rho)[239]!
        - (nextBitsImt rho)[239]!))
    (upperIlImt rho 13 + upperPeImt rho 13 *
      ((1 - (idBitsImt rho)[239]!) *
        (nextBitsImt rho)[239]!))
  rw [show
      upperPeImt rho 13 *
        (1 + 2 * ((idBitsImt rho)[239]! * (nextBitsImt rho)[239]!)
          - (idBitsImt rho)[239]!
          - (nextBitsImt rho)[239]!) =
        upperPeImt rho 14 by
    have hPe :
        upperPe rho 13 *
          (1 + 2 * ((idBits rho)[239]! * (nextBits rho)[239]!)
            - (idBits rho)[239]!
            - (nextBits rho)[239]!) =
          upperPe rho 14 := by
      rw [idBits_get rho 239 (by omega),
        nextBits_get rho 239 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2583 + 2 * (rho 2082) * r2582
    simpa only [
      upperPeImt,
      idBits_get rho 239 (by omega),
      nextBits_get rho 239 (by omega),
      idBitsImt_get rho 239 (by omega),
      nextBitsImt_get rho 239 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 13 + upperPeImt rho 13 *
        ((1 - (idBitsImt rho)[239]!) *
          (nextBitsImt rho)[239]!) =
        upperIlImt rho 14 by
    have hIl :
        upperIl rho 13 + upperPe rho 13 *
          ((1 - (idBits rho)[239]!) *
            (nextBits rho)[239]!) =
          upperIl rho 14 := by
      rw [idBits_get rho 239 (by omega),
        nextBits_get rho 239 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 13 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 12 + rho 2084 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 12)
      rw [hsum]
      linear_combination (rho 920) * r2580 + r2581
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 239 (by omega),
      nextBits_get rho 239 (by omega),
      idBitsImt_get rho 239 (by omega),
      nextBitsImt_get rho 239 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange6 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      239 (upperPeImt rho 14) (upperIlImt rho 14)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      241 (upperPeImt rho 12) (upperIlImt rho 12) := by
  exact upperStep12 rho h k (upperStep13 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
