import Ipp.TorusCompression

/-!
Value preservation for the optimized SnarkPack torus-v2 codec.

The encoder accepts certified norm-one, odd-order points.  Coordinate zero is
the identity sentinel; all other coordinates use the torus chart.  The decoder
caches the coordinate square and denominator inverse, then untrusted decoded
group elements remain subject to the unchanged shipping subgroup validation.
-/

namespace Ipp.TorusV2Optimization

open Ipp.TorusCompression

variable {K : Type*} [Field K]

noncomputable section

local instance classicalPropDecidable (p : Prop) : Decidable p :=
  Classical.propDecidable p

/-- Implementation form that shares the decoded square and denominator inverse. -/
def decompressCached (γ g : K) : Point (K := K) :=
  let square := g ^ 2
  let denominatorInverse := (square - γ)⁻¹
  ⟨(square + γ) * denominatorInverse, 2 * g * denominatorInverse⟩

/-- Caching decoder intermediates preserves the exact torus point. -/
theorem decompressCached_eq_decompress (γ g : K) :
    decompressCached γ g = decompress γ g := by
  unfold decompressCached decompress
  dsimp only
  apply point_ext
  · exact (div_eq_mul_inv _ _).symm
  · exact (div_eq_mul_inv _ _).symm

/-- The exact semantic certificate required by the prover-side encoder. -/
structure CertifiedPoint (γ : K) (r : ℕ) where
  point : Point (K := K)
  normOne : IsNormOne γ point
  torsion : point.a ^ r = 1

/-- Total encoding on certified odd-order points. -/
noncomputable def encodeCoordinate {γ : K} {r : ℕ}
    (p : CertifiedPoint γ r) : K :=
  if p.point.b = 0 then 0 else compress p.point

/-- Total coordinate decoder. Zero is handled before the rational chart. -/
noncomputable def decodeCoordinate (γ g : K) : Point (K := K) :=
  if g = 0 then identity else decompress γ g

/-- Implementation decoder with cached square and inverse. -/
noncomputable def decodeCoordinateCached (γ g : K) : Point (K := K) :=
  if g = 0 then identity else decompressCached γ g

/-- The cached implementation is extensionally equal to the total decoder. -/
theorem decodeCoordinateCached_eq_decodeCoordinate (γ g : K) :
    decodeCoordinateCached γ g = decodeCoordinate γ g := by
  unfold decodeCoordinateCached decodeCoordinate
  split
  · rfl
  · exact decompressCached_eq_decompress γ g

/-- Decoding an encoded certified point recovers the exact point, including
the identity sentinel branch. -/
theorem decodeCoordinate_encodeCoordinate {γ : K} {r : ℕ}
    (hγ : IsNonSquare γ) (hchar : (2 : K) ≠ 0) (hr : Odd r)
    (p : CertifiedPoint γ r) :
    decodeCoordinate γ (encodeCoordinate p) = p.point := by
  unfold encodeCoordinate
  split
  · rename_i hb
    have hid := zero_sentinel_sound p.normOne hb hr hchar p.torsion
    simp [decodeCoordinate, hid]
  · rename_i hb
    have hcoord := compress_ne_zero_of_odd_torsion
      hγ hchar p.normOne hr p.torsion hb
    simp only [decodeCoordinate, if_neg hcoord]
    exact decompress_compress hγ hchar p.normOne hb

/-- Re-encoding every raw coordinate after total decoding returns the exact
coordinate. This direction does not assume subgroup membership. -/
theorem encode_decodeCoordinate {γ g : K}
    (hγ : IsNonSquare γ) (hchar : (2 : K) ≠ 0) :
    (if (decodeCoordinate γ g).b = 0 then 0
      else compress (decodeCoordinate γ g)) = g := by
  by_cases hg : g = 0
  · subst g
    simp [decodeCoordinate, identity]
  · have hden := decompress_denominator_ne_zero (g := g) hγ
    have hb : (decompress γ g).b ≠ 0 := by
      unfold decompress
      dsimp only
      exact div_ne_zero (mul_ne_zero hchar hg) hden
    simp [decodeCoordinate, hg, hb, compress_decompress hγ hchar hg]

noncomputable def encodeCoordinates {γ : K} {r : ℕ}
    (points : List (CertifiedPoint γ r)) : List K :=
  points.map encodeCoordinate

noncomputable def decodeCoordinates (γ : K) (coordinates : List K) :
    List (Point (K := K)) :=
  coordinates.map (decodeCoordinate γ)

/-- The exact all-target traversal preserves order, multiplicity, and values. -/
theorem decodeCoordinates_encodeCoordinates {γ : K} {r : ℕ}
    (hγ : IsNonSquare γ) (hchar : (2 : K) ≠ 0) (hr : Odd r)
    (points : List (CertifiedPoint γ r)) :
    decodeCoordinates γ (encodeCoordinates points) =
      points.map CertifiedPoint.point := by
  simp [encodeCoordinates, decodeCoordinates,
    decodeCoordinate_encodeCoordinate hγ hchar hr]

theorem encodeCoordinates_length {γ : K} {r : ℕ}
    (points : List (CertifiedPoint γ r)) :
    (encodeCoordinates points).length = points.length := by
  simp [encodeCoordinates]

#print axioms decompressCached_eq_decompress
#print axioms decodeCoordinateCached_eq_decodeCoordinate
#print axioms decodeCoordinate_encodeCoordinate
#print axioms encode_decodeCoordinate
#print axioms decodeCoordinates_encodeCoordinates
#print axioms encodeCoordinates_length

end
end Ipp.TorusV2Optimization
