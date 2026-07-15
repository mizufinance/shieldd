import Ipp.Extracted.KzgVerifiersGenerated
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

private def smulModel (F G : Type) [SMul F G] :
    ark_ip_proofs.core.ops.arith.Mul G F G where
  mul x s := .ok (s • x)

private def subModel (G : Type) [Sub G] :
    ark_ip_proofs.core.ops.arith.Sub G G G where
  sub x y := .ok (x - y)

private def negModel (G : Type) [Neg G] :
    ark_ip_proofs.core.ops.arith.Neg G G where
  neg x := .ok (-x)

private def oneModel (T : Type) [One T] [Mul T] :
    ark_ip_proofs.num_traits.identities.One T where
  coreopsarithMulInst := mulModel T
  one := .ok 1

private def zeroModel (T : Type) [Zero T] [Add T] [DecidableEq T] :
    ark_ip_proofs.num_traits.identities.Zero T where
  coreopsarithAddInst := addModel T
  zero := .ok 0
  is_zero x := .ok (decide (x = 0))

/-- Interpret the extracted pairing effect by a bilinear map. `outcome state = none`
    models effect failure; success computes the ordered two-pairing sum. -/
private def pairingModel {F G1 G2 GT E : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (e : G1 →ₗ[F] G2 →ₗ[F] GT) (outcome : E → Option Unit) :
    ark_ip_proofs.tipa.PairingEffect E G1 G2 GT where
  multi_pairing state left right :=
    match outcome state with
    | none => .ok none
    | some () =>
        match left.val, right.val with
        | [left0, left1], [right0, right1] =>
            .ok (some (e left0 right0 + e left1 right1))
        | _, _ => .ok none

private def finVec {T : Type} {n : ℕ} (v : Fin n → T) :
    alloc.vec.Vec T :=
  ⟨List.ofFn v⟩

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

/-- The evaluator embedded in the current KZG core computes the transcript
    product form at `z²`. -/
theorem hax_translated_g2_kzg_product_evaluation
    {F : Type} [Field F] {μ : Nat} (x : Fin μ → F) (z rShift : F) :
    ark_ip_proofs.tipa.polynomial_evaluation_product_form_from_transcript
        (cloneModel F) (oneModel F) (addModel F) (mulModel F)
        (finVec x) z rShift =
      .ok (∏ j : Fin μ, (1 + (x j * rShift ^ (2 ^ (j : Nat))) *
        (z ^ 2) ^ (2 ^ (j : Nat)))) := by
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

/-- The same extracted evaluation is the `transcriptCoeffs` polynomial at `z²`. -/
theorem hax_translated_g2_kzg_product_evaluation_coefficients
    {F : Type} [Field F] {μ : Nat} (x : Fin μ → F) (z rShift : F) :
    ark_ip_proofs.tipa.polynomial_evaluation_product_form_from_transcript
        (cloneModel F) (oneModel F) (addModel F) (mulModel F)
        (finVec x) z rShift =
      .ok (∑ i : Fin (2 ^ μ), Ipp.transcriptCoeffs x rShift i *
        (z ^ 2) ^ (i : Nat)) := by
  rw [hax_translated_g2_kzg_product_evaluation x z rShift]
  congr 2
  exact Ipp.transcript_prod_form_eval x rShift (z ^ 2)

/-- The regenerated G2 equation kernel, including pairing-effect failure. -/
theorem hax_translated_verify_g2_kzg_eq
    {F G1 G2 GT E : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq GT]
    (e : G1 →ₗ[F] G2 →ₗ[F] GT) (outcome : E → Option Unit)
    (pairing : E) (g gBeta : G1) (h : G2) (key opening : G2) (eval z : F) :
    ark_ip_proofs.tipa.verify_commitment_key_g2_kzg_equation_core
        (cloneModel F) (cloneModel G1) (smulModel F G1) (subModel G1)
        (negModel G1) (cloneModel G2) (smulModel F G2) (subModel G2)
        (zeroModel GT) (pairingModel e outcome)
        { g, g_beta := gBeta, h, ck_final := key, ck_opening := opening,
          eval, z, _pairing_output := () } pairing =
      .ok (match outcome pairing with
        | none => false
        | some () => decide
            (e g (key - eval • h) - e (gBeta - z • g) opening = 0)) := by
  simp [ark_ip_proofs.tipa.verify_commitment_key_g2_kzg_equation_core,
    cloneModel, smulModel, subModel, negModel, zeroModel, pairingModel,
    ark_ip_proofs.Array.make, ark_ip_proofs.Array.to_slice]
  split <;> rename_i hout
  · rfl
  · unfold lift
    simp
    constructor <;> intro hEq <;>
      simpa [sub_eq_add_neg, add_assoc, add_comm, add_left_comm] using hEq

/-- The regenerated G2 equation core returns true exactly when its effect
    succeeds and the ordered `acceptV` equation holds. -/
theorem hax_translated_verify_g2_kzg_true_iff
    {F G1 G2 GT E : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq GT]
    (e : G1 →ₗ[F] G2 →ₗ[F] GT) (outcome : E → Option Unit)
    (pairing : E) (g gBeta : G1) (h : G2) (key opening : G2) (eval z : F) :
    ark_ip_proofs.tipa.verify_commitment_key_g2_kzg_equation_core
        (cloneModel F) (cloneModel G1) (smulModel F G1) (subModel G1)
        (negModel G1) (cloneModel G2) (smulModel F G2) (subModel G2)
        (zeroModel GT) (pairingModel e outcome)
        { g, g_beta := gBeta, h, ck_final := key, ck_opening := opening,
          eval, z, _pairing_output := () } pairing = .ok true ↔
      outcome pairing = some () ∧
        e g (key - eval • h) - e (gBeta - z • g) opening = 0 := by
  rw [hax_translated_verify_g2_kzg_eq]
  cases outcome pairing <;> simp

/-- The public G2 opening core composes transcript evaluation with the exact
    failure-aware `acceptV` Boolean. -/
theorem hax_translated_verify_g2_kzg_opening_eq
    {F G1 G2 GT E : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq GT] {μ : Nat}
    (e : G1 →ₗ[F] G2 →ₗ[F] GT) (outcome : E → Option Unit)
    (pairing : E) (x : Fin μ → F) (rShift z : F)
    (g gBeta : G1) (h : G2) (key opening : G2) :
    ark_ip_proofs.tipa.verify_commitment_key_g2_kzg_opening_core
        (cloneModel F) (oneModel F) (addModel F) (mulModel F)
        (cloneModel G1) (smulModel F G1) (subModel G1) (negModel G1)
        (cloneModel G2) (smulModel F G2) (subModel G2)
        (zeroModel GT) (pairingModel e outcome)
        g gBeta h key opening (finVec x) rShift z pairing =
      .ok (match outcome pairing with
        | none => false
        | some () => decide
            (e g (key -
                (∑ i : Fin (2 ^ μ), Ipp.transcriptCoeffs x rShift i *
                  (z ^ 2) ^ (i : Nat)) • h) -
              e (gBeta - z • g) opening = 0)) := by
  unfold ark_ip_proofs.tipa.verify_commitment_key_g2_kzg_opening_core
  rw [hax_translated_g2_kzg_product_evaluation_coefficients x z rShift]
  simp only [Result.bind_ok]
  simp only [cloneModel, Result.bind_ok]
  exact hax_translated_verify_g2_kzg_eq e outcome pairing g gBeta h key opening
    (∑ i : Fin (2 ^ μ), Ipp.transcriptCoeffs x rShift i *
      (z ^ 2) ^ (i : Nat)) z

/-- The extracted public G2 opening returns true exactly on successful pairing
    evaluation and the `acceptV` equation at the transcript polynomial value. -/
theorem hax_translated_verify_g2_kzg_opening_true_iff
    {F G1 G2 GT E : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq GT] {μ : Nat}
    (e : G1 →ₗ[F] G2 →ₗ[F] GT) (outcome : E → Option Unit)
    (pairing : E) (x : Fin μ → F) (rShift z : F)
    (g gBeta : G1) (h : G2) (key opening : G2) :
    ark_ip_proofs.tipa.verify_commitment_key_g2_kzg_opening_core
        (cloneModel F) (oneModel F) (addModel F) (mulModel F)
        (cloneModel G1) (smulModel F G1) (subModel G1) (negModel G1)
        (cloneModel G2) (smulModel F G2) (subModel G2)
        (zeroModel GT) (pairingModel e outcome)
        g gBeta h key opening (finVec x) rShift z pairing = .ok true ↔
      outcome pairing = some () ∧
        e g (key -
            (∑ i : Fin (2 ^ μ), Ipp.transcriptCoeffs x rShift i *
              (z ^ 2) ^ (i : Nat)) • h) -
          e (gBeta - z • g) opening = 0 := by
  rw [hax_translated_verify_g2_kzg_opening_eq]
  cases outcome pairing <;> simp

/-- The regenerated G1 equation kernel, including pairing-effect failure. -/
theorem hax_translated_verify_g1_kzg_eq
    {F G1 G2 GT E : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq GT]
    (e : G1 →ₗ[F] G2 →ₗ[F] GT) (outcome : E → Option Unit)
    (pairing : E) (g : G1) (hAlpha h : G2) (key opening : G1) (eval z : F) :
    ark_ip_proofs.tipa.verify_commitment_key_g1_kzg_equation_core
        (cloneModel F) (cloneModel G1) (smulModel F G1) (subModel G1)
        (negModel G1) (cloneModel G2) (smulModel F G2) (subModel G2)
        (zeroModel GT) (pairingModel e outcome)
        { g, h_alpha := hAlpha, h, ck_final := key, ck_opening := opening,
          eval, z, _pairing_output := () } pairing =
      .ok (match outcome pairing with
        | none => false
        | some () => decide
            (e (key - eval • g) h - e opening (hAlpha - z • h) = 0)) := by
  simp [ark_ip_proofs.tipa.verify_commitment_key_g1_kzg_equation_core,
    cloneModel, smulModel, subModel, negModel, zeroModel, pairingModel,
    ark_ip_proofs.Array.make, ark_ip_proofs.Array.to_slice]
  split <;> rename_i hout
  · rfl
  · unfold lift
    simp
    constructor <;> intro hEq <;>
      simpa [sub_eq_add_neg, add_assoc, add_comm, add_left_comm] using hEq

/-- The regenerated G1 equation core returns true exactly when its effect
    succeeds and the ordered `acceptW` equation holds. -/
theorem hax_translated_verify_g1_kzg_true_iff
    {F G1 G2 GT E : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq GT]
    (e : G1 →ₗ[F] G2 →ₗ[F] GT) (outcome : E → Option Unit)
    (pairing : E) (g : G1) (hAlpha h : G2) (key opening : G1) (eval z : F) :
    ark_ip_proofs.tipa.verify_commitment_key_g1_kzg_equation_core
        (cloneModel F) (cloneModel G1) (smulModel F G1) (subModel G1)
        (negModel G1) (cloneModel G2) (smulModel F G2) (subModel G2)
        (zeroModel GT) (pairingModel e outcome)
        { g, h_alpha := hAlpha, h, ck_final := key, ck_opening := opening,
          eval, z, _pairing_output := () } pairing = .ok true ↔
      outcome pairing = some () ∧
        e (key - eval • g) h - e opening (hAlpha - z • h) = 0 := by
  rw [hax_translated_verify_g1_kzg_eq]
  cases outcome pairing <;> simp

/-- The public G1 opening core composes the inverse-transcript evaluation with
    the exact failure-aware `acceptW` Boolean. -/
theorem hax_translated_verify_g1_kzg_opening_eq
    {F G1 G2 GT E : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq GT] {μ : Nat}
    (e : G1 →ₗ[F] G2 →ₗ[F] GT) (outcome : E → Option Unit)
    (pairing : E) (xInv : Fin μ → F) (rShift z : F)
    (g : G1) (hAlpha h : G2) (key opening : G1) :
    ark_ip_proofs.tipa.verify_commitment_key_g1_kzg_opening_core
        (cloneModel F) (oneModel F) (addModel F) (mulModel F)
        (cloneModel G1) (smulModel F G1) (subModel G1) (negModel G1)
        (cloneModel G2) (smulModel F G2) (subModel G2)
        (zeroModel GT) (pairingModel e outcome)
        g hAlpha h key opening (finVec xInv) rShift z pairing =
      .ok (match outcome pairing with
        | none => false
        | some () => decide
            (e (key -
                (∑ i : Fin (2 ^ μ), Ipp.transcriptCoeffs xInv rShift i *
                  (z ^ 2) ^ (i : Nat)) • g) h -
              e opening (hAlpha - z • h) = 0)) := by
  unfold ark_ip_proofs.tipa.verify_commitment_key_g1_kzg_opening_core
  rw [hax_translated_g2_kzg_product_evaluation_coefficients xInv z rShift]
  simp only [Result.bind_ok]
  simp only [cloneModel, Result.bind_ok]
  exact hax_translated_verify_g1_kzg_eq e outcome pairing g hAlpha h key opening
    (∑ i : Fin (2 ^ μ), Ipp.transcriptCoeffs xInv rShift i *
      (z ^ 2) ^ (i : Nat)) z

/-- The extracted public G1 opening returns true exactly on successful pairing
    evaluation and the `acceptW` equation at the inverse-transcript polynomial. -/
theorem hax_translated_verify_g1_kzg_opening_true_iff
    {F G1 G2 GT E : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq GT] {μ : Nat}
    (e : G1 →ₗ[F] G2 →ₗ[F] GT) (outcome : E → Option Unit)
    (pairing : E) (xInv : Fin μ → F) (rShift z : F)
    (g : G1) (hAlpha h : G2) (key opening : G1) :
    ark_ip_proofs.tipa.verify_commitment_key_g1_kzg_opening_core
        (cloneModel F) (oneModel F) (addModel F) (mulModel F)
        (cloneModel G1) (smulModel F G1) (subModel G1) (negModel G1)
        (cloneModel G2) (smulModel F G2) (subModel G2)
        (zeroModel GT) (pairingModel e outcome)
        g hAlpha h key opening (finVec xInv) rShift z pairing = .ok true ↔
      outcome pairing = some () ∧
        e (key -
            (∑ i : Fin (2 ^ μ), Ipp.transcriptCoeffs xInv rShift i *
              (z ^ 2) ^ (i : Nat)) • g) h -
          e opening (hAlpha - z • h) = 0 := by
  rw [hax_translated_verify_g1_kzg_opening_eq]
  cases outcome pairing <;> simp

#print axioms hax_translated_g2_kzg_product_evaluation_coefficients
#print axioms hax_translated_verify_g2_kzg_eq
#print axioms hax_translated_verify_g2_kzg_opening_true_iff
#print axioms hax_translated_verify_g1_kzg_eq
#print axioms hax_translated_verify_g1_kzg_opening_true_iff

end
end Ipp.Extracted
