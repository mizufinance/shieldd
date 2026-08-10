import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk79
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep160 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        92 (lowerPeImt rho 161) (lowerIlImt rho 161)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      93 (lowerPeImt rho 160) (lowerIlImt rho 160) := by
  have r2158 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2158 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2159 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2159 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2
  have r2160 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2160 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1
  have r2161 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2161 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2158 at r2158
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2159 at r2159
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2160 at r2160
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2161 at r2161
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 92
    (lowerPeImt rho 160 *
      (1 + 2 * ((leafBitsImt rho)[92]! * (idBitsImt rho)[92]!)
        - (leafBitsImt rho)[92]!
        - (idBitsImt rho)[92]!))
    (lowerIlImt rho 160 + lowerPeImt rho 160 *
      ((1 - (leafBitsImt rho)[92]!) *
        (idBitsImt rho)[92]!))
  rw [show
      lowerPeImt rho 160 *
        (1 + 2 * ((leafBitsImt rho)[92]! * (idBitsImt rho)[92]!)
          - (leafBitsImt rho)[92]!
          - (idBitsImt rho)[92]!) =
        lowerPeImt rho 161 by
    have hPe :
        lowerPe rho 160 *
          (1 + 2 * ((leafBits rho)[92]! * (idBits rho)[92]!)
            - (leafBits rho)[92]!
            - (idBits rho)[92]!) =
          lowerPe rho 161 := by
      rw [leafBits_get rho 92 (by omega),
        idBits_get rho 92 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2161 + 2 * (rho 1660) * r2160
    simpa only [
      lowerPeImt,
      leafBits_get rho 92 (by omega),
      idBits_get rho 92 (by omega),
      leafBitsImt_get rho 92 (by omega),
      idBitsImt_get rho 92 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 160 + lowerPeImt rho 160 *
        ((1 - (leafBitsImt rho)[92]!) *
          (idBitsImt rho)[92]!) =
        lowerIlImt rho 161 by
    have hIl :
        lowerIl rho 160 + lowerPe rho 160 *
          ((1 - (leafBits rho)[92]!) *
            (idBits rho)[92]!) =
          lowerIl rho 161 := by
      rw [leafBits_get rho 92 (by omega),
        idBits_get rho 92 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 160 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 159 + rho 1662 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 159)
      rw [hsum]
      linear_combination (rho 433) * r2158 + r2159
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 92 (by omega),
      idBits_get rho 92 (by omega),
      leafBitsImt_get rho 92 (by omega),
      idBitsImt_get rho 92 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep161 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        91 (lowerPeImt rho 162) (lowerIlImt rho 162)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      92 (lowerPeImt rho 161) (lowerIlImt rho 161) := by
  have r2162 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2162 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.1
  have r2163 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2163 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.1
  have r2164 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2164 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.1
  have r2165 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2165 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2162 at r2162
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2163 at r2163
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2164 at r2164
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2165 at r2165
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 91
    (lowerPeImt rho 161 *
      (1 + 2 * ((leafBitsImt rho)[91]! * (idBitsImt rho)[91]!)
        - (leafBitsImt rho)[91]!
        - (idBitsImt rho)[91]!))
    (lowerIlImt rho 161 + lowerPeImt rho 161 *
      ((1 - (leafBitsImt rho)[91]!) *
        (idBitsImt rho)[91]!))
  rw [show
      lowerPeImt rho 161 *
        (1 + 2 * ((leafBitsImt rho)[91]! * (idBitsImt rho)[91]!)
          - (leafBitsImt rho)[91]!
          - (idBitsImt rho)[91]!) =
        lowerPeImt rho 162 by
    have hPe :
        lowerPe rho 161 *
          (1 + 2 * ((leafBits rho)[91]! * (idBits rho)[91]!)
            - (leafBits rho)[91]!
            - (idBits rho)[91]!) =
          lowerPe rho 162 := by
      rw [leafBits_get rho 91 (by omega),
        idBits_get rho 91 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2165 + 2 * (rho 1664) * r2164
    simpa only [
      lowerPeImt,
      leafBits_get rho 91 (by omega),
      idBits_get rho 91 (by omega),
      leafBitsImt_get rho 91 (by omega),
      idBitsImt_get rho 91 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 161 + lowerPeImt rho 161 *
        ((1 - (leafBitsImt rho)[91]!) *
          (idBitsImt rho)[91]!) =
        lowerIlImt rho 162 by
    have hIl :
        lowerIl rho 161 + lowerPe rho 161 *
          ((1 - (leafBits rho)[91]!) *
            (idBits rho)[91]!) =
          lowerIl rho 162 := by
      rw [leafBits_get rho 91 (by omega),
        idBits_get rho 91 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 161 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 160 + rho 1666 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 160)
      rw [hsum]
      linear_combination (rho 432) * r2162 + r2163
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 91 (by omega),
      idBits_get rho 91 (by omega),
      leafBitsImt_get rho 91 (by omega),
      idBitsImt_get rho 91 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange80 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      91 (lowerPeImt rho 162) (lowerIlImt rho 162)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      93 (lowerPeImt rho 160) (lowerIlImt rho 160) := by
  exact lowerStep160 rho h k (lowerStep161 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
