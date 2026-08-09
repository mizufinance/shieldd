import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk23
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep48 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        204 (lowerPeImt rho 49) (lowerIlImt rho 49)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      205 (lowerPeImt rho 48) (lowerIlImt rho 48) := by
  have r1710 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1710 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1711 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1711 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1712 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1712 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1713 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1713 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1710 at r1710
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1711 at r1711
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1712 at r1712
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1713 at r1713
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 204
    (lowerPeImt rho 48 *
      (1 + 2 * ((leafBitsImt rho)[204]! * (idBitsImt rho)[204]!)
        - (leafBitsImt rho)[204]!
        - (idBitsImt rho)[204]!))
    (lowerIlImt rho 48 + lowerPeImt rho 48 *
      ((1 - (leafBitsImt rho)[204]!) *
        (idBitsImt rho)[204]!))
  rw [show
      lowerPeImt rho 48 *
        (1 + 2 * ((leafBitsImt rho)[204]! * (idBitsImt rho)[204]!)
          - (leafBitsImt rho)[204]!
          - (idBitsImt rho)[204]!) =
        lowerPeImt rho 49 by
    have hPe :
        lowerPe rho 48 *
          (1 + 2 * ((leafBits rho)[204]! * (idBits rho)[204]!)
            - (leafBits rho)[204]!
            - (idBits rho)[204]!) =
          lowerPe rho 49 := by
      rw [leafBits_get rho 204 (by omega),
        idBits_get rho 204 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1713 + 2 * (rho 1212) * r1712
    simpa only [
      lowerPeImt,
      leafBits_get rho 204 (by omega),
      idBits_get rho 204 (by omega),
      leafBitsImt_get rho 204 (by omega),
      idBitsImt_get rho 204 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 48 + lowerPeImt rho 48 *
        ((1 - (leafBitsImt rho)[204]!) *
          (idBitsImt rho)[204]!) =
        lowerIlImt rho 49 by
    have hIl :
        lowerIl rho 48 + lowerPe rho 48 *
          ((1 - (leafBits rho)[204]!) *
            (idBits rho)[204]!) =
          lowerIl rho 49 := by
      rw [leafBits_get rho 204 (by omega),
        idBits_get rho 204 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 48 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 47 + rho 1214 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 47)
      rw [hsum]
      linear_combination (rho 545) * r1710 + r1711
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 204 (by omega),
      idBits_get rho 204 (by omega),
      leafBitsImt_get rho 204 (by omega),
      idBitsImt_get rho 204 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep49 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        203 (lowerPeImt rho 50) (lowerIlImt rho 50)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      204 (lowerPeImt rho 49) (lowerIlImt rho 49) := by
  have r1714 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1714 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1715 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1715 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1716 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1716 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1717 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1717 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1714 at r1714
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1715 at r1715
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1716 at r1716
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1717 at r1717
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 203
    (lowerPeImt rho 49 *
      (1 + 2 * ((leafBitsImt rho)[203]! * (idBitsImt rho)[203]!)
        - (leafBitsImt rho)[203]!
        - (idBitsImt rho)[203]!))
    (lowerIlImt rho 49 + lowerPeImt rho 49 *
      ((1 - (leafBitsImt rho)[203]!) *
        (idBitsImt rho)[203]!))
  rw [show
      lowerPeImt rho 49 *
        (1 + 2 * ((leafBitsImt rho)[203]! * (idBitsImt rho)[203]!)
          - (leafBitsImt rho)[203]!
          - (idBitsImt rho)[203]!) =
        lowerPeImt rho 50 by
    have hPe :
        lowerPe rho 49 *
          (1 + 2 * ((leafBits rho)[203]! * (idBits rho)[203]!)
            - (leafBits rho)[203]!
            - (idBits rho)[203]!) =
          lowerPe rho 50 := by
      rw [leafBits_get rho 203 (by omega),
        idBits_get rho 203 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1717 + 2 * (rho 1216) * r1716
    simpa only [
      lowerPeImt,
      leafBits_get rho 203 (by omega),
      idBits_get rho 203 (by omega),
      leafBitsImt_get rho 203 (by omega),
      idBitsImt_get rho 203 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 49 + lowerPeImt rho 49 *
        ((1 - (leafBitsImt rho)[203]!) *
          (idBitsImt rho)[203]!) =
        lowerIlImt rho 50 by
    have hIl :
        lowerIl rho 49 + lowerPe rho 49 *
          ((1 - (leafBits rho)[203]!) *
            (idBits rho)[203]!) =
          lowerIl rho 50 := by
      rw [leafBits_get rho 203 (by omega),
        idBits_get rho 203 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 49 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 48 + rho 1218 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 48)
      rw [hsum]
      linear_combination (rho 544) * r1714 + r1715
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 203 (by omega),
      idBits_get rho 203 (by omega),
      leafBitsImt_get rho 203 (by omega),
      idBitsImt_get rho 203 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange24 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      203 (lowerPeImt rho 50) (lowerIlImt rho 50)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      205 (lowerPeImt rho 48) (lowerIlImt rho 48) := by
  exact lowerStep48 rho h k (lowerStep49 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
