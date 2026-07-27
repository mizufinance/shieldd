import Ipp.Extracted.ArkworksScalarMulGlvArithmetic
import Ipp.Extracted.ArkworksScalarMulGlvReduceCore

/-! Adapter from the extracted GLV reduction to its curve-free model. -/

namespace Ipp.Extracted.ArkworksScalarMul

open Aeneas Aeneas.Std Result ControlFlow
open GlvArithmetic

abbrev ReducedSpec := GlvReduceCore.ReducedSpec

theorem extracted_reduce_fr_eq_model (input : ScalarArray) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.reduce_fr input =
      GlvReduceCore.reduce input := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.reduce_fr
    ark_ip_proofs.s3_07_arkworks_fq_spike.reduce_fr_loop
    GlvReduceCore.reduce
  congr 1
  funext scalar
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.reduce_fr_loop.body
    GlvReduceCore.body
  rw [fr_modulus_eq]
  rfl

theorem extracted_reduce_fr_spec (input output : ScalarArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.reduce_fr input = .ok output) :
    ReducedSpec input output := by
  rw [extracted_reduce_fr_eq_model] at hexec
  exact GlvReduceCore.reduce_spec input output hexec

#print axioms extracted_reduce_fr_eq_model
#print axioms extracted_reduce_fr_spec

end Ipp.Extracted.ArkworksScalarMul
