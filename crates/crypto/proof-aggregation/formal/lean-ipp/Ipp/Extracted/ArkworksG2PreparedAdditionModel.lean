import Ipp.Extracted.ArkworksG2PreparedModel

/-! Homogeneous mixed-addition model for prepared G2 coefficients. -/

namespace Ipp.Extracted.ArkworksG2PreparedAdditionModel

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

abbrev G2AffineLimb := ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont

/-- The protocol mixed-addition formula specialized to decoded limb inputs. -/
def additionLineModel
    (r : Ipp.Extracted.ArkworksG2PreparedModel.G2ProjLimbTriple)
    (q : G2AffineLimb) :
    G2HomProjective × EllCoeff :=
  addLine (decodeHomogeneous r)
    ⟨false, decodeFq2 q.x, decodeFq2 q.y⟩

private theorem addLine_decode_core {F : Type} [Field F]
    (px py z qx qy l t h outX outY outZ : F)
    (hl : l = px - qx) (ht : t = py - qy)
    (hh : h = l ^ 3 + t ^ 2 - 2 * px * l ^ 2)
    (houtX : outX = z ^ 4 * (l * h))
    (houtY : outY = z ^ 4 * (t * (px * l ^ 2 - h) - l ^ 3 * py))
    (houtZ : outZ = z ^ 4 * l ^ 3)
    (hz : z ≠ 0) (hne : px ≠ qx) :
    (outX / outZ, outY / outZ) = chordAddG2 (px, py) (qx, qy) := by
  have hlnz : l ≠ 0 := by
    rw [hl]
    exact sub_ne_zero.mpr hne
  have hslope : (qy - py) / (qx - px) = t / l := by
    rw [hl, ht]
    field_simp [sub_ne_zero.mpr hne, sub_ne_zero.mpr hne.symm]
    ring
  rw [houtX, houtY, houtZ]
  dsimp [chordAddG2]
  rw [hslope]
  apply Prod.ext <;> dsimp
  · field_simp [hz, hlnz]
    rw [hh, hl]
    ring
  · field_simp [hz, hlnz]
    rw [hh, hl]
    ring

/-- A generic homogeneous mixed-addition state decodes to the affine chord. -/
theorem addLine_decode_generic (r : G2HomProjective) (qx qy : Fq2)
    (hz : r.z ≠ 0) (hx : r.x / r.z ≠ qx) :
    decodeModelHomogeneous (addLine r ⟨false, qx, qy⟩).1 =
      some (chordAddG2 (r.x / r.z, r.y / r.z) (qx, qy)) := by
  have hlambda : r.x - qx * r.z ≠ 0 := by
    intro h
    apply hx
    apply (div_eq_iff hz).2
    linear_combination h
  have hzout : (addLine r ⟨false, qx, qy⟩).1.z ≠ 0 := by
    simp only [addLine]
    dsimp
    exact mul_ne_zero hz (mul_ne_zero hlambda (pow_ne_zero _ hlambda))
  rw [decodeModelHomogeneous, if_neg hzout]
  have hrx : (r.x / r.z) * r.z = r.x := div_mul_cancel₀ r.x hz
  have hry : (r.y / r.z) * r.z = r.y := div_mul_cancel₀ r.y hz
  let px := r.x / r.z
  let py := r.y / r.z
  let l := px - qx
  let t := py - qy
  let h := l ^ 3 + t ^ 2 - 2 * px * l ^ 2
  have hpx : r.x = px * r.z := by exact hrx.symm
  have hpy : r.y = py * r.z := by exact hry.symm
  have hcore := addLine_decode_core px py r.z qx qy l t h
    ((addLine r ⟨false, qx, qy⟩).1.x)
    ((addLine r ⟨false, qx, qy⟩).1.y)
    ((addLine r ⟨false, qx, qy⟩).1.z)
    rfl rfl rfl (by
      simp only [addLine]
      rw [hpx, hpy]
      dsimp only [l, t, h]
      ring)
    (by
      simp only [addLine]
      rw [hpx, hpy]
      dsimp only [l, t, h]
      ring)
    (by
      simp only [addLine]
      rw [hpx]
      dsimp only [l]
      ring) hz hx
  simpa [px, py] using hcore

#print axioms additionLineModel
#print axioms addLine_decode_generic

end Ipp.Extracted.ArkworksG2PreparedAdditionModel
