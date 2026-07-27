import Ipp.Extracted.ArkworksG2

/-!
S3-27 part 3: lift the executed BLS12-377 G2 formulas to Mathlib's affine
group law. Curve membership of decoded inputs is an explicit boundary.
-/

namespace Ipp.Extracted.ArkworksG2

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

abbrev G2AffinePoint := g2Curve.toAffine.Point

/-- The explicit validity boundary for a decoded represented class. -/
def DecodedG2OnCurve : Option (Fq2 × Fq2) → Prop
  | none => True
  | some p => g2Curve.toAffine.Equation p.1 p.2

/-- Lift an on-curve decoded class to Mathlib's affine point group. -/
noncomputable def liftDecodedG2 (d : Option (Fq2 × Fq2))
    (h : DecodedG2OnCurve d) : G2AffinePoint :=
  match d with
  | none => 0
  | some _ => WeierstrassCurve.Affine.Point.mk h

@[simp]
theorem liftDecodedG2_none (h : DecodedG2OnCurve (none : Option (Fq2 × Fq2))) :
    liftDecodedG2 none h = 0 := rfl

@[simp]
theorem liftDecodedG2_some (p : Fq2 × Fq2) (h : DecodedG2OnCurve (some p)) :
    liftDecodedG2 (some p) h =
      WeierstrassCurve.Affine.Point.mk (x := p.1) (y := p.2) h := rfl

private theorem fq2_two_ne_zero_mathlib : (2 : Fq2) ≠ 0 := by
  intro hz
  have hc0 : (2 : Fq) = 0 := congrArg QuadraticAlgebra.re hz
  change ((2 : Nat) : Fq) = 0 at hc0
  have hd := (fq_natCast_eq_zero_iff 2).mp hc0
  norm_num [baseModulus] at hd

private theorem chordAddG2_eq_mathlib_short {F : Type} [Field F] [DecidableEq F]
    (b x₁ y₁ x₂ y₂ : F) (hx : x₁ ≠ x₂) :
    chordAddG2 (x₁, y₁) (x₂, y₂) =
      (((⟨0, 0, 0, 0, b⟩ : WeierstrassCurve F).toAffine.addX x₁ x₂
          ((⟨0, 0, 0, 0, b⟩ : WeierstrassCurve F).toAffine.slope x₁ x₂ y₁ y₂)),
        ((⟨0, 0, 0, 0, b⟩ : WeierstrassCurve F).toAffine.addY x₁ x₂ y₁
          ((⟨0, 0, 0, 0, b⟩ : WeierstrassCurve F).toAffine.slope x₁ x₂ y₁ y₂))) := by
  rw [WeierstrassCurve.Affine.slope_of_X_ne hx]
  have hs : (y₂ - y₁) / (x₂ - x₁) = (y₁ - y₂) / (x₁ - x₂) := by
    field_simp [sub_ne_zero.mpr hx, sub_ne_zero.mpr hx.symm]
    ring
  simp only [chordAddG2, hs, WeierstrassCurve.Affine.addX,
    WeierstrassCurve.Affine.addY, WeierstrassCurve.Affine.negAddY,
    WeierstrassCurve.Affine.negY]
  apply Prod.ext
  · simp
  · dsimp
    ring

/-- The G2 chord coordinates are Mathlib's affine addition coordinates. -/
theorem chordAddG2_eq_mathlib (x₁ y₁ x₂ y₂ : Fq2) (hx : x₁ ≠ x₂) :
    chordAddG2 (x₁, y₁) (x₂, y₂) =
      (g2Curve.toAffine.addX x₁ x₂
          (g2Curve.toAffine.slope x₁ x₂ y₁ y₂),
        g2Curve.toAffine.addY x₁ x₂ y₁
          (g2Curve.toAffine.slope x₁ x₂ y₁ y₂)) := by
  simpa [g2Curve] using
    (chordAddG2_eq_mathlib_short g2TwistB x₁ y₁ x₂ y₂ hx)

