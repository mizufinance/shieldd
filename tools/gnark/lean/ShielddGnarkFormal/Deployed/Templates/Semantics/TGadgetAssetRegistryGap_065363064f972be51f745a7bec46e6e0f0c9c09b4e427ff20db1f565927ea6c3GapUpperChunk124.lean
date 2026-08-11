import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapUpperChunk123
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep248 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        4 (upperPeImt rho 249) (upperIlImt rho 249)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      5 (upperPeImt rho 248) (upperIlImt rho 248) := by
  have r3520 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3520 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3521 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3521 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3522 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3522 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3523 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3523 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3520 at r3520
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3521 at r3521
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3522 at r3522
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3523 at r3523
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 4
    (upperPeImt rho 248 *
      (1 + 2 * ((idBitsImt rho)[4]! * (nextBitsImt rho)[4]!)
        - (idBitsImt rho)[4]!
        - (nextBitsImt rho)[4]!))
    (upperIlImt rho 248 + upperPeImt rho 248 *
      ((1 - (idBitsImt rho)[4]!) *
        (nextBitsImt rho)[4]!))
  rw [show
      upperPeImt rho 248 *
        (1 + 2 * ((idBitsImt rho)[4]! * (nextBitsImt rho)[4]!)
          - (idBitsImt rho)[4]!
          - (nextBitsImt rho)[4]!) =
        upperPeImt rho 249 by
    have hPe :
        upperPe rho 248 *
          (1 + 2 * ((idBits rho)[4]! * (nextBits rho)[4]!)
            - (idBits rho)[4]!
            - (nextBits rho)[4]!) =
          upperPe rho 249 := by
      rw [idBits_get rho 4 (by omega),
        nextBits_get rho 4 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3523 + 2 * (rho 3022) * r3522
    simpa only [
      upperPeImt,
      idBits_get rho 4 (by omega),
      nextBits_get rho 4 (by omega),
      idBitsImt_get rho 4 (by omega),
      nextBitsImt_get rho 4 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 248 + upperPeImt rho 248 *
        ((1 - (idBitsImt rho)[4]!) *
          (nextBitsImt rho)[4]!) =
        upperIlImt rho 249 by
    have hIl :
        upperIl rho 248 + upperPe rho 248 *
          ((1 - (idBits rho)[4]!) *
            (nextBits rho)[4]!) =
          upperIl rho 249 := by
      rw [idBits_get rho 4 (by omega),
        nextBits_get rho 4 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 248 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 247 + rho 3024 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 247)
      rw [hsum]
      linear_combination (rho 685) * r3520 + r3521
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 4 (by omega),
      nextBits_get rho 4 (by omega),
      idBitsImt_get rho 4 (by omega),
      nextBitsImt_get rho 4 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep249 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        3 (upperPeImt rho 250) (upperIlImt rho 250)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      4 (upperPeImt rho 249) (upperIlImt rho 249) := by
  have r3524 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3524 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3525 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3525 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3526 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3526 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3527 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3527 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3524 at r3524
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3525 at r3525
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3526 at r3526
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3527 at r3527
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 3
    (upperPeImt rho 249 *
      (1 + 2 * ((idBitsImt rho)[3]! * (nextBitsImt rho)[3]!)
        - (idBitsImt rho)[3]!
        - (nextBitsImt rho)[3]!))
    (upperIlImt rho 249 + upperPeImt rho 249 *
      ((1 - (idBitsImt rho)[3]!) *
        (nextBitsImt rho)[3]!))
  rw [show
      upperPeImt rho 249 *
        (1 + 2 * ((idBitsImt rho)[3]! * (nextBitsImt rho)[3]!)
          - (idBitsImt rho)[3]!
          - (nextBitsImt rho)[3]!) =
        upperPeImt rho 250 by
    have hPe :
        upperPe rho 249 *
          (1 + 2 * ((idBits rho)[3]! * (nextBits rho)[3]!)
            - (idBits rho)[3]!
            - (nextBits rho)[3]!) =
          upperPe rho 250 := by
      rw [idBits_get rho 3 (by omega),
        nextBits_get rho 3 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3527 + 2 * (rho 3026) * r3526
    simpa only [
      upperPeImt,
      idBits_get rho 3 (by omega),
      nextBits_get rho 3 (by omega),
      idBitsImt_get rho 3 (by omega),
      nextBitsImt_get rho 3 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 249 + upperPeImt rho 249 *
        ((1 - (idBitsImt rho)[3]!) *
          (nextBitsImt rho)[3]!) =
        upperIlImt rho 250 by
    have hIl :
        upperIl rho 249 + upperPe rho 249 *
          ((1 - (idBits rho)[3]!) *
            (nextBits rho)[3]!) =
          upperIl rho 250 := by
      rw [idBits_get rho 3 (by omega),
        nextBits_get rho 3 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 249 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 248 + rho 3028 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 248)
      rw [hsum]
      linear_combination (rho 684) * r3524 + r3525
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 3 (by omega),
      nextBits_get rho 3 (by omega),
      idBitsImt_get rho 3 (by omega),
      nextBitsImt_get rho 3 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange124 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      3 (upperPeImt rho 250) (upperIlImt rho 250)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      5 (upperPeImt rho 248) (upperIlImt rho 248) := by
  exact upperStep248 rho h k (upperStep249 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
