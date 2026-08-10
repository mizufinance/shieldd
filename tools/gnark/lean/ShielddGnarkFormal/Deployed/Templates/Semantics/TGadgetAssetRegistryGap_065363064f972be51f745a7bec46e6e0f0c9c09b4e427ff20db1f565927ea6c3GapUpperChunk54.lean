import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapUpperChunk53
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep108 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        144 (upperPeImt rho 109) (upperIlImt rho 109)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      145 (upperPeImt rho 108) (upperIlImt rho 108) := by
  have r2960 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2960 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1
  have r2961 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2961 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.1
  have r2962 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2962 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.1
  have r2963 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2963 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2960 at r2960
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2961 at r2961
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2962 at r2962
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2963 at r2963
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 144
    (upperPeImt rho 108 *
      (1 + 2 * ((idBitsImt rho)[144]! * (nextBitsImt rho)[144]!)
        - (idBitsImt rho)[144]!
        - (nextBitsImt rho)[144]!))
    (upperIlImt rho 108 + upperPeImt rho 108 *
      ((1 - (idBitsImt rho)[144]!) *
        (nextBitsImt rho)[144]!))
  rw [show
      upperPeImt rho 108 *
        (1 + 2 * ((idBitsImt rho)[144]! * (nextBitsImt rho)[144]!)
          - (idBitsImt rho)[144]!
          - (nextBitsImt rho)[144]!) =
        upperPeImt rho 109 by
    have hPe :
        upperPe rho 108 *
          (1 + 2 * ((idBits rho)[144]! * (nextBits rho)[144]!)
            - (idBits rho)[144]!
            - (nextBits rho)[144]!) =
          upperPe rho 109 := by
      rw [idBits_get rho 144 (by omega),
        nextBits_get rho 144 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2963 + 2 * (rho 2462) * r2962
    simpa only [
      upperPeImt,
      idBits_get rho 144 (by omega),
      nextBits_get rho 144 (by omega),
      idBitsImt_get rho 144 (by omega),
      nextBitsImt_get rho 144 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 108 + upperPeImt rho 108 *
        ((1 - (idBitsImt rho)[144]!) *
          (nextBitsImt rho)[144]!) =
        upperIlImt rho 109 by
    have hIl :
        upperIl rho 108 + upperPe rho 108 *
          ((1 - (idBits rho)[144]!) *
            (nextBits rho)[144]!) =
          upperIl rho 109 := by
      rw [idBits_get rho 144 (by omega),
        nextBits_get rho 144 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 108 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 107 + rho 2464 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 107)
      rw [hsum]
      linear_combination (rho 825) * r2960 + r2961
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 144 (by omega),
      nextBits_get rho 144 (by omega),
      idBitsImt_get rho 144 (by omega),
      nextBitsImt_get rho 144 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep109 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        143 (upperPeImt rho 110) (upperIlImt rho 110)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      144 (upperPeImt rho 109) (upperIlImt rho 109) := by
  have r2964 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2964 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.1
  have r2965 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2965 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.1
  have r2966 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2966 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.1
  have r2967 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2967 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2964 at r2964
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2965 at r2965
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2966 at r2966
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2967 at r2967
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 143
    (upperPeImt rho 109 *
      (1 + 2 * ((idBitsImt rho)[143]! * (nextBitsImt rho)[143]!)
        - (idBitsImt rho)[143]!
        - (nextBitsImt rho)[143]!))
    (upperIlImt rho 109 + upperPeImt rho 109 *
      ((1 - (idBitsImt rho)[143]!) *
        (nextBitsImt rho)[143]!))
  rw [show
      upperPeImt rho 109 *
        (1 + 2 * ((idBitsImt rho)[143]! * (nextBitsImt rho)[143]!)
          - (idBitsImt rho)[143]!
          - (nextBitsImt rho)[143]!) =
        upperPeImt rho 110 by
    have hPe :
        upperPe rho 109 *
          (1 + 2 * ((idBits rho)[143]! * (nextBits rho)[143]!)
            - (idBits rho)[143]!
            - (nextBits rho)[143]!) =
          upperPe rho 110 := by
      rw [idBits_get rho 143 (by omega),
        nextBits_get rho 143 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2967 + 2 * (rho 2466) * r2966
    simpa only [
      upperPeImt,
      idBits_get rho 143 (by omega),
      nextBits_get rho 143 (by omega),
      idBitsImt_get rho 143 (by omega),
      nextBitsImt_get rho 143 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 109 + upperPeImt rho 109 *
        ((1 - (idBitsImt rho)[143]!) *
          (nextBitsImt rho)[143]!) =
        upperIlImt rho 110 by
    have hIl :
        upperIl rho 109 + upperPe rho 109 *
          ((1 - (idBits rho)[143]!) *
            (nextBits rho)[143]!) =
          upperIl rho 110 := by
      rw [idBits_get rho 143 (by omega),
        nextBits_get rho 143 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 109 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 108 + rho 2468 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 108)
      rw [hsum]
      linear_combination (rho 824) * r2964 + r2965
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 143 (by omega),
      nextBits_get rho 143 (by omega),
      idBitsImt_get rho 143 (by omega),
      nextBitsImt_get rho 143 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange54 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      143 (upperPeImt rho 110) (upperIlImt rho 110)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      145 (upperPeImt rho 108) (upperIlImt rho 108) := by
  exact upperStep108 rho h k (upperStep109 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
