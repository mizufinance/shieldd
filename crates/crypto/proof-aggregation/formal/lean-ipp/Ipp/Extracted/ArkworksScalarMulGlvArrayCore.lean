import Ipp.Extracted.ArkworksScalarMulGlvArithmetic

/-! Four/six-limb conversion helpers used by the extracted decomposition. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvArrayCore

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize
abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize

def low4 (value : WideArray) : ScalarArray :=
  MacCampaign.Array.make 4#usize
    [limbWord value ⟨0, by decide⟩, limbWord value ⟨1, by decide⟩,
      limbWord value ⟨2, by decide⟩, limbWord value ⟨3, by decide⟩]

def widen4 (value : ScalarArray) : WideArray :=
  MacCampaign.Array.make 6#usize
    [Ipp.Extracted.ArkworksFr.limbWord value ⟨0, by decide⟩,
      Ipp.Extracted.ArkworksFr.limbWord value ⟨1, by decide⟩,
      Ipp.Extracted.ArkworksFr.limbWord value ⟨2, by decide⟩,
      Ipp.Extracted.ArkworksFr.limbWord value ⟨3, by decide⟩,
      0#u64, 0#u64]

theorem widen4_value (value : ScalarArray) :
    Ipp.Extracted.ArkworksScalarMul.GlvArithmetic.wideToNat (widen4 value) =
      scalarToNat value := by
  rw [Ipp.Extracted.ArkworksScalarMul.GlvArithmetic.wideToNat,
    limbsToNat_six, scalarToNat, Ipp.Extracted.ArkworksFr.limbsToNat_four]
  simp [widen4, limb, limbWord, Ipp.Extracted.ArkworksFr.limb,
    Ipp.Extracted.ArkworksFr.limbWord, MacCampaign.Array.make,
    MacCampaign.U64.ofNat, MacCampaign.u64Base]

theorem low4_value (value : WideArray)
    (hbound : Ipp.Extracted.ArkworksScalarMul.GlvArithmetic.wideToNat value <
      wordBase ^ 4) :
    scalarToNat (low4 value) =
      Ipp.Extracted.ArkworksScalarMul.GlvArithmetic.wideToNat value := by
  rw [Ipp.Extracted.ArkworksScalarMul.GlvArithmetic.wideToNat,
    limbsToNat_six] at hbound ⊢
  rw [scalarToNat, Ipp.Extracted.ArkworksFr.limbsToNat_four]
  simp only [low4, Ipp.Extracted.ArkworksFr.limb,
    Ipp.Extracted.ArkworksFr.limbWord, MacCampaign.Array.make]
  have h4 : limb value ⟨4, by decide⟩ = 0 := by
    have hterm : limb value ⟨4, by decide⟩ * wordBase ^ 4 <
        wordBase ^ 4 := by omega
    by_contra h
    have hpos : 1 ≤ limb value ⟨4, by decide⟩ := Nat.one_le_iff_ne_zero.2 h
    have hword : wordBase ^ 4 ≤
        limb value ⟨4, by decide⟩ * wordBase ^ 4 := by
      simpa using Nat.mul_le_mul_right (wordBase ^ 4) hpos
    omega
  have h5 : limb value ⟨5, by decide⟩ = 0 := by
    have hterm : limb value ⟨5, by decide⟩ * wordBase ^ 5 <
        wordBase ^ 4 := by omega
    by_contra h
    have hpos : 1 ≤ limb value ⟨5, by decide⟩ := Nat.one_le_iff_ne_zero.2 h
    have hp : wordBase ^ 4 ≤ wordBase ^ 5 := by
      exact Nat.pow_le_pow_right (by decide) (by omega)
    have hword : wordBase ^ 5 ≤
        limb value ⟨5, by decide⟩ * wordBase ^ 5 := by
      simpa using Nat.mul_le_mul_right (wordBase ^ 5) hpos
    omega
  rw [h4, h5]
  simp [low4, limb, limbWord, MacCampaign.Array.make]

theorem extracted_low4 (value : WideArray) :
    (show Result ScalarArray from do
      let x0 ← MacCampaign.Array.index_usize value 0#usize
      let x1 ← MacCampaign.Array.index_usize value 1#usize
      let x2 ← MacCampaign.Array.index_usize value 2#usize
      let x3 ← MacCampaign.Array.index_usize value 3#usize
      .ok (MacCampaign.Array.make 4#usize [x0, x1, x2, x3])) =
      .ok (low4 value) := by
  rw [array_index_limbWord value ⟨0, by decide⟩,
    array_index_limbWord value ⟨1, by decide⟩,
    array_index_limbWord value ⟨2, by decide⟩,
    array_index_limbWord value ⟨3, by decide⟩]
  rfl

theorem extracted_widen4 (value : ScalarArray) :
    (show Result WideArray from do
      let x0 ← MacCampaign.Array.index_usize value 0#usize
      let x1 ← MacCampaign.Array.index_usize value 1#usize
      let x2 ← MacCampaign.Array.index_usize value 2#usize
      let x3 ← MacCampaign.Array.index_usize value 3#usize
      .ok (MacCampaign.Array.make 6#usize [x0, x1, x2, x3, 0#u64, 0#u64])) =
      .ok (widen4 value) := by
  rw [Ipp.Extracted.ArkworksFr.array_index_limbWord value ⟨0, by decide⟩,
    Ipp.Extracted.ArkworksFr.array_index_limbWord value ⟨1, by decide⟩,
    Ipp.Extracted.ArkworksFr.array_index_limbWord value ⟨2, by decide⟩,
    Ipp.Extracted.ArkworksFr.array_index_limbWord value ⟨3, by decide⟩]
  rfl

theorem bind_low4 {alpha : Type} (value : WideArray)
    (next : ScalarArray → Result alpha) :
    (do
      let x0 ← MacCampaign.Array.index_usize value 0#usize
      let x1 ← MacCampaign.Array.index_usize value 1#usize
      let x2 ← MacCampaign.Array.index_usize value 2#usize
      let x3 ← MacCampaign.Array.index_usize value 3#usize
      next (MacCampaign.Array.make 4#usize [x0, x1, x2, x3])) =
      next (low4 value) := by
  rw [array_index_limbWord value ⟨0, by decide⟩,
    array_index_limbWord value ⟨1, by decide⟩,
    array_index_limbWord value ⟨2, by decide⟩,
    array_index_limbWord value ⟨3, by decide⟩]
  rfl

theorem bind_widen4 {alpha : Type} (value : ScalarArray)
    (next : WideArray → Result alpha) :
    (do
      let x0 ← MacCampaign.Array.index_usize value 0#usize
      let x1 ← MacCampaign.Array.index_usize value 1#usize
      let x2 ← MacCampaign.Array.index_usize value 2#usize
      let x3 ← MacCampaign.Array.index_usize value 3#usize
      next (MacCampaign.Array.make 6#usize [x0, x1, x2, x3, 0#u64, 0#u64])) =
      next (widen4 value) := by
  rw [Ipp.Extracted.ArkworksFr.array_index_limbWord value ⟨0, by decide⟩,
    Ipp.Extracted.ArkworksFr.array_index_limbWord value ⟨1, by decide⟩,
    Ipp.Extracted.ArkworksFr.array_index_limbWord value ⟨2, by decide⟩,
    Ipp.Extracted.ArkworksFr.array_index_limbWord value ⟨3, by decide⟩]
  rfl

#print axioms widen4_value
#print axioms low4_value
#print axioms extracted_low4
#print axioms extracted_widen4
#print axioms bind_low4
#print axioms bind_widen4

end Ipp.Extracted.ArkworksScalarMul.GlvArrayCore
