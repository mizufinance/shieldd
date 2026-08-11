import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk72
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep146 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        106 (lowerPeImt rho 147) (lowerIlImt rho 147)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      107 (lowerPeImt rho 146) (lowerIlImt rho 146) := by
  have r2102 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2102 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2103 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2103 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2104 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2104 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2105 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2105 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2102 at r2102
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2103 at r2103
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2104 at r2104
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2105 at r2105
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 106
    (lowerPeImt rho 146 *
      (1 + 2 * ((leafBitsImt rho)[106]! * (idBitsImt rho)[106]!)
        - (leafBitsImt rho)[106]!
        - (idBitsImt rho)[106]!))
    (lowerIlImt rho 146 + lowerPeImt rho 146 *
      ((1 - (leafBitsImt rho)[106]!) *
        (idBitsImt rho)[106]!))
  rw [show
      lowerPeImt rho 146 *
        (1 + 2 * ((leafBitsImt rho)[106]! * (idBitsImt rho)[106]!)
          - (leafBitsImt rho)[106]!
          - (idBitsImt rho)[106]!) =
        lowerPeImt rho 147 by
    have hPe :
        lowerPe rho 146 *
          (1 + 2 * ((leafBits rho)[106]! * (idBits rho)[106]!)
            - (leafBits rho)[106]!
            - (idBits rho)[106]!) =
          lowerPe rho 147 := by
      rw [leafBits_get rho 106 (by omega),
        idBits_get rho 106 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2105 + 2 * (rho 1604) * r2104
    simpa only [
      lowerPeImt,
      leafBits_get rho 106 (by omega),
      idBits_get rho 106 (by omega),
      leafBitsImt_get rho 106 (by omega),
      idBitsImt_get rho 106 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 146 + lowerPeImt rho 146 *
        ((1 - (leafBitsImt rho)[106]!) *
          (idBitsImt rho)[106]!) =
        lowerIlImt rho 147 by
    have hIl :
        lowerIl rho 146 + lowerPe rho 146 *
          ((1 - (leafBits rho)[106]!) *
            (idBits rho)[106]!) =
          lowerIl rho 147 := by
      rw [leafBits_get rho 106 (by omega),
        idBits_get rho 106 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 146 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 145 + rho 1606 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 145)
      rw [hsum]
      linear_combination (rho 447) * r2102 + r2103
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 106 (by omega),
      idBits_get rho 106 (by omega),
      leafBitsImt_get rho 106 (by omega),
      idBitsImt_get rho 106 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep147 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        105 (lowerPeImt rho 148) (lowerIlImt rho 148)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      106 (lowerPeImt rho 147) (lowerIlImt rho 147) := by
  have r2106 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2106 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2107 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2107 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2108 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2108 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2109 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2109 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2106 at r2106
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2107 at r2107
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2108 at r2108
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2109 at r2109
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 105
    (lowerPeImt rho 147 *
      (1 + 2 * ((leafBitsImt rho)[105]! * (idBitsImt rho)[105]!)
        - (leafBitsImt rho)[105]!
        - (idBitsImt rho)[105]!))
    (lowerIlImt rho 147 + lowerPeImt rho 147 *
      ((1 - (leafBitsImt rho)[105]!) *
        (idBitsImt rho)[105]!))
  rw [show
      lowerPeImt rho 147 *
        (1 + 2 * ((leafBitsImt rho)[105]! * (idBitsImt rho)[105]!)
          - (leafBitsImt rho)[105]!
          - (idBitsImt rho)[105]!) =
        lowerPeImt rho 148 by
    have hPe :
        lowerPe rho 147 *
          (1 + 2 * ((leafBits rho)[105]! * (idBits rho)[105]!)
            - (leafBits rho)[105]!
            - (idBits rho)[105]!) =
          lowerPe rho 148 := by
      rw [leafBits_get rho 105 (by omega),
        idBits_get rho 105 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2109 + 2 * (rho 1608) * r2108
    simpa only [
      lowerPeImt,
      leafBits_get rho 105 (by omega),
      idBits_get rho 105 (by omega),
      leafBitsImt_get rho 105 (by omega),
      idBitsImt_get rho 105 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 147 + lowerPeImt rho 147 *
        ((1 - (leafBitsImt rho)[105]!) *
          (idBitsImt rho)[105]!) =
        lowerIlImt rho 148 by
    have hIl :
        lowerIl rho 147 + lowerPe rho 147 *
          ((1 - (leafBits rho)[105]!) *
            (idBits rho)[105]!) =
          lowerIl rho 148 := by
      rw [leafBits_get rho 105 (by omega),
        idBits_get rho 105 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 147 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 146 + rho 1610 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 146)
      rw [hsum]
      linear_combination (rho 446) * r2106 + r2107
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 105 (by omega),
      idBits_get rho 105 (by omega),
      leafBitsImt_get rho 105 (by omega),
      idBitsImt_get rho 105 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange73 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      105 (lowerPeImt rho 148) (lowerIlImt rho 148)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      107 (lowerPeImt rho 146) (lowerIlImt rho 146) := by
  exact lowerStep146 rho h k (lowerStep147 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
