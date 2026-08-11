import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapUpperChunk103
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep208 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        44 (upperPeImt rho 209) (upperIlImt rho 209)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      45 (upperPeImt rho 208) (upperIlImt rho 208) := by
  have r3360 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3360 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1
  have r3361 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3361 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.1
  have r3362 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3362 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.1
  have r3363 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3363 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3360 at r3360
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3361 at r3361
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3362 at r3362
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3363 at r3363
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 44
    (upperPeImt rho 208 *
      (1 + 2 * ((idBitsImt rho)[44]! * (nextBitsImt rho)[44]!)
        - (idBitsImt rho)[44]!
        - (nextBitsImt rho)[44]!))
    (upperIlImt rho 208 + upperPeImt rho 208 *
      ((1 - (idBitsImt rho)[44]!) *
        (nextBitsImt rho)[44]!))
  rw [show
      upperPeImt rho 208 *
        (1 + 2 * ((idBitsImt rho)[44]! * (nextBitsImt rho)[44]!)
          - (idBitsImt rho)[44]!
          - (nextBitsImt rho)[44]!) =
        upperPeImt rho 209 by
    have hPe :
        upperPe rho 208 *
          (1 + 2 * ((idBits rho)[44]! * (nextBits rho)[44]!)
            - (idBits rho)[44]!
            - (nextBits rho)[44]!) =
          upperPe rho 209 := by
      rw [idBits_get rho 44 (by omega),
        nextBits_get rho 44 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3363 + 2 * (rho 2862) * r3362
    simpa only [
      upperPeImt,
      idBits_get rho 44 (by omega),
      nextBits_get rho 44 (by omega),
      idBitsImt_get rho 44 (by omega),
      nextBitsImt_get rho 44 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 208 + upperPeImt rho 208 *
        ((1 - (idBitsImt rho)[44]!) *
          (nextBitsImt rho)[44]!) =
        upperIlImt rho 209 by
    have hIl :
        upperIl rho 208 + upperPe rho 208 *
          ((1 - (idBits rho)[44]!) *
            (nextBits rho)[44]!) =
          upperIl rho 209 := by
      rw [idBits_get rho 44 (by omega),
        nextBits_get rho 44 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 208 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 207 + rho 2864 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 207)
      rw [hsum]
      linear_combination (rho 725) * r3360 + r3361
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 44 (by omega),
      nextBits_get rho 44 (by omega),
      idBitsImt_get rho 44 (by omega),
      nextBitsImt_get rho 44 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep209 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        43 (upperPeImt rho 210) (upperIlImt rho 210)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      44 (upperPeImt rho 209) (upperIlImt rho 209) := by
  have r3364 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3364 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.1
  have r3365 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3365 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.1
  have r3366 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3366 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.1
  have r3367 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3367 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3364 at r3364
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3365 at r3365
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3366 at r3366
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3367 at r3367
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 43
    (upperPeImt rho 209 *
      (1 + 2 * ((idBitsImt rho)[43]! * (nextBitsImt rho)[43]!)
        - (idBitsImt rho)[43]!
        - (nextBitsImt rho)[43]!))
    (upperIlImt rho 209 + upperPeImt rho 209 *
      ((1 - (idBitsImt rho)[43]!) *
        (nextBitsImt rho)[43]!))
  rw [show
      upperPeImt rho 209 *
        (1 + 2 * ((idBitsImt rho)[43]! * (nextBitsImt rho)[43]!)
          - (idBitsImt rho)[43]!
          - (nextBitsImt rho)[43]!) =
        upperPeImt rho 210 by
    have hPe :
        upperPe rho 209 *
          (1 + 2 * ((idBits rho)[43]! * (nextBits rho)[43]!)
            - (idBits rho)[43]!
            - (nextBits rho)[43]!) =
          upperPe rho 210 := by
      rw [idBits_get rho 43 (by omega),
        nextBits_get rho 43 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3367 + 2 * (rho 2866) * r3366
    simpa only [
      upperPeImt,
      idBits_get rho 43 (by omega),
      nextBits_get rho 43 (by omega),
      idBitsImt_get rho 43 (by omega),
      nextBitsImt_get rho 43 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 209 + upperPeImt rho 209 *
        ((1 - (idBitsImt rho)[43]!) *
          (nextBitsImt rho)[43]!) =
        upperIlImt rho 210 by
    have hIl :
        upperIl rho 209 + upperPe rho 209 *
          ((1 - (idBits rho)[43]!) *
            (nextBits rho)[43]!) =
          upperIl rho 210 := by
      rw [idBits_get rho 43 (by omega),
        nextBits_get rho 43 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 209 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 208 + rho 2868 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 208)
      rw [hsum]
      linear_combination (rho 724) * r3364 + r3365
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 43 (by omega),
      nextBits_get rho 43 (by omega),
      idBitsImt_get rho 43 (by omega),
      nextBitsImt_get rho 43 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange104 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      43 (upperPeImt rho 210) (upperIlImt rho 210)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      45 (upperPeImt rho 208) (upperIlImt rho 208) := by
  exact upperStep208 rho h k (upperStep209 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
