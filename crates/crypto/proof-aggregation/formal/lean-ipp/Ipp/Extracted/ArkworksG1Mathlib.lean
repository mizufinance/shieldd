import Ipp.Extracted.ArkworksG1

/-!
S3-26 part 3: lift the executed BLS12-377 G1 formulas to Mathlib's affine
group law. Curve membership of decoded inputs is an explicit boundary.
-/

namespace Ipp.Extracted.ArkworksG1

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFqMul

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : g1Curve.IsElliptic := g1_isElliptic

abbrev G1AffinePoint := g1Curve.toAffine.Point

/-- The explicit validity boundary for a decoded represented class. -/
def DecodedG1OnCurve : Option (Fq × Fq) → Prop
  | none => True
  | some p => g1Curve.toAffine.Equation p.1 p.2

/-- Lift an on-curve decoded class to Mathlib's affine point group. -/
noncomputable def liftDecodedG1 (d : Option (Fq × Fq))
    (h : DecodedG1OnCurve d) : G1AffinePoint :=
  match d with
  | none => 0
  | some _ => WeierstrassCurve.Affine.Point.mk h

@[simp]
theorem liftDecodedG1_none (h : DecodedG1OnCurve (none : Option (Fq × Fq))) :
    liftDecodedG1 none h = 0 := rfl

@[simp]
theorem liftDecodedG1_some (p : Fq × Fq) (h : DecodedG1OnCurve (some p)) :
    liftDecodedG1 (some p) h =
      WeierstrassCurve.Affine.Point.mk (x := p.1) (y := p.2) h := rfl

private theorem fq_two_ne_zero : (2 : Fq) ≠ 0 := by
  change ((2 : Nat) : Fq) ≠ 0
  intro hz
  have hd := (fq_natCast_eq_zero_iff 2).mp hz
  norm_num [baseModulus] at hd

/-- The chord coordinates are Mathlib's affine addition coordinates. -/
theorem chordAdd_eq_mathlib (x₁ y₁ x₂ y₂ : Fq) (hx : x₁ ≠ x₂) :
    chordAdd (x₁, y₁) (x₂, y₂) =
      (g1Curve.toAffine.addX x₁ x₂
          (g1Curve.toAffine.slope x₁ x₂ y₁ y₂),
        g1Curve.toAffine.addY x₁ x₂ y₁
          (g1Curve.toAffine.slope x₁ x₂ y₁ y₂)) := by
  rw [WeierstrassCurve.Affine.slope_of_X_ne hx]
  have hs : (y₂ - y₁) / (x₂ - x₁) = (y₁ - y₂) / (x₁ - x₂) := by
    field_simp [sub_ne_zero.mpr hx, sub_ne_zero.mpr hx.symm]
    ring
  simp only [chordAdd, hs, WeierstrassCurve.Affine.addX,
    WeierstrassCurve.Affine.addY, WeierstrassCurve.Affine.negAddY,
    WeierstrassCurve.Affine.negY, g1Curve]
  apply Prod.ext
  · simp
  · dsimp
    ring

/-- The tangent coordinates are Mathlib's affine doubling coordinates. -/
theorem tangentDouble_eq_mathlib (x y : Fq) (hy : y ≠ 0) :
    tangentDouble (x, y) =
      (g1Curve.toAffine.addX x x (g1Curve.toAffine.slope x x y y),
        g1Curve.toAffine.addY x x y (g1Curve.toAffine.slope x x y y)) := by
  have hyneg : y ≠ g1Curve.toAffine.negY x y := by
    simp only [WeierstrassCurve.Affine.negY, g1Curve, zero_mul, sub_zero]
    intro h
    have htwo : 2 * y = 0 := by
      calc
      2 * y = y + y := two_mul y
      _ = -y + y := congrArg (fun z => z + y) h
      _ = 0 := neg_add_cancel y
    exact hy ((mul_eq_zero.mp htwo).resolve_left fq_two_ne_zero)
  rw [WeierstrassCurve.Affine.slope_of_Y_ne rfl hyneg]
  have hs :
      (3 * x ^ 2 + 2 * (0 : Fq) * x + 0 - 0 * y) /
          (y - (-y - 0 * x - 0)) =
        (3 * x ^ 2) / (2 * y) := by
    congr 1 <;> ring
  simp only [tangentDouble, WeierstrassCurve.Affine.addX,
    WeierstrassCurve.Affine.addY, WeierstrassCurve.Affine.negAddY,
    WeierstrassCurve.Affine.negY, g1Curve, hs]
  apply Prod.ext
  · dsimp
    ring
  · dsimp
    ring

