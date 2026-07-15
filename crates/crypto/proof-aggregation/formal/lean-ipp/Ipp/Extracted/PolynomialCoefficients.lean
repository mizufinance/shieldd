import Ipp.Extracted.PolynomialCoefficientsGenerated
import Ipp.Kzg

namespace Ipp.Extracted

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do
open scoped BigOperators

noncomputable section

private def cloneModel (T : Type) : core.clone.Clone T where
  clone x := .ok x

private def addModel (T : Type) [Add T] :
    ark_ip_proofs.core.ops.arith.Add T T T where
  add x y := .ok (x + y)

private def mulModel (T : Type) [Mul T] :
    ark_ip_proofs.core.ops.arith.Mul T T T where
  mul x y := .ok (x * y)

private def oneModel (T : Type) [One T] [Mul T] :
    ark_ip_proofs.num_traits.identities.One T where
  coreopsarithMulInst := mulModel T
  one := .ok 1

private def zeroModel (T : Type) [Zero T] [Add T] :
    ark_ip_proofs.num_traits.identities.Zero T where
  coreopsarithAddInst := addModel T
  zero := .ok 0
  is_zero x := by classical exact .ok (decide (x = 0))

private def finVec {T : Type} {n : ℕ} (v : Fin n → T) : alloc.vec.Vec T :=
  ⟨List.ofFn v⟩

private def coefficientList {F : Type} [One F] [Mul F] (a : ℕ → F) : ℕ → List F
  | 0 => [1]
  | n + 1 =>
      let previous := coefficientList a n
      previous ++ previous.map (fun value => value * a n)

private def bitProduct {F : Type} [CommMonoid F]
    (a : ℕ → F) (n i : ℕ) : F :=
  ∏ j ∈ Finset.range n, if i.testBit j then a j else 1

private def innerBody {F : Type} [Field F] (factor : F) :
    (core.ops.range.Range × alloc.vec.Vec F) →
      Result (ControlFlow (core.ops.range.Range × alloc.vec.Vec F)
        (alloc.vec.Vec F)) :=
  fun (iter, coefficients) =>
    ark_ip_proofs.tipa.polynomial_coefficients_from_transcript_loop0_loop0.body
      (cloneModel F) (mulModel F) factor iter coefficients

private def scaledSegment {F : Type} [Mul F]
    (f : ℕ → F) (factor : F) (start n : ℕ) : List F :=
  List.ofFn (fun i : Fin n => f (start + i) * factor)

private theorem innerFuel {F : Type} [Field F]
    (coefficients : alloc.vec.Vec F) (f : ℕ → F) (factor : F)
    (start n : ℕ)
    (hbound : start + n ≤ coefficients.val.length)
    (hf : ∀ i, start ≤ i → i < start + n → coefficients.val[i]? = some (f i)) :
    loopFuel (innerBody factor) (n + 1)
      ({ start := ⟨start⟩, «end» := ⟨start + n⟩ }, coefficients) =
      .ok ⟨coefficients.val ++ scaledSegment f factor start n⟩ := by
  induction n generalizing start coefficients with
  | zero =>
      rw [loopFuel]
      simp [innerBody, scaledSegment,
        ark_ip_proofs.tipa.polynomial_coefficients_from_transcript_loop0_loop0.body,
        core.iter.range.IteratorRange.next]
  | succ n ih =>
      have hlt : start < start + (n + 1) := by omega
      have hf0 := hf start (by omega) (by omega)
      rw [loopFuel]
      simp [innerBody, hlt, hf0, cloneModel, mulModel,
        ark_ip_proofs.alloc.vec.Vec.index, alloc.vec.Vec.push,
        ark_ip_proofs.tipa.polynomial_coefficients_from_transcript_loop0_loop0.body,
        core.iter.range.IteratorRange.next]
      have hend : start + (n + 1) = (start + 1) + n := by omega
      rw [hend]
      simp only [Usize.ofNat]
      rw [ih (start := start + 1)
        (coefficients := ⟨coefficients.val ++ [f start * factor]⟩)]
      · simp [scaledSegment, List.append_assoc]
        funext i
        congr 2
        omega
      · simp only [List.length_append, List.length_singleton]
        omega
      · intro i hi hlo
        rw [List.getElem?_append_left]
        · apply hf i (by omega) (by omega)
        · omega

