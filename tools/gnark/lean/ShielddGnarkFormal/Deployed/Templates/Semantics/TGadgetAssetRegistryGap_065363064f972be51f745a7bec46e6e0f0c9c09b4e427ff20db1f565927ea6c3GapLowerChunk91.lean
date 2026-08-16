import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk90
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep182 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        70 (lowerPeImt rho 183) (lowerIlImt rho 183)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      71 (lowerPeImt rho 182) (lowerIlImt rho 182) := by
  have r2246 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2246 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.1
  have r2247 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2247 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.1
  have r2248 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2248 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.1
  have r2249 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2249 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2246 at r2246
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2247 at r2247
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2248 at r2248
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2249 at r2249
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 70
    (lowerPeImt rho 182 *
      (1 + 2 * ((leafBitsImt rho)[70]! * (idBitsImt rho)[70]!)
        - (leafBitsImt rho)[70]!
        - (idBitsImt rho)[70]!))
    (lowerIlImt rho 182 + lowerPeImt rho 182 *
      ((1 - (leafBitsImt rho)[70]!) *
        (idBitsImt rho)[70]!))
  rw [show
      lowerPeImt rho 182 *
        (1 + 2 * ((leafBitsImt rho)[70]! * (idBitsImt rho)[70]!)
          - (leafBitsImt rho)[70]!
          - (idBitsImt rho)[70]!) =
        lowerPeImt rho 183 by
    have hPe :
        lowerPe rho 182 *
          (1 + 2 * ((leafBits rho)[70]! * (idBits rho)[70]!)
            - (leafBits rho)[70]!
            - (idBits rho)[70]!) =
          lowerPe rho 183 := by
      rw [leafBits_get rho 70 (by omega),
        idBits_get rho 70 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2249 + 2 * (rho 1748) * r2248
    simpa only [
      lowerPeImt,
      leafBits_get rho 70 (by omega),
      idBits_get rho 70 (by omega),
      leafBitsImt_get rho 70 (by omega),
      idBitsImt_get rho 70 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 182 + lowerPeImt rho 182 *
        ((1 - (leafBitsImt rho)[70]!) *
          (idBitsImt rho)[70]!) =
        lowerIlImt rho 183 by
    have hIl :
        lowerIl rho 182 + lowerPe rho 182 *
          ((1 - (leafBits rho)[70]!) *
            (idBits rho)[70]!) =
          lowerIl rho 183 := by
      rw [leafBits_get rho 70 (by omega),
        idBits_get rho 70 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 182 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 181 + rho 1750 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 181)
      rw [hsum]
      linear_combination (rho 411) * r2246 + r2247
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 70 (by omega),
      idBits_get rho 70 (by omega),
      leafBitsImt_get rho 70 (by omega),
      idBitsImt_get rho 70 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep183 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        69 (lowerPeImt rho 184) (lowerIlImt rho 184)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      70 (lowerPeImt rho 183) (lowerIlImt rho 183) := by
  have r2250 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2250 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.1
  have r2251 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2251 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.1
  have r2252 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2252 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2253 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2253 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2250 at r2250
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2251 at r2251
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2252 at r2252
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2253 at r2253
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 69
    (lowerPeImt rho 183 *
      (1 + 2 * ((leafBitsImt rho)[69]! * (idBitsImt rho)[69]!)
        - (leafBitsImt rho)[69]!
        - (idBitsImt rho)[69]!))
    (lowerIlImt rho 183 + lowerPeImt rho 183 *
      ((1 - (leafBitsImt rho)[69]!) *
        (idBitsImt rho)[69]!))
  rw [show
      lowerPeImt rho 183 *
        (1 + 2 * ((leafBitsImt rho)[69]! * (idBitsImt rho)[69]!)
          - (leafBitsImt rho)[69]!
          - (idBitsImt rho)[69]!) =
        lowerPeImt rho 184 by
    have hPe :
        lowerPe rho 183 *
          (1 + 2 * ((leafBits rho)[69]! * (idBits rho)[69]!)
            - (leafBits rho)[69]!
            - (idBits rho)[69]!) =
          lowerPe rho 184 := by
      rw [leafBits_get rho 69 (by omega),
        idBits_get rho 69 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2253 + 2 * (rho 1752) * r2252
    simpa only [
      lowerPeImt,
      leafBits_get rho 69 (by omega),
      idBits_get rho 69 (by omega),
      leafBitsImt_get rho 69 (by omega),
      idBitsImt_get rho 69 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 183 + lowerPeImt rho 183 *
        ((1 - (leafBitsImt rho)[69]!) *
          (idBitsImt rho)[69]!) =
        lowerIlImt rho 184 by
    have hIl :
        lowerIl rho 183 + lowerPe rho 183 *
          ((1 - (leafBits rho)[69]!) *
            (idBits rho)[69]!) =
          lowerIl rho 184 := by
      rw [leafBits_get rho 69 (by omega),
        idBits_get rho 69 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 183 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 182 + rho 1754 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 182)
      rw [hsum]
      linear_combination (rho 410) * r2250 + r2251
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 69 (by omega),
      idBits_get rho 69 (by omega),
      leafBitsImt_get rho 69 (by omega),
      idBitsImt_get rho 69 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange91 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      69 (lowerPeImt rho 184) (lowerIlImt rho 184)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      71 (lowerPeImt rho 182) (lowerIlImt rho 182) := by
  exact lowerStep182 rho h k (lowerStep183 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