/-- A finite generic chord lifts to Mathlib point addition. -/
theorem lift_chordAdd (x₁ y₁ x₂ y₂ : Fq) (hx : x₁ ≠ x₂)
    (h₁ : DecodedG1OnCurve (some (x₁, y₁)))
    (h₂ : DecodedG1OnCurve (some (x₂, y₂)))
    (hout : DecodedG1OnCurve (some (chordAdd (x₁, y₁) (x₂, y₂)))) :
    liftDecodedG1 (some (chordAdd (x₁, y₁) (x₂, y₂))) hout =
      liftDecodedG1 (some (x₁, y₁)) h₁ + liftDecodedG1 (some (x₂, y₂)) h₂ := by
  simp only [liftDecodedG1]
  unfold WeierstrassCurve.Affine.Point.mk
  rw [WeierstrassCurve.Affine.Point.add_of_X_ne hx]
  have hcoords := chordAdd_eq_mathlib x₁ y₁ x₂ y₂ hx
  rw [WeierstrassCurve.Affine.Point.some.injEq]
  exact Prod.ext_iff.mp hcoords

/-- A finite generic tangent lifts to Mathlib point doubling. -/
theorem lift_tangentDouble (x y : Fq) (hy : y ≠ 0)
    (h : DecodedG1OnCurve (some (x, y)))
    (hout : DecodedG1OnCurve (some (tangentDouble (x, y)))) :
    liftDecodedG1 (some (tangentDouble (x, y))) hout =
      liftDecodedG1 (some (x, y)) h + liftDecodedG1 (some (x, y)) h := by
  simp only [liftDecodedG1]
  unfold WeierstrassCurve.Affine.Point.mk
  have hyneg : y ≠ g1Curve.toAffine.negY x y := by
    simp only [WeierstrassCurve.Affine.negY, g1Curve, zero_mul, sub_zero]
    intro heq
    have htwo : 2 * y = 0 := by
      calc
        2 * y = y + y := two_mul y
        _ = -y + y := congrArg (fun z => z + y) heq
        _ = 0 := neg_add_cancel y
    exact hy ((mul_eq_zero.mp htwo).resolve_left fq_two_ne_zero)
  rw [WeierstrassCurve.Affine.Point.add_self_of_Y_ne hyneg]
  have hcoords := tangentDouble_eq_mathlib x y hy
  rw [WeierstrassCurve.Affine.Point.some.injEq]
  exact Prod.ext_iff.mp hcoords

/-- Coordinate negation lifts to Mathlib point negation. -/
theorem lift_neg (x y : Fq)
    (h : DecodedG1OnCurve (some (x, y)))
    (hneg : DecodedG1OnCurve (some (x, -y))) :
    liftDecodedG1 (some (x, -y)) hneg = -liftDecodedG1 (some (x, y)) h := by
  simp only [liftDecodedG1]
  unfold WeierstrassCurve.Affine.Point.mk
  rw [WeierstrassCurve.Affine.Point.neg_some]
  rw [WeierstrassCurve.Affine.Point.some.injEq]
  simp [WeierstrassCurve.Affine.negY, g1Curve]

