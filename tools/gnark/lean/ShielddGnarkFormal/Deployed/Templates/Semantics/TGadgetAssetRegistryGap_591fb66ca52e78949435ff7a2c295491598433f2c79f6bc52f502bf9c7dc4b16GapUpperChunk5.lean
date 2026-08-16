import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapUpperChunk4
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep10 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        242 (upperPeImt rho 11) (upperIlImt rho 11)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      243 (upperPeImt rho 10) (upperIlImt rho 10) := by
  have r2568 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2568 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.1
  have r2569 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2569 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.1
  have r2570 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2570 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.1
  have r2571 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2571 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2568 at r2568
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2569 at r2569
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2570 at r2570
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2571 at r2571
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 242
    (upperPeImt rho 10 *
      (1 + 2 * ((idBitsImt rho)[242]! * (nextBitsImt rho)[242]!)
        - (idBitsImt rho)[242]!
        - (nextBitsImt rho)[242]!))
    (upperIlImt rho 10 + upperPeImt rho 10 *
      ((1 - (idBitsImt rho)[242]!) *
        (nextBitsImt rho)[242]!))
  rw [show
      upperPeImt rho 10 *
        (1 + 2 * ((idBitsImt rho)[242]! * (nextBitsImt rho)[242]!)
          - (idBitsImt rho)[242]!
          - (nextBitsImt rho)[242]!) =
        upperPeImt rho 11 by
    have hPe :
        upperPe rho 10 *
          (1 + 2 * ((idBits rho)[242]! * (nextBits rho)[242]!)
            - (idBits rho)[242]!
            - (nextBits rho)[242]!) =
          upperPe rho 11 := by
      rw [idBits_get rho 242 (by omega),
        nextBits_get rho 242 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2571 + 2 * (rho 2070) * r2570
    simpa only [
      upperPeImt,
      idBits_get rho 242 (by omega),
      nextBits_get rho 242 (by omega),
      idBitsImt_get rho 242 (by omega),
      nextBitsImt_get rho 242 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 10 + upperPeImt rho 10 *
        ((1 - (idBitsImt rho)[242]!) *
          (nextBitsImt rho)[242]!) =
        upperIlImt rho 11 by
    have hIl :
        upperIl rho 10 + upperPe rho 10 *
          ((1 - (idBits rho)[242]!) *
            (nextBits rho)[242]!) =
          upperIl rho 11 := by
      rw [idBits_get rho 242 (by omega),
        nextBits_get rho 242 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 10 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 9 + rho 2072 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 9)
      rw [hsum]
      linear_combination (rho 923) * r2568 + r2569
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 242 (by omega),
      nextBits_get rho 242 (by omega),
      idBitsImt_get rho 242 (by omega),
      nextBitsImt_get rho 242 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep11 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        241 (upperPeImt rho 12) (upperIlImt rho 12)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      242 (upperPeImt rho 11) (upperIlImt rho 11) := by
  have r2572 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2572 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2573 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2573 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2574 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2574 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2575 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2575 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2572 at r2572
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2573 at r2573
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2574 at r2574
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2575 at r2575
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 241
    (upperPeImt rho 11 *
      (1 + 2 * ((idBitsImt rho)[241]! * (nextBitsImt rho)[241]!)
        - (idBitsImt rho)[241]!
        - (nextBitsImt rho)[241]!))
    (upperIlImt rho 11 + upperPeImt rho 11 *
      ((1 - (idBitsImt rho)[241]!) *
        (nextBitsImt rho)[241]!))
  rw [show
      upperPeImt rho 11 *
        (1 + 2 * ((idBitsImt rho)[241]! * (nextBitsImt rho)[241]!)
          - (idBitsImt rho)[241]!
          - (nextBitsImt rho)[241]!) =
        upperPeImt rho 12 by
    have hPe :
        upperPe rho 11 *
          (1 + 2 * ((idBits rho)[241]! * (nextBits rho)[241]!)
            - (idBits rho)[241]!
            - (nextBits rho)[241]!) =
          upperPe rho 12 := by
      rw [idBits_get rho 241 (by omega),
        nextBits_get rho 241 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2575 + 2 * (rho 2074) * r2574
    simpa only [
      upperPeImt,
      idBits_get rho 241 (by omega),
      nextBits_get rho 241 (by omega),
      idBitsImt_get rho 241 (by omega),
      nextBitsImt_get rho 241 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 11 + upperPeImt rho 11 *
        ((1 - (idBitsImt rho)[241]!) *
          (nextBitsImt rho)[241]!) =
        upperIlImt rho 12 by
    have hIl :
        upperIl rho 11 + upperPe rho 11 *
          ((1 - (idBits rho)[241]!) *
            (nextBits rho)[241]!) =
          upperIl rho 12 := by
      rw [idBits_get rho 241 (by omega),
        nextBits_get rho 241 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 11 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 10 + rho 2076 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 10)
      rw [hsum]
      linear_combination (rho 922) * r2572 + r2573
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 241 (by omega),
      nextBits_get rho 241 (by omega),
      idBitsImt_get rho 241 (by omega),
      nextBitsImt_get rho 241 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange5 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      241 (upperPeImt rho 12) (upperIlImt rho 12)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      243 (upperPeImt rho 10) (upperIlImt rho 10) := by
  exact upperStep10 rho h k (upperStep11 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
