import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk19
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep40 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        212 (lowerPeImt rho 41) (lowerIlImt rho 41)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      213 (lowerPeImt rho 40) (lowerIlImt rho 40) := by
  have r1678 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1678 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1679 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1679 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2
  have r1680 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1680 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1
  have r1681 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1681 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1678 at r1678
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1679 at r1679
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1680 at r1680
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1681 at r1681
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 212
    (lowerPeImt rho 40 *
      (1 + 2 * ((leafBitsImt rho)[212]! * (idBitsImt rho)[212]!)
        - (leafBitsImt rho)[212]!
        - (idBitsImt rho)[212]!))
    (lowerIlImt rho 40 + lowerPeImt rho 40 *
      ((1 - (leafBitsImt rho)[212]!) *
        (idBitsImt rho)[212]!))
  rw [show
      lowerPeImt rho 40 *
        (1 + 2 * ((leafBitsImt rho)[212]! * (idBitsImt rho)[212]!)
          - (leafBitsImt rho)[212]!
          - (idBitsImt rho)[212]!) =
        lowerPeImt rho 41 by
    have hPe :
        lowerPe rho 40 *
          (1 + 2 * ((leafBits rho)[212]! * (idBits rho)[212]!)
            - (leafBits rho)[212]!
            - (idBits rho)[212]!) =
          lowerPe rho 41 := by
      rw [leafBits_get rho 212 (by omega),
        idBits_get rho 212 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1681 + 2 * (rho 1180) * r1680
    simpa only [
      lowerPeImt,
      leafBits_get rho 212 (by omega),
      idBits_get rho 212 (by omega),
      leafBitsImt_get rho 212 (by omega),
      idBitsImt_get rho 212 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 40 + lowerPeImt rho 40 *
        ((1 - (leafBitsImt rho)[212]!) *
          (idBitsImt rho)[212]!) =
        lowerIlImt rho 41 by
    have hIl :
        lowerIl rho 40 + lowerPe rho 40 *
          ((1 - (leafBits rho)[212]!) *
            (idBits rho)[212]!) =
          lowerIl rho 41 := by
      rw [leafBits_get rho 212 (by omega),
        idBits_get rho 212 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 40 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 39 + rho 1182 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 39)
      rw [hsum]
      linear_combination (rho 553) * r1678 + r1679
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 212 (by omega),
      idBits_get rho 212 (by omega),
      leafBitsImt_get rho 212 (by omega),
      idBitsImt_get rho 212 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep41 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        211 (lowerPeImt rho 42) (lowerIlImt rho 42)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      212 (lowerPeImt rho 41) (lowerIlImt rho 41) := by
  have r1682 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1682 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.1
  have r1683 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1683 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.1
  have r1684 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1684 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.1
  have r1685 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1685 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1682 at r1682
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1683 at r1683
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1684 at r1684
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1685 at r1685
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 211
    (lowerPeImt rho 41 *
      (1 + 2 * ((leafBitsImt rho)[211]! * (idBitsImt rho)[211]!)
        - (leafBitsImt rho)[211]!
        - (idBitsImt rho)[211]!))
    (lowerIlImt rho 41 + lowerPeImt rho 41 *
      ((1 - (leafBitsImt rho)[211]!) *
        (idBitsImt rho)[211]!))
  rw [show
      lowerPeImt rho 41 *
        (1 + 2 * ((leafBitsImt rho)[211]! * (idBitsImt rho)[211]!)
          - (leafBitsImt rho)[211]!
          - (idBitsImt rho)[211]!) =
        lowerPeImt rho 42 by
    have hPe :
        lowerPe rho 41 *
          (1 + 2 * ((leafBits rho)[211]! * (idBits rho)[211]!)
            - (leafBits rho)[211]!
            - (idBits rho)[211]!) =
          lowerPe rho 42 := by
      rw [leafBits_get rho 211 (by omega),
        idBits_get rho 211 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1685 + 2 * (rho 1184) * r1684
    simpa only [
      lowerPeImt,
      leafBits_get rho 211 (by omega),
      idBits_get rho 211 (by omega),
      leafBitsImt_get rho 211 (by omega),
      idBitsImt_get rho 211 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 41 + lowerPeImt rho 41 *
        ((1 - (leafBitsImt rho)[211]!) *
          (idBitsImt rho)[211]!) =
        lowerIlImt rho 42 by
    have hIl :
        lowerIl rho 41 + lowerPe rho 41 *
          ((1 - (leafBits rho)[211]!) *
            (idBits rho)[211]!) =
          lowerIl rho 42 := by
      rw [leafBits_get rho 211 (by omega),
        idBits_get rho 211 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 41 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 40 + rho 1186 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 40)
      rw [hsum]
      linear_combination (rho 552) * r1682 + r1683
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 211 (by omega),
      idBits_get rho 211 (by omega),
      leafBitsImt_get rho 211 (by omega),
      idBitsImt_get rho 211 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange20 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      211 (lowerPeImt rho 42) (lowerIlImt rho 42)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      213 (lowerPeImt rho 40) (lowerIlImt rho 40) := by
  exact lowerStep40 rho h k (lowerStep41 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
