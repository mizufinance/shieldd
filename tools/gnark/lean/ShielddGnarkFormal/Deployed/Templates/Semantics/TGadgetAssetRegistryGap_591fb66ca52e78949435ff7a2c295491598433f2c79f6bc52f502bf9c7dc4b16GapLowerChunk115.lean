import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk114
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep230 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        22 (lowerPeImt rho 231) (lowerIlImt rho 231)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      23 (lowerPeImt rho 230) (lowerIlImt rho 230) := by
  have r2438 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2438 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2439 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2439 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2440 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2440 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2441 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2441 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2438 at r2438
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2439 at r2439
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2440 at r2440
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2441 at r2441
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 22
    (lowerPeImt rho 230 *
      (1 + 2 * ((leafBitsImt rho)[22]! * (idBitsImt rho)[22]!)
        - (leafBitsImt rho)[22]!
        - (idBitsImt rho)[22]!))
    (lowerIlImt rho 230 + lowerPeImt rho 230 *
      ((1 - (leafBitsImt rho)[22]!) *
        (idBitsImt rho)[22]!))
  rw [show
      lowerPeImt rho 230 *
        (1 + 2 * ((leafBitsImt rho)[22]! * (idBitsImt rho)[22]!)
          - (leafBitsImt rho)[22]!
          - (idBitsImt rho)[22]!) =
        lowerPeImt rho 231 by
    have hPe :
        lowerPe rho 230 *
          (1 + 2 * ((leafBits rho)[22]! * (idBits rho)[22]!)
            - (leafBits rho)[22]!
            - (idBits rho)[22]!) =
          lowerPe rho 231 := by
      rw [leafBits_get rho 22 (by omega),
        idBits_get rho 22 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2441 + 2 * (rho 1940) * r2440
    simpa only [
      lowerPeImt,
      leafBits_get rho 22 (by omega),
      idBits_get rho 22 (by omega),
      leafBitsImt_get rho 22 (by omega),
      idBitsImt_get rho 22 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 230 + lowerPeImt rho 230 *
        ((1 - (leafBitsImt rho)[22]!) *
          (idBitsImt rho)[22]!) =
        lowerIlImt rho 231 by
    have hIl :
        lowerIl rho 230 + lowerPe rho 230 *
          ((1 - (leafBits rho)[22]!) *
            (idBits rho)[22]!) =
          lowerIl rho 231 := by
      rw [leafBits_get rho 22 (by omega),
        idBits_get rho 22 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 230 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 229 + rho 1942 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 229)
      rw [hsum]
      linear_combination (rho 363) * r2438 + r2439
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 22 (by omega),
      idBits_get rho 22 (by omega),
      leafBitsImt_get rho 22 (by omega),
      idBitsImt_get rho 22 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep231 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        21 (lowerPeImt rho 232) (lowerIlImt rho 232)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      22 (lowerPeImt rho 231) (lowerIlImt rho 231) := by
  have r2442 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2442 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2443 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2443 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2444 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2444 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2445 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2445 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2442 at r2442
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2443 at r2443
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2444 at r2444
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2445 at r2445
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 21
    (lowerPeImt rho 231 *
      (1 + 2 * ((leafBitsImt rho)[21]! * (idBitsImt rho)[21]!)
        - (leafBitsImt rho)[21]!
        - (idBitsImt rho)[21]!))
    (lowerIlImt rho 231 + lowerPeImt rho 231 *
      ((1 - (leafBitsImt rho)[21]!) *
        (idBitsImt rho)[21]!))
  rw [show
      lowerPeImt rho 231 *
        (1 + 2 * ((leafBitsImt rho)[21]! * (idBitsImt rho)[21]!)
          - (leafBitsImt rho)[21]!
          - (idBitsImt rho)[21]!) =
        lowerPeImt rho 232 by
    have hPe :
        lowerPe rho 231 *
          (1 + 2 * ((leafBits rho)[21]! * (idBits rho)[21]!)
            - (leafBits rho)[21]!
            - (idBits rho)[21]!) =
          lowerPe rho 232 := by
      rw [leafBits_get rho 21 (by omega),
        idBits_get rho 21 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2445 + 2 * (rho 1944) * r2444
    simpa only [
      lowerPeImt,
      leafBits_get rho 21 (by omega),
      idBits_get rho 21 (by omega),
      leafBitsImt_get rho 21 (by omega),
      idBitsImt_get rho 21 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 231 + lowerPeImt rho 231 *
        ((1 - (leafBitsImt rho)[21]!) *
          (idBitsImt rho)[21]!) =
        lowerIlImt rho 232 by
    have hIl :
        lowerIl rho 231 + lowerPe rho 231 *
          ((1 - (leafBits rho)[21]!) *
            (idBits rho)[21]!) =
          lowerIl rho 232 := by
      rw [leafBits_get rho 21 (by omega),
        idBits_get rho 21 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 231 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 230 + rho 1946 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 230)
      rw [hsum]
      linear_combination (rho 362) * r2442 + r2443
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 21 (by omega),
      idBits_get rho 21 (by omega),
      leafBitsImt_get rho 21 (by omega),
      idBitsImt_get rho 21 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange115 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      21 (lowerPeImt rho 232) (lowerIlImt rho 232)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      23 (lowerPeImt rho 230) (lowerIlImt rho 230) := by
  exact lowerStep230 rho h k (lowerStep231 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
