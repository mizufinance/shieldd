import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk2
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep6 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        246 (lowerPeImt rho 7) (lowerIlImt rho 7)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      247 (lowerPeImt rho 6) (lowerIlImt rho 6) := by
  have r1542 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1542 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1543 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1543 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1544 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1544 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1545 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1545 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1542 at r1542
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1543 at r1543
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1544 at r1544
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1545 at r1545
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 246
    (lowerPeImt rho 6 *
      (1 + 2 * ((leafBitsImt rho)[246]! * (idBitsImt rho)[246]!)
        - (leafBitsImt rho)[246]!
        - (idBitsImt rho)[246]!))
    (lowerIlImt rho 6 + lowerPeImt rho 6 *
      ((1 - (leafBitsImt rho)[246]!) *
        (idBitsImt rho)[246]!))
  rw [show
      lowerPeImt rho 6 *
        (1 + 2 * ((leafBitsImt rho)[246]! * (idBitsImt rho)[246]!)
          - (leafBitsImt rho)[246]!
          - (idBitsImt rho)[246]!) =
        lowerPeImt rho 7 by
    have hPe :
        lowerPe rho 6 *
          (1 + 2 * ((leafBits rho)[246]! * (idBits rho)[246]!)
            - (leafBits rho)[246]!
            - (idBits rho)[246]!) =
          lowerPe rho 7 := by
      rw [leafBits_get rho 246 (by omega),
        idBits_get rho 246 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1545 + 2 * (rho 1044) * r1544
    simpa only [
      lowerPeImt,
      leafBits_get rho 246 (by omega),
      idBits_get rho 246 (by omega),
      leafBitsImt_get rho 246 (by omega),
      idBitsImt_get rho 246 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 6 + lowerPeImt rho 6 *
        ((1 - (leafBitsImt rho)[246]!) *
          (idBitsImt rho)[246]!) =
        lowerIlImt rho 7 by
    have hIl :
        lowerIl rho 6 + lowerPe rho 6 *
          ((1 - (leafBits rho)[246]!) *
            (idBits rho)[246]!) =
          lowerIl rho 7 := by
      rw [leafBits_get rho 246 (by omega),
        idBits_get rho 246 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 6 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 5 + rho 1046 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 5)
      rw [hsum]
      linear_combination (rho 587) * r1542 + r1543
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 246 (by omega),
      idBits_get rho 246 (by omega),
      leafBitsImt_get rho 246 (by omega),
      idBitsImt_get rho 246 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep7 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        245 (lowerPeImt rho 8) (lowerIlImt rho 8)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      246 (lowerPeImt rho 7) (lowerIlImt rho 7) := by
  have r1546 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1546 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1547 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1547 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1548 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1548 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1549 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1549 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1546 at r1546
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1547 at r1547
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1548 at r1548
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1549 at r1549
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 245
    (lowerPeImt rho 7 *
      (1 + 2 * ((leafBitsImt rho)[245]! * (idBitsImt rho)[245]!)
        - (leafBitsImt rho)[245]!
        - (idBitsImt rho)[245]!))
    (lowerIlImt rho 7 + lowerPeImt rho 7 *
      ((1 - (leafBitsImt rho)[245]!) *
        (idBitsImt rho)[245]!))
  rw [show
      lowerPeImt rho 7 *
        (1 + 2 * ((leafBitsImt rho)[245]! * (idBitsImt rho)[245]!)
          - (leafBitsImt rho)[245]!
          - (idBitsImt rho)[245]!) =
        lowerPeImt rho 8 by
    have hPe :
        lowerPe rho 7 *
          (1 + 2 * ((leafBits rho)[245]! * (idBits rho)[245]!)
            - (leafBits rho)[245]!
            - (idBits rho)[245]!) =
          lowerPe rho 8 := by
      rw [leafBits_get rho 245 (by omega),
        idBits_get rho 245 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1549 + 2 * (rho 1048) * r1548
    simpa only [
      lowerPeImt,
      leafBits_get rho 245 (by omega),
      idBits_get rho 245 (by omega),
      leafBitsImt_get rho 245 (by omega),
      idBitsImt_get rho 245 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 7 + lowerPeImt rho 7 *
        ((1 - (leafBitsImt rho)[245]!) *
          (idBitsImt rho)[245]!) =
        lowerIlImt rho 8 by
    have hIl :
        lowerIl rho 7 + lowerPe rho 7 *
          ((1 - (leafBits rho)[245]!) *
            (idBits rho)[245]!) =
          lowerIl rho 8 := by
      rw [leafBits_get rho 245 (by omega),
        idBits_get rho 245 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 7 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 6 + rho 1050 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 6)
      rw [hsum]
      linear_combination (rho 586) * r1546 + r1547
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 245 (by omega),
      idBits_get rho 245 (by omega),
      leafBitsImt_get rho 245 (by omega),
      idBitsImt_get rho 245 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange3 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      245 (lowerPeImt rho 8) (lowerIlImt rho 8)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      247 (lowerPeImt rho 6) (lowerIlImt rho 6) := by
  exact lowerStep6 rho h k (lowerStep7 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
