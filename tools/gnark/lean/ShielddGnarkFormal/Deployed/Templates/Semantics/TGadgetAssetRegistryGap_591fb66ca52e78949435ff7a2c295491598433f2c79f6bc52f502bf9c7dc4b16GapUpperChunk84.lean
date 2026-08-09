import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapUpperChunk83
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep168 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        84 (upperPeImt rho 169) (upperIlImt rho 169)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      85 (upperPeImt rho 168) (upperIlImt rho 168) := by
  have r3200 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3200 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1
  have r3201 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3201 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.1
  have r3202 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3202 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.1
  have r3203 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3203 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3200 at r3200
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3201 at r3201
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3202 at r3202
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3203 at r3203
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 84
    (upperPeImt rho 168 *
      (1 + 2 * ((idBitsImt rho)[84]! * (nextBitsImt rho)[84]!)
        - (idBitsImt rho)[84]!
        - (nextBitsImt rho)[84]!))
    (upperIlImt rho 168 + upperPeImt rho 168 *
      ((1 - (idBitsImt rho)[84]!) *
        (nextBitsImt rho)[84]!))
  rw [show
      upperPeImt rho 168 *
        (1 + 2 * ((idBitsImt rho)[84]! * (nextBitsImt rho)[84]!)
          - (idBitsImt rho)[84]!
          - (nextBitsImt rho)[84]!) =
        upperPeImt rho 169 by
    have hPe :
        upperPe rho 168 *
          (1 + 2 * ((idBits rho)[84]! * (nextBits rho)[84]!)
            - (idBits rho)[84]!
            - (nextBits rho)[84]!) =
          upperPe rho 169 := by
      rw [idBits_get rho 84 (by omega),
        nextBits_get rho 84 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3203 + 2 * (rho 2702) * r3202
    simpa only [
      upperPeImt,
      idBits_get rho 84 (by omega),
      nextBits_get rho 84 (by omega),
      idBitsImt_get rho 84 (by omega),
      nextBitsImt_get rho 84 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 168 + upperPeImt rho 168 *
        ((1 - (idBitsImt rho)[84]!) *
          (nextBitsImt rho)[84]!) =
        upperIlImt rho 169 by
    have hIl :
        upperIl rho 168 + upperPe rho 168 *
          ((1 - (idBits rho)[84]!) *
            (nextBits rho)[84]!) =
          upperIl rho 169 := by
      rw [idBits_get rho 84 (by omega),
        nextBits_get rho 84 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 168 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 167 + rho 2704 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 167)
      rw [hsum]
      linear_combination (rho 765) * r3200 + r3201
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 84 (by omega),
      nextBits_get rho 84 (by omega),
      idBitsImt_get rho 84 (by omega),
      nextBitsImt_get rho 84 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep169 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        83 (upperPeImt rho 170) (upperIlImt rho 170)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      84 (upperPeImt rho 169) (upperIlImt rho 169) := by
  have r3204 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3204 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.1
  have r3205 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3205 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.1
  have r3206 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3206 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.1
  have r3207 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3207 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3204 at r3204
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3205 at r3205
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3206 at r3206
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3207 at r3207
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 83
    (upperPeImt rho 169 *
      (1 + 2 * ((idBitsImt rho)[83]! * (nextBitsImt rho)[83]!)
        - (idBitsImt rho)[83]!
        - (nextBitsImt rho)[83]!))
    (upperIlImt rho 169 + upperPeImt rho 169 *
      ((1 - (idBitsImt rho)[83]!) *
        (nextBitsImt rho)[83]!))
  rw [show
      upperPeImt rho 169 *
        (1 + 2 * ((idBitsImt rho)[83]! * (nextBitsImt rho)[83]!)
          - (idBitsImt rho)[83]!
          - (nextBitsImt rho)[83]!) =
        upperPeImt rho 170 by
    have hPe :
        upperPe rho 169 *
          (1 + 2 * ((idBits rho)[83]! * (nextBits rho)[83]!)
            - (idBits rho)[83]!
            - (nextBits rho)[83]!) =
          upperPe rho 170 := by
      rw [idBits_get rho 83 (by omega),
        nextBits_get rho 83 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3207 + 2 * (rho 2706) * r3206
    simpa only [
      upperPeImt,
      idBits_get rho 83 (by omega),
      nextBits_get rho 83 (by omega),
      idBitsImt_get rho 83 (by omega),
      nextBitsImt_get rho 83 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 169 + upperPeImt rho 169 *
        ((1 - (idBitsImt rho)[83]!) *
          (nextBitsImt rho)[83]!) =
        upperIlImt rho 170 by
    have hIl :
        upperIl rho 169 + upperPe rho 169 *
          ((1 - (idBits rho)[83]!) *
            (nextBits rho)[83]!) =
          upperIl rho 170 := by
      rw [idBits_get rho 83 (by omega),
        nextBits_get rho 83 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 169 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 168 + rho 2708 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 168)
      rw [hsum]
      linear_combination (rho 764) * r3204 + r3205
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 83 (by omega),
      nextBits_get rho 83 (by omega),
      idBitsImt_get rho 83 (by omega),
      nextBitsImt_get rho 83 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange84 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      83 (upperPeImt rho 170) (upperIlImt rho 170)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      85 (upperPeImt rho 168) (upperIlImt rho 168) := by
  exact upperStep168 rho h k (upperStep169 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
