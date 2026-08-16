import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapUpperChunk43
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep88 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        164 (upperPeImt rho 89) (upperIlImt rho 89)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      165 (upperPeImt rho 88) (upperIlImt rho 88) := by
  have r2880 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2880 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1
  have r2881 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2881 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.1
  have r2882 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2882 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.1
  have r2883 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2883 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2880 at r2880
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2881 at r2881
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2882 at r2882
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2883 at r2883
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 164
    (upperPeImt rho 88 *
      (1 + 2 * ((idBitsImt rho)[164]! * (nextBitsImt rho)[164]!)
        - (idBitsImt rho)[164]!
        - (nextBitsImt rho)[164]!))
    (upperIlImt rho 88 + upperPeImt rho 88 *
      ((1 - (idBitsImt rho)[164]!) *
        (nextBitsImt rho)[164]!))
  rw [show
      upperPeImt rho 88 *
        (1 + 2 * ((idBitsImt rho)[164]! * (nextBitsImt rho)[164]!)
          - (idBitsImt rho)[164]!
          - (nextBitsImt rho)[164]!) =
        upperPeImt rho 89 by
    have hPe :
        upperPe rho 88 *
          (1 + 2 * ((idBits rho)[164]! * (nextBits rho)[164]!)
            - (idBits rho)[164]!
            - (nextBits rho)[164]!) =
          upperPe rho 89 := by
      rw [idBits_get rho 164 (by omega),
        nextBits_get rho 164 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2883 + 2 * (rho 2382) * r2882
    simpa only [
      upperPeImt,
      idBits_get rho 164 (by omega),
      nextBits_get rho 164 (by omega),
      idBitsImt_get rho 164 (by omega),
      nextBitsImt_get rho 164 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 88 + upperPeImt rho 88 *
        ((1 - (idBitsImt rho)[164]!) *
          (nextBitsImt rho)[164]!) =
        upperIlImt rho 89 by
    have hIl :
        upperIl rho 88 + upperPe rho 88 *
          ((1 - (idBits rho)[164]!) *
            (nextBits rho)[164]!) =
          upperIl rho 89 := by
      rw [idBits_get rho 164 (by omega),
        nextBits_get rho 164 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 88 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 87 + rho 2384 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 87)
      rw [hsum]
      linear_combination (rho 845) * r2880 + r2881
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 164 (by omega),
      nextBits_get rho 164 (by omega),
      idBitsImt_get rho 164 (by omega),
      nextBitsImt_get rho 164 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep89 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        163 (upperPeImt rho 90) (upperIlImt rho 90)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      164 (upperPeImt rho 89) (upperIlImt rho 89) := by
  have r2884 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2884 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.1
  have r2885 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2885 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.1
  have r2886 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2886 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.1
  have r2887 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2887 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2884 at r2884
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2885 at r2885
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2886 at r2886
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2887 at r2887
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 163
    (upperPeImt rho 89 *
      (1 + 2 * ((idBitsImt rho)[163]! * (nextBitsImt rho)[163]!)
        - (idBitsImt rho)[163]!
        - (nextBitsImt rho)[163]!))
    (upperIlImt rho 89 + upperPeImt rho 89 *
      ((1 - (idBitsImt rho)[163]!) *
        (nextBitsImt rho)[163]!))
  rw [show
      upperPeImt rho 89 *
        (1 + 2 * ((idBitsImt rho)[163]! * (nextBitsImt rho)[163]!)
          - (idBitsImt rho)[163]!
          - (nextBitsImt rho)[163]!) =
        upperPeImt rho 90 by
    have hPe :
        upperPe rho 89 *
          (1 + 2 * ((idBits rho)[163]! * (nextBits rho)[163]!)
            - (idBits rho)[163]!
            - (nextBits rho)[163]!) =
          upperPe rho 90 := by
      rw [idBits_get rho 163 (by omega),
        nextBits_get rho 163 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2887 + 2 * (rho 2386) * r2886
    simpa only [
      upperPeImt,
      idBits_get rho 163 (by omega),
      nextBits_get rho 163 (by omega),
      idBitsImt_get rho 163 (by omega),
      nextBitsImt_get rho 163 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 89 + upperPeImt rho 89 *
        ((1 - (idBitsImt rho)[163]!) *
          (nextBitsImt rho)[163]!) =
        upperIlImt rho 90 by
    have hIl :
        upperIl rho 89 + upperPe rho 89 *
          ((1 - (idBits rho)[163]!) *
            (nextBits rho)[163]!) =
          upperIl rho 90 := by
      rw [idBits_get rho 163 (by omega),
        nextBits_get rho 163 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 89 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 88 + rho 2388 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 88)
      rw [hsum]
      linear_combination (rho 844) * r2884 + r2885
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 163 (by omega),
      nextBits_get rho 163 (by omega),
      idBitsImt_get rho 163 (by omega),
      nextBitsImt_get rho 163 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange44 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      163 (upperPeImt rho 90) (upperIlImt rho 90)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      165 (upperPeImt rho 88) (upperIlImt rho 88) := by
  exact upperStep88 rho h k (upperStep89 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