private theorem tangentDoubleG2_eq_mathlib_short {F : Type} [Field F] [DecidableEq F]
    (b x y : F) (h2 : (2 : F) ≠ 0) (hy : y ≠ 0) :
    tangentDoubleG2 (x, y) =
      (((⟨0, 0, 0, 0, b⟩ : WeierstrassCurve F).toAffine.addX x x
          ((⟨0, 0, 0, 0, b⟩ : WeierstrassCurve F).toAffine.slope x x y y)),
        ((⟨0, 0, 0, 0, b⟩ : WeierstrassCurve F).toAffine.addY x x y
          ((⟨0, 0, 0, 0, b⟩ : WeierstrassCurve F).toAffine.slope x x y y))) := by
  have hyneg : y ≠ (⟨0, 0, 0, 0, b⟩ : WeierstrassCurve F).toAffine.negY x y := by
    simp only [WeierstrassCurve.Affine.negY, zero_mul, sub_zero]
    intro h
    have htwo : 2 * y = 0 := by
      calc
        2 * y = y + y := two_mul y
        _ = -y + y := congrArg (fun z => z + y) h
        _ = 0 := neg_add_cancel y
    exact hy ((mul_eq_zero.mp htwo).resolve_left h2)
  rw [WeierstrassCurve.Affine.slope_of_Y_ne rfl hyneg]
  have hs :
      (3 * x ^ 2 + 2 * (0 : F) * x + 0 - 0 * y) /
          (y - (-y - 0 * x - 0)) =
        (3 * x ^ 2) / (2 * y) := by
    congr 1 <;> ring
  simp only [tangentDoubleG2, WeierstrassCurve.Affine.addX,
    WeierstrassCurve.Affine.addY, WeierstrassCurve.Affine.negAddY,
    WeierstrassCurve.Affine.negY, hs]
  apply Prod.ext
  · dsimp
    ring
  · dsimp
    ring

/-- The G2 tangent coordinates are Mathlib's affine doubling coordinates. -/
theorem tangentDoubleG2_eq_mathlib (x y : Fq2) (hy : y ≠ 0) :
    tangentDoubleG2 (x, y) =
      (g2Curve.toAffine.addX x x (g2Curve.toAffine.slope x x y y),
        g2Curve.toAffine.addY x x y (g2Curve.toAffine.slope x x y y)) := by
  simpa [g2Curve] using
    (tangentDoubleG2_eq_mathlib_short g2TwistB x y fq2_two_ne_zero_mathlib hy)

/-- A finite generic G2 chord lifts to Mathlib point addition. -/
theorem lift_chordAddG2 (x₁ y₁ x₂ y₂ : Fq2) (hx : x₁ ≠ x₂)
    (h₁ : DecodedG2OnCurve (some (x₁, y₁)))
    (h₂ : DecodedG2OnCurve (some (x₂, y₂)))
    (hout : DecodedG2OnCurve (some (chordAddG2 (x₁, y₁) (x₂, y₂)))) :
    liftDecodedG2 (some (chordAddG2 (x₁, y₁) (x₂, y₂))) hout =
      liftDecodedG2 (some (x₁, y₁)) h₁ + liftDecodedG2 (some (x₂, y₂)) h₂ := by
  simp only [liftDecodedG2]
  unfold WeierstrassCurve.Affine.Point.mk
  rw [WeierstrassCurve.Affine.Point.add_of_X_ne hx]
  have hcoords := chordAddG2_eq_mathlib x₁ y₁ x₂ y₂ hx
  rw [WeierstrassCurve.Affine.Point.some.injEq]
  exact Prod.ext_iff.mp hcoords

/-- A finite generic G2 tangent lifts to Mathlib point doubling. -/
theorem lift_tangentDoubleG2 (x y : Fq2) (hy : y ≠ 0)
    (h : DecodedG2OnCurve (some (x, y)))
    (hout : DecodedG2OnCurve (some (tangentDoubleG2 (x, y)))) :
    liftDecodedG2 (some (tangentDoubleG2 (x, y))) hout =
      liftDecodedG2 (some (x, y)) h + liftDecodedG2 (some (x, y)) h := by
  simp only [liftDecodedG2]
  unfold WeierstrassCurve.Affine.Point.mk
  have hyneg : y ≠ g2Curve.toAffine.negY x y := by
    simp only [WeierstrassCurve.Affine.negY, g2Curve, zero_mul, sub_zero]
    intro heq
    have htwo : 2 * y = 0 := by
      calc
        2 * y = y + y := two_mul y
        _ = -y + y := congrArg (fun z => z + y) heq
        _ = 0 := neg_add_cancel y
    exact hy ((mul_eq_zero.mp htwo).resolve_left fq2_two_ne_zero_mathlib)
  rw [WeierstrassCurve.Affine.Point.add_self_of_Y_ne hyneg]
  have hcoords := tangentDoubleG2_eq_mathlib x y hy
  rw [WeierstrassCurve.Affine.Point.some.injEq]
  exact Prod.ext_iff.mp hcoords

