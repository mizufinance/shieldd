import Ipp.Extracted.ArkworksFinalExpHardExponent

/-!
S3-39: typed exponent tracking through all 18 hard-chain operations.
-/

namespace Ipp.Extracted.ArkworksFinalExpHard

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFinalExpEasy
open Ipp.Extracted.ArkworksFinalExpCyclotomic

theorem final_exp_hard_power (input output : Fq12Limb)
    (hinput : Canonical12 input)
    (hx : decodeFq12 input ^ cyclotomicOrder = 1)
    (hexec : final_exp_hard input = .ok output) :
    CyclotomicPower (decodeFq12 input) E_chain output := by
  let x := decodeFq12 input
  change x ^ cyclotomicOrder = 1 at hx
  have p0 : CyclotomicPower x 1 input := by
    refine ⟨hinput, ?_⟩
    simp [x]
  rcases final_exp_hard_trace input output hexec with
    ⟨s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14,
      s15, s16, s17, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11,
      h12, h13, h14, h15, h16, h17, h18⟩
  have p1 : CyclotomicPower x 2 s1 := by
    simpa using p0.square hx h1
  have p2 : CyclotomicPower x X s2 := by
    simpa using p0.exp hx h2
  have c3 : ConjugatedPower x 1 s3 := p0.conjugate h3
  have p2split : CyclotomicPower x (1 + (X - 1)) s2 := by
    simpa only [first_cancel_split] using p2
  have p4 : CyclotomicPower x (X - 1) s4 :=
    ConjugatedPower.mul_commuted p2split c3 hx h4
  have p5 : CyclotomicPower x ((X - 1) * X) s5 :=
    p4.exp hx h5
  have c6 : ConjugatedPower x (X - 1) s6 := p4.conjugate h6
  have p5split :
      CyclotomicPower x ((X - 1) + (X - 1) ^ 2) s5 := by
    simpa only [second_cancel_split] using p5
  have p7 : CyclotomicPower x ((X - 1) ^ 2) s7 :=
    c6.mul p5split hx h7
  have p8 : CyclotomicPower x ((X - 1) ^ 2 * X) s8 :=
    p7.exp hx h8
  have p9 : CyclotomicPower x ((X - 1) ^ 2 * q) s9 :=
    p7.frobeniusOne h9
  have p10raw :
      CyclotomicPower x
        ((X - 1) ^ 2 * q + (X - 1) ^ 2 * X) s10 :=
    p9.mul p8 h10
  have p10 : CyclotomicPower x middleExponent s10 := by
    simpa only [middle_exponent_sum] using p10raw
  have p11 : CyclotomicPower x 3 s11 := by
    simpa using p0.mul p1 h11
  have p12 : CyclotomicPower x (middleExponent * X) s12 :=
    p10.exp hx h12
  have p13raw :
      CyclotomicPower x ((middleExponent * X) * X) s13 :=
    p12.exp hx h13
  have p13split :
      CyclotomicPower x
        (middleExponent + (X ^ 2 - 1) * middleExponent) s13 := by
    simpa only [third_cancel_split] using p13raw
  have p14 :
      CyclotomicPower x (middleExponent * (q ^ 2)) s14 :=
    p10.frobeniusTwo h14
  have c15 : ConjugatedPower x middleExponent s15 :=
    p10.conjugate h15
  have p16 :
      CyclotomicPower x ((X ^ 2 - 1) * middleExponent) s16 :=
    c15.mul p13split hx h16
  have p17raw :
      CyclotomicPower x
        ((X ^ 2 - 1) * middleExponent + middleExponent * (q ^ 2)) s17 :=
    p16.mul p14 h17
  have p17 :
      CyclotomicPower x ((X ^ 2 + q ^ 2 - 1) * middleExponent) s17 := by
    simpa only [final_exponent_sum] using p17raw
  have p18raw :
      CyclotomicPower x
        (3 + ((X ^ 2 + q ^ 2 - 1) * middleExponent)) output :=
    p11.mul p17 h18
  have hfinal :
      3 + ((X ^ 2 + q ^ 2 - 1) * middleExponent) = E_chain := by
    simp only [E_chain, middleExponent]
    ring
  simpa only [hfinal] using p18raw

#print axioms final_exp_hard_power

end Ipp.Extracted.ArkworksFinalExpHard
