import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk42
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep86 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        166 (lowerPeImt rho 87) (lowerIlImt rho 87)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      167 (lowerPeImt rho 86) (lowerIlImt rho 86) := by
  have r1862 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1862 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1863 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1863 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1864 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1864 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1865 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1865 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1862 at r1862
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1863 at r1863
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1864 at r1864
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1865 at r1865
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 166
    (lowerPeImt rho 86 *
      (1 + 2 * ((leafBitsImt rho)[166]! * (idBitsImt rho)[166]!)
        - (leafBitsImt rho)[166]!
        - (idBitsImt rho)[166]!))
    (lowerIlImt rho 86 + lowerPeImt rho 86 *
      ((1 - (leafBitsImt rho)[166]!) *
        (idBitsImt rho)[166]!))
  rw [show
      lowerPeImt rho 86 *
        (1 + 2 * ((leafBitsImt rho)[166]! * (idBitsImt rho)[166]!)
          - (leafBitsImt rho)[166]!
          - (idBitsImt rho)[166]!) =
        lowerPeImt rho 87 by
    have hPe :
        lowerPe rho 86 *
          (1 + 2 * ((leafBits rho)[166]! * (idBits rho)[166]!)
            - (leafBits rho)[166]!
            - (idBits rho)[166]!) =
          lowerPe rho 87 := by
      rw [leafBits_get rho 166 (by omega),
        idBits_get rho 166 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1865 + 2 * (rho 1364) * r1864
    simpa only [
      lowerPeImt,
      leafBits_get rho 166 (by omega),
      idBits_get rho 166 (by omega),
      leafBitsImt_get rho 166 (by omega),
      idBitsImt_get rho 166 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 86 + lowerPeImt rho 86 *
        ((1 - (leafBitsImt rho)[166]!) *
          (idBitsImt rho)[166]!) =
        lowerIlImt rho 87 by
    have hIl :
        lowerIl rho 86 + lowerPe rho 86 *
          ((1 - (leafBits rho)[166]!) *
            (idBits rho)[166]!) =
          lowerIl rho 87 := by
      rw [leafBits_get rho 166 (by omega),
        idBits_get rho 166 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 86 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 85 + rho 1366 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 85)
      rw [hsum]
      linear_combination (rho 507) * r1862 + r1863
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 166 (by omega),
      idBits_get rho 166 (by omega),
      leafBitsImt_get rho 166 (by omega),
      idBitsImt_get rho 166 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep87 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        165 (lowerPeImt rho 88) (lowerIlImt rho 88)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      166 (lowerPeImt rho 87) (lowerIlImt rho 87) := by
  have r1866 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1866 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1867 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1867 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1868 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1868 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1869 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1869 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1866 at r1866
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1867 at r1867
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1868 at r1868
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1869 at r1869
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 165
    (lowerPeImt rho 87 *
      (1 + 2 * ((leafBitsImt rho)[165]! * (idBitsImt rho)[165]!)
        - (leafBitsImt rho)[165]!
        - (idBitsImt rho)[165]!))
    (lowerIlImt rho 87 + lowerPeImt rho 87 *
      ((1 - (leafBitsImt rho)[165]!) *
        (idBitsImt rho)[165]!))
  rw [show
      lowerPeImt rho 87 *
        (1 + 2 * ((leafBitsImt rho)[165]! * (idBitsImt rho)[165]!)
          - (leafBitsImt rho)[165]!
          - (idBitsImt rho)[165]!) =
        lowerPeImt rho 88 by
    have hPe :
        lowerPe rho 87 *
          (1 + 2 * ((leafBits rho)[165]! * (idBits rho)[165]!)
            - (leafBits rho)[165]!
            - (idBits rho)[165]!) =
          lowerPe rho 88 := by
      rw [leafBits_get rho 165 (by omega),
        idBits_get rho 165 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1869 + 2 * (rho 1368) * r1868
    simpa only [
      lowerPeImt,
      leafBits_get rho 165 (by omega),
      idBits_get rho 165 (by omega),
      leafBitsImt_get rho 165 (by omega),
      idBitsImt_get rho 165 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 87 + lowerPeImt rho 87 *
        ((1 - (leafBitsImt rho)[165]!) *
          (idBitsImt rho)[165]!) =
        lowerIlImt rho 88 by
    have hIl :
        lowerIl rho 87 + lowerPe rho 87 *
          ((1 - (leafBits rho)[165]!) *
            (idBits rho)[165]!) =
          lowerIl rho 88 := by
      rw [leafBits_get rho 165 (by omega),
        idBits_get rho 165 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 87 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 86 + rho 1370 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 86)
      rw [hsum]
      linear_combination (rho 506) * r1866 + r1867
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 165 (by omega),
      idBits_get rho 165 (by omega),
      leafBitsImt_get rho 165 (by omega),
      idBitsImt_get rho 165 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange43 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      165 (lowerPeImt rho 88) (lowerIlImt rho 88)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      167 (lowerPeImt rho 86) (lowerIlImt rho 86) := by
  exact lowerStep86 rho h k (lowerStep87 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
