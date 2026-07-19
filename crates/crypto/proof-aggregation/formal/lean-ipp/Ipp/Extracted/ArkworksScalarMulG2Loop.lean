import Ipp.Extracted.ArkworksScalarMulLoop

/-! Executed ordinary G2 projective and affine scalar multiplication. -/

namespace Ipp.Extracted.ArkworksScalarMul

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksG2

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Fact (∀ x : Ipp.Bls12377.Fq,
    x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using Ipp.Bls12377.arithmeticFacts.fq2Nonresidue x⟩

local instance : Ipp.Bls12377.g2Curve.IsElliptic :=
  Ipp.Bls12377.g2_isElliptic

theorem valid_g2_zero (output : G2ProjLimbTriple)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_zero = .ok output) :
    ValidG2LoopState output 0 := by
  refine ⟨canonical_g2_zero output hexec, ?_⟩
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_zero at hexec
  simp only [Result.ok.injEq] at hexec
  subst output
  have hz : isZeroFq2Mont
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO = true := by
    simp [isZeroFq2Mont, ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO]
  simp only [decodeG2, hz, ↓reduceIte]
  rfl

theorem valid_g2_mul_projective_inner
    (base : G2ProjLimbTriple) (basePoint : G2AffinePoint)
    (scalar : ScalarArray) {limb : Nat} (hlimb : limb < 4)
    (accumulator output : G2ProjLimbTriple) (started nextStarted : Bool)
    (bitIndex : Usize) (hbound : bitIndex.val ≤ 64)
    (hbase : ValidG2LoopState base basePoint)
    (hvalid : ValidG2LoopState accumulator
      (partialValue scalar limb bitIndex.val • basePoint))
    (hsuppressed : started = false → partialValue scalar limb bitIndex.val = 0)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_projective_loop0_loop0
      base scalar accumulator started (Usize.ofNat limb) bitIndex =
        .ok (output, nextStarted)) :
    ValidG2LoopState output (highPrefix scalar limb • basePoint) ∧
      (nextStarted = false → highPrefix scalar limb = 0) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_projective_loop0_loop0 at hexec
  have hrun := Aeneas.loopResult_of_eq (by simp) hexec
  change LoopResult
    (scalarInnerExtractedBody
      (fun accumulator bit =>
        ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_projective_step
          accumulator base bit)
      scalar (Usize.ofNat limb))
    (accumulator, started, bitIndex) (.ok (output, nextStarted)) at hrun
  have hmodel := scalarInnerLoopResult_to_model _ scalar hlimb hrun hbound
  apply scalarInnerLoopResult_valid
    (fun limbs value => ValidG2LoopState limbs (value • basePoint))
    (fun accumulator bit =>
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_projective_step accumulator base bit)
    scalar hlimb _ hmodel hbound hvalid hsuppressed output nextStarted rfl
  intro current next value bit hcurrent hstepExec
  have hv := valid_g2_mul_projective_step current base next (value • basePoint)
    basePoint bit hcurrent hbase hstepExec
  rw [nsmul_bit_step value basePoint bit] at hv
  exact hv

theorem valid_g2_mul_projective_outer
    (base : G2ProjLimbTriple) (basePoint : G2AffinePoint)
    (scalar : ScalarArray) (accumulator output : G2ProjLimbTriple)
    (started : Bool) (limb : Usize) (hbound : limb.val ≤ 4)
    (hbase : ValidG2LoopState base basePoint)
    (hvalid : ValidG2LoopState accumulator (highPrefix scalar limb.val • basePoint))
    (hsuppressed : started = false → highPrefix scalar limb.val = 0)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_projective_loop0
      base scalar accumulator started limb = .ok output) :
    ValidG2LoopState output (scalarToNat scalar • basePoint) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_projective_loop0 at hexec
  have hrun := Aeneas.loopResult_of_eq (by simp) hexec
  let inner := fun accumulator started limb =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_projective_loop0_loop0
      base scalar accumulator started limb 64#usize
  change LoopResult (scalarOuterExtractedBody inner)
    (accumulator, started, limb) (.ok output) at hrun
  have hmodel := scalarOuterLoopResult_to_model inner hrun
  apply scalarOuterLoopResult_valid
    (fun limbs value => ValidG2LoopState limbs (value • basePoint))
    (fun accumulator started limb => inner accumulator started (Usize.ofNat limb))
    scalar _ hmodel hbound hvalid hsuppressed output rfl
  intro current currentStarted currentLimb next nextStarted hlimb hcurrent hsupp hexecInner
  apply valid_g2_mul_projective_inner base basePoint scalar hlimb current next
    currentStarted nextStarted 64#usize (by decide) hbase
    (by simpa [partialValue_start scalar hlimb] using hcurrent)
    (by intro hs; simpa [partialValue_start scalar hlimb] using hsupp hs)
    hexecInner

/-- Executed ordinary G2 projective multiplication represents the scalar action. -/
theorem valid_g2_mul_projective
    (base : G2ProjLimbTriple) (basePoint : G2AffinePoint)
    (scalar : ScalarArray) (output : G2ProjLimbTriple)
    (hbase : ValidG2LoopState base basePoint)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_projective
      base scalar = .ok output) :
    ValidG2LoopState output (scalarToNat scalar • basePoint) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_projective at hexec
  let zero : G2ProjLimbTriple :=
    { x := ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE
      y := ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE
      z := ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO }
  have hzeroExec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_zero = .ok zero := rfl
  change (ark_ip_proofs.s3_07_arkworks_fq_spike.g2_zero >>= _) = .ok output at hexec
  rw [hzeroExec] at hexec
  simp only [Result.bind_ok] at hexec
  apply valid_g2_mul_projective_outer base basePoint scalar zero output false 4#usize
    (by decide) hbase
    (by simpa [highPrefix_four] using valid_g2_zero zero hzeroExec)
    (by simp [highPrefix_four]) hexec

