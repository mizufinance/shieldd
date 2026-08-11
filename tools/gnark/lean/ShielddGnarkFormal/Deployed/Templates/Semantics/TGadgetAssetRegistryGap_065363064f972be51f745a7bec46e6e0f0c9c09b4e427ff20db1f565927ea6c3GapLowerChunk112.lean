import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk111
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep224 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        28 (lowerPeImt rho 225) (lowerIlImt rho 225)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      29 (lowerPeImt rho 224) (lowerIlImt rho 224) := by
  have r2414 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2414 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2415 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2415 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2416 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2416 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2417 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2417 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2414 at r2414
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2415 at r2415
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2416 at r2416
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2417 at r2417
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 28
    (lowerPeImt rho 224 *
      (1 + 2 * ((leafBitsImt rho)[28]! * (idBitsImt rho)[28]!)
        - (leafBitsImt rho)[28]!
        - (idBitsImt rho)[28]!))
    (lowerIlImt rho 224 + lowerPeImt rho 224 *
      ((1 - (leafBitsImt rho)[28]!) *
        (idBitsImt rho)[28]!))
  rw [show
      lowerPeImt rho 224 *
        (1 + 2 * ((leafBitsImt rho)[28]! * (idBitsImt rho)[28]!)
          - (leafBitsImt rho)[28]!
          - (idBitsImt rho)[28]!) =
        lowerPeImt rho 225 by
    have hPe :
        lowerPe rho 224 *
          (1 + 2 * ((leafBits rho)[28]! * (idBits rho)[28]!)
            - (leafBits rho)[28]!
            - (idBits rho)[28]!) =
          lowerPe rho 225 := by
      rw [leafBits_get rho 28 (by omega),
        idBits_get rho 28 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2417 + 2 * (rho 1916) * r2416
    simpa only [
      lowerPeImt,
      leafBits_get rho 28 (by omega),
      idBits_get rho 28 (by omega),
      leafBitsImt_get rho 28 (by omega),
      idBitsImt_get rho 28 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 224 + lowerPeImt rho 224 *
        ((1 - (leafBitsImt rho)[28]!) *
          (idBitsImt rho)[28]!) =
        lowerIlImt rho 225 by
    have hIl :
        lowerIl rho 224 + lowerPe rho 224 *
          ((1 - (leafBits rho)[28]!) *
            (idBits rho)[28]!) =
          lowerIl rho 225 := by
      rw [leafBits_get rho 28 (by omega),
        idBits_get rho 28 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 224 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 223 + rho 1918 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 223)
      rw [hsum]
      linear_combination (rho 369) * r2414 + r2415
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 28 (by omega),
      idBits_get rho 28 (by omega),
      leafBitsImt_get rho 28 (by omega),
      idBitsImt_get rho 28 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep225 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        27 (lowerPeImt rho 226) (lowerIlImt rho 226)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      28 (lowerPeImt rho 225) (lowerIlImt rho 225) := by
  have r2418 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2418 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2419 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2419 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2420 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2420 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2421 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2421 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2418 at r2418
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2419 at r2419
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2420 at r2420
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2421 at r2421
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 27
    (lowerPeImt rho 225 *
      (1 + 2 * ((leafBitsImt rho)[27]! * (idBitsImt rho)[27]!)
        - (leafBitsImt rho)[27]!
        - (idBitsImt rho)[27]!))
    (lowerIlImt rho 225 + lowerPeImt rho 225 *
      ((1 - (leafBitsImt rho)[27]!) *
        (idBitsImt rho)[27]!))
  rw [show
      lowerPeImt rho 225 *
        (1 + 2 * ((leafBitsImt rho)[27]! * (idBitsImt rho)[27]!)
          - (leafBitsImt rho)[27]!
          - (idBitsImt rho)[27]!) =
        lowerPeImt rho 226 by
    have hPe :
        lowerPe rho 225 *
          (1 + 2 * ((leafBits rho)[27]! * (idBits rho)[27]!)
            - (leafBits rho)[27]!
            - (idBits rho)[27]!) =
          lowerPe rho 226 := by
      rw [leafBits_get rho 27 (by omega),
        idBits_get rho 27 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2421 + 2 * (rho 1920) * r2420
    simpa only [
      lowerPeImt,
      leafBits_get rho 27 (by omega),
      idBits_get rho 27 (by omega),
      leafBitsImt_get rho 27 (by omega),
      idBitsImt_get rho 27 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 225 + lowerPeImt rho 225 *
        ((1 - (leafBitsImt rho)[27]!) *
          (idBitsImt rho)[27]!) =
        lowerIlImt rho 226 by
    have hIl :
        lowerIl rho 225 + lowerPe rho 225 *
          ((1 - (leafBits rho)[27]!) *
            (idBits rho)[27]!) =
          lowerIl rho 226 := by
      rw [leafBits_get rho 27 (by omega),
        idBits_get rho 27 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 225 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 224 + rho 1922 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 224)
      rw [hsum]
      linear_combination (rho 368) * r2418 + r2419
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 27 (by omega),
      idBits_get rho 27 (by omega),
      leafBitsImt_get rho 27 (by omega),
      idBitsImt_get rho 27 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange112 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      27 (lowerPeImt rho 226) (lowerIlImt rho 226)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      29 (lowerPeImt rho 224) (lowerIlImt rho 224) := by
  exact lowerStep224 rho h k (lowerStep225 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
