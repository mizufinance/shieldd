import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk80
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep162 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        90 (lowerPeImt rho 163) (lowerIlImt rho 163)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      91 (lowerPeImt rho 162) (lowerIlImt rho 162) := by
  have r2166 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2166 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.1
  have r2167 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2167 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.1
  have r2168 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2168 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.1
  have r2169 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2169 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2166 at r2166
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2167 at r2167
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2168 at r2168
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2169 at r2169
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 90
    (lowerPeImt rho 162 *
      (1 + 2 * ((leafBitsImt rho)[90]! * (idBitsImt rho)[90]!)
        - (leafBitsImt rho)[90]!
        - (idBitsImt rho)[90]!))
    (lowerIlImt rho 162 + lowerPeImt rho 162 *
      ((1 - (leafBitsImt rho)[90]!) *
        (idBitsImt rho)[90]!))
  rw [show
      lowerPeImt rho 162 *
        (1 + 2 * ((leafBitsImt rho)[90]! * (idBitsImt rho)[90]!)
          - (leafBitsImt rho)[90]!
          - (idBitsImt rho)[90]!) =
        lowerPeImt rho 163 by
    have hPe :
        lowerPe rho 162 *
          (1 + 2 * ((leafBits rho)[90]! * (idBits rho)[90]!)
            - (leafBits rho)[90]!
            - (idBits rho)[90]!) =
          lowerPe rho 163 := by
      rw [leafBits_get rho 90 (by omega),
        idBits_get rho 90 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2169 + 2 * (rho 1668) * r2168
    simpa only [
      lowerPeImt,
      leafBits_get rho 90 (by omega),
      idBits_get rho 90 (by omega),
      leafBitsImt_get rho 90 (by omega),
      idBitsImt_get rho 90 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 162 + lowerPeImt rho 162 *
        ((1 - (leafBitsImt rho)[90]!) *
          (idBitsImt rho)[90]!) =
        lowerIlImt rho 163 by
    have hIl :
        lowerIl rho 162 + lowerPe rho 162 *
          ((1 - (leafBits rho)[90]!) *
            (idBits rho)[90]!) =
          lowerIl rho 163 := by
      rw [leafBits_get rho 90 (by omega),
        idBits_get rho 90 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 162 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 161 + rho 1670 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 161)
      rw [hsum]
      linear_combination (rho 431) * r2166 + r2167
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 90 (by omega),
      idBits_get rho 90 (by omega),
      leafBitsImt_get rho 90 (by omega),
      idBitsImt_get rho 90 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep163 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        89 (lowerPeImt rho 164) (lowerIlImt rho 164)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      90 (lowerPeImt rho 163) (lowerIlImt rho 163) := by
  have r2170 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2170 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.1
  have r2171 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2171 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.1
  have r2172 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2172 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2173 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2173 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2170 at r2170
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2171 at r2171
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2172 at r2172
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2173 at r2173
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 89
    (lowerPeImt rho 163 *
      (1 + 2 * ((leafBitsImt rho)[89]! * (idBitsImt rho)[89]!)
        - (leafBitsImt rho)[89]!
        - (idBitsImt rho)[89]!))
    (lowerIlImt rho 163 + lowerPeImt rho 163 *
      ((1 - (leafBitsImt rho)[89]!) *
        (idBitsImt rho)[89]!))
  rw [show
      lowerPeImt rho 163 *
        (1 + 2 * ((leafBitsImt rho)[89]! * (idBitsImt rho)[89]!)
          - (leafBitsImt rho)[89]!
          - (idBitsImt rho)[89]!) =
        lowerPeImt rho 164 by
    have hPe :
        lowerPe rho 163 *
          (1 + 2 * ((leafBits rho)[89]! * (idBits rho)[89]!)
            - (leafBits rho)[89]!
            - (idBits rho)[89]!) =
          lowerPe rho 164 := by
      rw [leafBits_get rho 89 (by omega),
        idBits_get rho 89 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2173 + 2 * (rho 1672) * r2172
    simpa only [
      lowerPeImt,
      leafBits_get rho 89 (by omega),
      idBits_get rho 89 (by omega),
      leafBitsImt_get rho 89 (by omega),
      idBitsImt_get rho 89 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 163 + lowerPeImt rho 163 *
        ((1 - (leafBitsImt rho)[89]!) *
          (idBitsImt rho)[89]!) =
        lowerIlImt rho 164 by
    have hIl :
        lowerIl rho 163 + lowerPe rho 163 *
          ((1 - (leafBits rho)[89]!) *
            (idBits rho)[89]!) =
          lowerIl rho 164 := by
      rw [leafBits_get rho 89 (by omega),
        idBits_get rho 89 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 163 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 162 + rho 1674 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 162)
      rw [hsum]
      linear_combination (rho 430) * r2170 + r2171
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 89 (by omega),
      idBits_get rho 89 (by omega),
      leafBitsImt_get rho 89 (by omega),
      idBitsImt_get rho 89 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange81 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      89 (lowerPeImt rho 164) (lowerIlImt rho 164)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      91 (lowerPeImt rho 162) (lowerIlImt rho 162) := by
  exact lowerStep162 rho h k (lowerStep163 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
