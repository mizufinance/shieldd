import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk89
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep180 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        72 (lowerPeImt rho 181) (lowerIlImt rho 181)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      73 (lowerPeImt rho 180) (lowerIlImt rho 180) := by
  have r2238 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2238 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2239 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2239 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2
  have r2240 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2240 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1
  have r2241 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2241 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2238 at r2238
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2239 at r2239
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2240 at r2240
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2241 at r2241
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 72
    (lowerPeImt rho 180 *
      (1 + 2 * ((leafBitsImt rho)[72]! * (idBitsImt rho)[72]!)
        - (leafBitsImt rho)[72]!
        - (idBitsImt rho)[72]!))
    (lowerIlImt rho 180 + lowerPeImt rho 180 *
      ((1 - (leafBitsImt rho)[72]!) *
        (idBitsImt rho)[72]!))
  rw [show
      lowerPeImt rho 180 *
        (1 + 2 * ((leafBitsImt rho)[72]! * (idBitsImt rho)[72]!)
          - (leafBitsImt rho)[72]!
          - (idBitsImt rho)[72]!) =
        lowerPeImt rho 181 by
    have hPe :
        lowerPe rho 180 *
          (1 + 2 * ((leafBits rho)[72]! * (idBits rho)[72]!)
            - (leafBits rho)[72]!
            - (idBits rho)[72]!) =
          lowerPe rho 181 := by
      rw [leafBits_get rho 72 (by omega),
        idBits_get rho 72 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2241 + 2 * (rho 1740) * r2240
    simpa only [
      lowerPeImt,
      leafBits_get rho 72 (by omega),
      idBits_get rho 72 (by omega),
      leafBitsImt_get rho 72 (by omega),
      idBitsImt_get rho 72 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 180 + lowerPeImt rho 180 *
        ((1 - (leafBitsImt rho)[72]!) *
          (idBitsImt rho)[72]!) =
        lowerIlImt rho 181 by
    have hIl :
        lowerIl rho 180 + lowerPe rho 180 *
          ((1 - (leafBits rho)[72]!) *
            (idBits rho)[72]!) =
          lowerIl rho 181 := by
      rw [leafBits_get rho 72 (by omega),
        idBits_get rho 72 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 180 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 179 + rho 1742 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 179)
      rw [hsum]
      linear_combination (rho 413) * r2238 + r2239
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 72 (by omega),
      idBits_get rho 72 (by omega),
      leafBitsImt_get rho 72 (by omega),
      idBitsImt_get rho 72 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep181 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        71 (lowerPeImt rho 182) (lowerIlImt rho 182)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      72 (lowerPeImt rho 181) (lowerIlImt rho 181) := by
  have r2242 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2242 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.1
  have r2243 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2243 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.1
  have r2244 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2244 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.1
  have r2245 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2245 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2242 at r2242
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2243 at r2243
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2244 at r2244
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2245 at r2245
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 71
    (lowerPeImt rho 181 *
      (1 + 2 * ((leafBitsImt rho)[71]! * (idBitsImt rho)[71]!)
        - (leafBitsImt rho)[71]!
        - (idBitsImt rho)[71]!))
    (lowerIlImt rho 181 + lowerPeImt rho 181 *
      ((1 - (leafBitsImt rho)[71]!) *
        (idBitsImt rho)[71]!))
  rw [show
      lowerPeImt rho 181 *
        (1 + 2 * ((leafBitsImt rho)[71]! * (idBitsImt rho)[71]!)
          - (leafBitsImt rho)[71]!
          - (idBitsImt rho)[71]!) =
        lowerPeImt rho 182 by
    have hPe :
        lowerPe rho 181 *
          (1 + 2 * ((leafBits rho)[71]! * (idBits rho)[71]!)
            - (leafBits rho)[71]!
            - (idBits rho)[71]!) =
          lowerPe rho 182 := by
      rw [leafBits_get rho 71 (by omega),
        idBits_get rho 71 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2245 + 2 * (rho 1744) * r2244
    simpa only [
      lowerPeImt,
      leafBits_get rho 71 (by omega),
      idBits_get rho 71 (by omega),
      leafBitsImt_get rho 71 (by omega),
      idBitsImt_get rho 71 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 181 + lowerPeImt rho 181 *
        ((1 - (leafBitsImt rho)[71]!) *
          (idBitsImt rho)[71]!) =
        lowerIlImt rho 182 by
    have hIl :
        lowerIl rho 181 + lowerPe rho 181 *
          ((1 - (leafBits rho)[71]!) *
            (idBits rho)[71]!) =
          lowerIl rho 182 := by
      rw [leafBits_get rho 71 (by omega),
        idBits_get rho 71 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 181 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 180 + rho 1746 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 180)
      rw [hsum]
      linear_combination (rho 412) * r2242 + r2243
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 71 (by omega),
      idBits_get rho 71 (by omega),
      leafBitsImt_get rho 71 (by omega),
      idBitsImt_get rho 71 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange90 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      71 (lowerPeImt rho 182) (lowerIlImt rho 182)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      73 (lowerPeImt rho 180) (lowerIlImt rho 180) := by
  exact lowerStep180 rho h k (lowerStep181 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
