import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapUpperChunk23
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep48 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        204 (upperPeImt rho 49) (upperIlImt rho 49)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      205 (upperPeImt rho 48) (upperIlImt rho 48) := by
  have r2720 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2720 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1
  have r2721 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2721 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.1
  have r2722 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2722 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.1
  have r2723 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2723 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2720 at r2720
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2721 at r2721
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2722 at r2722
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2723 at r2723
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 204
    (upperPeImt rho 48 *
      (1 + 2 * ((idBitsImt rho)[204]! * (nextBitsImt rho)[204]!)
        - (idBitsImt rho)[204]!
        - (nextBitsImt rho)[204]!))
    (upperIlImt rho 48 + upperPeImt rho 48 *
      ((1 - (idBitsImt rho)[204]!) *
        (nextBitsImt rho)[204]!))
  rw [show
      upperPeImt rho 48 *
        (1 + 2 * ((idBitsImt rho)[204]! * (nextBitsImt rho)[204]!)
          - (idBitsImt rho)[204]!
          - (nextBitsImt rho)[204]!) =
        upperPeImt rho 49 by
    have hPe :
        upperPe rho 48 *
          (1 + 2 * ((idBits rho)[204]! * (nextBits rho)[204]!)
            - (idBits rho)[204]!
            - (nextBits rho)[204]!) =
          upperPe rho 49 := by
      rw [idBits_get rho 204 (by omega),
        nextBits_get rho 204 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2723 + 2 * (rho 2222) * r2722
    simpa only [
      upperPeImt,
      idBits_get rho 204 (by omega),
      nextBits_get rho 204 (by omega),
      idBitsImt_get rho 204 (by omega),
      nextBitsImt_get rho 204 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 48 + upperPeImt rho 48 *
        ((1 - (idBitsImt rho)[204]!) *
          (nextBitsImt rho)[204]!) =
        upperIlImt rho 49 by
    have hIl :
        upperIl rho 48 + upperPe rho 48 *
          ((1 - (idBits rho)[204]!) *
            (nextBits rho)[204]!) =
          upperIl rho 49 := by
      rw [idBits_get rho 204 (by omega),
        nextBits_get rho 204 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 48 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 47 + rho 2224 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 47)
      rw [hsum]
      linear_combination (rho 885) * r2720 + r2721
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 204 (by omega),
      nextBits_get rho 204 (by omega),
      idBitsImt_get rho 204 (by omega),
      nextBitsImt_get rho 204 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep49 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        203 (upperPeImt rho 50) (upperIlImt rho 50)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      204 (upperPeImt rho 49) (upperIlImt rho 49) := by
  have r2724 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2724 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.1
  have r2725 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2725 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.1
  have r2726 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2726 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.1
  have r2727 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2727 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2724 at r2724
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2725 at r2725
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2726 at r2726
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2727 at r2727
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 203
    (upperPeImt rho 49 *
      (1 + 2 * ((idBitsImt rho)[203]! * (nextBitsImt rho)[203]!)
        - (idBitsImt rho)[203]!
        - (nextBitsImt rho)[203]!))
    (upperIlImt rho 49 + upperPeImt rho 49 *
      ((1 - (idBitsImt rho)[203]!) *
        (nextBitsImt rho)[203]!))
  rw [show
      upperPeImt rho 49 *
        (1 + 2 * ((idBitsImt rho)[203]! * (nextBitsImt rho)[203]!)
          - (idBitsImt rho)[203]!
          - (nextBitsImt rho)[203]!) =
        upperPeImt rho 50 by
    have hPe :
        upperPe rho 49 *
          (1 + 2 * ((idBits rho)[203]! * (nextBits rho)[203]!)
            - (idBits rho)[203]!
            - (nextBits rho)[203]!) =
          upperPe rho 50 := by
      rw [idBits_get rho 203 (by omega),
        nextBits_get rho 203 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2727 + 2 * (rho 2226) * r2726
    simpa only [
      upperPeImt,
      idBits_get rho 203 (by omega),
      nextBits_get rho 203 (by omega),
      idBitsImt_get rho 203 (by omega),
      nextBitsImt_get rho 203 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 49 + upperPeImt rho 49 *
        ((1 - (idBitsImt rho)[203]!) *
          (nextBitsImt rho)[203]!) =
        upperIlImt rho 50 by
    have hIl :
        upperIl rho 49 + upperPe rho 49 *
          ((1 - (idBits rho)[203]!) *
            (nextBits rho)[203]!) =
          upperIl rho 50 := by
      rw [idBits_get rho 203 (by omega),
        nextBits_get rho 203 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 49 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 48 + rho 2228 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 48)
      rw [hsum]
      linear_combination (rho 884) * r2724 + r2725
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 203 (by omega),
      nextBits_get rho 203 (by omega),
      idBitsImt_get rho 203 (by omega),
      nextBitsImt_get rho 203 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange24 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      203 (upperPeImt rho 50) (upperIlImt rho 50)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      205 (upperPeImt rho 48) (upperIlImt rho 48) := by
  exact upperStep48 rho h k (upperStep49 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