private theorem innerLoop {F : Type} [Field F]
    (coefficients : alloc.vec.Vec F) (f : ℕ → F) (factor : F)
    (start n : ℕ)
    (hbound : start + n ≤ coefficients.val.length)
    (hf : ∀ i, start ≤ i → i < start + n → coefficients.val[i]? = some (f i)) :
    ark_ip_proofs.tipa.polynomial_coefficients_from_transcript_loop0_loop0
      (cloneModel F) (mulModel F)
      { start := ⟨start⟩, «end» := ⟨start + n⟩ }
      coefficients factor =
      .ok ⟨coefficients.val ++ scaledSegment f factor start n⟩ := by
  unfold ark_ip_proofs.tipa.polynomial_coefficients_from_transcript_loop0_loop0
  apply loop_eq_of_fuel (fuel := n + 1) (by simp)
  exact innerFuel coefficients f factor start n hbound hf

private theorem scaledSegment_getD {F : Type} [Mul F]
    (xs : List F) (factor : F) :
    scaledSegment (fun i => (xs[i]?).getD factor) factor 0 xs.length =
      xs.map (fun value => value * factor) := by
  apply List.ext_getElem
  · simp [scaledSegment]
  · intro n hleft hright
    simp [scaledSegment]

private theorem innerLoop_full {F : Type} [Field F]
    (coefficients : List F) (factor : F) :
    ark_ip_proofs.tipa.polynomial_coefficients_from_transcript_loop0_loop0
      (cloneModel F) (mulModel F)
      { start := ⟨0⟩, «end» := ⟨coefficients.length⟩ }
      ⟨coefficients⟩ factor =
      .ok ⟨coefficients ++ coefficients.map (fun value => value * factor)⟩ := by
  let f : ℕ → F := fun i => (coefficients[i]?).getD factor
  have hloop := innerLoop ⟨coefficients⟩ f factor 0 coefficients.length
    (by simp) (by
      intro i _ hi
      have hi' : i < coefficients.length := by omega
      simp [f, List.getElem?_eq_getElem hi'])
  simpa [scaledSegment_getD, f] using hloop

private theorem coefficientList_length {F : Type} [Monoid F]
    (a : ℕ → F) (n : ℕ) : (coefficientList a n).length = 2 ^ n := by
  induction n with
  | zero => simp [coefficientList]
  | succ n ih =>
      simp only [coefficientList, List.length_append, List.length_map, ih, pow_succ]
      omega

private theorem bitProduct_succ_lt {F : Type} [CommMonoid F]
    (a : ℕ → F) {n i : ℕ} (hi : i < 2 ^ n) :
    bitProduct a (n + 1) i = bitProduct a n i := by
  have hlast : (if i.testBit n then a n else 1) = 1 := by
    rw [Nat.testBit_lt_two_pow hi]
    rfl
  unfold bitProduct
  rw [Finset.prod_range_succ, hlast, mul_one]

private theorem bitProduct_succ_add {F : Type} [CommMonoid F]
    (a : ℕ → F) {n i : ℕ} (hi : i < 2 ^ n) :
    bitProduct a (n + 1) (2 ^ n + i) = bitProduct a n i * a n := by
  have hlast : (if (2 ^ n + i).testBit n then a n else 1) = a n := by
    rw [Nat.testBit_two_pow_add_eq, Nat.testBit_lt_two_pow hi]
    rfl
  unfold bitProduct
  rw [Finset.prod_range_succ, hlast]
  congr 1
  refine Finset.prod_congr rfl (fun j hj => ?_)
  rw [Nat.testBit_two_pow_add_gt (Finset.mem_range.mp hj) i]

private theorem coefficientList_get? {F : Type} [CommMonoid F]
    (a : ℕ → F) (n i : ℕ) (hi : i < 2 ^ n) :
    (coefficientList a n)[i]? = some (bitProduct a n i) := by
  induction n generalizing i with
  | zero =>
      have : i = 0 := by omega
      subst i
      simp [coefficientList, bitProduct]
  | succ n ih =>
      by_cases hlo : i < 2 ^ n
      · rw [coefficientList, List.getElem?_append_left]
        · rw [ih i hlo, bitProduct_succ_lt a hlo]
        · simp only [coefficientList_length]
          omega
      · let k := i - 2 ^ n
        have hk : k < 2 ^ n := by
          dsimp [k]
          rw [pow_succ] at hi
          omega
        have hik : i = 2 ^ n + k := by
          dsimp [k]
          omega
        rw [coefficientList, List.getElem?_append, if_neg]
        · simp only [List.getElem?_map, coefficientList_length]
          rw [show i - 2 ^ n = k by rfl, ih k hk]
          simp [hik, bitProduct_succ_add a hk]
        · simp only [coefficientList_length]
          omega

private def outerBody {F : Type} [Field F] (transcript : alloc.vec.Vec F) :
    (core.ops.range.Range × alloc.vec.Vec F × F) →
      Result (ControlFlow (core.ops.range.Range × alloc.vec.Vec F × F)
        (alloc.vec.Vec F)) :=
  fun (iter, coefficients, power) =>
    ark_ip_proofs.tipa.polynomial_coefficients_from_transcript_loop0.body
      (cloneModel F) (mulModel F) transcript iter coefficients power

private theorem outerFuel {F : Type} [Field F]
    (transcript : alloc.vec.Vec F) (x : ℕ → F) (rShift : F)
    (start n : ℕ)
    (hx : ∀ i, start ≤ i → i < start + n → transcript.val[i]? = some (x i))
    (hpow : ∀ i, start ≤ i → i < start + n →
      2 ^ i ≤ Usize.max) :
    let a := fun i => x i * rShift ^ (2 ^ i)
    loopFuel (outerBody transcript) (n + 1)
      ({ start := ⟨start⟩, «end» := ⟨start + n⟩ },
        ⟨coefficientList a start⟩, rShift ^ (2 ^ start)) =
      .ok ⟨coefficientList a (start + n)⟩ := by
  induction n generalizing start with
  | zero =>
      simp [outerBody,
        loopFuel,
        ark_ip_proofs.tipa.polynomial_coefficients_from_transcript_loop0.body,
        core.iter.range.IteratorRange.next]
  | succ n ih =>
      dsimp only
      let a := fun i => x i * rShift ^ (2 ^ i)
      have hlt : start < start + (n + 1) := by omega
      have hx0 := hx start (by omega) (by omega)
      rw [loopFuel]
      simp only [outerBody,
        ark_ip_proofs.tipa.polynomial_coefficients_from_transcript_loop0.body,
        core.iter.range.IteratorRange.next, hlt, ↓reduceIte, Result.bind_ok,
        ark_ip_proofs.alloc.vec.Vec.index, hx0, cloneModel, mulModel, lift,
        UScalar.cast]
      rw [ark_ip_proofs.core.num.Usize.pow_two_eq_ok start
        (hpow start (by omega) (by omega))]
      simp only [Result.bind_ok]
      have hinner := innerLoop_full (coefficientList a start) (a start)
      rw [coefficientList_length] at hinner
      simp only [cloneModel, mulModel, a] at hinner
      simp only [Usize.ofNat]
      rw [hinner]
      simp only [Result.bind_ok]
      have hsq : rShift ^ (2 ^ start) * rShift ^ (2 ^ start) =
          rShift ^ (2 ^ (start + 1)) := by
        rw [← pow_add, pow_succ]
        simp only [Nat.mul_two]
      rw [hsq]
      have hend : start + (n + 1) = (start + 1) + n := by omega
      rw [hend]
      have hnext :
          coefficientList (fun i => x i * rShift ^ (2 ^ i)) start ++
              (coefficientList (fun i => x i * rShift ^ (2 ^ i)) start).map
                (fun value => value * (x start * rShift ^ (2 ^ start))) =
            coefficientList (fun i => x i * rShift ^ (2 ^ i)) (start + 1) := by
        rw [coefficientList]
      rw [hnext]
      rw [ih (start := start + 1)]
      · intro i hi hlo
        apply hx i (by omega) (by omega)
      · intro i hi hlo
        apply hpow i (by omega) (by omega)

private theorem outerLoop {F : Type} [Field F]
    (transcript : alloc.vec.Vec F) (x : ℕ → F) (rShift : F)
    (start n : ℕ)
    (hx : ∀ i, start ≤ i → i < start + n → transcript.val[i]? = some (x i))
    (hpow : ∀ i, start ≤ i → i < start + n →
      2 ^ i ≤ Usize.max) :
    let a := fun i => x i * rShift ^ (2 ^ i)
    ark_ip_proofs.tipa.polynomial_coefficients_from_transcript_loop0
      (cloneModel F) (mulModel F)
      { start := ⟨start⟩, «end» := ⟨start + n⟩ }
      transcript ⟨coefficientList a start⟩ (rShift ^ (2 ^ start)) =
      .ok ⟨coefficientList a (start + n)⟩ := by
  unfold ark_ip_proofs.tipa.polynomial_coefficients_from_transcript_loop0
  apply loop_eq_of_fuel (fuel := n + 1) (by simp)
  exact outerFuel transcript x rShift start n hx hpow

private def interleaveBody {F : Type} [Field F]
    (coefficients : alloc.vec.Vec F) (logicalLength : ℕ) :
    (core.ops.range.Range × alloc.vec.Vec F) →
      Result (ControlFlow (core.ops.range.Range × alloc.vec.Vec F)
        (alloc.vec.Vec F)) :=
  fun (iter, interleaved) =>
    ark_ip_proofs.tipa.polynomial_coefficients_from_transcript_loop1.body
      (cloneModel F) (zeroModel F) coefficients ⟨logicalLength⟩ iter interleaved

private def interleaveSegment {F : Type} [Zero F]
    (f : ℕ → F) (start : ℕ) : ℕ → List F
  | 0 => []
  | 1 => [f start]
  | n + 2 => f start :: 0 :: interleaveSegment f (start + 1) (n + 1)

private theorem usizeAdd (left right : Usize) :
    (left + right : Result Usize) = .ok ⟨left.val + right.val⟩ := rfl

private theorem usizeLt (left right : Usize) :
    (left < right) = (left.val < right.val) := rfl

private theorem usizeMul (left right : Usize) :
    (left * right : Result Usize) = .ok ⟨left.val * right.val⟩ := rfl

private theorem usizeSub (left right : Usize) :
    (left - right : Result Usize) = .ok ⟨left.val - right.val⟩ := rfl

private theorem interleaveFuel {F : Type} [Field F]
    (coefficients : alloc.vec.Vec F) (f : ℕ → F)
    (logicalLength start n : ℕ) (interleaved : List F)
    (hend : logicalLength = start + n)
    (hf : ∀ i, start ≤ i → i < start + n → coefficients.val[i]? = some (f i)) :
    loopFuel (interleaveBody coefficients logicalLength) (n + 1)
      ({ start := ⟨start⟩, «end» := ⟨start + n⟩ }, ⟨interleaved⟩) =
      .ok ⟨interleaved ++ interleaveSegment f start n⟩ := by
  induction n generalizing start interleaved with
  | zero =>
      rw [loopFuel]
      simp [interleaveBody, interleaveSegment,
        ark_ip_proofs.tipa.polynomial_coefficients_from_transcript_loop1.body,
        core.iter.range.IteratorRange.next]
  | succ n ih =>
      have hlt : start < start + (n + 1) := by omega
      have hf0 := hf start (by omega) (by omega)
      rw [loopFuel]
      simp [interleaveBody, hlt, hf0, cloneModel, zeroModel, addModel,
        usizeAdd, usizeLt, Usize.ofNat,
        ark_ip_proofs.alloc.vec.Vec.index, alloc.vec.Vec.push,
        ark_ip_proofs.tipa.polynomial_coefficients_from_transcript_loop1.body,
        core.iter.range.IteratorRange.next]
      cases n with
      | zero =>
          simp [hend, interleaveSegment, loopFuel, interleaveBody,
            usizeAdd, usizeLt, Usize.ofNat,
            ark_ip_proofs.tipa.polynomial_coefficients_from_transcript_loop1.body,
            core.iter.range.IteratorRange.next]
      | succ n =>
          have hmore : start + 1 < logicalLength := by omega
          simp only [hmore, ↓reduceIte]
          have hend' : start + (n + 1 + 1) = (start + 1) + (n + 1) := by omega
          rw [hend']
          rw [ih (start := start + 1)
            (interleaved := interleaved ++ [f start, 0])]
          · simp [interleaveSegment, List.append_assoc]
          · omega
          · intro i hi hlo
            apply hf i (by omega) (by omega)

private theorem interleaveLoop {F : Type} [Field F]
    (coefficients : alloc.vec.Vec F) (f : ℕ → F)
    (logicalLength start n : ℕ) (interleaved : List F)
    (hend : logicalLength = start + n)
    (hf : ∀ i, start ≤ i → i < start + n → coefficients.val[i]? = some (f i)) :
    ark_ip_proofs.tipa.polynomial_coefficients_from_transcript_loop1
      (cloneModel F) (zeroModel F)
      { start := ⟨start⟩, «end» := ⟨start + n⟩ }
      coefficients ⟨logicalLength⟩ ⟨interleaved⟩ =
      .ok ⟨interleaved ++ interleaveSegment f start n⟩ := by
  unfold ark_ip_proofs.tipa.polynomial_coefficients_from_transcript_loop1
  apply loop_eq_of_fuel (fuel := n + 1) (by simp)
  exact interleaveFuel coefficients f logicalLength start n interleaved hend hf

private theorem interleaveSegment_length {F : Type} [Zero F]
    (f : ℕ → F) (start n : ℕ) (hn : 0 < n) :
    (interleaveSegment f start n).length = 2 * n - 1 := by
  induction n generalizing start with
  | zero => omega
  | succ n ih =>
      cases n with
      | zero => simp [interleaveSegment]
      | succ n =>
          rw [interleaveSegment]
          simp only [List.length_cons]
          rw [ih (start := start + 1) (by omega)]
          omega

private theorem interleaveSegment_even {F : Type} [Zero F]
    (f : ℕ → F) (start n i : ℕ) (hi : i < n) :
    (interleaveSegment f start n)[2 * i]? = some (f (start + i)) := by
  induction n generalizing start i with
  | zero => omega
  | succ n ih =>
      cases n with
      | zero =>
          have : i = 0 := by omega
          subst i
          simp [interleaveSegment]
      | succ n =>
          cases i with
          | zero => simp [interleaveSegment]
          | succ i =>
              have hi' : i < n + 1 := by omega
              simp only [Nat.mul_succ, interleaveSegment,
                List.getElem?_cons_succ]
              rw [ih (start := start + 1) i hi']
              congr 2
              omega

private theorem interleaveSegment_odd {F : Type} [Zero F]
    (f : ℕ → F) (start n i : ℕ) (hi : i + 1 < n) :
    (interleaveSegment f start n)[2 * i + 1]? = some 0 := by
  induction n generalizing start i with
  | zero => omega
  | succ n ih =>
      cases n with
      | zero => omega
      | succ n =>
          cases i with
          | zero => simp [interleaveSegment]
          | succ i =>
              have hi' : i + 1 < n + 1 := by omega
              simp only [Nat.mul_succ, interleaveSegment,
                List.getElem?_cons_succ]
              rw [ih (start := start + 1) i hi']

private theorem bitProduct_eq_transcriptCoeffs {F : Type} [Field F]
    {μ : ℕ} (x : Fin μ → F) (rShift : F) (i : Fin (2 ^ μ)) :
    bitProduct
        (fun j => (if h : j < μ then x ⟨j, h⟩ else 0) * rShift ^ (2 ^ j))
        μ i = Ipp.transcriptCoeffs x rShift i := by
  unfold bitProduct Ipp.transcriptCoeffs
  rw [← Fin.prod_univ_eq_prod_range
    (fun j => if (i : ℕ).testBit j then
      (if h : j < μ then x ⟨j, h⟩ else 0) * rShift ^ (2 ^ j) else 1)]
  apply Finset.prod_congr rfl
  intro j _
  simp [j.isLt]

private theorem generated_eq {F : Type} [Field F] {μ : ℕ}
    (x : Fin μ → F) (rShift : F)
    (hsize : 2 ^ μ ≤ Usize.max) :
    let xn : ℕ → F := fun i => if h : i < μ then x ⟨i, h⟩ else 0
    let a : ℕ → F := fun i => xn i * rShift ^ (2 ^ i)
    ark_ip_proofs.tipa.polynomial_coefficients_from_transcript
        (cloneModel F) (oneModel F) (zeroModel F) (mulModel F)
        (finVec x) rShift =
      .ok ⟨interleaveSegment (fun i => bitProduct a μ i) 0 (2 ^ μ)⟩ := by
  let xn : ℕ → F := fun i => if h : i < μ then x ⟨i, h⟩ else 0
  let a : ℕ → F := fun i => xn i * rShift ^ (2 ^ i)
  have hout := outerLoop (finVec x) xn rShift 0 μ (by
    intro i _ hi
    have hi' : i < μ := by omega
    rw [show (finVec x).val[i]? = (List.ofFn x)[i]? by rfl,
      List.getElem?_ofFn, dif_pos hi']
    simp only [xn, dif_pos hi']) (by
      intro i _ hi
      have hi' : i ≤ μ := by omega
      exact (Nat.pow_le_pow_right (by omega) hi').trans hsize)
  simp only [Nat.zero_add, pow_zero, pow_one] at hout
  simp only [coefficientList, cloneModel] at hout
  have hlen : ark_ip_proofs.alloc.vec.Vec.len (finVec x) = ⟨μ⟩ := by
    simp [ark_ip_proofs.alloc.vec.Vec.len, finVec]
  unfold ark_ip_proofs.tipa.polynomial_coefficients_from_transcript
  simp [oneModel, cloneModel, lift, Array.make, Std.Array.to_slice,
    alloc.slice.Slice.into_vec]
  rw [hlen]
  simp only [Usize.ofNat]
  rw [hout]
  simp [ark_ip_proofs.alloc.vec.Vec.len, coefficientList_length]
  let f : ℕ → F := fun i => bitProduct a μ i
  have hinterleave := interleaveLoop ⟨coefficientList a μ⟩ f (2 ^ μ) 0 (2 ^ μ) []
    (by omega) (by
      intro i _ hi
      apply coefficientList_get? a μ i
      omega)
  simp only [Nat.zero_add, List.nil_append, f] at hinterleave
  simp only [cloneModel, a] at hinterleave
  simp [usizeMul, usizeSub, alloc.vec.Vec.with_capacity]
  rw [hinterleave]
  simp [xn]

/-- The generated coefficient constructor succeeds with the exact interleaved
    transcript coefficients when its allocation length fits in `usize`. -/
theorem polynomial_coefficients_refinement {F : Type} [Field F] {μ : ℕ}
    (x : Fin μ → F) (rShift : F)
    (hsize : 2 ^ μ ≤ Usize.max) :
    ∃ coefficients : List F,
      ark_ip_proofs.tipa.polynomial_coefficients_from_transcript
          (cloneModel F) (oneModel F) (zeroModel F) (mulModel F)
          (finVec x) rShift = .ok ⟨coefficients⟩ ∧
      coefficients.length = 2 ^ (μ + 1) - 1 ∧
      (∀ i : Fin (2 ^ μ), coefficients[2 * (i : ℕ)]? =
        some (Ipp.transcriptCoeffs x rShift i)) ∧
      (∀ i : ℕ, 2 * i + 1 < coefficients.length →
        coefficients[2 * i + 1]? = some 0) := by
  let xn : ℕ → F := fun i => if h : i < μ then x ⟨i, h⟩ else 0
  let a : ℕ → F := fun i => xn i * rShift ^ (2 ^ i)
  let coefficients := interleaveSegment (fun i => bitProduct a μ i) 0 (2 ^ μ)
  refine ⟨coefficients, ?_, ?_, ?_, ?_⟩
  · simpa [xn, a, coefficients] using generated_eq x rShift hsize
  · rw [show coefficients.length = 2 * (2 ^ μ) - 1 by
      exact interleaveSegment_length _ _ _ (by positivity)]
    rw [pow_succ]
    omega
  · intro i
    rw [show coefficients[2 * (i : ℕ)]? =
        some (bitProduct a μ i) by
      simpa [coefficients] using
        (interleaveSegment_even (F := F) (fun i => bitProduct a μ i)
          0 (2 ^ μ) i i.isLt)]
    congr 1
    simp only [a, xn]
    exact bitProduct_eq_transcriptCoeffs x rShift i
  · intro i hi
    apply interleaveSegment_odd
    have hlen := interleaveSegment_length
      (fun i => bitProduct a μ i) 0 (2 ^ μ) (by positivity)
    dsimp only [coefficients] at hi
    rw [hlen] at hi
    omega

end
end Ipp.Extracted
