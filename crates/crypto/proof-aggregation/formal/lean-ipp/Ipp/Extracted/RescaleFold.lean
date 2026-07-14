import Ipp.Extracted.RescaleFoldGenerated
import Ipp.Gipa

namespace Ipp.Extracted

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do

private def cloneModel (T : Type) : core.clone.Clone T where
  clone x := .ok x

private def addModel (T : Type) [Add T] :
    ark_ip_proofs.core.ops.arith.Add T T T where
  add x y := .ok (x + y)

private def smulAssignModel (F M : Type) [SMul F M] :
    ark_ip_proofs.core.ops.arith.MulAssign M F where
  mul_assign x s := .ok (s • x)

private def finSlice {T : Type} {n : ℕ} (v : Fin n → T) : Slice T :=
  ⟨List.ofFn v⟩

private def finVec {T : Type} {n : ℕ} (v : Fin n → T) : alloc.vec.Vec T :=
  ⟨List.ofFn v⟩

/- The exact S2-03 bridge goal. The extracted result is list-backed because the
   vendored runtime models Vec; the model side is the same finite vector. -/
def rescale_fold_refinement_statement
    {F M : Type} [Field F] [AddCommGroup M] [Module F M]
    {n : ℕ} (scaled_half unscaled_half : Fin n → M) (scalar : F) : Prop :=
  ark_ip_proofs.gipa.rescale_fold_inner
      (cloneModel M) (addModel M) (smulAssignModel F M) (cloneModel F)
      (finSlice scaled_half) (finSlice unscaled_half) scalar =
    .ok (finVec (Ipp.foldMsg scalar (Fin.addCases unscaled_half scaled_half)))

private def rescaleBody {F M : Type} [SMul F M] [Add M]
    (scaled unscaled : Slice M) (scalar : F) :
    (core.ops.range.Range × alloc.vec.Vec M) →
      Result (ControlFlow (core.ops.range.Range × alloc.vec.Vec M)
        (alloc.vec.Vec M)) :=
  fun (iter, folded) =>
    ark_ip_proofs.gipa.rescale_fold_inner_loop.body
      (cloneModel M) (addModel M) (smulAssignModel F M) (cloneModel F)
      scaled unscaled scalar iter folded

private theorem rescaleFuel {F M : Type} [Field F] [AddCommGroup M] [Module F M]
    (scaled unscaled : Slice M) (s u : Nat → M) (scalar : F)
    (start n : Nat) (xs : List M)
    (hs : ∀ i, start ≤ i → i < start + n → scaled.val[i]? = some (s i))
    (hu : ∀ i, start ≤ i → i < start + n → unscaled.val[i]? = some (u i)) :
    loopFuel (rescaleBody scaled unscaled scalar) (n + 1)
      ({ start := ⟨start⟩, «end» := ⟨start + n⟩ }, ⟨xs⟩) =
      .ok ⟨xs ++ (List.range' start n).map (fun i => scalar • s i + u i)⟩ := by
  induction n generalizing start xs with
  | zero =>
      rw [loopFuel]
      simp [rescaleBody,
        ark_ip_proofs.gipa.rescale_fold_inner_loop.body,
        core.iter.range.IteratorRange.next]
  | succ n ih =>
      have hlt : start < start + (n + 1) := by omega
      have hs0 := hs start (by omega) (by omega)
      have hu0 := hu start (by omega) (by omega)
      rw [loopFuel]
      simp [rescaleBody, hlt, hs0, hu0, cloneModel, addModel,
        smulAssignModel, ark_ip_proofs.mul_helper, Slice.index_usize,
        alloc.vec.Vec.push, ark_ip_proofs.gipa.rescale_fold_inner_loop.body,
        core.iter.range.IteratorRange.next]
      have hend : start + (n + 1) = (start + 1) + n := by omega
      rw [hend]
      simp only [Usize.ofNat]
      rw [ih (start := start + 1)
        (xs := xs ++ [scalar • s start + u start])]
      · simp [List.range'_succ, List.append_assoc]
      · intro i hi hlo
        apply hs i (by omega) (by omega)
      · intro i hi hlo
        apply hu i (by omega) (by omega)

private theorem rescaleLoop {F M : Type} [Field F] [AddCommGroup M] [Module F M]
    (scaled unscaled : Slice M) (s u : Nat → M) (scalar : F)
    (start n : Nat) (xs : List M)
    (hs : ∀ i, start ≤ i → i < start + n → scaled.val[i]? = some (s i))
    (hu : ∀ i, start ≤ i → i < start + n → unscaled.val[i]? = some (u i)) :
    ark_ip_proofs.gipa.rescale_fold_inner_loop
      (cloneModel M) (addModel M) (smulAssignModel F M) (cloneModel F)
      { start := ⟨start⟩, «end» := ⟨start + n⟩ }
      scaled unscaled scalar ⟨xs⟩ =
      .ok ⟨xs ++ (List.range' start n).map (fun i => scalar • s i + u i)⟩ := by
  unfold ark_ip_proofs.gipa.rescale_fold_inner_loop
  apply loop_eq_of_fuel (fuel := n + 1) (by simp)
  exact rescaleFuel scaled unscaled s u scalar start n xs hs hu

/-- The extracted rescale loop is the model's upper/lower message fold. -/
theorem hax_translated_rescale_fold_eq
    {F M : Type} [Field F] [AddCommGroup M] [Module F M]
    {n : Nat} (scaled unscaled : Fin n → M) (scalar : F) :
    rescale_fold_refinement_statement scaled unscaled scalar := by
  unfold rescale_fold_refinement_statement
  unfold ark_ip_proofs.gipa.rescale_fold_inner
  simp [alloc.vec.Vec.with_capacity]
  let s : Nat → M := fun i => if h : i < n then scaled ⟨i, h⟩ else 0
  let u : Nat → M := fun i => if h : i < n then unscaled ⟨i, h⟩ else 0
  have hrun := rescaleLoop (finSlice scaled) (finSlice unscaled) s u scalar 0 n []
    (by
      intro i _ hi
      have hi' : i < n := by omega
      rw [show (finSlice scaled).val[i]? = (List.ofFn scaled)[i]? by rfl,
        List.getElem?_ofFn, dif_pos hi']
      simp only [s, dif_pos hi'])
    (by
      intro i _ hi
      have hi' : i < n := by omega
      rw [show (finSlice unscaled).val[i]? = (List.ofFn unscaled)[i]? by rfl,
        List.getElem?_ofFn, dif_pos hi']
      simp only [u, dif_pos hi'])
  have hlen : Slice.len (finSlice scaled) = ⟨n⟩ := by
    simp [Slice.len, finSlice]
  rw [hlen]
  simp only [Usize.ofNat]
  change
    ark_ip_proofs.gipa.rescale_fold_inner_loop
      (cloneModel M) (addModel M) (smulAssignModel F M) (cloneModel F)
      { start := ⟨0⟩, «end» := ⟨n⟩ }
      (finSlice scaled) (finSlice unscaled) scalar ⟨[]⟩ = _
  simpa only [Nat.zero_add] using hrun.trans (by
    congr 2
    simp only [List.nil_append]
    apply List.ext_getElem?
    intro i
    rw [List.getElem?_ofFn]
    by_cases hi : i < n
    · simp only [List.range'_eq_map_range, List.getElem?_map,
        List.getElem?_range hi, Option.map_some, s, u, dif_pos hi]
      simp only [Nat.zero_add, dif_pos hi, Ipp.foldMsg,
        Fin.addCases_right, Fin.addCases_left]
    · simp [List.range'_eq_map_range, hi])

end Ipp.Extracted
