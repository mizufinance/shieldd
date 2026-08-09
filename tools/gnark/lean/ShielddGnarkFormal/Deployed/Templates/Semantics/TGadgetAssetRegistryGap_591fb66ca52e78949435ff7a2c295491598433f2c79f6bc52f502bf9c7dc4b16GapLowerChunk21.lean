import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk20
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep42 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        210 (lowerPeImt rho 43) (lowerIlImt rho 43)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      211 (lowerPeImt rho 42) (lowerIlImt rho 42) := by
  have r1686 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1686 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.1
  have r1687 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1687 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.1
  have r1688 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1688 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.1
  have r1689 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1689 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1686 at r1686
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1687 at r1687
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1688 at r1688
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1689 at r1689
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 210
    (lowerPeImt rho 42 *
      (1 + 2 * ((leafBitsImt rho)[210]! * (idBitsImt rho)[210]!)
        - (leafBitsImt rho)[210]!
        - (idBitsImt rho)[210]!))
    (lowerIlImt rho 42 + lowerPeImt rho 42 *
      ((1 - (leafBitsImt rho)[210]!) *
        (idBitsImt rho)[210]!))
  rw [show
      lowerPeImt rho 42 *
        (1 + 2 * ((leafBitsImt rho)[210]! * (idBitsImt rho)[210]!)
          - (leafBitsImt rho)[210]!
          - (idBitsImt rho)[210]!) =
        lowerPeImt rho 43 by
    have hPe :
        lowerPe rho 42 *
          (1 + 2 * ((leafBits rho)[210]! * (idBits rho)[210]!)
            - (leafBits rho)[210]!
            - (idBits rho)[210]!) =
          lowerPe rho 43 := by
      rw [leafBits_get rho 210 (by omega),
        idBits_get rho 210 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1689 + 2 * (rho 1188) * r1688
    simpa only [
      lowerPeImt,
      leafBits_get rho 210 (by omega),
      idBits_get rho 210 (by omega),
      leafBitsImt_get rho 210 (by omega),
      idBitsImt_get rho 210 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 42 + lowerPeImt rho 42 *
        ((1 - (leafBitsImt rho)[210]!) *
          (idBitsImt rho)[210]!) =
        lowerIlImt rho 43 by
    have hIl :
        lowerIl rho 42 + lowerPe rho 42 *
          ((1 - (leafBits rho)[210]!) *
            (idBits rho)[210]!) =
          lowerIl rho 43 := by
      rw [leafBits_get rho 210 (by omega),
        idBits_get rho 210 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 42 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 41 + rho 1190 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 41)
      rw [hsum]
      linear_combination (rho 551) * r1686 + r1687
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 210 (by omega),
      idBits_get rho 210 (by omega),
      leafBitsImt_get rho 210 (by omega),
      idBitsImt_get rho 210 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep43 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        209 (lowerPeImt rho 44) (lowerIlImt rho 44)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      210 (lowerPeImt rho 43) (lowerIlImt rho 43) := by
  have r1690 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1690 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.1
  have r1691 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1691 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.1
  have r1692 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1692 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1693 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1693 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1690 at r1690
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1691 at r1691
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1692 at r1692
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1693 at r1693
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 209
    (lowerPeImt rho 43 *
      (1 + 2 * ((leafBitsImt rho)[209]! * (idBitsImt rho)[209]!)
        - (leafBitsImt rho)[209]!
        - (idBitsImt rho)[209]!))
    (lowerIlImt rho 43 + lowerPeImt rho 43 *
      ((1 - (leafBitsImt rho)[209]!) *
        (idBitsImt rho)[209]!))
  rw [show
      lowerPeImt rho 43 *
        (1 + 2 * ((leafBitsImt rho)[209]! * (idBitsImt rho)[209]!)
          - (leafBitsImt rho)[209]!
          - (idBitsImt rho)[209]!) =
        lowerPeImt rho 44 by
    have hPe :
        lowerPe rho 43 *
          (1 + 2 * ((leafBits rho)[209]! * (idBits rho)[209]!)
            - (leafBits rho)[209]!
            - (idBits rho)[209]!) =
          lowerPe rho 44 := by
      rw [leafBits_get rho 209 (by omega),
        idBits_get rho 209 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1693 + 2 * (rho 1192) * r1692
    simpa only [
      lowerPeImt,
      leafBits_get rho 209 (by omega),
      idBits_get rho 209 (by omega),
      leafBitsImt_get rho 209 (by omega),
      idBitsImt_get rho 209 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 43 + lowerPeImt rho 43 *
        ((1 - (leafBitsImt rho)[209]!) *
          (idBitsImt rho)[209]!) =
        lowerIlImt rho 44 by
    have hIl :
        lowerIl rho 43 + lowerPe rho 43 *
          ((1 - (leafBits rho)[209]!) *
            (idBits rho)[209]!) =
          lowerIl rho 44 := by
      rw [leafBits_get rho 209 (by omega),
        idBits_get rho 209 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 43 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 42 + rho 1194 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 42)
      rw [hsum]
      linear_combination (rho 550) * r1690 + r1691
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 209 (by omega),
      idBits_get rho 209 (by omega),
      leafBitsImt_get rho 209 (by omega),
      idBitsImt_get rho 209 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange21 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      209 (lowerPeImt rho 44) (lowerIlImt rho 44)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      211 (lowerPeImt rho 42) (lowerIlImt rho 42) := by
  exact lowerStep42 rho h k (lowerStep43 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
