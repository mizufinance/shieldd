import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk82
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep166 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        86 (lowerPeImt rho 167) (lowerIlImt rho 167)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      87 (lowerPeImt rho 166) (lowerIlImt rho 166) := by
  have r2182 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2182 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2183 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2183 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2184 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2184 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2185 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2185 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2182 at r2182
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2183 at r2183
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2184 at r2184
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2185 at r2185
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 86
    (lowerPeImt rho 166 *
      (1 + 2 * ((leafBitsImt rho)[86]! * (idBitsImt rho)[86]!)
        - (leafBitsImt rho)[86]!
        - (idBitsImt rho)[86]!))
    (lowerIlImt rho 166 + lowerPeImt rho 166 *
      ((1 - (leafBitsImt rho)[86]!) *
        (idBitsImt rho)[86]!))
  rw [show
      lowerPeImt rho 166 *
        (1 + 2 * ((leafBitsImt rho)[86]! * (idBitsImt rho)[86]!)
          - (leafBitsImt rho)[86]!
          - (idBitsImt rho)[86]!) =
        lowerPeImt rho 167 by
    have hPe :
        lowerPe rho 166 *
          (1 + 2 * ((leafBits rho)[86]! * (idBits rho)[86]!)
            - (leafBits rho)[86]!
            - (idBits rho)[86]!) =
          lowerPe rho 167 := by
      rw [leafBits_get rho 86 (by omega),
        idBits_get rho 86 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2185 + 2 * (rho 1684) * r2184
    simpa only [
      lowerPeImt,
      leafBits_get rho 86 (by omega),
      idBits_get rho 86 (by omega),
      leafBitsImt_get rho 86 (by omega),
      idBitsImt_get rho 86 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 166 + lowerPeImt rho 166 *
        ((1 - (leafBitsImt rho)[86]!) *
          (idBitsImt rho)[86]!) =
        lowerIlImt rho 167 by
    have hIl :
        lowerIl rho 166 + lowerPe rho 166 *
          ((1 - (leafBits rho)[86]!) *
            (idBits rho)[86]!) =
          lowerIl rho 167 := by
      rw [leafBits_get rho 86 (by omega),
        idBits_get rho 86 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 166 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 165 + rho 1686 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 165)
      rw [hsum]
      linear_combination (rho 427) * r2182 + r2183
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 86 (by omega),
      idBits_get rho 86 (by omega),
      leafBitsImt_get rho 86 (by omega),
      idBitsImt_get rho 86 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep167 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        85 (lowerPeImt rho 168) (lowerIlImt rho 168)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      86 (lowerPeImt rho 167) (lowerIlImt rho 167) := by
  have r2186 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2186 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2187 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2187 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2188 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2188 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2189 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2189 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2186 at r2186
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2187 at r2187
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2188 at r2188
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2189 at r2189
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 85
    (lowerPeImt rho 167 *
      (1 + 2 * ((leafBitsImt rho)[85]! * (idBitsImt rho)[85]!)
        - (leafBitsImt rho)[85]!
        - (idBitsImt rho)[85]!))
    (lowerIlImt rho 167 + lowerPeImt rho 167 *
      ((1 - (leafBitsImt rho)[85]!) *
        (idBitsImt rho)[85]!))
  rw [show
      lowerPeImt rho 167 *
        (1 + 2 * ((leafBitsImt rho)[85]! * (idBitsImt rho)[85]!)
          - (leafBitsImt rho)[85]!
          - (idBitsImt rho)[85]!) =
        lowerPeImt rho 168 by
    have hPe :
        lowerPe rho 167 *
          (1 + 2 * ((leafBits rho)[85]! * (idBits rho)[85]!)
            - (leafBits rho)[85]!
            - (idBits rho)[85]!) =
          lowerPe rho 168 := by
      rw [leafBits_get rho 85 (by omega),
        idBits_get rho 85 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2189 + 2 * (rho 1688) * r2188
    simpa only [
      lowerPeImt,
      leafBits_get rho 85 (by omega),
      idBits_get rho 85 (by omega),
      leafBitsImt_get rho 85 (by omega),
      idBitsImt_get rho 85 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 167 + lowerPeImt rho 167 *
        ((1 - (leafBitsImt rho)[85]!) *
          (idBitsImt rho)[85]!) =
        lowerIlImt rho 168 by
    have hIl :
        lowerIl rho 167 + lowerPe rho 167 *
          ((1 - (leafBits rho)[85]!) *
            (idBits rho)[85]!) =
          lowerIl rho 168 := by
      rw [leafBits_get rho 85 (by omega),
        idBits_get rho 85 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 167 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 166 + rho 1690 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 166)
      rw [hsum]
      linear_combination (rho 426) * r2186 + r2187
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 85 (by omega),
      idBits_get rho 85 (by omega),
      leafBitsImt_get rho 85 (by omega),
      idBitsImt_get rho 85 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange83 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      85 (lowerPeImt rho 168) (lowerIlImt rho 168)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      87 (lowerPeImt rho 166) (lowerIlImt rho 166) := by
  exact lowerStep166 rho h k (lowerStep167 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
