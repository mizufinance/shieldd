import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk51
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep104 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        148 (lowerPeImt rho 105) (lowerIlImt rho 105)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      149 (lowerPeImt rho 104) (lowerIlImt rho 104) := by
  have r1934 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1934 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1935 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1935 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1936 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1936 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1937 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1937 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1934 at r1934
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1935 at r1935
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1936 at r1936
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1937 at r1937
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 148
    (lowerPeImt rho 104 *
      (1 + 2 * ((leafBitsImt rho)[148]! * (idBitsImt rho)[148]!)
        - (leafBitsImt rho)[148]!
        - (idBitsImt rho)[148]!))
    (lowerIlImt rho 104 + lowerPeImt rho 104 *
      ((1 - (leafBitsImt rho)[148]!) *
        (idBitsImt rho)[148]!))
  rw [show
      lowerPeImt rho 104 *
        (1 + 2 * ((leafBitsImt rho)[148]! * (idBitsImt rho)[148]!)
          - (leafBitsImt rho)[148]!
          - (idBitsImt rho)[148]!) =
        lowerPeImt rho 105 by
    have hPe :
        lowerPe rho 104 *
          (1 + 2 * ((leafBits rho)[148]! * (idBits rho)[148]!)
            - (leafBits rho)[148]!
            - (idBits rho)[148]!) =
          lowerPe rho 105 := by
      rw [leafBits_get rho 148 (by omega),
        idBits_get rho 148 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1937 + 2 * (rho 1436) * r1936
    simpa only [
      lowerPeImt,
      leafBits_get rho 148 (by omega),
      idBits_get rho 148 (by omega),
      leafBitsImt_get rho 148 (by omega),
      idBitsImt_get rho 148 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 104 + lowerPeImt rho 104 *
        ((1 - (leafBitsImt rho)[148]!) *
          (idBitsImt rho)[148]!) =
        lowerIlImt rho 105 by
    have hIl :
        lowerIl rho 104 + lowerPe rho 104 *
          ((1 - (leafBits rho)[148]!) *
            (idBits rho)[148]!) =
          lowerIl rho 105 := by
      rw [leafBits_get rho 148 (by omega),
        idBits_get rho 148 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 104 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 103 + rho 1438 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 103)
      rw [hsum]
      linear_combination (rho 489) * r1934 + r1935
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 148 (by omega),
      idBits_get rho 148 (by omega),
      leafBitsImt_get rho 148 (by omega),
      idBitsImt_get rho 148 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep105 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        147 (lowerPeImt rho 106) (lowerIlImt rho 106)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      148 (lowerPeImt rho 105) (lowerIlImt rho 105) := by
  have r1938 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1938 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1939 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1939 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1940 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1940 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1941 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1941 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1938 at r1938
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1939 at r1939
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1940 at r1940
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1941 at r1941
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 147
    (lowerPeImt rho 105 *
      (1 + 2 * ((leafBitsImt rho)[147]! * (idBitsImt rho)[147]!)
        - (leafBitsImt rho)[147]!
        - (idBitsImt rho)[147]!))
    (lowerIlImt rho 105 + lowerPeImt rho 105 *
      ((1 - (leafBitsImt rho)[147]!) *
        (idBitsImt rho)[147]!))
  rw [show
      lowerPeImt rho 105 *
        (1 + 2 * ((leafBitsImt rho)[147]! * (idBitsImt rho)[147]!)
          - (leafBitsImt rho)[147]!
          - (idBitsImt rho)[147]!) =
        lowerPeImt rho 106 by
    have hPe :
        lowerPe rho 105 *
          (1 + 2 * ((leafBits rho)[147]! * (idBits rho)[147]!)
            - (leafBits rho)[147]!
            - (idBits rho)[147]!) =
          lowerPe rho 106 := by
      rw [leafBits_get rho 147 (by omega),
        idBits_get rho 147 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1941 + 2 * (rho 1440) * r1940
    simpa only [
      lowerPeImt,
      leafBits_get rho 147 (by omega),
      idBits_get rho 147 (by omega),
      leafBitsImt_get rho 147 (by omega),
      idBitsImt_get rho 147 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 105 + lowerPeImt rho 105 *
        ((1 - (leafBitsImt rho)[147]!) *
          (idBitsImt rho)[147]!) =
        lowerIlImt rho 106 by
    have hIl :
        lowerIl rho 105 + lowerPe rho 105 *
          ((1 - (leafBits rho)[147]!) *
            (idBits rho)[147]!) =
          lowerIl rho 106 := by
      rw [leafBits_get rho 147 (by omega),
        idBits_get rho 147 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 105 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 104 + rho 1442 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 104)
      rw [hsum]
      linear_combination (rho 488) * r1938 + r1939
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 147 (by omega),
      idBits_get rho 147 (by omega),
      leafBitsImt_get rho 147 (by omega),
      idBitsImt_get rho 147 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange52 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      147 (lowerPeImt rho 106) (lowerIlImt rho 106)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      149 (lowerPeImt rho 104) (lowerIlImt rho 104) := by
  exact lowerStep104 rho h k (lowerStep105 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
