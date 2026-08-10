import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk50
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep102 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        150 (lowerPeImt rho 103) (lowerIlImt rho 103)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      151 (lowerPeImt rho 102) (lowerIlImt rho 102) := by
  have r1926 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1926 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.1
  have r1927 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1927 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.1
  have r1928 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1928 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.1
  have r1929 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1929 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1926 at r1926
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1927 at r1927
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1928 at r1928
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1929 at r1929
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 150
    (lowerPeImt rho 102 *
      (1 + 2 * ((leafBitsImt rho)[150]! * (idBitsImt rho)[150]!)
        - (leafBitsImt rho)[150]!
        - (idBitsImt rho)[150]!))
    (lowerIlImt rho 102 + lowerPeImt rho 102 *
      ((1 - (leafBitsImt rho)[150]!) *
        (idBitsImt rho)[150]!))
  rw [show
      lowerPeImt rho 102 *
        (1 + 2 * ((leafBitsImt rho)[150]! * (idBitsImt rho)[150]!)
          - (leafBitsImt rho)[150]!
          - (idBitsImt rho)[150]!) =
        lowerPeImt rho 103 by
    have hPe :
        lowerPe rho 102 *
          (1 + 2 * ((leafBits rho)[150]! * (idBits rho)[150]!)
            - (leafBits rho)[150]!
            - (idBits rho)[150]!) =
          lowerPe rho 103 := by
      rw [leafBits_get rho 150 (by omega),
        idBits_get rho 150 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1929 + 2 * (rho 1428) * r1928
    simpa only [
      lowerPeImt,
      leafBits_get rho 150 (by omega),
      idBits_get rho 150 (by omega),
      leafBitsImt_get rho 150 (by omega),
      idBitsImt_get rho 150 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 102 + lowerPeImt rho 102 *
        ((1 - (leafBitsImt rho)[150]!) *
          (idBitsImt rho)[150]!) =
        lowerIlImt rho 103 by
    have hIl :
        lowerIl rho 102 + lowerPe rho 102 *
          ((1 - (leafBits rho)[150]!) *
            (idBits rho)[150]!) =
          lowerIl rho 103 := by
      rw [leafBits_get rho 150 (by omega),
        idBits_get rho 150 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 102 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 101 + rho 1430 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 101)
      rw [hsum]
      linear_combination (rho 491) * r1926 + r1927
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 150 (by omega),
      idBits_get rho 150 (by omega),
      leafBitsImt_get rho 150 (by omega),
      idBitsImt_get rho 150 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep103 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        149 (lowerPeImt rho 104) (lowerIlImt rho 104)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      150 (lowerPeImt rho 103) (lowerIlImt rho 103) := by
  have r1930 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1930 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.1
  have r1931 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1931 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.1
  have r1932 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1932 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1933 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1933 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1930 at r1930
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1931 at r1931
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1932 at r1932
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1933 at r1933
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 149
    (lowerPeImt rho 103 *
      (1 + 2 * ((leafBitsImt rho)[149]! * (idBitsImt rho)[149]!)
        - (leafBitsImt rho)[149]!
        - (idBitsImt rho)[149]!))
    (lowerIlImt rho 103 + lowerPeImt rho 103 *
      ((1 - (leafBitsImt rho)[149]!) *
        (idBitsImt rho)[149]!))
  rw [show
      lowerPeImt rho 103 *
        (1 + 2 * ((leafBitsImt rho)[149]! * (idBitsImt rho)[149]!)
          - (leafBitsImt rho)[149]!
          - (idBitsImt rho)[149]!) =
        lowerPeImt rho 104 by
    have hPe :
        lowerPe rho 103 *
          (1 + 2 * ((leafBits rho)[149]! * (idBits rho)[149]!)
            - (leafBits rho)[149]!
            - (idBits rho)[149]!) =
          lowerPe rho 104 := by
      rw [leafBits_get rho 149 (by omega),
        idBits_get rho 149 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1933 + 2 * (rho 1432) * r1932
    simpa only [
      lowerPeImt,
      leafBits_get rho 149 (by omega),
      idBits_get rho 149 (by omega),
      leafBitsImt_get rho 149 (by omega),
      idBitsImt_get rho 149 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 103 + lowerPeImt rho 103 *
        ((1 - (leafBitsImt rho)[149]!) *
          (idBitsImt rho)[149]!) =
        lowerIlImt rho 104 by
    have hIl :
        lowerIl rho 103 + lowerPe rho 103 *
          ((1 - (leafBits rho)[149]!) *
            (idBits rho)[149]!) =
          lowerIl rho 104 := by
      rw [leafBits_get rho 149 (by omega),
        idBits_get rho 149 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 103 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 102 + rho 1434 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 102)
      rw [hsum]
      linear_combination (rho 490) * r1930 + r1931
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 149 (by omega),
      idBits_get rho 149 (by omega),
      leafBitsImt_get rho 149 (by omega),
      idBitsImt_get rho 149 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange51 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      149 (lowerPeImt rho 104) (lowerIlImt rho 104)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      151 (lowerPeImt rho 102) (lowerIlImt rho 102) := by
  exact lowerStep102 rho h k (lowerStep103 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
