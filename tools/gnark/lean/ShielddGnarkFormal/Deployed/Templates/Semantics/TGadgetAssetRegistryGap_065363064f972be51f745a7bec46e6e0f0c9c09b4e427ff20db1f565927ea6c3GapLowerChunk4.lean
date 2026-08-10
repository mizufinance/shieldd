import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk3
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep8 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        244 (lowerPeImt rho 9) (lowerIlImt rho 9)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      245 (lowerPeImt rho 8) (lowerIlImt rho 8) := by
  have r1550 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1550 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1551 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1551 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1552 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1552 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1553 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1553 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1550 at r1550
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1551 at r1551
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1552 at r1552
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1553 at r1553
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 244
    (lowerPeImt rho 8 *
      (1 + 2 * ((leafBitsImt rho)[244]! * (idBitsImt rho)[244]!)
        - (leafBitsImt rho)[244]!
        - (idBitsImt rho)[244]!))
    (lowerIlImt rho 8 + lowerPeImt rho 8 *
      ((1 - (leafBitsImt rho)[244]!) *
        (idBitsImt rho)[244]!))
  rw [show
      lowerPeImt rho 8 *
        (1 + 2 * ((leafBitsImt rho)[244]! * (idBitsImt rho)[244]!)
          - (leafBitsImt rho)[244]!
          - (idBitsImt rho)[244]!) =
        lowerPeImt rho 9 by
    have hPe :
        lowerPe rho 8 *
          (1 + 2 * ((leafBits rho)[244]! * (idBits rho)[244]!)
            - (leafBits rho)[244]!
            - (idBits rho)[244]!) =
          lowerPe rho 9 := by
      rw [leafBits_get rho 244 (by omega),
        idBits_get rho 244 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1553 + 2 * (rho 1052) * r1552
    simpa only [
      lowerPeImt,
      leafBits_get rho 244 (by omega),
      idBits_get rho 244 (by omega),
      leafBitsImt_get rho 244 (by omega),
      idBitsImt_get rho 244 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 8 + lowerPeImt rho 8 *
        ((1 - (leafBitsImt rho)[244]!) *
          (idBitsImt rho)[244]!) =
        lowerIlImt rho 9 by
    have hIl :
        lowerIl rho 8 + lowerPe rho 8 *
          ((1 - (leafBits rho)[244]!) *
            (idBits rho)[244]!) =
          lowerIl rho 9 := by
      rw [leafBits_get rho 244 (by omega),
        idBits_get rho 244 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 8 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 7 + rho 1054 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 7)
      rw [hsum]
      linear_combination (rho 585) * r1550 + r1551
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 244 (by omega),
      idBits_get rho 244 (by omega),
      leafBitsImt_get rho 244 (by omega),
      idBitsImt_get rho 244 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep9 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        243 (lowerPeImt rho 10) (lowerIlImt rho 10)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      244 (lowerPeImt rho 9) (lowerIlImt rho 9) := by
  have r1554 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1554 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1555 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1555 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1556 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1556 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1557 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1557 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1554 at r1554
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1555 at r1555
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1556 at r1556
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1557 at r1557
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 243
    (lowerPeImt rho 9 *
      (1 + 2 * ((leafBitsImt rho)[243]! * (idBitsImt rho)[243]!)
        - (leafBitsImt rho)[243]!
        - (idBitsImt rho)[243]!))
    (lowerIlImt rho 9 + lowerPeImt rho 9 *
      ((1 - (leafBitsImt rho)[243]!) *
        (idBitsImt rho)[243]!))
  rw [show
      lowerPeImt rho 9 *
        (1 + 2 * ((leafBitsImt rho)[243]! * (idBitsImt rho)[243]!)
          - (leafBitsImt rho)[243]!
          - (idBitsImt rho)[243]!) =
        lowerPeImt rho 10 by
    have hPe :
        lowerPe rho 9 *
          (1 + 2 * ((leafBits rho)[243]! * (idBits rho)[243]!)
            - (leafBits rho)[243]!
            - (idBits rho)[243]!) =
          lowerPe rho 10 := by
      rw [leafBits_get rho 243 (by omega),
        idBits_get rho 243 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1557 + 2 * (rho 1056) * r1556
    simpa only [
      lowerPeImt,
      leafBits_get rho 243 (by omega),
      idBits_get rho 243 (by omega),
      leafBitsImt_get rho 243 (by omega),
      idBitsImt_get rho 243 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 9 + lowerPeImt rho 9 *
        ((1 - (leafBitsImt rho)[243]!) *
          (idBitsImt rho)[243]!) =
        lowerIlImt rho 10 by
    have hIl :
        lowerIl rho 9 + lowerPe rho 9 *
          ((1 - (leafBits rho)[243]!) *
            (idBits rho)[243]!) =
          lowerIl rho 10 := by
      rw [leafBits_get rho 243 (by omega),
        idBits_get rho 243 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 9 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 8 + rho 1058 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 8)
      rw [hsum]
      linear_combination (rho 584) * r1554 + r1555
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 243 (by omega),
      idBits_get rho 243 (by omega),
      leafBitsImt_get rho 243 (by omega),
      idBitsImt_get rho 243 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange4 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      243 (lowerPeImt rho 10) (lowerIlImt rho 10)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      245 (lowerPeImt rho 8) (lowerIlImt rho 8) := by
  exact lowerStep8 rho h k (lowerStep9 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
