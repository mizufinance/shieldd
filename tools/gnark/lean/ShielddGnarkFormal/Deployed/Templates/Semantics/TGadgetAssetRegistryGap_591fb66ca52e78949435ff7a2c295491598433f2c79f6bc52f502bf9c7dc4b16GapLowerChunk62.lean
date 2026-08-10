import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLowerChunk61
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep124 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        128 (lowerPeImt rho 125) (lowerIlImt rho 125)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      129 (lowerPeImt rho 124) (lowerIlImt rho 124) := by
  have r2014 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2014 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2015 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2015 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2016 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2016 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2017 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2017 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2014 at r2014
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2015 at r2015
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2016 at r2016
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2017 at r2017
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 128
    (lowerPeImt rho 124 *
      (1 + 2 * ((leafBitsImt rho)[128]! * (idBitsImt rho)[128]!)
        - (leafBitsImt rho)[128]!
        - (idBitsImt rho)[128]!))
    (lowerIlImt rho 124 + lowerPeImt rho 124 *
      ((1 - (leafBitsImt rho)[128]!) *
        (idBitsImt rho)[128]!))
  rw [show
      lowerPeImt rho 124 *
        (1 + 2 * ((leafBitsImt rho)[128]! * (idBitsImt rho)[128]!)
          - (leafBitsImt rho)[128]!
          - (idBitsImt rho)[128]!) =
        lowerPeImt rho 125 by
    have hPe :
        lowerPe rho 124 *
          (1 + 2 * ((leafBits rho)[128]! * (idBits rho)[128]!)
            - (leafBits rho)[128]!
            - (idBits rho)[128]!) =
          lowerPe rho 125 := by
      rw [leafBits_get rho 128 (by omega),
        idBits_get rho 128 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2017 + 2 * (rho 1516) * r2016
    simpa only [
      lowerPeImt,
      leafBits_get rho 128 (by omega),
      idBits_get rho 128 (by omega),
      leafBitsImt_get rho 128 (by omega),
      idBitsImt_get rho 128 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 124 + lowerPeImt rho 124 *
        ((1 - (leafBitsImt rho)[128]!) *
          (idBitsImt rho)[128]!) =
        lowerIlImt rho 125 by
    have hIl :
        lowerIl rho 124 + lowerPe rho 124 *
          ((1 - (leafBits rho)[128]!) *
            (idBits rho)[128]!) =
          lowerIl rho 125 := by
      rw [leafBits_get rho 128 (by omega),
        idBits_get rho 128 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 124 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 123 + rho 1518 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 123)
      rw [hsum]
      linear_combination (rho 469) * r2014 + r2015
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 128 (by omega),
      idBits_get rho 128 (by omega),
      leafBitsImt_get rho 128 (by omega),
      idBitsImt_get rho 128 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep125 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        127 (lowerPeImt rho 126) (lowerIlImt rho 126)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      128 (lowerPeImt rho 125) (lowerIlImt rho 125) := by
  have r2018 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2018 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2019 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2019 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2020 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2020 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2021 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2021 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2018 at r2018
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2019 at r2019
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2020 at r2020
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow2021 at r2021
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 127
    (lowerPeImt rho 125 *
      (1 + 2 * ((leafBitsImt rho)[127]! * (idBitsImt rho)[127]!)
        - (leafBitsImt rho)[127]!
        - (idBitsImt rho)[127]!))
    (lowerIlImt rho 125 + lowerPeImt rho 125 *
      ((1 - (leafBitsImt rho)[127]!) *
        (idBitsImt rho)[127]!))
  rw [show
      lowerPeImt rho 125 *
        (1 + 2 * ((leafBitsImt rho)[127]! * (idBitsImt rho)[127]!)
          - (leafBitsImt rho)[127]!
          - (idBitsImt rho)[127]!) =
        lowerPeImt rho 126 by
    have hPe :
        lowerPe rho 125 *
          (1 + 2 * ((leafBits rho)[127]! * (idBits rho)[127]!)
            - (leafBits rho)[127]!
            - (idBits rho)[127]!) =
          lowerPe rho 126 := by
      rw [leafBits_get rho 127 (by omega),
        idBits_get rho 127 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2021 + 2 * (rho 1520) * r2020
    simpa only [
      lowerPeImt,
      leafBits_get rho 127 (by omega),
      idBits_get rho 127 (by omega),
      leafBitsImt_get rho 127 (by omega),
      idBitsImt_get rho 127 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 125 + lowerPeImt rho 125 *
        ((1 - (leafBitsImt rho)[127]!) *
          (idBitsImt rho)[127]!) =
        lowerIlImt rho 126 by
    have hIl :
        lowerIl rho 125 + lowerPe rho 125 *
          ((1 - (leafBits rho)[127]!) *
            (idBits rho)[127]!) =
          lowerIl rho 126 := by
      rw [leafBits_get rho 127 (by omega),
        idBits_get rho 127 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 125 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 124 + rho 1522 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 124)
      rw [hsum]
      linear_combination (rho 468) * r2018 + r2019
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 127 (by omega),
      idBits_get rho 127 (by omega),
      leafBitsImt_get rho 127 (by omega),
      idBitsImt_get rho 127 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange62 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      127 (lowerPeImt rho 126) (lowerIlImt rho 126)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      129 (lowerPeImt rho 124) (lowerIlImt rho 124) := by
  exact lowerStep124 rho h k (lowerStep125 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