/-- Coordinate negation lifts to Mathlib point negation. -/
theorem lift_negG2 (x y : Fq2)
    (h : DecodedG2OnCurve (some (x, y)))
    (hneg : DecodedG2OnCurve (some (x, -y))) :
    liftDecodedG2 (some (x, -y)) hneg = -liftDecodedG2 (some (x, y)) h := by
  simp only [liftDecodedG2]
  unfold WeierstrassCurve.Affine.Point.mk
  rw [WeierstrassCurve.Affine.Point.neg_some]
  rw [WeierstrassCurve.Affine.Point.some.injEq]
  simp [WeierstrassCurve.Affine.negY, g2Curve]

/-- Opposite finite coordinates add to the represented identity class. -/
theorem lift_oppositeG2 (x y : Fq2)
    (h : DecodedG2OnCurve (some (x, y)))
    (hneg : DecodedG2OnCurve (some (x, -y))) :
    liftDecodedG2 none trivial =
      liftDecodedG2 (some (x, y)) h + liftDecodedG2 (some (x, -y)) hneg := by
  rw [liftDecodedG2_none, liftDecodedG2_some]
  unfold WeierstrassCurve.Affine.Point.mk
  apply Eq.symm
  apply WeierstrassCurve.Affine.Point.add_of_Y_eq rfl
  simp [WeierstrassCurve.Affine.negY, g2Curve]

/-- A finite point with `Y = 0` doubles to the represented identity class. -/
theorem lift_order2G2 (x y : Fq2) (hy : y = 0)
    (h : DecodedG2OnCurve (some (x, y))) :
    liftDecodedG2 none trivial =
      liftDecodedG2 (some (x, y)) h + liftDecodedG2 (some (x, y)) h := by
  rw [liftDecodedG2_none, liftDecodedG2_some]
  unfold WeierstrassCurve.Affine.Point.mk
  apply Eq.symm
  apply WeierstrassCurve.Affine.Point.add_self_of_Y_eq
  simp [hy, WeierstrassCurve.Affine.negY, g2Curve]

/-- A decoded class represents a Mathlib affine point. -/
def RepresentsDecodedG2 : Option (Fq2 × Fq2) → G2AffinePoint → Prop
  | none, point => point = 0
  | some p, point => ∃ h : g2Curve.toAffine.Equation p.1 p.2,
      point = WeierstrassCurve.Affine.Point.mk h

/-- The separate prime-subgroup validation boundary for a lifted class. -/
def DecodedG2InPrimeSubgroup (d : Option (Fq2 × Fq2))
    (h : DecodedG2OnCurve d) : Prop :=
  inPrimeSubgroup (liftDecodedG2 d h)

theorem representsDecodedG2_lift (d : Option (Fq2 × Fq2))
    (h : DecodedG2OnCurve d) : RepresentsDecodedG2 d (liftDecodedG2 d h) := by
  cases d with
  | none => rfl
  | some p => exact ⟨h, rfl⟩

/-- Executed generic projective G2 addition represents Mathlib addition. -/
theorem executed_g2_add_generic_refines_mathlib (a b output : G2ProjLimbTriple)
    (ha : CanonicalG2 a) (hb : CanonicalG2 b) (p q : Fq2 × Fq2)
    (hpa : decodeG2 a = some p) (hqb : decodeG2 b = some q) (hx : p.1 ≠ q.1)
    (hp : DecodedG2OnCurve (some p)) (hq : DecodedG2OnCurve (some q))
    (hout : DecodedG2OnCurve (some (chordAddG2 p q)))
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add a b = .ok output) :
    CanonicalG2 output ∧
      RepresentsDecodedG2 (decodeG2 output)
        (liftDecodedG2 (some p) hp + liftDecodedG2 (some q) hq) := by
  have hd := decode_g2_add_generic a b output ha hb p q hpa hqb hx hexec
  refine ⟨hd.1, ?_⟩
  rw [hd.2]
  refine ⟨hout, ?_⟩
  rcases p with ⟨x₁, y₁⟩
  rcases q with ⟨x₂, y₂⟩
  exact (lift_chordAddG2 x₁ y₁ x₂ y₂ hx hp hq hout).symm

