import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapUpperChunk33
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep68 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        184 (upperPeImt rho 69) (upperIlImt rho 69)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      185 (upperPeImt rho 68) (upperIlImt rho 68) := by
  have r2800 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2800 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1
  have r2801 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2801 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.1
  have r2802 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2802 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.1
  have r2803 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2803 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2800 at r2800
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2801 at r2801
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2802 at r2802
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2803 at r2803
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 184
    (upperPeImt rho 68 *
      (1 + 2 * ((idBitsImt rho)[184]! * (nextBitsImt rho)[184]!)
        - (idBitsImt rho)[184]!
        - (nextBitsImt rho)[184]!))
    (upperIlImt rho 68 + upperPeImt rho 68 *
      ((1 - (idBitsImt rho)[184]!) *
        (nextBitsImt rho)[184]!))
  rw [show
      upperPeImt rho 68 *
        (1 + 2 * ((idBitsImt rho)[184]! * (nextBitsImt rho)[184]!)
          - (idBitsImt rho)[184]!
          - (nextBitsImt rho)[184]!) =
        upperPeImt rho 69 by
    have hPe :
        upperPe rho 68 *
          (1 + 2 * ((idBits rho)[184]! * (nextBits rho)[184]!)
            - (idBits rho)[184]!
            - (nextBits rho)[184]!) =
          upperPe rho 69 := by
      rw [idBits_get rho 184 (by omega),
        nextBits_get rho 184 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2803 + 2 * (rho 2302) * r2802
    simpa only [
      upperPeImt,
      idBits_get rho 184 (by omega),
      nextBits_get rho 184 (by omega),
      idBitsImt_get rho 184 (by omega),
      nextBitsImt_get rho 184 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 68 + upperPeImt rho 68 *
        ((1 - (idBitsImt rho)[184]!) *
          (nextBitsImt rho)[184]!) =
        upperIlImt rho 69 by
    have hIl :
        upperIl rho 68 + upperPe rho 68 *
          ((1 - (idBits rho)[184]!) *
            (nextBits rho)[184]!) =
          upperIl rho 69 := by
      rw [idBits_get rho 184 (by omega),
        nextBits_get rho 184 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 68 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 67 + rho 2304 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 67)
      rw [hsum]
      linear_combination (rho 865) * r2800 + r2801
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 184 (by omega),
      nextBits_get rho 184 (by omega),
      idBitsImt_get rho 184 (by omega),
      nextBitsImt_get rho 184 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep69 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        183 (upperPeImt rho 70) (upperIlImt rho 70)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      184 (upperPeImt rho 69) (upperIlImt rho 69) := by
  have r2804 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2804 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.1
  have r2805 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2805 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.1
  have r2806 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2806 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.1
  have r2807 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2807 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2804 at r2804
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2805 at r2805
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2806 at r2806
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2807 at r2807
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 183
    (upperPeImt rho 69 *
      (1 + 2 * ((idBitsImt rho)[183]! * (nextBitsImt rho)[183]!)
        - (idBitsImt rho)[183]!
        - (nextBitsImt rho)[183]!))
    (upperIlImt rho 69 + upperPeImt rho 69 *
      ((1 - (idBitsImt rho)[183]!) *
        (nextBitsImt rho)[183]!))
  rw [show
      upperPeImt rho 69 *
        (1 + 2 * ((idBitsImt rho)[183]! * (nextBitsImt rho)[183]!)
          - (idBitsImt rho)[183]!
          - (nextBitsImt rho)[183]!) =
        upperPeImt rho 70 by
    have hPe :
        upperPe rho 69 *
          (1 + 2 * ((idBits rho)[183]! * (nextBits rho)[183]!)
            - (idBits rho)[183]!
            - (nextBits rho)[183]!) =
          upperPe rho 70 := by
      rw [idBits_get rho 183 (by omega),
        nextBits_get rho 183 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2807 + 2 * (rho 2306) * r2806
    simpa only [
      upperPeImt,
      idBits_get rho 183 (by omega),
      nextBits_get rho 183 (by omega),
      idBitsImt_get rho 183 (by omega),
      nextBitsImt_get rho 183 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 69 + upperPeImt rho 69 *
        ((1 - (idBitsImt rho)[183]!) *
          (nextBitsImt rho)[183]!) =
        upperIlImt rho 70 by
    have hIl :
        upperIl rho 69 + upperPe rho 69 *
          ((1 - (idBits rho)[183]!) *
            (nextBits rho)[183]!) =
          upperIl rho 70 := by
      rw [idBits_get rho 183 (by omega),
        nextBits_get rho 183 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 69 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 68 + rho 2308 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 68)
      rw [hsum]
      linear_combination (rho 864) * r2804 + r2805
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 183 (by omega),
      nextBits_get rho 183 (by omega),
      idBitsImt_get rho 183 (by omega),
      nextBitsImt_get rho 183 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange34 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      183 (upperPeImt rho 70) (upperIlImt rho 70)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      185 (upperPeImt rho 68) (upperIlImt rho 68) := by
  exact upperStep68 rho h k (upperStep69 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
