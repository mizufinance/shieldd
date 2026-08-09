import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLower
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep0 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        252 (upperPeImt rho 1) (upperIlImt rho 1)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      253 (upperPeImt rho 0) (upperIlImt rho 0) := by
  have r2530 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2530 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2531 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2531 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2530 at r2530
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2531 at r2531
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 252
    (upperPeImt rho 0 *
      (1 + 2 * ((idBitsImt rho)[252]! * (nextBitsImt rho)[252]!)
        - (idBitsImt rho)[252]!
        - (nextBitsImt rho)[252]!))
    (upperIlImt rho 0 + upperPeImt rho 0 *
      ((1 - (idBitsImt rho)[252]!) *
        (nextBitsImt rho)[252]!))
  rw [show
      upperPeImt rho 0 *
        (1 + 2 * ((idBitsImt rho)[252]! * (nextBitsImt rho)[252]!)
          - (idBitsImt rho)[252]!
          - (nextBitsImt rho)[252]!) =
        upperPeImt rho 1 by
    have hPe :
        upperPe rho 0 *
          (1 + 2 * ((idBits rho)[252]! * (nextBits rho)[252]!)
            - (idBits rho)[252]!
            - (nextBits rho)[252]!) =
          upperPe rho 1 := by
      rw [idBits_get rho 252 (by omega),
        nextBits_get rho 252 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination 2 * r2531
    simpa only [
      upperPeImt,
      idBits_get rho 252 (by omega),
      nextBits_get rho 252 (by omega),
      idBitsImt_get rho 252 (by omega),
      nextBitsImt_get rho 252 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 0 + upperPeImt rho 0 *
        ((1 - (idBitsImt rho)[252]!) *
          (nextBitsImt rho)[252]!) =
        upperIlImt rho 1 by
    have hIl :
        upperIl rho 0 + upperPe rho 0 *
          ((1 - (idBits rho)[252]!) *
            (nextBits rho)[252]!) =
          upperIl rho 1 := by
      rw [idBits_get rho 252 (by omega),
        nextBits_get rho 252 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      linear_combination r2530
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 252 (by omega),
      nextBits_get rho 252 (by omega),
      idBitsImt_get rho 252 (by omega),
      nextBitsImt_get rho 252 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep1 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        251 (upperPeImt rho 2) (upperIlImt rho 2)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      252 (upperPeImt rho 1) (upperIlImt rho 1) := by
  have r2532 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2532 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2533 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2533 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2534 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2534 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2535 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2535 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2532 at r2532
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2533 at r2533
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2534 at r2534
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2535 at r2535
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 251
    (upperPeImt rho 1 *
      (1 + 2 * ((idBitsImt rho)[251]! * (nextBitsImt rho)[251]!)
        - (idBitsImt rho)[251]!
        - (nextBitsImt rho)[251]!))
    (upperIlImt rho 1 + upperPeImt rho 1 *
      ((1 - (idBitsImt rho)[251]!) *
        (nextBitsImt rho)[251]!))
  rw [show
      upperPeImt rho 1 *
        (1 + 2 * ((idBitsImt rho)[251]! * (nextBitsImt rho)[251]!)
          - (idBitsImt rho)[251]!
          - (nextBitsImt rho)[251]!) =
        upperPeImt rho 2 by
    have hPe :
        upperPe rho 1 *
          (1 + 2 * ((idBits rho)[251]! * (nextBits rho)[251]!)
            - (idBits rho)[251]!
            - (nextBits rho)[251]!) =
          upperPe rho 2 := by
      rw [idBits_get rho 251 (by omega),
        nextBits_get rho 251 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2535 + 2 * ((1 + 2 * rho 2034 - rho 593 - rho 933)) * r2534
    simpa only [
      upperPeImt,
      idBits_get rho 251 (by omega),
      nextBits_get rho 251 (by omega),
      idBitsImt_get rho 251 (by omega),
      nextBitsImt_get rho 251 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 1 + upperPeImt rho 1 *
        ((1 - (idBitsImt rho)[251]!) *
          (nextBitsImt rho)[251]!) =
        upperIlImt rho 2 by
    have hIl :
        upperIl rho 1 + upperPe rho 1 *
          ((1 - (idBits rho)[251]!) *
            (nextBits rho)[251]!) =
          upperIl rho 2 := by
      rw [idBits_get rho 251 (by omega),
        nextBits_get rho 251 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 1 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 0 + rho 2036 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 0)
      rw [hsum]
      simp only [
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      linear_combination (rho 932) * r2532 + r2533
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 251 (by omega),
      nextBits_get rho 251 (by omega),
      idBitsImt_get rho 251 (by omega),
      nextBitsImt_get rho 251 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange0 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      251 (upperPeImt rho 2) (upperIlImt rho 2)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      253 (upperPeImt rho 0) (upperIlImt rho 0) := by
  exact upperStep0 rho h k (upperStep1 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
