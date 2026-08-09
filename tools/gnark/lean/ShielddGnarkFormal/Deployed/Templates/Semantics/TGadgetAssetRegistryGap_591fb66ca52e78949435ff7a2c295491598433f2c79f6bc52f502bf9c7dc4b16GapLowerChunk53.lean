import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk52
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep106 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        146 (lowerPeImt rho 107) (lowerIlImt rho 107)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      147 (lowerPeImt rho 106) (lowerIlImt rho 106) := by
  have r1942 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1942 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1943 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1943 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1944 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1944 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1945 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1945 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1942 at r1942
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1943 at r1943
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1944 at r1944
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1945 at r1945
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 146
    (lowerPeImt rho 106 *
      (1 + 2 * ((leafBitsImt rho)[146]! * (idBitsImt rho)[146]!)
        - (leafBitsImt rho)[146]!
        - (idBitsImt rho)[146]!))
    (lowerIlImt rho 106 + lowerPeImt rho 106 *
      ((1 - (leafBitsImt rho)[146]!) *
        (idBitsImt rho)[146]!))
  rw [show
      lowerPeImt rho 106 *
        (1 + 2 * ((leafBitsImt rho)[146]! * (idBitsImt rho)[146]!)
          - (leafBitsImt rho)[146]!
          - (idBitsImt rho)[146]!) =
        lowerPeImt rho 107 by
    have hPe :
        lowerPe rho 106 *
          (1 + 2 * ((leafBits rho)[146]! * (idBits rho)[146]!)
            - (leafBits rho)[146]!
            - (idBits rho)[146]!) =
          lowerPe rho 107 := by
      rw [leafBits_get rho 146 (by omega),
        idBits_get rho 146 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1945 + 2 * (rho 1444) * r1944
    simpa only [
      lowerPeImt,
      leafBits_get rho 146 (by omega),
      idBits_get rho 146 (by omega),
      leafBitsImt_get rho 146 (by omega),
      idBitsImt_get rho 146 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 106 + lowerPeImt rho 106 *
        ((1 - (leafBitsImt rho)[146]!) *
          (idBitsImt rho)[146]!) =
        lowerIlImt rho 107 by
    have hIl :
        lowerIl rho 106 + lowerPe rho 106 *
          ((1 - (leafBits rho)[146]!) *
            (idBits rho)[146]!) =
          lowerIl rho 107 := by
      rw [leafBits_get rho 146 (by omega),
        idBits_get rho 146 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 106 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 105 + rho 1446 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 105)
      rw [hsum]
      linear_combination (rho 487) * r1942 + r1943
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 146 (by omega),
      idBits_get rho 146 (by omega),
      leafBitsImt_get rho 146 (by omega),
      idBitsImt_get rho 146 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep107 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        145 (lowerPeImt rho 108) (lowerIlImt rho 108)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      146 (lowerPeImt rho 107) (lowerIlImt rho 107) := by
  have r1946 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1946 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1947 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1947 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1948 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1948 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1949 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1949 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1946 at r1946
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1947 at r1947
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1948 at r1948
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1949 at r1949
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 145
    (lowerPeImt rho 107 *
      (1 + 2 * ((leafBitsImt rho)[145]! * (idBitsImt rho)[145]!)
        - (leafBitsImt rho)[145]!
        - (idBitsImt rho)[145]!))
    (lowerIlImt rho 107 + lowerPeImt rho 107 *
      ((1 - (leafBitsImt rho)[145]!) *
        (idBitsImt rho)[145]!))
  rw [show
      lowerPeImt rho 107 *
        (1 + 2 * ((leafBitsImt rho)[145]! * (idBitsImt rho)[145]!)
          - (leafBitsImt rho)[145]!
          - (idBitsImt rho)[145]!) =
        lowerPeImt rho 108 by
    have hPe :
        lowerPe rho 107 *
          (1 + 2 * ((leafBits rho)[145]! * (idBits rho)[145]!)
            - (leafBits rho)[145]!
            - (idBits rho)[145]!) =
          lowerPe rho 108 := by
      rw [leafBits_get rho 145 (by omega),
        idBits_get rho 145 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1949 + 2 * (rho 1448) * r1948
    simpa only [
      lowerPeImt,
      leafBits_get rho 145 (by omega),
      idBits_get rho 145 (by omega),
      leafBitsImt_get rho 145 (by omega),
      idBitsImt_get rho 145 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 107 + lowerPeImt rho 107 *
        ((1 - (leafBitsImt rho)[145]!) *
          (idBitsImt rho)[145]!) =
        lowerIlImt rho 108 by
    have hIl :
        lowerIl rho 107 + lowerPe rho 107 *
          ((1 - (leafBits rho)[145]!) *
            (idBits rho)[145]!) =
          lowerIl rho 108 := by
      rw [leafBits_get rho 145 (by omega),
        idBits_get rho 145 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 107 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 106 + rho 1450 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 106)
      rw [hsum]
      linear_combination (rho 486) * r1946 + r1947
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 145 (by omega),
      idBits_get rho 145 (by omega),
      leafBitsImt_get rho 145 (by omega),
      idBitsImt_get rho 145 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange53 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      145 (lowerPeImt rho 108) (lowerIlImt rho 108)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      147 (lowerPeImt rho 106) (lowerIlImt rho 106) := by
  exact lowerStep106 rho h k (lowerStep107 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