/-- Opposite finite coordinates add to the represented identity class. -/
theorem lift_opposite (x y : Fq)
    (h : DecodedG1OnCurve (some (x, y)))
    (hneg : DecodedG1OnCurve (some (x, -y))) :
    liftDecodedG1 none trivial =
      liftDecodedG1 (some (x, y)) h + liftDecodedG1 (some (x, -y)) hneg := by
  rw [liftDecodedG1_none, liftDecodedG1_some]
  unfold WeierstrassCurve.Affine.Point.mk
  apply Eq.symm
  apply WeierstrassCurve.Affine.Point.add_of_Y_eq rfl
  simp [WeierstrassCurve.Affine.negY, g1Curve]

/-- A finite point with `Y = 0` doubles to the represented identity class. -/
theorem lift_order2 (x y : Fq) (hy : y = 0)
    (h : DecodedG1OnCurve (some (x, y))) :
    liftDecodedG1 none trivial =
      liftDecodedG1 (some (x, y)) h + liftDecodedG1 (some (x, y)) h := by
  rw [liftDecodedG1_none, liftDecodedG1_some]
  unfold WeierstrassCurve.Affine.Point.mk
  apply Eq.symm
  apply WeierstrassCurve.Affine.Point.add_self_of_Y_eq
  simp [hy, WeierstrassCurve.Affine.negY, g1Curve]

/-- A decoded class represents a Mathlib affine point. -/
def RepresentsDecodedG1 : Option (Fq × Fq) → G1AffinePoint → Prop
  | none, point => point = 0
  | some p, point => ∃ h : g1Curve.toAffine.Equation p.1 p.2,
      point = WeierstrassCurve.Affine.Point.mk h

theorem representsDecodedG1_lift (d : Option (Fq × Fq))
    (h : DecodedG1OnCurve d) : RepresentsDecodedG1 d (liftDecodedG1 d h) := by
  cases d with
  | none => rfl
  | some p => exact ⟨h, rfl⟩

/-- Executed generic projective addition represents Mathlib addition. -/
theorem executed_g1_add_generic_refines_mathlib (a b output : G1ProjLimbTriple)
    (ha : CanonicalG1 a) (hb : CanonicalG1 b) (p q : Fq × Fq)
    (hpa : decodeG1 a = some p) (hqb : decodeG1 b = some q) (hx : p.1 ≠ q.1)
    (hp : DecodedG1OnCurve (some p)) (hq : DecodedG1OnCurve (some q))
    (hout : DecodedG1OnCurve (some (chordAdd p q)))
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add a b = .ok output) :
    CanonicalG1 output ∧
      RepresentsDecodedG1 (decodeG1 output)
        (liftDecodedG1 (some p) hp + liftDecodedG1 (some q) hq) := by
  have hd := decode_g1_add_generic a b output ha hb p q hpa hqb hx hexec
  refine ⟨hd.1, ?_⟩
  rw [hd.2]
  refine ⟨hout, ?_⟩
  rcases p with ⟨x₁, y₁⟩
  rcases q with ⟨x₂, y₂⟩
  exact (lift_chordAdd x₁ y₁ x₂ y₂ hx hp hq hout).symm

/-- Executed generic mixed addition represents Mathlib addition. -/
theorem executed_g1_add_mixed_generic_refines_mathlib (a output : G1ProjLimbTriple)
    (b : G1AffineLimbPair) (ha : CanonicalG1 a)
    (hbx : limbsToNat b.x < baseModulus) (hby : limbsToNat b.y < baseModulus)
    (p : Fq × Fq) (hinfinity : b.infinity = false) (hpa : decodeG1 a = some p)
    (hx : p.1 ≠ decode b.x) (hp : DecodedG1OnCurve (some p))
    (hq : DecodedG1OnCurve (some (decode b.x, decode b.y)))
    (hout : DecodedG1OnCurve (some (chordAdd p (decode b.x, decode b.y))))
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add_mixed a b = .ok output) :
    CanonicalG1 output ∧
      RepresentsDecodedG1 (decodeG1 output)
        (liftDecodedG1 (some p) hp +
          liftDecodedG1 (some (decode b.x, decode b.y)) hq) := by
  have hd := decode_g1_add_mixed_generic a output b ha hbx hby p
    hinfinity hpa hx hexec
  refine ⟨hd.1, ?_⟩
  rw [hd.2]
  refine ⟨hout, ?_⟩
  rcases p with ⟨x₁, y₁⟩
  exact (lift_chordAdd x₁ y₁ (decode b.x) (decode b.y) hx hp hq hout).symm

