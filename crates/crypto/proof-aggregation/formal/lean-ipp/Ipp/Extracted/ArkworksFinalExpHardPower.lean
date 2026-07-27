import Ipp.Extracted.ArkworksFinalExpHardExec

/-!
S3-39: typed facts carried between hard-chain operations.
-/

namespace Ipp.Extracted.ArkworksFinalExpHard

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFinalExpEasy
open Ipp.Extracted.ArkworksFinalExpCyclotomic

structure CyclotomicPower (x : Fq12Canonical) (exponent : Nat)
    (wire : Fq12Limb) : Prop where
  canonical : Canonical12 wire
  decode_eq : decodeFq12 wire = x ^ exponent

theorem CyclotomicPower.cyclotomic {x : Fq12Canonical} {exponent : Nat}
    {wire : Fq12Limb} (h : CyclotomicPower x exponent wire)
    (hx : x ^ cyclotomicOrder = 1) :
    decodeFq12 wire ^ cyclotomicOrder = 1 := by
  rw [h.decode_eq]
  exact cyclotomic_power x hx exponent

#print axioms CyclotomicPower.cyclotomic

end Ipp.Extracted.ArkworksFinalExpHard
