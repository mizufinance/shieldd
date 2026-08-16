import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk100
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep202 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        50 (lowerPeImt rho 203) (lowerIlImt rho 203)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      51 (lowerPeImt rho 202) (lowerIlImt rho 202) := by
  have r2326 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2326 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.1
  have r2327 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2327 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.1
  have r2328 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2328 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.1
  have r2329 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2329 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2326 at r2326
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2327 at r2327
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2328 at r2328
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2329 at r2329
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 50
    (lowerPeImt rho 202 *
      (1 + 2 * ((leafBitsImt rho)[50]! * (idBitsImt rho)[50]!)
        - (leafBitsImt rho)[50]!
        - (idBitsImt rho)[50]!))
    (lowerIlImt rho 202 + lowerPeImt rho 202 *
      ((1 - (leafBitsImt rho)[50]!) *
        (idBitsImt rho)[50]!))
  rw [show
      lowerPeImt rho 202 *
        (1 + 2 * ((leafBitsImt rho)[50]! * (idBitsImt rho)[50]!)
          - (leafBitsImt rho)[50]!
          - (idBitsImt rho)[50]!) =
        lowerPeImt rho 203 by
    have hPe :
        lowerPe rho 202 *
          (1 + 2 * ((leafBits rho)[50]! * (idBits rho)[50]!)
            - (leafBits rho)[50]!
            - (idBits rho)[50]!) =
          lowerPe rho 203 := by
      rw [leafBits_get rho 50 (by omega),
        idBits_get rho 50 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2329 + 2 * (rho 1828) * r2328
    simpa only [
      lowerPeImt,
      leafBits_get rho 50 (by omega),
      idBits_get rho 50 (by omega),
      leafBitsImt_get rho 50 (by omega),
      idBitsImt_get rho 50 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 202 + lowerPeImt rho 202 *
        ((1 - (leafBitsImt rho)[50]!) *
          (idBitsImt rho)[50]!) =
        lowerIlImt rho 203 by
    have hIl :
        lowerIl rho 202 + lowerPe rho 202 *
          ((1 - (leafBits rho)[50]!) *
            (idBits rho)[50]!) =
          lowerIl rho 203 := by
      rw [leafBits_get rho 50 (by omega),
        idBits_get rho 50 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 202 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 201 + rho 1830 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 201)
      rw [hsum]
      linear_combination (rho 391) * r2326 + r2327
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 50 (by omega),
      idBits_get rho 50 (by omega),
      leafBitsImt_get rho 50 (by omega),
      idBitsImt_get rho 50 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep203 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        49 (lowerPeImt rho 204) (lowerIlImt rho 204)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      50 (lowerPeImt rho 203) (lowerIlImt rho 203) := by
  have r2330 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2330 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.1
  have r2331 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2331 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.1
  have r2332 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2332 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2333 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2333 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2330 at r2330
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2331 at r2331
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2332 at r2332
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2333 at r2333
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 49
    (lowerPeImt rho 203 *
      (1 + 2 * ((leafBitsImt rho)[49]! * (idBitsImt rho)[49]!)
        - (leafBitsImt rho)[49]!
        - (idBitsImt rho)[49]!))
    (lowerIlImt rho 203 + lowerPeImt rho 203 *
      ((1 - (leafBitsImt rho)[49]!) *
        (idBitsImt rho)[49]!))
  rw [show
      lowerPeImt rho 203 *
        (1 + 2 * ((leafBitsImt rho)[49]! * (idBitsImt rho)[49]!)
          - (leafBitsImt rho)[49]!
          - (idBitsImt rho)[49]!) =
        lowerPeImt rho 204 by
    have hPe :
        lowerPe rho 203 *
          (1 + 2 * ((leafBits rho)[49]! * (idBits rho)[49]!)
            - (leafBits rho)[49]!
            - (idBits rho)[49]!) =
          lowerPe rho 204 := by
      rw [leafBits_get rho 49 (by omega),
        idBits_get rho 49 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2333 + 2 * (rho 1832) * r2332
    simpa only [
      lowerPeImt,
      leafBits_get rho 49 (by omega),
      idBits_get rho 49 (by omega),
      leafBitsImt_get rho 49 (by omega),
      idBitsImt_get rho 49 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 203 + lowerPeImt rho 203 *
        ((1 - (leafBitsImt rho)[49]!) *
          (idBitsImt rho)[49]!) =
        lowerIlImt rho 204 by
    have hIl :
        lowerIl rho 203 + lowerPe rho 203 *
          ((1 - (leafBits rho)[49]!) *
            (idBits rho)[49]!) =
          lowerIl rho 204 := by
      rw [leafBits_get rho 49 (by omega),
        idBits_get rho 49 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 203 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 202 + rho 1834 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 202)
      rw [hsum]
      linear_combination (rho 390) * r2330 + r2331
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 49 (by omega),
      idBits_get rho 49 (by omega),
      leafBitsImt_get rho 49 (by omega),
      idBitsImt_get rho 49 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange101 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      49 (lowerPeImt rho 204) (lowerIlImt rho 204)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      51 (lowerPeImt rho 202) (lowerIlImt rho 202) := by
  exact lowerStep202 rho h k (lowerStep203 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
