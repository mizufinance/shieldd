import Ipp.Extracted.ArkworksScalarMulNormalizeGenerated

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Result

/-- Componentwise zero predicate used by the extracted G2 batch loops. -/
def G2ZeroZ (z : ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont) : Prop :=
  z.c0.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val ∧
    z.c1.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val

theorem g2_eq_zero_of_zero_z
    (z : ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont) (hz : G2ZeroZ z) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont.Insts.CoreCmpPartialEqFq2Mont.eq
      z ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO = .ok true := by
  unfold
    ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont.Insts.CoreCmpPartialEqFq2Mont.eq
    ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq
  simp [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO,
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO,
    ark_ip_proofs.core.array.equality.PartialEqArray.eq, hz.1, hz.2]

end Ipp.Extracted.ArkworksScalarMulNormalize
