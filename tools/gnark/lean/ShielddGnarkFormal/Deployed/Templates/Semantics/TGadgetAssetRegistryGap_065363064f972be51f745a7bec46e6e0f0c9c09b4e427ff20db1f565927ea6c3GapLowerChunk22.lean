import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk21
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep44 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        208 (lowerPeImt rho 45) (lowerIlImt rho 45)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      209 (lowerPeImt rho 44) (lowerIlImt rho 44) := by
  have r1694 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1694 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1695 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1695 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1696 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1696 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1697 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1697 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1694 at r1694
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1695 at r1695
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1696 at r1696
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1697 at r1697
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 208
    (lowerPeImt rho 44 *
      (1 + 2 * ((leafBitsImt rho)[208]! * (idBitsImt rho)[208]!)
        - (leafBitsImt rho)[208]!
        - (idBitsImt rho)[208]!))
    (lowerIlImt rho 44 + lowerPeImt rho 44 *
      ((1 - (leafBitsImt rho)[208]!) *
        (idBitsImt rho)[208]!))
  rw [show
      lowerPeImt rho 44 *
        (1 + 2 * ((leafBitsImt rho)[208]! * (idBitsImt rho)[208]!)
          - (leafBitsImt rho)[208]!
          - (idBitsImt rho)[208]!) =
        lowerPeImt rho 45 by
    have hPe :
        lowerPe rho 44 *
          (1 + 2 * ((leafBits rho)[208]! * (idBits rho)[208]!)
            - (leafBits rho)[208]!
            - (idBits rho)[208]!) =
          lowerPe rho 45 := by
      rw [leafBits_get rho 208 (by omega),
        idBits_get rho 208 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1697 + 2 * (rho 1196) * r1696
    simpa only [
      lowerPeImt,
      leafBits_get rho 208 (by omega),
      idBits_get rho 208 (by omega),
      leafBitsImt_get rho 208 (by omega),
      idBitsImt_get rho 208 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 44 + lowerPeImt rho 44 *
        ((1 - (leafBitsImt rho)[208]!) *
          (idBitsImt rho)[208]!) =
        lowerIlImt rho 45 by
    have hIl :
        lowerIl rho 44 + lowerPe rho 44 *
          ((1 - (leafBits rho)[208]!) *
            (idBits rho)[208]!) =
          lowerIl rho 45 := by
      rw [leafBits_get rho 208 (by omega),
        idBits_get rho 208 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 44 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 43 + rho 1198 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 43)
      rw [hsum]
      linear_combination (rho 549) * r1694 + r1695
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 208 (by omega),
      idBits_get rho 208 (by omega),
      leafBitsImt_get rho 208 (by omega),
      idBitsImt_get rho 208 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep45 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        207 (lowerPeImt rho 46) (lowerIlImt rho 46)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      208 (lowerPeImt rho 45) (lowerIlImt rho 45) := by
  have r1698 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1698 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1699 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1699 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1700 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1700 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1701 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1701 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1698 at r1698
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1699 at r1699
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1700 at r1700
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1701 at r1701
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 207
    (lowerPeImt rho 45 *
      (1 + 2 * ((leafBitsImt rho)[207]! * (idBitsImt rho)[207]!)
        - (leafBitsImt rho)[207]!
        - (idBitsImt rho)[207]!))
    (lowerIlImt rho 45 + lowerPeImt rho 45 *
      ((1 - (leafBitsImt rho)[207]!) *
        (idBitsImt rho)[207]!))
  rw [show
      lowerPeImt rho 45 *
        (1 + 2 * ((leafBitsImt rho)[207]! * (idBitsImt rho)[207]!)
          - (leafBitsImt rho)[207]!
          - (idBitsImt rho)[207]!) =
        lowerPeImt rho 46 by
    have hPe :
        lowerPe rho 45 *
          (1 + 2 * ((leafBits rho)[207]! * (idBits rho)[207]!)
            - (leafBits rho)[207]!
            - (idBits rho)[207]!) =
          lowerPe rho 46 := by
      rw [leafBits_get rho 207 (by omega),
        idBits_get rho 207 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1701 + 2 * (rho 1200) * r1700
    simpa only [
      lowerPeImt,
      leafBits_get rho 207 (by omega),
      idBits_get rho 207 (by omega),
      leafBitsImt_get rho 207 (by omega),
      idBitsImt_get rho 207 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 45 + lowerPeImt rho 45 *
        ((1 - (leafBitsImt rho)[207]!) *
          (idBitsImt rho)[207]!) =
        lowerIlImt rho 46 by
    have hIl :
        lowerIl rho 45 + lowerPe rho 45 *
          ((1 - (leafBits rho)[207]!) *
            (idBits rho)[207]!) =
          lowerIl rho 46 := by
      rw [leafBits_get rho 207 (by omega),
        idBits_get rho 207 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 45 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 44 + rho 1202 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 44)
      rw [hsum]
      linear_combination (rho 548) * r1698 + r1699
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 207 (by omega),
      idBits_get rho 207 (by omega),
      leafBitsImt_get rho 207 (by omega),
      idBitsImt_get rho 207 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange22 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      207 (lowerPeImt rho 46) (lowerIlImt rho 46)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      209 (lowerPeImt rho 44) (lowerIlImt rho 44) := by
  exact lowerStep44 rho h k (lowerStep45 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
