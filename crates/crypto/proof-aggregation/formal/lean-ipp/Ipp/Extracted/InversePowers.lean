import Ipp.Extracted.InversePowersGenerated
import Ipp.FsGame

namespace Ipp.Extracted

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do

private def cloneModel (T : Type) : core.clone.Clone T where
  clone x := .ok x

private def mulModel (T : Type) [Mul T] :
    ark_ip_proofs.core.ops.arith.Mul T T T where
  mul x y := .ok (x * y)

private def oneModel (T : Type) [One T] [Mul T] :
    ark_ip_proofs.num_traits.identities.One T where
  coreopsarithMulInst := mulModel T
  one := .ok 1

private def finVec {T : Type} {n : ℕ} (v : Fin n → T) : alloc.vec.Vec T :=
  ⟨List.ofFn v⟩

def inverse_powers_refinement_statement
    {F : Type} [Field F] {n : ℕ} (rInv : F) : Prop :=
  ark_ip_proofs.applications.groth16_aggregation.inverse_powers_with_inverse
      (cloneModel F) (oneModel F) (mulModel F) ⟨n⟩ rInv =
    .ok (finVec (fun i : Fin n => rInv ^ (i : ℕ)))

def inverse_powers_nonzero_refinement_statement
    {F : Type} [Field F] {n : ℕ} (r : F) (hr : r ≠ 0) : Prop :=
  inverse_powers_refinement_statement (n := n) (r⁻¹)

private def inverseBody {F : Type} [Mul F] (r : F) :
    (core.ops.range.Range × alloc.vec.Vec F × F) →
      Result (ControlFlow (core.ops.range.Range × alloc.vec.Vec F × F)
        (alloc.vec.Vec F)) :=
  fun (iter, powers, current) =>
    ark_ip_proofs.applications.groth16_aggregation.inverse_powers_with_inverse_loop.body
      (cloneModel F) (mulModel F) r iter powers current

private def powerList {F : Type} [Mul F] (current r : F) : Nat → List F
  | 0 => []
  | n + 1 => current :: powerList (current * r) r n

private theorem inverseFuel {F : Type} [Field F] (r : F)
    (start n : Nat) (xs : List F) (current : F) :
    loopFuel (inverseBody r) (n + 1)
      ({ start := ⟨start⟩, «end» := ⟨start + n⟩ }, ⟨xs⟩, current) =
      .ok ⟨xs ++ powerList current r n⟩ := by
  induction n generalizing start xs current with
  | zero =>
      rw [loopFuel]
      simp [inverseBody, cloneModel, mulModel, alloc.vec.Vec.push, powerList,
        ark_ip_proofs.applications.groth16_aggregation.inverse_powers_with_inverse_loop.body,
        core.iter.range.IteratorRange.next]
  | succ n ih =>
      have hlt : start < start + (n + 1) := by omega
      rw [loopFuel]
      simp [inverseBody, cloneModel, mulModel, alloc.vec.Vec.push, hlt,
        ark_ip_proofs.applications.groth16_aggregation.inverse_powers_with_inverse_loop.body,
        core.iter.range.IteratorRange.next]
      have hend : start + (n + 1) = (start + 1) + n := by omega
      rw [hend]
      simp only [Usize.ofNat]
      rw [ih (start := start + 1) (xs := xs ++ [current])
        (current := current * r)]
      simp [powerList, List.append_assoc]

private theorem inverseLoop {F : Type} [Field F] (r : F)
    (start n : Nat) (xs : List F) (current : F) :
    ark_ip_proofs.applications.groth16_aggregation.inverse_powers_with_inverse_loop
      (cloneModel F) (mulModel F)
      { start := ⟨start⟩, «end» := ⟨start + n⟩ } r ⟨xs⟩ current =
      .ok ⟨xs ++ powerList current r n⟩ := by
  unfold ark_ip_proofs.applications.groth16_aggregation.inverse_powers_with_inverse_loop
  apply loop_eq_of_fuel (fuel := n + 1) (by simp)
  exact inverseFuel r start n xs current

private theorem powerList_eq {F : Type} [Field F] (current r : F) (n : Nat) :
    powerList current r n =
      List.ofFn (fun i : Fin n => current * r ^ (i : Nat)) := by
  induction n generalizing current with
  | zero => rfl
  | succ n ih =>
      rw [powerList, List.ofFn_succ, ih]
      congr 1
      · simp
      · apply congrArg List.ofFn
        funext i
        change current * r * r ^ (i : Nat) = current * r ^ ((i : Nat) + 1)
        rw [pow_succ]
        ring

/-- The extracted loop constructs exactly the finite inverse-power vector. -/
theorem hax_translated_inverse_powers_eq
    {F : Type} [Field F] {n : Nat} (rInv : F) :
    inverse_powers_refinement_statement (n := n) rInv := by
  unfold inverse_powers_refinement_statement
  unfold ark_ip_proofs.applications.groth16_aggregation.inverse_powers_with_inverse
  simp [oneModel, alloc.vec.Vec.with_capacity]
  simpa [Usize.ofNat, finVec, powerList_eq] using
    (inverseLoop rInv 0 n [] 1)

theorem hax_translated_inverse_powers_nonzero_eq
    {F : Type} [Field F] {n : Nat} (r : F) (hr : r ≠ 0) :
    inverse_powers_nonzero_refinement_statement (n := n) r hr :=
  hax_translated_inverse_powers_eq r⁻¹

end Ipp.Extracted
