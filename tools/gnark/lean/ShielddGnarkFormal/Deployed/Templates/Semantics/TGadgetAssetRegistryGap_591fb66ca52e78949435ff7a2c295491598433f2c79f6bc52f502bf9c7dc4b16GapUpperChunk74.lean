import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapUpperChunk73
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep148 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        104 (upperPeImt rho 149) (upperIlImt rho 149)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      105 (upperPeImt rho 148) (upperIlImt rho 148) := by
  have r3120 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3120 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1
  have r3121 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3121 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.1
  have r3122 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3122 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.1
  have r3123 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3123 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3120 at r3120
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3121 at r3121
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3122 at r3122
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3123 at r3123
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 104
    (upperPeImt rho 148 *
      (1 + 2 * ((idBitsImt rho)[104]! * (nextBitsImt rho)[104]!)
        - (idBitsImt rho)[104]!
        - (nextBitsImt rho)[104]!))
    (upperIlImt rho 148 + upperPeImt rho 148 *
      ((1 - (idBitsImt rho)[104]!) *
        (nextBitsImt rho)[104]!))
  rw [show
      upperPeImt rho 148 *
        (1 + 2 * ((idBitsImt rho)[104]! * (nextBitsImt rho)[104]!)
          - (idBitsImt rho)[104]!
          - (nextBitsImt rho)[104]!) =
        upperPeImt rho 149 by
    have hPe :
        upperPe rho 148 *
          (1 + 2 * ((idBits rho)[104]! * (nextBits rho)[104]!)
            - (idBits rho)[104]!
            - (nextBits rho)[104]!) =
          upperPe rho 149 := by
      rw [idBits_get rho 104 (by omega),
        nextBits_get rho 104 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3123 + 2 * (rho 2622) * r3122
    simpa only [
      upperPeImt,
      idBits_get rho 104 (by omega),
      nextBits_get rho 104 (by omega),
      idBitsImt_get rho 104 (by omega),
      nextBitsImt_get rho 104 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 148 + upperPeImt rho 148 *
        ((1 - (idBitsImt rho)[104]!) *
          (nextBitsImt rho)[104]!) =
        upperIlImt rho 149 by
    have hIl :
        upperIl rho 148 + upperPe rho 148 *
          ((1 - (idBits rho)[104]!) *
            (nextBits rho)[104]!) =
          upperIl rho 149 := by
      rw [idBits_get rho 104 (by omega),
        nextBits_get rho 104 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 148 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 147 + rho 2624 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 147)
      rw [hsum]
      linear_combination (rho 785) * r3120 + r3121
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 104 (by omega),
      nextBits_get rho 104 (by omega),
      idBitsImt_get rho 104 (by omega),
      nextBitsImt_get rho 104 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep149 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        103 (upperPeImt rho 150) (upperIlImt rho 150)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      104 (upperPeImt rho 149) (upperIlImt rho 149) := by
  have r3124 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3124 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.1
  have r3125 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3125 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.1
  have r3126 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3126 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.1
  have r3127 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3127 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3124 at r3124
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3125 at r3125
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3126 at r3126
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3127 at r3127
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 103
    (upperPeImt rho 149 *
      (1 + 2 * ((idBitsImt rho)[103]! * (nextBitsImt rho)[103]!)
        - (idBitsImt rho)[103]!
        - (nextBitsImt rho)[103]!))
    (upperIlImt rho 149 + upperPeImt rho 149 *
      ((1 - (idBitsImt rho)[103]!) *
        (nextBitsImt rho)[103]!))
  rw [show
      upperPeImt rho 149 *
        (1 + 2 * ((idBitsImt rho)[103]! * (nextBitsImt rho)[103]!)
          - (idBitsImt rho)[103]!
          - (nextBitsImt rho)[103]!) =
        upperPeImt rho 150 by
    have hPe :
        upperPe rho 149 *
          (1 + 2 * ((idBits rho)[103]! * (nextBits rho)[103]!)
            - (idBits rho)[103]!
            - (nextBits rho)[103]!) =
          upperPe rho 150 := by
      rw [idBits_get rho 103 (by omega),
        nextBits_get rho 103 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3127 + 2 * (rho 2626) * r3126
    simpa only [
      upperPeImt,
      idBits_get rho 103 (by omega),
      nextBits_get rho 103 (by omega),
      idBitsImt_get rho 103 (by omega),
      nextBitsImt_get rho 103 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 149 + upperPeImt rho 149 *
        ((1 - (idBitsImt rho)[103]!) *
          (nextBitsImt rho)[103]!) =
        upperIlImt rho 150 by
    have hIl :
        upperIl rho 149 + upperPe rho 149 *
          ((1 - (idBits rho)[103]!) *
            (nextBits rho)[103]!) =
          upperIl rho 150 := by
      rw [idBits_get rho 103 (by omega),
        nextBits_get rho 103 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 149 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 148 + rho 2628 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 148)
      rw [hsum]
      linear_combination (rho 784) * r3124 + r3125
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 103 (by omega),
      nextBits_get rho 103 (by omega),
      idBitsImt_get rho 103 (by omega),
      nextBitsImt_get rho 103 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange74 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      103 (upperPeImt rho 150) (upperIlImt rho 150)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      105 (upperPeImt rho 148) (upperIlImt rho 148) := by
  exact upperStep148 rho h k (upperStep149 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
