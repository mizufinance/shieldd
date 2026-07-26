import Ipp.Extracted.ArkworksG2PreparedDoubleOps

namespace Ipp.Extracted.ArkworksG2PreparedDoubleSegment1C

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksG2PreparedDoubleOps

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

set_option maxRecDepth 4096
set_option maxHeartbeats 1000000

theorem segment1C_spec (a : Segment1A) (e : Fq2LimbPair)
    (twoInvMont : LimbArray) (output : Segment1C)
    (hb : Canonical2 a.b) (he : Canonical2 e)
    (htwoCanonical : limbsToNat twoInvMont < baseModulus)
    (htwoDecode : decode twoInvMont = twoInv)
    (hexec : segment1C a e twoInvMont = .ok output) :
    Canonical2 output.f ∧ Canonical2 output.g ∧
      decodeFq2 output.f = decodeFq2 e + decodeFq2 e + decodeFq2 e ∧
      decodeFq2 output.g = fq2MulFq
        (decodeFq2 a.b + decodeFq2 output.f) twoInv := by
  unfold segment1C at hexec
  obtain ⟨twoE, htwoE, hexec⟩ := bind_eq_ok hexec
  obtain ⟨f, hf, hexec⟩ := bind_eq_ok hexec
  obtain ⟨bPlusF, hbPlusF, hexec⟩ := bind_eq_ok hexec
  obtain ⟨g, hg, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have stwoE := fq2_double_spec e twoE he htwoE
  have sf := fq2_add_spec twoE e f stwoE.1 he hf
  have sbPlusF := fq2_add_spec a.b f bPlusF hb sf.1 hbPlusF
  have sg := fq2_mul_fp_spec bPlusF twoInvMont g sbPlusF.1 htwoCanonical hg
  refine ⟨sf.1, sg.1, ?_, ?_⟩
  · rw [sf.2, stwoE.2]
  · rw [sg.2, sbPlusF.2, htwoDecode]

#print axioms segment1C_spec

end Ipp.Extracted.ArkworksG2PreparedDoubleSegment1C
