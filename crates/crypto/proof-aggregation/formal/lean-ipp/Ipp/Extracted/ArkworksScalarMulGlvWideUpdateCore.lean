import Ipp.Extracted.ArkworksFqOps

/-! Exact natural-number effect of replacing one six-limb word. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvWideUpdateCore

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul

set_option maxHeartbeats 300000
set_option maxRecDepth 4096

abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize

def wideToNat (value : WideArray) : Nat := limbsToNat value

def wideWord (value : WideArray) (i : Fin 6) : MacCampaign.U64 :=
  limbWord value i

def wideWordAt (value : WideArray) (i : Nat) : Nat :=
  if h : i < 6 then (wideWord value ⟨i, h⟩).val else 0

theorem update_word_spec (value output : WideArray) (target : Nat)
    (htarget : target < 6) (newWord : MacCampaign.U64)
    (hexec : MacCampaign.Array.update value (Usize.ofNat target) newWord =
      .ok output) (i : Nat) :
    wideWordAt output i =
      if target = i then newWord.val else wideWordAt value i := by
  unfold MacCampaign.Array.update at hexec
  have hidx : (Usize.ofNat target).val < value.val.length := by
    simpa [Usize.ofNat, value.hlen] using htarget
  simp only [dif_pos hidx] at hexec
  cases hexec
  by_cases hi : i < 6
  · simp only [wideWordAt, dif_pos hi]
    simp [wideWord, limbWord, List.getElem_set]
    split <;> rfl
  · have hne : target ≠ i := by omega
    simp [wideWordAt, hi, hne]

theorem update_spec (value output : WideArray) (i : Nat) (hi : i < 6)
    (word : MacCampaign.U64)
    (hexec : MacCampaign.Array.update value (Usize.ofNat i) word = .ok output) :
    wideToNat output + (wideWord value ⟨i, hi⟩).val * wordBase ^ i =
      wideToNat value + word.val * wordBase ^ i := by
  unfold MacCampaign.Array.update at hexec
  have hidx : (Usize.ofNat i).val < value.val.length := by
    simpa [Usize.ofNat, value.hlen] using hi
  simp only [dif_pos hidx] at hexec
  cases hexec
  rw [wideToNat, wideToNat, limbsToNat_six, limbsToNat_six]
  interval_cases i <;>
    simp [wideWord, limb, limbWord] <;> omega

#print axioms update_spec
#print axioms update_word_spec

end Ipp.Extracted.ArkworksScalarMul.GlvWideUpdateCore
