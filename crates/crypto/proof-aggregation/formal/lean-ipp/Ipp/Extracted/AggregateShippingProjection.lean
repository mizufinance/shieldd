import Ipp.Extracted.AggregateAdapterGenerated
import Ipp.Extracted.VerifyTippMipp

/-!
Exact projection of a shape-validated production aggregate proof and verifier
SRS into the scalar TIPP/MIPP core input.
-/

namespace Ipp.Extracted.AggregateShippingProjection

open Aeneas Aeneas.Std Result ControlFlow Error
open ark_ip_proofs

noncomputable section

def projectedTippInput
    {F G1 G2 GT D : Type}
    (srs : tipa.VerifierSRSData G1 G2)
    (proof :
      applications.groth16_aggregation.ValidatedAggregateProofData G1 G2 GT D)
    (r one : F) :
    applications.groth16_aggregation.TippMippCoreInput F G1 G2 GT GT G1 :=
  {
    com_a := proof.com_a
    com_b := proof.com_b
    com_t := proof.ip_ab
    com_c := proof.com_c
    com_z := proof.agg_c
    ip_ab := proof.ip_ab
    agg_c := proof.agg_c
    proof := proof.tipp_mipp_proof
    verifier_g := srs.g
    verifier_g_beta := srs.g_beta
    verifier_h := srs.h
    verifier_h_alpha := srs.h_alpha
    r := r
    kzg_g2_r_shift := one
  }

/-- The generated production projection preserves every scalar proof, SRS,
and randomizer component exactly. -/
theorem shipping_tipp_mipp_core_input_exact
    {F G1 G2 GT D : Type}
    (serializeG1 : ark_serialize.CanonicalSerialize G1)
    (deserializeG1 : ark_serialize.CanonicalDeserialize G1)
    (serializeG2 : ark_serialize.CanonicalSerialize G2)
    (deserializeG2 : ark_serialize.CanonicalDeserialize G2)
    (srs : tipa.VerifierSRSData G1 G2)
    (proof :
      applications.groth16_aggregation.ValidatedAggregateProofData G1 G2 GT D)
    (r one : F) :
    applications.groth16_aggregation.shipping_tipp_mipp_core_input
        (VerifyTippMipp.modelClone F)
        serializeG1 deserializeG1 (VerifyTippMipp.modelClone G1)
        serializeG2 deserializeG2 (VerifyTippMipp.modelClone G2)
        (VerifyTippMipp.modelClone GT)
        srs proof r one =
      .ok (projectedTippInput srs proof r one) := by
  simp [applications.groth16_aggregation.shipping_tipp_mipp_core_input,
    applications.groth16_aggregation.tipp_mipp_core_input_from_parts,
    applications.groth16_aggregation.TippMippCoreProof.Insts.CoreCloneClone.clone,
    projectedTippInput, VerifyTippMipp.modelClone, BuiltinClone]

#print axioms shipping_tipp_mipp_core_input_exact

end

end Ipp.Extracted.AggregateShippingProjection
