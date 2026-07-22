import Ipp.Extracted.ArkworksScalarMulNormalizeG2Final

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksG2

private abbrev Fq2Mont :=
  ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont

/-- The successful operations exposed by a nonzero G2 singleton batch. -/
structure G2SingletonNonzeroTrace (proj : G2ProjLimbTriple)
    (out : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont) where
  product : Fq2Mont
  inverseOption : Option Fq2Mont
  inverse : Fq2Mont
  next : Fq2Mont
  zinv : Fq2Mont
  z2 : Fq2Mont
  x : Fq2Mont
  yz2 : Fq2Mont
  y : Fq2Mont
  forwardMul : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE proj.z = .ok product
  productInv : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_inv product =
    .ok inverseOption
  inverseChoice : inverse = inverseOption.getD
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO
  advanceInverse : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul
    inverse proj.z = .ok next
  recoverInverse : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul inverse
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE = .ok zinv
  squareInverse : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square zinv =
    .ok z2
  scaleX : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul proj.x z2 = .ok x
  scaleY2 : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul proj.y z2 = .ok yz2
  scaleY3 : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul yz2 zinv = .ok y
  output : out.val = [{ x := x, y := y, infinity := false }]

end Ipp.Extracted.ArkworksScalarMulNormalize
