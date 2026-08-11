import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk91
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep184 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        68 (lowerPeImt rho 185) (lowerIlImt rho 185)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      69 (lowerPeImt rho 184) (lowerIlImt rho 184) := by
  have r2254 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2254 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2255 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2255 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2256 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2256 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2257 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2257 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2254 at r2254
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2255 at r2255
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2256 at r2256
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2257 at r2257
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 68
    (lowerPeImt rho 184 *
      (1 + 2 * ((leafBitsImt rho)[68]! * (idBitsImt rho)[68]!)
        - (leafBitsImt rho)[68]!
        - (idBitsImt rho)[68]!))
    (lowerIlImt rho 184 + lowerPeImt rho 184 *
      ((1 - (leafBitsImt rho)[68]!) *
        (idBitsImt rho)[68]!))
  rw [show
      lowerPeImt rho 184 *
        (1 + 2 * ((leafBitsImt rho)[68]! * (idBitsImt rho)[68]!)
          - (leafBitsImt rho)[68]!
          - (idBitsImt rho)[68]!) =
        lowerPeImt rho 185 by
    have hPe :
        lowerPe rho 184 *
          (1 + 2 * ((leafBits rho)[68]! * (idBits rho)[68]!)
            - (leafBits rho)[68]!
            - (idBits rho)[68]!) =
          lowerPe rho 185 := by
      rw [leafBits_get rho 68 (by omega),
        idBits_get rho 68 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2257 + 2 * (rho 1756) * r2256
    simpa only [
      lowerPeImt,
      leafBits_get rho 68 (by omega),
      idBits_get rho 68 (by omega),
      leafBitsImt_get rho 68 (by omega),
      idBitsImt_get rho 68 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 184 + lowerPeImt rho 184 *
        ((1 - (leafBitsImt rho)[68]!) *
          (idBitsImt rho)[68]!) =
        lowerIlImt rho 185 by
    have hIl :
        lowerIl rho 184 + lowerPe rho 184 *
          ((1 - (leafBits rho)[68]!) *
            (idBits rho)[68]!) =
          lowerIl rho 185 := by
      rw [leafBits_get rho 68 (by omega),
        idBits_get rho 68 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 184 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 183 + rho 1758 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 183)
      rw [hsum]
      linear_combination (rho 409) * r2254 + r2255
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 68 (by omega),
      idBits_get rho 68 (by omega),
      leafBitsImt_get rho 68 (by omega),
      idBitsImt_get rho 68 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep185 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        67 (lowerPeImt rho 186) (lowerIlImt rho 186)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      68 (lowerPeImt rho 185) (lowerIlImt rho 185) := by
  have r2258 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2258 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2259 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2259 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2260 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2260 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2261 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2261 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2258 at r2258
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2259 at r2259
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2260 at r2260
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2261 at r2261
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 67
    (lowerPeImt rho 185 *
      (1 + 2 * ((leafBitsImt rho)[67]! * (idBitsImt rho)[67]!)
        - (leafBitsImt rho)[67]!
        - (idBitsImt rho)[67]!))
    (lowerIlImt rho 185 + lowerPeImt rho 185 *
      ((1 - (leafBitsImt rho)[67]!) *
        (idBitsImt rho)[67]!))
  rw [show
      lowerPeImt rho 185 *
        (1 + 2 * ((leafBitsImt rho)[67]! * (idBitsImt rho)[67]!)
          - (leafBitsImt rho)[67]!
          - (idBitsImt rho)[67]!) =
        lowerPeImt rho 186 by
    have hPe :
        lowerPe rho 185 *
          (1 + 2 * ((leafBits rho)[67]! * (idBits rho)[67]!)
            - (leafBits rho)[67]!
            - (idBits rho)[67]!) =
          lowerPe rho 186 := by
      rw [leafBits_get rho 67 (by omega),
        idBits_get rho 67 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2261 + 2 * (rho 1760) * r2260
    simpa only [
      lowerPeImt,
      leafBits_get rho 67 (by omega),
      idBits_get rho 67 (by omega),
      leafBitsImt_get rho 67 (by omega),
      idBitsImt_get rho 67 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 185 + lowerPeImt rho 185 *
        ((1 - (leafBitsImt rho)[67]!) *
          (idBitsImt rho)[67]!) =
        lowerIlImt rho 186 by
    have hIl :
        lowerIl rho 185 + lowerPe rho 185 *
          ((1 - (leafBits rho)[67]!) *
            (idBits rho)[67]!) =
          lowerIl rho 186 := by
      rw [leafBits_get rho 67 (by omega),
        idBits_get rho 67 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 185 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 184 + rho 1762 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 184)
      rw [hsum]
      linear_combination (rho 408) * r2258 + r2259
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 67 (by omega),
      idBits_get rho 67 (by omega),
      leafBitsImt_get rho 67 (by omega),
      idBitsImt_get rho 67 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange92 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      67 (lowerPeImt rho 186) (lowerIlImt rho 186)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      69 (lowerPeImt rho 184) (lowerIlImt rho 184) := by
  exact lowerStep184 rho h k (lowerStep185 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
