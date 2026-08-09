import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapUpperChunk92
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep186 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        66 (upperPeImt rho 187) (upperIlImt rho 187)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      67 (upperPeImt rho 186) (upperIlImt rho 186) := by
  have r3272 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3272 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3273 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3273 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3274 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3274 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3275 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3275 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3272 at r3272
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3273 at r3273
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3274 at r3274
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3275 at r3275
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 66
    (upperPeImt rho 186 *
      (1 + 2 * ((idBitsImt rho)[66]! * (nextBitsImt rho)[66]!)
        - (idBitsImt rho)[66]!
        - (nextBitsImt rho)[66]!))
    (upperIlImt rho 186 + upperPeImt rho 186 *
      ((1 - (idBitsImt rho)[66]!) *
        (nextBitsImt rho)[66]!))
  rw [show
      upperPeImt rho 186 *
        (1 + 2 * ((idBitsImt rho)[66]! * (nextBitsImt rho)[66]!)
          - (idBitsImt rho)[66]!
          - (nextBitsImt rho)[66]!) =
        upperPeImt rho 187 by
    have hPe :
        upperPe rho 186 *
          (1 + 2 * ((idBits rho)[66]! * (nextBits rho)[66]!)
            - (idBits rho)[66]!
            - (nextBits rho)[66]!) =
          upperPe rho 187 := by
      rw [idBits_get rho 66 (by omega),
        nextBits_get rho 66 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3275 + 2 * (rho 2774) * r3274
    simpa only [
      upperPeImt,
      idBits_get rho 66 (by omega),
      nextBits_get rho 66 (by omega),
      idBitsImt_get rho 66 (by omega),
      nextBitsImt_get rho 66 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 186 + upperPeImt rho 186 *
        ((1 - (idBitsImt rho)[66]!) *
          (nextBitsImt rho)[66]!) =
        upperIlImt rho 187 by
    have hIl :
        upperIl rho 186 + upperPe rho 186 *
          ((1 - (idBits rho)[66]!) *
            (nextBits rho)[66]!) =
          upperIl rho 187 := by
      rw [idBits_get rho 66 (by omega),
        nextBits_get rho 66 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 186 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 185 + rho 2776 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 185)
      rw [hsum]
      linear_combination (rho 747) * r3272 + r3273
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 66 (by omega),
      nextBits_get rho 66 (by omega),
      idBitsImt_get rho 66 (by omega),
      nextBitsImt_get rho 66 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep187 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        65 (upperPeImt rho 188) (upperIlImt rho 188)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      66 (upperPeImt rho 187) (upperIlImt rho 187) := by
  have r3276 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3276 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3277 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3277 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3278 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3278 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3279 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3279 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3276 at r3276
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3277 at r3277
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3278 at r3278
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3279 at r3279
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 65
    (upperPeImt rho 187 *
      (1 + 2 * ((idBitsImt rho)[65]! * (nextBitsImt rho)[65]!)
        - (idBitsImt rho)[65]!
        - (nextBitsImt rho)[65]!))
    (upperIlImt rho 187 + upperPeImt rho 187 *
      ((1 - (idBitsImt rho)[65]!) *
        (nextBitsImt rho)[65]!))
  rw [show
      upperPeImt rho 187 *
        (1 + 2 * ((idBitsImt rho)[65]! * (nextBitsImt rho)[65]!)
          - (idBitsImt rho)[65]!
          - (nextBitsImt rho)[65]!) =
        upperPeImt rho 188 by
    have hPe :
        upperPe rho 187 *
          (1 + 2 * ((idBits rho)[65]! * (nextBits rho)[65]!)
            - (idBits rho)[65]!
            - (nextBits rho)[65]!) =
          upperPe rho 188 := by
      rw [idBits_get rho 65 (by omega),
        nextBits_get rho 65 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3279 + 2 * (rho 2778) * r3278
    simpa only [
      upperPeImt,
      idBits_get rho 65 (by omega),
      nextBits_get rho 65 (by omega),
      idBitsImt_get rho 65 (by omega),
      nextBitsImt_get rho 65 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 187 + upperPeImt rho 187 *
        ((1 - (idBitsImt rho)[65]!) *
          (nextBitsImt rho)[65]!) =
        upperIlImt rho 188 by
    have hIl :
        upperIl rho 187 + upperPe rho 187 *
          ((1 - (idBits rho)[65]!) *
            (nextBits rho)[65]!) =
          upperIl rho 188 := by
      rw [idBits_get rho 65 (by omega),
        nextBits_get rho 65 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 187 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 186 + rho 2780 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 186)
      rw [hsum]
      linear_combination (rho 746) * r3276 + r3277
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 65 (by omega),
      nextBits_get rho 65 (by omega),
      idBitsImt_get rho 65 (by omega),
      nextBitsImt_get rho 65 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange93 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      65 (upperPeImt rho 188) (upperIlImt rho 188)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      67 (upperPeImt rho 186) (upperIlImt rho 186) := by
  exact upperStep186 rho h k (upperStep187 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
