import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapUpperChunk84
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperStep170 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        82 (upperPeImt rho 171) (upperIlImt rho 171)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      83 (upperPeImt rho 170) (upperIlImt rho 170) := by
  have r3208 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3208 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.1
  have r3209 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3209 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.1
  have r3210 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3210 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.1
  have r3211 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3211 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3208 at r3208
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3209 at r3209
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3210 at r3210
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3211 at r3211
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 82
    (upperPeImt rho 170 *
      (1 + 2 * ((idBitsImt rho)[82]! * (nextBitsImt rho)[82]!)
        - (idBitsImt rho)[82]!
        - (nextBitsImt rho)[82]!))
    (upperIlImt rho 170 + upperPeImt rho 170 *
      ((1 - (idBitsImt rho)[82]!) *
        (nextBitsImt rho)[82]!))
  rw [show
      upperPeImt rho 170 *
        (1 + 2 * ((idBitsImt rho)[82]! * (nextBitsImt rho)[82]!)
          - (idBitsImt rho)[82]!
          - (nextBitsImt rho)[82]!) =
        upperPeImt rho 171 by
    have hPe :
        upperPe rho 170 *
          (1 + 2 * ((idBits rho)[82]! * (nextBits rho)[82]!)
            - (idBits rho)[82]!
            - (nextBits rho)[82]!) =
          upperPe rho 171 := by
      rw [idBits_get rho 82 (by omega),
        nextBits_get rho 82 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3211 + 2 * (rho 2710) * r3210
    simpa only [
      upperPeImt,
      idBits_get rho 82 (by omega),
      nextBits_get rho 82 (by omega),
      idBitsImt_get rho 82 (by omega),
      nextBitsImt_get rho 82 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 170 + upperPeImt rho 170 *
        ((1 - (idBitsImt rho)[82]!) *
          (nextBitsImt rho)[82]!) =
        upperIlImt rho 171 by
    have hIl :
        upperIl rho 170 + upperPe rho 170 *
          ((1 - (idBits rho)[82]!) *
            (nextBits rho)[82]!) =
          upperIl rho 171 := by
      rw [idBits_get rho 82 (by omega),
        nextBits_get rho 82 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 170 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 169 + rho 2712 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 169)
      rw [hsum]
      linear_combination (rho 763) * r3208 + r3209
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 82 (by omega),
      nextBits_get rho 82 (by omega),
      idBitsImt_get rho 82 (by omega),
      nextBitsImt_get rho 82 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperStep171 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (idBitsImt rho) (nextBitsImt rho) k
        81 (upperPeImt rho 172) (upperIlImt rho 172)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      82 (upperPeImt rho 171) (upperIlImt rho 171) := by
  have r3212 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3212 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3213 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3213 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3214 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3214 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3215 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3215 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3212 at r3212
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3213 at r3213
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3214 at r3214
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3215 at r3215
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (idBitsImt rho) (nextBitsImt rho) k 81
    (upperPeImt rho 171 *
      (1 + 2 * ((idBitsImt rho)[81]! * (nextBitsImt rho)[81]!)
        - (idBitsImt rho)[81]!
        - (nextBitsImt rho)[81]!))
    (upperIlImt rho 171 + upperPeImt rho 171 *
      ((1 - (idBitsImt rho)[81]!) *
        (nextBitsImt rho)[81]!))
  rw [show
      upperPeImt rho 171 *
        (1 + 2 * ((idBitsImt rho)[81]! * (nextBitsImt rho)[81]!)
          - (idBitsImt rho)[81]!
          - (nextBitsImt rho)[81]!) =
        upperPeImt rho 172 by
    have hPe :
        upperPe rho 171 *
          (1 + 2 * ((idBits rho)[81]! * (nextBits rho)[81]!)
            - (idBits rho)[81]!
            - (nextBits rho)[81]!) =
          upperPe rho 172 := by
      rw [idBits_get rho 81 (by omega),
        nextBits_get rho 81 (by omega)]
      simp only [upperPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r3215 + 2 * (rho 2714) * r3214
    simpa only [
      upperPeImt,
      idBits_get rho 81 (by omega),
      nextBits_get rho 81 (by omega),
      idBitsImt_get rho 81 (by omega),
      nextBitsImt_get rho 81 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      upperIlImt rho 171 + upperPeImt rho 171 *
        ((1 - (idBitsImt rho)[81]!) *
          (nextBitsImt rho)[81]!) =
        upperIlImt rho 172 by
    have hIl :
        upperIl rho 171 + upperPe rho 171 *
          ((1 - (idBits rho)[81]!) *
            (nextBits rho)[81]!) =
          upperIl rho 172 := by
      rw [idBits_get rho 81 (by omega),
        nextBits_get rho 81 (by omega)]
      simp only [upperPe, upperIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 171 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 170 + rho 2716 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            2036 4 170)
      rw [hsum]
      linear_combination (rho 762) * r3212 + r3213
    simpa only [
      upperPeImt, upperIlImt,
      idBits_get rho 81 (by omega),
      nextBits_get rho 81 (by omega),
      idBitsImt_get rho 81 (by omega),
      nextBitsImt_get rho 81 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem upperRange85 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      81 (upperPeImt rho 172) (upperIlImt rho 172)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      83 (upperPeImt rho 170) (upperIlImt rho 170) := by
  exact upperStep170 rho h k (upperStep171 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
