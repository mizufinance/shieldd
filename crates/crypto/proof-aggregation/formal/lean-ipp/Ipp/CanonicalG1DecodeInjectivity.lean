/-
GAP-02B: injectivity of checked BLS12-377 G1 compressed wires.

Raw arkworks-compatible finite decoding has one deliberate collision: the two
root flags select the same point when y = 0. Checked prime-subgroup membership
excludes that nonidentity 2-torsion point, restoring byte injectivity.
-/
import Ipp.CanonicalG1Decode
import Ipp.Bls12377Subgroups

namespace Ipp.CanonicalG1Decode

open Ipp.Bls12377
open Ipp.CanonicalWire

set_option maxHeartbeats 800000

private theorem list_eq_of_take_getD {xs ys : List UInt8}
    (hxl : xs.length = compressedBytes) (hyl : ys.length = compressedBytes)
    (htake : xs.take 47 = ys.take 47) (hlast : xs.getD 47 0 = ys.getD 47 0) :
    xs = ys := by
  rw [← List.take_append_drop 47 xs, ← List.take_append_drop 47 ys, htake]
  congr 1
  have hxd : xs.drop 47 = [xs.getD 47 0] := by
    apply List.ext_get
    · simp [hxl, compressedBytes]
    · intro n hn hn'
      have : n = 0 := by simpa [hxl, compressedBytes] using hn
      subst n
      simp [hxl, compressedBytes]
  have hyd : ys.drop 47 = [ys.getD 47 0] := by
    apply List.ext_get
    · simp [hyl, compressedBytes]
    · intro n hn hn'
      have : n = 0 := by simpa [hyl, compressedBytes] using hn
      subst n
      simp [hyl, compressedBytes]
  rw [hxd, hyd, hlast]

private theorem clearFlags_take (xs : List UInt8) (hlen : xs.length = compressedBytes) :
    (clearFlags xs).take 47 = xs.take 47 := by
  simp [clearFlags, hlen, compressedBytes]

private theorem clearFlags_last {xs : List UInt8} (hlen : xs.length = compressedBytes) :
    (clearFlags xs).getD 47 0 = UInt8.ofNat ((xs.getD 47 0).toNat % 64) := by
  simp [clearFlags, hlen, compressedBytes]

private theorem bytes_eq_of_clearFlags_of_decodeFlags {xs ys : List UInt8}
    (hxl : xs.length = compressedBytes) (hyl : ys.length = compressedBytes)
    (hclear : clearFlags xs = clearFlags ys)
    (hflags : decodeFlags (xs.getD 47 0) = decodeFlags (ys.getD 47 0)) : xs = ys := by
  apply list_eq_of_take_getD hxl hyl
  · simpa only [clearFlags_take xs hxl, clearFlags_take ys hyl] using
      congrArg (List.take 47) hclear
  · rw [UInt8.eq_iff_toBitVec_eq]
    apply BitVec.eq_of_toNat_eq
    have hmod : (xs.getD 47 0).toNat % 64 = (ys.getD 47 0).toNat % 64 := by
      have := congrArg (fun zs => (zs.getD 47 0).toNat) hclear
      change ((clearFlags xs).getD 47 0).toNat =
        ((clearFlags ys).getD 47 0).toNat at this
      rw [clearFlags_last hxl, clearFlags_last hyl] at this
      change (BitVec.ofNat 8 ((xs.getD 47 0).toNat % 64)).toNat =
        (BitVec.ofNat 8 ((ys.getD 47 0).toNat % 64)).toNat at this
      rw [BitVec.toNat_ofNat, BitVec.toNat_ofNat] at this
      have hxm : (xs.getD 47 0).toNat % 64 < 256 := by omega
      have hym : (ys.getD 47 0).toNat % 64 < 256 := by omega
      rw [Nat.mod_eq_of_lt hxm, Nat.mod_eq_of_lt hym] at this
      exact this
    have hdiv : (xs.getD 47 0).toNat / 64 = (ys.getD 47 0).toNat / 64 := by
      have hxlt := (xs.getD 47 0).toNat_lt
      have hylt := (ys.getD 47 0).toNat_lt
      simp only [decodeFlags] at hflags
      split at hflags <;> split at hflags <;> simp_all <;> omega
    change (xs.getD 47 0).toNat = (ys.getD 47 0).toNat
    omega

