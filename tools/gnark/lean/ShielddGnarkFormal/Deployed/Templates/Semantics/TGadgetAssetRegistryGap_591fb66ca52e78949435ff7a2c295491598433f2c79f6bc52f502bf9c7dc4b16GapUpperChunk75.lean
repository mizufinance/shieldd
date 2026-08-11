import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapUpperChunk74
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep150 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        102 (upperPeImt rho 151) (upperIlImt rho 151)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      103 (upperPeImt rho 150) (upperIlImt rho 150) := by
  have r3128 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3128 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.1
  have r3129 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3129 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.1
  have r3130 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3130 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.1
  have r3131 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3131 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3128 at r3128
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3129 at r3129
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3130 at r3130
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3131 at r3131
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 102
    (upperPeImt rho 150 *
      (1 + 2 * ((idBitsImt rho)[102]! * (nextBitsImt rho)[102]!)
        - (idBitsImt rho)[102]!
        - (nextBitsImt rho)[102]!))
    (upperIlImt rho 150 + upperPeImt rho 150 *
      ((1 - (idBitsImt rho)[102]!) *
        (nextBitsImt rho)[102]!))
  rw [show
      upperPeImt rho 150 *
        (1 + 2 * ((idBitsImt rho)[102]! * (nextBitsImt rho)[102]!)
          - (idBitsImt rho)[102]!
          - (nextBitsImt rho)[102]!) =
        upperPeImt rho 151 by
    have hPe :
        upperPe rho 150 *
          (1 + 2 * ((idBits rho)[102]! * (nextBits rho)[102]!)
            - (idBits rho)[102]!
            - (nextBits rho)[102]!) =
          upperPe rho 151 := by
      rw [idBits_get rho 102 (by omega),
        nextBits_get rho 102 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3131 + 2 * (rho 2630) * r3130
    simpa only [
      upperPeImt,
      idBits_get rho 102 (by omega),
      nextBits_get rho 102 (by omega),
      idBitsImt_get rho 102 (by omega),
      nextBitsImt_get rho 102 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 150 + upperPeImt rho 150 *
        ((1 - (idBitsImt rho)[102]!) *
          (nextBitsImt rho)[102]!) =
        upperIlImt rho 151 by
    have hIl :
        upperIl rho 150 + upperPe rho 150 *
          ((1 - (idBits rho)[102]!) *
            (nextBits rho)[102]!) =
          upperIl rho 151 := by
      rw [idBits_get rho 102 (by omega),
        nextBits_get rho 102 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 150 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 149 + rho 2632 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 149)
      rw [hsum]
      linear_combination (rho 783) * r3128 + r3129
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 102 (by omega),
      nextBits_get rho 102 (by omega),
      idBitsImt_get rho 102 (by omega),
      nextBitsImt_get rho 102 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep151 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        101 (upperPeImt rho 152) (upperIlImt rho 152)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      102 (upperPeImt rho 151) (upperIlImt rho 151) := by
  have r3132 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3132 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3133 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3133 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3134 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3134 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3135 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3135 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3132 at r3132
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3133 at r3133
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3134 at r3134
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3135 at r3135
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 101
    (upperPeImt rho 151 *
      (1 + 2 * ((idBitsImt rho)[101]! * (nextBitsImt rho)[101]!)
        - (idBitsImt rho)[101]!
        - (nextBitsImt rho)[101]!))
    (upperIlImt rho 151 + upperPeImt rho 151 *
      ((1 - (idBitsImt rho)[101]!) *
        (nextBitsImt rho)[101]!))
  rw [show
      upperPeImt rho 151 *
        (1 + 2 * ((idBitsImt rho)[101]! * (nextBitsImt rho)[101]!)
          - (idBitsImt rho)[101]!
          - (nextBitsImt rho)[101]!) =
        upperPeImt rho 152 by
    have hPe :
        upperPe rho 151 *
          (1 + 2 * ((idBits rho)[101]! * (nextBits rho)[101]!)
            - (idBits rho)[101]!
            - (nextBits rho)[101]!) =
          upperPe rho 152 := by
      rw [idBits_get rho 101 (by omega),
        nextBits_get rho 101 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3135 + 2 * (rho 2634) * r3134
    simpa only [
      upperPeImt,
      idBits_get rho 101 (by omega),
      nextBits_get rho 101 (by omega),
      idBitsImt_get rho 101 (by omega),
      nextBitsImt_get rho 101 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 151 + upperPeImt rho 151 *
        ((1 - (idBitsImt rho)[101]!) *
          (nextBitsImt rho)[101]!) =
        upperIlImt rho 152 by
    have hIl :
        upperIl rho 151 + upperPe rho 151 *
          ((1 - (idBits rho)[101]!) *
            (nextBits rho)[101]!) =
          upperIl rho 152 := by
      rw [idBits_get rho 101 (by omega),
        nextBits_get rho 101 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 151 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 150 + rho 2636 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 150)
      rw [hsum]
      linear_combination (rho 782) * r3132 + r3133
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 101 (by omega),
      nextBits_get rho 101 (by omega),
      idBitsImt_get rho 101 (by omega),
      nextBitsImt_get rho 101 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange75 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      101 (upperPeImt rho 152) (upperIlImt rho 152)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      103 (upperPeImt rho 150) (upperIlImt rho 150) := by
  exact upperStep150 rho h k (upperStep151 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
