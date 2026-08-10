import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapUpperChunk14
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep30 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        222 (upperPeImt rho 31) (upperIlImt rho 31)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      223 (upperPeImt rho 30) (upperIlImt rho 30) := by
  have r2648 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2648 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.1
  have r2649 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2649 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.1
  have r2650 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2650 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.1
  have r2651 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2651 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2648 at r2648
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2649 at r2649
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2650 at r2650
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2651 at r2651
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 222
    (upperPeImt rho 30 *
      (1 + 2 * ((idBitsImt rho)[222]! * (nextBitsImt rho)[222]!)
        - (idBitsImt rho)[222]!
        - (nextBitsImt rho)[222]!))
    (upperIlImt rho 30 + upperPeImt rho 30 *
      ((1 - (idBitsImt rho)[222]!) *
        (nextBitsImt rho)[222]!))
  rw [show
      upperPeImt rho 30 *
        (1 + 2 * ((idBitsImt rho)[222]! * (nextBitsImt rho)[222]!)
          - (idBitsImt rho)[222]!
          - (nextBitsImt rho)[222]!) =
        upperPeImt rho 31 by
    have hPe :
        upperPe rho 30 *
          (1 + 2 * ((idBits rho)[222]! * (nextBits rho)[222]!)
            - (idBits rho)[222]!
            - (nextBits rho)[222]!) =
          upperPe rho 31 := by
      rw [idBits_get rho 222 (by omega),
        nextBits_get rho 222 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2651 + 2 * (rho 2150) * r2650
    simpa only [
      upperPeImt,
      idBits_get rho 222 (by omega),
      nextBits_get rho 222 (by omega),
      idBitsImt_get rho 222 (by omega),
      nextBitsImt_get rho 222 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 30 + upperPeImt rho 30 *
        ((1 - (idBitsImt rho)[222]!) *
          (nextBitsImt rho)[222]!) =
        upperIlImt rho 31 by
    have hIl :
        upperIl rho 30 + upperPe rho 30 *
          ((1 - (idBits rho)[222]!) *
            (nextBits rho)[222]!) =
          upperIl rho 31 := by
      rw [idBits_get rho 222 (by omega),
        nextBits_get rho 222 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 30 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 29 + rho 2152 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 29)
      rw [hsum]
      linear_combination (rho 903) * r2648 + r2649
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 222 (by omega),
      nextBits_get rho 222 (by omega),
      idBitsImt_get rho 222 (by omega),
      nextBitsImt_get rho 222 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep31 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        221 (upperPeImt rho 32) (upperIlImt rho 32)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      222 (upperPeImt rho 31) (upperIlImt rho 31) := by
  have r2652 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2652 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2653 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2653 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2654 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2654 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2655 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2655 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2652 at r2652
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2653 at r2653
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2654 at r2654
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2655 at r2655
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 221
    (upperPeImt rho 31 *
      (1 + 2 * ((idBitsImt rho)[221]! * (nextBitsImt rho)[221]!)
        - (idBitsImt rho)[221]!
        - (nextBitsImt rho)[221]!))
    (upperIlImt rho 31 + upperPeImt rho 31 *
      ((1 - (idBitsImt rho)[221]!) *
        (nextBitsImt rho)[221]!))
  rw [show
      upperPeImt rho 31 *
        (1 + 2 * ((idBitsImt rho)[221]! * (nextBitsImt rho)[221]!)
          - (idBitsImt rho)[221]!
          - (nextBitsImt rho)[221]!) =
        upperPeImt rho 32 by
    have hPe :
        upperPe rho 31 *
          (1 + 2 * ((idBits rho)[221]! * (nextBits rho)[221]!)
            - (idBits rho)[221]!
            - (nextBits rho)[221]!) =
          upperPe rho 32 := by
      rw [idBits_get rho 221 (by omega),
        nextBits_get rho 221 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2655 + 2 * (rho 2154) * r2654
    simpa only [
      upperPeImt,
      idBits_get rho 221 (by omega),
      nextBits_get rho 221 (by omega),
      idBitsImt_get rho 221 (by omega),
      nextBitsImt_get rho 221 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 31 + upperPeImt rho 31 *
        ((1 - (idBitsImt rho)[221]!) *
          (nextBitsImt rho)[221]!) =
        upperIlImt rho 32 by
    have hIl :
        upperIl rho 31 + upperPe rho 31 *
          ((1 - (idBits rho)[221]!) *
            (nextBits rho)[221]!) =
          upperIl rho 32 := by
      rw [idBits_get rho 221 (by omega),
        nextBits_get rho 221 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 31 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 30 + rho 2156 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 30)
      rw [hsum]
      linear_combination (rho 902) * r2652 + r2653
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 221 (by omega),
      nextBits_get rho 221 (by omega),
      idBitsImt_get rho 221 (by omega),
      nextBitsImt_get rho 221 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange15 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      221 (upperPeImt rho 32) (upperIlImt rho 32)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      223 (upperPeImt rho 30) (upperIlImt rho 30) := by
  exact upperStep30 rho h k (upperStep31 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
