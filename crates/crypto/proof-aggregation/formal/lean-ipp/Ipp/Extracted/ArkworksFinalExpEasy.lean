import Ipp.Extracted.ArkworksFinalExpEasyFrobenius
import Ipp.Extracted.ArkworksFinalExpEasyConjugate

/-!
S3-38: the easy final-exponentiation part, composed from S3-21 operations.
-/

namespace Ipp.Extracted.ArkworksFinalExpEasy

open Aeneas Aeneas.Std Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq12

abbrev Fq12Limb := Fq12LimbPair
abbrev q := baseModulus

def Canonical12 := Ipp.Extracted.ArkworksFq12.Canonical12

/-- Decode the executed tower representation into the canonical Fq12 field. -/
noncomputable def decodeFq12 (a : Fq12Limb) : Fq12Canonical :=
  fq12Coefficients (Ipp.Extracted.ArkworksFq12.decodeFq12 a)

/-- Arkworks' easy final-exponentiation sequence, composed from S3-21 operations. -/
def final_exp_easy (f : Fq12Limb) : Result (Option Fq12Limb) := do
  let f1 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_conjugate f
  let inverse ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_inv f
  match inverse with
  | none => .ok none
  | some f2 => do
    let r ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul f1 f2
    let saved := r
    let r ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_frobenius r 2#usize
    let r ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul r saved
    .ok (some r)

