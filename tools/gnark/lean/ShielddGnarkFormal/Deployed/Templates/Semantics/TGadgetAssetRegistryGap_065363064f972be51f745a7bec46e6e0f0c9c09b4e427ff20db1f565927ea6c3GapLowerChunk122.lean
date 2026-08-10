import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk121
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep244 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        8 (lowerPeImt rho 245) (lowerIlImt rho 245)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      9 (lowerPeImt rho 244) (lowerIlImt rho 244) := by
  have r2494 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2494 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2495 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2495 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2496 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2496 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2497 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2497 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2494 at r2494
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2495 at r2495
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2496 at r2496
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2497 at r2497
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 8
    (lowerPeImt rho 244 *
      (1 + 2 * ((leafBitsImt rho)[8]! * (idBitsImt rho)[8]!)
        - (leafBitsImt rho)[8]!
        - (idBitsImt rho)[8]!))
    (lowerIlImt rho 244 + lowerPeImt rho 244 *
      ((1 - (leafBitsImt rho)[8]!) *
        (idBitsImt rho)[8]!))
  rw [show
      lowerPeImt rho 244 *
        (1 + 2 * ((leafBitsImt rho)[8]! * (idBitsImt rho)[8]!)
          - (leafBitsImt rho)[8]!
          - (idBitsImt rho)[8]!) =
        lowerPeImt rho 245 by
    have hPe :
        lowerPe rho 244 *
          (1 + 2 * ((leafBits rho)[8]! * (idBits rho)[8]!)
            - (leafBits rho)[8]!
            - (idBits rho)[8]!) =
          lowerPe rho 245 := by
      rw [leafBits_get rho 8 (by omega),
        idBits_get rho 8 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2497 + 2 * (rho 1996) * r2496
    simpa only [
      lowerPeImt,
      leafBits_get rho 8 (by omega),
      idBits_get rho 8 (by omega),
      leafBitsImt_get rho 8 (by omega),
      idBitsImt_get rho 8 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 244 + lowerPeImt rho 244 *
        ((1 - (leafBitsImt rho)[8]!) *
          (idBitsImt rho)[8]!) =
        lowerIlImt rho 245 by
    have hIl :
        lowerIl rho 244 + lowerPe rho 244 *
          ((1 - (leafBits rho)[8]!) *
            (idBits rho)[8]!) =
          lowerIl rho 245 := by
      rw [leafBits_get rho 8 (by omega),
        idBits_get rho 8 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 244 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 243 + rho 1998 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 243)
      rw [hsum]
      linear_combination (rho 349) * r2494 + r2495
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 8 (by omega),
      idBits_get rho 8 (by omega),
      leafBitsImt_get rho 8 (by omega),
      idBitsImt_get rho 8 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep245 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        7 (lowerPeImt rho 246) (lowerIlImt rho 246)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      8 (lowerPeImt rho 245) (lowerIlImt rho 245) := by
  have r2498 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2498 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2499 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2499 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2500 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2500 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2501 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2501 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2498 at r2498
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2499 at r2499
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2500 at r2500
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2501 at r2501
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 7
    (lowerPeImt rho 245 *
      (1 + 2 * ((leafBitsImt rho)[7]! * (idBitsImt rho)[7]!)
        - (leafBitsImt rho)[7]!
        - (idBitsImt rho)[7]!))
    (lowerIlImt rho 245 + lowerPeImt rho 245 *
      ((1 - (leafBitsImt rho)[7]!) *
        (idBitsImt rho)[7]!))
  rw [show
      lowerPeImt rho 245 *
        (1 + 2 * ((leafBitsImt rho)[7]! * (idBitsImt rho)[7]!)
          - (leafBitsImt rho)[7]!
          - (idBitsImt rho)[7]!) =
        lowerPeImt rho 246 by
    have hPe :
        lowerPe rho 245 *
          (1 + 2 * ((leafBits rho)[7]! * (idBits rho)[7]!)
            - (leafBits rho)[7]!
            - (idBits rho)[7]!) =
          lowerPe rho 246 := by
      rw [leafBits_get rho 7 (by omega),
        idBits_get rho 7 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2501 + 2 * (rho 2000) * r2500
    simpa only [
      lowerPeImt,
      leafBits_get rho 7 (by omega),
      idBits_get rho 7 (by omega),
      leafBitsImt_get rho 7 (by omega),
      idBitsImt_get rho 7 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 245 + lowerPeImt rho 245 *
        ((1 - (leafBitsImt rho)[7]!) *
          (idBitsImt rho)[7]!) =
        lowerIlImt rho 246 by
    have hIl :
        lowerIl rho 245 + lowerPe rho 245 *
          ((1 - (leafBits rho)[7]!) *
            (idBits rho)[7]!) =
          lowerIl rho 246 := by
      rw [leafBits_get rho 7 (by omega),
        idBits_get rho 7 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 245 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 244 + rho 2002 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 244)
      rw [hsum]
      linear_combination (rho 348) * r2498 + r2499
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 7 (by omega),
      idBits_get rho 7 (by omega),
      leafBitsImt_get rho 7 (by omega),
      idBitsImt_get rho 7 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange122 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      7 (lowerPeImt rho 246) (lowerIlImt rho 246)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      9 (lowerPeImt rho 244) (lowerIlImt rho 244) := by
  exact lowerStep244 rho h k (lowerStep245 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
