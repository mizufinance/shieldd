import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapNext
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep0 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        252 (lowerPeImt rho 1) (lowerIlImt rho 1)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      253 (lowerPeImt rho 0) (lowerIlImt rho 0) := by
  have r1520 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1520 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.1
  have r1521 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1521 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1520 at r1520
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1521 at r1521
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 252
    (lowerPeImt rho 0 *
      (1 + 2 * ((leafBitsImt rho)[252]! * (idBitsImt rho)[252]!)
        - (leafBitsImt rho)[252]!
        - (idBitsImt rho)[252]!))
    (lowerIlImt rho 0 + lowerPeImt rho 0 *
      ((1 - (leafBitsImt rho)[252]!) *
        (idBitsImt rho)[252]!))
  rw [show
      lowerPeImt rho 0 *
        (1 + 2 * ((leafBitsImt rho)[252]! * (idBitsImt rho)[252]!)
          - (leafBitsImt rho)[252]!
          - (idBitsImt rho)[252]!) =
        lowerPeImt rho 1 by
    have hPe :
        lowerPe rho 0 *
          (1 + 2 * ((leafBits rho)[252]! * (idBits rho)[252]!)
            - (leafBits rho)[252]!
            - (idBits rho)[252]!) =
          lowerPe rho 1 := by
      rw [leafBits_get rho 252 (by omega),
        idBits_get rho 252 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination 2 * r1521
    simpa only [
      lowerPeImt,
      leafBits_get rho 252 (by omega),
      idBits_get rho 252 (by omega),
      leafBitsImt_get rho 252 (by omega),
      idBitsImt_get rho 252 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 0 + lowerPeImt rho 0 *
        ((1 - (leafBitsImt rho)[252]!) *
          (idBitsImt rho)[252]!) =
        lowerIlImt rho 1 by
    have hIl :
        lowerIl rho 0 + lowerPe rho 0 *
          ((1 - (leafBits rho)[252]!) *
            (idBits rho)[252]!) =
          lowerIl rho 1 := by
      rw [leafBits_get rho 252 (by omega),
        idBits_get rho 252 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      linear_combination r1520
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 252 (by omega),
      idBits_get rho 252 (by omega),
      leafBitsImt_get rho 252 (by omega),
      idBitsImt_get rho 252 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep1 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        251 (lowerPeImt rho 2) (lowerIlImt rho 2)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      252 (lowerPeImt rho 1) (lowerIlImt rho 1) := by
  have r1522 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1522 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.1
  have r1523 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1523 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.1
  have r1524 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1524 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.1
  have r1525 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1525 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1522 at r1522
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1523 at r1523
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1524 at r1524
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1525 at r1525
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 251
    (lowerPeImt rho 1 *
      (1 + 2 * ((leafBitsImt rho)[251]! * (idBitsImt rho)[251]!)
        - (leafBitsImt rho)[251]!
        - (idBitsImt rho)[251]!))
    (lowerIlImt rho 1 + lowerPeImt rho 1 *
      ((1 - (leafBitsImt rho)[251]!) *
        (idBitsImt rho)[251]!))
  rw [show
      lowerPeImt rho 1 *
        (1 + 2 * ((leafBitsImt rho)[251]! * (idBitsImt rho)[251]!)
          - (leafBitsImt rho)[251]!
          - (idBitsImt rho)[251]!) =
        lowerPeImt rho 2 by
    have hPe :
        lowerPe rho 1 *
          (1 + 2 * ((leafBits rho)[251]! * (idBits rho)[251]!)
            - (leafBits rho)[251]!
            - (idBits rho)[251]!) =
          lowerPe rho 2 := by
      rw [leafBits_get rho 251 (by omega),
        idBits_get rho 251 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1525 + 2 * ((1 + 2 * rho 1024 - rho 253 - rho 593)) * r1524
    simpa only [
      lowerPeImt,
      leafBits_get rho 251 (by omega),
      idBits_get rho 251 (by omega),
      leafBitsImt_get rho 251 (by omega),
      idBitsImt_get rho 251 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 1 + lowerPeImt rho 1 *
        ((1 - (leafBitsImt rho)[251]!) *
          (idBitsImt rho)[251]!) =
        lowerIlImt rho 2 by
    have hIl :
        lowerIl rho 1 + lowerPe rho 1 *
          ((1 - (leafBits rho)[251]!) *
            (idBits rho)[251]!) =
          lowerIl rho 2 := by
      rw [leafBits_get rho 251 (by omega),
        idBits_get rho 251 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 1 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 0 + rho 1026 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 0)
      rw [hsum]
      simp only [
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      linear_combination (rho 592) * r1522 + r1523
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 251 (by omega),
      idBits_get rho 251 (by omega),
      leafBitsImt_get rho 251 (by omega),
      idBitsImt_get rho 251 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange0 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      251 (lowerPeImt rho 2) (lowerIlImt rho 2)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      253 (lowerPeImt rho 0) (lowerIlImt rho 0) := by
  exact lowerStep0 rho h k (lowerStep1 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
