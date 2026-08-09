import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk97
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep196 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        56 (lowerPeImt rho 197) (lowerIlImt rho 197)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      57 (lowerPeImt rho 196) (lowerIlImt rho 196) := by
  have r2302 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2302 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2303 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2303 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2304 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2304 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2305 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2305 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2302 at r2302
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2303 at r2303
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2304 at r2304
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2305 at r2305
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 56
    (lowerPeImt rho 196 *
      (1 + 2 * ((leafBitsImt rho)[56]! * (idBitsImt rho)[56]!)
        - (leafBitsImt rho)[56]!
        - (idBitsImt rho)[56]!))
    (lowerIlImt rho 196 + lowerPeImt rho 196 *
      ((1 - (leafBitsImt rho)[56]!) *
        (idBitsImt rho)[56]!))
  rw [show
      lowerPeImt rho 196 *
        (1 + 2 * ((leafBitsImt rho)[56]! * (idBitsImt rho)[56]!)
          - (leafBitsImt rho)[56]!
          - (idBitsImt rho)[56]!) =
        lowerPeImt rho 197 by
    have hPe :
        lowerPe rho 196 *
          (1 + 2 * ((leafBits rho)[56]! * (idBits rho)[56]!)
            - (leafBits rho)[56]!
            - (idBits rho)[56]!) =
          lowerPe rho 197 := by
      rw [leafBits_get rho 56 (by omega),
        idBits_get rho 56 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2305 + 2 * (rho 1804) * r2304
    simpa only [
      lowerPeImt,
      leafBits_get rho 56 (by omega),
      idBits_get rho 56 (by omega),
      leafBitsImt_get rho 56 (by omega),
      idBitsImt_get rho 56 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 196 + lowerPeImt rho 196 *
        ((1 - (leafBitsImt rho)[56]!) *
          (idBitsImt rho)[56]!) =
        lowerIlImt rho 197 by
    have hIl :
        lowerIl rho 196 + lowerPe rho 196 *
          ((1 - (leafBits rho)[56]!) *
            (idBits rho)[56]!) =
          lowerIl rho 197 := by
      rw [leafBits_get rho 56 (by omega),
        idBits_get rho 56 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 196 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 195 + rho 1806 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 195)
      rw [hsum]
      linear_combination (rho 397) * r2302 + r2303
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 56 (by omega),
      idBits_get rho 56 (by omega),
      leafBitsImt_get rho 56 (by omega),
      idBitsImt_get rho 56 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep197 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        55 (lowerPeImt rho 198) (lowerIlImt rho 198)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      56 (lowerPeImt rho 197) (lowerIlImt rho 197) := by
  have r2306 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2306 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2307 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2307 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2308 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2308 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2309 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2309 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2306 at r2306
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2307 at r2307
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2308 at r2308
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2309 at r2309
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 55
    (lowerPeImt rho 197 *
      (1 + 2 * ((leafBitsImt rho)[55]! * (idBitsImt rho)[55]!)
        - (leafBitsImt rho)[55]!
        - (idBitsImt rho)[55]!))
    (lowerIlImt rho 197 + lowerPeImt rho 197 *
      ((1 - (leafBitsImt rho)[55]!) *
        (idBitsImt rho)[55]!))
  rw [show
      lowerPeImt rho 197 *
        (1 + 2 * ((leafBitsImt rho)[55]! * (idBitsImt rho)[55]!)
          - (leafBitsImt rho)[55]!
          - (idBitsImt rho)[55]!) =
        lowerPeImt rho 198 by
    have hPe :
        lowerPe rho 197 *
          (1 + 2 * ((leafBits rho)[55]! * (idBits rho)[55]!)
            - (leafBits rho)[55]!
            - (idBits rho)[55]!) =
          lowerPe rho 198 := by
      rw [leafBits_get rho 55 (by omega),
        idBits_get rho 55 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2309 + 2 * (rho 1808) * r2308
    simpa only [
      lowerPeImt,
      leafBits_get rho 55 (by omega),
      idBits_get rho 55 (by omega),
      leafBitsImt_get rho 55 (by omega),
      idBitsImt_get rho 55 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 197 + lowerPeImt rho 197 *
        ((1 - (leafBitsImt rho)[55]!) *
          (idBitsImt rho)[55]!) =
        lowerIlImt rho 198 by
    have hIl :
        lowerIl rho 197 + lowerPe rho 197 *
          ((1 - (leafBits rho)[55]!) *
            (idBits rho)[55]!) =
          lowerIl rho 198 := by
      rw [leafBits_get rho 55 (by omega),
        idBits_get rho 55 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 197 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 196 + rho 1810 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 196)
      rw [hsum]
      linear_combination (rho 396) * r2306 + r2307
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 55 (by omega),
      idBits_get rho 55 (by omega),
      leafBitsImt_get rho 55 (by omega),
      idBitsImt_get rho 55 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange98 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      55 (lowerPeImt rho 198) (lowerIlImt rho 198)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      57 (lowerPeImt rho 196) (lowerIlImt rho 196) := by
  exact lowerStep196 rho h k (lowerStep197 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
