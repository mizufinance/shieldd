import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk9
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep20 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        232 (lowerPeImt rho 21) (lowerIlImt rho 21)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      233 (lowerPeImt rho 20) (lowerIlImt rho 20) := by
  have r1598 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1598 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1599 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1599 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2
  have r1600 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1600 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1
  have r1601 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1601 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1598 at r1598
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1599 at r1599
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1600 at r1600
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1601 at r1601
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 232
    (lowerPeImt rho 20 *
      (1 + 2 * ((leafBitsImt rho)[232]! * (idBitsImt rho)[232]!)
        - (leafBitsImt rho)[232]!
        - (idBitsImt rho)[232]!))
    (lowerIlImt rho 20 + lowerPeImt rho 20 *
      ((1 - (leafBitsImt rho)[232]!) *
        (idBitsImt rho)[232]!))
  rw [show
      lowerPeImt rho 20 *
        (1 + 2 * ((leafBitsImt rho)[232]! * (idBitsImt rho)[232]!)
          - (leafBitsImt rho)[232]!
          - (idBitsImt rho)[232]!) =
        lowerPeImt rho 21 by
    have hPe :
        lowerPe rho 20 *
          (1 + 2 * ((leafBits rho)[232]! * (idBits rho)[232]!)
            - (leafBits rho)[232]!
            - (idBits rho)[232]!) =
          lowerPe rho 21 := by
      rw [leafBits_get rho 232 (by omega),
        idBits_get rho 232 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1601 + 2 * (rho 1100) * r1600
    simpa only [
      lowerPeImt,
      leafBits_get rho 232 (by omega),
      idBits_get rho 232 (by omega),
      leafBitsImt_get rho 232 (by omega),
      idBitsImt_get rho 232 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 20 + lowerPeImt rho 20 *
        ((1 - (leafBitsImt rho)[232]!) *
          (idBitsImt rho)[232]!) =
        lowerIlImt rho 21 by
    have hIl :
        lowerIl rho 20 + lowerPe rho 20 *
          ((1 - (leafBits rho)[232]!) *
            (idBits rho)[232]!) =
          lowerIl rho 21 := by
      rw [leafBits_get rho 232 (by omega),
        idBits_get rho 232 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 20 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 19 + rho 1102 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 19)
      rw [hsum]
      linear_combination (rho 573) * r1598 + r1599
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 232 (by omega),
      idBits_get rho 232 (by omega),
      leafBitsImt_get rho 232 (by omega),
      idBitsImt_get rho 232 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep21 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        231 (lowerPeImt rho 22) (lowerIlImt rho 22)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      232 (lowerPeImt rho 21) (lowerIlImt rho 21) := by
  have r1602 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1602 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.1
  have r1603 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1603 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.1
  have r1604 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1604 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.1
  have r1605 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1605 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1602 at r1602
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1603 at r1603
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1604 at r1604
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1605 at r1605
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 231
    (lowerPeImt rho 21 *
      (1 + 2 * ((leafBitsImt rho)[231]! * (idBitsImt rho)[231]!)
        - (leafBitsImt rho)[231]!
        - (idBitsImt rho)[231]!))
    (lowerIlImt rho 21 + lowerPeImt rho 21 *
      ((1 - (leafBitsImt rho)[231]!) *
        (idBitsImt rho)[231]!))
  rw [show
      lowerPeImt rho 21 *
        (1 + 2 * ((leafBitsImt rho)[231]! * (idBitsImt rho)[231]!)
          - (leafBitsImt rho)[231]!
          - (idBitsImt rho)[231]!) =
        lowerPeImt rho 22 by
    have hPe :
        lowerPe rho 21 *
          (1 + 2 * ((leafBits rho)[231]! * (idBits rho)[231]!)
            - (leafBits rho)[231]!
            - (idBits rho)[231]!) =
          lowerPe rho 22 := by
      rw [leafBits_get rho 231 (by omega),
        idBits_get rho 231 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1605 + 2 * (rho 1104) * r1604
    simpa only [
      lowerPeImt,
      leafBits_get rho 231 (by omega),
      idBits_get rho 231 (by omega),
      leafBitsImt_get rho 231 (by omega),
      idBitsImt_get rho 231 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 21 + lowerPeImt rho 21 *
        ((1 - (leafBitsImt rho)[231]!) *
          (idBitsImt rho)[231]!) =
        lowerIlImt rho 22 by
    have hIl :
        lowerIl rho 21 + lowerPe rho 21 *
          ((1 - (leafBits rho)[231]!) *
            (idBits rho)[231]!) =
          lowerIl rho 22 := by
      rw [leafBits_get rho 231 (by omega),
        idBits_get rho 231 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 21 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 20 + rho 1106 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 20)
      rw [hsum]
      linear_combination (rho 572) * r1602 + r1603
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 231 (by omega),
      idBits_get rho 231 (by omega),
      leafBitsImt_get rho 231 (by omega),
      idBitsImt_get rho 231 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange10 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      231 (lowerPeImt rho 22) (lowerIlImt rho 22)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      233 (lowerPeImt rho 20) (lowerIlImt rho 20) := by
  exact lowerStep20 rho h k (lowerStep21 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
