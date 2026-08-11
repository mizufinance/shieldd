import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapUpperChunk63
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep128 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        124 (upperPeImt rho 129) (upperIlImt rho 129)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      125 (upperPeImt rho 128) (upperIlImt rho 128) := by
  have r3040 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3040 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1
  have r3041 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3041 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.1
  have r3042 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3042 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.1
  have r3043 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3043 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3040 at r3040
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3041 at r3041
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3042 at r3042
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3043 at r3043
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 124
    (upperPeImt rho 128 *
      (1 + 2 * ((idBitsImt rho)[124]! * (nextBitsImt rho)[124]!)
        - (idBitsImt rho)[124]!
        - (nextBitsImt rho)[124]!))
    (upperIlImt rho 128 + upperPeImt rho 128 *
      ((1 - (idBitsImt rho)[124]!) *
        (nextBitsImt rho)[124]!))
  rw [show
      upperPeImt rho 128 *
        (1 + 2 * ((idBitsImt rho)[124]! * (nextBitsImt rho)[124]!)
          - (idBitsImt rho)[124]!
          - (nextBitsImt rho)[124]!) =
        upperPeImt rho 129 by
    have hPe :
        upperPe rho 128 *
          (1 + 2 * ((idBits rho)[124]! * (nextBits rho)[124]!)
            - (idBits rho)[124]!
            - (nextBits rho)[124]!) =
          upperPe rho 129 := by
      rw [idBits_get rho 124 (by omega),
        nextBits_get rho 124 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3043 + 2 * (rho 2542) * r3042
    simpa only [
      upperPeImt,
      idBits_get rho 124 (by omega),
      nextBits_get rho 124 (by omega),
      idBitsImt_get rho 124 (by omega),
      nextBitsImt_get rho 124 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 128 + upperPeImt rho 128 *
        ((1 - (idBitsImt rho)[124]!) *
          (nextBitsImt rho)[124]!) =
        upperIlImt rho 129 by
    have hIl :
        upperIl rho 128 + upperPe rho 128 *
          ((1 - (idBits rho)[124]!) *
            (nextBits rho)[124]!) =
          upperIl rho 129 := by
      rw [idBits_get rho 124 (by omega),
        nextBits_get rho 124 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 128 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 127 + rho 2544 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 127)
      rw [hsum]
      linear_combination (rho 805) * r3040 + r3041
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 124 (by omega),
      nextBits_get rho 124 (by omega),
      idBitsImt_get rho 124 (by omega),
      nextBitsImt_get rho 124 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep129 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        123 (upperPeImt rho 130) (upperIlImt rho 130)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      124 (upperPeImt rho 129) (upperIlImt rho 129) := by
  have r3044 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3044 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.1
  have r3045 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3045 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.1
  have r3046 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3046 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.1
  have r3047 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3047 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3044 at r3044
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3045 at r3045
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3046 at r3046
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3047 at r3047
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 123
    (upperPeImt rho 129 *
      (1 + 2 * ((idBitsImt rho)[123]! * (nextBitsImt rho)[123]!)
        - (idBitsImt rho)[123]!
        - (nextBitsImt rho)[123]!))
    (upperIlImt rho 129 + upperPeImt rho 129 *
      ((1 - (idBitsImt rho)[123]!) *
        (nextBitsImt rho)[123]!))
  rw [show
      upperPeImt rho 129 *
        (1 + 2 * ((idBitsImt rho)[123]! * (nextBitsImt rho)[123]!)
          - (idBitsImt rho)[123]!
          - (nextBitsImt rho)[123]!) =
        upperPeImt rho 130 by
    have hPe :
        upperPe rho 129 *
          (1 + 2 * ((idBits rho)[123]! * (nextBits rho)[123]!)
            - (idBits rho)[123]!
            - (nextBits rho)[123]!) =
          upperPe rho 130 := by
      rw [idBits_get rho 123 (by omega),
        nextBits_get rho 123 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3047 + 2 * (rho 2546) * r3046
    simpa only [
      upperPeImt,
      idBits_get rho 123 (by omega),
      nextBits_get rho 123 (by omega),
      idBitsImt_get rho 123 (by omega),
      nextBitsImt_get rho 123 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 129 + upperPeImt rho 129 *
        ((1 - (idBitsImt rho)[123]!) *
          (nextBitsImt rho)[123]!) =
        upperIlImt rho 130 by
    have hIl :
        upperIl rho 129 + upperPe rho 129 *
          ((1 - (idBits rho)[123]!) *
            (nextBits rho)[123]!) =
          upperIl rho 130 := by
      rw [idBits_get rho 123 (by omega),
        nextBits_get rho 123 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 129 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 128 + rho 2548 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 128)
      rw [hsum]
      linear_combination (rho 804) * r3044 + r3045
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 123 (by omega),
      nextBits_get rho 123 (by omega),
      idBitsImt_get rho 123 (by omega),
      nextBitsImt_get rho 123 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange64 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      123 (upperPeImt rho 130) (upperIlImt rho 130)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      125 (upperPeImt rho 128) (upperIlImt rho 128) := by
  exact upperStep128 rho h k (upperStep129 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