/-- Executed generic doubling represents Mathlib doubling. -/
theorem executed_g1_double_generic_refines_mathlib (a output : G1ProjLimbTriple)
    (ha : CanonicalG1 a) (p : Fq × Fq) (hdecode : decodeG1 a = some p)
    (hy : p.2 ≠ 0) (hp : DecodedG1OnCurve (some p))
    (hout : DecodedG1OnCurve (some (tangentDouble p)))
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_double a = .ok output) :
    CanonicalG1 output ∧
      RepresentsDecodedG1 (decodeG1 output)
        (liftDecodedG1 (some p) hp + liftDecodedG1 (some p) hp) := by
  have hd := decode_g1_double_generic a output ha p hdecode hy hexec
  refine ⟨hd.1, ?_⟩
  rw [hd.2]
  refine ⟨hout, ?_⟩
  rcases p with ⟨x, y⟩
  exact (lift_tangentDouble x y hy hp hout).symm

/-- Executed order-two doubling represents Mathlib doubling at infinity. -/
theorem executed_g1_double_order2_refines_mathlib (a output : G1ProjLimbTriple)
    (ha : CanonicalG1 a) (p : Fq × Fq) (hdecode : decodeG1 a = some p)
    (hy : p.2 = 0) (hp : DecodedG1OnCurve (some p))
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_double a = .ok output) :
    CanonicalG1 output ∧
      RepresentsDecodedG1 (decodeG1 output)
        (liftDecodedG1 (some p) hp + liftDecodedG1 (some p) hp) := by
  have hd := decode_g1_double_order2 a output ha p hdecode hy hexec
  refine ⟨hd.1, ?_⟩
  rw [hd.2]
  rcases p with ⟨x, y⟩
  exact (lift_order2 x y hy hp).symm

/-- Executed finite negation represents Mathlib negation. -/
theorem executed_g1_neg_finite_refines_mathlib (a output : G1ProjLimbTriple)
    (ha : CanonicalG1 a) (x y : Fq) (hdecode : decodeG1 a = some (x, y))
    (hp : DecodedG1OnCurve (some (x, y)))
    (hneg : DecodedG1OnCurve (some (x, -y)))
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_neg a = .ok output) :
    RepresentsDecodedG1 (decodeG1 output) (-liftDecodedG1 (some (x, y)) hp) := by
  have hd := decode_g1_neg a output ha hexec
  rw [hdecode] at hd
  simp only [Option.map_some] at hd
  rw [hd]
  exact ⟨hneg, (lift_neg x y hp hneg).symm⟩

/-- Executed negation preserves the represented identity class. -/
theorem executed_g1_neg_identity_refines_mathlib (a output : G1ProjLimbTriple)
    (ha : CanonicalG1 a) (hdecode : decodeG1 a = none)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_neg a = .ok output) :
    RepresentsDecodedG1 (decodeG1 output) (-0 : G1AffinePoint) := by
  have hd := decode_g1_neg a output ha hexec
  rw [hdecode] at hd
  simp only [Option.map_none] at hd
  rw [hd]
  simp [RepresentsDecodedG1]

/-- Executed projective addition respects the left identity class. -/
theorem executed_g1_add_left_identity_refines_mathlib (a b output : G1ProjLimbTriple)
    (hz : a.z.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val)
    (point : G1AffinePoint) (hb : RepresentsDecodedG1 (decodeG1 b) point)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add a b = .ok output) :
    RepresentsDecodedG1 (decodeG1 output) (0 + point) := by
  rw [decode_g1_add_left_identity a b output hz hexec]
  simpa using hb

