/-
GAP-03B: injectivity of checked BLS12-377 G2 compressed wires.

The two finite root flags can coincide only at the zero Fq2 root. Checked
prime-subgroup membership excludes that nonidentity 2-torsion boundary.
-/
import Ipp.CanonicalG2Decode
import Ipp.Bls12377Subgroups

namespace Ipp.CanonicalG2Decode

open Ipp.Bls12377
open Ipp.CanonicalWire

set_option maxHeartbeats 800000

private theorem list_eq_of_take_getD {xs ys : List UInt8}
    (hxl : xs.length = compressedBytes) (hyl : ys.length = compressedBytes)
    (htake : xs.take 95 = ys.take 95) (hlast : xs.getD 95 0 = ys.getD 95 0) :
    xs = ys := by
  rw [← List.take_append_drop 95 xs, ← List.take_append_drop 95 ys, htake]
  congr 1
  have hxd : xs.drop 95 = [xs.getD 95 0] := by
    apply List.ext_get
    · simp [hxl, compressedBytes]
    · intro n hn hn'
      have : n = 0 := by simpa [hxl, compressedBytes] using hn
      subst n
      simp [hxl, compressedBytes]
  have hyd : ys.drop 95 = [ys.getD 95 0] := by
    apply List.ext_get
    · simp [hyl, compressedBytes]
    · intro n hn hn'
      have : n = 0 := by simpa [hyl, compressedBytes] using hn
      subst n
      simp [hyl, compressedBytes]
  rw [hxd, hyd, hlast]

private theorem clearFlags_take (xs : List UInt8) (hlen : xs.length = compressedBytes) :
    (clearFlags xs).take 95 = xs.take 95 := by
  simp [clearFlags, hlen, compressedBytes]

private theorem clearFlags_last {xs : List UInt8} (hlen : xs.length = compressedBytes) :
    (clearFlags xs).getD 95 0 = UInt8.ofNat ((xs.getD 95 0).toNat % 64) := by
  simp [clearFlags, hlen, compressedBytes]

private theorem bytes_eq_of_clearFlags_of_decodeFlags {xs ys : List UInt8}
    (hxl : xs.length = compressedBytes) (hyl : ys.length = compressedBytes)
    (hclear : clearFlags xs = clearFlags ys)
    (hflags : decodeFlags (xs.getD 95 0) = decodeFlags (ys.getD 95 0)) : xs = ys := by
  apply list_eq_of_take_getD hxl hyl
  · simpa only [clearFlags_take xs hxl, clearFlags_take ys hyl] using
      congrArg (List.take 95) hclear
  · rw [UInt8.eq_iff_toBitVec_eq]
    apply BitVec.eq_of_toNat_eq
    have hmod : (xs.getD 95 0).toNat % 64 = (ys.getD 95 0).toNat % 64 := by
      have := congrArg (fun zs => (zs.getD 95 0).toNat) hclear
      change ((clearFlags xs).getD 95 0).toNat =
        ((clearFlags ys).getD 95 0).toNat at this
      rw [clearFlags_last hxl, clearFlags_last hyl] at this
      change (BitVec.ofNat 8 ((xs.getD 95 0).toNat % 64)).toNat =
        (BitVec.ofNat 8 ((ys.getD 95 0).toNat % 64)).toNat at this
      rw [BitVec.toNat_ofNat, BitVec.toNat_ofNat] at this
      have hxm : (xs.getD 95 0).toNat % 64 < 256 := by omega
      have hym : (ys.getD 95 0).toNat % 64 < 256 := by omega
      rw [Nat.mod_eq_of_lt hxm, Nat.mod_eq_of_lt hym] at this
      exact this
    have hdiv : (xs.getD 95 0).toNat / 64 = (ys.getD 95 0).toNat / 64 := by
      have hxlt := (xs.getD 95 0).toNat_lt
      have hylt := (ys.getD 95 0).toNat_lt
      simp only [decodeFlags] at hflags
      split at hflags <;> split at hflags <;> simp_all <;> omega
    change (xs.getD 95 0).toNat = (ys.getD 95 0).toNat
    omega

