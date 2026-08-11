import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk39
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep80 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        172 (lowerPeImt rho 81) (lowerIlImt rho 81)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      173 (lowerPeImt rho 80) (lowerIlImt rho 80) := by
  have r1838 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1838 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1839 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1839 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2
  have r1840 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1840 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1
  have r1841 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1841 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1838 at r1838
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1839 at r1839
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1840 at r1840
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1841 at r1841
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 172
    (lowerPeImt rho 80 *
      (1 + 2 * ((leafBitsImt rho)[172]! * (idBitsImt rho)[172]!)
        - (leafBitsImt rho)[172]!
        - (idBitsImt rho)[172]!))
    (lowerIlImt rho 80 + lowerPeImt rho 80 *
      ((1 - (leafBitsImt rho)[172]!) *
        (idBitsImt rho)[172]!))
  rw [show
      lowerPeImt rho 80 *
        (1 + 2 * ((leafBitsImt rho)[172]! * (idBitsImt rho)[172]!)
          - (leafBitsImt rho)[172]!
          - (idBitsImt rho)[172]!) =
        lowerPeImt rho 81 by
    have hPe :
        lowerPe rho 80 *
          (1 + 2 * ((leafBits rho)[172]! * (idBits rho)[172]!)
            - (leafBits rho)[172]!
            - (idBits rho)[172]!) =
          lowerPe rho 81 := by
      rw [leafBits_get rho 172 (by omega),
        idBits_get rho 172 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1841 + 2 * (rho 1340) * r1840
    simpa only [
      lowerPeImt,
      leafBits_get rho 172 (by omega),
      idBits_get rho 172 (by omega),
      leafBitsImt_get rho 172 (by omega),
      idBitsImt_get rho 172 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 80 + lowerPeImt rho 80 *
        ((1 - (leafBitsImt rho)[172]!) *
          (idBitsImt rho)[172]!) =
        lowerIlImt rho 81 by
    have hIl :
        lowerIl rho 80 + lowerPe rho 80 *
          ((1 - (leafBits rho)[172]!) *
            (idBits rho)[172]!) =
          lowerIl rho 81 := by
      rw [leafBits_get rho 172 (by omega),
        idBits_get rho 172 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 80 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 79 + rho 1342 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 79)
      rw [hsum]
      linear_combination (rho 513) * r1838 + r1839
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 172 (by omega),
      idBits_get rho 172 (by omega),
      leafBitsImt_get rho 172 (by omega),
      idBitsImt_get rho 172 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep81 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        171 (lowerPeImt rho 82) (lowerIlImt rho 82)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      172 (lowerPeImt rho 81) (lowerIlImt rho 81) := by
  have r1842 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1842 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.1
  have r1843 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1843 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.1
  have r1844 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1844 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.1
  have r1845 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1845 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1842 at r1842
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1843 at r1843
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1844 at r1844
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1845 at r1845
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 171
    (lowerPeImt rho 81 *
      (1 + 2 * ((leafBitsImt rho)[171]! * (idBitsImt rho)[171]!)
        - (leafBitsImt rho)[171]!
        - (idBitsImt rho)[171]!))
    (lowerIlImt rho 81 + lowerPeImt rho 81 *
      ((1 - (leafBitsImt rho)[171]!) *
        (idBitsImt rho)[171]!))
  rw [show
      lowerPeImt rho 81 *
        (1 + 2 * ((leafBitsImt rho)[171]! * (idBitsImt rho)[171]!)
          - (leafBitsImt rho)[171]!
          - (idBitsImt rho)[171]!) =
        lowerPeImt rho 82 by
    have hPe :
        lowerPe rho 81 *
          (1 + 2 * ((leafBits rho)[171]! * (idBits rho)[171]!)
            - (leafBits rho)[171]!
            - (idBits rho)[171]!) =
          lowerPe rho 82 := by
      rw [leafBits_get rho 171 (by omega),
        idBits_get rho 171 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1845 + 2 * (rho 1344) * r1844
    simpa only [
      lowerPeImt,
      leafBits_get rho 171 (by omega),
      idBits_get rho 171 (by omega),
      leafBitsImt_get rho 171 (by omega),
      idBitsImt_get rho 171 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 81 + lowerPeImt rho 81 *
        ((1 - (leafBitsImt rho)[171]!) *
          (idBitsImt rho)[171]!) =
        lowerIlImt rho 82 by
    have hIl :
        lowerIl rho 81 + lowerPe rho 81 *
          ((1 - (leafBits rho)[171]!) *
            (idBits rho)[171]!) =
          lowerIl rho 82 := by
      rw [leafBits_get rho 171 (by omega),
        idBits_get rho 171 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 81 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 80 + rho 1346 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 80)
      rw [hsum]
      linear_combination (rho 512) * r1842 + r1843
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 171 (by omega),
      idBits_get rho 171 (by omega),
      leafBitsImt_get rho 171 (by omega),
      idBitsImt_get rho 171 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange40 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      171 (lowerPeImt rho 82) (lowerIlImt rho 82)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      173 (lowerPeImt rho 80) (lowerIlImt rho 80) := by
  exact lowerStep80 rho h k (lowerStep81 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
