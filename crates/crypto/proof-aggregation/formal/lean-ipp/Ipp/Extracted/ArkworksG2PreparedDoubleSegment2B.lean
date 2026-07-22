import Ipp.Extracted.ArkworksG2PreparedDoubleOps

namespace Ipp.Extracted.ArkworksG2PreparedDoubleSegment2B

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedDoubleOps

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

set_option maxRecDepth 4096
set_option maxHeartbeats 1000000

theorem segment2B_spec (r : Proj) (s : Segment1) (output : Segment2Tail)
    (hr : CanonicalG2 r) (hs : CanonicalSegment1 s)
    (hexec : segment2B r s = .ok output) :
    Canonical2 output.i ∧ Canonical2 output.j ∧ Canonical2 output.e2 ∧
      Canonical2 output.outX ∧
      decodeFq2 output.i = decodeFq2 s.e - decodeFq2 s.b ∧
      decodeFq2 output.j = decodeFq2 r.x * decodeFq2 r.x ∧
      decodeFq2 output.e2 = decodeFq2 s.e * decodeFq2 s.e ∧
      decodeFq2 output.outX = decodeFq2 s.aa1 *
        (decodeFq2 s.b - decodeFq2 s.f) := by
  unfold segment2B at hexec
  obtain ⟨i, hi, hexec⟩ := bind_eq_ok hexec
  obtain ⟨j, hj, hexec⟩ := bind_eq_ok hexec
  obtain ⟨e2, he2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨bMinusF, hbMinusF, hexec⟩ := bind_eq_ok hexec
  obtain ⟨outX, houtX, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have si := fq2_sub_spec s.e s.b i hs.2.2.2.1 hs.2.1 hi
  have sj := extracted_fq2_square_spec r.x j hr.1 hj
  have se2 := extracted_fq2_square_spec s.e e2 hs.2.2.2.1 he2
  have sbMinusF := fq2_sub_spec s.b s.f bMinusF hs.2.1 hs.2.2.2.2.1 hbMinusF
  have sx := extracted_fq2_mul_spec s.aa1 bMinusF outX hs.1 sbMinusF.1 houtX
  exact ⟨si.1, sj.1, se2.1, sx.1, si.2, sj.2, se2.2,
    sx.2.trans (congrArg (decodeFq2 s.aa1 * ·) sbMinusF.2)⟩

#print axioms segment2B_spec

end Ipp.Extracted.ArkworksG2PreparedDoubleSegment2B