private theorem decodeFq2List_injective {xs ys : List UInt8} {v : Fq2Value}
    (hx : decodeFq2List xs = some v) (hy : decodeFq2List ys = some v) : xs = ys := by
  simp only [decodeFq2List, Option.bind_eq_bind] at hx hy
  split at hx <;> split at hy
  · simp_all
    rename_i hxl hyl
    cases h0 : decodeFqList (xs.take componentBytes) with
    | none => simp [h0] at hx
    | some x0 =>
      cases h1 : decodeFqList (xs.drop componentBytes) with
      | none => simp [h0, h1] at hx
      | some x1 =>
        cases k0 : decodeFqList (ys.take componentBytes) with
        | none => simp [k0] at hy
        | some y0 =>
          cases k1 : decodeFqList (ys.drop componentBytes) with
          | none => simp [k0, k1] at hy
          | some y1 =>
            simp [h0, h1] at hx
            simp [k0, k1] at hy
            have hv : (x0, x1) = (y0, y1) := hx.trans hy.symm
            have hv0 : x0 = y0 := congrArg Prod.fst hv
            have hv1 : x1 = y1 := congrArg Prod.snd hv
            subst y0
            subst y1
            have hc0 : xs.take componentBytes = ys.take componentBytes :=
              decodeFqList_injective h0 k0
            have hc1 : xs.drop componentBytes = ys.drop componentBytes :=
              decodeFqList_injective h1 k1
            rw [← List.take_append_drop componentBytes xs,
              ← List.take_append_drop componentBytes ys, hc0, hc1]
  · simp_all
  · simp_all
  · simp_all

