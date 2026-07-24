import Ipp.Extracted.FinalCommitmentKeysGenerated
import Ipp.Gipa

namespace Ipp.Extracted

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do
open scoped BigOperators

noncomputable section

private def copyModel (T : Type) : ark_ip_proofs.core.marker.Copy T := ⟨⟩

private def cloneModel (T : Type) : core.clone.Clone T where
  clone value := .ok value

private def addModel (T : Type) [Add T] :
    ark_ip_proofs.core.ops.arith.Add T T T where
  add left right := .ok (left + right)

private def mulModel (T : Type) [Mul T] :
    ark_ip_proofs.core.ops.arith.Mul T T T where
  mul left right := .ok (left * right)

private def mulAssignModel (F G : Type) [SMul F G] :
    ark_ip_proofs.core.ops.arith.MulAssign G F where
  mul_assign point scalar := .ok (scalar • point)

private def finSlice {T : Type} {n : ℕ} (values : Fin n → T) : Slice T :=
  ⟨List.ofFn values⟩

private def coefficientList {F : Type} [One F] [Mul F] (values : ℕ → F) : ℕ → List F
  | 0 => [1]
  | n + 1 =>
      let previous := coefficientList values n
      previous ++ previous.map (fun value => value * values n)

private def innerBody {F : Type} [Mul F] (raw inverse : F) :
    (core.ops.range.Range × alloc.vec.Vec F × alloc.vec.Vec F) →
      Result (ControlFlow
        (core.ops.range.Range × alloc.vec.Vec F × alloc.vec.Vec F)
        (alloc.vec.Vec F × alloc.vec.Vec F)) :=
  fun (iter, left, right) =>
    ark_ip_proofs.gipa.compute_final_commitment_keys_core_loop0_loop0.body
      (mulModel F) raw inverse iter left right

private def scaledSegment {F : Type} [Mul F]
    (values : ℕ → F) (scalar : F) (start n : ℕ) : List F :=
  List.ofFn (fun i : Fin n => values (start + i) * scalar)

private theorem innerFuel {F : Type} [Field F]
    (left right : alloc.vec.Vec F) (leftValues rightValues : ℕ → F)
    (raw inverse : F) (start n : ℕ)
    (hleftBound : start + n ≤ left.val.length)
    (hrightBound : start + n ≤ right.val.length)
    (hleft : ∀ i, start ≤ i → i < start + n → left.val[i]? = some (leftValues i))
    (hright : ∀ i, start ≤ i → i < start + n → right.val[i]? = some (rightValues i)) :
    loopFuel (innerBody raw inverse) (n + 1)
      ({ start := ⟨start⟩, «end» := ⟨start + n⟩ }, left, right) =
      .ok
        (⟨left.val ++ scaledSegment leftValues inverse start n⟩,
         ⟨right.val ++ scaledSegment rightValues raw start n⟩) := by
  induction n generalizing start left right with
  | zero =>
      rw [loopFuel]
      simp [innerBody, scaledSegment,
        ark_ip_proofs.gipa.compute_final_commitment_keys_core_loop0_loop0.body,
        core.iter.range.IteratorRange.next]
  | succ n ih =>
      have hlt : start < start + (n + 1) := by omega
      have hleft0 := hleft start (by omega) (by omega)
      have hright0 := hright start (by omega) (by omega)
      rw [loopFuel]
      simp [innerBody, hlt, hleft0, hright0, mulModel,
        ark_ip_proofs.alloc.vec.Vec.index, alloc.vec.Vec.push,
        ark_ip_proofs.gipa.compute_final_commitment_keys_core_loop0_loop0.body,
        core.iter.range.IteratorRange.next]
      have hend : start + (n + 1) = (start + 1) + n := by omega
      rw [hend]
      simp only [Usize.ofNat]
      rw [ih (start := start + 1)
        (left := ⟨left.val ++ [leftValues start * inverse]⟩)
        (right := ⟨right.val ++ [rightValues start * raw]⟩)]
      · simp [scaledSegment, List.append_assoc]
        constructor <;> funext i <;> congr 2 <;> omega
      · simp only [List.length_append, List.length_singleton]
        omega
      · simp only [List.length_append, List.length_singleton]
        omega
      · intro i hi hlo
        rw [List.getElem?_append_left]
        · apply hleft i (by omega) (by omega)
        · omega
      · intro i hi hlo
        rw [List.getElem?_append_left]
        · apply hright i (by omega) (by omega)
        · omega

