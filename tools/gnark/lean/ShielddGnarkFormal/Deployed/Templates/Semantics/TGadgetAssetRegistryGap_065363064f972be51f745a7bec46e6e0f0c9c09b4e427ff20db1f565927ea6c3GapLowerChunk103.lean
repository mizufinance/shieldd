import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk102
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep206 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        46 (lowerPeImt rho 207) (lowerIlImt rho 207)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      47 (lowerPeImt rho 206) (lowerIlImt rho 206) := by
  have r2342 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2342 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2343 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2343 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2344 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2344 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2345 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2345 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2342 at r2342
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2343 at r2343
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2344 at r2344
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2345 at r2345
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 46
    (lowerPeImt rho 206 *
      (1 + 2 * ((leafBitsImt rho)[46]! * (idBitsImt rho)[46]!)
        - (leafBitsImt rho)[46]!
        - (idBitsImt rho)[46]!))
    (lowerIlImt rho 206 + lowerPeImt rho 206 *
      ((1 - (leafBitsImt rho)[46]!) *
        (idBitsImt rho)[46]!))
  rw [show
      lowerPeImt rho 206 *
        (1 + 2 * ((leafBitsImt rho)[46]! * (idBitsImt rho)[46]!)
          - (leafBitsImt rho)[46]!
          - (idBitsImt rho)[46]!) =
        lowerPeImt rho 207 by
    have hPe :
        lowerPe rho 206 *
          (1 + 2 * ((leafBits rho)[46]! * (idBits rho)[46]!)
            - (leafBits rho)[46]!
            - (idBits rho)[46]!) =
          lowerPe rho 207 := by
      rw [leafBits_get rho 46 (by omega),
        idBits_get rho 46 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2345 + 2 * (rho 1844) * r2344
    simpa only [
      lowerPeImt,
      leafBits_get rho 46 (by omega),
      idBits_get rho 46 (by omega),
      leafBitsImt_get rho 46 (by omega),
      idBitsImt_get rho 46 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 206 + lowerPeImt rho 206 *
        ((1 - (leafBitsImt rho)[46]!) *
          (idBitsImt rho)[46]!) =
        lowerIlImt rho 207 by
    have hIl :
        lowerIl rho 206 + lowerPe rho 206 *
          ((1 - (leafBits rho)[46]!) *
            (idBits rho)[46]!) =
          lowerIl rho 207 := by
      rw [leafBits_get rho 46 (by omega),
        idBits_get rho 46 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 206 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 205 + rho 1846 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 205)
      rw [hsum]
      linear_combination (rho 387) * r2342 + r2343
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 46 (by omega),
      idBits_get rho 46 (by omega),
      leafBitsImt_get rho 46 (by omega),
      idBitsImt_get rho 46 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep207 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        45 (lowerPeImt rho 208) (lowerIlImt rho 208)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      46 (lowerPeImt rho 207) (lowerIlImt rho 207) := by
  have r2346 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2346 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2347 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2347 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2348 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2348 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2349 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2349 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2346 at r2346
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2347 at r2347
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2348 at r2348
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2349 at r2349
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 45
    (lowerPeImt rho 207 *
      (1 + 2 * ((leafBitsImt rho)[45]! * (idBitsImt rho)[45]!)
        - (leafBitsImt rho)[45]!
        - (idBitsImt rho)[45]!))
    (lowerIlImt rho 207 + lowerPeImt rho 207 *
      ((1 - (leafBitsImt rho)[45]!) *
        (idBitsImt rho)[45]!))
  rw [show
      lowerPeImt rho 207 *
        (1 + 2 * ((leafBitsImt rho)[45]! * (idBitsImt rho)[45]!)
          - (leafBitsImt rho)[45]!
          - (idBitsImt rho)[45]!) =
        lowerPeImt rho 208 by
    have hPe :
        lowerPe rho 207 *
          (1 + 2 * ((leafBits rho)[45]! * (idBits rho)[45]!)
            - (leafBits rho)[45]!
            - (idBits rho)[45]!) =
          lowerPe rho 208 := by
      rw [leafBits_get rho 45 (by omega),
        idBits_get rho 45 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2349 + 2 * (rho 1848) * r2348
    simpa only [
      lowerPeImt,
      leafBits_get rho 45 (by omega),
      idBits_get rho 45 (by omega),
      leafBitsImt_get rho 45 (by omega),
      idBitsImt_get rho 45 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 207 + lowerPeImt rho 207 *
        ((1 - (leafBitsImt rho)[45]!) *
          (idBitsImt rho)[45]!) =
        lowerIlImt rho 208 by
    have hIl :
        lowerIl rho 207 + lowerPe rho 207 *
          ((1 - (leafBits rho)[45]!) *
            (idBits rho)[45]!) =
          lowerIl rho 208 := by
      rw [leafBits_get rho 45 (by omega),
        idBits_get rho 45 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 207 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 206 + rho 1850 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 206)
      rw [hsum]
      linear_combination (rho 386) * r2346 + r2347
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 45 (by omega),
      idBits_get rho 45 (by omega),
      leafBitsImt_get rho 45 (by omega),
      idBitsImt_get rho 45 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange103 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      45 (lowerPeImt rho 208) (lowerIlImt rho 208)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      47 (lowerPeImt rho 206) (lowerIlImt rho 206) := by
  exact lowerStep206 rho h k (lowerStep207 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
