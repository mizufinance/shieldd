import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk1
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep4 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        248 (lowerPeImt rho 5) (lowerIlImt rho 5)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      249 (lowerPeImt rho 4) (lowerIlImt rho 4) := by
  have r1534 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1534 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1535 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1535 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1536 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1536 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1537 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1537 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1534 at r1534
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1535 at r1535
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1536 at r1536
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1537 at r1537
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 248
    (lowerPeImt rho 4 *
      (1 + 2 * ((leafBitsImt rho)[248]! * (idBitsImt rho)[248]!)
        - (leafBitsImt rho)[248]!
        - (idBitsImt rho)[248]!))
    (lowerIlImt rho 4 + lowerPeImt rho 4 *
      ((1 - (leafBitsImt rho)[248]!) *
        (idBitsImt rho)[248]!))
  rw [show
      lowerPeImt rho 4 *
        (1 + 2 * ((leafBitsImt rho)[248]! * (idBitsImt rho)[248]!)
          - (leafBitsImt rho)[248]!
          - (idBitsImt rho)[248]!) =
        lowerPeImt rho 5 by
    have hPe :
        lowerPe rho 4 *
          (1 + 2 * ((leafBits rho)[248]! * (idBits rho)[248]!)
            - (leafBits rho)[248]!
            - (idBits rho)[248]!) =
          lowerPe rho 5 := by
      rw [leafBits_get rho 248 (by omega),
        idBits_get rho 248 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1537 + 2 * (rho 1036) * r1536
    simpa only [
      lowerPeImt,
      leafBits_get rho 248 (by omega),
      idBits_get rho 248 (by omega),
      leafBitsImt_get rho 248 (by omega),
      idBitsImt_get rho 248 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 4 + lowerPeImt rho 4 *
        ((1 - (leafBitsImt rho)[248]!) *
          (idBitsImt rho)[248]!) =
        lowerIlImt rho 5 by
    have hIl :
        lowerIl rho 4 + lowerPe rho 4 *
          ((1 - (leafBits rho)[248]!) *
            (idBits rho)[248]!) =
          lowerIl rho 5 := by
      rw [leafBits_get rho 248 (by omega),
        idBits_get rho 248 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 4 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 3 + rho 1038 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 3)
      rw [hsum]
      linear_combination (rho 589) * r1534 + r1535
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 248 (by omega),
      idBits_get rho 248 (by omega),
      leafBitsImt_get rho 248 (by omega),
      idBitsImt_get rho 248 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep5 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        247 (lowerPeImt rho 6) (lowerIlImt rho 6)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      248 (lowerPeImt rho 5) (lowerIlImt rho 5) := by
  have r1538 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1538 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1539 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1539 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1540 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1540 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1541 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1541 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1538 at r1538
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1539 at r1539
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1540 at r1540
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1541 at r1541
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 247
    (lowerPeImt rho 5 *
      (1 + 2 * ((leafBitsImt rho)[247]! * (idBitsImt rho)[247]!)
        - (leafBitsImt rho)[247]!
        - (idBitsImt rho)[247]!))
    (lowerIlImt rho 5 + lowerPeImt rho 5 *
      ((1 - (leafBitsImt rho)[247]!) *
        (idBitsImt rho)[247]!))
  rw [show
      lowerPeImt rho 5 *
        (1 + 2 * ((leafBitsImt rho)[247]! * (idBitsImt rho)[247]!)
          - (leafBitsImt rho)[247]!
          - (idBitsImt rho)[247]!) =
        lowerPeImt rho 6 by
    have hPe :
        lowerPe rho 5 *
          (1 + 2 * ((leafBits rho)[247]! * (idBits rho)[247]!)
            - (leafBits rho)[247]!
            - (idBits rho)[247]!) =
          lowerPe rho 6 := by
      rw [leafBits_get rho 247 (by omega),
        idBits_get rho 247 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1541 + 2 * (rho 1040) * r1540
    simpa only [
      lowerPeImt,
      leafBits_get rho 247 (by omega),
      idBits_get rho 247 (by omega),
      leafBitsImt_get rho 247 (by omega),
      idBitsImt_get rho 247 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 5 + lowerPeImt rho 5 *
        ((1 - (leafBitsImt rho)[247]!) *
          (idBitsImt rho)[247]!) =
        lowerIlImt rho 6 by
    have hIl :
        lowerIl rho 5 + lowerPe rho 5 *
          ((1 - (leafBits rho)[247]!) *
            (idBits rho)[247]!) =
          lowerIl rho 6 := by
      rw [leafBits_get rho 247 (by omega),
        idBits_get rho 247 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 5 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 4 + rho 1042 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 4)
      rw [hsum]
      linear_combination (rho 588) * r1538 + r1539
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 247 (by omega),
      idBits_get rho 247 (by omega),
      leafBitsImt_get rho 247 (by omega),
      idBitsImt_get rho 247 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange2 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      247 (lowerPeImt rho 6) (lowerIlImt rho 6)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      249 (lowerPeImt rho 4) (lowerIlImt rho 4) := by
  exact lowerStep4 rho h k (lowerStep5 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