private theorem innerLoop {F : Type} [Field F]
    (left right : alloc.vec.Vec F) (leftValues rightValues : ℕ → F)
    (raw inverse : F) (start n : ℕ)
    (hleftBound : start + n ≤ left.val.length)
    (hrightBound : start + n ≤ right.val.length)
    (hleft : ∀ i, start ≤ i → i < start + n → left.val[i]? = some (leftValues i))
    (hright : ∀ i, start ≤ i → i < start + n → right.val[i]? = some (rightValues i)) :
    ark_ip_proofs.gipa.compute_final_commitment_keys_core_loop0_loop0
      (mulModel F) { start := ⟨start⟩, «end» := ⟨start + n⟩ }
      left right raw inverse =
      .ok
        (⟨left.val ++ scaledSegment leftValues inverse start n⟩,
         ⟨right.val ++ scaledSegment rightValues raw start n⟩) := by
  unfold ark_ip_proofs.gipa.compute_final_commitment_keys_core_loop0_loop0
  apply loop_eq_of_fuel (fuel := n + 1) (by simp)
  exact innerFuel left right leftValues rightValues raw inverse start n
    hleftBound hrightBound hleft hright

private theorem scaledSegment_full {F : Type} [Mul F]
    (values : List F) (scalar : F) :
    scaledSegment (fun i => (values[i]?).getD scalar) scalar 0 values.length =
      values.map (fun value => value * scalar) := by
  apply List.ext_getElem
  · simp [scaledSegment]
  · intro n hleft hright
    simp [scaledSegment]

