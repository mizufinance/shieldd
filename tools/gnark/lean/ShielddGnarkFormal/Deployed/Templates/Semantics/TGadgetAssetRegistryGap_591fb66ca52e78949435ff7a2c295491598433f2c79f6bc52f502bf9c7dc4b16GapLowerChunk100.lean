import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk99
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep200 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        52 (lowerPeImt rho 201) (lowerIlImt rho 201)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      53 (lowerPeImt rho 200) (lowerIlImt rho 200) := by
  have r2318 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2318 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2319 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2319 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2
  have r2320 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2320 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1
  have r2321 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2321 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2318 at r2318
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2319 at r2319
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2320 at r2320
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2321 at r2321
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 52
    (lowerPeImt rho 200 *
      (1 + 2 * ((leafBitsImt rho)[52]! * (idBitsImt rho)[52]!)
        - (leafBitsImt rho)[52]!
        - (idBitsImt rho)[52]!))
    (lowerIlImt rho 200 + lowerPeImt rho 200 *
      ((1 - (leafBitsImt rho)[52]!) *
        (idBitsImt rho)[52]!))
  rw [show
      lowerPeImt rho 200 *
        (1 + 2 * ((leafBitsImt rho)[52]! * (idBitsImt rho)[52]!)
          - (leafBitsImt rho)[52]!
          - (idBitsImt rho)[52]!) =
        lowerPeImt rho 201 by
    have hPe :
        lowerPe rho 200 *
          (1 + 2 * ((leafBits rho)[52]! * (idBits rho)[52]!)
            - (leafBits rho)[52]!
            - (idBits rho)[52]!) =
          lowerPe rho 201 := by
      rw [leafBits_get rho 52 (by omega),
        idBits_get rho 52 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2321 + 2 * (rho 1820) * r2320
    simpa only [
      lowerPeImt,
      leafBits_get rho 52 (by omega),
      idBits_get rho 52 (by omega),
      leafBitsImt_get rho 52 (by omega),
      idBitsImt_get rho 52 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 200 + lowerPeImt rho 200 *
        ((1 - (leafBitsImt rho)[52]!) *
          (idBitsImt rho)[52]!) =
        lowerIlImt rho 201 by
    have hIl :
        lowerIl rho 200 + lowerPe rho 200 *
          ((1 - (leafBits rho)[52]!) *
            (idBits rho)[52]!) =
          lowerIl rho 201 := by
      rw [leafBits_get rho 52 (by omega),
        idBits_get rho 52 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 200 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 199 + rho 1822 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 199)
      rw [hsum]
      linear_combination (rho 393) * r2318 + r2319
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 52 (by omega),
      idBits_get rho 52 (by omega),
      leafBitsImt_get rho 52 (by omega),
      idBitsImt_get rho 52 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep201 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        51 (lowerPeImt rho 202) (lowerIlImt rho 202)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      52 (lowerPeImt rho 201) (lowerIlImt rho 201) := by
  have r2322 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2322 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.1
  have r2323 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2323 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.1
  have r2324 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2324 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.1
  have r2325 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2325 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2322 at r2322
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2323 at r2323
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2324 at r2324
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2325 at r2325
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 51
    (lowerPeImt rho 201 *
      (1 + 2 * ((leafBitsImt rho)[51]! * (idBitsImt rho)[51]!)
        - (leafBitsImt rho)[51]!
        - (idBitsImt rho)[51]!))
    (lowerIlImt rho 201 + lowerPeImt rho 201 *
      ((1 - (leafBitsImt rho)[51]!) *
        (idBitsImt rho)[51]!))
  rw [show
      lowerPeImt rho 201 *
        (1 + 2 * ((leafBitsImt rho)[51]! * (idBitsImt rho)[51]!)
          - (leafBitsImt rho)[51]!
          - (idBitsImt rho)[51]!) =
        lowerPeImt rho 202 by
    have hPe :
        lowerPe rho 201 *
          (1 + 2 * ((leafBits rho)[51]! * (idBits rho)[51]!)
            - (leafBits rho)[51]!
            - (idBits rho)[51]!) =
          lowerPe rho 202 := by
      rw [leafBits_get rho 51 (by omega),
        idBits_get rho 51 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2325 + 2 * (rho 1824) * r2324
    simpa only [
      lowerPeImt,
      leafBits_get rho 51 (by omega),
      idBits_get rho 51 (by omega),
      leafBitsImt_get rho 51 (by omega),
      idBitsImt_get rho 51 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 201 + lowerPeImt rho 201 *
        ((1 - (leafBitsImt rho)[51]!) *
          (idBitsImt rho)[51]!) =
        lowerIlImt rho 202 by
    have hIl :
        lowerIl rho 201 + lowerPe rho 201 *
          ((1 - (leafBits rho)[51]!) *
            (idBits rho)[51]!) =
          lowerIl rho 202 := by
      rw [leafBits_get rho 51 (by omega),
        idBits_get rho 51 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 201 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 200 + rho 1826 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 200)
      rw [hsum]
      linear_combination (rho 392) * r2322 + r2323
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 51 (by omega),
      idBits_get rho 51 (by omega),
      leafBitsImt_get rho 51 (by omega),
      idBitsImt_get rho 51 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange100 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      51 (lowerPeImt rho 202) (lowerIlImt rho 202)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      53 (lowerPeImt rho 200) (lowerIlImt rho 200) := by
  exact lowerStep200 rho h k (lowerStep201 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
