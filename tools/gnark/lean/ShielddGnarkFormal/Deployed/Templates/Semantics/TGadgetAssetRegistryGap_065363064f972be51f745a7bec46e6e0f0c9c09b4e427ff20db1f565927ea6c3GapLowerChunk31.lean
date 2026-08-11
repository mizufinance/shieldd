import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk30
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep62 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        190 (lowerPeImt rho 63) (lowerIlImt rho 63)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      191 (lowerPeImt rho 62) (lowerIlImt rho 62) := by
  have r1766 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1766 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.1
  have r1767 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1767 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.1
  have r1768 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1768 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.1
  have r1769 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1769 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1766 at r1766
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1767 at r1767
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1768 at r1768
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1769 at r1769
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 190
    (lowerPeImt rho 62 *
      (1 + 2 * ((leafBitsImt rho)[190]! * (idBitsImt rho)[190]!)
        - (leafBitsImt rho)[190]!
        - (idBitsImt rho)[190]!))
    (lowerIlImt rho 62 + lowerPeImt rho 62 *
      ((1 - (leafBitsImt rho)[190]!) *
        (idBitsImt rho)[190]!))
  rw [show
      lowerPeImt rho 62 *
        (1 + 2 * ((leafBitsImt rho)[190]! * (idBitsImt rho)[190]!)
          - (leafBitsImt rho)[190]!
          - (idBitsImt rho)[190]!) =
        lowerPeImt rho 63 by
    have hPe :
        lowerPe rho 62 *
          (1 + 2 * ((leafBits rho)[190]! * (idBits rho)[190]!)
            - (leafBits rho)[190]!
            - (idBits rho)[190]!) =
          lowerPe rho 63 := by
      rw [leafBits_get rho 190 (by omega),
        idBits_get rho 190 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1769 + 2 * (rho 1268) * r1768
    simpa only [
      lowerPeImt,
      leafBits_get rho 190 (by omega),
      idBits_get rho 190 (by omega),
      leafBitsImt_get rho 190 (by omega),
      idBitsImt_get rho 190 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 62 + lowerPeImt rho 62 *
        ((1 - (leafBitsImt rho)[190]!) *
          (idBitsImt rho)[190]!) =
        lowerIlImt rho 63 by
    have hIl :
        lowerIl rho 62 + lowerPe rho 62 *
          ((1 - (leafBits rho)[190]!) *
            (idBits rho)[190]!) =
          lowerIl rho 63 := by
      rw [leafBits_get rho 190 (by omega),
        idBits_get rho 190 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 62 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 61 + rho 1270 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 61)
      rw [hsum]
      linear_combination (rho 531) * r1766 + r1767
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 190 (by omega),
      idBits_get rho 190 (by omega),
      leafBitsImt_get rho 190 (by omega),
      idBitsImt_get rho 190 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep63 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        189 (lowerPeImt rho 64) (lowerIlImt rho 64)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      190 (lowerPeImt rho 63) (lowerIlImt rho 63) := by
  have r1770 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1770 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.1
  have r1771 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1771 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.1
  have r1772 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1772 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1773 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1773 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1770 at r1770
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1771 at r1771
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1772 at r1772
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1773 at r1773
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 189
    (lowerPeImt rho 63 *
      (1 + 2 * ((leafBitsImt rho)[189]! * (idBitsImt rho)[189]!)
        - (leafBitsImt rho)[189]!
        - (idBitsImt rho)[189]!))
    (lowerIlImt rho 63 + lowerPeImt rho 63 *
      ((1 - (leafBitsImt rho)[189]!) *
        (idBitsImt rho)[189]!))
  rw [show
      lowerPeImt rho 63 *
        (1 + 2 * ((leafBitsImt rho)[189]! * (idBitsImt rho)[189]!)
          - (leafBitsImt rho)[189]!
          - (idBitsImt rho)[189]!) =
        lowerPeImt rho 64 by
    have hPe :
        lowerPe rho 63 *
          (1 + 2 * ((leafBits rho)[189]! * (idBits rho)[189]!)
            - (leafBits rho)[189]!
            - (idBits rho)[189]!) =
          lowerPe rho 64 := by
      rw [leafBits_get rho 189 (by omega),
        idBits_get rho 189 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1773 + 2 * (rho 1272) * r1772
    simpa only [
      lowerPeImt,
      leafBits_get rho 189 (by omega),
      idBits_get rho 189 (by omega),
      leafBitsImt_get rho 189 (by omega),
      idBitsImt_get rho 189 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 63 + lowerPeImt rho 63 *
        ((1 - (leafBitsImt rho)[189]!) *
          (idBitsImt rho)[189]!) =
        lowerIlImt rho 64 by
    have hIl :
        lowerIl rho 63 + lowerPe rho 63 *
          ((1 - (leafBits rho)[189]!) *
            (idBits rho)[189]!) =
          lowerIl rho 64 := by
      rw [leafBits_get rho 189 (by omega),
        idBits_get rho 189 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 63 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 62 + rho 1274 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 62)
      rw [hsum]
      linear_combination (rho 530) * r1770 + r1771
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 189 (by omega),
      idBits_get rho 189 (by omega),
      leafBitsImt_get rho 189 (by omega),
      idBitsImt_get rho 189 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange31 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      189 (lowerPeImt rho 64) (lowerIlImt rho 64)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      191 (lowerPeImt rho 62) (lowerIlImt rho 62) := by
  exact lowerStep62 rho h k (lowerStep63 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
