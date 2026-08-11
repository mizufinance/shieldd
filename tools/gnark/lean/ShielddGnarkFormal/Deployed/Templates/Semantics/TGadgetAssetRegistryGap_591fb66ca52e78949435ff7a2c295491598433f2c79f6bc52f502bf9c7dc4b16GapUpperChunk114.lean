import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapUpperChunk113
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep228 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        24 (upperPeImt rho 229) (upperIlImt rho 229)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      25 (upperPeImt rho 228) (upperIlImt rho 228) := by
  have r3440 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3440 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1
  have r3441 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3441 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.1
  have r3442 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3442 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.1
  have r3443 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3443 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3440 at r3440
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3441 at r3441
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3442 at r3442
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3443 at r3443
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 24
    (upperPeImt rho 228 *
      (1 + 2 * ((idBitsImt rho)[24]! * (nextBitsImt rho)[24]!)
        - (idBitsImt rho)[24]!
        - (nextBitsImt rho)[24]!))
    (upperIlImt rho 228 + upperPeImt rho 228 *
      ((1 - (idBitsImt rho)[24]!) *
        (nextBitsImt rho)[24]!))
  rw [show
      upperPeImt rho 228 *
        (1 + 2 * ((idBitsImt rho)[24]! * (nextBitsImt rho)[24]!)
          - (idBitsImt rho)[24]!
          - (nextBitsImt rho)[24]!) =
        upperPeImt rho 229 by
    have hPe :
        upperPe rho 228 *
          (1 + 2 * ((idBits rho)[24]! * (nextBits rho)[24]!)
            - (idBits rho)[24]!
            - (nextBits rho)[24]!) =
          upperPe rho 229 := by
      rw [idBits_get rho 24 (by omega),
        nextBits_get rho 24 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3443 + 2 * (rho 2942) * r3442
    simpa only [
      upperPeImt,
      idBits_get rho 24 (by omega),
      nextBits_get rho 24 (by omega),
      idBitsImt_get rho 24 (by omega),
      nextBitsImt_get rho 24 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 228 + upperPeImt rho 228 *
        ((1 - (idBitsImt rho)[24]!) *
          (nextBitsImt rho)[24]!) =
        upperIlImt rho 229 by
    have hIl :
        upperIl rho 228 + upperPe rho 228 *
          ((1 - (idBits rho)[24]!) *
            (nextBits rho)[24]!) =
          upperIl rho 229 := by
      rw [idBits_get rho 24 (by omega),
        nextBits_get rho 24 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 228 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 227 + rho 2944 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 227)
      rw [hsum]
      linear_combination (rho 705) * r3440 + r3441
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 24 (by omega),
      nextBits_get rho 24 (by omega),
      idBitsImt_get rho 24 (by omega),
      nextBitsImt_get rho 24 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep229 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        23 (upperPeImt rho 230) (upperIlImt rho 230)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      24 (upperPeImt rho 229) (upperIlImt rho 229) := by
  have r3444 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3444 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.1
  have r3445 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3445 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.1
  have r3446 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3446 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.1
  have r3447 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3447 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3444 at r3444
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3445 at r3445
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3446 at r3446
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3447 at r3447
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 23
    (upperPeImt rho 229 *
      (1 + 2 * ((idBitsImt rho)[23]! * (nextBitsImt rho)[23]!)
        - (idBitsImt rho)[23]!
        - (nextBitsImt rho)[23]!))
    (upperIlImt rho 229 + upperPeImt rho 229 *
      ((1 - (idBitsImt rho)[23]!) *
        (nextBitsImt rho)[23]!))
  rw [show
      upperPeImt rho 229 *
        (1 + 2 * ((idBitsImt rho)[23]! * (nextBitsImt rho)[23]!)
          - (idBitsImt rho)[23]!
          - (nextBitsImt rho)[23]!) =
        upperPeImt rho 230 by
    have hPe :
        upperPe rho 229 *
          (1 + 2 * ((idBits rho)[23]! * (nextBits rho)[23]!)
            - (idBits rho)[23]!
            - (nextBits rho)[23]!) =
          upperPe rho 230 := by
      rw [idBits_get rho 23 (by omega),
        nextBits_get rho 23 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3447 + 2 * (rho 2946) * r3446
    simpa only [
      upperPeImt,
      idBits_get rho 23 (by omega),
      nextBits_get rho 23 (by omega),
      idBitsImt_get rho 23 (by omega),
      nextBitsImt_get rho 23 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 229 + upperPeImt rho 229 *
        ((1 - (idBitsImt rho)[23]!) *
          (nextBitsImt rho)[23]!) =
        upperIlImt rho 230 by
    have hIl :
        upperIl rho 229 + upperPe rho 229 *
          ((1 - (idBits rho)[23]!) *
            (nextBits rho)[23]!) =
          upperIl rho 230 := by
      rw [idBits_get rho 23 (by omega),
        nextBits_get rho 23 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 229 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 228 + rho 2948 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 228)
      rw [hsum]
      linear_combination (rho 704) * r3444 + r3445
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 23 (by omega),
      nextBits_get rho 23 (by omega),
      idBitsImt_get rho 23 (by omega),
      nextBitsImt_get rho 23 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange114 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      23 (upperPeImt rho 230) (upperIlImt rho 230)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      25 (upperPeImt rho 228) (upperIlImt rho 228) := by
  exact upperStep228 rho h k (upperStep229 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
