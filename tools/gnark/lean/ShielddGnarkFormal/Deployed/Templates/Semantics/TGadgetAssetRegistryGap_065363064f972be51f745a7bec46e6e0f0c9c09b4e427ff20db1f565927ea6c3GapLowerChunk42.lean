import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk41
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep84 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        168 (lowerPeImt rho 85) (lowerIlImt rho 85)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      169 (lowerPeImt rho 84) (lowerIlImt rho 84) := by
  have r1854 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1854 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1855 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1855 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1856 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1856 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1857 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1857 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1854 at r1854
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1855 at r1855
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1856 at r1856
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1857 at r1857
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 168
    (lowerPeImt rho 84 *
      (1 + 2 * ((leafBitsImt rho)[168]! * (idBitsImt rho)[168]!)
        - (leafBitsImt rho)[168]!
        - (idBitsImt rho)[168]!))
    (lowerIlImt rho 84 + lowerPeImt rho 84 *
      ((1 - (leafBitsImt rho)[168]!) *
        (idBitsImt rho)[168]!))
  rw [show
      lowerPeImt rho 84 *
        (1 + 2 * ((leafBitsImt rho)[168]! * (idBitsImt rho)[168]!)
          - (leafBitsImt rho)[168]!
          - (idBitsImt rho)[168]!) =
        lowerPeImt rho 85 by
    have hPe :
        lowerPe rho 84 *
          (1 + 2 * ((leafBits rho)[168]! * (idBits rho)[168]!)
            - (leafBits rho)[168]!
            - (idBits rho)[168]!) =
          lowerPe rho 85 := by
      rw [leafBits_get rho 168 (by omega),
        idBits_get rho 168 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1857 + 2 * (rho 1356) * r1856
    simpa only [
      lowerPeImt,
      leafBits_get rho 168 (by omega),
      idBits_get rho 168 (by omega),
      leafBitsImt_get rho 168 (by omega),
      idBitsImt_get rho 168 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 84 + lowerPeImt rho 84 *
        ((1 - (leafBitsImt rho)[168]!) *
          (idBitsImt rho)[168]!) =
        lowerIlImt rho 85 by
    have hIl :
        lowerIl rho 84 + lowerPe rho 84 *
          ((1 - (leafBits rho)[168]!) *
            (idBits rho)[168]!) =
          lowerIl rho 85 := by
      rw [leafBits_get rho 168 (by omega),
        idBits_get rho 168 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 84 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 83 + rho 1358 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 83)
      rw [hsum]
      linear_combination (rho 509) * r1854 + r1855
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 168 (by omega),
      idBits_get rho 168 (by omega),
      leafBitsImt_get rho 168 (by omega),
      idBitsImt_get rho 168 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep85 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        167 (lowerPeImt rho 86) (lowerIlImt rho 86)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      168 (lowerPeImt rho 85) (lowerIlImt rho 85) := by
  have r1858 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1858 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1859 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1859 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1860 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1860 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1861 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1861 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1858 at r1858
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1859 at r1859
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1860 at r1860
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1861 at r1861
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 167
    (lowerPeImt rho 85 *
      (1 + 2 * ((leafBitsImt rho)[167]! * (idBitsImt rho)[167]!)
        - (leafBitsImt rho)[167]!
        - (idBitsImt rho)[167]!))
    (lowerIlImt rho 85 + lowerPeImt rho 85 *
      ((1 - (leafBitsImt rho)[167]!) *
        (idBitsImt rho)[167]!))
  rw [show
      lowerPeImt rho 85 *
        (1 + 2 * ((leafBitsImt rho)[167]! * (idBitsImt rho)[167]!)
          - (leafBitsImt rho)[167]!
          - (idBitsImt rho)[167]!) =
        lowerPeImt rho 86 by
    have hPe :
        lowerPe rho 85 *
          (1 + 2 * ((leafBits rho)[167]! * (idBits rho)[167]!)
            - (leafBits rho)[167]!
            - (idBits rho)[167]!) =
          lowerPe rho 86 := by
      rw [leafBits_get rho 167 (by omega),
        idBits_get rho 167 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1861 + 2 * (rho 1360) * r1860
    simpa only [
      lowerPeImt,
      leafBits_get rho 167 (by omega),
      idBits_get rho 167 (by omega),
      leafBitsImt_get rho 167 (by omega),
      idBitsImt_get rho 167 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 85 + lowerPeImt rho 85 *
        ((1 - (leafBitsImt rho)[167]!) *
          (idBitsImt rho)[167]!) =
        lowerIlImt rho 86 by
    have hIl :
        lowerIl rho 85 + lowerPe rho 85 *
          ((1 - (leafBits rho)[167]!) *
            (idBits rho)[167]!) =
          lowerIl rho 86 := by
      rw [leafBits_get rho 167 (by omega),
        idBits_get rho 167 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 85 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 84 + rho 1362 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 84)
      rw [hsum]
      linear_combination (rho 508) * r1858 + r1859
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 167 (by omega),
      idBits_get rho 167 (by omega),
      leafBitsImt_get rho 167 (by omega),
      idBitsImt_get rho 167 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange42 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      167 (lowerPeImt rho 86) (lowerIlImt rho 86)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      169 (lowerPeImt rho 84) (lowerIlImt rho 84) := by
  exact lowerStep84 rho h k (lowerStep85 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
