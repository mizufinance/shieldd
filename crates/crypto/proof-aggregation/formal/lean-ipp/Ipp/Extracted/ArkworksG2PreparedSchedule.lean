import Ipp.Extracted.ArkworksG2PreparedGenerated
import Ipp.Extracted.ArkworksFqByteRuntime
import Ipp.Bls12377Core
import Mathlib.Tactic

/-!
S3-33 schedule shell for the extracted BLS12-377 prepared-G2 loop.
The step callbacks remain abstract so addition semantics can be supplied later.
-/

namespace Ipp.Extracted.ArkworksG2PreparedSchedule

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksFqByteRuntime

private theorem extractedBit_eq (value : MacCampaign.U64) :
    (value &&& 1#u64 != 0#u64) = (value.val % 2 == 1) := by
  by_cases heq :
      value &&& MacCampaign.U64.ofNat 1 = MacCampaign.U64.ofNat 0
  · have hval := congrArg MacCampaign.U64.val heq
    rw [u64_and_one_val] at hval
    norm_num [MacCampaign.U64.ofNat, MacCampaign.u64Base] at hval
    simp [heq, hval]
  · have hvalne : value.val % 2 ≠ 0 := by
      intro hzero
      apply heq
      apply u64_eq_of_val_eq
      rw [u64_and_one_val]
      simpa [MacCampaign.U64.ofNat, MacCampaign.u64Base] using hzero
    have hmod : value.val % 2 = 1 := by
      have := Nat.mod_lt value.val (by decide : 0 < 2)
      omega
    simp [heq, hmod]

abbrev FqMont := ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont
abbrev Fq2Mont := ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont
abbrev G2ProjMont := ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont
abbrev G2AffineMont := ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont
abbrev EllCoeffMont := Fq2Mont × Fq2Mont × Fq2Mont
abbrev CoeffVec := alloc.vec.Vec EllCoeffMont
abbrev DoubleStep := G2ProjMont → Result (G2ProjMont × EllCoeffMont)
abbrev AddStep := G2ProjMont → G2AffineMont → Result (G2ProjMont × EllCoeffMont)

/-- The exact unsigned bit test used by the extracted Rust loop. -/
def extractedAteBit (position : Std.Usize) : Result Bool := do
  let shifted ←
    (9586122913090633729#u64 >>> position)
  let bit ← lift (shifted &&& 1#u64)
  .ok (bit != 0#u64)

/-- One prepared-G2 schedule step with abstract doubling and addition effects. -/
def scheduleBody (doubleStep : DoubleStep) (addStep : AddStep)
    (q : G2AffineMont)
    (state : G2ProjMont × CoeffVec × Std.Usize) :
    Result (ControlFlow (G2ProjMont × CoeffVec × Std.Usize) CoeffVec) := do
  let (r, coeffs, i) := state
  if i > 0#usize then
    let nextI ← i - 1#usize
    let shifted ← 9586122913090633729#u64 >>> nextI
    let bit ← lift (shifted &&& 1#u64)
    let (doubled, doubleCoeff) ← doubleStep r
    let coeffs ← alloc.vec.Vec.push coeffs doubleCoeff
    if bit != 0#u64 then
      let (added, addCoeff) ← addStep doubled q
      let coeffs ← alloc.vec.Vec.push coeffs addCoeff
      .ok (.cont (added, coeffs, nextI))
    else
      .ok (.cont (doubled, coeffs, nextI))
  else
    .ok (.done coeffs)

/-- The 63 post-leading-bit ate schedule, parameterized by both line steps. -/
noncomputable def preparedSchedule (doubleStep : DoubleStep) (addStep : AddStep)
    (q : G2AffineMont) (initial : G2ProjMont)
    (coeffs : CoeffVec) : Result CoeffVec :=
  Aeneas.loop (scheduleBody doubleStep addStep q) (initial, coeffs, 63#usize)

/-- Finite prepared-G2 execution starts from the affine input at homogeneous Z=1. -/
def initialState (q : G2AffineMont) : G2ProjMont :=
  { x := q.x, y := q.y,
    z := ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE }

@[simp] theorem initialState_coordinates (q : G2AffineMont) :
    (initialState q).x = q.x ∧ (initialState q).y = q.y ∧
      (initialState q).z = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE := by
  exact ⟨rfl, rfl, rfl⟩

/-- At positions below 64, the extracted shift/mod test is `Nat.testBit X`. -/
theorem extractedAteBit_eq_testBit (position : Nat) (hposition : position < 64) :
    extractedAteBit ⟨position⟩ =
      .ok (Ipp.Bls12377.ateLoopParameter.testBit position) := by
  unfold extractedAteBit
  change MacCampaign.shr64ByUsize
      (MacCampaign.U64.ofNat 9586122913090633729)
      (Usize.ofNat position) >>= (fun shifted =>
        lift (shifted &&& 1#u64) >>= (fun bit =>
          .ok (bit != 0#u64))) = _
  unfold MacCampaign.shr64ByUsize
  rw [show (Usize.ofNat position).val = position by
    rfl]
  rw [if_pos hposition]
  have hconstant :
      (MacCampaign.U64.ofNat 9586122913090633729).val =
        9586122913090633729 := by
    norm_num [MacCampaign.U64.ofNat, MacCampaign.u64Base]
  rw [hconstant]
  have hquotient :
      9586122913090633729 / 2 ^ position < MacCampaign.u64Base := by
    apply lt_of_le_of_lt (Nat.div_le_self _ _)
    norm_num [MacCampaign.u64Base]
  have hshifted :
      (MacCampaign.U64.ofNat
        (9586122913090633729 / 2 ^ position)).val =
        9586122913090633729 / 2 ^ position := by
    simp [MacCampaign.U64.ofNat, Nat.mod_eq_of_lt hquotient]
  simp [Aeneas.lift, extractedBit_eq, hshifted,
    Ipp.Bls12377.ateLoopParameter, Nat.testBit, Nat.shiftRight_eq_div_pow]

/-- The schedule positions are exactly 62 down to 0, hence the 63 ate bits. -/
theorem ate_schedule_positions :
    (List.range 63).reverse =
      [62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47,
       46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31,
       30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15,
       14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0] := by
  decide

theorem preparedSchedule_uses_ate_bits :
    Ipp.Bls12377.ateLoopBits =
      (List.range 63).reverse.map Ipp.Bls12377.ateLoopParameter.testBit := by
  rfl

/-- The extracted loop is the abstract schedule instantiated with its two callbacks. -/
theorem g2_prepared_loop_eq_schedule (q : G2AffineMont) (twoInv : FqMont)
    (initial : G2ProjMont) (coeffs : CoeffVec) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_prepared_loop
        q.x q.y twoInv initial coeffs 63#usize =
      preparedSchedule
        (fun r => ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line r twoInv)
        ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_line
        { x := q.x, y := q.y, infinity := false } initial coeffs := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_prepared_loop
    preparedSchedule scheduleBody
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_prepared_loop.body
  rfl

/-- Affine infinity prepares to the empty coefficient list and infinity flag. -/
theorem g2_prepared_infinity (q : G2AffineMont) (hinfinity : q.infinity = true) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_prepared q =
      .ok { ell_coeffs := ⟨[]⟩, infinity := true } := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_prepared
  simp [hinfinity, ark_ip_proofs.alloc.vec.Vec.new]

/-- Once `2⁻¹` is computed, finite preparation is exactly the abstract schedule. -/
theorem g2_prepared_finite_schedule (q : G2AffineMont) (two twoInv : FqMont)
    (hinfinity : q.infinity = false)
    (hdouble : ark_ip_proofs.s3_07_arkworks_fq_spike.double
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE = .ok two)
    (hinv : ark_ip_proofs.s3_07_arkworks_fq_spike.inv two = .ok (some twoInv)) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_prepared q = (do
      let coeffs ← preparedSchedule
        (fun r => ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line r twoInv)
        ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_line
        { x := q.x, y := q.y, infinity := false }
        (initialState q) ⟨[]⟩
      .ok { ell_coeffs := coeffs, infinity := false }) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_prepared
  simp [hinfinity, hdouble, hinv, g2_prepared_loop_eq_schedule,
    initialState, alloc.vec.Vec.with_capacity]

#print axioms initialState_coordinates
#print axioms extractedAteBit_eq_testBit
#print axioms ate_schedule_positions
#print axioms preparedSchedule_uses_ate_bits
#print axioms g2_prepared_loop_eq_schedule
#print axioms g2_prepared_infinity
#print axioms g2_prepared_finite_schedule

end Ipp.Extracted.ArkworksG2PreparedSchedule
