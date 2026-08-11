import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk12
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep26 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        226 (lowerPeImt rho 27) (lowerIlImt rho 27)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      227 (lowerPeImt rho 26) (lowerIlImt rho 26) := by
  have r1622 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1622 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1623 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1623 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1624 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1624 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1625 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1625 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1622 at r1622
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1623 at r1623
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1624 at r1624
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1625 at r1625
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 226
    (lowerPeImt rho 26 *
      (1 + 2 * ((leafBitsImt rho)[226]! * (idBitsImt rho)[226]!)
        - (leafBitsImt rho)[226]!
        - (idBitsImt rho)[226]!))
    (lowerIlImt rho 26 + lowerPeImt rho 26 *
      ((1 - (leafBitsImt rho)[226]!) *
        (idBitsImt rho)[226]!))
  rw [show
      lowerPeImt rho 26 *
        (1 + 2 * ((leafBitsImt rho)[226]! * (idBitsImt rho)[226]!)
          - (leafBitsImt rho)[226]!
          - (idBitsImt rho)[226]!) =
        lowerPeImt rho 27 by
    have hPe :
        lowerPe rho 26 *
          (1 + 2 * ((leafBits rho)[226]! * (idBits rho)[226]!)
            - (leafBits rho)[226]!
            - (idBits rho)[226]!) =
          lowerPe rho 27 := by
      rw [leafBits_get rho 226 (by omega),
        idBits_get rho 226 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1625 + 2 * (rho 1124) * r1624
    simpa only [
      lowerPeImt,
      leafBits_get rho 226 (by omega),
      idBits_get rho 226 (by omega),
      leafBitsImt_get rho 226 (by omega),
      idBitsImt_get rho 226 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 26 + lowerPeImt rho 26 *
        ((1 - (leafBitsImt rho)[226]!) *
          (idBitsImt rho)[226]!) =
        lowerIlImt rho 27 by
    have hIl :
        lowerIl rho 26 + lowerPe rho 26 *
          ((1 - (leafBits rho)[226]!) *
            (idBits rho)[226]!) =
          lowerIl rho 27 := by
      rw [leafBits_get rho 226 (by omega),
        idBits_get rho 226 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 26 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 25 + rho 1126 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 25)
      rw [hsum]
      linear_combination (rho 567) * r1622 + r1623
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 226 (by omega),
      idBits_get rho 226 (by omega),
      leafBitsImt_get rho 226 (by omega),
      idBitsImt_get rho 226 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep27 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        225 (lowerPeImt rho 28) (lowerIlImt rho 28)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      226 (lowerPeImt rho 27) (lowerIlImt rho 27) := by
  have r1626 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1626 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1627 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1627 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1628 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1628 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1629 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1629 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1626 at r1626
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1627 at r1627
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1628 at r1628
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1629 at r1629
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 225
    (lowerPeImt rho 27 *
      (1 + 2 * ((leafBitsImt rho)[225]! * (idBitsImt rho)[225]!)
        - (leafBitsImt rho)[225]!
        - (idBitsImt rho)[225]!))
    (lowerIlImt rho 27 + lowerPeImt rho 27 *
      ((1 - (leafBitsImt rho)[225]!) *
        (idBitsImt rho)[225]!))
  rw [show
      lowerPeImt rho 27 *
        (1 + 2 * ((leafBitsImt rho)[225]! * (idBitsImt rho)[225]!)
          - (leafBitsImt rho)[225]!
          - (idBitsImt rho)[225]!) =
        lowerPeImt rho 28 by
    have hPe :
        lowerPe rho 27 *
          (1 + 2 * ((leafBits rho)[225]! * (idBits rho)[225]!)
            - (leafBits rho)[225]!
            - (idBits rho)[225]!) =
          lowerPe rho 28 := by
      rw [leafBits_get rho 225 (by omega),
        idBits_get rho 225 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1629 + 2 * (rho 1128) * r1628
    simpa only [
      lowerPeImt,
      leafBits_get rho 225 (by omega),
      idBits_get rho 225 (by omega),
      leafBitsImt_get rho 225 (by omega),
      idBitsImt_get rho 225 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 27 + lowerPeImt rho 27 *
        ((1 - (leafBitsImt rho)[225]!) *
          (idBitsImt rho)[225]!) =
        lowerIlImt rho 28 by
    have hIl :
        lowerIl rho 27 + lowerPe rho 27 *
          ((1 - (leafBits rho)[225]!) *
            (idBits rho)[225]!) =
          lowerIl rho 28 := by
      rw [leafBits_get rho 225 (by omega),
        idBits_get rho 225 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 27 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 26 + rho 1130 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 26)
      rw [hsum]
      linear_combination (rho 566) * r1626 + r1627
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 225 (by omega),
      idBits_get rho 225 (by omega),
      leafBitsImt_get rho 225 (by omega),
      idBitsImt_get rho 225 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange13 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      225 (lowerPeImt rho 28) (lowerIlImt rho 28)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      227 (lowerPeImt rho 26) (lowerIlImt rho 26) := by
  exact lowerStep26 rho h k (lowerStep27 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
