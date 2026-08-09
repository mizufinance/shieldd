import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapUpperChunk34
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep70 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        182 (upperPeImt rho 71) (upperIlImt rho 71)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      183 (upperPeImt rho 70) (upperIlImt rho 70) := by
  have r2808 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2808 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.1
  have r2809 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2809 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.1
  have r2810 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2810 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.1
  have r2811 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2811 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2808 at r2808
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2809 at r2809
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2810 at r2810
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2811 at r2811
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 182
    (upperPeImt rho 70 *
      (1 + 2 * ((idBitsImt rho)[182]! * (nextBitsImt rho)[182]!)
        - (idBitsImt rho)[182]!
        - (nextBitsImt rho)[182]!))
    (upperIlImt rho 70 + upperPeImt rho 70 *
      ((1 - (idBitsImt rho)[182]!) *
        (nextBitsImt rho)[182]!))
  rw [show
      upperPeImt rho 70 *
        (1 + 2 * ((idBitsImt rho)[182]! * (nextBitsImt rho)[182]!)
          - (idBitsImt rho)[182]!
          - (nextBitsImt rho)[182]!) =
        upperPeImt rho 71 by
    have hPe :
        upperPe rho 70 *
          (1 + 2 * ((idBits rho)[182]! * (nextBits rho)[182]!)
            - (idBits rho)[182]!
            - (nextBits rho)[182]!) =
          upperPe rho 71 := by
      rw [idBits_get rho 182 (by omega),
        nextBits_get rho 182 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2811 + 2 * (rho 2310) * r2810
    simpa only [
      upperPeImt,
      idBits_get rho 182 (by omega),
      nextBits_get rho 182 (by omega),
      idBitsImt_get rho 182 (by omega),
      nextBitsImt_get rho 182 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 70 + upperPeImt rho 70 *
        ((1 - (idBitsImt rho)[182]!) *
          (nextBitsImt rho)[182]!) =
        upperIlImt rho 71 by
    have hIl :
        upperIl rho 70 + upperPe rho 70 *
          ((1 - (idBits rho)[182]!) *
            (nextBits rho)[182]!) =
          upperIl rho 71 := by
      rw [idBits_get rho 182 (by omega),
        nextBits_get rho 182 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 70 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 69 + rho 2312 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 69)
      rw [hsum]
      linear_combination (rho 863) * r2808 + r2809
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 182 (by omega),
      nextBits_get rho 182 (by omega),
      idBitsImt_get rho 182 (by omega),
      nextBitsImt_get rho 182 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep71 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        181 (upperPeImt rho 72) (upperIlImt rho 72)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      182 (upperPeImt rho 71) (upperIlImt rho 71) := by
  have r2812 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2812 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2813 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2813 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2814 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2814 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2815 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2815 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2812 at r2812
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2813 at r2813
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2814 at r2814
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2815 at r2815
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 181
    (upperPeImt rho 71 *
      (1 + 2 * ((idBitsImt rho)[181]! * (nextBitsImt rho)[181]!)
        - (idBitsImt rho)[181]!
        - (nextBitsImt rho)[181]!))
    (upperIlImt rho 71 + upperPeImt rho 71 *
      ((1 - (idBitsImt rho)[181]!) *
        (nextBitsImt rho)[181]!))
  rw [show
      upperPeImt rho 71 *
        (1 + 2 * ((idBitsImt rho)[181]! * (nextBitsImt rho)[181]!)
          - (idBitsImt rho)[181]!
          - (nextBitsImt rho)[181]!) =
        upperPeImt rho 72 by
    have hPe :
        upperPe rho 71 *
          (1 + 2 * ((idBits rho)[181]! * (nextBits rho)[181]!)
            - (idBits rho)[181]!
            - (nextBits rho)[181]!) =
          upperPe rho 72 := by
      rw [idBits_get rho 181 (by omega),
        nextBits_get rho 181 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2815 + 2 * (rho 2314) * r2814
    simpa only [
      upperPeImt,
      idBits_get rho 181 (by omega),
      nextBits_get rho 181 (by omega),
      idBitsImt_get rho 181 (by omega),
      nextBitsImt_get rho 181 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 71 + upperPeImt rho 71 *
        ((1 - (idBitsImt rho)[181]!) *
          (nextBitsImt rho)[181]!) =
        upperIlImt rho 72 by
    have hIl :
        upperIl rho 71 + upperPe rho 71 *
          ((1 - (idBits rho)[181]!) *
            (nextBits rho)[181]!) =
          upperIl rho 72 := by
      rw [idBits_get rho 181 (by omega),
        nextBits_get rho 181 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 71 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 70 + rho 2316 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 70)
      rw [hsum]
      linear_combination (rho 862) * r2812 + r2813
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 181 (by omega),
      nextBits_get rho 181 (by omega),
      idBitsImt_get rho 181 (by omega),
      nextBitsImt_get rho 181 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange35 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      181 (upperPeImt rho 72) (upperIlImt rho 72)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      183 (upperPeImt rho 70) (upperIlImt rho 70) := by
  exact upperStep70 rho h k (upperStep71 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
