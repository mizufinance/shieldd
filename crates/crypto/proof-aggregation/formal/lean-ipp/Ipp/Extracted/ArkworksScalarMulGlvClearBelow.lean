import Ipp.Extracted.ArkworksScalarMulGlvWideUpdateCore

/-! Local zero-bit invariant for the quotient built from most to least significant. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvClearBelow

open Aeneas Aeneas.Std
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksScalarMul.GlvWideUpdateCore

abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize

def word (value : WideArray) (i : Nat) : Nat :=
  wideWordAt value i

/-- Every quotient bit below `remaining` is still zero. -/
def ClearBelow (value : WideArray) (remaining : Nat) : Prop :=
  (∀ i, i < remaining / 64 → word value i = 0) ∧
    2 ^ (remaining % 64) ∣ word value (remaining / 64)

def SetEffect (before after : WideArray) (bit : Nat) : Prop :=
  word after (bit / 64) = word before (bit / 64) + 2 ^ (bit % 64) ∧
    ∀ i, i ≠ bit / 64 → word after i = word before i

theorem current_clear {value : WideArray} {remaining : Nat}
    (hpos : 0 < remaining) (hclear : ClearBelow value remaining) :
    2 ^ ((remaining - 1) % 64 + 1) ∣
      word value ((remaining - 1) / 64) := by
  rcases hclear with ⟨hlow, hcurrent⟩
  by_cases hboundary : remaining % 64 = 0
  · have hlt : (remaining - 1) / 64 < remaining / 64 := by omega
    rw [hlow _ hlt]
    exact dvd_zero _
  · have hindex : (remaining - 1) / 64 = remaining / 64 := by omega
    have hoffset : (remaining - 1) % 64 + 1 = remaining % 64 := by omega
    simpa [hindex, hoffset] using hcurrent

theorem step_same {value : WideArray} {remaining : Nat}
    (hpos : 0 < remaining) (hclear : ClearBelow value remaining) :
    ClearBelow value (remaining - 1) := by
  rcases hclear with ⟨hlow, hcurrent⟩
  constructor
  · intro i hi
    apply hlow i
    omega
  · by_cases hboundary : remaining % 64 = 0
    · have hlt : (remaining - 1) / 64 < remaining / 64 := by omega
      rw [hlow _ hlt]
      exact dvd_zero _
    · have hindex : (remaining - 1) / 64 = remaining / 64 := by omega
      have hexponent : (remaining - 1) % 64 ≤ remaining % 64 := by omega
      rw [hindex]
      exact dvd_trans (pow_dvd_pow 2 hexponent) hcurrent

theorem step_set {before after : WideArray} {remaining : Nat}
    (hpos : 0 < remaining) (hclear : ClearBelow before remaining)
    (heffect : SetEffect before after (remaining - 1)) :
    ClearBelow after (remaining - 1) := by
  rcases hclear with ⟨hlow, hcurrent⟩
  rcases heffect with ⟨htarget, hother⟩
  constructor
  · intro i hi
    rw [hother i (by omega)]
    exact hlow i (by omega)
  · rw [htarget]
    by_cases hboundary : remaining % 64 = 0
    · have hlt : (remaining - 1) / 64 < remaining / 64 := by omega
      rw [hlow _ hlt, zero_add]
    · have hindex : (remaining - 1) / 64 = remaining / 64 := by omega
      have hoffset : (remaining - 1) % 64 + 1 = remaining % 64 := by omega
      rw [hindex] at htarget ⊢
      obtain ⟨factor, hfactor⟩ := hcurrent
      rw [← hoffset] at hfactor
      rw [hfactor, pow_succ]
      refine ⟨2 * factor + 1, ?_⟩
      ring

theorem zero_clear_384 :
    ClearBelow (MacCampaign.Array.replicate 6#usize 0#u64) 384 := by
  constructor
  · intro i hi
    have hilim : i < 6 := by omega
    interval_cases i <;>
      simp [word, wideWordAt, wideWord, limbWord, MacCampaign.Array.replicate,
        MacCampaign.U64.ofNat, MacCampaign.u64Base]
  · norm_num [word]

#print axioms current_clear
#print axioms step_same
#print axioms step_set
#print axioms zero_clear_384

end Ipp.Extracted.ArkworksScalarMul.GlvClearBelow
