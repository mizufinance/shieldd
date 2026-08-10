import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk40
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep82 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        170 (lowerPeImt rho 83) (lowerIlImt rho 83)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      171 (lowerPeImt rho 82) (lowerIlImt rho 82) := by
  have r1846 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1846 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.1
  have r1847 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1847 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.1
  have r1848 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1848 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.1
  have r1849 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1849 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1846 at r1846
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1847 at r1847
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1848 at r1848
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1849 at r1849
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 170
    (lowerPeImt rho 82 *
      (1 + 2 * ((leafBitsImt rho)[170]! * (idBitsImt rho)[170]!)
        - (leafBitsImt rho)[170]!
        - (idBitsImt rho)[170]!))
    (lowerIlImt rho 82 + lowerPeImt rho 82 *
      ((1 - (leafBitsImt rho)[170]!) *
        (idBitsImt rho)[170]!))
  rw [show
      lowerPeImt rho 82 *
        (1 + 2 * ((leafBitsImt rho)[170]! * (idBitsImt rho)[170]!)
          - (leafBitsImt rho)[170]!
          - (idBitsImt rho)[170]!) =
        lowerPeImt rho 83 by
    have hPe :
        lowerPe rho 82 *
          (1 + 2 * ((leafBits rho)[170]! * (idBits rho)[170]!)
            - (leafBits rho)[170]!
            - (idBits rho)[170]!) =
          lowerPe rho 83 := by
      rw [leafBits_get rho 170 (by omega),
        idBits_get rho 170 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1849 + 2 * (rho 1348) * r1848
    simpa only [
      lowerPeImt,
      leafBits_get rho 170 (by omega),
      idBits_get rho 170 (by omega),
      leafBitsImt_get rho 170 (by omega),
      idBitsImt_get rho 170 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 82 + lowerPeImt rho 82 *
        ((1 - (leafBitsImt rho)[170]!) *
          (idBitsImt rho)[170]!) =
        lowerIlImt rho 83 by
    have hIl :
        lowerIl rho 82 + lowerPe rho 82 *
          ((1 - (leafBits rho)[170]!) *
            (idBits rho)[170]!) =
          lowerIl rho 83 := by
      rw [leafBits_get rho 170 (by omega),
        idBits_get rho 170 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 82 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 81 + rho 1350 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 81)
      rw [hsum]
      linear_combination (rho 511) * r1846 + r1847
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 170 (by omega),
      idBits_get rho 170 (by omega),
      leafBitsImt_get rho 170 (by omega),
      idBitsImt_get rho 170 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep83 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        169 (lowerPeImt rho 84) (lowerIlImt rho 84)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      170 (lowerPeImt rho 83) (lowerIlImt rho 83) := by
  have r1850 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1850 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.1
  have r1851 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1851 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.1
  have r1852 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1852 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1853 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1853 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1850 at r1850
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1851 at r1851
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1852 at r1852
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1853 at r1853
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 169
    (lowerPeImt rho 83 *
      (1 + 2 * ((leafBitsImt rho)[169]! * (idBitsImt rho)[169]!)
        - (leafBitsImt rho)[169]!
        - (idBitsImt rho)[169]!))
    (lowerIlImt rho 83 + lowerPeImt rho 83 *
      ((1 - (leafBitsImt rho)[169]!) *
        (idBitsImt rho)[169]!))
  rw [show
      lowerPeImt rho 83 *
        (1 + 2 * ((leafBitsImt rho)[169]! * (idBitsImt rho)[169]!)
          - (leafBitsImt rho)[169]!
          - (idBitsImt rho)[169]!) =
        lowerPeImt rho 84 by
    have hPe :
        lowerPe rho 83 *
          (1 + 2 * ((leafBits rho)[169]! * (idBits rho)[169]!)
            - (leafBits rho)[169]!
            - (idBits rho)[169]!) =
          lowerPe rho 84 := by
      rw [leafBits_get rho 169 (by omega),
        idBits_get rho 169 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1853 + 2 * (rho 1352) * r1852
    simpa only [
      lowerPeImt,
      leafBits_get rho 169 (by omega),
      idBits_get rho 169 (by omega),
      leafBitsImt_get rho 169 (by omega),
      idBitsImt_get rho 169 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 83 + lowerPeImt rho 83 *
        ((1 - (leafBitsImt rho)[169]!) *
          (idBitsImt rho)[169]!) =
        lowerIlImt rho 84 by
    have hIl :
        lowerIl rho 83 + lowerPe rho 83 *
          ((1 - (leafBits rho)[169]!) *
            (idBits rho)[169]!) =
          lowerIl rho 84 := by
      rw [leafBits_get rho 169 (by omega),
        idBits_get rho 169 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 83 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 82 + rho 1354 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 82)
      rw [hsum]
      linear_combination (rho 510) * r1850 + r1851
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 169 (by omega),
      idBits_get rho 169 (by omega),
      leafBitsImt_get rho 169 (by omega),
      idBitsImt_get rho 169 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange41 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      169 (lowerPeImt rho 84) (lowerIlImt rho 84)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      171 (lowerPeImt rho 82) (lowerIlImt rho 82) := by
  exact lowerStep82 rho h k (lowerStep83 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