/-- Executed projective addition respects the right identity class. -/
theorem executed_g1_add_right_identity_refines_mathlib (a b output : G1ProjLimbTriple)
    (hz : b.z.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val)
    (point : G1AffinePoint) (ha : RepresentsDecodedG1 (decodeG1 a) point)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add a b = .ok output) :
    RepresentsDecodedG1 (decodeG1 output) (point + 0) := by
  rw [decode_g1_add_right_identity a b output hz hexec]
  simpa using ha

/-- Executed mixed addition respects affine infinity. -/
theorem executed_g1_add_mixed_identity_refines_mathlib (a output : G1ProjLimbTriple)
    (b : G1AffineLimbPair) (hinfinity : b.infinity = true)
    (point : G1AffinePoint) (ha : RepresentsDecodedG1 (decodeG1 a) point)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add_mixed a b = .ok output) :
    RepresentsDecodedG1 (decodeG1 output) (point + 0) := by
  rw [decode_g1_add_mixed_identity a output b hinfinity hexec]
  simpa using ha

/-- Executed zero-Z doubling respects doubling of the identity class. -/
theorem executed_g1_double_identity_refines_mathlib (a output : G1ProjLimbTriple)
    (hz : a.z.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_double a = .ok output) :
    RepresentsDecodedG1 (decodeG1 output) ((0 : G1AffinePoint) + 0) := by
  rw [decode_g1_double_identity a output hz hexec]
  simp [RepresentsDecodedG1]

/-- Executed opposite projective inputs represent Mathlib inverse addition. -/
theorem executed_g1_add_opposite_refines_mathlib (a b output : G1ProjLimbTriple)
    (ha : CanonicalG1 a) (hb : CanonicalG1 b) (x y : Fq) (hy : y ≠ 0)
    (hpa : decodeG1 a = some (x, y)) (hpb : decodeG1 b = some (x, -y))
    (hp : DecodedG1OnCurve (some (x, y)))
    (hneg : DecodedG1OnCurve (some (x, -y)))
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add a b = .ok output) :
    RepresentsDecodedG1 (decodeG1 output)
      (liftDecodedG1 (some (x, y)) hp + liftDecodedG1 (some (x, -y)) hneg) := by
  rw [decode_g1_add_opposite a b output ha hb x y hy hpa hpb hexec]
  exact (lift_opposite x y hp hneg).symm

/-- Executed opposite mixed inputs represent Mathlib inverse addition. -/
theorem executed_g1_add_mixed_opposite_refines_mathlib (a output : G1ProjLimbTriple)
    (b : G1AffineLimbPair) (ha : CanonicalG1 a)
    (hbx : limbsToNat b.x < baseModulus) (hby : limbsToNat b.y < baseModulus)
    (x y : Fq) (hy : y ≠ 0) (hinfinity : b.infinity = false)
    (hpa : decodeG1 a = some (x, y)) (hbxdecode : decode b.x = x)
    (hbydecode : decode b.y = -y) (hp : DecodedG1OnCurve (some (x, y)))
    (hneg : DecodedG1OnCurve (some (x, -y)))
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add_mixed a b = .ok output) :
    RepresentsDecodedG1 (decodeG1 output)
      (liftDecodedG1 (some (x, y)) hp + liftDecodedG1 (some (x, -y)) hneg) := by
  rw [decode_g1_add_mixed_opposite a output b ha hbx hby x y hy hinfinity
    hpa hbxdecode hbydecode hexec]
  exact (lift_opposite x y hp hneg).symm

