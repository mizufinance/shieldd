import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapUpper
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem exactMatch_eq (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    rho 1022 = Bool.toZMod (decide (rho 594 = rho 254)) := by
  have r1518 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1518 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r1519 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1519 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1518 at r1518
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow1519 at r1519
  by_cases hz : rho 594 = rho 254
  · simp [hz, Bool.toZMod_one]
    rw [hz] at r1518
    linear_combination -r1518
  · have hdiff : rho 594 - rho 254 ≠ 0 := sub_ne_zero.mpr hz
    have hmul : rho 1022 * (rho 594 - rho 254) = 0 := by
      linear_combination r1519
    have hout : rho 1022 = 0 :=
      (mul_eq_zero.mp hmul).resolve_right hdiff
    simpa [hz, Bool.toZMod_zero] using hout

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) : spec rho := by
  have hLeafGadget := gapLeaf_canonical rho h
    (fun bits => bits = leafBits rho) rfl
  obtain ⟨leafBool, hLeafBin, hLeafLt, hLeafMap⟩ :=
    Shieldd.GnarkFormal.Extracted.ImtGap.canonicalFqBitsGadget_canonical
      (rho 254) (fun bits => bits = leafBits rho) hLeafGadget
  have hIdGadget := gapId_canonical rho h
    (fun bits => bits = idBits rho) rfl
  obtain ⟨idBool, hIdBin, hIdLt, hIdMap⟩ :=
    Shieldd.GnarkFormal.Extracted.ImtGap.canonicalFqBitsGadget_canonical
      (rho 594) (fun bits => bits = idBits rho) hIdGadget
  have hNextGadget := gapNext_canonical rho h
    (fun bits => bits = nextBits rho) rfl
  obtain ⟨nextBool, hNextBin, hNextLt, hNextMap⟩ :=
    Shieldd.GnarkFormal.Extracted.ImtGap.canonicalFqBitsGadget_canonical
      (rho 934) (fun bits => bits = nextBits rho) hNextGadget
  have hLowerGadget :
      Shieldd.GnarkFormal.Extracted.ImtGap.lexLess253Gadget_253_253
        (leafBits rho) (idBits rho)
        (fun value => value = lowerIlImt rho 253) := by
    simpa only [leafBitsImt, idBitsImt, toImtBits] using
      lowerGadget rho h
        (fun value => value = lowerIlImt rho 253) rfl
  rw [← hLeafMap, ← hIdMap] at hLowerGadget
  have hLowerImt := Shieldd.GnarkFormal.Extracted.ImtGap.lexLess253Gadget_sound
    leafBool idBool (fun value => value = lowerIlImt rho 253) hLowerGadget
  have hLower :
      (Bool.toZMod (decide ((Fin.ofBitsLE leafBool).val <
        (Fin.ofBitsLE idBool).val)) : F) = lowerIl rho 253 := by
    apply toImtF_injective
    rw [toImtF_boolToZMod]
    simpa only [lowerIlImt] using hLowerImt
  have hUpperGadget :
      Shieldd.GnarkFormal.Extracted.ImtGap.lexLess253Gadget_253_253
        (idBits rho) (nextBits rho)
        (fun value => value = upperIlImt rho 253) := by
    simpa only [idBitsImt, nextBitsImt, toImtBits] using
      upperGadget rho h
        (fun value => value = upperIlImt rho 253) rfl
  rw [← hIdMap, ← hNextMap] at hUpperGadget
  have hUpperImt := Shieldd.GnarkFormal.Extracted.ImtGap.lexLess253Gadget_sound
    idBool nextBool (fun value => value = upperIlImt rho 253) hUpperGadget
  have hUpper :
      (Bool.toZMod (decide ((Fin.ofBitsLE idBool).val <
        (Fin.ofBitsLE nextBool).val)) : F) = upperIl rho 253 := by
    apply toImtF_injective
    rw [toImtF_boolToZMod]
    simpa only [upperIlImt] using hUpperImt
  have hLeafVal := Shieldd.GnarkFormal.Extracted.ImtGap.to_binary_val_eq_of_lt
    (rho 254) leafBool hLeafBin hLeafLt
  have hIdVal := Shieldd.GnarkFormal.Extracted.ImtGap.to_binary_val_eq_of_lt
    (rho 594) idBool hIdBin hIdLt
  have hNextVal := Shieldd.GnarkFormal.Extracted.ImtGap.to_binary_val_eq_of_lt
    (rho 934) nextBool hNextBin hNextLt
  have hExact := exactMatch_eq rho h
  have r3540 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3540 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have r3541 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3541 rho := h.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3540 at r3540
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationRow3541 at r3541
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationLc3 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relationLc4 at r3540
  simp only [Shieldd.GnarkFormal.StructuredLC.eval,
    Shieldd.GnarkFormal.StructuredLC.sumRuns,
    Shieldd.GnarkFormal.StructuredLC.sumResidual,
    Shieldd.GnarkFormal.StrideRun.eval, one_mul, zero_add,
    add_zero] at r3540
  change
    (Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 252 +
      rho 1023) *
      (Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 252 +
        rho 2033) = rho 3043 at r3540
  have hProduct :
      lowerIl rho 253 * upperIl rho 253 = rho 3043 := by
    simpa only [lowerIl, upperIl, add_comm] using r3540
  have boolToZMod_and (a b : Bool) :
      (Bool.toZMod (a && b) : F) =
        Bool.toZMod a * Bool.toZMod b := by
    cases a <;> cases b <;>
      simp [Bool.toZMod_zero, Bool.toZMod_one]
  unfold spec Shieldd.GnarkFormal.Extracted.ImtGap.BodyRelationSpec
  refine ⟨decide (rho 594 = rho 254),
    decide ((rho 254).val < (rho 594).val),
    decide ((rho 594).val < (rho 934).val),
    rfl, rfl, rfl, ?_⟩
  unfold Shieldd.GnarkFormal.Extracted.ImtGap.BodySelectRelation selected
  rw [hLeafVal, hIdVal, hNextVal]
  change rho 3043 + rho 3045 =
    (Bool.toZMod
      (decide ((Fin.ofBitsLE leafBool).val <
        (Fin.ofBitsLE idBool).val) &&
       decide ((Fin.ofBitsLE idBool).val <
        (Fin.ofBitsLE nextBool).val)) : F) -
      rho 3044 *
        ((Bool.toZMod
          (decide ((Fin.ofBitsLE leafBool).val <
            (Fin.ofBitsLE idBool).val) &&
           decide ((Fin.ofBitsLE idBool).val <
            (Fin.ofBitsLE nextBool).val)) : F) -
         (Bool.toZMod (decide (rho 594 = rho 254)) : F))
  rw [boolToZMod_and]
  rw [show Bool.toZMod
      (decide ((Fin.ofBitsLE leafBool).val <
        (Fin.ofBitsLE idBool).val)) = lowerIl rho 253
    from hLower]
  rw [show Bool.toZMod
      (decide ((Fin.ofBitsLE idBool).val <
        (Fin.ofBitsLE nextBool).val)) = upperIl rho 253
    from hUpper]
  rw [hProduct, ← hExact]
  linear_combination -r3541

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
