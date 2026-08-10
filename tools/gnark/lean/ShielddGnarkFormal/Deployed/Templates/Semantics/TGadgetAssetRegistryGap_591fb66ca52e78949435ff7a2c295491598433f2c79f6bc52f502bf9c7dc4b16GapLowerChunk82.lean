import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk81
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep164 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        88 (lowerPeImt rho 165) (lowerIlImt rho 165)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      89 (lowerPeImt rho 164) (lowerIlImt rho 164) := by
  have r2174 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2174 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2175 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2175 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2176 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2176 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2177 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2177 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2174 at r2174
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2175 at r2175
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2176 at r2176
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2177 at r2177
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 88
    (lowerPeImt rho 164 *
      (1 + 2 * ((leafBitsImt rho)[88]! * (idBitsImt rho)[88]!)
        - (leafBitsImt rho)[88]!
        - (idBitsImt rho)[88]!))
    (lowerIlImt rho 164 + lowerPeImt rho 164 *
      ((1 - (leafBitsImt rho)[88]!) *
        (idBitsImt rho)[88]!))
  rw [show
      lowerPeImt rho 164 *
        (1 + 2 * ((leafBitsImt rho)[88]! * (idBitsImt rho)[88]!)
          - (leafBitsImt rho)[88]!
          - (idBitsImt rho)[88]!) =
        lowerPeImt rho 165 by
    have hPe :
        lowerPe rho 164 *
          (1 + 2 * ((leafBits rho)[88]! * (idBits rho)[88]!)
            - (leafBits rho)[88]!
            - (idBits rho)[88]!) =
          lowerPe rho 165 := by
      rw [leafBits_get rho 88 (by omega),
        idBits_get rho 88 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2177 + 2 * (rho 1676) * r2176
    simpa only [
      lowerPeImt,
      leafBits_get rho 88 (by omega),
      idBits_get rho 88 (by omega),
      leafBitsImt_get rho 88 (by omega),
      idBitsImt_get rho 88 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 164 + lowerPeImt rho 164 *
        ((1 - (leafBitsImt rho)[88]!) *
          (idBitsImt rho)[88]!) =
        lowerIlImt rho 165 by
    have hIl :
        lowerIl rho 164 + lowerPe rho 164 *
          ((1 - (leafBits rho)[88]!) *
            (idBits rho)[88]!) =
          lowerIl rho 165 := by
      rw [leafBits_get rho 88 (by omega),
        idBits_get rho 88 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 164 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 163 + rho 1678 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 163)
      rw [hsum]
      linear_combination (rho 429) * r2174 + r2175
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 88 (by omega),
      idBits_get rho 88 (by omega),
      leafBitsImt_get rho 88 (by omega),
      idBitsImt_get rho 88 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep165 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        87 (lowerPeImt rho 166) (lowerIlImt rho 166)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      88 (lowerPeImt rho 165) (lowerIlImt rho 165) := by
  have r2178 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2178 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2179 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2179 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2180 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2180 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2181 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2181 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2178 at r2178
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2179 at r2179
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2180 at r2180
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2181 at r2181
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 87
    (lowerPeImt rho 165 *
      (1 + 2 * ((leafBitsImt rho)[87]! * (idBitsImt rho)[87]!)
        - (leafBitsImt rho)[87]!
        - (idBitsImt rho)[87]!))
    (lowerIlImt rho 165 + lowerPeImt rho 165 *
      ((1 - (leafBitsImt rho)[87]!) *
        (idBitsImt rho)[87]!))
  rw [show
      lowerPeImt rho 165 *
        (1 + 2 * ((leafBitsImt rho)[87]! * (idBitsImt rho)[87]!)
          - (leafBitsImt rho)[87]!
          - (idBitsImt rho)[87]!) =
        lowerPeImt rho 166 by
    have hPe :
        lowerPe rho 165 *
          (1 + 2 * ((leafBits rho)[87]! * (idBits rho)[87]!)
            - (leafBits rho)[87]!
            - (idBits rho)[87]!) =
          lowerPe rho 166 := by
      rw [leafBits_get rho 87 (by omega),
        idBits_get rho 87 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2181 + 2 * (rho 1680) * r2180
    simpa only [
      lowerPeImt,
      leafBits_get rho 87 (by omega),
      idBits_get rho 87 (by omega),
      leafBitsImt_get rho 87 (by omega),
      idBitsImt_get rho 87 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 165 + lowerPeImt rho 165 *
        ((1 - (leafBitsImt rho)[87]!) *
          (idBitsImt rho)[87]!) =
        lowerIlImt rho 166 by
    have hIl :
        lowerIl rho 165 + lowerPe rho 165 *
          ((1 - (leafBits rho)[87]!) *
            (idBits rho)[87]!) =
          lowerIl rho 166 := by
      rw [leafBits_get rho 87 (by omega),
        idBits_get rho 87 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 165 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 164 + rho 1682 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 164)
      rw [hsum]
      linear_combination (rho 428) * r2178 + r2179
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 87 (by omega),
      idBits_get rho 87 (by omega),
      leafBitsImt_get rho 87 (by omega),
      idBitsImt_get rho 87 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange82 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      87 (lowerPeImt rho 166) (lowerIlImt rho 166)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      89 (lowerPeImt rho 164) (lowerIlImt rho 164) := by
  exact lowerStep164 rho h k (lowerStep165 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