/-- Equal executed projective inputs delegate to Mathlib doubling. -/
theorem executed_g1_add_equal_refines_mathlib (a b output : G1ProjLimbTriple)
    (ha : CanonicalG1 a) (hb : CanonicalG1 b) (p : Fq × Fq)
    (hpa : decodeG1 a = some p) (hpb : decodeG1 b = some p)
    (hp : DecodedG1OnCurve (some p))
    (htangent : p.2 ≠ 0 → DecodedG1OnCurve (some (tangentDouble p)))
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add a b = .ok output) :
    CanonicalG1 output ∧ RepresentsDecodedG1 (decodeG1 output)
      (liftDecodedG1 (some p) hp + liftDecodedG1 (some p) hp) := by
  obtain ⟨hout, doubled, hdouble, hdecode⟩ :=
    decode_g1_add_equal_delegates a b output ha hb p hpa hpb hexec
  refine ⟨hout, ?_⟩
  by_cases hy : p.2 = 0
  · have hd := executed_g1_double_order2_refines_mathlib a doubled ha p hpa hy hp hdouble
    rw [hdecode]
    exact hd.2
  · have hd := executed_g1_double_generic_refines_mathlib a doubled ha p hpa hy hp
      (htangent hy) hdouble
    rw [hdecode]
    exact hd.2

/-- Equal executed mixed inputs delegate to Mathlib doubling. -/
theorem executed_g1_add_mixed_equal_refines_mathlib (a output : G1ProjLimbTriple)
    (b : G1AffineLimbPair) (ha : CanonicalG1 a)
    (hbx : limbsToNat b.x < baseModulus) (hby : limbsToNat b.y < baseModulus)
    (hinfinity : b.infinity = false)
    (hpa : decodeG1 a = some (decode b.x, decode b.y))
    (hp : DecodedG1OnCurve (some (decode b.x, decode b.y)))
    (htangent : decode b.y ≠ 0 →
      DecodedG1OnCurve (some (tangentDouble (decode b.x, decode b.y))))
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add_mixed a b = .ok output) :
    CanonicalG1 output ∧ RepresentsDecodedG1 (decodeG1 output)
      (liftDecodedG1 (some (decode b.x, decode b.y)) hp +
        liftDecodedG1 (some (decode b.x, decode b.y)) hp) := by
  obtain ⟨hout, doubled, hdouble, hdecode⟩ :=
    decode_g1_add_mixed_equal_delegates a output b ha hbx hby hinfinity hpa hexec
  refine ⟨hout, ?_⟩
  by_cases hy : decode b.y = 0
  · have hd := executed_g1_double_order2_refines_mathlib a doubled ha
      (decode b.x, decode b.y) hpa hy hp hdouble
    rw [hdecode]
    exact hd.2
  · have hd := executed_g1_double_generic_refines_mathlib a doubled ha
      (decode b.x, decode b.y) hpa hy hp (htangent hy) hdouble
    rw [hdecode]
    exact hd.2

#print axioms chordAdd_eq_mathlib
#print axioms tangentDouble_eq_mathlib
#print axioms lift_chordAdd
#print axioms lift_tangentDouble
#print axioms lift_neg
#print axioms lift_opposite
#print axioms lift_order2
#print axioms executed_g1_add_generic_refines_mathlib
#print axioms executed_g1_add_mixed_generic_refines_mathlib
#print axioms executed_g1_double_generic_refines_mathlib
#print axioms executed_g1_double_order2_refines_mathlib
#print axioms executed_g1_neg_finite_refines_mathlib
#print axioms executed_g1_neg_identity_refines_mathlib
#print axioms executed_g1_add_left_identity_refines_mathlib
#print axioms executed_g1_add_right_identity_refines_mathlib
#print axioms executed_g1_add_mixed_identity_refines_mathlib
#print axioms executed_g1_double_identity_refines_mathlib
#print axioms executed_g1_add_opposite_refines_mathlib
#print axioms executed_g1_add_mixed_opposite_refines_mathlib
#print axioms executed_g1_add_equal_refines_mathlib
#print axioms executed_g1_add_mixed_equal_refines_mathlib

end Ipp.Extracted.ArkworksG1
