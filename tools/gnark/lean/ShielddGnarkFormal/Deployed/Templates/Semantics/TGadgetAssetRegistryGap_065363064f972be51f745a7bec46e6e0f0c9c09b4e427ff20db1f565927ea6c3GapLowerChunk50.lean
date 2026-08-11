import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk49
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep100 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        152 (lowerPeImt rho 101) (lowerIlImt rho 101)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      153 (lowerPeImt rho 100) (lowerIlImt rho 100) := by
  have r1918 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1918 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1919 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1919 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2
  have r1920 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1920 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1
  have r1921 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1921 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1918 at r1918
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1919 at r1919
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1920 at r1920
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1921 at r1921
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 152
    (lowerPeImt rho 100 *
      (1 + 2 * ((leafBitsImt rho)[152]! * (idBitsImt rho)[152]!)
        - (leafBitsImt rho)[152]!
        - (idBitsImt rho)[152]!))
    (lowerIlImt rho 100 + lowerPeImt rho 100 *
      ((1 - (leafBitsImt rho)[152]!) *
        (idBitsImt rho)[152]!))
  rw [show
      lowerPeImt rho 100 *
        (1 + 2 * ((leafBitsImt rho)[152]! * (idBitsImt rho)[152]!)
          - (leafBitsImt rho)[152]!
          - (idBitsImt rho)[152]!) =
        lowerPeImt rho 101 by
    have hPe :
        lowerPe rho 100 *
          (1 + 2 * ((leafBits rho)[152]! * (idBits rho)[152]!)
            - (leafBits rho)[152]!
            - (idBits rho)[152]!) =
          lowerPe rho 101 := by
      rw [leafBits_get rho 152 (by omega),
        idBits_get rho 152 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1921 + 2 * (rho 1420) * r1920
    simpa only [
      lowerPeImt,
      leafBits_get rho 152 (by omega),
      idBits_get rho 152 (by omega),
      leafBitsImt_get rho 152 (by omega),
      idBitsImt_get rho 152 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 100 + lowerPeImt rho 100 *
        ((1 - (leafBitsImt rho)[152]!) *
          (idBitsImt rho)[152]!) =
        lowerIlImt rho 101 by
    have hIl :
        lowerIl rho 100 + lowerPe rho 100 *
          ((1 - (leafBits rho)[152]!) *
            (idBits rho)[152]!) =
          lowerIl rho 101 := by
      rw [leafBits_get rho 152 (by omega),
        idBits_get rho 152 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 100 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 99 + rho 1422 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 99)
      rw [hsum]
      linear_combination (rho 493) * r1918 + r1919
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 152 (by omega),
      idBits_get rho 152 (by omega),
      leafBitsImt_get rho 152 (by omega),
      idBitsImt_get rho 152 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep101 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        151 (lowerPeImt rho 102) (lowerIlImt rho 102)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      152 (lowerPeImt rho 101) (lowerIlImt rho 101) := by
  have r1922 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1922 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.1
  have r1923 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1923 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.1
  have r1924 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1924 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.1
  have r1925 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1925 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1922 at r1922
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1923 at r1923
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1924 at r1924
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1925 at r1925
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 151
    (lowerPeImt rho 101 *
      (1 + 2 * ((leafBitsImt rho)[151]! * (idBitsImt rho)[151]!)
        - (leafBitsImt rho)[151]!
        - (idBitsImt rho)[151]!))
    (lowerIlImt rho 101 + lowerPeImt rho 101 *
      ((1 - (leafBitsImt rho)[151]!) *
        (idBitsImt rho)[151]!))
  rw [show
      lowerPeImt rho 101 *
        (1 + 2 * ((leafBitsImt rho)[151]! * (idBitsImt rho)[151]!)
          - (leafBitsImt rho)[151]!
          - (idBitsImt rho)[151]!) =
        lowerPeImt rho 102 by
    have hPe :
        lowerPe rho 101 *
          (1 + 2 * ((leafBits rho)[151]! * (idBits rho)[151]!)
            - (leafBits rho)[151]!
            - (idBits rho)[151]!) =
          lowerPe rho 102 := by
      rw [leafBits_get rho 151 (by omega),
        idBits_get rho 151 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1925 + 2 * (rho 1424) * r1924
    simpa only [
      lowerPeImt,
      leafBits_get rho 151 (by omega),
      idBits_get rho 151 (by omega),
      leafBitsImt_get rho 151 (by omega),
      idBitsImt_get rho 151 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 101 + lowerPeImt rho 101 *
        ((1 - (leafBitsImt rho)[151]!) *
          (idBitsImt rho)[151]!) =
        lowerIlImt rho 102 by
    have hIl :
        lowerIl rho 101 + lowerPe rho 101 *
          ((1 - (leafBits rho)[151]!) *
            (idBits rho)[151]!) =
          lowerIl rho 102 := by
      rw [leafBits_get rho 151 (by omega),
        idBits_get rho 151 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 101 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 100 + rho 1426 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 100)
      rw [hsum]
      linear_combination (rho 492) * r1922 + r1923
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 151 (by omega),
      idBits_get rho 151 (by omega),
      leafBitsImt_get rho 151 (by omega),
      idBitsImt_get rho 151 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange50 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      151 (lowerPeImt rho 102) (lowerIlImt rho 102)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      153 (lowerPeImt rho 100) (lowerIlImt rho 100) := by
  exact lowerStep100 rho h k (lowerStep101 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