private theorem selectRoot_flags_eq_of_ne_zero {f f' : Flags} {root y : Nat}
    (hf : f ≠ .infinity) (hf' : f' ≠ .infinity)
    (hy : y ≠ 0) (h : selectRoot f root = y) (h' : selectRoot f' root = y) : f = f' := by
  cases f <;> cases f'
  · rfl
  · contradiction
  · by_cases hr : root = 0
    · simp [selectRoot, hr] at h
      exact (hy h.symm).elim
    · by_cases hle : root ≤ fqModulus - root
      · have heq : root = fqModulus - root := by
          simpa [selectRoot, hr, min_eq_left hle, max_eq_right hle] using h.trans h'.symm
        simp [fqModulus] at heq
        omega
      · have hle' : fqModulus - root ≤ root := by omega
        have heq : fqModulus - root = root := by
          simpa [selectRoot, hr, min_eq_right hle', max_eq_left hle'] using h.trans h'.symm
        simp [fqModulus] at heq
        omega
  · contradiction
  · contradiction
  · contradiction
  · by_cases hr : root = 0
    · simp [selectRoot, hr] at h
      exact (hy h.symm).elim
    · by_cases hle : root ≤ fqModulus - root
      · have heq : fqModulus - root = root := by
          simpa [selectRoot, hr, min_eq_left hle, max_eq_right hle] using h.trans h'.symm
        simp [fqModulus] at heq
        omega
      · have hle' : fqModulus - root ≤ root := by omega
        have heq : root = fqModulus - root := by
          simpa [selectRoot, hr, min_eq_right hle', max_eq_left hle'] using h.trans h'.symm
        simp [fqModulus] at heq
        omega
  · contradiction
  · rfl

private theorem decode_finite_data {xs : List UInt8} {p : Point}
    (h : decode xs = some p) (hpy : p.y.1 ≠ 0) :
    ∃ last flags x root,
      xs.length = compressedBytes ∧ xs[47]? = some last ∧
      decodeFlags last = some flags ∧ decodeFqList (clearFlags xs) = some x ∧
      sqrtFq (curveRhs x.1) = some root ∧ flags ≠ .infinity ∧
      selectRoot flags root = p.y.1 ∧ x = p.x := by
  by_cases hlen : xs.length = compressedBytes
  · cases hlast : xs[47]? with
    | none => simp [decode, hlen, hlast] at h
    | some last =>
      cases hflags : decodeFlags last with
      | none => simp [decode, hlen, hlast, hflags] at h
      | some flags =>
        cases hx : decodeFqList (clearFlags xs) with
        | none => simp [decode, hlen, hlast, hflags, hx] at h
        | some x =>
          cases flags with
          | infinity =>
            simp [decode, hlen, hlast, hflags, hx] at h
            rcases h with ⟨rfl, rfl⟩
            simp [infinityPoint, zeroFq] at hpy
          | smallerRoot =>
            cases hs : sqrtFq (curveRhs x.1) with
            | none => simp [decode, decodeFinite, hlen, hlast, hflags, hx, hs] at h
            | some root =>
              by_cases hy : selectRoot .smallerRoot root < fqModulus
              · simp [decode, decodeFinite, hlen, hlast, hflags, hx, hs, hy] at h
                subst p
                exact ⟨last, .smallerRoot, x, root, hlen, by simpa using hlast, hflags,
                  by simpa using hx, hs,
                  by decide, rfl, rfl⟩
              · simp [decode, decodeFinite, hlen, hlast, hflags, hx, hs, hy] at h
          | largerRoot =>
            cases hs : sqrtFq (curveRhs x.1) with
            | none => simp [decode, decodeFinite, hlen, hlast, hflags, hx, hs] at h
            | some root =>
              by_cases hy : selectRoot .largerRoot root < fqModulus
              · simp [decode, decodeFinite, hlen, hlast, hflags, hx, hs, hy] at h
                subst p
                exact ⟨last, .largerRoot, x, root, hlen, by simpa using hlast, hflags,
                  by simpa using hx, hs,
                  by decide, rfl, rfl⟩
              · simp [decode, decodeFinite, hlen, hlast, hflags, hx, hs, hy] at h
  · simp [decode, hlen] at h

/-- Raw finite decoding is byte-injective away from the y = 0 sign collision. -/
theorem decode_injective_of_y_ne_zero {xs ys : List UInt8} {p : Point}
    (hx : decode xs = some p) (hy : decode ys = some p) (hpy : p.y.1 ≠ 0) : xs = ys := by
  obtain ⟨last, flags, x, root, hxl, hlast, hflags, hxfq, hsqrt, hfinite, hroot, hxp⟩ :=
    decode_finite_data hx hpy
  obtain ⟨last', flags', x', root', hyl, hlast', hflags', hyfq, hsqrt', hfinite', hroot', hxp'⟩ :=
    decode_finite_data hy hpy
  have hxeq : x = x' := hxp.trans hxp'.symm
  cases hxeq
  have hrootEq : root = root' := Option.some.inj (hsqrt.symm.trans hsqrt')
  subst root'
  have hflagEq : flags = flags' :=
    selectRoot_flags_eq_of_ne_zero hfinite hfinite' hpy hroot hroot'
  subst flags'
  have hclear : clearFlags xs = clearFlags ys :=
    decodeFqList_injective hxfq (by simpa [hxp] using hyfq)
  have hlastGet : xs.getD 47 0 = last := by
    change (xs[47]?).getD 0 = last
    rw [hlast]
    rfl
  have hlastGet' : ys.getD 47 0 = last' := by
    change (ys[47]?).getD 0 = last'
    rw [hlast']
    rfl
  apply bytes_eq_of_clearFlags_of_decodeFlags hxl hyl hclear
  rw [hlastGet, hlastGet', hflags, hflags']

/-- Raw decoding is injective at infinity and at every finite point with nonzero y. -/
theorem decode_injective_of_infinity_or_y_ne_zero {xs ys : List UInt8} {p : Point}
    (hx : decode xs = some p) (hy : decode ys = some p)
    (hp : p = infinityPoint ∨ p.y.1 ≠ 0) : xs = ys := by
  rcases hp with rfl | hpy
  · exact (decode_infinity_unique hx).trans (decode_infinity_unique hy).symm
  · exact decode_injective_of_y_ne_zero hx hy hpy

def zeroYSmallerEncoding : List UInt8 := encodeLE compressedBytes (fqModulus - 1)
def zeroYLargerEncoding : List UInt8 :=
  let xs := encodeLE compressedBytes (fqModulus - 1)
  withLast xs ((xs.getD 47 0).toNat + largerRootMask)

/-- The raw decoder's documented y = 0 collision: distinct sign wires both succeed. -/
theorem decode_zeroY_sign_collision :
    zeroYSmallerEncoding ≠ zeroYLargerEncoding ∧
      decode zeroYSmallerEncoding = decode zeroYLargerEncoding ∧
      (decode zeroYSmallerEncoding).map (fun p => p.y.1) = some 0 := by
  decide

theorem decode_eq_infinityPoint_of_infinity {xs : List UInt8} {p : Point}
    (h : decode xs = some p) (hp : p.infinity = true) : p = infinityPoint := by
  by_cases hlen : xs.length = compressedBytes
  · cases hlast : xs[47]? with
    | none => simp [decode, hlen, hlast] at h
    | some last =>
      cases hflags : decodeFlags last with
      | none => simp [decode, hlen, hlast, hflags] at h
      | some flags =>
        cases hx : decodeFqList (clearFlags xs) with
        | none => simp [decode, hlen, hlast, hflags, hx] at h
        | some x =>
          cases flags with
          | infinity =>
            simp [decode, hlen, hlast, hflags, hx] at h
            exact h.2.symm
          | smallerRoot =>
            have hf := decodeFinite_not_infinity
              (by simpa [decode, hlen, hlast, hflags, hx] using h)
            rw [hp] at hf
            contradiction
          | largerRoot =>
            have hf := decodeFinite_not_infinity
              (by simpa [decode, hlen, hlast, hflags, hx] using h)
            rw [hp] at hf
            contradiction
  · simp [decode, hlen] at h

/-- Malformed inputs with a non-48-byte length are rejected. -/
theorem decode_rejects_wrong_length (xs : List UInt8)
    (h : xs.length ≠ compressedBytes) : decode xs = none := by
  simp [decode, h]

/-- In particular, appending a trailing byte to an exact wire is rejected. -/
theorem decode_rejects_trailing_byte (xs : List UInt8) (b : UInt8)
    (h : xs.length = compressedBytes) : decode (xs ++ [b]) = none := by
  apply decode_rejects_wrong_length
  simp [h, compressedBytes]

/-- The contradictory `11` flag pattern is rejected before point construction. -/
theorem decode_rejects_illegal_flags {xs : List UInt8} {last : UInt8}
    (hlen : xs.length = compressedBytes) (hlast : xs[47]? = some last)
    (hflags : decodeFlags last = none) : decode xs = none := by
  simp [decode, hlen, hlast, hflags]

section CheckedMembership

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : g1Curve.IsElliptic := g1_isElliptic

private noncomputable def affineEquiv : G1 ≃+ g1Curve.toAffine.Point :=
  WeierstrassCurve.Jacobian.Point.toAffineAddEquiv g1Curve.toJacobian

/-- A decoded record and a Mathlib G1 point denote the same affine value. -/
noncomputable def Represents (p : Point) (q : G1) : Prop :=
  if p.infinity then q = 0
  else ∃ h : g1Curve.toAffine.Nonsingular (p.x.1 : Fq) (p.y.1 : Fq),
    affineEquiv q = .some _ _ h

/-- Checked decoding means representation by a point accepted by arkworks' G1 subgroup check. -/
noncomputable def CheckedPrimeSubgroupPoint (p : Point) : Prop :=
  ∃ q : G1, Represents p q ∧ arkworksG1CheckedMembership q

/-- The canonical identity record is a checked prime-subgroup point. -/
theorem checkedPrimeSubgroupPoint_infinity : CheckedPrimeSubgroupPoint infinityPoint := by
  refine ⟨0, ?_, arkworksG1CheckedMembership_identity⟩
  simp [Represents, infinityPoint]

/-- A checked finite record carries the concrete Mathlib on-curve witness. -/
theorem checked_finite_on_curve {p : Point} (hpfin : p.infinity = false)
    (hchecked : CheckedPrimeSubgroupPoint p) :
    g1Curve.toAffine.Nonsingular (p.x.1 : Fq) (p.y.1 : Fq) := by
  rcases hchecked with ⟨q, hrep, _⟩
  simp [Represents, hpfin] at hrep
  exact hrep.1

private theorem checked_finite_y_ne_zero {p : Point}
    (hpfin : p.infinity = false) (hchecked : CheckedPrimeSubgroupPoint p) : p.y.1 ≠ 0 := by
  classical
  rcases hchecked with ⟨q, hrep, hmem⟩
  simp [Represents, hpfin] at hrep
  rcases hrep with ⟨hcurve, hq⟩
  intro hy
  have hyFq : (p.y.1 : Fq) = 0 := by simp [hy]
  have hnegY : (p.y.1 : Fq) = g1Curve.toAffine.negY (p.x.1 : Fq) (p.y.1 : Fq) := by
    simp [WeierstrassCurve.Affine.negY, g1Curve, hyFq]
  have ha2 : affineEquiv q + affineEquiv q = 0 := by
    rw [hq]
    exact WeierstrassCurve.Affine.Point.add_self_of_Y_eq hnegY
  have hq2 : 2 • q = 0 := by
    rw [two_nsmul]
    apply affineEquiv.injective
    simpa using ha2
  have horder2 : addOrderOf q ∣ 2 := addOrderOf_dvd_iff_nsmul_eq_zero.mpr hq2
  have horderCofactor : addOrderOf q ∣ g1Cofactor :=
    horder2.trans (by norm_num [g1Cofactor])
  have hqzero : q = 0 :=
    (arkworksG1CheckedMembership_cofactor_torsion_iff q horderCofactor).mp hmem
  subst q
  simpa using hq

/-- Checked accepted G1 wires decoding to the same point are identical. -/
theorem decode_checked_injective {xs ys : List UInt8} {p : Point}
    (hx : decode xs = some p) (hy : decode ys = some p)
    (hchecked : CheckedPrimeSubgroupPoint p) : xs = ys := by
  by_cases hpinf : p.infinity = true
  · have hp : p = infinityPoint := decode_eq_infinityPoint_of_infinity hx hpinf
    subst p
    exact (decode_infinity_unique hx).trans (decode_infinity_unique hy).symm
  · have hpfin : p.infinity = false := by
      cases h : p.infinity <;> simp_all
    exact decode_injective_of_y_ne_zero hx hy (checked_finite_y_ne_zero hpfin hchecked)

end CheckedMembership

#print axioms decode_injective_of_infinity_or_y_ne_zero
#print axioms decode_zeroY_sign_collision
#print axioms decode_checked_injective

end Ipp.CanonicalG1Decode
