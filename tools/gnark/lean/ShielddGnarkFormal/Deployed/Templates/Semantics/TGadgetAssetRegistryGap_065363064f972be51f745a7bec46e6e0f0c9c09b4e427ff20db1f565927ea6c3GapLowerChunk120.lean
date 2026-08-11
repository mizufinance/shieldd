import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk119
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep240 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        12 (lowerPeImt rho 241) (lowerIlImt rho 241)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      13 (lowerPeImt rho 240) (lowerIlImt rho 240) := by
  have r2478 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2478 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2479 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2479 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2
  have r2480 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2480 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1
  have r2481 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2481 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2478 at r2478
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2479 at r2479
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2480 at r2480
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2481 at r2481
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 12
    (lowerPeImt rho 240 *
      (1 + 2 * ((leafBitsImt rho)[12]! * (idBitsImt rho)[12]!)
        - (leafBitsImt rho)[12]!
        - (idBitsImt rho)[12]!))
    (lowerIlImt rho 240 + lowerPeImt rho 240 *
      ((1 - (leafBitsImt rho)[12]!) *
        (idBitsImt rho)[12]!))
  rw [show
      lowerPeImt rho 240 *
        (1 + 2 * ((leafBitsImt rho)[12]! * (idBitsImt rho)[12]!)
          - (leafBitsImt rho)[12]!
          - (idBitsImt rho)[12]!) =
        lowerPeImt rho 241 by
    have hPe :
        lowerPe rho 240 *
          (1 + 2 * ((leafBits rho)[12]! * (idBits rho)[12]!)
            - (leafBits rho)[12]!
            - (idBits rho)[12]!) =
          lowerPe rho 241 := by
      rw [leafBits_get rho 12 (by omega),
        idBits_get rho 12 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2481 + 2 * (rho 1980) * r2480
    simpa only [
      lowerPeImt,
      leafBits_get rho 12 (by omega),
      idBits_get rho 12 (by omega),
      leafBitsImt_get rho 12 (by omega),
      idBitsImt_get rho 12 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 240 + lowerPeImt rho 240 *
        ((1 - (leafBitsImt rho)[12]!) *
          (idBitsImt rho)[12]!) =
        lowerIlImt rho 241 by
    have hIl :
        lowerIl rho 240 + lowerPe rho 240 *
          ((1 - (leafBits rho)[12]!) *
            (idBits rho)[12]!) =
          lowerIl rho 241 := by
      rw [leafBits_get rho 12 (by omega),
        idBits_get rho 12 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 240 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 239 + rho 1982 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 239)
      rw [hsum]
      linear_combination (rho 353) * r2478 + r2479
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 12 (by omega),
      idBits_get rho 12 (by omega),
      leafBitsImt_get rho 12 (by omega),
      idBitsImt_get rho 12 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep241 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        11 (lowerPeImt rho 242) (lowerIlImt rho 242)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      12 (lowerPeImt rho 241) (lowerIlImt rho 241) := by
  have r2482 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2482 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.1
  have r2483 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2483 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.1
  have r2484 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2484 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.1
  have r2485 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2485 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2482 at r2482
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2483 at r2483
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2484 at r2484
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2485 at r2485
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 11
    (lowerPeImt rho 241 *
      (1 + 2 * ((leafBitsImt rho)[11]! * (idBitsImt rho)[11]!)
        - (leafBitsImt rho)[11]!
        - (idBitsImt rho)[11]!))
    (lowerIlImt rho 241 + lowerPeImt rho 241 *
      ((1 - (leafBitsImt rho)[11]!) *
        (idBitsImt rho)[11]!))
  rw [show
      lowerPeImt rho 241 *
        (1 + 2 * ((leafBitsImt rho)[11]! * (idBitsImt rho)[11]!)
          - (leafBitsImt rho)[11]!
          - (idBitsImt rho)[11]!) =
        lowerPeImt rho 242 by
    have hPe :
        lowerPe rho 241 *
          (1 + 2 * ((leafBits rho)[11]! * (idBits rho)[11]!)
            - (leafBits rho)[11]!
            - (idBits rho)[11]!) =
          lowerPe rho 242 := by
      rw [leafBits_get rho 11 (by omega),
        idBits_get rho 11 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2485 + 2 * (rho 1984) * r2484
    simpa only [
      lowerPeImt,
      leafBits_get rho 11 (by omega),
      idBits_get rho 11 (by omega),
      leafBitsImt_get rho 11 (by omega),
      idBitsImt_get rho 11 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 241 + lowerPeImt rho 241 *
        ((1 - (leafBitsImt rho)[11]!) *
          (idBitsImt rho)[11]!) =
        lowerIlImt rho 242 by
    have hIl :
        lowerIl rho 241 + lowerPe rho 241 *
          ((1 - (leafBits rho)[11]!) *
            (idBits rho)[11]!) =
          lowerIl rho 242 := by
      rw [leafBits_get rho 11 (by omega),
        idBits_get rho 11 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 241 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 240 + rho 1986 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 240)
      rw [hsum]
      linear_combination (rho 352) * r2482 + r2483
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 11 (by omega),
      idBits_get rho 11 (by omega),
      leafBitsImt_get rho 11 (by omega),
      idBitsImt_get rho 11 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange120 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      11 (lowerPeImt rho 242) (lowerIlImt rho 242)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      13 (lowerPeImt rho 240) (lowerIlImt rho 240) := by
  exact lowerStep240 rho h k (lowerStep241 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
