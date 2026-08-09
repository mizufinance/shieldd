import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk101
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep204 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        48 (lowerPeImt rho 205) (lowerIlImt rho 205)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      49 (lowerPeImt rho 204) (lowerIlImt rho 204) := by
  have r2334 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2334 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2335 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2335 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2336 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2336 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2337 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2337 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2334 at r2334
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2335 at r2335
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2336 at r2336
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2337 at r2337
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 48
    (lowerPeImt rho 204 *
      (1 + 2 * ((leafBitsImt rho)[48]! * (idBitsImt rho)[48]!)
        - (leafBitsImt rho)[48]!
        - (idBitsImt rho)[48]!))
    (lowerIlImt rho 204 + lowerPeImt rho 204 *
      ((1 - (leafBitsImt rho)[48]!) *
        (idBitsImt rho)[48]!))
  rw [show
      lowerPeImt rho 204 *
        (1 + 2 * ((leafBitsImt rho)[48]! * (idBitsImt rho)[48]!)
          - (leafBitsImt rho)[48]!
          - (idBitsImt rho)[48]!) =
        lowerPeImt rho 205 by
    have hPe :
        lowerPe rho 204 *
          (1 + 2 * ((leafBits rho)[48]! * (idBits rho)[48]!)
            - (leafBits rho)[48]!
            - (idBits rho)[48]!) =
          lowerPe rho 205 := by
      rw [leafBits_get rho 48 (by omega),
        idBits_get rho 48 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2337 + 2 * (rho 1836) * r2336
    simpa only [
      lowerPeImt,
      leafBits_get rho 48 (by omega),
      idBits_get rho 48 (by omega),
      leafBitsImt_get rho 48 (by omega),
      idBitsImt_get rho 48 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 204 + lowerPeImt rho 204 *
        ((1 - (leafBitsImt rho)[48]!) *
          (idBitsImt rho)[48]!) =
        lowerIlImt rho 205 by
    have hIl :
        lowerIl rho 204 + lowerPe rho 204 *
          ((1 - (leafBits rho)[48]!) *
            (idBits rho)[48]!) =
          lowerIl rho 205 := by
      rw [leafBits_get rho 48 (by omega),
        idBits_get rho 48 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 204 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 203 + rho 1838 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 203)
      rw [hsum]
      linear_combination (rho 389) * r2334 + r2335
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 48 (by omega),
      idBits_get rho 48 (by omega),
      leafBitsImt_get rho 48 (by omega),
      idBitsImt_get rho 48 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep205 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        47 (lowerPeImt rho 206) (lowerIlImt rho 206)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      48 (lowerPeImt rho 205) (lowerIlImt rho 205) := by
  have r2338 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2338 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2339 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2339 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2340 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2340 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2341 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2341 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2338 at r2338
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2339 at r2339
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2340 at r2340
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2341 at r2341
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 47
    (lowerPeImt rho 205 *
      (1 + 2 * ((leafBitsImt rho)[47]! * (idBitsImt rho)[47]!)
        - (leafBitsImt rho)[47]!
        - (idBitsImt rho)[47]!))
    (lowerIlImt rho 205 + lowerPeImt rho 205 *
      ((1 - (leafBitsImt rho)[47]!) *
        (idBitsImt rho)[47]!))
  rw [show
      lowerPeImt rho 205 *
        (1 + 2 * ((leafBitsImt rho)[47]! * (idBitsImt rho)[47]!)
          - (leafBitsImt rho)[47]!
          - (idBitsImt rho)[47]!) =
        lowerPeImt rho 206 by
    have hPe :
        lowerPe rho 205 *
          (1 + 2 * ((leafBits rho)[47]! * (idBits rho)[47]!)
            - (leafBits rho)[47]!
            - (idBits rho)[47]!) =
          lowerPe rho 206 := by
      rw [leafBits_get rho 47 (by omega),
        idBits_get rho 47 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2341 + 2 * (rho 1840) * r2340
    simpa only [
      lowerPeImt,
      leafBits_get rho 47 (by omega),
      idBits_get rho 47 (by omega),
      leafBitsImt_get rho 47 (by omega),
      idBitsImt_get rho 47 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 205 + lowerPeImt rho 205 *
        ((1 - (leafBitsImt rho)[47]!) *
          (idBitsImt rho)[47]!) =
        lowerIlImt rho 206 by
    have hIl :
        lowerIl rho 205 + lowerPe rho 205 *
          ((1 - (leafBits rho)[47]!) *
            (idBits rho)[47]!) =
          lowerIl rho 206 := by
      rw [leafBits_get rho 47 (by omega),
        idBits_get rho 47 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 205 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 204 + rho 1842 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 204)
      rw [hsum]
      linear_combination (rho 388) * r2338 + r2339
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 47 (by omega),
      idBits_get rho 47 (by omega),
      leafBitsImt_get rho 47 (by omega),
      idBitsImt_get rho 47 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange102 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      47 (lowerPeImt rho 206) (lowerIlImt rho 206)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      49 (lowerPeImt rho 204) (lowerIlImt rho 204) := by
  exact lowerStep204 rho h k (lowerStep205 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
