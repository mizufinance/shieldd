import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk10
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep22 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        230 (lowerPeImt rho 23) (lowerIlImt rho 23)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      231 (lowerPeImt rho 22) (lowerIlImt rho 22) := by
  have r1606 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1606 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.1
  have r1607 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1607 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.1
  have r1608 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1608 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.1
  have r1609 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1609 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1606 at r1606
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1607 at r1607
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1608 at r1608
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1609 at r1609
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 230
    (lowerPeImt rho 22 *
      (1 + 2 * ((leafBitsImt rho)[230]! * (idBitsImt rho)[230]!)
        - (leafBitsImt rho)[230]!
        - (idBitsImt rho)[230]!))
    (lowerIlImt rho 22 + lowerPeImt rho 22 *
      ((1 - (leafBitsImt rho)[230]!) *
        (idBitsImt rho)[230]!))
  rw [show
      lowerPeImt rho 22 *
        (1 + 2 * ((leafBitsImt rho)[230]! * (idBitsImt rho)[230]!)
          - (leafBitsImt rho)[230]!
          - (idBitsImt rho)[230]!) =
        lowerPeImt rho 23 by
    have hPe :
        lowerPe rho 22 *
          (1 + 2 * ((leafBits rho)[230]! * (idBits rho)[230]!)
            - (leafBits rho)[230]!
            - (idBits rho)[230]!) =
          lowerPe rho 23 := by
      rw [leafBits_get rho 230 (by omega),
        idBits_get rho 230 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1609 + 2 * (rho 1108) * r1608
    simpa only [
      lowerPeImt,
      leafBits_get rho 230 (by omega),
      idBits_get rho 230 (by omega),
      leafBitsImt_get rho 230 (by omega),
      idBitsImt_get rho 230 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 22 + lowerPeImt rho 22 *
        ((1 - (leafBitsImt rho)[230]!) *
          (idBitsImt rho)[230]!) =
        lowerIlImt rho 23 by
    have hIl :
        lowerIl rho 22 + lowerPe rho 22 *
          ((1 - (leafBits rho)[230]!) *
            (idBits rho)[230]!) =
          lowerIl rho 23 := by
      rw [leafBits_get rho 230 (by omega),
        idBits_get rho 230 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 22 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 21 + rho 1110 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 21)
      rw [hsum]
      linear_combination (rho 571) * r1606 + r1607
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 230 (by omega),
      idBits_get rho 230 (by omega),
      leafBitsImt_get rho 230 (by omega),
      idBitsImt_get rho 230 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep23 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        229 (lowerPeImt rho 24) (lowerIlImt rho 24)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      230 (lowerPeImt rho 23) (lowerIlImt rho 23) := by
  have r1610 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1610 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.1
  have r1611 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1611 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.1
  have r1612 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1612 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1613 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1613 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1610 at r1610
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1611 at r1611
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1612 at r1612
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1613 at r1613
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 229
    (lowerPeImt rho 23 *
      (1 + 2 * ((leafBitsImt rho)[229]! * (idBitsImt rho)[229]!)
        - (leafBitsImt rho)[229]!
        - (idBitsImt rho)[229]!))
    (lowerIlImt rho 23 + lowerPeImt rho 23 *
      ((1 - (leafBitsImt rho)[229]!) *
        (idBitsImt rho)[229]!))
  rw [show
      lowerPeImt rho 23 *
        (1 + 2 * ((leafBitsImt rho)[229]! * (idBitsImt rho)[229]!)
          - (leafBitsImt rho)[229]!
          - (idBitsImt rho)[229]!) =
        lowerPeImt rho 24 by
    have hPe :
        lowerPe rho 23 *
          (1 + 2 * ((leafBits rho)[229]! * (idBits rho)[229]!)
            - (leafBits rho)[229]!
            - (idBits rho)[229]!) =
          lowerPe rho 24 := by
      rw [leafBits_get rho 229 (by omega),
        idBits_get rho 229 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1613 + 2 * (rho 1112) * r1612
    simpa only [
      lowerPeImt,
      leafBits_get rho 229 (by omega),
      idBits_get rho 229 (by omega),
      leafBitsImt_get rho 229 (by omega),
      idBitsImt_get rho 229 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 23 + lowerPeImt rho 23 *
        ((1 - (leafBitsImt rho)[229]!) *
          (idBitsImt rho)[229]!) =
        lowerIlImt rho 24 by
    have hIl :
        lowerIl rho 23 + lowerPe rho 23 *
          ((1 - (leafBits rho)[229]!) *
            (idBits rho)[229]!) =
          lowerIl rho 24 := by
      rw [leafBits_get rho 229 (by omega),
        idBits_get rho 229 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 23 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 22 + rho 1114 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 22)
      rw [hsum]
      linear_combination (rho 570) * r1610 + r1611
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 229 (by omega),
      idBits_get rho 229 (by omega),
      leafBitsImt_get rho 229 (by omega),
      idBitsImt_get rho 229 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange11 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      229 (lowerPeImt rho 24) (lowerIlImt rho 24)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      231 (lowerPeImt rho 22) (lowerIlImt rho 22) := by
  exact lowerStep22 rho h k (lowerStep23 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
