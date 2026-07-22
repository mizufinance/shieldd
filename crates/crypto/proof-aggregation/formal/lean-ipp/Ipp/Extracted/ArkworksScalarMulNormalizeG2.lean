import Ipp.Extracted.ArkworksScalarMulNormalizeG2Mul

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFq2 (Canonical2 decodeFq2)
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksScalarMulNormalizeCommon

set_option maxHeartbeats 1000000

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Fact (∀ x : Ipp.Bls12377.Fq,
    x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using Ipp.Bls12377.arithmeticFacts.fq2Nonresidue x⟩

/-- Executed G2 normalization preserves the decoded Jacobian class. -/
theorem decode_g2_into_affine (proj : G2ProjLimbTriple)
    (out : G2AffineLimbPair) (hproj : CanonicalG2 proj)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_into_affine proj =
      .ok out) :
    Canonical2 out.x ∧ Canonical2 out.y ∧
      (if out.infinity then none
       else some (decodeFq2 out.x, decodeFq2 out.y)) = decodeG2 proj := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_into_affine at hexec
  rw [fq2_eq_zero] at hexec
  simp only [Result.bind_ok] at hexec
  by_cases hz : Ipp.Extracted.ArkworksG2.isZeroFq2Mont proj.z
  · rw [if_pos hz] at hexec
    simp only [Result.ok.injEq] at hexec
    subst out
    refine ⟨fq2_zero_canonical, fq2_one_canonical, ?_⟩
    simp [decodeG2, hz]
  · rw [if_neg hz, fq2_eq_components] at hexec
    simp only [Result.bind_ok] at hexec
    by_cases hone : proj.z.c0.val =
          ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE.c0.val ∧
        proj.z.c1.val =
          ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE.c1.val
    · rw [if_pos (by simpa using hone)] at hexec
      simp only [Result.ok.injEq] at hexec
      subst out
      refine ⟨hproj.1, hproj.2.1, ?_⟩
      have hzOne : decodeFq2 proj.z = 1 :=
        (Ipp.Extracted.ArkworksG2.canonical_fq2_val_eq_iff_decode_eq
          proj.z ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE
          hproj.2.2 fq2_one_canonical).1 hone |>.trans decode_fq2_one
      simp [decodeG2, hz, hzOne]
    · rw [if_neg (by simpa using hone)] at hexec
      cases hinv : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_inv proj.z with
      | fail e => rw [hinv] at hexec; simp at hexec
      | div => rw [hinv] at hexec; simp at hexec
      | ok inverse =>
          rw [hinv] at hexec
          cases inverse with
          | none =>
              have hzero := Ipp.Extracted.ArkworksFq2.extracted_fq2_inv_none_iff
                proj.z hproj.2.2 hinv
              have hvals :=
                (Ipp.Extracted.ArkworksG2.canonical_fq2_val_eq_iff_decode_eq
                  proj.z ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO
                  hproj.2.2 fq2_zero_canonical).2
                  (hzero.trans decode_fq2_zero.symm)
              exact (hz (by simpa [Ipp.Extracted.ArkworksG2.isZeroFq2Mont,
                ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO] using hvals)).elim
          | some zinv =>
              change (do
                let z2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square zinv
                let x ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul proj.x z2
                let yz2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul proj.y z2
                let y ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul yz2 zinv
                ok ({ x := x, y := y, infinity := false } : G2AffineLimbPair)) =
                  .ok out at hexec
              obtain ⟨z2, hz2, hexec⟩ := bind_eq_ok hexec
              obtain ⟨x, hx, hexec⟩ := bind_eq_ok hexec
              obtain ⟨yz2, hyz2, hexec⟩ := bind_eq_ok hexec
              obtain ⟨y, hy, hret⟩ := bind_eq_ok hexec
              simp only [Result.ok.injEq] at hret
              subst out
              have hm := g2_inverse_mul_spec proj zinv z2 x yz2 y hproj
                hinv hz2 hx hyz2 hy
              refine ⟨hm.1, hm.2.1, ?_⟩
              simp only [decodeG2, hz, Bool.false_eq_true, if_false,
                Option.some.injEq]
              have hc := inverse_scaled_coords (decodeFq2 proj.x)
                (decodeFq2 proj.y) (decodeFq2 proj.z) (decodeFq2 zinv)
                hm.2.2.1
              apply Prod.ext
              · exact hm.2.2.2.1.trans hc.1
              · exact hm.2.2.2.2.trans hc.2

#print axioms decode_g2_into_affine

end Ipp.Extracted.ArkworksScalarMulNormalize
