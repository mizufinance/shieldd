import Ipp.Extracted.ArkworksScalarMulGlvSetBitCore
import Ipp.Extracted.ArkworksScalarMulGlvShiftCore
import Ipp.Extracted.ArkworksScalarMulGlvReduceCoreStep

/-! Pure integer model of one restoring-division iteration. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksScalarMul.GlvClearBelow

set_option maxHeartbeats 500000
set_option maxRecDepth 8192

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize
abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize
abbrev State := WideArray × ScalarArray × Nat

def r : Nat := Ipp.Bls12377.scalarModulus
def scalarToNat (value : ScalarArray) : Nat :=
  Ipp.Extracted.ArkworksFr.limbsToNat value
def wideToNat (value : WideArray) : Nat :=
  Ipp.Extracted.ArkworksScalarMul.GlvWideUpdateCore.wideToNat value
def bitToNat (bit : Bool) : Nat := if bit then 1 else 0
def wideBit (numerator : WideArray) (bit : Nat) : Bool :=
  decide (wideToNat numerator / 2 ^ bit % 2 = 1)

def body (numerator : WideArray) (state : State) :
    Result (ControlFlow State (WideArray × ScalarArray)) := do
  let quotient := state.1
  let remainder := state.2.1
  let remaining := state.2.2
  if 0 < remaining then
    let bit := remaining - 1
    let shifted <- Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.shl4addbit
      remainder (wideBit numerator bit)
    let reduced <- Ipp.Extracted.ArkworksScalarMul.GlvReduceCore.body shifted
    match reduced with
    | .done nextRemainder =>
        .ok (.cont (quotient, nextRemainder, bit))
    | .cont nextRemainder =>
        let nextQuotient <-
          Ipp.Extracted.ArkworksScalarMul.GlvSetBitCore.setBit quotient bit
        .ok (.cont (nextQuotient, nextRemainder, bit))
  else
    .ok (.done (quotient, remainder))

theorem bitToNat_wideBit (numerator : WideArray) (bit : Nat) :
    bitToNat (wideBit numerator bit) =
      wideToNat numerator / 2 ^ bit % 2 := by
  have hlt : wideToNat numerator / 2 ^ bit % 2 < 2 :=
    Nat.mod_lt _ (by decide)
  unfold bitToNat wideBit
  split <;> rename_i h
  · exact (of_decide_eq_true h).symm
  · have hne : wideToNat numerator / 2 ^ bit % 2 ≠ 1 := by
      intro he
      apply h
      simp [he]
    have hz : wideToNat numerator / 2 ^ bit % 2 = 0 := by omega
    simp [hz]

theorem binary_div_step (numerator bit : Nat) :
    numerator / 2 ^ bit =
      2 * (numerator / 2 ^ (bit + 1)) + numerator / 2 ^ bit % 2 := by
  have hsplit := Nat.mod_add_div (numerator / 2 ^ bit) 2
  have hdiv : (numerator / 2 ^ bit) / 2 =
      numerator / 2 ^ (bit + 1) := by
    rw [Nat.div_div_eq_div_mul, pow_succ]
  omega

structure Invariant (numerator : WideArray) (state : State) : Prop where
  remaining_le : state.2.2 ≤ 384
  remainder_lt : scalarToNat state.2.1 < r
  clear : ClearBelow state.1 state.2.2
  quotient_division : ∃ quotientPrefix,
    wideToNat state.1 = quotientPrefix * 2 ^ state.2.2 ∧
      wideToNat numerator / 2 ^ state.2.2 =
        quotientPrefix * r + scalarToNat state.2.1

