import Ipp.Extracted.PolynomialEvaluationProductFormGenerated
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

private def finVec {T : Type} {n : ℕ} (v : Fin n → T) :
    alloc.vec.Vec T :=
  ⟨List.ofFn v⟩

/- The exact S2-07 bridge goal. The extracted loops build the product factors
   and then multiply them; the model side is the transcript product identity. -/
def polynomial_evaluation_product_form_refinement_statement
    {F : Type} [Field F] {μ : ℕ} (x : Fin μ → F) (z rShift : F) : Prop :=
  ark_ip_proofs.tipa.polynomial_evaluation_product_form_from_transcript
      (cloneModel F) (oneModel F) (zeroModel F) (addModel F) (mulModel F)
      (finVec x) z rShift =
    .ok (∏ j : Fin μ, (1 + (x j * rShift ^ (2 ^ (j : ℕ))) *
      (z ^ 2) ^ (2 ^ (j : ℕ))))

private def buildBody {F : Type} [Field F] (transcript : alloc.vec.Vec F) :
    (core.ops.range.Range × F × alloc.vec.Vec F) →
      Result (ControlFlow (core.ops.range.Range × F × alloc.vec.Vec F)
        (alloc.vec.Vec F)) :=
  fun (iter, power, factors) =>
    ark_ip_proofs.tipa.polynomial_evaluation_product_form_from_transcript_loop0.body
      (cloneModel F) (oneModel F) (addModel F) (mulModel F)
      transcript iter power factors

private def factorList {F : Type} [Field F]
    (x : Nat → F) (start : Nat) : F → Nat → List F
  | _, 0 => []
  | power, n + 1 =>
      (1 + x start * power) :: factorList x (start + 1) (power * power) n

private theorem buildFuel {F : Type} [Field F]
    (transcript : alloc.vec.Vec F) (x : Nat → F) (power : F)
    (start n : Nat) (xs : List F)
    (hx : ∀ i, start ≤ i → i < start + n → transcript.val[i]? = some (x i)) :
    loopFuel (buildBody transcript) (n + 1)
      ({ start := ⟨start⟩, «end» := ⟨start + n⟩ }, power, ⟨xs⟩) =
      .ok ⟨xs ++ factorList x start power n⟩ := by
  induction n generalizing start power xs with
  | zero =>
      rw [loopFuel]
      simp [buildBody, factorList,
        ark_ip_proofs.tipa.polynomial_evaluation_product_form_from_transcript_loop0.body,
        core.iter.range.IteratorRange.next]
  | succ n ih =>
      have hlt : start < start + (n + 1) := by omega
      have hx0 := hx start (by omega) (by omega)
      rw [loopFuel]
      simp [buildBody, hlt, hx0, cloneModel, oneModel, addModel, mulModel,
        ark_ip_proofs.alloc.vec.Vec.index, alloc.vec.Vec.push,
        ark_ip_proofs.tipa.polynomial_evaluation_product_form_from_transcript_loop0.body,
        core.iter.range.IteratorRange.next]
      have hend : start + (n + 1) = (start + 1) + n := by omega
      rw [hend]
      simp only [Usize.ofNat]
      rw [ih (start := start + 1) (power := power * power)
        (xs := xs ++ [1 + x start * power])]
      · simp [factorList, List.append_assoc]
      · intro i hi hlo
        apply hx i (by omega) (by omega)

private theorem buildLoop {F : Type} [Field F]
    (transcript : alloc.vec.Vec F) (x : Nat → F) (power : F)
    (start n : Nat) (xs : List F)
    (hx : ∀ i, start ≤ i → i < start + n → transcript.val[i]? = some (x i)) :
    ark_ip_proofs.tipa.polynomial_evaluation_product_form_from_transcript_loop0
      (cloneModel F) (oneModel F) (addModel F) (mulModel F)
      { start := ⟨start⟩, «end» := ⟨start + n⟩ }
      transcript power ⟨xs⟩ = .ok ⟨xs ++ factorList x start power n⟩ := by
  unfold ark_ip_proofs.tipa.polynomial_evaluation_product_form_from_transcript_loop0
  apply loop_eq_of_fuel (fuel := n + 1) (by simp)
  exact buildFuel transcript x power start n xs hx

