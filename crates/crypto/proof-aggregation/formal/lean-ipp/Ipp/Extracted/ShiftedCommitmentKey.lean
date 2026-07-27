import Ipp.Extracted.ShiftedCommitmentKeyGenerated
import Ipp.Algebra

namespace Ipp.Extracted

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do

private def copyModel (T : Type) :
    ark_ip_proofs.core.marker.Copy T := ⟨⟩

private def mulModel (F G : Type) [SMul F G] :
    ark_ip_proofs.core.ops.arith.Mul G F G where
  mul x s := .ok (s • x)

private def finSlice {T : Type} {n : ℕ} (v : Fin n → T) : Slice T :=
  ⟨List.ofFn v⟩

private def finVec {T : Type} {n : ℕ} (v : Fin n → T) : alloc.vec.Vec T :=
  ⟨List.ofFn v⟩

def shifted_commitment_key_refinement_statement
    {F G : Type} [Field F] [AddCommGroup G] [Module F G]
    {n : ℕ} (ck : Fin n → G) (powers : Fin n → F) : Prop :=
  ark_ip_proofs.applications.groth16_aggregation.build_shifted_ck_2_inner
      (copyModel G) (mulModel F G) (copyModel F)
      (finSlice ck) (finSlice powers) =
    .ok (finVec (fun i => powers i • ck i))

private def shiftedBody {F G : Type} [SMul F G]
    (ck : Slice G) (powers : Slice F) :
    (core.ops.range.Range × alloc.vec.Vec G) →
      Result (ControlFlow (core.ops.range.Range × alloc.vec.Vec G)
        (alloc.vec.Vec G)) :=
  fun (iter, shifted) =>
    ark_ip_proofs.applications.groth16_aggregation.build_shifted_ck_2_inner_loop.body
      (mulModel F G) ck powers iter shifted

private theorem shiftedFuel {F G : Type} [Field F] [AddCommGroup G] [Module F G]
    (ck : Slice G) (powers : Slice F) (c : Nat → G) (p : Nat → F)
    (start n : Nat) (xs : List G)
    (hck : ∀ i, start ≤ i → i < start + n → ck.val[i]? = some (c i))
    (hp : ∀ i, start ≤ i → i < start + n → powers.val[i]? = some (p i)) :
    loopFuel (shiftedBody ck powers) (n + 1)
      ({ start := ⟨start⟩, «end» := ⟨start + n⟩ }, ⟨xs⟩) =
      .ok ⟨xs ++ (List.range' start n).map (fun i => p i • c i)⟩ := by
  induction n generalizing start xs with
  | zero =>
      rw [loopFuel]
      simp [shiftedBody,
        ark_ip_proofs.applications.groth16_aggregation.build_shifted_ck_2_inner_loop.body,
        core.iter.range.IteratorRange.next]
  | succ n ih =>
      have hlt : start < start + (n + 1) := by omega
      have hck0 := hck start (by omega) (by omega)
      have hp0 := hp start (by omega) (by omega)
      rw [loopFuel]
      simp [shiftedBody, hlt, hck0, hp0, mulModel, Slice.index_usize,
        alloc.vec.Vec.push,
        ark_ip_proofs.applications.groth16_aggregation.build_shifted_ck_2_inner_loop.body,
        core.iter.range.IteratorRange.next]
      have hend : start + (n + 1) = (start + 1) + n := by omega
      rw [hend]
      simp only [Usize.ofNat]
      rw [ih (start := start + 1) (xs := xs ++ [p start • c start])]
      · simp [List.range'_succ, List.append_assoc]
      · intro i hi hlo
        apply hck i (by omega) (by omega)
      · intro i hi hlo
        apply hp i (by omega) (by omega)

private theorem shiftedLoop {F G : Type} [Field F] [AddCommGroup G] [Module F G]
    (ck : Slice G) (powers : Slice F) (c : Nat → G) (p : Nat → F)
    (start n : Nat) (xs : List G)
    (hck : ∀ i, start ≤ i → i < start + n → ck.val[i]? = some (c i))
    (hp : ∀ i, start ≤ i → i < start + n → powers.val[i]? = some (p i)) :
    ark_ip_proofs.applications.groth16_aggregation.build_shifted_ck_2_inner_loop
      (mulModel F G) { start := ⟨start⟩, «end» := ⟨start + n⟩ }
      ck powers ⟨xs⟩ =
      .ok ⟨xs ++ (List.range' start n).map (fun i => p i • c i)⟩ := by
  unfold ark_ip_proofs.applications.groth16_aggregation.build_shifted_ck_2_inner_loop
  apply loop_eq_of_fuel (fuel := n + 1) (by simp)
  exact shiftedFuel ck powers c p start n xs hck hp

/-- The extracted paired-slice loop computes pointwise scalar multiplication. -/
theorem hax_translated_shifted_commitment_key_eq
    {F G : Type} [Field F] [AddCommGroup G] [Module F G]
    {n : Nat} (ck : Fin n → G) (powers : Fin n → F) :
    shifted_commitment_key_refinement_statement ck powers := by
  unfold shifted_commitment_key_refinement_statement
  unfold ark_ip_proofs.applications.groth16_aggregation.build_shifted_ck_2_inner
  simp [alloc.vec.Vec.with_capacity]
  let c : Nat → G := fun i => if h : i < n then ck ⟨i, h⟩ else 0
  let p : Nat → F := fun i => if h : i < n then powers ⟨i, h⟩ else 0
  have hrun := shiftedLoop (finSlice ck) (finSlice powers) c p 0 n []
    (by
      intro i _ hi
      have hi' : i < n := by omega
      rw [show (finSlice ck).val[i]? = (List.ofFn ck)[i]? by rfl,
        List.getElem?_ofFn, dif_pos hi']
      simp only [c, dif_pos hi'])
    (by
      intro i _ hi
      have hi' : i < n := by omega
      rw [show (finSlice powers).val[i]? = (List.ofFn powers)[i]? by rfl,
        List.getElem?_ofFn, dif_pos hi']
      simp only [p, dif_pos hi'])
  have hlen : Slice.len (finSlice ck) = ⟨n⟩ := by
    simp [Slice.len, finSlice]
  rw [hlen]
  simp only [Usize.ofNat]
  change
    ark_ip_proofs.applications.groth16_aggregation.build_shifted_ck_2_inner_loop
      (mulModel F G) { start := ⟨0⟩, «end» := ⟨n⟩ }
      (finSlice ck) (finSlice powers) ⟨[]⟩ = _
  simpa only [Nat.zero_add] using hrun.trans (by
    congr 2
    simp only [List.nil_append]
    apply List.ext_getElem?
    intro i
    rw [List.getElem?_ofFn]
    by_cases hi : i < n
    · simp [List.range'_eq_map_range, c, p, hi]
    · simp [List.range'_eq_map_range, hi])

end Ipp.Extracted
