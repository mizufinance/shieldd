import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk43
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerStep88 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        164 (lowerPeImt rho 89) (lowerIlImt rho 89)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      165 (lowerPeImt rho 88) (lowerIlImt rho 88) := by
  have r1870 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1870 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1871 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1871 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1872 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1872 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1873 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1873 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1870 at r1870
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1871 at r1871
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1872 at r1872
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1873 at r1873
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 164
    (lowerPeImt rho 88 *
      (1 + 2 * ((leafBitsImt rho)[164]! * (idBitsImt rho)[164]!)
        - (leafBitsImt rho)[164]!
        - (idBitsImt rho)[164]!))
    (lowerIlImt rho 88 + lowerPeImt rho 88 *
      ((1 - (leafBitsImt rho)[164]!) *
        (idBitsImt rho)[164]!))
  rw [show
      lowerPeImt rho 88 *
        (1 + 2 * ((leafBitsImt rho)[164]! * (idBitsImt rho)[164]!)
          - (leafBitsImt rho)[164]!
          - (idBitsImt rho)[164]!) =
        lowerPeImt rho 89 by
    have hPe :
        lowerPe rho 88 *
          (1 + 2 * ((leafBits rho)[164]! * (idBits rho)[164]!)
            - (leafBits rho)[164]!
            - (idBits rho)[164]!) =
          lowerPe rho 89 := by
      rw [leafBits_get rho 164 (by omega),
        idBits_get rho 164 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1873 + 2 * (rho 1372) * r1872
    simpa only [
      lowerPeImt,
      leafBits_get rho 164 (by omega),
      idBits_get rho 164 (by omega),
      leafBitsImt_get rho 164 (by omega),
      idBitsImt_get rho 164 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 88 + lowerPeImt rho 88 *
        ((1 - (leafBitsImt rho)[164]!) *
          (idBitsImt rho)[164]!) =
        lowerIlImt rho 89 by
    have hIl :
        lowerIl rho 88 + lowerPe rho 88 *
          ((1 - (leafBits rho)[164]!) *
            (idBits rho)[164]!) =
          lowerIl rho 89 := by
      rw [leafBits_get rho 164 (by omega),
        idBits_get rho 164 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 88 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 87 + rho 1374 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 87)
      rw [hsum]
      linear_combination (rho 505) * r1870 + r1871
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 164 (by omega),
      idBits_get rho 164 (by omega),
      leafBitsImt_get rho 164 (by omega),
      idBitsImt_get rho 164 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerStep89 (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail :
      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
        (leafBitsImt rho) (idBitsImt rho) k
        163 (lowerPeImt rho 90) (lowerIlImt rho 90)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      164 (lowerPeImt rho 89) (lowerIlImt rho 89) := by
  have r1874 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1874 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1875 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1875 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1876 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1876 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1877 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1877 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1874 at r1874
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1875 at r1875
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1876 at r1876
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow1877 at r1877
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]
  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
    (leafBitsImt rho) (idBitsImt rho) k 163
    (lowerPeImt rho 89 *
      (1 + 2 * ((leafBitsImt rho)[163]! * (idBitsImt rho)[163]!)
        - (leafBitsImt rho)[163]!
        - (idBitsImt rho)[163]!))
    (lowerIlImt rho 89 + lowerPeImt rho 89 *
      ((1 - (leafBitsImt rho)[163]!) *
        (idBitsImt rho)[163]!))
  rw [show
      lowerPeImt rho 89 *
        (1 + 2 * ((leafBitsImt rho)[163]! * (idBitsImt rho)[163]!)
          - (leafBitsImt rho)[163]!
          - (idBitsImt rho)[163]!) =
        lowerPeImt rho 90 by
    have hPe :
        lowerPe rho 89 *
          (1 + 2 * ((leafBits rho)[163]! * (idBits rho)[163]!)
            - (leafBits rho)[163]!
            - (idBits rho)[163]!) =
          lowerPe rho 90 := by
      rw [leafBits_get rho 163 (by omega),
        idBits_get rho 163 (by omega)]
      simp only [lowerPe, Nat.reduceAdd, Nat.reduceMul]
      linear_combination r1877 + 2 * (rho 1376) * r1876
    simpa only [
      lowerPeImt,
      leafBits_get rho 163 (by omega),
      idBits_get rho 163 (by omega),
      leafBitsImt_get rho 163 (by omega),
      idBitsImt_get rho 163 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,
      toImtF_natCast] using congrArg toImtF hPe
  , show
      lowerIlImt rho 89 + lowerPeImt rho 89 *
        ((1 - (leafBitsImt rho)[163]!) *
          (idBitsImt rho)[163]!) =
        lowerIlImt rho 90 by
    have hIl :
        lowerIl rho 89 + lowerPe rho 89 *
          ((1 - (leafBits rho)[163]!) *
            (idBits rho)[163]!) =
          lowerIl rho 90 := by
      rw [leafBits_get rho 163 (by omega),
        idBits_get rho 163 (by omega)]
      simp only [lowerPe, lowerIl, Nat.reduceAdd, Nat.reduceMul,
        Shieldd.GnarkFormal.StrideRun.sumAux_zero]
      have hsum :
          Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 89 =
            Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 88 + rho 1378 := by
        simpa using
          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho
            1026 4 88)
      rw [hsum]
      linear_combination (rho 504) * r1874 + r1875
    simpa only [
      lowerPeImt, lowerIlImt,
      leafBits_get rho 163 (by omega),
      idBits_get rho 163 (by omega),
      leafBitsImt_get rho 163 (by omega),
      idBitsImt_get rho 163 (by omega),
      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]
      using congrArg toImtF hIl
  ]
  exact tail

theorem lowerRange44 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      163 (lowerPeImt rho 90) (lowerIlImt rho 90)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      165 (lowerPeImt rho 88) (lowerIlImt rho 88) := by
  exact lowerStep88 rho h k (lowerStep89 rho h k (tail))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
