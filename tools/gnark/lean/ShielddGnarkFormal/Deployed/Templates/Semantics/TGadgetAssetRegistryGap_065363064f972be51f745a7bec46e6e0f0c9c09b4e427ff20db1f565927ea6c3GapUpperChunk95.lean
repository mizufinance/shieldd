import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapUpperChunk94
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep190 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        62 (upperPeImt rho 191) (upperIlImt rho 191)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      63 (upperPeImt rho 190) (upperIlImt rho 190) := by
  have r3288 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3288 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.1
  have r3289 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3289 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.1
  have r3290 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3290 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.1
  have r3291 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3291 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3288 at r3288
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3289 at r3289
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3290 at r3290
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3291 at r3291
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 62
    (upperPeImt rho 190 *
      (1 + 2 * ((idBitsImt rho)[62]! * (nextBitsImt rho)[62]!)
        - (idBitsImt rho)[62]!
        - (nextBitsImt rho)[62]!))
    (upperIlImt rho 190 + upperPeImt rho 190 *
      ((1 - (idBitsImt rho)[62]!) *
        (nextBitsImt rho)[62]!))
  rw [show
      upperPeImt rho 190 *
        (1 + 2 * ((idBitsImt rho)[62]! * (nextBitsImt rho)[62]!)
          - (idBitsImt rho)[62]!
          - (nextBitsImt rho)[62]!) =
        upperPeImt rho 191 by
    have hPe :
        upperPe rho 190 *
          (1 + 2 * ((idBits rho)[62]! * (nextBits rho)[62]!)
            - (idBits rho)[62]!
            - (nextBits rho)[62]!) =
          upperPe rho 191 := by
      rw [idBits_get rho 62 (by omega),
        nextBits_get rho 62 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3291 + 2 * (rho 2790) * r3290
    simpa only [
      upperPeImt,
      idBits_get rho 62 (by omega),
      nextBits_get rho 62 (by omega),
      idBitsImt_get rho 62 (by omega),
      nextBitsImt_get rho 62 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 190 + upperPeImt rho 190 *
        ((1 - (idBitsImt rho)[62]!) *
          (nextBitsImt rho)[62]!) =
        upperIlImt rho 191 by
    have hIl :
        upperIl rho 190 + upperPe rho 190 *
          ((1 - (idBits rho)[62]!) *
            (nextBits rho)[62]!) =
          upperIl rho 191 := by
      rw [idBits_get rho 62 (by omega),
        nextBits_get rho 62 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 190 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 189 + rho 2792 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 189)
      rw [hsum]
      linear_combination (rho 743) * r3288 + r3289
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 62 (by omega),
      nextBits_get rho 62 (by omega),
      idBitsImt_get rho 62 (by omega),
      nextBitsImt_get rho 62 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep191 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        61 (upperPeImt rho 192) (upperIlImt rho 192)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      62 (upperPeImt rho 191) (upperIlImt rho 191) := by
  have r3292 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3292 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3293 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3293 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3294 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3294 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3295 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3295 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3292 at r3292
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3293 at r3293
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3294 at r3294
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3295 at r3295
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 61
    (upperPeImt rho 191 *
      (1 + 2 * ((idBitsImt rho)[61]! * (nextBitsImt rho)[61]!)
        - (idBitsImt rho)[61]!
        - (nextBitsImt rho)[61]!))
    (upperIlImt rho 191 + upperPeImt rho 191 *
      ((1 - (idBitsImt rho)[61]!) *
        (nextBitsImt rho)[61]!))
  rw [show
      upperPeImt rho 191 *
        (1 + 2 * ((idBitsImt rho)[61]! * (nextBitsImt rho)[61]!)
          - (idBitsImt rho)[61]!
          - (nextBitsImt rho)[61]!) =
        upperPeImt rho 192 by
    have hPe :
        upperPe rho 191 *
          (1 + 2 * ((idBits rho)[61]! * (nextBits rho)[61]!)
            - (idBits rho)[61]!
            - (nextBits rho)[61]!) =
          upperPe rho 192 := by
      rw [idBits_get rho 61 (by omega),
        nextBits_get rho 61 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3295 + 2 * (rho 2794) * r3294
    simpa only [
      upperPeImt,
      idBits_get rho 61 (by omega),
      nextBits_get rho 61 (by omega),
      idBitsImt_get rho 61 (by omega),
      nextBitsImt_get rho 61 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 191 + upperPeImt rho 191 *
        ((1 - (idBitsImt rho)[61]!) *
          (nextBitsImt rho)[61]!) =
        upperIlImt rho 192 by
    have hIl :
        upperIl rho 191 + upperPe rho 191 *
          ((1 - (idBits rho)[61]!) *
            (nextBits rho)[61]!) =
          upperIl rho 192 := by
      rw [idBits_get rho 61 (by omega),
        nextBits_get rho 61 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 191 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 190 + rho 2796 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 190)
      rw [hsum]
      linear_combination (rho 742) * r3292 + r3293
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 61 (by omega),
      nextBits_get rho 61 (by omega),
      idBitsImt_get rho 61 (by omega),
      nextBitsImt_get rho 61 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange95 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      61 (upperPeImt rho 192) (upperIlImt rho 192)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      63 (upperPeImt rho 190) (upperIlImt rho 190) := by
  exact upperStep190 rho h k (upperStep191 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