private theorem selectRoot_flags_eq_of_ne_zero {f f' : Flags} {root y : Nat × Nat}
    (hf : f ≠ .infinity) (hf' : f' ≠ .infinity)
    (hy : y ≠ (0, 0)) (h : selectRoot f root = y) (h' : selectRoot f' root = y) : f = f' := by
  cases f with
  | infinity => contradiction
  | smallerRoot =>
      cases f' with
      | infinity => contradiction
      | smallerRoot => rfl
      | largerRoot =>
          have heq : negFq2 root = root := by
            simp only [selectRoot] at h h'
            split at h <;> simp_all
          have hz : root = (0, 0) := (negFq2_eq_self_iff root).mp heq
          subst root
          simp [selectRoot] at h
          exact (hy h.symm).elim
  | largerRoot =>
      cases f' with
      | infinity => contradiction
      | largerRoot => rfl
      | smallerRoot =>
          have heq : negFq2 root = root := by
            simp only [selectRoot] at h h'
            split at h <;> simp_all
          have hz : root = (0, 0) := (negFq2_eq_self_iff root).mp heq
          subst root
          simp [selectRoot] at h
          exact (hy h.symm).elim

private theorem decode_finite_data {xs : List UInt8} {px py : Fq2Value}
    (h : decode xs = some (.finite px py)) :
    ∃ last flags x root,
      xs.length = compressedBytes ∧ xs[95]? = some last ∧
      decodeFlags last = some flags ∧ decodeFq2List (clearFlags xs) = some x ∧
      sqrtFq2 (curveRhs (asNats x)) = some root ∧ flags ≠ .infinity ∧
      selectRoot flags root = (py.1.1, py.2.1) ∧ x = px := by
  have hlen := decode_exact_consumption h
  obtain ⟨last, flags, hlast, hflags, hx, hy, hfinite⟩ :=
    decodeFiniteExact_data (decode_finite_exact h)
  obtain ⟨root, hs, hroot⟩ := decodeY_data hy
  exact ⟨last, flags, px, root, hlen, hlast, hflags, hx, hs, hfinite,
    by simpa [asNats] using hroot, rfl⟩

/-- Raw finite decoding is byte-injective away from the Fq2 y = 0 sign tie. -/
theorem decode_injective_of_finite_y_ne_zero {xs ys : List UInt8} {px py : Fq2Value}
    (hx : decode xs = some (.finite px py)) (hy : decode ys = some (.finite px py))
    (hpy : (py.1.1, py.2.1) ≠ (0, 0)) : xs = ys := by
  obtain ⟨last, flags, x, root, hxl, hlast, hflags, hxfq, hsqrt, hfinite, hroot, hxp⟩ :=
    decode_finite_data hx
  obtain ⟨last', flags', x', root', hyl, hlast', hflags', hyfq, hsqrt', hfinite', hroot', hxp'⟩ :=
    decode_finite_data hy
  have hxeq : x = x' := hxp.trans hxp'.symm
  cases hxeq
  have hrootEq : root = root' := Option.some.inj (hsqrt.symm.trans hsqrt')
  subst root'
  have hflagEq : flags = flags' :=
    selectRoot_flags_eq_of_ne_zero hfinite hfinite' hpy hroot hroot'
  subst flags'
  have hclear : clearFlags xs = clearFlags ys :=
    decodeFq2List_injective hxfq (by simpa [hxp] using hyfq)
  have hlastGet : xs.getD 95 0 = last := by
    change (xs[95]?).getD 0 = last
    rw [hlast]
    rfl
  have hlastGet' : ys.getD 95 0 = last' := by
    change (ys[95]?).getD 0 = last'
    rw [hlast']
    rfl
  apply bytes_eq_of_clearFlags_of_decodeFlags hxl hyl hclear
  rw [hlastGet, hlastGet', hflags, hflags']

/-- Raw decoding is injective at infinity and finite points with nonzero Fq2 y. -/
theorem decode_injective_of_infinity_or_finite_y_ne_zero {xs ys : List UInt8} {p : Point}
    (hx : decode xs = some p) (hy : decode ys = some p)
    (hp : p = infinityPoint ∨ ∃ x y, p = .finite x y ∧ (y.1.1, y.2.1) ≠ (0, 0)) : xs = ys := by
  rcases hp with rfl | ⟨x, y, rfl, hzero⟩
  · exact (decode_infinity_unique hx).trans (decode_infinity_unique hy).symm
  · exact decode_injective_of_finite_y_ne_zero hx hy hzero

/-- The two sign selectors have the documented common zero-root boundary. -/
theorem selectRoot_zero_sign_collision :
    selectRoot .smallerRoot (0, 0) = selectRoot .largerRoot (0, 0) := by decide

/-- Malformed inputs with a non-96-byte length are rejected. -/
theorem decode_rejects_wrong_length (xs : List UInt8)
    (h : xs.length ≠ compressedBytes) : decode xs = none := by
  by_cases hi : xs = infinityEncoding
  · subst xs
    simp [infinityEncoding, compressedBytes] at h
  · simp [decode, hi, h]

/-- In particular, appending a trailing byte to an exact wire is rejected. -/
theorem decode_rejects_trailing_byte (xs : List UInt8) (b : UInt8)
    (h : xs.length = compressedBytes) : decode (xs ++ [b]) = none := by
  apply decode_rejects_wrong_length
  simp [h, compressedBytes]

/-- The contradictory `11` flag pattern is rejected before point construction. -/
theorem decode_rejects_illegal_flags {xs : List UInt8} {last : UInt8}
    (hlen : xs.length = compressedBytes) (hne : xs ≠ infinityEncoding)
    (hlast : xs[95]? = some last) (hflags : decodeFlags last = none) : decode xs = none := by
  simp [decode, hlen, hne, decodeFiniteExact, hlast, hflags]

section CheckedMembership

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

private noncomputable def affineEquiv : G2 ≃+ g2Curve.toAffine.Point :=
  WeierstrassCurve.Jacobian.Point.toAffineAddEquiv g2Curve.toJacobian

private def toFq2 (v : Fq2Value) : Fq2 := ⟨v.1.1, v.2.1⟩

/-- A decoded record and a Mathlib G2 point denote the same affine value. -/
noncomputable def Represents (p : Point) (q : G2) : Prop :=
  match p with
  | .infinity => q = 0
  | .finite x y => ∃ h : g2Curve.toAffine.Nonsingular (toFq2 x) (toFq2 y),
      affineEquiv q = .some _ _ h

/-- A decoded affine record represents at most one Mathlib G2 point. -/
theorem Represents.right_unique {p : Point} {q q' : G2}
    (hq : Represents p q) (hq' : Represents p q') : q = q' := by
  cases p with
  | infinity =>
      exact hq.trans hq'.symm
  | finite x y =>
      rcases hq with ⟨hcurve, hq⟩
      rcases hq' with ⟨hcurve', hq'⟩
      apply affineEquiv.injective
      rw [hq, hq']

private theorem toFq2_injective {x y : Fq2Value}
    (h : toFq2 x = toFq2 y) : x = y := by
  apply Prod.ext
  · apply Subtype.ext
    have hval := congrArg ZMod.val (congrArg QuadraticAlgebra.re h)
    change x.1.1 % baseModulus = y.1.1 % baseModulus at hval
    rw [Nat.mod_eq_of_lt (by simpa [baseModulus, fqModulus] using x.1.2),
      Nat.mod_eq_of_lt (by simpa [baseModulus, fqModulus] using y.1.2)] at hval
    exact hval
  · apply Subtype.ext
    have hval := congrArg ZMod.val (congrArg QuadraticAlgebra.im h)
    change x.2.1 % baseModulus = y.2.1 % baseModulus at hval
    rw [Nat.mod_eq_of_lt (by simpa [baseModulus, fqModulus] using x.2.2),
      Nat.mod_eq_of_lt (by simpa [baseModulus, fqModulus] using y.2.2)] at hval
    exact hval

/-- Canonically decoded records representing the same G2 point are equal. -/
theorem decode_Represents_left_unique {xs ys : List UInt8} {p p' : Point} {q : G2}
    (_hx : decode xs = some p) (_hy : decode ys = some p')
    (hp : Represents p q) (hp' : Represents p' q) : p = p' := by
  cases p with
  | infinity =>
      cases p' with
      | infinity => rfl
      | finite x' y' =>
          have hq : q = 0 := hp
          subst q
          simp [Represents] at hp'
  | finite x y =>
      cases p' with
      | infinity =>
          have hq : q = 0 := hp'
          subst q
          simp [Represents] at hp
      | finite x' y' =>
          rcases hp with ⟨hcurve, hp⟩
          rcases hp' with ⟨hcurve', hp'⟩
          have heq := hp.symm.trans hp'
          have hcoords := WeierstrassCurve.Affine.Point.some.inj heq
          have hx : x = x' := toFq2_injective hcoords.1
          have hy : y = y' := toFq2_injective hcoords.2
          subst x'
          subst y'
          rfl

/-- Checked decoding means representation by a point accepted by arkworks' G2 subgroup check. -/
noncomputable def CheckedPrimeSubgroupPoint (p : Point) : Prop :=
  ∃ q : G2, Represents p q ∧ arkworksG2CheckedMembership q

/-- The canonical identity record is a checked prime-subgroup point. -/
theorem checkedPrimeSubgroupPoint_infinity : CheckedPrimeSubgroupPoint infinityPoint := by
  refine ⟨0, ?_, arkworksG2CheckedMembership_identity⟩
  simp [Represents, infinityPoint]

/-- A checked finite record carries the concrete Mathlib twist on-curve witness. -/
theorem checked_finite_on_curve {x y : Fq2Value}
    (hchecked : CheckedPrimeSubgroupPoint (.finite x y)) :
    g2Curve.toAffine.Nonsingular (toFq2 x) (toFq2 y) := by
  rcases hchecked with ⟨q, hrep, _⟩
  simp [Represents] at hrep
  exact hrep.1

private theorem checked_finite_y_ne_zero {x y : Fq2Value}
    (hchecked : CheckedPrimeSubgroupPoint (.finite x y)) :
    (y.1.1, y.2.1) ≠ (0, 0) := by
  classical
  rcases hchecked with ⟨q, hrep, hmem⟩
  simp [Represents] at hrep
  rcases hrep with ⟨hcurve, hq⟩
  intro hy
  have hy0 : y.1.1 = 0 := congrArg Prod.fst hy
  have hy1 : y.2.1 = 0 := congrArg Prod.snd hy
  have hyFq2 : toFq2 y = 0 := by
    apply QuadraticAlgebra.ext <;> simp [toFq2, hy0, hy1]
  have hnegY : toFq2 y = g2Curve.toAffine.negY (toFq2 x) (toFq2 y) := by
    simp [WeierstrassCurve.Affine.negY, g2Curve, hyFq2]
  have ha2 : affineEquiv q + affineEquiv q = 0 := by
    rw [hq]
    exact WeierstrassCurve.Affine.Point.add_self_of_Y_eq hnegY
  have hq2 : 2 • q = 0 := by
    rw [two_nsmul]
    apply affineEquiv.injective
    simpa using ha2
  have hr : scalarModulus • q = 0 := hmem
  have hodd : Odd scalarModulus := by
    refine ⟨4222230874714185212124412469390773265687949667577031913967616727958704619520, ?_⟩
    norm_num [scalarModulus]
  obtain ⟨k, hk⟩ := hodd
  have hqzero : q = 0 := by
    have : (2 * k + 1) • q = 0 := by simpa [hk] using hr
    simpa [add_nsmul, mul_nsmul, hq2] using this
  subst q
  simpa using hq

/-- Checked accepted G2 wires decoding to the same point are identical. -/
theorem decode_checked_injective {xs ys : List UInt8} {p : Point}
    (hx : decode xs = some p) (hy : decode ys = some p)
    (hchecked : CheckedPrimeSubgroupPoint p) : xs = ys := by
  cases p with
  | infinity =>
      exact (decode_infinity_unique hx).trans (decode_infinity_unique hy).symm
  | finite x y =>
      exact decode_injective_of_finite_y_ne_zero hx hy (checked_finite_y_ne_zero hchecked)

end CheckedMembership

#print axioms decode_injective_of_infinity_or_finite_y_ne_zero
#print axioms selectRoot_zero_sign_collision
#print axioms decode_checked_injective

end Ipp.CanonicalG2Decode