/-- Executed generic mixed G2 addition represents Mathlib addition. -/
theorem executed_g2_add_mixed_generic_refines_mathlib (a output : G2ProjLimbTriple)
    (b : G2AffineLimbPair) (ha : CanonicalG2 a)
    (hbx : Canonical2 b.x) (hby : Canonical2 b.y)
    (p : Fq2 × Fq2) (hinfinity : b.infinity = false) (hpa : decodeG2 a = some p)
    (hx : p.1 ≠ decodeFq2 b.x) (hp : DecodedG2OnCurve (some p))
    (hq : DecodedG2OnCurve (some (decodeFq2 b.x, decodeFq2 b.y)))
    (hout : DecodedG2OnCurve
      (some (chordAddG2 p (decodeFq2 b.x, decodeFq2 b.y))))
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_mixed a b = .ok output) :
    CanonicalG2 output ∧
      RepresentsDecodedG2 (decodeG2 output)
        (liftDecodedG2 (some p) hp +
          liftDecodedG2 (some (decodeFq2 b.x, decodeFq2 b.y)) hq) := by
  have hd := decode_g2_add_mixed_generic a output b ha hbx hby p
    hinfinity hpa hx hexec
  refine ⟨hd.1, ?_⟩
  rw [hd.2]
  refine ⟨hout, ?_⟩
  rcases p with ⟨x₁, y₁⟩
  exact (lift_chordAddG2 x₁ y₁ (decodeFq2 b.x) (decodeFq2 b.y)
    hx hp hq hout).symm

/-- Executed generic G2 doubling represents Mathlib doubling. -/
theorem executed_g2_double_generic_refines_mathlib (a output : G2ProjLimbTriple)
    (ha : CanonicalG2 a) (p : Fq2 × Fq2) (hdecode : decodeG2 a = some p)
    (hy : p.2 ≠ 0) (hp : DecodedG2OnCurve (some p))
    (hout : DecodedG2OnCurve (some (tangentDoubleG2 p)))
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double a = .ok output) :
    CanonicalG2 output ∧
      RepresentsDecodedG2 (decodeG2 output)
        (liftDecodedG2 (some p) hp + liftDecodedG2 (some p) hp) := by
  have hd := decode_g2_double_generic a output ha p hdecode hy hexec
  refine ⟨hd.1, ?_⟩
  rw [hd.2]
  refine ⟨hout, ?_⟩
  rcases p with ⟨x, y⟩
  exact (lift_tangentDoubleG2 x y hy hp hout).symm

/-- Executed order-two G2 doubling represents Mathlib doubling at infinity. -/
theorem executed_g2_double_order2_refines_mathlib (a output : G2ProjLimbTriple)
    (ha : CanonicalG2 a) (p : Fq2 × Fq2) (hdecode : decodeG2 a = some p)
    (hy : p.2 = 0) (hp : DecodedG2OnCurve (some p))
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double a = .ok output) :
    CanonicalG2 output ∧
      RepresentsDecodedG2 (decodeG2 output)
        (liftDecodedG2 (some p) hp + liftDecodedG2 (some p) hp) := by
  have hd := decode_g2_double_order2 a output ha p hdecode hy hexec
  refine ⟨hd.1, ?_⟩
  rw [hd.2]
  rcases p with ⟨x, y⟩
  exact (lift_order2G2 x y hy hp).symm

/-- Executed finite G2 negation represents Mathlib negation. -/
theorem executed_g2_neg_finite_refines_mathlib (a output : G2ProjLimbTriple)
    (ha : CanonicalG2 a) (x y : Fq2) (hdecode : decodeG2 a = some (x, y))
    (hp : DecodedG2OnCurve (some (x, y)))
    (hneg : DecodedG2OnCurve (some (x, -y)))
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_neg a = .ok output) :
    RepresentsDecodedG2 (decodeG2 output) (-liftDecodedG2 (some (x, y)) hp) := by
  have hd := decode_g2_neg a output ha hexec
  rw [hdecode] at hd
  simp only [Option.map_some] at hd
  rw [hd]
  exact ⟨hneg, (lift_negG2 x y hp hneg).symm⟩

/-- Executed G2 negation preserves the represented identity class. -/
theorem executed_g2_neg_identity_refines_mathlib (a output : G2ProjLimbTriple)
    (ha : CanonicalG2 a) (hdecode : decodeG2 a = none)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_neg a = .ok output) :
    RepresentsDecodedG2 (decodeG2 output) (-0 : G2AffinePoint) := by
  have hd := decode_g2_neg a output ha hexec
  rw [hdecode] at hd
  simp only [Option.map_none] at hd
  rw [hd]
  simp [RepresentsDecodedG2]