private def multiplyBody {F : Type} [Field F] (factors : alloc.vec.Vec F) :
    (core.ops.range.Range × F) → Result (ControlFlow (core.ops.range.Range × F) F) :=
  fun (iter, product) =>
    ark_ip_proofs.tipa.polynomial_evaluation_product_form_from_transcript_loop1.body
      (cloneModel F) (mulModel F) factors iter product

private theorem multiplyFuel {F : Type} [Field F]
    (factors : alloc.vec.Vec F) (f : Nat → F) (product : F)
    (start n : Nat)
    (hf : ∀ i, start ≤ i → i < start + n → factors.val[i]? = some (f i)) :
    loopFuel (multiplyBody factors) (n + 1)
      ({ start := ⟨start⟩, «end» := ⟨start + n⟩ }, product) =
      .ok (product * ∏ i ∈ Finset.range n, f (start + i)) := by
  induction n generalizing start product with
  | zero =>
      rw [loopFuel]
      simp [multiplyBody,
        ark_ip_proofs.tipa.polynomial_evaluation_product_form_from_transcript_loop1.body,
        core.iter.range.IteratorRange.next]
  | succ n ih =>
      have hlt : start < start + (n + 1) := by omega
      have hf0 := hf start (by omega) (by omega)
      rw [loopFuel]
      simp [multiplyBody, hlt, hf0, cloneModel, mulModel,
        ark_ip_proofs.alloc.vec.Vec.index,
        ark_ip_proofs.tipa.polynomial_evaluation_product_form_from_transcript_loop1.body,
        core.iter.range.IteratorRange.next]
      have hend : start + (n + 1) = (start + 1) + n := by omega
      rw [hend]
      simp only [Usize.ofNat]
      rw [ih (start := start + 1) (product := product * f start)]
      · rw [Finset.prod_range_succ']
        have htail :
            (∏ i ∈ Finset.range n, f (start + 1 + i)) =
              ∏ i ∈ Finset.range n, f (start + (i + 1)) := by
          apply Finset.prod_congr rfl
          intro i _
          congr 1
          omega
        rw [htail]
        ring_nf
      · intro i hi hlo
        apply hf i (by omega) (by omega)

private theorem multiplyLoop {F : Type} [Field F]
    (factors : alloc.vec.Vec F) (f : Nat → F) (product : F)
    (start n : Nat)
    (hf : ∀ i, start ≤ i → i < start + n → factors.val[i]? = some (f i)) :
    ark_ip_proofs.tipa.polynomial_evaluation_product_form_from_transcript_loop1
      (cloneModel F) (mulModel F)
      { start := ⟨start⟩, «end» := ⟨start + n⟩ } factors product =
      .ok (product * ∏ i ∈ Finset.range n, f (start + i)) := by
  unfold ark_ip_proofs.tipa.polynomial_evaluation_product_form_from_transcript_loop1
  apply loop_eq_of_fuel (fuel := n + 1) (by simp)
  exact multiplyFuel factors f product start n hf

private def factorProduct {F : Type} [Field F]
    (x : Nat → F) (power : F) (start : Nat) : Nat → F
  | 0 => 1
  | n + 1 => (1 + x start * power) *
      factorProduct x (power * power) (start + 1) n

private theorem factorList_prod {F : Type} [Field F]
    (x : Nat → F) (power : F) (start n : Nat) :
    (factorList x start power n).prod = factorProduct x power start n := by
  induction n generalizing start power with
  | zero => rfl
  | succ n ih => simp [factorList, factorProduct, ih]

private theorem prod_getD {F : Type} [Field F] (xs : List F) :
    (∏ i ∈ Finset.range xs.length, (xs[i]?).getD 0) = xs.prod := by
  induction xs with
  | nil => simp
  | cons head tail ih =>
      rw [List.length_cons, Finset.prod_range_succ']
      simp [ih, mul_comm]

private theorem factorProduct_pow {F : Type} [Field F]
    (x : Nat → F) (r : F) (start n : Nat) :
    factorProduct x (r ^ (2 ^ start)) start n =
      ∏ i ∈ Finset.range n, (1 + x (start + i) * r ^ (2 ^ (start + i))) := by
  induction n generalizing start with
  | zero => simp [factorProduct]
  | succ n ih =>
      rw [factorProduct, Finset.prod_range_succ']
      have hsq : r ^ (2 ^ start) * r ^ (2 ^ start) =
          r ^ (2 ^ (start + 1)) := by
        rw [← pow_add, pow_succ]
        simp only [Nat.mul_two]
      rw [hsq, ih (start := start + 1)]
      have htail :
          (∏ i ∈ Finset.range n,
            (1 + x (start + 1 + i) * r ^ (2 ^ (start + 1 + i)))) =
          ∏ i ∈ Finset.range n,
            (1 + x (start + (i + 1)) * r ^ (2 ^ (start + (i + 1)))) := by
        apply Finset.prod_congr rfl
        intro i _
        have hindex : start + 1 + i = start + (i + 1) := by omega
        rw [hindex]
      rw [htail]
      exact mul_comm _ _

/-- The extracted two-loop evaluation computes the transcript product at `z²`. -/
theorem hax_translated_polynomial_evaluation_product_form_eq
    {F : Type} [Field F] {μ : Nat} (x : Fin μ → F) (z rShift : F) :
    polynomial_evaluation_product_form_refinement_statement x z rShift := by
  unfold polynomial_evaluation_product_form_refinement_statement
  unfold ark_ip_proofs.tipa.polynomial_evaluation_product_form_from_transcript
  simp [cloneModel, mulModel]
  let xn : Nat → F := fun i => if h : i < μ then x ⟨i, h⟩ else 0
  let base := z * z * rShift
  have hbuild := buildLoop (finVec x) xn base 0 μ [] (by
    intro i _ hi
    have hi' : i < μ := by omega
    rw [show (finVec x).val[i]? = (List.ofFn x)[i]? by rfl,
      List.getElem?_ofFn, dif_pos hi']
    simp only [xn, dif_pos hi'])
  have hlen : ark_ip_proofs.alloc.vec.Vec.len (finVec x) = ⟨μ⟩ := by
    simp [ark_ip_proofs.alloc.vec.Vec.len, finVec]
  rw [hlen]
  simp only [Usize.ofNat]
  simp only [ark_ip_proofs.alloc.vec.Vec.new]
  have hbuild' := hbuild
  simp only [cloneModel, mulModel, base, Nat.zero_add, List.nil_append] at hbuild'
  rw [hbuild']
  simp [oneModel, ark_ip_proofs.alloc.vec.Vec.len]
  let factors := factorList xn 0 base μ
  let f : Nat → F := fun i => (factors[i]?).getD 0
  have hmultiply := multiplyLoop ⟨factors⟩ f 1 0 factors.length (by
    intro i _ hi
    have hi' : i < factors.length := by omega
    simp [f, List.getElem?_eq_getElem hi'])
  have hmultiply' := hmultiply
  simp only [cloneModel, mulModel, factors, base, Nat.zero_add] at hmultiply'
  rw [hmultiply']
  simp only [one_mul]
  have hrange : (∏ i ∈ Finset.range factors.length, f i) = factors.prod := by
    simpa [f] using prod_getD factors
  rw [hrange]
  simp only [Result.ok.injEq]
  change (factorList xn 0 base μ).prod = _
  rw [factorList_prod]
  have hbase : base = (rShift * z ^ 2) ^ (2 ^ 0) := by
    simp [base]
    ring
  rw [hbase, factorProduct_pow]
  rw [← Fin.prod_univ_eq_prod_range]
  apply Finset.prod_congr rfl
  intro i _
  simp [xn, i.isLt]
  have hpow : (rShift * z ^ 2) ^ (2 ^ (i : Nat)) =
      rShift ^ (2 ^ (i : Nat)) * (z ^ 2) ^ (2 ^ (i : Nat)) := by
    rw [mul_pow]
  rw [hpow]
  ring

/-- The extracted product is the coefficient polynomial evaluated at `z²`. -/
theorem hax_translated_polynomial_evaluation_product_form_eq_coefficients
    {F : Type} [Field F] {μ : Nat} (x : Fin μ → F) (z rShift : F) :
    ark_ip_proofs.tipa.polynomial_evaluation_product_form_from_transcript
        (cloneModel F) (oneModel F) (zeroModel F) (addModel F) (mulModel F)
        (finVec x) z rShift =
      .ok (∑ i : Fin (2 ^ μ), Ipp.transcriptCoeffs x rShift i *
        (z ^ 2) ^ (i : Nat)) := by
  rw [hax_translated_polynomial_evaluation_product_form_eq x z rShift]
  congr 2
  exact Ipp.transcript_prod_form_eval x rShift (z ^ 2)

end
end Ipp.Extracted
