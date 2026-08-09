import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapUpperChunk65
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep132 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        120 (upperPeImt rho 133) (upperIlImt rho 133)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      121 (upperPeImt rho 132) (upperIlImt rho 132) := by
  have r3056 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3056 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3057 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3057 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3058 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3058 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3059 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3059 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3056 at r3056
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3057 at r3057
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3058 at r3058
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3059 at r3059
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 120
    (upperPeImt rho 132 *
      (1 + 2 * ((idBitsImt rho)[120]! * (nextBitsImt rho)[120]!)
        - (idBitsImt rho)[120]!
        - (nextBitsImt rho)[120]!))
    (upperIlImt rho 132 + upperPeImt rho 132 *
      ((1 - (idBitsImt rho)[120]!) *
        (nextBitsImt rho)[120]!))
  rw [show
      upperPeImt rho 132 *
        (1 + 2 * ((idBitsImt rho)[120]! * (nextBitsImt rho)[120]!)
          - (idBitsImt rho)[120]!
          - (nextBitsImt rho)[120]!) =
        upperPeImt rho 133 by
    have hPe :
        upperPe rho 132 *
          (1 + 2 * ((idBits rho)[120]! * (nextBits rho)[120]!)
            - (idBits rho)[120]!
            - (nextBits rho)[120]!) =
          upperPe rho 133 := by
      rw [idBits_get rho 120 (by omega),
        nextBits_get rho 120 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3059 + 2 * (rho 2558) * r3058
    simpa only [
      upperPeImt,
      idBits_get rho 120 (by omega),
      nextBits_get rho 120 (by omega),
      idBitsImt_get rho 120 (by omega),
      nextBitsImt_get rho 120 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 132 + upperPeImt rho 132 *
        ((1 - (idBitsImt rho)[120]!) *
          (nextBitsImt rho)[120]!) =
        upperIlImt rho 133 by
    have hIl :
        upperIl rho 132 + upperPe rho 132 *
          ((1 - (idBits rho)[120]!) *
            (nextBits rho)[120]!) =
          upperIl rho 133 := by
      rw [idBits_get rho 120 (by omega),
        nextBits_get rho 120 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 132 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 131 + rho 2560 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 131)
      rw [hsum]
      linear_combination (rho 801) * r3056 + r3057
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 120 (by omega),
      nextBits_get rho 120 (by omega),
      idBitsImt_get rho 120 (by omega),
      nextBitsImt_get rho 120 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep133 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        119 (upperPeImt rho 134) (upperIlImt rho 134)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      120 (upperPeImt rho 133) (upperIlImt rho 133) := by
  have r3060 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3060 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3061 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3061 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3062 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3062 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3063 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3063 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3060 at r3060
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3061 at r3061
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3062 at r3062
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3063 at r3063
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 119
    (upperPeImt rho 133 *
      (1 + 2 * ((idBitsImt rho)[119]! * (nextBitsImt rho)[119]!)
        - (idBitsImt rho)[119]!
        - (nextBitsImt rho)[119]!))
    (upperIlImt rho 133 + upperPeImt rho 133 *
      ((1 - (idBitsImt rho)[119]!) *
        (nextBitsImt rho)[119]!))
  rw [show
      upperPeImt rho 133 *
        (1 + 2 * ((idBitsImt rho)[119]! * (nextBitsImt rho)[119]!)
          - (idBitsImt rho)[119]!
          - (nextBitsImt rho)[119]!) =
        upperPeImt rho 134 by
    have hPe :
        upperPe rho 133 *
          (1 + 2 * ((idBits rho)[119]! * (nextBits rho)[119]!)
            - (idBits rho)[119]!
            - (nextBits rho)[119]!) =
          upperPe rho 134 := by
      rw [idBits_get rho 119 (by omega),
        nextBits_get rho 119 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3063 + 2 * (rho 2562) * r3062
    simpa only [
      upperPeImt,
      idBits_get rho 119 (by omega),
      nextBits_get rho 119 (by omega),
      idBitsImt_get rho 119 (by omega),
      nextBitsImt_get rho 119 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 133 + upperPeImt rho 133 *
        ((1 - (idBitsImt rho)[119]!) *
          (nextBitsImt rho)[119]!) =
        upperIlImt rho 134 by
    have hIl :
        upperIl rho 133 + upperPe rho 133 *
          ((1 - (idBits rho)[119]!) *
            (nextBits rho)[119]!) =
          upperIl rho 134 := by
      rw [idBits_get rho 119 (by omega),
        nextBits_get rho 119 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 133 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 132 + rho 2564 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 132)
      rw [hsum]
      linear_combination (rho 800) * r3060 + r3061
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 119 (by omega),
      nextBits_get rho 119 (by omega),
      idBitsImt_get rho 119 (by omega),
      nextBitsImt_get rho 119 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange66 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      119 (upperPeImt rho 134) (upperIlImt rho 134)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      121 (upperPeImt rho 132) (upperIlImt rho 132) := by
  exact upperStep132 rho h k (upperStep133 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