/-- Executed projective G2 addition respects the left identity class. -/
theorem executed_g2_add_left_identity_refines_mathlib (a b output : G2ProjLimbTriple)
    (hz : isZeroFq2Mont a.z = true)
    (point : G2AffinePoint) (hb : RepresentsDecodedG2 (decodeG2 b) point)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add a b = .ok output) :
    RepresentsDecodedG2 (decodeG2 output) (0 + point) := by
  rw [decode_g2_add_left_identity a b output hz hexec]
  simpa using hb

/-- Executed projective G2 addition respects the right identity class. -/
theorem executed_g2_add_right_identity_refines_mathlib (a b output : G2ProjLimbTriple)
    (hz : isZeroFq2Mont b.z = true)
    (point : G2AffinePoint) (ha : RepresentsDecodedG2 (decodeG2 a) point)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add a b = .ok output) :
    RepresentsDecodedG2 (decodeG2 output) (point + 0) := by
  rw [decode_g2_add_right_identity a b output hz hexec]
  simpa using ha

/-- Executed mixed G2 addition respects affine infinity. -/
theorem executed_g2_add_mixed_identity_refines_mathlib (a output : G2ProjLimbTriple)
    (b : G2AffineLimbPair) (hinfinity : b.infinity = true)
    (point : G2AffinePoint) (ha : RepresentsDecodedG2 (decodeG2 a) point)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_mixed a b = .ok output) :
    RepresentsDecodedG2 (decodeG2 output) (point + 0) := by
  rw [decode_g2_add_mixed_identity a output b hinfinity hexec]
  simpa using ha

/-- Executed zero-Z G2 doubling respects doubling of the identity class. -/
theorem executed_g2_double_identity_refines_mathlib (a output : G2ProjLimbTriple)
    (hz : isZeroFq2Mont a.z = true)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double a = .ok output) :
    RepresentsDecodedG2 (decodeG2 output) ((0 : G2AffinePoint) + 0) := by
  rw [decode_g2_double_identity a output hz hexec]
  simp [RepresentsDecodedG2]

/-- Executed opposite projective G2 inputs represent Mathlib inverse addition. -/
theorem executed_g2_add_opposite_refines_mathlib (a b output : G2ProjLimbTriple)
    (ha : CanonicalG2 a) (hb : CanonicalG2 b) (x y : Fq2) (hy : y ≠ 0)
    (hpa : decodeG2 a = some (x, y)) (hpb : decodeG2 b = some (x, -y))
    (hp : DecodedG2OnCurve (some (x, y)))
    (hneg : DecodedG2OnCurve (some (x, -y)))
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add a b = .ok output) :
    RepresentsDecodedG2 (decodeG2 output)
      (liftDecodedG2 (some (x, y)) hp + liftDecodedG2 (some (x, -y)) hneg) := by
  rw [decode_g2_add_opposite a b output ha hb x y hy hpa hpb hexec]
  exact (lift_oppositeG2 x y hp hneg).symm

/-- Executed opposite mixed G2 inputs represent Mathlib inverse addition. -/
theorem executed_g2_add_mixed_opposite_refines_mathlib (a output : G2ProjLimbTriple)
    (b : G2AffineLimbPair) (ha : CanonicalG2 a)
    (hbx : Canonical2 b.x) (hby : Canonical2 b.y)
    (x y : Fq2) (hy : y ≠ 0) (hinfinity : b.infinity = false)
    (hpa : decodeG2 a = some (x, y)) (hbxdecode : decodeFq2 b.x = x)
    (hbydecode : decodeFq2 b.y = -y) (hp : DecodedG2OnCurve (some (x, y)))
    (hneg : DecodedG2OnCurve (some (x, -y)))
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_mixed a b = .ok output) :
    RepresentsDecodedG2 (decodeG2 output)
      (liftDecodedG2 (some (x, y)) hp + liftDecodedG2 (some (x, -y)) hneg) := by
  rw [decode_g2_add_mixed_opposite a output b ha hbx hby x y hy hinfinity
    hpa hbxdecode hbydecode hexec]
  exact (lift_oppositeG2 x y hp hneg).symm