theorem valid_g2_mul_affine_inner
    (base : G2AffineLimbPair) (basePoint : G2AffinePoint)
    (scalar : ScalarArray) {limb : Nat} (hlimb : limb < 4)
    (accumulator output : G2ProjLimbTriple) (started nextStarted : Bool)
    (bitIndex : Usize) (hbound : bitIndex.val ≤ 64)
    (hbase : ValidG2AffineLoopBase base basePoint)
    (hvalid : ValidG2LoopState accumulator
      (partialValue scalar limb bitIndex.val • basePoint))
    (hsuppressed : started = false → partialValue scalar limb bitIndex.val = 0)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_affine_loop0_loop0
      base scalar accumulator started (Usize.ofNat limb) bitIndex =
        .ok (output, nextStarted)) :
    ValidG2LoopState output (highPrefix scalar limb • basePoint) ∧
      (nextStarted = false → highPrefix scalar limb = 0) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_affine_loop0_loop0 at hexec
  have hrun := Aeneas.loopResult_of_eq (by simp) hexec
  change LoopResult
    (scalarInnerExtractedBody
      (fun accumulator bit =>
        ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_affine_step
          accumulator base bit)
      scalar (Usize.ofNat limb))
    (accumulator, started, bitIndex) (.ok (output, nextStarted)) at hrun
  have hmodel := scalarInnerLoopResult_to_model _ scalar hlimb hrun hbound
  apply scalarInnerLoopResult_valid
    (fun limbs value => ValidG2LoopState limbs (value • basePoint))
    (fun accumulator bit =>
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_affine_step accumulator base bit)
    scalar hlimb _ hmodel hbound hvalid hsuppressed output nextStarted rfl
  intro current next value bit hcurrent hstepExec
  have hv := valid_g2_mul_affine_step current next base (value • basePoint)
    basePoint bit hcurrent hbase hstepExec
  rw [nsmul_bit_step value basePoint bit] at hv
  exact hv

theorem valid_g2_mul_affine_outer
    (base : G2AffineLimbPair) (basePoint : G2AffinePoint)
    (scalar : ScalarArray) (accumulator output : G2ProjLimbTriple)
    (started : Bool) (limb : Usize) (hbound : limb.val ≤ 4)
    (hbase : ValidG2AffineLoopBase base basePoint)
    (hvalid : ValidG2LoopState accumulator (highPrefix scalar limb.val • basePoint))
    (hsuppressed : started = false → highPrefix scalar limb.val = 0)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_affine_loop0
      base scalar accumulator started limb = .ok output) :
    ValidG2LoopState output (scalarToNat scalar • basePoint) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_affine_loop0 at hexec
  have hrun := Aeneas.loopResult_of_eq (by simp) hexec
  let inner := fun accumulator started limb =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_affine_loop0_loop0
      base scalar accumulator started limb 64#usize
  change LoopResult (scalarOuterExtractedBody inner)
    (accumulator, started, limb) (.ok output) at hrun
  have hmodel := scalarOuterLoopResult_to_model inner hrun
  apply scalarOuterLoopResult_valid
    (fun limbs value => ValidG2LoopState limbs (value • basePoint))
    (fun accumulator started limb => inner accumulator started (Usize.ofNat limb))
    scalar _ hmodel hbound hvalid hsuppressed output rfl
  intro current currentStarted currentLimb next nextStarted hlimb hcurrent hsupp hexecInner
  apply valid_g2_mul_affine_inner base basePoint scalar hlimb current next
    currentStarted nextStarted 64#usize (by decide) hbase
    (by simpa [partialValue_start scalar hlimb] using hcurrent)
    (by intro hs; simpa [partialValue_start scalar hlimb] using hsupp hs)
    hexecInner

/-- Executed ordinary G2 affine multiplication represents the scalar action. -/
theorem valid_g2_mul_affine
    (base : G2AffineLimbPair) (basePoint : G2AffinePoint)
    (scalar : ScalarArray) (output : G2ProjLimbTriple)
    (hbase : ValidG2AffineLoopBase base basePoint)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_affine
      base scalar = .ok output) :
    ValidG2LoopState output (scalarToNat scalar • basePoint) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_affine at hexec
  let zero : G2ProjLimbTriple :=
    { x := ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE
      y := ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE
      z := ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO }
  have hzeroExec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_zero = .ok zero := rfl
  change (ark_ip_proofs.s3_07_arkworks_fq_spike.g2_zero >>= _) = .ok output at hexec
  rw [hzeroExec] at hexec
  simp only [Result.bind_ok] at hexec
  apply valid_g2_mul_affine_outer base basePoint scalar zero output false 4#usize
    (by decide) hbase
    (by simpa [highPrefix_four] using valid_g2_zero zero hzeroExec)
    (by simp [highPrefix_four]) hexec

#print axioms valid_g2_mul_projective_inner
#print axioms valid_g2_mul_projective_outer
#print axioms valid_g2_mul_projective
#print axioms valid_g2_mul_affine_inner
#print axioms valid_g2_mul_affine_outer
#print axioms valid_g2_mul_affine
#print axioms valid_g2_zero

end Ipp.Extracted.ArkworksScalarMul
