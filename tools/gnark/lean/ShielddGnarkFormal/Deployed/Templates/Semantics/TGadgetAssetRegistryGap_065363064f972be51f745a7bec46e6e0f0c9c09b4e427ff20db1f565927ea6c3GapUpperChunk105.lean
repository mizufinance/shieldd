import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapUpperChunk104
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep210 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        42 (upperPeImt rho 211) (upperIlImt rho 211)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      43 (upperPeImt rho 210) (upperIlImt rho 210) := by
  have r3368 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3368 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.1
  have r3369 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3369 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.1
  have r3370 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3370 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.1
  have r3371 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3371 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3368 at r3368
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3369 at r3369
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3370 at r3370
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3371 at r3371
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 42
    (upperPeImt rho 210 *
      (1 + 2 * ((idBitsImt rho)[42]! * (nextBitsImt rho)[42]!)
        - (idBitsImt rho)[42]!
        - (nextBitsImt rho)[42]!))
    (upperIlImt rho 210 + upperPeImt rho 210 *
      ((1 - (idBitsImt rho)[42]!) *
        (nextBitsImt rho)[42]!))
  rw [show
      upperPeImt rho 210 *
        (1 + 2 * ((idBitsImt rho)[42]! * (nextBitsImt rho)[42]!)
          - (idBitsImt rho)[42]!
          - (nextBitsImt rho)[42]!) =
        upperPeImt rho 211 by
    have hPe :
        upperPe rho 210 *
          (1 + 2 * ((idBits rho)[42]! * (nextBits rho)[42]!)
            - (idBits rho)[42]!
            - (nextBits rho)[42]!) =
          upperPe rho 211 := by
      rw [idBits_get rho 42 (by omega),
        nextBits_get rho 42 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3371 + 2 * (rho 2870) * r3370
    simpa only [
      upperPeImt,
      idBits_get rho 42 (by omega),
      nextBits_get rho 42 (by omega),
      idBitsImt_get rho 42 (by omega),
      nextBitsImt_get rho 42 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 210 + upperPeImt rho 210 *
        ((1 - (idBitsImt rho)[42]!) *
          (nextBitsImt rho)[42]!) =
        upperIlImt rho 211 by
    have hIl :
        upperIl rho 210 + upperPe rho 210 *
          ((1 - (idBits rho)[42]!) *
            (nextBits rho)[42]!) =
          upperIl rho 211 := by
      rw [idBits_get rho 42 (by omega),
        nextBits_get rho 42 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 210 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 209 + rho 2872 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 209)
      rw [hsum]
      linear_combination (rho 723) * r3368 + r3369
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 42 (by omega),
      nextBits_get rho 42 (by omega),
      idBitsImt_get rho 42 (by omega),
      nextBitsImt_get rho 42 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep211 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        41 (upperPeImt rho 212) (upperIlImt rho 212)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      42 (upperPeImt rho 211) (upperIlImt rho 211) := by
  have r3372 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3372 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3373 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3373 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3374 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3374 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3375 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3375 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3372 at r3372
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3373 at r3373
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3374 at r3374
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow3375 at r3375
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 41
    (upperPeImt rho 211 *
      (1 + 2 * ((idBitsImt rho)[41]! * (nextBitsImt rho)[41]!)
        - (idBitsImt rho)[41]!
        - (nextBitsImt rho)[41]!))
    (upperIlImt rho 211 + upperPeImt rho 211 *
      ((1 - (idBitsImt rho)[41]!) *
        (nextBitsImt rho)[41]!))
  rw [show
      upperPeImt rho 211 *
        (1 + 2 * ((idBitsImt rho)[41]! * (nextBitsImt rho)[41]!)
          - (idBitsImt rho)[41]!
          - (nextBitsImt rho)[41]!) =
        upperPeImt rho 212 by
    have hPe :
        upperPe rho 211 *
          (1 + 2 * ((idBits rho)[41]! * (nextBits rho)[41]!)
            - (idBits rho)[41]!
            - (nextBits rho)[41]!) =
          upperPe rho 212 := by
      rw [idBits_get rho 41 (by omega),
        nextBits_get rho 41 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3375 + 2 * (rho 2874) * r3374
    simpa only [
      upperPeImt,
      idBits_get rho 41 (by omega),
      nextBits_get rho 41 (by omega),
      idBitsImt_get rho 41 (by omega),
      nextBitsImt_get rho 41 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 211 + upperPeImt rho 211 *
        ((1 - (idBitsImt rho)[41]!) *
          (nextBitsImt rho)[41]!) =
        upperIlImt rho 212 by
    have hIl :
        upperIl rho 211 + upperPe rho 211 *
          ((1 - (idBits rho)[41]!) *
            (nextBits rho)[41]!) =
          upperIl rho 212 := by
      rw [idBits_get rho 41 (by omega),
        nextBits_get rho 41 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 211 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 210 + rho 2876 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 210)
      rw [hsum]
      linear_combination (rho 722) * r3372 + r3373
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 41 (by omega),
      nextBits_get rho 41 (by omega),
      idBitsImt_get rho 41 (by omega),
      nextBitsImt_get rho 41 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange105 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      41 (upperPeImt rho 212) (upperIlImt rho 212)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      43 (upperPeImt rho 210) (upperIlImt rho 210) := by
  exact upperStep210 rho h k (upperStep211 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