/-- Equal executed projective G2 inputs delegate to Mathlib doubling. -/
theorem executed_g2_add_equal_refines_mathlib (a b output : G2ProjLimbTriple)
    (ha : CanonicalG2 a) (hb : CanonicalG2 b) (p : Fq2 × Fq2)
    (hpa : decodeG2 a = some p) (hpb : decodeG2 b = some p)
    (hp : DecodedG2OnCurve (some p))
    (htangent : p.2 ≠ 0 → DecodedG2OnCurve (some (tangentDoubleG2 p)))
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add a b = .ok output) :
    CanonicalG2 output ∧ RepresentsDecodedG2 (decodeG2 output)
      (liftDecodedG2 (some p) hp + liftDecodedG2 (some p) hp) := by
  obtain ⟨hout, doubled, hdouble, hdecode⟩ :=
    decode_g2_add_equal_delegates a b output ha hb p hpa hpb hexec
  refine ⟨hout, ?_⟩
  by_cases hy : p.2 = 0
  · have hd := executed_g2_double_order2_refines_mathlib a doubled ha p hpa hy hp hdouble
    rw [hdecode]
    exact hd.2
  · have hd := executed_g2_double_generic_refines_mathlib a doubled ha p hpa hy hp
      (htangent hy) hdouble
    rw [hdecode]
    exact hd.2

/-- Equal executed mixed G2 inputs delegate to Mathlib doubling. -/
theorem executed_g2_add_mixed_equal_refines_mathlib (a output : G2ProjLimbTriple)
    (b : G2AffineLimbPair) (ha : CanonicalG2 a)
    (hbx : Canonical2 b.x) (hby : Canonical2 b.y)
    (hinfinity : b.infinity = false)
    (hpa : decodeG2 a = some (decodeFq2 b.x, decodeFq2 b.y))
    (hp : DecodedG2OnCurve (some (decodeFq2 b.x, decodeFq2 b.y)))
    (htangent : decodeFq2 b.y ≠ 0 →
      DecodedG2OnCurve (some (tangentDoubleG2 (decodeFq2 b.x, decodeFq2 b.y))))
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_mixed a b = .ok output) :
    CanonicalG2 output ∧ RepresentsDecodedG2 (decodeG2 output)
      (liftDecodedG2 (some (decodeFq2 b.x, decodeFq2 b.y)) hp +
        liftDecodedG2 (some (decodeFq2 b.x, decodeFq2 b.y)) hp) := by
  obtain ⟨hout, doubled, hdouble, hdecode⟩ :=
    decode_g2_add_mixed_equal_delegates a output b ha hbx hby hinfinity hpa hexec
  refine ⟨hout, ?_⟩
  by_cases hy : decodeFq2 b.y = 0
  · have hd := executed_g2_double_order2_refines_mathlib a doubled ha
      (decodeFq2 b.x, decodeFq2 b.y) hpa hy hp hdouble
    rw [hdecode]
    exact hd.2
  · have hd := executed_g2_double_generic_refines_mathlib a doubled ha
      (decodeFq2 b.x, decodeFq2 b.y) hpa hy hp (htangent hy) hdouble
    rw [hdecode]
    exact hd.2

#print axioms chordAddG2_eq_mathlib
#print axioms tangentDoubleG2_eq_mathlib
#print axioms liftDecodedG2_none
#print axioms liftDecodedG2_some
#print axioms lift_chordAddG2
#print axioms lift_tangentDoubleG2
#print axioms lift_negG2
#print axioms lift_oppositeG2
#print axioms lift_order2G2
#print axioms representsDecodedG2_lift
#print axioms executed_g2_add_generic_refines_mathlib
#print axioms executed_g2_add_mixed_generic_refines_mathlib
#print axioms executed_g2_double_generic_refines_mathlib
#print axioms executed_g2_double_order2_refines_mathlib
#print axioms executed_g2_neg_finite_refines_mathlib
#print axioms executed_g2_neg_identity_refines_mathlib
#print axioms executed_g2_add_left_identity_refines_mathlib
#print axioms executed_g2_add_right_identity_refines_mathlib
#print axioms executed_g2_add_mixed_identity_refines_mathlib
#print axioms executed_g2_double_identity_refines_mathlib
#print axioms executed_g2_add_opposite_refines_mathlib
#print axioms executed_g2_add_mixed_opposite_refines_mathlib
#print axioms executed_g2_add_equal_refines_mathlib
#print axioms executed_g2_add_mixed_equal_refines_mathlib

end Ipp.Extracted.ArkworksG2