theorem body_preserves (numerator : WideArray) (state next : State)
    (hinv : Invariant numerator state)
    (hexec : body numerator state = .ok (.cont next)) :
    Invariant numerator next := by
  rcases state with ⟨quotient, remainder, remaining⟩
  simp only [body] at hexec
  have hpos : 0 < remaining := by
    by_contra h
    rw [if_neg (by omega)] at hexec
    cases hexec
  rw [if_pos hpos] at hexec
  let bit := remaining - 1
  have hremainingLe : remaining ≤ 384 := hinv.remaining_le
  have hbit : bit < 384 := by dsimp [bit]; omega
  rcases hinv.quotient_division with
    ⟨quotientPrefix, hquotientEq, hdivisionEq⟩
  change wideToNat quotient = quotientPrefix * 2 ^ remaining at hquotientEq
  change wideToNat numerator / 2 ^ remaining =
    quotientPrefix * r + scalarToNat remainder at hdivisionEq
  have hbitSucc : bit + 1 = remaining := by dsimp [bit]; omega
  have hlimb : bit / 64 < 6 := by omega
  have hbitNat : bitToNat (wideBit numerator bit) ≤ 1 := by
    unfold bitToNat
    split <;> omega
  have hshiftBound :
      2 * Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.scalarToNat remainder +
          Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.bitToNat
            (wideBit numerator bit) < wordBase ^ 4 := by
    have hradix := Ipp.Extracted.ArkworksFr.two_modulus_lt_radix
    have hremainderLt : scalarToNat remainder < r := hinv.remainder_lt
    change 2 * scalarToNat remainder + bitToNat (wideBit numerator bit) <
      wordBase ^ 4
    have hradix' : 2 * r < wordBase ^ 4 := by
      simpa [r, Ipp.Extracted.ArkworksFr.wordBase,
        Ipp.Extracted.ArkworksFr.limbCount, wordBase] using hradix
    omega
  cases hshift : Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.shl4addbit
      remainder (wideBit numerator bit) with
  | ok shifted =>
      rw [hshift] at hexec
      simp only [Result.bind_ok] at hexec
      have hshiftValue :=
        Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.shl4addbit_spec remainder shifted
        (wideBit numerator bit) hshiftBound hshift
      cases hreduce : Ipp.Extracted.ArkworksScalarMul.GlvReduceCore.body shifted with
      | ok flow =>
          rw [hreduce] at hexec
          simp only [Result.bind_ok] at hexec
          rcases Ipp.Extracted.ArkworksScalarMul.GlvReduceCore.body_spec shifted flow hreduce with
            ⟨hflow, hlt⟩ | ⟨nextRemainder, hflow, hge, hsub⟩
          · subst flow
            cases hexec
            refine
              { remaining_le := by dsimp [bit]; omega
                remainder_lt := hlt
                clear := step_same hpos hinv.clear
                quotient_division := ?_ }
            refine ⟨2 * quotientPrefix, ?_, ?_⟩
            · change wideToNat quotient =
                2 * quotientPrefix * 2 ^ bit
              rw [hquotientEq, ← hbitSucc, pow_succ]
              ring
            · change wideToNat numerator / 2 ^ bit =
                2 * quotientPrefix * r + scalarToNat shifted
              rw [binary_div_step (wideToNat numerator) bit, hbitSucc,
                hdivisionEq, ← bitToNat_wideBit]
              change scalarToNat shifted =
                2 * scalarToNat remainder + bitToNat (wideBit numerator bit)
                at hshiftValue
              rw [hshiftValue]
              dsimp [bit]
              ring
          · subst flow
            cases hset : Ipp.Extracted.ArkworksScalarMul.GlvSetBitCore.setBit
                quotient bit with
            | ok nextQuotient =>
                rw [hset] at hexec
                simp only [Result.bind_ok, Result.ok.injEq] at hexec
                cases hexec
                have hcurrent := current_clear hpos hinv.clear
                have hsetValue :=
                  Ipp.Extracted.ArkworksScalarMul.GlvSetBitCore.setBit_spec
                  quotient nextQuotient bit hbit
                  (by simpa [bit, word,
                    Ipp.Extracted.ArkworksScalarMul.GlvWideUpdateCore.wideWordAt,
                    hlimb]
                    using hcurrent) hset
                have heffect :=
                  Ipp.Extracted.ArkworksScalarMul.GlvSetBitCore.setBit_effect
                  quotient nextQuotient bit hbit
                  (by simpa [bit] using hcurrent) hset
                refine
                  { remaining_le := by dsimp [bit]; omega
                    remainder_lt := ?_
                    clear := step_set hpos hinv.clear heffect
                    quotient_division := ?_ }
                · change scalarToNat nextRemainder < r
                  change scalarToNat nextRemainder = scalarToNat shifted - r at hsub
                  change scalarToNat shifted =
                    2 * scalarToNat remainder + bitToNat (wideBit numerator bit)
                    at hshiftValue
                  have hremainderLt : scalarToNat remainder < r := hinv.remainder_lt
                  omega
                · refine ⟨2 * quotientPrefix + 1, ?_, ?_⟩
                  · change wideToNat nextQuotient =
                      (2 * quotientPrefix + 1) * 2 ^ bit
                    change wideToNat nextQuotient =
                      wideToNat quotient + 2 ^ bit at hsetValue
                    rw [hsetValue, hquotientEq, ← hbitSucc, pow_succ]
                    ring
                  · change wideToNat numerator / 2 ^ bit =
                      (2 * quotientPrefix + 1) * r +
                        scalarToNat nextRemainder
                    rw [binary_div_step (wideToNat numerator) bit, hbitSucc,
                      hdivisionEq, ← bitToNat_wideBit]
                    change scalarToNat shifted =
                      2 * scalarToNat remainder + bitToNat (wideBit numerator bit)
                      at hshiftValue
                    change scalarToNat nextRemainder = scalarToNat shifted - r at hsub
                    rw [hsub, hshiftValue]
                    dsimp [bit]
                    have hge' : r ≤ scalarToNat shifted := hge
                    rw [hshiftValue] at hge'
                    have hle : r ≤
                        2 * scalarToNat remainder +
                          bitToNat (wideBit numerator (remaining - 1)) := by
                      simpa [bit] using hge'
                    have hcancel := Nat.sub_add_cancel hle
                    ring_nf
                    omega
            | fail error => rw [hset] at hexec; cases hexec
            | div => rw [hset] at hexec; cases hexec
      | fail error => rw [hreduce] at hexec; cases hexec
      | div => rw [hreduce] at hexec; cases hexec
  | fail error => rw [hshift] at hexec; cases hexec
  | div => rw [hshift] at hexec; cases hexec

#print axioms bitToNat_wideBit
#print axioms binary_div_step
#print axioms Invariant
#print axioms body_preserves

end Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore
