import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk53
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep108 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        144 (lowerPeImt rho 109) (lowerIlImt rho 109)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      145 (lowerPeImt rho 108) (lowerIlImt rho 108) := by
  have r1950 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1950 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1951 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1951 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1952 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1952 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1953 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1953 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1950 at r1950
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1951 at r1951
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1952 at r1952
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1953 at r1953
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 144
    (lowerPeImt rho 108 *
      (1 + 2 * ((leafBitsImt rho)[144]! * (idBitsImt rho)[144]!)
        - (leafBitsImt rho)[144]!
        - (idBitsImt rho)[144]!))
    (lowerIlImt rho 108 + lowerPeImt rho 108 *
      ((1 - (leafBitsImt rho)[144]!) *
        (idBitsImt rho)[144]!))
  rw [show
      lowerPeImt rho 108 *
        (1 + 2 * ((leafBitsImt rho)[144]! * (idBitsImt rho)[144]!)
          - (leafBitsImt rho)[144]!
          - (idBitsImt rho)[144]!) =
        lowerPeImt rho 109 by
    have hPe :
        lowerPe rho 108 *
          (1 + 2 * ((leafBits rho)[144]! * (idBits rho)[144]!)
            - (leafBits rho)[144]!
            - (idBits rho)[144]!) =
          lowerPe rho 109 := by
      rw [leafBits_get rho 144 (by omega),
        idBits_get rho 144 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1953 + 2 * (rho 1452) * r1952
    simpa only [
      lowerPeImt,
      leafBits_get rho 144 (by omega),
      idBits_get rho 144 (by omega),
      leafBitsImt_get rho 144 (by omega),
      idBitsImt_get rho 144 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 108 + lowerPeImt rho 108 *
        ((1 - (leafBitsImt rho)[144]!) *
          (idBitsImt rho)[144]!) =
        lowerIlImt rho 109 by
    have hIl :
        lowerIl rho 108 + lowerPe rho 108 *
          ((1 - (leafBits rho)[144]!) *
            (idBits rho)[144]!) =
          lowerIl rho 109 := by
      rw [leafBits_get rho 144 (by omega),
        idBits_get rho 144 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 108 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 107 + rho 1454 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 107)
      rw [hsum]
      linear_combination (rho 485) * r1950 + r1951
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 144 (by omega),
      idBits_get rho 144 (by omega),
      leafBitsImt_get rho 144 (by omega),
      idBitsImt_get rho 144 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep109 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        143 (lowerPeImt rho 110) (lowerIlImt rho 110)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      144 (lowerPeImt rho 109) (lowerIlImt rho 109) := by
  have r1954 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1954 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1955 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1955 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1956 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1956 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1957 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1957 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1954 at r1954
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1955 at r1955
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1956 at r1956
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1957 at r1957
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 143
    (lowerPeImt rho 109 *
      (1 + 2 * ((leafBitsImt rho)[143]! * (idBitsImt rho)[143]!)
        - (leafBitsImt rho)[143]!
        - (idBitsImt rho)[143]!))
    (lowerIlImt rho 109 + lowerPeImt rho 109 *
      ((1 - (leafBitsImt rho)[143]!) *
        (idBitsImt rho)[143]!))
  rw [show
      lowerPeImt rho 109 *
        (1 + 2 * ((leafBitsImt rho)[143]! * (idBitsImt rho)[143]!)
          - (leafBitsImt rho)[143]!
          - (idBitsImt rho)[143]!) =
        lowerPeImt rho 110 by
    have hPe :
        lowerPe rho 109 *
          (1 + 2 * ((leafBits rho)[143]! * (idBits rho)[143]!)
            - (leafBits rho)[143]!
            - (idBits rho)[143]!) =
          lowerPe rho 110 := by
      rw [leafBits_get rho 143 (by omega),
        idBits_get rho 143 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1957 + 2 * (rho 1456) * r1956
    simpa only [
      lowerPeImt,
      leafBits_get rho 143 (by omega),
      idBits_get rho 143 (by omega),
      leafBitsImt_get rho 143 (by omega),
      idBitsImt_get rho 143 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 109 + lowerPeImt rho 109 *
        ((1 - (leafBitsImt rho)[143]!) *
          (idBitsImt rho)[143]!) =
        lowerIlImt rho 110 by
    have hIl :
        lowerIl rho 109 + lowerPe rho 109 *
          ((1 - (leafBits rho)[143]!) *
            (idBits rho)[143]!) =
          lowerIl rho 110 := by
      rw [leafBits_get rho 143 (by omega),
        idBits_get rho 143 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 109 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 108 + rho 1458 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 108)
      rw [hsum]
      linear_combination (rho 484) * r1954 + r1955
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 143 (by omega),
      idBits_get rho 143 (by omega),
      leafBitsImt_get rho 143 (by omega),
      idBitsImt_get rho 143 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange54 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      143 (lowerPeImt rho 110) (lowerIlImt rho 110)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      145 (lowerPeImt rho 108) (lowerIlImt rho 108) := by
  exact lowerStep108 rho h k (lowerStep109 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
