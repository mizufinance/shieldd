import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapUpperChunk13
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep28 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        224 (upperPeImt rho 29) (upperIlImt rho 29)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      225 (upperPeImt rho 28) (upperIlImt rho 28) := by
  have r2640 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2640 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1
  have r2641 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2641 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.1
  have r2642 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2642 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.1
  have r2643 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2643 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2640 at r2640
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2641 at r2641
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2642 at r2642
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2643 at r2643
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 224
    (upperPeImt rho 28 *
      (1 + 2 * ((idBitsImt rho)[224]! * (nextBitsImt rho)[224]!)
        - (idBitsImt rho)[224]!
        - (nextBitsImt rho)[224]!))
    (upperIlImt rho 28 + upperPeImt rho 28 *
      ((1 - (idBitsImt rho)[224]!) *
        (nextBitsImt rho)[224]!))
  rw [show
      upperPeImt rho 28 *
        (1 + 2 * ((idBitsImt rho)[224]! * (nextBitsImt rho)[224]!)
          - (idBitsImt rho)[224]!
          - (nextBitsImt rho)[224]!) =
        upperPeImt rho 29 by
    have hPe :
        upperPe rho 28 *
          (1 + 2 * ((idBits rho)[224]! * (nextBits rho)[224]!)
            - (idBits rho)[224]!
            - (nextBits rho)[224]!) =
          upperPe rho 29 := by
      rw [idBits_get rho 224 (by omega),
        nextBits_get rho 224 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2643 + 2 * (rho 2142) * r2642
    simpa only [
      upperPeImt,
      idBits_get rho 224 (by omega),
      nextBits_get rho 224 (by omega),
      idBitsImt_get rho 224 (by omega),
      nextBitsImt_get rho 224 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 28 + upperPeImt rho 28 *
        ((1 - (idBitsImt rho)[224]!) *
          (nextBitsImt rho)[224]!) =
        upperIlImt rho 29 by
    have hIl :
        upperIl rho 28 + upperPe rho 28 *
          ((1 - (idBits rho)[224]!) *
            (nextBits rho)[224]!) =
          upperIl rho 29 := by
      rw [idBits_get rho 224 (by omega),
        nextBits_get rho 224 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 28 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 27 + rho 2144 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 27)
      rw [hsum]
      linear_combination (rho 905) * r2640 + r2641
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 224 (by omega),
      nextBits_get rho 224 (by omega),
      idBitsImt_get rho 224 (by omega),
      nextBitsImt_get rho 224 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep29 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        223 (upperPeImt rho 30) (upperIlImt rho 30)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      224 (upperPeImt rho 29) (upperIlImt rho 29) := by
  have r2644 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2644 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.1
  have r2645 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2645 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.1
  have r2646 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2646 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.1
  have r2647 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2647 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2644 at r2644
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2645 at r2645
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2646 at r2646
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2647 at r2647
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 223
    (upperPeImt rho 29 *
      (1 + 2 * ((idBitsImt rho)[223]! * (nextBitsImt rho)[223]!)
        - (idBitsImt rho)[223]!
        - (nextBitsImt rho)[223]!))
    (upperIlImt rho 29 + upperPeImt rho 29 *
      ((1 - (idBitsImt rho)[223]!) *
        (nextBitsImt rho)[223]!))
  rw [show
      upperPeImt rho 29 *
        (1 + 2 * ((idBitsImt rho)[223]! * (nextBitsImt rho)[223]!)
          - (idBitsImt rho)[223]!
          - (nextBitsImt rho)[223]!) =
        upperPeImt rho 30 by
    have hPe :
        upperPe rho 29 *
          (1 + 2 * ((idBits rho)[223]! * (nextBits rho)[223]!)
            - (idBits rho)[223]!
            - (nextBits rho)[223]!) =
          upperPe rho 30 := by
      rw [idBits_get rho 223 (by omega),
        nextBits_get rho 223 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2647 + 2 * (rho 2146) * r2646
    simpa only [
      upperPeImt,
      idBits_get rho 223 (by omega),
      nextBits_get rho 223 (by omega),
      idBitsImt_get rho 223 (by omega),
      nextBitsImt_get rho 223 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 29 + upperPeImt rho 29 *
        ((1 - (idBitsImt rho)[223]!) *
          (nextBitsImt rho)[223]!) =
        upperIlImt rho 30 by
    have hIl :
        upperIl rho 29 + upperPe rho 29 *
          ((1 - (idBits rho)[223]!) *
            (nextBits rho)[223]!) =
          upperIl rho 30 := by
      rw [idBits_get rho 223 (by omega),
        nextBits_get rho 223 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 29 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 28 + rho 2148 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 28)
      rw [hsum]
      linear_combination (rho 904) * r2644 + r2645
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 223 (by omega),
      nextBits_get rho 223 (by omega),
      idBitsImt_get rho 223 (by omega),
      nextBitsImt_get rho 223 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange14 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      223 (upperPeImt rho 30) (upperIlImt rho 30)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      225 (upperPeImt rho 28) (upperIlImt rho 28) := by
  exact upperStep28 rho h k (upperStep29 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
