import Ipp.Extracted.ArkworksScalarMulNormalizeBatchSingletonG2Decode

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksScalarMul

/-- Singleton G2 batch normalization preserves a non-identity projective point. -/
theorem valid_g2_normalize_batch_singleton_nonzero (proj : G2ProjLimbTriple)
    (point : G2AffinePoint)
    (out : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
    (hproj : ValidG2LoopState proj point)
    (hz : ¬Ipp.Extracted.ArkworksG2.isZeroFq2Mont proj.z)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch
      ⟨[proj]⟩ = .ok out) :
    ∃ affine, out.val = [affine] ∧ ValidG2AffineLoopBase affine point := by
  let trace := (g2_normalize_batch_singleton_nonzero_exec proj out hz hexec).some
  exact valid_g2_singleton_nonzero_trace proj point out hproj hz trace

#print axioms valid_g2_normalize_batch_singleton_nonzero

end Ipp.Extracted.ArkworksScalarMulNormalize
