import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk31
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep64 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        188 (lowerPeImt rho 65) (lowerIlImt rho 65)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      189 (lowerPeImt rho 64) (lowerIlImt rho 64) := by
  have r1774 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1774 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1775 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1775 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1776 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1776 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1777 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1777 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1774 at r1774
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1775 at r1775
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1776 at r1776
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1777 at r1777
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 188
    (lowerPeImt rho 64 *
      (1 + 2 * ((leafBitsImt rho)[188]! * (idBitsImt rho)[188]!)
        - (leafBitsImt rho)[188]!
        - (idBitsImt rho)[188]!))
    (lowerIlImt rho 64 + lowerPeImt rho 64 *
      ((1 - (leafBitsImt rho)[188]!) *
        (idBitsImt rho)[188]!))
  rw [show
      lowerPeImt rho 64 *
        (1 + 2 * ((leafBitsImt rho)[188]! * (idBitsImt rho)[188]!)
          - (leafBitsImt rho)[188]!
          - (idBitsImt rho)[188]!) =
        lowerPeImt rho 65 by
    have hPe :
        lowerPe rho 64 *
          (1 + 2 * ((leafBits rho)[188]! * (idBits rho)[188]!)
            - (leafBits rho)[188]!
            - (idBits rho)[188]!) =
          lowerPe rho 65 := by
      rw [leafBits_get rho 188 (by omega),
        idBits_get rho 188 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1777 + 2 * (rho 1276) * r1776
    simpa only [
      lowerPeImt,
      leafBits_get rho 188 (by omega),
      idBits_get rho 188 (by omega),
      leafBitsImt_get rho 188 (by omega),
      idBitsImt_get rho 188 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 64 + lowerPeImt rho 64 *
        ((1 - (leafBitsImt rho)[188]!) *
          (idBitsImt rho)[188]!) =
        lowerIlImt rho 65 by
    have hIl :
        lowerIl rho 64 + lowerPe rho 64 *
          ((1 - (leafBits rho)[188]!) *
            (idBits rho)[188]!) =
          lowerIl rho 65 := by
      rw [leafBits_get rho 188 (by omega),
        idBits_get rho 188 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 64 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 63 + rho 1278 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 63)
      rw [hsum]
      linear_combination (rho 529) * r1774 + r1775
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 188 (by omega),
      idBits_get rho 188 (by omega),
      leafBitsImt_get rho 188 (by omega),
      idBitsImt_get rho 188 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep65 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        187 (lowerPeImt rho 66) (lowerIlImt rho 66)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      188 (lowerPeImt rho 65) (lowerIlImt rho 65) := by
  have r1778 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1778 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1779 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1779 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1780 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1780 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1781 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1781 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1778 at r1778
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1779 at r1779
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1780 at r1780
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1781 at r1781
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 187
    (lowerPeImt rho 65 *
      (1 + 2 * ((leafBitsImt rho)[187]! * (idBitsImt rho)[187]!)
        - (leafBitsImt rho)[187]!
        - (idBitsImt rho)[187]!))
    (lowerIlImt rho 65 + lowerPeImt rho 65 *
      ((1 - (leafBitsImt rho)[187]!) *
        (idBitsImt rho)[187]!))
  rw [show
      lowerPeImt rho 65 *
        (1 + 2 * ((leafBitsImt rho)[187]! * (idBitsImt rho)[187]!)
          - (leafBitsImt rho)[187]!
          - (idBitsImt rho)[187]!) =
        lowerPeImt rho 66 by
    have hPe :
        lowerPe rho 65 *
          (1 + 2 * ((leafBits rho)[187]! * (idBits rho)[187]!)
            - (leafBits rho)[187]!
            - (idBits rho)[187]!) =
          lowerPe rho 66 := by
      rw [leafBits_get rho 187 (by omega),
        idBits_get rho 187 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1781 + 2 * (rho 1280) * r1780
    simpa only [
      lowerPeImt,
      leafBits_get rho 187 (by omega),
      idBits_get rho 187 (by omega),
      leafBitsImt_get rho 187 (by omega),
      idBitsImt_get rho 187 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 65 + lowerPeImt rho 65 *
        ((1 - (leafBitsImt rho)[187]!) *
          (idBitsImt rho)[187]!) =
        lowerIlImt rho 66 by
    have hIl :
        lowerIl rho 65 + lowerPe rho 65 *
          ((1 - (leafBits rho)[187]!) *
            (idBits rho)[187]!) =
          lowerIl rho 66 := by
      rw [leafBits_get rho 187 (by omega),
        idBits_get rho 187 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 65 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 64 + rho 1282 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 64)
      rw [hsum]
      linear_combination (rho 528) * r1778 + r1779
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 187 (by omega),
      idBits_get rho 187 (by omega),
      leafBitsImt_get rho 187 (by omega),
      idBitsImt_get rho 187 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange32 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      187 (lowerPeImt rho 66) (lowerIlImt rho 66)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      189 (lowerPeImt rho 64) (lowerIlImt rho 64) := by
  exact lowerStep64 rho h k (lowerStep65 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
