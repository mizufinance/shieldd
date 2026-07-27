import Ipp.Extracted.ArkworksFinalExpHardPowerFrobenius

/-!
S3-39: conjugation is inversion on the cyclotomic subgroup.
-/

namespace Ipp.Extracted.ArkworksFinalExpHard

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq12
open Ipp.Extracted.ArkworksFinalExpEasy
open Ipp.Extracted.ArkworksFinalExpCyclotomic

theorem conjugate_power_mul (x : Fq12Canonical)
    (hx : x ^ cyclotomicOrder = 1) (exponent delta : Nat) :
    (x ^ exponent) ^ (q ^ 6) * x ^ (exponent + delta) = x ^ delta := by
  have hy : (x ^ exponent) ^ cyclotomicOrder = 1 :=
    cyclotomic_power x hx exponent
  have hcancel :
      (x ^ exponent) ^ (cyclotomicOrder - 1) * x ^ exponent = 1 := by
    calc
      (x ^ exponent) ^ (cyclotomicOrder - 1) * x ^ exponent =
          (x ^ exponent) ^ ((cyclotomicOrder - 1) + 1) :=
        (pow_succ (x ^ exponent) (cyclotomicOrder - 1)).symm
      _ = (x ^ exponent) ^ cyclotomicOrder := by
        congr 1
      _ = 1 := hy
  rw [pow_eq_pow_mod (x ^ exponent) hy (q ^ 6),
    q_six_mod_cyclotomicOrder, pow_add, ← mul_assoc, hcancel, one_mul]

structure ConjugatedPower (x : Fq12Canonical) (exponent : Nat)
    (wire : Fq12Limb) : Prop where
  canonical : Ipp.Extracted.ArkworksFinalExpEasy.Canonical12 wire
  decode_eq : Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12 wire =
    (x ^ exponent) ^ (q ^ 6)

theorem CyclotomicPower.conjugate {x : Fq12Canonical} {exponent : Nat}
    {input output : Fq12Limb} (hinput : CyclotomicPower x exponent input)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_conjugate input =
        .ok output) :
    ConjugatedPower x exponent output := by
  have hcanonical := canonical12_conjugate input output
    hinput.canonical hexec
  have hmodel :
      Ipp.Extracted.ArkworksFq12.decodeFq12 output =
        fq12Conjugate (Ipp.Extracted.ArkworksFq12.decodeFq12 input) := by
    simpa [fq12Conjugate] using
      decode_fq12_conjugate input output hinput.canonical hexec
  refine ⟨hcanonical, ?_⟩
  rw [Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12, hmodel,
    fq12_coefficients_conjugate_pow,
    ← Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12,
    hinput.decode_eq]

theorem ConjugatedPower.mul {x : Fq12Canonical} {exponent delta : Nat}
    {conjugated right output : Fq12Limb}
    (hconjugated : ConjugatedPower x exponent conjugated)
    (hright : CyclotomicPower x (exponent + delta) right)
    (hx : x ^ cyclotomicOrder = 1)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul conjugated right =
        .ok output) :
    CyclotomicPower x delta output := by
  have hmodel := decode_fq12_mul conjugated right output
    hconjugated.canonical hright.canonical hexec
  refine ⟨canonical12_mul conjugated right output
    hconjugated.canonical hright.canonical hexec, ?_⟩
  rw [Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12, hmodel,
    fq12Coefficients_mul,
    ← Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12,
    ← Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12,
    hconjugated.decode_eq, hright.decode_eq]
  exact conjugate_power_mul x hx exponent delta

theorem ConjugatedPower.mul_commuted {x : Fq12Canonical}
    {exponent delta : Nat} {left conjugated output : Fq12Limb}
    (hleft : CyclotomicPower x (exponent + delta) left)
    (hconjugated : ConjugatedPower x exponent conjugated)
    (hx : x ^ cyclotomicOrder = 1)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul left conjugated =
        .ok output) :
    CyclotomicPower x delta output := by
  have hmodel := decode_fq12_mul left conjugated output
    hleft.canonical hconjugated.canonical hexec
  refine ⟨canonical12_mul left conjugated output
    hleft.canonical hconjugated.canonical hexec, ?_⟩
  rw [Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12, hmodel,
    fq12Coefficients_mul,
    ← Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12,
    ← Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12,
    hleft.decode_eq, hconjugated.decode_eq, mul_comm]
  exact conjugate_power_mul x hx exponent delta

#print axioms conjugate_power_mul
#print axioms CyclotomicPower.conjugate
#print axioms ConjugatedPower.mul
#print axioms ConjugatedPower.mul_commuted

end Ipp.Extracted.ArkworksFinalExpHard
