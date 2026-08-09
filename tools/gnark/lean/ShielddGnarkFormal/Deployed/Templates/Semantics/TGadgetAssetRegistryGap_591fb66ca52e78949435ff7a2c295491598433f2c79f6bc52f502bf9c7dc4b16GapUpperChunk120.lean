import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapUpperChunk119
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep240 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        12 (upperPeImt rho 241) (upperIlImt rho 241)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      13 (upperPeImt rho 240) (upperIlImt rho 240) := by
  have r3488 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3488 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3489 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3489 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3490 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3490 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3491 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3491 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3488 at r3488
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3489 at r3489
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3490 at r3490
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3491 at r3491
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 12
    (upperPeImt rho 240 *
      (1 + 2 * ((idBitsImt rho)[12]! * (nextBitsImt rho)[12]!)
        - (idBitsImt rho)[12]!
        - (nextBitsImt rho)[12]!))
    (upperIlImt rho 240 + upperPeImt rho 240 *
      ((1 - (idBitsImt rho)[12]!) *
        (nextBitsImt rho)[12]!))
  rw [show
      upperPeImt rho 240 *
        (1 + 2 * ((idBitsImt rho)[12]! * (nextBitsImt rho)[12]!)
          - (idBitsImt rho)[12]!
          - (nextBitsImt rho)[12]!) =
        upperPeImt rho 241 by
    have hPe :
        upperPe rho 240 *
          (1 + 2 * ((idBits rho)[12]! * (nextBits rho)[12]!)
            - (idBits rho)[12]!
            - (nextBits rho)[12]!) =
          upperPe rho 241 := by
      rw [idBits_get rho 12 (by omega),
        nextBits_get rho 12 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3491 + 2 * (rho 2990) * r3490
    simpa only [
      upperPeImt,
      idBits_get rho 12 (by omega),
      nextBits_get rho 12 (by omega),
      idBitsImt_get rho 12 (by omega),
      nextBitsImt_get rho 12 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 240 + upperPeImt rho 240 *
        ((1 - (idBitsImt rho)[12]!) *
          (nextBitsImt rho)[12]!) =
        upperIlImt rho 241 by
    have hIl :
        upperIl rho 240 + upperPe rho 240 *
          ((1 - (idBits rho)[12]!) *
            (nextBits rho)[12]!) =
          upperIl rho 241 := by
      rw [idBits_get rho 12 (by omega),
        nextBits_get rho 12 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 240 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 239 + rho 2992 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 239)
      rw [hsum]
      linear_combination (rho 693) * r3488 + r3489
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 12 (by omega),
      nextBits_get rho 12 (by omega),
      idBitsImt_get rho 12 (by omega),
      nextBitsImt_get rho 12 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep241 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        11 (upperPeImt rho 242) (upperIlImt rho 242)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      12 (upperPeImt rho 241) (upperIlImt rho 241) := by
  have r3492 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3492 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3493 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3493 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3494 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3494 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3495 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3495 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3492 at r3492
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3493 at r3493
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3494 at r3494
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3495 at r3495
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 11
    (upperPeImt rho 241 *
      (1 + 2 * ((idBitsImt rho)[11]! * (nextBitsImt rho)[11]!)
        - (idBitsImt rho)[11]!
        - (nextBitsImt rho)[11]!))
    (upperIlImt rho 241 + upperPeImt rho 241 *
      ((1 - (idBitsImt rho)[11]!) *
        (nextBitsImt rho)[11]!))
  rw [show
      upperPeImt rho 241 *
        (1 + 2 * ((idBitsImt rho)[11]! * (nextBitsImt rho)[11]!)
          - (idBitsImt rho)[11]!
          - (nextBitsImt rho)[11]!) =
        upperPeImt rho 242 by
    have hPe :
        upperPe rho 241 *
          (1 + 2 * ((idBits rho)[11]! * (nextBits rho)[11]!)
            - (idBits rho)[11]!
            - (nextBits rho)[11]!) =
          upperPe rho 242 := by
      rw [idBits_get rho 11 (by omega),
        nextBits_get rho 11 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3495 + 2 * (rho 2994) * r3494
    simpa only [
      upperPeImt,
      idBits_get rho 11 (by omega),
      nextBits_get rho 11 (by omega),
      idBitsImt_get rho 11 (by omega),
      nextBitsImt_get rho 11 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 241 + upperPeImt rho 241 *
        ((1 - (idBitsImt rho)[11]!) *
          (nextBitsImt rho)[11]!) =
        upperIlImt rho 242 by
    have hIl :
        upperIl rho 241 + upperPe rho 241 *
          ((1 - (idBits rho)[11]!) *
            (nextBits rho)[11]!) =
          upperIl rho 242 := by
      rw [idBits_get rho 11 (by omega),
        nextBits_get rho 11 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 241 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 240 + rho 2996 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 240)
      rw [hsum]
      linear_combination (rho 692) * r3492 + r3493
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 11 (by omega),
      nextBits_get rho 11 (by omega),
      idBitsImt_get rho 11 (by omega),
      nextBitsImt_get rho 11 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange120 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      11 (upperPeImt rho 242) (upperIlImt rho 242)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      13 (upperPeImt rho 240) (upperIlImt rho 240) := by
  exact upperStep240 rho h k (upperStep241 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
