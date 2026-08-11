import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapUpperChunk3
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep8 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        244 (upperPeImt rho 9) (upperIlImt rho 9)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      245 (upperPeImt rho 8) (upperIlImt rho 8) := by
  have r2560 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2560 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1
  have r2561 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2561 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.1
  have r2562 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2562 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.1
  have r2563 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2563 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2560 at r2560
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2561 at r2561
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2562 at r2562
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2563 at r2563
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 244
    (upperPeImt rho 8 *
      (1 + 2 * ((idBitsImt rho)[244]! * (nextBitsImt rho)[244]!)
        - (idBitsImt rho)[244]!
        - (nextBitsImt rho)[244]!))
    (upperIlImt rho 8 + upperPeImt rho 8 *
      ((1 - (idBitsImt rho)[244]!) *
        (nextBitsImt rho)[244]!))
  rw [show
      upperPeImt rho 8 *
        (1 + 2 * ((idBitsImt rho)[244]! * (nextBitsImt rho)[244]!)
          - (idBitsImt rho)[244]!
          - (nextBitsImt rho)[244]!) =
        upperPeImt rho 9 by
    have hPe :
        upperPe rho 8 *
          (1 + 2 * ((idBits rho)[244]! * (nextBits rho)[244]!)
            - (idBits rho)[244]!
            - (nextBits rho)[244]!) =
          upperPe rho 9 := by
      rw [idBits_get rho 244 (by omega),
        nextBits_get rho 244 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2563 + 2 * (rho 2062) * r2562
    simpa only [
      upperPeImt,
      idBits_get rho 244 (by omega),
      nextBits_get rho 244 (by omega),
      idBitsImt_get rho 244 (by omega),
      nextBitsImt_get rho 244 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 8 + upperPeImt rho 8 *
        ((1 - (idBitsImt rho)[244]!) *
          (nextBitsImt rho)[244]!) =
        upperIlImt rho 9 by
    have hIl :
        upperIl rho 8 + upperPe rho 8 *
          ((1 - (idBits rho)[244]!) *
            (nextBits rho)[244]!) =
          upperIl rho 9 := by
      rw [idBits_get rho 244 (by omega),
        nextBits_get rho 244 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 8 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 7 + rho 2064 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 7)
      rw [hsum]
      linear_combination (rho 925) * r2560 + r2561
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 244 (by omega),
      nextBits_get rho 244 (by omega),
      idBitsImt_get rho 244 (by omega),
      nextBitsImt_get rho 244 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep9 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        243 (upperPeImt rho 10) (upperIlImt rho 10)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      244 (upperPeImt rho 9) (upperIlImt rho 9) := by
  have r2564 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2564 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.1
  have r2565 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2565 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.1
  have r2566 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2566 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.1
  have r2567 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2567 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2564 at r2564
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2565 at r2565
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2566 at r2566
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2567 at r2567
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 243
    (upperPeImt rho 9 *
      (1 + 2 * ((idBitsImt rho)[243]! * (nextBitsImt rho)[243]!)
        - (idBitsImt rho)[243]!
        - (nextBitsImt rho)[243]!))
    (upperIlImt rho 9 + upperPeImt rho 9 *
      ((1 - (idBitsImt rho)[243]!) *
        (nextBitsImt rho)[243]!))
  rw [show
      upperPeImt rho 9 *
        (1 + 2 * ((idBitsImt rho)[243]! * (nextBitsImt rho)[243]!)
          - (idBitsImt rho)[243]!
          - (nextBitsImt rho)[243]!) =
        upperPeImt rho 10 by
    have hPe :
        upperPe rho 9 *
          (1 + 2 * ((idBits rho)[243]! * (nextBits rho)[243]!)
            - (idBits rho)[243]!
            - (nextBits rho)[243]!) =
          upperPe rho 10 := by
      rw [idBits_get rho 243 (by omega),
        nextBits_get rho 243 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2567 + 2 * (rho 2066) * r2566
    simpa only [
      upperPeImt,
      idBits_get rho 243 (by omega),
      nextBits_get rho 243 (by omega),
      idBitsImt_get rho 243 (by omega),
      nextBitsImt_get rho 243 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 9 + upperPeImt rho 9 *
        ((1 - (idBitsImt rho)[243]!) *
          (nextBitsImt rho)[243]!) =
        upperIlImt rho 10 by
    have hIl :
        upperIl rho 9 + upperPe rho 9 *
          ((1 - (idBits rho)[243]!) *
            (nextBits rho)[243]!) =
          upperIl rho 10 := by
      rw [idBits_get rho 243 (by omega),
        nextBits_get rho 243 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 9 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 8 + rho 2068 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 8)
      rw [hsum]
      linear_combination (rho 924) * r2564 + r2565
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 243 (by omega),
      nextBits_get rho 243 (by omega),
      idBitsImt_get rho 243 (by omega),
      nextBitsImt_get rho 243 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange4 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      243 (upperPeImt rho 10) (upperIlImt rho 10)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      245 (upperPeImt rho 8) (upperIlImt rho 8) := by
  exact upperStep8 rho h k (upperStep9 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
