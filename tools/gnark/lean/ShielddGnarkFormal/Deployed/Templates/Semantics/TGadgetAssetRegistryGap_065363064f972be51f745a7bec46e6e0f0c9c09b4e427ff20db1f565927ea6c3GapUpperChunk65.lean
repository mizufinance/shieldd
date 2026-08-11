import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapUpperChunk64
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep130 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        122 (upperPeImt rho 131) (upperIlImt rho 131)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      123 (upperPeImt rho 130) (upperIlImt rho 130) := by
  have r3048 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3048 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.1
  have r3049 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3049 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.1
  have r3050 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3050 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.1
  have r3051 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3051 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3048 at r3048
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3049 at r3049
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3050 at r3050
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3051 at r3051
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 122
    (upperPeImt rho 130 *
      (1 + 2 * ((idBitsImt rho)[122]! * (nextBitsImt rho)[122]!)
        - (idBitsImt rho)[122]!
        - (nextBitsImt rho)[122]!))
    (upperIlImt rho 130 + upperPeImt rho 130 *
      ((1 - (idBitsImt rho)[122]!) *
        (nextBitsImt rho)[122]!))
  rw [show
      upperPeImt rho 130 *
        (1 + 2 * ((idBitsImt rho)[122]! * (nextBitsImt rho)[122]!)
          - (idBitsImt rho)[122]!
          - (nextBitsImt rho)[122]!) =
        upperPeImt rho 131 by
    have hPe :
        upperPe rho 130 *
          (1 + 2 * ((idBits rho)[122]! * (nextBits rho)[122]!)
            - (idBits rho)[122]!
            - (nextBits rho)[122]!) =
          upperPe rho 131 := by
      rw [idBits_get rho 122 (by omega),
        nextBits_get rho 122 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3051 + 2 * (rho 2550) * r3050
    simpa only [
      upperPeImt,
      idBits_get rho 122 (by omega),
      nextBits_get rho 122 (by omega),
      idBitsImt_get rho 122 (by omega),
      nextBitsImt_get rho 122 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 130 + upperPeImt rho 130 *
        ((1 - (idBitsImt rho)[122]!) *
          (nextBitsImt rho)[122]!) =
        upperIlImt rho 131 by
    have hIl :
        upperIl rho 130 + upperPe rho 130 *
          ((1 - (idBits rho)[122]!) *
            (nextBits rho)[122]!) =
          upperIl rho 131 := by
      rw [idBits_get rho 122 (by omega),
        nextBits_get rho 122 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 130 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 129 + rho 2552 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 129)
      rw [hsum]
      linear_combination (rho 803) * r3048 + r3049
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 122 (by omega),
      nextBits_get rho 122 (by omega),
      idBitsImt_get rho 122 (by omega),
      nextBitsImt_get rho 122 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep131 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        121 (upperPeImt rho 132) (upperIlImt rho 132)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      122 (upperPeImt rho 131) (upperIlImt rho 131) := by
  have r3052 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3052 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3053 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3053 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3054 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3054 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3055 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3055 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3052 at r3052
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3053 at r3053
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3054 at r3054
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3055 at r3055
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 121
    (upperPeImt rho 131 *
      (1 + 2 * ((idBitsImt rho)[121]! * (nextBitsImt rho)[121]!)
        - (idBitsImt rho)[121]!
        - (nextBitsImt rho)[121]!))
    (upperIlImt rho 131 + upperPeImt rho 131 *
      ((1 - (idBitsImt rho)[121]!) *
        (nextBitsImt rho)[121]!))
  rw [show
      upperPeImt rho 131 *
        (1 + 2 * ((idBitsImt rho)[121]! * (nextBitsImt rho)[121]!)
          - (idBitsImt rho)[121]!
          - (nextBitsImt rho)[121]!) =
        upperPeImt rho 132 by
    have hPe :
        upperPe rho 131 *
          (1 + 2 * ((idBits rho)[121]! * (nextBits rho)[121]!)
            - (idBits rho)[121]!
            - (nextBits rho)[121]!) =
          upperPe rho 132 := by
      rw [idBits_get rho 121 (by omega),
        nextBits_get rho 121 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3055 + 2 * (rho 2554) * r3054
    simpa only [
      upperPeImt,
      idBits_get rho 121 (by omega),
      nextBits_get rho 121 (by omega),
      idBitsImt_get rho 121 (by omega),
      nextBitsImt_get rho 121 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 131 + upperPeImt rho 131 *
        ((1 - (idBitsImt rho)[121]!) *
          (nextBitsImt rho)[121]!) =
        upperIlImt rho 132 by
    have hIl :
        upperIl rho 131 + upperPe rho 131 *
          ((1 - (idBits rho)[121]!) *
            (nextBits rho)[121]!) =
          upperIl rho 132 := by
      rw [idBits_get rho 121 (by omega),
        nextBits_get rho 121 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 131 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 130 + rho 2556 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 130)
      rw [hsum]
      linear_combination (rho 802) * r3052 + r3053
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 121 (by omega),
      nextBits_get rho 121 (by omega),
      idBitsImt_get rho 121 (by omega),
      nextBitsImt_get rho 121 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange65 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      121 (upperPeImt rho 132) (upperIlImt rho 132)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      123 (upperPeImt rho 130) (upperIlImt rho 130) := by
  exact upperStep130 rho h k (upperStep131 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
