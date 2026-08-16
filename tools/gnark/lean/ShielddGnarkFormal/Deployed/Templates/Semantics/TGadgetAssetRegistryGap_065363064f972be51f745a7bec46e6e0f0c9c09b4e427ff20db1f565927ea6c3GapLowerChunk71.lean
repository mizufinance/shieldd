import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk70
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep142 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        110 (lowerPeImt rho 143) (lowerIlImt rho 143)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      111 (lowerPeImt rho 142) (lowerIlImt rho 142) := by
  have r2086 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2086 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.1
  have r2087 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2087 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.1
  have r2088 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2088 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.1
  have r2089 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2089 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2086 at r2086
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2087 at r2087
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2088 at r2088
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2089 at r2089
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 110
    (lowerPeImt rho 142 *
      (1 + 2 * ((leafBitsImt rho)[110]! * (idBitsImt rho)[110]!)
        - (leafBitsImt rho)[110]!
        - (idBitsImt rho)[110]!))
    (lowerIlImt rho 142 + lowerPeImt rho 142 *
      ((1 - (leafBitsImt rho)[110]!) *
        (idBitsImt rho)[110]!))
  rw [show
      lowerPeImt rho 142 *
        (1 + 2 * ((leafBitsImt rho)[110]! * (idBitsImt rho)[110]!)
          - (leafBitsImt rho)[110]!
          - (idBitsImt rho)[110]!) =
        lowerPeImt rho 143 by
    have hPe :
        lowerPe rho 142 *
          (1 + 2 * ((leafBits rho)[110]! * (idBits rho)[110]!)
            - (leafBits rho)[110]!
            - (idBits rho)[110]!) =
          lowerPe rho 143 := by
      rw [leafBits_get rho 110 (by omega),
        idBits_get rho 110 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2089 + 2 * (rho 1588) * r2088
    simpa only [
      lowerPeImt,
      leafBits_get rho 110 (by omega),
      idBits_get rho 110 (by omega),
      leafBitsImt_get rho 110 (by omega),
      idBitsImt_get rho 110 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 142 + lowerPeImt rho 142 *
        ((1 - (leafBitsImt rho)[110]!) *
          (idBitsImt rho)[110]!) =
        lowerIlImt rho 143 by
    have hIl :
        lowerIl rho 142 + lowerPe rho 142 *
          ((1 - (leafBits rho)[110]!) *
            (idBits rho)[110]!) =
          lowerIl rho 143 := by
      rw [leafBits_get rho 110 (by omega),
        idBits_get rho 110 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 142 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 141 + rho 1590 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 141)
      rw [hsum]
      linear_combination (rho 451) * r2086 + r2087
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 110 (by omega),
      idBits_get rho 110 (by omega),
      leafBitsImt_get rho 110 (by omega),
      idBitsImt_get rho 110 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep143 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        109 (lowerPeImt rho 144) (lowerIlImt rho 144)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      110 (lowerPeImt rho 143) (lowerIlImt rho 143) := by
  have r2090 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2090 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.1
  have r2091 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2091 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.1
  have r2092 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2092 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2093 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2093 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2090 at r2090
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2091 at r2091
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2092 at r2092
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2093 at r2093
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 109
    (lowerPeImt rho 143 *
      (1 + 2 * ((leafBitsImt rho)[109]! * (idBitsImt rho)[109]!)
        - (leafBitsImt rho)[109]!
        - (idBitsImt rho)[109]!))
    (lowerIlImt rho 143 + lowerPeImt rho 143 *
      ((1 - (leafBitsImt rho)[109]!) *
        (idBitsImt rho)[109]!))
  rw [show
      lowerPeImt rho 143 *
        (1 + 2 * ((leafBitsImt rho)[109]! * (idBitsImt rho)[109]!)
          - (leafBitsImt rho)[109]!
          - (idBitsImt rho)[109]!) =
        lowerPeImt rho 144 by
    have hPe :
        lowerPe rho 143 *
          (1 + 2 * ((leafBits rho)[109]! * (idBits rho)[109]!)
            - (leafBits rho)[109]!
            - (idBits rho)[109]!) =
          lowerPe rho 144 := by
      rw [leafBits_get rho 109 (by omega),
        idBits_get rho 109 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2093 + 2 * (rho 1592) * r2092
    simpa only [
      lowerPeImt,
      leafBits_get rho 109 (by omega),
      idBits_get rho 109 (by omega),
      leafBitsImt_get rho 109 (by omega),
      idBitsImt_get rho 109 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 143 + lowerPeImt rho 143 *
        ((1 - (leafBitsImt rho)[109]!) *
          (idBitsImt rho)[109]!) =
        lowerIlImt rho 144 by
    have hIl :
        lowerIl rho 143 + lowerPe rho 143 *
          ((1 - (leafBits rho)[109]!) *
            (idBits rho)[109]!) =
          lowerIl rho 144 := by
      rw [leafBits_get rho 109 (by omega),
        idBits_get rho 109 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 143 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 142 + rho 1594 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 142)
      rw [hsum]
      linear_combination (rho 450) * r2090 + r2091
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 109 (by omega),
      idBits_get rho 109 (by omega),
      leafBitsImt_get rho 109 (by omega),
      idBitsImt_get rho 109 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange71 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      109 (lowerPeImt rho 144) (lowerIlImt rho 144)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      111 (lowerPeImt rho 142) (lowerIlImt rho 142) := by
  exact lowerStep142 rho h k (lowerStep143 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
