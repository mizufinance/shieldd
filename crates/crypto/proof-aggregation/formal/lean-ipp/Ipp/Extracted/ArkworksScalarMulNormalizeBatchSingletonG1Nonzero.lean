import Ipp.Extracted.ArkworksScalarMulNormalizeBatchSingletonG1Decode

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksG1
open Ipp.Extracted.ArkworksScalarMul

/-- Singleton G1 batch normalization preserves a non-identity projective point. -/
theorem valid_g1_normalize_batch_singleton_nonzero (proj : G1ProjLimbTriple)
    (point : G1AffinePoint)
    (out : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont)
    (hproj : ValidG1LoopState proj point)
    (hz : proj.z.val ≠
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch
      ⟨[proj]⟩ = .ok out) :
    ∃ affine, out.val = [affine] ∧ ValidG1AffineLoopBase affine point := by
  let trace := (g1_normalize_batch_singleton_nonzero_exec proj out hz hexec).some
  exact valid_g1_singleton_nonzero_trace proj point out hproj hz trace

#print axioms valid_g1_normalize_batch_singleton_nonzero

end Ipp.Extracted.ArkworksScalarMulNormalize
