import Ipp.Extracted.VerifyTippMippGenerated
import Ipp.FsGame

namespace Ipp.Extracted

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do
open scoped BigOperators

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

private def finSlice {T : Type} {n : ℕ} (v : Fin n → T) : Slice T :=
  ⟨List.ofFn v⟩

/- Exact S2-11 bridge statement. The Rust input is the already reversed raw
   transcript; the model receives the explicit reversed chronology. -/
def structured_scalar_final_refinement_statement
    {F : Type} [Field F] {μ : ℕ} (x : Fin μ → F) (r : F) : Prop :=
  ark_ip_proofs.applications.groth16_aggregation.structured_scalar_final_from_raw_transcript_inner
      (cloneModel F) (oneModel F) (addModel F) (mulModel F)
      (finSlice (Ipp.reversedView x)) r =
    .ok (Ipp.terminalR r (Ipp.reversedView x))

private def structuredBody {F : Type} [Field F]
    (product : F) (transcript : Slice F) :
    (core.ops.range.Range × F × F) →
      Result (ControlFlow (core.ops.range.Range × F × F) F) :=
  fun (iter, power, acc) =>
    ark_ip_proofs.applications.groth16_aggregation.structured_scalar_final_from_raw_transcript_inner_loop.body
      (cloneModel F) (addModel F) (mulModel F) product transcript iter power acc

private def factorProduct {F : Type} [Field F]
    (x : Nat → F) (product power : F) (start : Nat) : Nat → F
  | 0 => 1
  | n + 1 => (product + x start * power) *
      factorProduct x product (power * power) (start + 1) n

private theorem structuredFuel {F : Type} [Field F]
    (transcript : Slice F) (x : Nat → F) (product power acc : F)
    (start n : Nat)
    (hx : ∀ i, start ≤ i → i < start + n → transcript.val[i]? = some (x i)) :
    loopFuel (structuredBody product transcript) (n + 1)
      ({ start := ⟨start⟩, «end» := ⟨start + n⟩ }, power, acc) =
      .ok (acc * factorProduct x product power start n) := by
  induction n generalizing start power acc with
  | zero =>
      rw [loopFuel]
      simp [structuredBody, factorProduct,
        ark_ip_proofs.applications.groth16_aggregation.structured_scalar_final_from_raw_transcript_inner_loop.body,
        core.iter.range.IteratorRange.next]
  | succ n ih =>
      have hlt : start < start + (n + 1) := by omega
      have hx0 := hx start (by omega) (by omega)
      rw [loopFuel]
      simp [structuredBody, hlt, hx0, cloneModel, addModel, mulModel,
        Slice.index_usize,
        ark_ip_proofs.applications.groth16_aggregation.structured_scalar_final_from_raw_transcript_inner_loop.body,
        core.iter.range.IteratorRange.next]
      have hend : start + (n + 1) = (start + 1) + n := by omega
      rw [hend]
      simp only [Usize.ofNat]
      rw [ih (start := start + 1) (power := power * power)
        (acc := acc * (product + x start * power))]
      · simp [factorProduct, mul_assoc]
      · intro i hi hlo
        apply hx i (by omega) (by omega)

private theorem structuredLoop {F : Type} [Field F]
    (transcript : Slice F) (x : Nat → F) (product power acc : F)
    (start n : Nat)
    (hx : ∀ i, start ≤ i → i < start + n → transcript.val[i]? = some (x i)) :
    ark_ip_proofs.applications.groth16_aggregation.structured_scalar_final_from_raw_transcript_inner_loop
      (cloneModel F) (addModel F) (mulModel F) product
      { start := ⟨start⟩, «end» := ⟨start + n⟩ } transcript power acc =
      .ok (acc * factorProduct x product power start n) := by
  unfold ark_ip_proofs.applications.groth16_aggregation.structured_scalar_final_from_raw_transcript_inner_loop
  apply loop_eq_of_fuel (fuel := n + 1) (by simp)
  exact structuredFuel transcript x product power acc start n hx

private theorem factorProduct_pow {F : Type} [Field F]
    (x : Nat → F) (product r : F) (start n : Nat) :
    factorProduct x product (r ^ (2 ^ start)) start n =
      ∏ i ∈ Finset.range n,
        (product + x (start + i) * r ^ (2 ^ (start + i))) := by
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
            (product + x (start + 1 + i) * r ^ (2 ^ (start + 1 + i)))) =
          ∏ i ∈ Finset.range n,
            (product + x (start + (i + 1)) * r ^ (2 ^ (start + (i + 1)))) := by
        apply Finset.prod_congr rfl
        intro i _
        have hindex : start + 1 + i = start + (i + 1) := by omega
        rw [hindex]
      rw [htail]
      exact mul_comm _ _

private theorem factorProduct_fin {F : Type} [Field F]
    {n : Nat} (x : Fin n → F) (r : F) :
    factorProduct
      (fun i => if h : i < n then x ⟨i, h⟩ else 0) 1 r 0 n =
      ∏ i : Fin n, (1 + x i * r ^ (2 ^ (i : Nat))) := by
  calc
    factorProduct
        (fun i => if h : i < n then x ⟨i, h⟩ else 0) 1 r 0 n =
        ∏ i ∈ Finset.range n,
          (1 + (if h : i < n then x ⟨i, h⟩ else 0) * r ^ (2 ^ i)) := by
      simpa using (factorProduct_pow
        (fun i => if h : i < n then x ⟨i, h⟩ else 0) 1 r 0 n)
    _ = ∏ i : Fin n, (1 + x i * r ^ (2 ^ (i : Nat))) := by
      rw [← Fin.prod_univ_eq_prod_range]
      apply Finset.prod_congr rfl
      intro i _
      simp [i.isLt]

/-- The extracted structured-scalar loop is exactly `terminalR`. -/
theorem hax_translated_structured_scalar_final_eq
    {F : Type} [Field F] {μ : Nat} (x : Fin μ → F) (r : F) :
    structured_scalar_final_refinement_statement x r := by
  unfold structured_scalar_final_refinement_statement
  unfold ark_ip_proofs.applications.groth16_aggregation.structured_scalar_final_from_raw_transcript_inner
  simp [cloneModel, oneModel]
  let xr := Ipp.reversedView x
  let xn : Nat → F := fun i => if h : i < μ then xr ⟨i, h⟩ else 0
  have hrun := structuredLoop (finSlice xr) xn 1 r 1 0 μ (by
    intro i _ hi
    have hi' : i < μ := by omega
    rw [show (finSlice xr).val[i]? = (List.ofFn xr)[i]? by rfl,
      List.getElem?_ofFn, dif_pos hi']
    simp only [xn, dif_pos hi'])
  have hlen : Slice.len (finSlice xr) = ⟨μ⟩ := by
    simp [Slice.len, finSlice]
  rw [hlen]
  simp only [Usize.ofNat]
  change
    ark_ip_proofs.applications.groth16_aggregation.structured_scalar_final_from_raw_transcript_inner_loop
      (cloneModel F) (addModel F) (mulModel F) 1
      { start := ⟨0⟩, «end» := ⟨μ⟩ } (finSlice xr) r 1 = _
  simpa [Nat.zero_add, Ipp.terminalR, xr, xn, factorProduct_fin] using hrun

end Ipp.Extracted
