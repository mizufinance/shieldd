import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapUpperChunk93
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep188 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        64 (upperPeImt rho 189) (upperIlImt rho 189)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      65 (upperPeImt rho 188) (upperIlImt rho 188) := by
  have r3280 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3280 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1
  have r3281 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3281 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.1
  have r3282 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3282 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.1
  have r3283 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3283 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3280 at r3280
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3281 at r3281
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3282 at r3282
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3283 at r3283
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 64
    (upperPeImt rho 188 *
      (1 + 2 * ((idBitsImt rho)[64]! * (nextBitsImt rho)[64]!)
        - (idBitsImt rho)[64]!
        - (nextBitsImt rho)[64]!))
    (upperIlImt rho 188 + upperPeImt rho 188 *
      ((1 - (idBitsImt rho)[64]!) *
        (nextBitsImt rho)[64]!))
  rw [show
      upperPeImt rho 188 *
        (1 + 2 * ((idBitsImt rho)[64]! * (nextBitsImt rho)[64]!)
          - (idBitsImt rho)[64]!
          - (nextBitsImt rho)[64]!) =
        upperPeImt rho 189 by
    have hPe :
        upperPe rho 188 *
          (1 + 2 * ((idBits rho)[64]! * (nextBits rho)[64]!)
            - (idBits rho)[64]!
            - (nextBits rho)[64]!) =
          upperPe rho 189 := by
      rw [idBits_get rho 64 (by omega),
        nextBits_get rho 64 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3283 + 2 * (rho 2782) * r3282
    simpa only [
      upperPeImt,
      idBits_get rho 64 (by omega),
      nextBits_get rho 64 (by omega),
      idBitsImt_get rho 64 (by omega),
      nextBitsImt_get rho 64 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 188 + upperPeImt rho 188 *
        ((1 - (idBitsImt rho)[64]!) *
          (nextBitsImt rho)[64]!) =
        upperIlImt rho 189 by
    have hIl :
        upperIl rho 188 + upperPe rho 188 *
          ((1 - (idBits rho)[64]!) *
            (nextBits rho)[64]!) =
          upperIl rho 189 := by
      rw [idBits_get rho 64 (by omega),
        nextBits_get rho 64 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 188 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 187 + rho 2784 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 187)
      rw [hsum]
      linear_combination (rho 745) * r3280 + r3281
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 64 (by omega),
      nextBits_get rho 64 (by omega),
      idBitsImt_get rho 64 (by omega),
      nextBitsImt_get rho 64 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep189 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        63 (upperPeImt rho 190) (upperIlImt rho 190)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      64 (upperPeImt rho 189) (upperIlImt rho 189) := by
  have r3284 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3284 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.1
  have r3285 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3285 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.1
  have r3286 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3286 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.1
  have r3287 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3287 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3284 at r3284
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3285 at r3285
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3286 at r3286
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3287 at r3287
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 63
    (upperPeImt rho 189 *
      (1 + 2 * ((idBitsImt rho)[63]! * (nextBitsImt rho)[63]!)
        - (idBitsImt rho)[63]!
        - (nextBitsImt rho)[63]!))
    (upperIlImt rho 189 + upperPeImt rho 189 *
      ((1 - (idBitsImt rho)[63]!) *
        (nextBitsImt rho)[63]!))
  rw [show
      upperPeImt rho 189 *
        (1 + 2 * ((idBitsImt rho)[63]! * (nextBitsImt rho)[63]!)
          - (idBitsImt rho)[63]!
          - (nextBitsImt rho)[63]!) =
        upperPeImt rho 190 by
    have hPe :
        upperPe rho 189 *
          (1 + 2 * ((idBits rho)[63]! * (nextBits rho)[63]!)
            - (idBits rho)[63]!
            - (nextBits rho)[63]!) =
          upperPe rho 190 := by
      rw [idBits_get rho 63 (by omega),
        nextBits_get rho 63 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3287 + 2 * (rho 2786) * r3286
    simpa only [
      upperPeImt,
      idBits_get rho 63 (by omega),
      nextBits_get rho 63 (by omega),
      idBitsImt_get rho 63 (by omega),
      nextBitsImt_get rho 63 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 189 + upperPeImt rho 189 *
        ((1 - (idBitsImt rho)[63]!) *
          (nextBitsImt rho)[63]!) =
        upperIlImt rho 190 by
    have hIl :
        upperIl rho 189 + upperPe rho 189 *
          ((1 - (idBits rho)[63]!) *
            (nextBits rho)[63]!) =
          upperIl rho 190 := by
      rw [idBits_get rho 63 (by omega),
        nextBits_get rho 63 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 189 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 188 + rho 2788 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 188)
      rw [hsum]
      linear_combination (rho 744) * r3284 + r3285
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 63 (by omega),
      nextBits_get rho 63 (by omega),
      idBitsImt_get rho 63 (by omega),
      nextBitsImt_get rho 63 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange94 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      63 (upperPeImt rho 190) (upperIlImt rho 190)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      65 (upperPeImt rho 188) (upperIlImt rho 188) := by
  exact upperStep188 rho h k (upperStep189 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
