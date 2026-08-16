import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk112
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep226 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        26 (lowerPeImt rho 227) (lowerIlImt rho 227)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      27 (lowerPeImt rho 226) (lowerIlImt rho 226) := by
  have r2422 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2422 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2423 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2423 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2424 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2424 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2425 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2425 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2422 at r2422
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2423 at r2423
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2424 at r2424
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2425 at r2425
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 26
    (lowerPeImt rho 226 *
      (1 + 2 * ((leafBitsImt rho)[26]! * (idBitsImt rho)[26]!)
        - (leafBitsImt rho)[26]!
        - (idBitsImt rho)[26]!))
    (lowerIlImt rho 226 + lowerPeImt rho 226 *
      ((1 - (leafBitsImt rho)[26]!) *
        (idBitsImt rho)[26]!))
  rw [show
      lowerPeImt rho 226 *
        (1 + 2 * ((leafBitsImt rho)[26]! * (idBitsImt rho)[26]!)
          - (leafBitsImt rho)[26]!
          - (idBitsImt rho)[26]!) =
        lowerPeImt rho 227 by
    have hPe :
        lowerPe rho 226 *
          (1 + 2 * ((leafBits rho)[26]! * (idBits rho)[26]!)
            - (leafBits rho)[26]!
            - (idBits rho)[26]!) =
          lowerPe rho 227 := by
      rw [leafBits_get rho 26 (by omega),
        idBits_get rho 26 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2425 + 2 * (rho 1924) * r2424
    simpa only [
      lowerPeImt,
      leafBits_get rho 26 (by omega),
      idBits_get rho 26 (by omega),
      leafBitsImt_get rho 26 (by omega),
      idBitsImt_get rho 26 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 226 + lowerPeImt rho 226 *
        ((1 - (leafBitsImt rho)[26]!) *
          (idBitsImt rho)[26]!) =
        lowerIlImt rho 227 by
    have hIl :
        lowerIl rho 226 + lowerPe rho 226 *
          ((1 - (leafBits rho)[26]!) *
            (idBits rho)[26]!) =
          lowerIl rho 227 := by
      rw [leafBits_get rho 26 (by omega),
        idBits_get rho 26 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 226 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 225 + rho 1926 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 225)
      rw [hsum]
      linear_combination (rho 367) * r2422 + r2423
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 26 (by omega),
      idBits_get rho 26 (by omega),
      leafBitsImt_get rho 26 (by omega),
      idBitsImt_get rho 26 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep227 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        25 (lowerPeImt rho 228) (lowerIlImt rho 228)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      26 (lowerPeImt rho 227) (lowerIlImt rho 227) := by
  have r2426 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2426 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2427 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2427 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2428 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2428 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2429 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2429 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2426 at r2426
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2427 at r2427
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2428 at r2428
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2429 at r2429
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 25
    (lowerPeImt rho 227 *
      (1 + 2 * ((leafBitsImt rho)[25]! * (idBitsImt rho)[25]!)
        - (leafBitsImt rho)[25]!
        - (idBitsImt rho)[25]!))
    (lowerIlImt rho 227 + lowerPeImt rho 227 *
      ((1 - (leafBitsImt rho)[25]!) *
        (idBitsImt rho)[25]!))
  rw [show
      lowerPeImt rho 227 *
        (1 + 2 * ((leafBitsImt rho)[25]! * (idBitsImt rho)[25]!)
          - (leafBitsImt rho)[25]!
          - (idBitsImt rho)[25]!) =
        lowerPeImt rho 228 by
    have hPe :
        lowerPe rho 227 *
          (1 + 2 * ((leafBits rho)[25]! * (idBits rho)[25]!)
            - (leafBits rho)[25]!
            - (idBits rho)[25]!) =
          lowerPe rho 228 := by
      rw [leafBits_get rho 25 (by omega),
        idBits_get rho 25 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2429 + 2 * (rho 1928) * r2428
    simpa only [
      lowerPeImt,
      leafBits_get rho 25 (by omega),
      idBits_get rho 25 (by omega),
      leafBitsImt_get rho 25 (by omega),
      idBitsImt_get rho 25 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 227 + lowerPeImt rho 227 *
        ((1 - (leafBitsImt rho)[25]!) *
          (idBitsImt rho)[25]!) =
        lowerIlImt rho 228 by
    have hIl :
        lowerIl rho 227 + lowerPe rho 227 *
          ((1 - (leafBits rho)[25]!) *
            (idBits rho)[25]!) =
          lowerIl rho 228 := by
      rw [leafBits_get rho 25 (by omega),
        idBits_get rho 25 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 227 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 226 + rho 1930 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 226)
      rw [hsum]
      linear_combination (rho 366) * r2426 + r2427
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 25 (by omega),
      idBits_get rho 25 (by omega),
      leafBitsImt_get rho 25 (by omega),
      idBitsImt_get rho 25 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange113 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      25 (lowerPeImt rho 228) (lowerIlImt rho 228)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      27 (lowerPeImt rho 226) (lowerIlImt rho 226) := by
  exact lowerStep226 rho h k (lowerStep227 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
