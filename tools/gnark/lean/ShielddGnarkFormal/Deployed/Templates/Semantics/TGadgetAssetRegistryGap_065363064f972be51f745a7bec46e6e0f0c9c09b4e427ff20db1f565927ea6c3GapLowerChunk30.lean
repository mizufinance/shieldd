import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk29
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep60 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        192 (lowerPeImt rho 61) (lowerIlImt rho 61)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      193 (lowerPeImt rho 60) (lowerIlImt rho 60) := by
  have r1758 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1758 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1759 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1759 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2
  have r1760 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1760 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1
  have r1761 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1761 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1758 at r1758
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1759 at r1759
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1760 at r1760
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1761 at r1761
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 192
    (lowerPeImt rho 60 *
      (1 + 2 * ((leafBitsImt rho)[192]! * (idBitsImt rho)[192]!)
        - (leafBitsImt rho)[192]!
        - (idBitsImt rho)[192]!))
    (lowerIlImt rho 60 + lowerPeImt rho 60 *
      ((1 - (leafBitsImt rho)[192]!) *
        (idBitsImt rho)[192]!))
  rw [show
      lowerPeImt rho 60 *
        (1 + 2 * ((leafBitsImt rho)[192]! * (idBitsImt rho)[192]!)
          - (leafBitsImt rho)[192]!
          - (idBitsImt rho)[192]!) =
        lowerPeImt rho 61 by
    have hPe :
        lowerPe rho 60 *
          (1 + 2 * ((leafBits rho)[192]! * (idBits rho)[192]!)
            - (leafBits rho)[192]!
            - (idBits rho)[192]!) =
          lowerPe rho 61 := by
      rw [leafBits_get rho 192 (by omega),
        idBits_get rho 192 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1761 + 2 * (rho 1260) * r1760
    simpa only [
      lowerPeImt,
      leafBits_get rho 192 (by omega),
      idBits_get rho 192 (by omega),
      leafBitsImt_get rho 192 (by omega),
      idBitsImt_get rho 192 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 60 + lowerPeImt rho 60 *
        ((1 - (leafBitsImt rho)[192]!) *
          (idBitsImt rho)[192]!) =
        lowerIlImt rho 61 by
    have hIl :
        lowerIl rho 60 + lowerPe rho 60 *
          ((1 - (leafBits rho)[192]!) *
            (idBits rho)[192]!) =
          lowerIl rho 61 := by
      rw [leafBits_get rho 192 (by omega),
        idBits_get rho 192 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 60 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 59 + rho 1262 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 59)
      rw [hsum]
      linear_combination (rho 533) * r1758 + r1759
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 192 (by omega),
      idBits_get rho 192 (by omega),
      leafBitsImt_get rho 192 (by omega),
      idBitsImt_get rho 192 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep61 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        191 (lowerPeImt rho 62) (lowerIlImt rho 62)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      192 (lowerPeImt rho 61) (lowerIlImt rho 61) := by
  have r1762 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1762 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.1
  have r1763 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1763 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.1
  have r1764 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1764 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.1
  have r1765 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1765 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1762 at r1762
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1763 at r1763
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1764 at r1764
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1765 at r1765
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 191
    (lowerPeImt rho 61 *
      (1 + 2 * ((leafBitsImt rho)[191]! * (idBitsImt rho)[191]!)
        - (leafBitsImt rho)[191]!
        - (idBitsImt rho)[191]!))
    (lowerIlImt rho 61 + lowerPeImt rho 61 *
      ((1 - (leafBitsImt rho)[191]!) *
        (idBitsImt rho)[191]!))
  rw [show
      lowerPeImt rho 61 *
        (1 + 2 * ((leafBitsImt rho)[191]! * (idBitsImt rho)[191]!)
          - (leafBitsImt rho)[191]!
          - (idBitsImt rho)[191]!) =
        lowerPeImt rho 62 by
    have hPe :
        lowerPe rho 61 *
          (1 + 2 * ((leafBits rho)[191]! * (idBits rho)[191]!)
            - (leafBits rho)[191]!
            - (idBits rho)[191]!) =
          lowerPe rho 62 := by
      rw [leafBits_get rho 191 (by omega),
        idBits_get rho 191 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1765 + 2 * (rho 1264) * r1764
    simpa only [
      lowerPeImt,
      leafBits_get rho 191 (by omega),
      idBits_get rho 191 (by omega),
      leafBitsImt_get rho 191 (by omega),
      idBitsImt_get rho 191 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 61 + lowerPeImt rho 61 *
        ((1 - (leafBitsImt rho)[191]!) *
          (idBitsImt rho)[191]!) =
        lowerIlImt rho 62 by
    have hIl :
        lowerIl rho 61 + lowerPe rho 61 *
          ((1 - (leafBits rho)[191]!) *
            (idBits rho)[191]!) =
          lowerIl rho 62 := by
      rw [leafBits_get rho 191 (by omega),
        idBits_get rho 191 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 61 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 60 + rho 1266 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 60)
      rw [hsum]
      linear_combination (rho 532) * r1762 + r1763
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 191 (by omega),
      idBits_get rho 191 (by omega),
      leafBitsImt_get rho 191 (by omega),
      idBitsImt_get rho 191 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange30 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      191 (lowerPeImt rho 62) (lowerIlImt rho 62)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      193 (lowerPeImt rho 60) (lowerIlImt rho 60) := by
  exact lowerStep60 rho h k (lowerStep61 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
