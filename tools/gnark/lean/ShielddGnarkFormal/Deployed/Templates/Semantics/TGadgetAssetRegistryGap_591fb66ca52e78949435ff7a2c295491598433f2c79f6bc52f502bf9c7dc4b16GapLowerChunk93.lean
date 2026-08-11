import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk92
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep186 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        66 (lowerPeImt rho 187) (lowerIlImt rho 187)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      67 (lowerPeImt rho 186) (lowerIlImt rho 186) := by
  have r2262 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2262 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2263 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2263 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2264 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2264 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2265 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2265 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2262 at r2262
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2263 at r2263
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2264 at r2264
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2265 at r2265
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 66
    (lowerPeImt rho 186 *
      (1 + 2 * ((leafBitsImt rho)[66]! * (idBitsImt rho)[66]!)
        - (leafBitsImt rho)[66]!
        - (idBitsImt rho)[66]!))
    (lowerIlImt rho 186 + lowerPeImt rho 186 *
      ((1 - (leafBitsImt rho)[66]!) *
        (idBitsImt rho)[66]!))
  rw [show
      lowerPeImt rho 186 *
        (1 + 2 * ((leafBitsImt rho)[66]! * (idBitsImt rho)[66]!)
          - (leafBitsImt rho)[66]!
          - (idBitsImt rho)[66]!) =
        lowerPeImt rho 187 by
    have hPe :
        lowerPe rho 186 *
          (1 + 2 * ((leafBits rho)[66]! * (idBits rho)[66]!)
            - (leafBits rho)[66]!
            - (idBits rho)[66]!) =
          lowerPe rho 187 := by
      rw [leafBits_get rho 66 (by omega),
        idBits_get rho 66 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2265 + 2 * (rho 1764) * r2264
    simpa only [
      lowerPeImt,
      leafBits_get rho 66 (by omega),
      idBits_get rho 66 (by omega),
      leafBitsImt_get rho 66 (by omega),
      idBitsImt_get rho 66 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 186 + lowerPeImt rho 186 *
        ((1 - (leafBitsImt rho)[66]!) *
          (idBitsImt rho)[66]!) =
        lowerIlImt rho 187 by
    have hIl :
        lowerIl rho 186 + lowerPe rho 186 *
          ((1 - (leafBits rho)[66]!) *
            (idBits rho)[66]!) =
          lowerIl rho 187 := by
      rw [leafBits_get rho 66 (by omega),
        idBits_get rho 66 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 186 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 185 + rho 1766 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 185)
      rw [hsum]
      linear_combination (rho 407) * r2262 + r2263
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 66 (by omega),
      idBits_get rho 66 (by omega),
      leafBitsImt_get rho 66 (by omega),
      idBitsImt_get rho 66 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep187 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        65 (lowerPeImt rho 188) (lowerIlImt rho 188)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      66 (lowerPeImt rho 187) (lowerIlImt rho 187) := by
  have r2266 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2266 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2267 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2267 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2268 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2268 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2269 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2269 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2266 at r2266
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2267 at r2267
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2268 at r2268
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2269 at r2269
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 65
    (lowerPeImt rho 187 *
      (1 + 2 * ((leafBitsImt rho)[65]! * (idBitsImt rho)[65]!)
        - (leafBitsImt rho)[65]!
        - (idBitsImt rho)[65]!))
    (lowerIlImt rho 187 + lowerPeImt rho 187 *
      ((1 - (leafBitsImt rho)[65]!) *
        (idBitsImt rho)[65]!))
  rw [show
      lowerPeImt rho 187 *
        (1 + 2 * ((leafBitsImt rho)[65]! * (idBitsImt rho)[65]!)
          - (leafBitsImt rho)[65]!
          - (idBitsImt rho)[65]!) =
        lowerPeImt rho 188 by
    have hPe :
        lowerPe rho 187 *
          (1 + 2 * ((leafBits rho)[65]! * (idBits rho)[65]!)
            - (leafBits rho)[65]!
            - (idBits rho)[65]!) =
          lowerPe rho 188 := by
      rw [leafBits_get rho 65 (by omega),
        idBits_get rho 65 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2269 + 2 * (rho 1768) * r2268
    simpa only [
      lowerPeImt,
      leafBits_get rho 65 (by omega),
      idBits_get rho 65 (by omega),
      leafBitsImt_get rho 65 (by omega),
      idBitsImt_get rho 65 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 187 + lowerPeImt rho 187 *
        ((1 - (leafBitsImt rho)[65]!) *
          (idBitsImt rho)[65]!) =
        lowerIlImt rho 188 by
    have hIl :
        lowerIl rho 187 + lowerPe rho 187 *
          ((1 - (leafBits rho)[65]!) *
            (idBits rho)[65]!) =
          lowerIl rho 188 := by
      rw [leafBits_get rho 65 (by omega),
        idBits_get rho 65 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 187 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 186 + rho 1770 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 186)
      rw [hsum]
      linear_combination (rho 406) * r2266 + r2267
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 65 (by omega),
      idBits_get rho 65 (by omega),
      leafBitsImt_get rho 65 (by omega),
      idBitsImt_get rho 65 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange93 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      65 (lowerPeImt rho 188) (lowerIlImt rho 188)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      67 (lowerPeImt rho 186) (lowerIlImt rho 186) := by
  exact lowerStep186 rho h k (lowerStep187 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
