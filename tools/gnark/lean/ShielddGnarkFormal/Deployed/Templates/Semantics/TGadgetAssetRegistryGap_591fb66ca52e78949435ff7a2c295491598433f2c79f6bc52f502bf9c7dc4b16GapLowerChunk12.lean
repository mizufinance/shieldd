import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk11
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep24 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        228 (lowerPeImt rho 25) (lowerIlImt rho 25)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      229 (lowerPeImt rho 24) (lowerIlImt rho 24) := by
  have r1614 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1614 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1615 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1615 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1616 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1616 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1617 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1617 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1614 at r1614
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1615 at r1615
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1616 at r1616
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1617 at r1617
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 228
    (lowerPeImt rho 24 *
      (1 + 2 * ((leafBitsImt rho)[228]! * (idBitsImt rho)[228]!)
        - (leafBitsImt rho)[228]!
        - (idBitsImt rho)[228]!))
    (lowerIlImt rho 24 + lowerPeImt rho 24 *
      ((1 - (leafBitsImt rho)[228]!) *
        (idBitsImt rho)[228]!))
  rw [show
      lowerPeImt rho 24 *
        (1 + 2 * ((leafBitsImt rho)[228]! * (idBitsImt rho)[228]!)
          - (leafBitsImt rho)[228]!
          - (idBitsImt rho)[228]!) =
        lowerPeImt rho 25 by
    have hPe :
        lowerPe rho 24 *
          (1 + 2 * ((leafBits rho)[228]! * (idBits rho)[228]!)
            - (leafBits rho)[228]!
            - (idBits rho)[228]!) =
          lowerPe rho 25 := by
      rw [leafBits_get rho 228 (by omega),
        idBits_get rho 228 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1617 + 2 * (rho 1116) * r1616
    simpa only [
      lowerPeImt,
      leafBits_get rho 228 (by omega),
      idBits_get rho 228 (by omega),
      leafBitsImt_get rho 228 (by omega),
      idBitsImt_get rho 228 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 24 + lowerPeImt rho 24 *
        ((1 - (leafBitsImt rho)[228]!) *
          (idBitsImt rho)[228]!) =
        lowerIlImt rho 25 by
    have hIl :
        lowerIl rho 24 + lowerPe rho 24 *
          ((1 - (leafBits rho)[228]!) *
            (idBits rho)[228]!) =
          lowerIl rho 25 := by
      rw [leafBits_get rho 228 (by omega),
        idBits_get rho 228 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 24 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 23 + rho 1118 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 23)
      rw [hsum]
      linear_combination (rho 569) * r1614 + r1615
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 228 (by omega),
      idBits_get rho 228 (by omega),
      leafBitsImt_get rho 228 (by omega),
      idBitsImt_get rho 228 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep25 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        227 (lowerPeImt rho 26) (lowerIlImt rho 26)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      228 (lowerPeImt rho 25) (lowerIlImt rho 25) := by
  have r1618 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1618 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1619 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1619 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1620 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1620 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1621 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1621 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1618 at r1618
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1619 at r1619
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1620 at r1620
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1621 at r1621
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 227
    (lowerPeImt rho 25 *
      (1 + 2 * ((leafBitsImt rho)[227]! * (idBitsImt rho)[227]!)
        - (leafBitsImt rho)[227]!
        - (idBitsImt rho)[227]!))
    (lowerIlImt rho 25 + lowerPeImt rho 25 *
      ((1 - (leafBitsImt rho)[227]!) *
        (idBitsImt rho)[227]!))
  rw [show
      lowerPeImt rho 25 *
        (1 + 2 * ((leafBitsImt rho)[227]! * (idBitsImt rho)[227]!)
          - (leafBitsImt rho)[227]!
          - (idBitsImt rho)[227]!) =
        lowerPeImt rho 26 by
    have hPe :
        lowerPe rho 25 *
          (1 + 2 * ((leafBits rho)[227]! * (idBits rho)[227]!)
            - (leafBits rho)[227]!
            - (idBits rho)[227]!) =
          lowerPe rho 26 := by
      rw [leafBits_get rho 227 (by omega),
        idBits_get rho 227 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1621 + 2 * (rho 1120) * r1620
    simpa only [
      lowerPeImt,
      leafBits_get rho 227 (by omega),
      idBits_get rho 227 (by omega),
      leafBitsImt_get rho 227 (by omega),
      idBitsImt_get rho 227 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 25 + lowerPeImt rho 25 *
        ((1 - (leafBitsImt rho)[227]!) *
          (idBitsImt rho)[227]!) =
        lowerIlImt rho 26 by
    have hIl :
        lowerIl rho 25 + lowerPe rho 25 *
          ((1 - (leafBits rho)[227]!) *
            (idBits rho)[227]!) =
          lowerIl rho 26 := by
      rw [leafBits_get rho 227 (by omega),
        idBits_get rho 227 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 25 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 24 + rho 1122 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 24)
      rw [hsum]
      linear_combination (rho 568) * r1618 + r1619
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 227 (by omega),
      idBits_get rho 227 (by omega),
      leafBitsImt_get rho 227 (by omega),
      idBitsImt_get rho 227 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange12 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      227 (lowerPeImt rho 26) (lowerIlImt rho 26)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      229 (lowerPeImt rho 24) (lowerIlImt rho 24) := by
  exact lowerStep24 rho h k (lowerStep25 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
