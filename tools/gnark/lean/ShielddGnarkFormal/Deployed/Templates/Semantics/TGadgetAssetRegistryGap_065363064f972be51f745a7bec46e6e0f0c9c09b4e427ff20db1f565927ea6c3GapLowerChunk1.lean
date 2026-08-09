import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk0
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep2 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        250 (lowerPeImt rho 3) (lowerIlImt rho 3)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      251 (lowerPeImt rho 2) (lowerIlImt rho 2) := by
  have r1526 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1526 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.1
  have r1527 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1527 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.1
  have r1528 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1528 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.1
  have r1529 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1529 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1526 at r1526
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1527 at r1527
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1528 at r1528
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1529 at r1529
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 250
    (lowerPeImt rho 2 *
      (1 + 2 * ((leafBitsImt rho)[250]! * (idBitsImt rho)[250]!)
        - (leafBitsImt rho)[250]!
        - (idBitsImt rho)[250]!))
    (lowerIlImt rho 2 + lowerPeImt rho 2 *
      ((1 - (leafBitsImt rho)[250]!) *
        (idBitsImt rho)[250]!))
  rw [show
      lowerPeImt rho 2 *
        (1 + 2 * ((leafBitsImt rho)[250]! * (idBitsImt rho)[250]!)
          - (leafBitsImt rho)[250]!
          - (idBitsImt rho)[250]!) =
        lowerPeImt rho 3 by
    have hPe :
        lowerPe rho 2 *
          (1 + 2 * ((leafBits rho)[250]! * (idBits rho)[250]!)
            - (leafBits rho)[250]!
            - (idBits rho)[250]!) =
          lowerPe rho 3 := by
      rw [leafBits_get rho 250 (by omega),
        idBits_get rho 250 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1529 + 2 * (rho 1028) * r1528
    simpa only [
      lowerPeImt,
      leafBits_get rho 250 (by omega),
      idBits_get rho 250 (by omega),
      leafBitsImt_get rho 250 (by omega),
      idBitsImt_get rho 250 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 2 + lowerPeImt rho 2 *
        ((1 - (leafBitsImt rho)[250]!) *
          (idBitsImt rho)[250]!) =
        lowerIlImt rho 3 by
    have hIl :
        lowerIl rho 2 + lowerPe rho 2 *
          ((1 - (leafBits rho)[250]!) *
            (idBits rho)[250]!) =
          lowerIl rho 3 := by
      rw [leafBits_get rho 250 (by omega),
        idBits_get rho 250 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 2 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 1 + rho 1030 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 1)
      rw [hsum]
      linear_combination (rho 591) * r1526 + r1527
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 250 (by omega),
      idBits_get rho 250 (by omega),
      leafBitsImt_get rho 250 (by omega),
      idBitsImt_get rho 250 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep3 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        249 (lowerPeImt rho 4) (lowerIlImt rho 4)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      250 (lowerPeImt rho 3) (lowerIlImt rho 3) := by
  have r1530 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1530 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.1
  have r1531 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1531 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.1
  have r1532 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1532 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1533 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1533 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1530 at r1530
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1531 at r1531
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1532 at r1532
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1533 at r1533
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 249
    (lowerPeImt rho 3 *
      (1 + 2 * ((leafBitsImt rho)[249]! * (idBitsImt rho)[249]!)
        - (leafBitsImt rho)[249]!
        - (idBitsImt rho)[249]!))
    (lowerIlImt rho 3 + lowerPeImt rho 3 *
      ((1 - (leafBitsImt rho)[249]!) *
        (idBitsImt rho)[249]!))
  rw [show
      lowerPeImt rho 3 *
        (1 + 2 * ((leafBitsImt rho)[249]! * (idBitsImt rho)[249]!)
          - (leafBitsImt rho)[249]!
          - (idBitsImt rho)[249]!) =
        lowerPeImt rho 4 by
    have hPe :
        lowerPe rho 3 *
          (1 + 2 * ((leafBits rho)[249]! * (idBits rho)[249]!)
            - (leafBits rho)[249]!
            - (idBits rho)[249]!) =
          lowerPe rho 4 := by
      rw [leafBits_get rho 249 (by omega),
        idBits_get rho 249 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1533 + 2 * (rho 1032) * r1532
    simpa only [
      lowerPeImt,
      leafBits_get rho 249 (by omega),
      idBits_get rho 249 (by omega),
      leafBitsImt_get rho 249 (by omega),
      idBitsImt_get rho 249 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 3 + lowerPeImt rho 3 *
        ((1 - (leafBitsImt rho)[249]!) *
          (idBitsImt rho)[249]!) =
        lowerIlImt rho 4 by
    have hIl :
        lowerIl rho 3 + lowerPe rho 3 *
          ((1 - (leafBits rho)[249]!) *
            (idBits rho)[249]!) =
          lowerIl rho 4 := by
      rw [leafBits_get rho 249 (by omega),
        idBits_get rho 249 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 3 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 2 + rho 1034 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 2)
      rw [hsum]
      linear_combination (rho 590) * r1530 + r1531
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 249 (by omega),
      idBits_get rho 249 (by omega),
      leafBitsImt_get rho 249 (by omega),
      idBitsImt_get rho 249 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange1 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      249 (lowerPeImt rho 4) (lowerIlImt rho 4)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      251 (lowerPeImt rho 2) (lowerIlImt rho 2) := by
  exact lowerStep2 rho h k (lowerStep3 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