local instance finalExpPrime : Fact q.Prime := ⟨arithmeticFacts.basePrime⟩
local instance finalExpFq2Nonresidue : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance finalExpFintypeFq2 : Fintype Fq2 :=
  Fintype.ofEquiv (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | fail error => simp at hexec
  | div => simp at hexec
  | ok value => exact ⟨value, rfl, hexec⟩

/-- The composed easy part matches the BLS12-377 easy exponent. -/
theorem final_exp_easy_spec (f r : Fq12Limb)
    (hf : Canonical12 f) (hnz : decodeFq12 f ≠ 0)
    (hexec : final_exp_easy f = .ok (some r)) :
    Canonical12 r ∧
      decodeFq12 r = decodeFq12 f ^ ((q ^ 6 - 1) * (q ^ 2 + 1)) := by
  unfold final_exp_easy at hexec
  obtain ⟨f1, hf1exec, hexec⟩ := bind_eq_ok hexec
  obtain ⟨inverse, hinverseExec, hexec⟩ := bind_eq_ok hexec
  cases inverse with
  | none => simp at hexec
  | some f2 =>
      obtain ⟨saved, hsavedExec, hexec⟩ := bind_eq_ok hexec
      obtain ⟨frob, hfrobExec, hexec⟩ := bind_eq_ok hexec
      obtain ⟨output, houtputExec, hret⟩ := bind_eq_ok hexec
      simp only [Result.ok.injEq, Option.some.injEq] at hret
      subst output
      have hf1 := canonical12_conjugate f f1 hf hf1exec
      have hf1Model :
          Ipp.Extracted.ArkworksFq12.decodeFq12 f1 =
            fq12Conjugate (Ipp.Extracted.ArkworksFq12.decodeFq12 f) := by
        simpa [fq12Conjugate] using decode_fq12_conjugate f f1 hf hf1exec
      have hf1Decode : decodeFq12 f1 = decodeFq12 f ^ (q ^ 6) := by
        rw [decodeFq12, hf1Model]
        simpa [decodeFq12, q, qConjugate] using
          fq12_coefficients_conjugate_pow
            (Ipp.Extracted.ArkworksFq12.decodeFq12 f)
      have hf2 := decode_fq12_inv_some f f2 hf hinverseExec
      have hf2Mul : decodeFq12 f2 * decodeFq12 f = 1 := by
        have h := congrArg fq12Coefficients hf2.2
        simpa [decodeFq12, fq12Coefficients_mul] using h
      have hf2Decode : decodeFq12 f2 = (decodeFq12 f)⁻¹ := by
        apply mul_right_cancel₀ hnz
        simpa [hnz] using hf2Mul
      have hsaved : Canonical12 saved ∧
          Ipp.Extracted.ArkworksFq12.decodeFq12 saved =
            fq12Mul (Ipp.Extracted.ArkworksFq12.decodeFq12 f1)
              (Ipp.Extracted.ArkworksFq12.decodeFq12 f2) :=
        ⟨canonical12_mul f1 f2 saved hf1 hf2.1 hsavedExec,
          decode_fq12_mul f1 f2 saved hf1 hf2.1 hsavedExec⟩
      have hsavedDecode :
          decodeFq12 saved = decodeFq12 f ^ (q ^ 6 - 1) := by
        rw [decodeFq12, hsaved.2, fq12Coefficients_mul,
          ← decodeFq12, ← decodeFq12, hf1Decode, hf2Decode]
        have hqpos : 0 < q := (Fact.out : q.Prime).pos
        have hqpow : q ^ 6 ≠ 0 := (pow_pos hqpos 6).ne'
        apply mul_right_cancel₀ hnz
        simpa [mul_assoc, hnz] using
          (pow_sub_one_mul hqpow (decodeFq12 f)).symm
      have hfrob := decode_fq12_frobenius_two saved frob hsaved.1 hfrobExec
      have hfrobModel :
          Ipp.Extracted.ArkworksFq12.decodeFq12 frob =
            frobeniusTwoModel
              (Ipp.Extracted.ArkworksFq12.decodeFq12 saved) := by
        exact hfrob.2
      have hfrobDecode :
          decodeFq12 frob = decodeFq12 saved ^ (q ^ 2) := by
        rw [decodeFq12, hfrobModel]
        simpa [decodeFq12, q, qFrobenius] using
          fq12_coefficients_frobenius_two
            (Ipp.Extracted.ArkworksFq12.decodeFq12 saved)
      have houtput : Canonical12 r ∧
          Ipp.Extracted.ArkworksFq12.decodeFq12 r =
            fq12Mul (Ipp.Extracted.ArkworksFq12.decodeFq12 frob)
              (Ipp.Extracted.ArkworksFq12.decodeFq12 saved) :=
        ⟨canonical12_mul frob saved r hfrob.1 hsaved.1 houtputExec,
          decode_fq12_mul frob saved r hfrob.1 hsaved.1 houtputExec⟩
      refine ⟨houtput.1, ?_⟩
      rw [decodeFq12, houtput.2, fq12Coefficients_mul,
        ← decodeFq12, ← decodeFq12, hfrobDecode, hsavedDecode]
      rw [← pow_mul, ← pow_add]
      congr 1

/-- The easy part returns `none` exactly on the inverse zero guard. -/
theorem final_exp_easy_none_iff (f : Fq12Limb) (hf : Canonical12 f) :
    final_exp_easy f = .ok none ↔ decodeFq12 f = 0 := by
  constructor
  · intro hexec
    unfold final_exp_easy at hexec
    obtain ⟨f1, hf1exec, hexec⟩ := bind_eq_ok hexec
    obtain ⟨inverse, hinverseExec, hexec⟩ := bind_eq_ok hexec
    cases inverse with
    | none =>
        have hzero := decode_fq12_inv_none f hf hinverseExec
        have h := congrArg fq12Coefficients hzero
        simpa [decodeFq12] using h
    | some f2 =>
        obtain ⟨saved, hsavedExec, hexec⟩ := bind_eq_ok hexec
        obtain ⟨frob, hfrobExec, hexec⟩ := bind_eq_ok hexec
        obtain ⟨output, houtputExec, hexec⟩ := bind_eq_ok hexec
        simp at hexec
  · intro hzero
    have hmodel :
        Ipp.Extracted.ArkworksFq12.decodeFq12 f = fq12Zero := by
      apply fq12Coefficients_bijective.injective
      simpa [decodeFq12] using hzero
    have hstruct := fq12_limb_eq_zero_of_canonical f hf hmodel
    subst f
    simp [final_exp_easy,
      ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_conjugate,
      ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_inv,
      ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_neg,
      ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_neg,
      ark_ip_proofs.s3_07_arkworks_fq_spike.neg,
      ark_ip_proofs.s3_07_arkworks_fq_spike.Fq6Mont.Insts.CoreCmpPartialEqFq6Mont.eq,
      ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_eq,
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ6_ZERO,
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO,
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO,
      ark_ip_proofs.core.array.equality.PartialEqArray.eq]

private theorem easy_cyclotomic_exponent :
    (q ^ 6 - 1) * (q ^ 2 + 1) * (q ^ 4 - q ^ 2 + 1) =
      q ^ 12 - 1 := by
  have hq1 : 1 ≤ q := (Fact.out : q.Prime).one_le
  have hqpos : 0 < q := (Fact.out : q.Prime).pos
  have h6 : 1 ≤ q ^ 6 := pow_pos hqpos 6
  have h42 : q ^ 2 ≤ q ^ 4 := pow_le_pow_right' hq1 (by omega)
  have h12 : 1 ≤ q ^ 12 := pow_pos hqpos 12
  apply Nat.cast_injective (R := ℤ)
  push_cast [Nat.cast_sub h6, Nat.cast_sub h42, Nat.cast_sub h12]
  ring

/-- Every successful easy-part output satisfies S3-21's cyclotomic law. -/
theorem final_exp_easy_cyclotomic (f r : Fq12Limb)
    (hf : Canonical12 f) (hnz : decodeFq12 f ≠ 0)
    (hexec : final_exp_easy f = .ok (some r)) :
    decodeFq12 r ^ (q ^ 4 - q ^ 2 + 1) = 1 := by
  rw [(final_exp_easy_spec f r hf hnz hexec).2, ← pow_mul,
    easy_cyclotomic_exponent, ← fq12_card]
  exact FiniteField.pow_card_sub_one_eq_one (decodeFq12 f) hnz

#print axioms final_exp_easy_spec
#print axioms final_exp_easy_none_iff
#print axioms final_exp_easy_cyclotomic

end Ipp.Extracted.ArkworksFinalExpEasy
