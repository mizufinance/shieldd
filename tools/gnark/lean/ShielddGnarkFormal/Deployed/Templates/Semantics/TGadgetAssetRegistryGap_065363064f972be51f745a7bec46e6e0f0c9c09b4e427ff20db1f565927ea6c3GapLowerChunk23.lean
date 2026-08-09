import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk22
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep46 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        206 (lowerPeImt rho 47) (lowerIlImt rho 47)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      207 (lowerPeImt rho 46) (lowerIlImt rho 46) := by
  have r1702 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1702 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1703 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1703 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1704 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1704 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1705 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1705 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1702 at r1702
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1703 at r1703
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1704 at r1704
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1705 at r1705
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 206
    (lowerPeImt rho 46 *
      (1 + 2 * ((leafBitsImt rho)[206]! * (idBitsImt rho)[206]!)
        - (leafBitsImt rho)[206]!
        - (idBitsImt rho)[206]!))
    (lowerIlImt rho 46 + lowerPeImt rho 46 *
      ((1 - (leafBitsImt rho)[206]!) *
        (idBitsImt rho)[206]!))
  rw [show
      lowerPeImt rho 46 *
        (1 + 2 * ((leafBitsImt rho)[206]! * (idBitsImt rho)[206]!)
          - (leafBitsImt rho)[206]!
          - (idBitsImt rho)[206]!) =
        lowerPeImt rho 47 by
    have hPe :
        lowerPe rho 46 *
          (1 + 2 * ((leafBits rho)[206]! * (idBits rho)[206]!)
            - (leafBits rho)[206]!
            - (idBits rho)[206]!) =
          lowerPe rho 47 := by
      rw [leafBits_get rho 206 (by omega),
        idBits_get rho 206 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1705 + 2 * (rho 1204) * r1704
    simpa only [
      lowerPeImt,
      leafBits_get rho 206 (by omega),
      idBits_get rho 206 (by omega),
      leafBitsImt_get rho 206 (by omega),
      idBitsImt_get rho 206 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 46 + lowerPeImt rho 46 *
        ((1 - (leafBitsImt rho)[206]!) *
          (idBitsImt rho)[206]!) =
        lowerIlImt rho 47 by
    have hIl :
        lowerIl rho 46 + lowerPe rho 46 *
          ((1 - (leafBits rho)[206]!) *
            (idBits rho)[206]!) =
          lowerIl rho 47 := by
      rw [leafBits_get rho 206 (by omega),
        idBits_get rho 206 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 46 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 45 + rho 1206 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 45)
      rw [hsum]
      linear_combination (rho 547) * r1702 + r1703
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 206 (by omega),
      idBits_get rho 206 (by omega),
      leafBitsImt_get rho 206 (by omega),
      idBitsImt_get rho 206 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep47 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        205 (lowerPeImt rho 48) (lowerIlImt rho 48)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      206 (lowerPeImt rho 47) (lowerIlImt rho 47) := by
  have r1706 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1706 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1707 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1707 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1708 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1708 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1709 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1709 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1706 at r1706
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1707 at r1707
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1708 at r1708
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1709 at r1709
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 205
    (lowerPeImt rho 47 *
      (1 + 2 * ((leafBitsImt rho)[205]! * (idBitsImt rho)[205]!)
        - (leafBitsImt rho)[205]!
        - (idBitsImt rho)[205]!))
    (lowerIlImt rho 47 + lowerPeImt rho 47 *
      ((1 - (leafBitsImt rho)[205]!) *
        (idBitsImt rho)[205]!))
  rw [show
      lowerPeImt rho 47 *
        (1 + 2 * ((leafBitsImt rho)[205]! * (idBitsImt rho)[205]!)
          - (leafBitsImt rho)[205]!
          - (idBitsImt rho)[205]!) =
        lowerPeImt rho 48 by
    have hPe :
        lowerPe rho 47 *
          (1 + 2 * ((leafBits rho)[205]! * (idBits rho)[205]!)
            - (leafBits rho)[205]!
            - (idBits rho)[205]!) =
          lowerPe rho 48 := by
      rw [leafBits_get rho 205 (by omega),
        idBits_get rho 205 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1709 + 2 * (rho 1208) * r1708
    simpa only [
      lowerPeImt,
      leafBits_get rho 205 (by omega),
      idBits_get rho 205 (by omega),
      leafBitsImt_get rho 205 (by omega),
      idBitsImt_get rho 205 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 47 + lowerPeImt rho 47 *
        ((1 - (leafBitsImt rho)[205]!) *
          (idBitsImt rho)[205]!) =
        lowerIlImt rho 48 by
    have hIl :
        lowerIl rho 47 + lowerPe rho 47 *
          ((1 - (leafBits rho)[205]!) *
            (idBits rho)[205]!) =
          lowerIl rho 48 := by
      rw [leafBits_get rho 205 (by omega),
        idBits_get rho 205 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 47 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 46 + rho 1210 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 46)
      rw [hsum]
      linear_combination (rho 546) * r1706 + r1707
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 205 (by omega),
      idBits_get rho 205 (by omega),
      leafBitsImt_get rho 205 (by omega),
      idBitsImt_get rho 205 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange23 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      205 (lowerPeImt rho 48) (lowerIlImt rho 48)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      207 (lowerPeImt rho 46) (lowerIlImt rho 46) := by
  exact lowerStep46 rho h k (lowerStep47 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
