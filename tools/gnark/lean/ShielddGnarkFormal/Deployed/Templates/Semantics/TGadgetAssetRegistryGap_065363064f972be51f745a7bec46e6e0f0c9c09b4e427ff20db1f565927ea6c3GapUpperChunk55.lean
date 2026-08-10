import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapUpperChunk54
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep110 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        142 (upperPeImt rho 111) (upperIlImt rho 111)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      143 (upperPeImt rho 110) (upperIlImt rho 110) := by
  have r2968 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2968 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.1
  have r2969 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2969 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.1
  have r2970 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2970 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.1
  have r2971 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2971 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2968 at r2968
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2969 at r2969
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2970 at r2970
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2971 at r2971
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 142
    (upperPeImt rho 110 *
      (1 + 2 * ((idBitsImt rho)[142]! * (nextBitsImt rho)[142]!)
        - (idBitsImt rho)[142]!
        - (nextBitsImt rho)[142]!))
    (upperIlImt rho 110 + upperPeImt rho 110 *
      ((1 - (idBitsImt rho)[142]!) *
        (nextBitsImt rho)[142]!))
  rw [show
      upperPeImt rho 110 *
        (1 + 2 * ((idBitsImt rho)[142]! * (nextBitsImt rho)[142]!)
          - (idBitsImt rho)[142]!
          - (nextBitsImt rho)[142]!) =
        upperPeImt rho 111 by
    have hPe :
        upperPe rho 110 *
          (1 + 2 * ((idBits rho)[142]! * (nextBits rho)[142]!)
            - (idBits rho)[142]!
            - (nextBits rho)[142]!) =
          upperPe rho 111 := by
      rw [idBits_get rho 142 (by omega),
        nextBits_get rho 142 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2971 + 2 * (rho 2470) * r2970
    simpa only [
      upperPeImt,
      idBits_get rho 142 (by omega),
      nextBits_get rho 142 (by omega),
      idBitsImt_get rho 142 (by omega),
      nextBitsImt_get rho 142 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 110 + upperPeImt rho 110 *
        ((1 - (idBitsImt rho)[142]!) *
          (nextBitsImt rho)[142]!) =
        upperIlImt rho 111 by
    have hIl :
        upperIl rho 110 + upperPe rho 110 *
          ((1 - (idBits rho)[142]!) *
            (nextBits rho)[142]!) =
          upperIl rho 111 := by
      rw [idBits_get rho 142 (by omega),
        nextBits_get rho 142 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 110 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 109 + rho 2472 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 109)
      rw [hsum]
      linear_combination (rho 823) * r2968 + r2969
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 142 (by omega),
      nextBits_get rho 142 (by omega),
      idBitsImt_get rho 142 (by omega),
      nextBitsImt_get rho 142 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep111 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        141 (upperPeImt rho 112) (upperIlImt rho 112)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      142 (upperPeImt rho 111) (upperIlImt rho 111) := by
  have r2972 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2972 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2973 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2973 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2974 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2974 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2975 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2975 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2972 at r2972
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2973 at r2973
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2974 at r2974
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2975 at r2975
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 141
    (upperPeImt rho 111 *
      (1 + 2 * ((idBitsImt rho)[141]! * (nextBitsImt rho)[141]!)
        - (idBitsImt rho)[141]!
        - (nextBitsImt rho)[141]!))
    (upperIlImt rho 111 + upperPeImt rho 111 *
      ((1 - (idBitsImt rho)[141]!) *
        (nextBitsImt rho)[141]!))
  rw [show
      upperPeImt rho 111 *
        (1 + 2 * ((idBitsImt rho)[141]! * (nextBitsImt rho)[141]!)
          - (idBitsImt rho)[141]!
          - (nextBitsImt rho)[141]!) =
        upperPeImt rho 112 by
    have hPe :
        upperPe rho 111 *
          (1 + 2 * ((idBits rho)[141]! * (nextBits rho)[141]!)
            - (idBits rho)[141]!
            - (nextBits rho)[141]!) =
          upperPe rho 112 := by
      rw [idBits_get rho 141 (by omega),
        nextBits_get rho 141 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2975 + 2 * (rho 2474) * r2974
    simpa only [
      upperPeImt,
      idBits_get rho 141 (by omega),
      nextBits_get rho 141 (by omega),
      idBitsImt_get rho 141 (by omega),
      nextBitsImt_get rho 141 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 111 + upperPeImt rho 111 *
        ((1 - (idBitsImt rho)[141]!) *
          (nextBitsImt rho)[141]!) =
        upperIlImt rho 112 by
    have hIl :
        upperIl rho 111 + upperPe rho 111 *
          ((1 - (idBits rho)[141]!) *
            (nextBits rho)[141]!) =
          upperIl rho 112 := by
      rw [idBits_get rho 141 (by omega),
        nextBits_get rho 141 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 111 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 110 + rho 2476 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 110)
      rw [hsum]
      linear_combination (rho 822) * r2972 + r2973
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 141 (by omega),
      nextBits_get rho 141 (by omega),
      idBitsImt_get rho 141 (by omega),
      nextBitsImt_get rho 141 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange55 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      141 (upperPeImt rho 112) (upperIlImt rho 112)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      143 (upperPeImt rho 110) (upperIlImt rho 110) := by
  exact upperStep110 rho h k (upperStep111 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
