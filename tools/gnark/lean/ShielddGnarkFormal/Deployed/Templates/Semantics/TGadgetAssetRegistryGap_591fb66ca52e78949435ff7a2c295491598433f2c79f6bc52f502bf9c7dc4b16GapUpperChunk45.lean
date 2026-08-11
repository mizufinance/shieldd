import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapUpperChunk44
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep90 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        162 (upperPeImt rho 91) (upperIlImt rho 91)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      163 (upperPeImt rho 90) (upperIlImt rho 90) := by
  have r2888 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2888 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.1
  have r2889 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2889 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.1
  have r2890 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2890 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.1
  have r2891 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2891 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2888 at r2888
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2889 at r2889
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2890 at r2890
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2891 at r2891
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 162
    (upperPeImt rho 90 *
      (1 + 2 * ((idBitsImt rho)[162]! * (nextBitsImt rho)[162]!)
        - (idBitsImt rho)[162]!
        - (nextBitsImt rho)[162]!))
    (upperIlImt rho 90 + upperPeImt rho 90 *
      ((1 - (idBitsImt rho)[162]!) *
        (nextBitsImt rho)[162]!))
  rw [show
      upperPeImt rho 90 *
        (1 + 2 * ((idBitsImt rho)[162]! * (nextBitsImt rho)[162]!)
          - (idBitsImt rho)[162]!
          - (nextBitsImt rho)[162]!) =
        upperPeImt rho 91 by
    have hPe :
        upperPe rho 90 *
          (1 + 2 * ((idBits rho)[162]! * (nextBits rho)[162]!)
            - (idBits rho)[162]!
            - (nextBits rho)[162]!) =
          upperPe rho 91 := by
      rw [idBits_get rho 162 (by omega),
        nextBits_get rho 162 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2891 + 2 * (rho 2390) * r2890
    simpa only [
      upperPeImt,
      idBits_get rho 162 (by omega),
      nextBits_get rho 162 (by omega),
      idBitsImt_get rho 162 (by omega),
      nextBitsImt_get rho 162 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 90 + upperPeImt rho 90 *
        ((1 - (idBitsImt rho)[162]!) *
          (nextBitsImt rho)[162]!) =
        upperIlImt rho 91 by
    have hIl :
        upperIl rho 90 + upperPe rho 90 *
          ((1 - (idBits rho)[162]!) *
            (nextBits rho)[162]!) =
          upperIl rho 91 := by
      rw [idBits_get rho 162 (by omega),
        nextBits_get rho 162 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 90 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 89 + rho 2392 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 89)
      rw [hsum]
      linear_combination (rho 843) * r2888 + r2889
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 162 (by omega),
      nextBits_get rho 162 (by omega),
      idBitsImt_get rho 162 (by omega),
      nextBitsImt_get rho 162 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep91 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        161 (upperPeImt rho 92) (upperIlImt rho 92)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      162 (upperPeImt rho 91) (upperIlImt rho 91) := by
  have r2892 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2892 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2893 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2893 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2894 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2894 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2895 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2895 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2892 at r2892
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2893 at r2893
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2894 at r2894
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2895 at r2895
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 161
    (upperPeImt rho 91 *
      (1 + 2 * ((idBitsImt rho)[161]! * (nextBitsImt rho)[161]!)
        - (idBitsImt rho)[161]!
        - (nextBitsImt rho)[161]!))
    (upperIlImt rho 91 + upperPeImt rho 91 *
      ((1 - (idBitsImt rho)[161]!) *
        (nextBitsImt rho)[161]!))
  rw [show
      upperPeImt rho 91 *
        (1 + 2 * ((idBitsImt rho)[161]! * (nextBitsImt rho)[161]!)
          - (idBitsImt rho)[161]!
          - (nextBitsImt rho)[161]!) =
        upperPeImt rho 92 by
    have hPe :
        upperPe rho 91 *
          (1 + 2 * ((idBits rho)[161]! * (nextBits rho)[161]!)
            - (idBits rho)[161]!
            - (nextBits rho)[161]!) =
          upperPe rho 92 := by
      rw [idBits_get rho 161 (by omega),
        nextBits_get rho 161 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2895 + 2 * (rho 2394) * r2894
    simpa only [
      upperPeImt,
      idBits_get rho 161 (by omega),
      nextBits_get rho 161 (by omega),
      idBitsImt_get rho 161 (by omega),
      nextBitsImt_get rho 161 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 91 + upperPeImt rho 91 *
        ((1 - (idBitsImt rho)[161]!) *
          (nextBitsImt rho)[161]!) =
        upperIlImt rho 92 by
    have hIl :
        upperIl rho 91 + upperPe rho 91 *
          ((1 - (idBits rho)[161]!) *
            (nextBits rho)[161]!) =
          upperIl rho 92 := by
      rw [idBits_get rho 161 (by omega),
        nextBits_get rho 161 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 91 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 90 + rho 2396 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 90)
      rw [hsum]
      linear_combination (rho 842) * r2892 + r2893
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 161 (by omega),
      nextBits_get rho 161 (by omega),
      idBitsImt_get rho 161 (by omega),
      nextBitsImt_get rho 161 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange45 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      161 (upperPeImt rho 92) (upperIlImt rho 92)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      163 (upperPeImt rho 90) (upperIlImt rho 90) := by
  exact upperStep90 rho h k (upperStep91 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
