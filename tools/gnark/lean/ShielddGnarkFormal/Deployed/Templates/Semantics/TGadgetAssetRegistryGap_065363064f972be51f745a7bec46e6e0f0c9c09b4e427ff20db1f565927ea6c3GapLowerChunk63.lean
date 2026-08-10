import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk62
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep126 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        126 (lowerPeImt rho 127) (lowerIlImt rho 127)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      127 (lowerPeImt rho 126) (lowerIlImt rho 126) := by
  have r2022 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2022 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2023 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2023 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2024 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2024 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2025 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2025 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2022 at r2022
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2023 at r2023
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2024 at r2024
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2025 at r2025
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 126
    (lowerPeImt rho 126 *
      (1 + 2 * ((leafBitsImt rho)[126]! * (idBitsImt rho)[126]!)
        - (leafBitsImt rho)[126]!
        - (idBitsImt rho)[126]!))
    (lowerIlImt rho 126 + lowerPeImt rho 126 *
      ((1 - (leafBitsImt rho)[126]!) *
        (idBitsImt rho)[126]!))
  rw [show
      lowerPeImt rho 126 *
        (1 + 2 * ((leafBitsImt rho)[126]! * (idBitsImt rho)[126]!)
          - (leafBitsImt rho)[126]!
          - (idBitsImt rho)[126]!) =
        lowerPeImt rho 127 by
    have hPe :
        lowerPe rho 126 *
          (1 + 2 * ((leafBits rho)[126]! * (idBits rho)[126]!)
            - (leafBits rho)[126]!
            - (idBits rho)[126]!) =
          lowerPe rho 127 := by
      rw [leafBits_get rho 126 (by omega),
        idBits_get rho 126 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2025 + 2 * (rho 1524) * r2024
    simpa only [
      lowerPeImt,
      leafBits_get rho 126 (by omega),
      idBits_get rho 126 (by omega),
      leafBitsImt_get rho 126 (by omega),
      idBitsImt_get rho 126 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 126 + lowerPeImt rho 126 *
        ((1 - (leafBitsImt rho)[126]!) *
          (idBitsImt rho)[126]!) =
        lowerIlImt rho 127 by
    have hIl :
        lowerIl rho 126 + lowerPe rho 126 *
          ((1 - (leafBits rho)[126]!) *
            (idBits rho)[126]!) =
          lowerIl rho 127 := by
      rw [leafBits_get rho 126 (by omega),
        idBits_get rho 126 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 126 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 125 + rho 1526 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 125)
      rw [hsum]
      linear_combination (rho 467) * r2022 + r2023
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 126 (by omega),
      idBits_get rho 126 (by omega),
      leafBitsImt_get rho 126 (by omega),
      idBitsImt_get rho 126 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep127 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        125 (lowerPeImt rho 128) (lowerIlImt rho 128)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      126 (lowerPeImt rho 127) (lowerIlImt rho 127) := by
  have r2026 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2026 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2027 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2027 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2028 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2028 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r2029 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2029 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2026 at r2026
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2027 at r2027
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2028 at r2028
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow2029 at r2029
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 125
    (lowerPeImt rho 127 *
      (1 + 2 * ((leafBitsImt rho)[125]! * (idBitsImt rho)[125]!)
        - (leafBitsImt rho)[125]!
        - (idBitsImt rho)[125]!))
    (lowerIlImt rho 127 + lowerPeImt rho 127 *
      ((1 - (leafBitsImt rho)[125]!) *
        (idBitsImt rho)[125]!))
  rw [show
      lowerPeImt rho 127 *
        (1 + 2 * ((leafBitsImt rho)[125]! * (idBitsImt rho)[125]!)
          - (leafBitsImt rho)[125]!
          - (idBitsImt rho)[125]!) =
        lowerPeImt rho 128 by
    have hPe :
        lowerPe rho 127 *
          (1 + 2 * ((leafBits rho)[125]! * (idBits rho)[125]!)
            - (leafBits rho)[125]!
            - (idBits rho)[125]!) =
          lowerPe rho 128 := by
      rw [leafBits_get rho 125 (by omega),
        idBits_get rho 125 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r2029 + 2 * (rho 1528) * r2028
    simpa only [
      lowerPeImt,
      leafBits_get rho 125 (by omega),
      idBits_get rho 125 (by omega),
      leafBitsImt_get rho 125 (by omega),
      idBitsImt_get rho 125 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 127 + lowerPeImt rho 127 *
        ((1 - (leafBitsImt rho)[125]!) *
          (idBitsImt rho)[125]!) =
        lowerIlImt rho 128 by
    have hIl :
        lowerIl rho 127 + lowerPe rho 127 *
          ((1 - (leafBits rho)[125]!) *
            (idBits rho)[125]!) =
          lowerIl rho 128 := by
      rw [leafBits_get rho 125 (by omega),
        idBits_get rho 125 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 127 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 126 + rho 1530 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 126)
      rw [hsum]
      linear_combination (rho 466) * r2026 + r2027
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 125 (by omega),
      idBits_get rho 125 (by omega),
      leafBitsImt_get rho 125 (by omega),
      idBitsImt_get rho 125 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange63 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      125 (lowerPeImt rho 128) (lowerIlImt rho 128)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      127 (lowerPeImt rho 126) (lowerIlImt rho 126) := by
  exact lowerStep126 rho h k (lowerStep127 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
