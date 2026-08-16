import Ipp.TorusCompression

/-!
Value preservation for the optimized SnarkPack torus-v2 codec.

The prover omits a redundant validation pass over its own constructed proof.
The decoder caches the coordinate square and denominator inverse. Untrusted
decoded group elements remain subject to the unchanged shipping validation.
-/

namespace Ipp.TorusV2Optimization

open Ipp.TorusCompression

variable {K : Type*} [Field K]

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

/-- Validation-bearing encoder used to model the original prover path. -/
def checkedCompress (valid : Point (K := K) → Bool) (p : Point (K := K)) : Option K :=
  if valid p then some (compress p) else none

/-- An honest constructor may omit its redundant pre-serialization recheck. -/
theorem checkedCompress_eq_trusted_of_valid
    (valid : Point (K := K) → Bool) (p : Point (K := K))
    (hvalid : valid p = true) :
    checkedCompress valid p = some (compress p) := by
  simp [checkedCompress, hvalid]

#print axioms decompressCached_eq_decompress
#print axioms checkedCompress_eq_trusted_of_valid

end Ipp.TorusV2Optimization
