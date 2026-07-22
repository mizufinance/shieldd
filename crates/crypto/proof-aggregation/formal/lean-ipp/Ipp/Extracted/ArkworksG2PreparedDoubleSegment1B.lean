import Ipp.Extracted.ArkworksG2PreparedDoubleOps

namespace Ipp.Extracted.ArkworksG2PreparedDoubleSegment1B

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedDoubleOps

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

set_option maxRecDepth 4096
set_option maxHeartbeats 1000000

theorem segment1B_spec (a : Segment1A) (output : Fq2LimbPair)
    (hc : Canonical2 a.c) (hexec : segment1B a = .ok output) :
    Canonical2 output ∧
      decodeFq2 output = g2TwistB *
        (decodeFq2 a.c + decodeFq2 a.c + decodeFq2 a.c) := by
  unfold segment1B at hexec
  obtain ⟨twoC, htwoC, hexec⟩ := bind_eq_ok hexec
  obtain ⟨threeC, hthreeC, he⟩ := bind_eq_ok hexec
  have stwoC := fq2_double_spec a.c twoC hc htwoC
  have sthreeC := fq2_add_spec twoC a.c threeC stwoC.1 hc hthreeC
  have se := extracted_fq2_mul_spec
    ark_ip_proofs.s3_07_arkworks_fq_spike.G2_COEFF_B threeC output
    g2_coeff_b_spec.1 sthreeC.1 he
  refine ⟨se.1, ?_⟩
  rw [se.2, g2_coeff_b_spec.2, sthreeC.2, stwoC.2]

#print axioms segment1B_spec

end Ipp.Extracted.ArkworksG2PreparedDoubleSegment1B