private theorem innerLoop_full {F : Type} [Field F]
    (left right : List F) (raw inverse : F) (hlen : left.length = right.length) :
    ark_ip_proofs.gipa.compute_final_commitment_keys_core_loop0_loop0
      (mulModel F) { start := ⟨0⟩, «end» := ⟨left.length⟩ }
      ⟨left⟩ ⟨right⟩ raw inverse =
      .ok
        (⟨left ++ left.map (fun value => value * inverse)⟩,
         ⟨right ++ right.map (fun value => value * raw)⟩) := by
  let leftValues : ℕ → F := fun i => (left[i]?).getD inverse
  let rightValues : ℕ → F := fun i => (right[i]?).getD raw
  have hrun := innerLoop ⟨left⟩ ⟨right⟩ leftValues rightValues raw inverse
    0 left.length (by simp) (by simp [hlen])
    (by
      intro i _ hi
      have hi' : i < left.length := by omega
      simp [leftValues, List.getElem?_eq_getElem hi'])
    (by
      intro i _ hi
      have hi' : i < right.length := by omega
      simp [rightValues, List.getElem?_eq_getElem hi'])
  have hleftSegment := scaledSegment_full left inverse
  have hrightSegment := scaledSegment_full right raw
  rw [← hlen] at hrightSegment
  rw [hleftSegment, hrightSegment] at hrun
  simpa only [Nat.zero_add] using hrun

private theorem coefficientList_length {F : Type} [Monoid F]
    (values : ℕ → F) (n : ℕ) : (coefficientList values n).length = 2 ^ n := by
  induction n with
  | zero => simp [coefficientList]
  | succ n ih => simp [coefficientList, ih, pow_succ]; omega

private def outerBody {F : Type} [Field F]
    (raw inverse : Slice F) :
    (core.ops.range.Range × alloc.vec.Vec F × alloc.vec.Vec F) →
      Result (ControlFlow
        (core.ops.range.Range × alloc.vec.Vec F × alloc.vec.Vec F)
        (alloc.vec.Vec F × alloc.vec.Vec F)) :=
  fun (iter, left, right) =>
    ark_ip_proofs.gipa.compute_final_commitment_keys_core_loop0.body
      (mulModel F) raw inverse iter left right

private theorem outerFuel {F : Type} [Field F]
    (raw inverse : Slice F) (rawValues inverseValues : ℕ → F)
    (start n : ℕ)
    (hraw : ∀ i, start ≤ i → i < start + n → raw.val[i]? = some (rawValues i))
    (hinverse : ∀ i, start ≤ i → i < start + n →
      inverse.val[i]? = some (inverseValues i))
    (hpow : ∀ i, start ≤ i → i < start + n → 2 ^ i ≤ Usize.max) :
    loopFuel (outerBody raw inverse) (n + 1)
      ({ start := ⟨start⟩, «end» := ⟨start + n⟩ },
       ⟨coefficientList inverseValues start⟩,
       ⟨coefficientList rawValues start⟩) =
      .ok
        (⟨coefficientList inverseValues (start + n)⟩,
         ⟨coefficientList rawValues (start + n)⟩) := by
  induction n generalizing start with
  | zero =>
      rw [loopFuel]
      simp [outerBody,
        ark_ip_proofs.gipa.compute_final_commitment_keys_core_loop0.body,
        core.iter.range.IteratorRange.next]
  | succ n ih =>
      have hlt : start < start + (n + 1) := by omega
      have hraw0 := hraw start (by omega) (by omega)
      have hinverse0 := hinverse start (by omega) (by omega)
      rw [loopFuel]
      simp only [outerBody,
        ark_ip_proofs.gipa.compute_final_commitment_keys_core_loop0.body,
        core.iter.range.IteratorRange.next, hlt, ↓reduceIte,
        Result.bind_ok, Slice.index_usize, hraw0, hinverse0, lift, UScalar.cast]
      rw [ark_ip_proofs.core.num.Usize.pow_two_eq_ok start
        (hpow start (by omega) (by omega))]
      simp only [Result.bind_ok]
      have hinner := innerLoop_full
        (coefficientList inverseValues start)
        (coefficientList rawValues start)
        (rawValues start) (inverseValues start) (by
          simp [coefficientList_length])
      rw [coefficientList_length] at hinner
      simp only [Usize.ofNat]
      rw [hinner]
      simp only [Result.bind_ok]
      have hleft :
          coefficientList inverseValues start ++
              (coefficientList inverseValues start).map
                (fun value => value * inverseValues start) =
            coefficientList inverseValues (start + 1) := by
        rw [coefficientList]
      have hright :
          coefficientList rawValues start ++
              (coefficientList rawValues start).map
                (fun value => value * rawValues start) =
            coefficientList rawValues (start + 1) := by
        rw [coefficientList]
      rw [hleft, hright]
      have hend : start + (n + 1) = (start + 1) + n := by omega
      rw [hend]
      rw [ih (start := start + 1)]
      · intro i hi hlo
        apply hraw i (by omega) (by omega)
      · intro i hi hlo
        apply hinverse i (by omega) (by omega)
      · intro i hi hlo
        apply hpow i (by omega) (by omega)

private theorem outerLoop {F : Type} [Field F]
    (raw inverse : Slice F) (rawValues inverseValues : ℕ → F)
    (start n : ℕ)
    (hraw : ∀ i, start ≤ i → i < start + n → raw.val[i]? = some (rawValues i))
    (hinverse : ∀ i, start ≤ i → i < start + n →
      inverse.val[i]? = some (inverseValues i))
    (hpow : ∀ i, start ≤ i → i < start + n → 2 ^ i ≤ Usize.max) :
    ark_ip_proofs.gipa.compute_final_commitment_keys_core_loop0
      (mulModel F) { start := ⟨start⟩, «end» := ⟨start + n⟩ }
      raw inverse ⟨coefficientList inverseValues start⟩
      ⟨coefficientList rawValues start⟩ =
      .ok
        (⟨coefficientList inverseValues (start + n)⟩,
         ⟨coefficientList rawValues (start + n)⟩) := by
  unfold ark_ip_proofs.gipa.compute_final_commitment_keys_core_loop0
  apply loop_eq_of_fuel (fuel := n + 1) (by simp)
  exact outerFuel raw inverse rawValues inverseValues start n hraw hinverse hpow

private def bitProduct {F : Type} [CommMonoid F]
    (values : ℕ → F) (n i : ℕ) : F :=
  ∏ j ∈ Finset.range n, if i.testBit j then values j else 1

private theorem bitProduct_succ_lt {F : Type} [CommMonoid F]
    (values : ℕ → F) {n i : ℕ} (hi : i < 2 ^ n) :
    bitProduct values (n + 1) i = bitProduct values n i := by
  have hlast : (if i.testBit n then values n else 1) = 1 := by
    rw [Nat.testBit_lt_two_pow hi]
    rfl
  unfold bitProduct
  rw [Finset.prod_range_succ, hlast, mul_one]

private theorem bitProduct_succ_add {F : Type} [CommMonoid F]
    (values : ℕ → F) {n i : ℕ} (hi : i < 2 ^ n) :
    bitProduct values (n + 1) (2 ^ n + i) = bitProduct values n i * values n := by
  have hlast : (if (2 ^ n + i).testBit n then values n else 1) = values n := by
    rw [Nat.testBit_two_pow_add_eq, Nat.testBit_lt_two_pow hi]
    rfl
  unfold bitProduct
  rw [Finset.prod_range_succ, hlast]
  congr 1
  refine Finset.prod_congr rfl (fun j hj => ?_)
  rw [Nat.testBit_two_pow_add_gt (Finset.mem_range.mp hj) i]

private theorem coefficientList_get? {F : Type} [CommMonoid F]
    (values : ℕ → F) (n i : ℕ) (hi : i < 2 ^ n) :
    (coefficientList values n)[i]? = some (bitProduct values n i) := by
  induction n generalizing i with
  | zero =>
      have : i = 0 := by omega
      subst i
      simp [coefficientList, bitProduct]
  | succ n ih =>
      by_cases hlo : i < 2 ^ n
      · rw [coefficientList, List.getElem?_append_left]
        · rw [ih i hlo, bitProduct_succ_lt values hlo]
        · simpa [coefficientList_length] using hlo
      · let k := i - 2 ^ n
        have hk : k < 2 ^ n := by
          dsimp [k]
          rw [pow_succ] at hi
          omega
        have hik : i = 2 ^ n + k := by dsimp [k]; omega
        rw [coefficientList, List.getElem?_append, if_neg]
        · simp only [List.getElem?_map, coefficientList_length]
          rw [show i - 2 ^ n = k by rfl, ih k hk]
          simp [hik, bitProduct_succ_add values hk]
        · simp [coefficientList_length]
          omega

private theorem coefficientList_eq_transcriptCoeffs {F : Type} [Field F]
    {μ : ℕ} (x : Fin μ → F) :
    coefficientList (fun i => if h : i < μ then x ⟨i, h⟩ else 0) μ =
      List.ofFn (Ipp.transcriptCoeffs x 1) := by
  apply List.ext_getElem?
  intro i
  rw [List.getElem?_ofFn]
  by_cases hi : i < 2 ^ μ
  · rw [coefficientList_get? _ μ i hi]
    simp only [hi, ↓reduceDIte]
    congr 1
    unfold bitProduct Ipp.transcriptCoeffs
    rw [← Fin.prod_univ_eq_prod_range
      (fun j => if i.testBit j then
        (if h : j < μ then x ⟨j, h⟩ else 0) else 1)]
    apply Finset.prod_congr rfl
    intro j _
    simp [j.isLt]
  · have hlen := coefficientList_length
      (fun i => if h : i < μ then x ⟨i, h⟩ else 0) μ
    rw [List.getElem?_eq_none (by simpa [hlen] using hi)]
    simp [hi]

/-- The retained production-copy MSM boundary after the concrete checked
G1/G2 copies are discharged by `executed_g1_msm` and `executed_g2_msm`. -/
def OrderedMsmConformance {F G : Type} [Field F] [AddCommGroup G] [Module F G]
    {n : ℕ} (keys : Fin n → G) (coefficients : Fin n → F) : Prop :=
  ark_ip_proofs.gipa.ordered_msm
      (cloneModel G) (addModel G) (mulAssignModel F G) (copyModel F)
      (finSlice keys) (finSlice coefficients) =
    .ok (Ipp.msm coefficients keys)

/-- The extracted final-key core computes the inverse/raw transcript MSMs. -/
theorem final_commitment_keys_refinement
    {F G1 G2 : Type} [Field F]
    [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    {μ : ℕ} (x : Fin μ → F) (ckA : Fin (2 ^ μ) → G1)
    (ckB : Fin (2 ^ μ) → G2)
    (hx : ∀ j, x j ≠ 0)
    (hsize : 2 ^ μ ≤ Usize.max)
    (hmsmA : OrderedMsmConformance ckA
      (Ipp.transcriptCoeffs (fun j => (x j)⁻¹) 1))
    (hmsmB : OrderedMsmConformance ckB (Ipp.transcriptCoeffs x 1)) :
    ark_ip_proofs.gipa.compute_final_commitment_keys_core
        (copyModel F) (mulModel F)
        (cloneModel G1) (addModel G1) (mulAssignModel F G1)
        (cloneModel G2) (addModel G2) (mulAssignModel F G2)
        (finSlice ckA) (finSlice ckB) (finSlice x)
        (finSlice (fun j => (x j)⁻¹)) 1 =
      .ok
        (Ipp.msm (Ipp.transcriptCoeffs (fun j => (x j)⁻¹) 1) ckA,
         Ipp.msm (Ipp.transcriptCoeffs x 1) ckB) := by
  have inverseLaw : ∀ j, x j * (x j)⁻¹ = 1 :=
    fun j => mul_inv_cancel₀ (hx j)
  clear inverseLaw
  let rawValues : ℕ → F := fun i => if h : i < μ then x ⟨i, h⟩ else 0
  let inverseValues : ℕ → F :=
    fun i => if h : i < μ then (x ⟨i, h⟩)⁻¹ else 0
  have houter := outerLoop (finSlice x) (finSlice (fun j => (x j)⁻¹))
    rawValues inverseValues 0 μ
    (by
      intro i _ hi
      have hi' : i < μ := by omega
      rw [show (finSlice x).val[i]? = (List.ofFn x)[i]? by rfl,
        List.getElem?_ofFn, dif_pos hi']
      simp [rawValues, hi'])
    (by
      intro i _ hi
      have hi' : i < μ := by omega
      rw [show (finSlice (fun j => (x j)⁻¹)).val[i]? =
          (List.ofFn (fun j => (x j)⁻¹))[i]? by rfl,
        List.getElem?_ofFn, dif_pos hi']
      simp [inverseValues, hi'])
    (by
      intro i _ hi
      have hi' : i ≤ μ := by omega
      exact (Nat.pow_le_pow_right (by omega) hi').trans hsize)
  simp only [Nat.zero_add, coefficientList] at houter
  simp only [finSlice] at houter
  have hrawCoefficients :
      coefficientList rawValues μ = List.ofFn (Ipp.transcriptCoeffs x 1) := by
    simpa [rawValues] using coefficientList_eq_transcriptCoeffs x
  have hinverseCoefficients :
      coefficientList inverseValues μ =
        List.ofFn (Ipp.transcriptCoeffs (fun j => (x j)⁻¹) 1) := by
    simpa [inverseValues] using
      coefficientList_eq_transcriptCoeffs (fun j => (x j)⁻¹)
  unfold ark_ip_proofs.gipa.compute_final_commitment_keys_core
  simp [ark_ip_proofs.core.num.Usize.is_power_of_two,
    ark_ip_proofs.massert, finSlice, copyModel, lift, Std.Array.make,
    Std.Array.to_slice, MacCampaign.Array.make, MacCampaign.Array.to_slice,
    alloc.slice.Slice.into_vec, ark_ip_proofs.alloc.vec.Vec.len, Slice.len]
  rw [show Usize.ofNat 0 = (⟨0⟩ : Usize) by rfl]
  rw [houter]
  simp only [Result.bind_ok]
  rw [coefficientList_length]
  simp only [ark_ip_proofs.alloc.vec.Vec.deref]
  rw [hrawCoefficients, hinverseCoefficients]
  unfold OrderedMsmConformance at hmsmA hmsmB
  unfold copyModel finSlice at hmsmA hmsmB
  simp only [if_true, Result.bind_ok]
  rw [hmsmA, hmsmB]
  rfl

/-- The two final MSMs are the corresponding terminal GIPA key folds. -/
theorem final_commitment_keys_foldKey_corollaries
    {F G1 G2 : Type} [Field F]
    [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    {μ : ℕ} (x : Fin μ → F) (ckA : Fin (2 ^ μ) → G1)
    (ckB : Fin (2 ^ μ) → G2) :
    (Ipp.foldKey (fun j => (x j)⁻¹) ckA =
        fun _ : Fin 1 =>
          Ipp.msm (Ipp.transcriptCoeffs (fun j => (x j)⁻¹) 1) ckA) ∧
    (Ipp.foldKey x ckB =
        fun _ : Fin 1 => Ipp.msm (Ipp.transcriptCoeffs x 1) ckB) := by
  constructor
  · exact Ipp.foldKey_transcriptCoeffs (fun j => (x j)⁻¹) ckA
  · exact Ipp.foldKey_transcriptCoeffs x ckB

end
end Ipp.Extracted
