import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk109
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep220 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        32 (lowerPeImt rho 221) (lowerIlImt rho 221)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      33 (lowerPeImt rho 220) (lowerIlImt rho 220) := by
  have r2398 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2398 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2399 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2399 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2
  have r2400 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2400 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1
  have r2401 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2401 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2398 at r2398
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2399 at r2399
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2400 at r2400
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2401 at r2401
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 32
    (lowerPeImt rho 220 *
      (1 + 2 * ((leafBitsImt rho)[32]! * (idBitsImt rho)[32]!)
        - (leafBitsImt rho)[32]!
        - (idBitsImt rho)[32]!))
    (lowerIlImt rho 220 + lowerPeImt rho 220 *
      ((1 - (leafBitsImt rho)[32]!) *
        (idBitsImt rho)[32]!))
  rw [show
      lowerPeImt rho 220 *
        (1 + 2 * ((leafBitsImt rho)[32]! * (idBitsImt rho)[32]!)
          - (leafBitsImt rho)[32]!
          - (idBitsImt rho)[32]!) =
        lowerPeImt rho 221 by
    have hPe :
        lowerPe rho 220 *
          (1 + 2 * ((leafBits rho)[32]! * (idBits rho)[32]!)
            - (leafBits rho)[32]!
            - (idBits rho)[32]!) =
          lowerPe rho 221 := by
      rw [leafBits_get rho 32 (by omega),
        idBits_get rho 32 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2401 + 2 * (rho 1900) * r2400
    simpa only [
      lowerPeImt,
      leafBits_get rho 32 (by omega),
      idBits_get rho 32 (by omega),
      leafBitsImt_get rho 32 (by omega),
      idBitsImt_get rho 32 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 220 + lowerPeImt rho 220 *
        ((1 - (leafBitsImt rho)[32]!) *
          (idBitsImt rho)[32]!) =
        lowerIlImt rho 221 by
    have hIl :
        lowerIl rho 220 + lowerPe rho 220 *
          ((1 - (leafBits rho)[32]!) *
            (idBits rho)[32]!) =
          lowerIl rho 221 := by
      rw [leafBits_get rho 32 (by omega),
        idBits_get rho 32 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 220 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 219 + rho 1902 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 219)
      rw [hsum]
      linear_combination (rho 373) * r2398 + r2399
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 32 (by omega),
      idBits_get rho 32 (by omega),
      leafBitsImt_get rho 32 (by omega),
      idBitsImt_get rho 32 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep221 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        31 (lowerPeImt rho 222) (lowerIlImt rho 222)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      32 (lowerPeImt rho 221) (lowerIlImt rho 221) := by
  have r2402 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2402 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.1
  have r2403 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2403 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.1
  have r2404 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2404 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.1
  have r2405 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2405 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2402 at r2402
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2403 at r2403
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2404 at r2404
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2405 at r2405
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 31
    (lowerPeImt rho 221 *
      (1 + 2 * ((leafBitsImt rho)[31]! * (idBitsImt rho)[31]!)
        - (leafBitsImt rho)[31]!
        - (idBitsImt rho)[31]!))
    (lowerIlImt rho 221 + lowerPeImt rho 221 *
      ((1 - (leafBitsImt rho)[31]!) *
        (idBitsImt rho)[31]!))
  rw [show
      lowerPeImt rho 221 *
        (1 + 2 * ((leafBitsImt rho)[31]! * (idBitsImt rho)[31]!)
          - (leafBitsImt rho)[31]!
          - (idBitsImt rho)[31]!) =
        lowerPeImt rho 222 by
    have hPe :
        lowerPe rho 221 *
          (1 + 2 * ((leafBits rho)[31]! * (idBits rho)[31]!)
            - (leafBits rho)[31]!
            - (idBits rho)[31]!) =
          lowerPe rho 222 := by
      rw [leafBits_get rho 31 (by omega),
        idBits_get rho 31 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2405 + 2 * (rho 1904) * r2404
    simpa only [
      lowerPeImt,
      leafBits_get rho 31 (by omega),
      idBits_get rho 31 (by omega),
      leafBitsImt_get rho 31 (by omega),
      idBitsImt_get rho 31 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 221 + lowerPeImt rho 221 *
        ((1 - (leafBitsImt rho)[31]!) *
          (idBitsImt rho)[31]!) =
        lowerIlImt rho 222 by
    have hIl :
        lowerIl rho 221 + lowerPe rho 221 *
          ((1 - (leafBits rho)[31]!) *
            (idBits rho)[31]!) =
          lowerIl rho 222 := by
      rw [leafBits_get rho 31 (by omega),
        idBits_get rho 31 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 221 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 220 + rho 1906 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 220)
      rw [hsum]
      linear_combination (rho 372) * r2402 + r2403
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 31 (by omega),
      idBits_get rho 31 (by omega),
      leafBitsImt_get rho 31 (by omega),
      idBitsImt_get rho 31 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange110 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      31 (lowerPeImt rho 222) (lowerIlImt rho 222)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      33 (lowerPeImt rho 220) (lowerIlImt rho 220) := by
  exact lowerStep220 rho h k (lowerStep221 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
