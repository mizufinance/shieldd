import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk13
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep28 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        224 (lowerPeImt rho 29) (lowerIlImt rho 29)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      225 (lowerPeImt rho 28) (lowerIlImt rho 28) := by
  have r1630 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1630 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1631 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1631 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1632 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1632 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1633 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1633 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1630 at r1630
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1631 at r1631
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1632 at r1632
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1633 at r1633
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 224
    (lowerPeImt rho 28 *
      (1 + 2 * ((leafBitsImt rho)[224]! * (idBitsImt rho)[224]!)
        - (leafBitsImt rho)[224]!
        - (idBitsImt rho)[224]!))
    (lowerIlImt rho 28 + lowerPeImt rho 28 *
      ((1 - (leafBitsImt rho)[224]!) *
        (idBitsImt rho)[224]!))
  rw [show
      lowerPeImt rho 28 *
        (1 + 2 * ((leafBitsImt rho)[224]! * (idBitsImt rho)[224]!)
          - (leafBitsImt rho)[224]!
          - (idBitsImt rho)[224]!) =
        lowerPeImt rho 29 by
    have hPe :
        lowerPe rho 28 *
          (1 + 2 * ((leafBits rho)[224]! * (idBits rho)[224]!)
            - (leafBits rho)[224]!
            - (idBits rho)[224]!) =
          lowerPe rho 29 := by
      rw [leafBits_get rho 224 (by omega),
        idBits_get rho 224 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1633 + 2 * (rho 1132) * r1632
    simpa only [
      lowerPeImt,
      leafBits_get rho 224 (by omega),
      idBits_get rho 224 (by omega),
      leafBitsImt_get rho 224 (by omega),
      idBitsImt_get rho 224 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 28 + lowerPeImt rho 28 *
        ((1 - (leafBitsImt rho)[224]!) *
          (idBitsImt rho)[224]!) =
        lowerIlImt rho 29 by
    have hIl :
        lowerIl rho 28 + lowerPe rho 28 *
          ((1 - (leafBits rho)[224]!) *
            (idBits rho)[224]!) =
          lowerIl rho 29 := by
      rw [leafBits_get rho 224 (by omega),
        idBits_get rho 224 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 28 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 27 + rho 1134 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 27)
      rw [hsum]
      linear_combination (rho 565) * r1630 + r1631
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 224 (by omega),
      idBits_get rho 224 (by omega),
      leafBitsImt_get rho 224 (by omega),
      idBitsImt_get rho 224 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep29 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        223 (lowerPeImt rho 30) (lowerIlImt rho 30)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      224 (lowerPeImt rho 29) (lowerIlImt rho 29) := by
  have r1634 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1634 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1635 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1635 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1636 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1636 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1637 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1637 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1634 at r1634
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1635 at r1635
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1636 at r1636
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1637 at r1637
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 223
    (lowerPeImt rho 29 *
      (1 + 2 * ((leafBitsImt rho)[223]! * (idBitsImt rho)[223]!)
        - (leafBitsImt rho)[223]!
        - (idBitsImt rho)[223]!))
    (lowerIlImt rho 29 + lowerPeImt rho 29 *
      ((1 - (leafBitsImt rho)[223]!) *
        (idBitsImt rho)[223]!))
  rw [show
      lowerPeImt rho 29 *
        (1 + 2 * ((leafBitsImt rho)[223]! * (idBitsImt rho)[223]!)
          - (leafBitsImt rho)[223]!
          - (idBitsImt rho)[223]!) =
        lowerPeImt rho 30 by
    have hPe :
        lowerPe rho 29 *
          (1 + 2 * ((leafBits rho)[223]! * (idBits rho)[223]!)
            - (leafBits rho)[223]!
            - (idBits rho)[223]!) =
          lowerPe rho 30 := by
      rw [leafBits_get rho 223 (by omega),
        idBits_get rho 223 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1637 + 2 * (rho 1136) * r1636
    simpa only [
      lowerPeImt,
      leafBits_get rho 223 (by omega),
      idBits_get rho 223 (by omega),
      leafBitsImt_get rho 223 (by omega),
      idBitsImt_get rho 223 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 29 + lowerPeImt rho 29 *
        ((1 - (leafBitsImt rho)[223]!) *
          (idBitsImt rho)[223]!) =
        lowerIlImt rho 30 by
    have hIl :
        lowerIl rho 29 + lowerPe rho 29 *
          ((1 - (leafBits rho)[223]!) *
            (idBits rho)[223]!) =
          lowerIl rho 30 := by
      rw [leafBits_get rho 223 (by omega),
        idBits_get rho 223 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 29 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 28 + rho 1138 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 28)
      rw [hsum]
      linear_combination (rho 564) * r1634 + r1635
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 223 (by omega),
      idBits_get rho 223 (by omega),
      leafBitsImt_get rho 223 (by omega),
      idBitsImt_get rho 223 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange14 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      223 (lowerPeImt rho 30) (lowerIlImt rho 30)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      225 (lowerPeImt rho 28) (lowerIlImt rho 28) := by
  exact lowerStep28 rho h k (lowerStep29 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
