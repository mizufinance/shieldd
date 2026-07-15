import Ipp.Extracted.Groth16VerifierGenerated
import Ipp.FsGame

namespace Ipp.Extracted

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do
open scoped BigOperators

noncomputable section

/- The executed PPE and aggregate path currently stop in Aeneas at the
   arkworks Pairing/PairingOutput associated-type group. These statements keep
   the exact refinement boundary without introducing a pairing or verifier
   result axiom. -/

private def cloneModel (T : Type) : core.clone.Clone T where
  clone value := .ok value

private theorem cloneModel_clone {T : Type} (value : T) :
    (cloneModel T).clone value = .ok value := rfl

private noncomputable def partialEqModel (T : Type) :
    ark_ip_proofs.core.cmp.PartialEq T T where
  eq left right := by
    letI := Classical.decEq T
    exact .ok (decide (left = right))

private def fromU64Model (F : Type) [NatCast F] :
    ark_ip_proofs.core.convert.From F Std.U64 where
  «from» value := .ok value.val

private def addModel (T : Type) [Add T] :
    ark_ip_proofs.core.ops.arith.Add T T T where
  add left right := .ok (left + right)

private def subModel (T : Type) [Sub T] :
    ark_ip_proofs.core.ops.arith.Sub T T T where
  sub left right := .ok (left - right)

private def mulModel (T : Type) [Mul T] :
    ark_ip_proofs.core.ops.arith.Mul T T T where
  mul left right := .ok (left * right)

private def divModel (T : Type) [Div T] :
    ark_ip_proofs.core.ops.arith.Div T T T where
  div left right := .ok (left / right)

private def oneModel (T : Type) [One T] [Mul T] :
    ark_ip_proofs.num_traits.identities.One T where
  coreopsarithMulInst := mulModel T
  one := .ok 1

private noncomputable def zeroModel (T : Type) [Zero T] [Add T] :
    ark_ip_proofs.num_traits.identities.Zero T where
  coreopsarithAddInst := addModel T
  zero := .ok 0
  is_zero value := by
    letI := Classical.decEq T
    exact .ok (decide (value = 0))

private def smulModel (F G : Type) [SMul F G] :
    ark_ip_proofs.core.ops.arith.Mul G F G where
  mul point scalar := .ok (scalar • point)

private def negModel (G : Type) [Neg G] :
    ark_ip_proofs.core.ops.arith.Neg G G where
  neg point := .ok (-point)

private theorem smulModel_mul {F G : Type} [SMul F G] (point : G) (scalar : F) :
    (smulModel F G).mul point scalar = .ok (scalar • point) := rfl

private def finSlice {T : Type} {n : ℕ} (values : Fin n → T) : Slice T :=
  ⟨List.ofFn values⟩

private def inputSlice {F : Type} {m n : ℕ}
    (inputs : Fin m → Fin n → F) : Slice (alloc.vec.Vec F) :=
  ⟨List.ofFn (fun i => ⟨List.ofFn (inputs i)⟩)⟩

private theorem updateAt_eq_set {T : Type} (items : List T) (index : ℕ) (value : T) :
    ark_ip_proofs.alloc.vec.Vec.updateAt items index value = items.set index value := by
  induction items generalizing index with
  | nil => simp [ark_ip_proofs.alloc.vec.Vec.updateAt]
  | cons item rest ih =>
      cases index <;> simp [ark_ip_proofs.alloc.vec.Vec.updateAt, ih]

private def validateBody {F : Type} (publicInputs : Slice (alloc.vec.Vec F))
    (arity : ℕ) : core.ops.range.Range → Result (ControlFlow core.ops.range.Range Unit) :=
  fun iter =>
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop0.body
      publicInputs ⟨arity⟩ iter

private theorem validateFuel {F : Type} {m n : ℕ}
    (inputs : Fin m → Fin n → F) (start count : ℕ)
    (hbound : start + count ≤ m) :
    loopFuel (validateBody (inputSlice inputs) n) (count + 1)
      { start := ⟨start⟩, «end» := ⟨start + count⟩ } = .ok () := by
  induction count generalizing start with
  | zero =>
      rw [loopFuel]
      simp [validateBody,
        ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop0.body,
        core.iter.range.IteratorRange.next]
  | succ count ih =>
      have hlt : start < start + (count + 1) := by omega
      have hstart : start < m := by omega
      rw [loopFuel]
      simp only [validateBody,
        ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop0.body,
        core.iter.range.IteratorRange.next, hlt, ↓reduceIte, inputSlice,
        Slice.index_usize, List.getElem?_ofFn, hstart, ↓reduceDIte,
        ark_ip_proofs.alloc.vec.Vec.len, List.length_ofFn,
        ark_ip_proofs.massert, Result.bind_ok]
      have hend : start + (count + 1) = (start + 1) + count := by omega
      rw [hend]
      exact ih (start + 1) (by omega)

private theorem validateLoop {F : Type} {m n : ℕ}
    (inputs : Fin m → Fin n → F) :
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop0
      { start := ⟨0⟩, «end» := ⟨m⟩ } (inputSlice inputs) ⟨n⟩ = .ok () := by
  unfold ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop0
  apply loop_eq_of_fuel (fuel := m + 1) (by simp)
  simpa [validateBody] using validateFuel inputs 0 m (by simp)

private theorem repeatValues_eq_replicate {T : Type} (value : T) (count : ℕ) :
    ark_ip_proofs.alloc.vec.repeat_values (cloneModel T) value count =
      .ok (List.replicate count value) := by
  induction count with
  | zero => rfl
  | succ count ih =>
      rw [ark_ip_proofs.alloc.vec.repeat_values]
      simp only [cloneModel, Result.bind_ok]
      have ih' := ih
      simp only [cloneModel] at ih'
      rw [ih']
      rfl

private theorem usizeSub (left right : Usize) :
    left - right = Result.ok ⟨left.val - right.val⟩ := rfl

private theorem usizeAdd (left right : Usize) :
    left + right = Result.ok ⟨left.val + right.val⟩ := rfl

private def powerVec {F : Type} [One F] [Pow F ℕ]
    (r : F) (m completed : ℕ) : alloc.vec.Vec F :=
  ⟨List.ofFn (fun i : Fin m => if (i : ℕ) < completed then r ^ (i : ℕ) else 1)⟩

private def powerBody {F : Type} [Mul F] (r : F) :
    (core.ops.range.Range × alloc.vec.Vec F) →
      Result (ControlFlow (core.ops.range.Range × alloc.vec.Vec F)
        (alloc.vec.Vec F)) :=
  fun (iter, powers) =>
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop1.body
      (cloneModel F) (mulModel F) r iter powers

private theorem powerFuel {F : Type} [Field F] (r : F) (m start count : ℕ)
    (hstart : 1 ≤ start) (hbound : start + count ≤ m) :
    loopFuel (powerBody r) (count + 1)
      ({ start := ⟨start⟩, «end» := ⟨start + count⟩ }, powerVec r m start) =
      .ok (powerVec r m (start + count)) := by
  induction count generalizing start with
  | zero =>
      rw [loopFuel]
      simp [powerBody, powerVec,
        ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop1.body,
        core.iter.range.IteratorRange.next]
  | succ count ih =>
      have hlt : start < start + (count + 1) := by omega
      have hindex : start < m := by omega
      have hprev : start - 1 < m := by omega
      have hprevDone : start - 1 < start := by omega
      rw [loopFuel]
      simp only [powerBody,
        ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop1.body,
        core.iter.range.IteratorRange.next, hlt, ↓reduceIte, Result.bind_ok,
        usizeSub, Usize.ofNat,
        ark_ip_proofs.alloc.vec.Vec.index, powerVec, List.getElem?_ofFn,
        hprev, ↓reduceDIte, hprevDone, cloneModel, mulModel,
        ark_ip_proofs.alloc.vec.Vec.index_mut, hindex]
      rw [updateAt_eq_set]
      have hset :
          (List.ofFn (fun i : Fin m =>
              if (i : ℕ) < start then r ^ (i : ℕ) else 1)).set start
              (r ^ (start - 1) * r) =
            (powerVec r m (start + 1)).val := by
        apply List.ext_getElem?
        intro i
        by_cases hi : i = start
        · subst i
          rw [List.getElem?_set_self (by simp; exact hindex)]
          simp [powerVec, hindex]
          calc
            r ^ (start - 1) * r = r ^ ((start - 1) + 1) :=
              (pow_succ r (start - 1)).symm
            _ = r ^ start := by congr 1; omega
        · by_cases him : i < m
          · rw [List.getElem?_set_ne (by omega)]
            simp [powerVec, him]
            by_cases his : i < start
            · simp [his, show i ≤ start by omega]
            · have hsi : start < i := by omega
              simp [his, show ¬i ≤ start by omega]
          · rw [List.getElem?_set_ne (by omega)]
            simp [powerVec, him]
      rw [hset]
      have hend : start + (count + 1) = (start + 1) + count := by omega
      rw [hend]
      exact ih (start + 1) (by omega) (by omega)

private theorem powerLoop1 {F : Type} [Field F] (r : F) (m : ℕ) (hm : 0 < m) :
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop1
      (cloneModel F) (mulModel F) { start := ⟨1⟩, «end» := ⟨m⟩ } r
      ⟨List.replicate m 1⟩ = .ok (powerVec r m m) := by
  have hinitial : (⟨List.replicate m 1⟩ : alloc.vec.Vec F) = powerVec r m 1 := by
    congr 1
    calc
      List.replicate m (1 : F) = List.ofFn (fun _ : Fin m => 1) := by
        apply List.ext_getElem <;> simp
      _ = (powerVec r m 1).val := by
        unfold powerVec
        congr 1
        funext i
        by_cases hi : (i : ℕ) = 0
        · simp [hi]
        · simp [show ¬(i : ℕ) < 1 by omega]
  rw [hinitial]
  unfold ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop1
  apply loop_eq_of_fuel (fuel := (m - 1) + 1) (by simp)
  simpa [powerBody, Nat.add_sub_of_le (show 1 ≤ m by omega)] using
    powerFuel r m 1 (m - 1) (by simp) (by omega)

private def weightedInput {F : Type} [Field F] {m n : ℕ}
    (inputs : Fin m → Fin n → F) (r : F) (rows : ℕ) (j : Fin n) : F :=
  ∑ i ∈ Finset.range rows,
    if hi : i < m then r ^ i * inputs ⟨i, hi⟩ j else 0

private def foldedVec {F : Type} [Field F] {m n : ℕ}
    (inputs : Fin m → Fin n → F) (r : F) (rows : ℕ) : alloc.vec.Vec F :=
  ⟨List.ofFn (fun j : Fin n => weightedInput inputs r rows j)⟩

private def foldingRowVec {F : Type} [Field F] {m n : ℕ}
    (inputs : Fin m → Fin n → F) (r : F) (row completed : ℕ) :
    alloc.vec.Vec F :=
  ⟨List.ofFn (fun j : Fin n =>
    if (j : ℕ) < completed then weightedInput inputs r (row + 1) j
    else weightedInput inputs r row j)⟩

private theorem weightedInput_succ {F : Type} [Field F] {m n : ℕ}
    (inputs : Fin m → Fin n → F) (r : F) (row : ℕ) (j : Fin n)
    (hrow : row < m) :
    weightedInput inputs r (row + 1) j =
      weightedInput inputs r row j + inputs ⟨row, hrow⟩ j * r ^ row := by
  rw [weightedInput, Finset.sum_range_succ]
  simp only [weightedInput, dif_pos hrow]
  congr 1
  exact mul_comm _ _

private def innerFoldBody {F : Type} [Field F] {m n : ℕ}
    (inputs : Fin m → Fin n → F) (r : F) (row : ℕ) :
    (core.ops.range.Range × alloc.vec.Vec F) →
      Result (ControlFlow (core.ops.range.Range × alloc.vec.Vec F)
        (alloc.vec.Vec F)) :=
  fun (iter, folded) =>
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop2_loop0.body
      (cloneModel F) (addModel F) (mulModel F) (inputSlice inputs)
      (powerVec r m m) ⟨row⟩ iter folded

private theorem innerFoldFuel {F : Type} [Field F] {m n : ℕ}
    (inputs : Fin m → Fin n → F) (r : F) (row start count : ℕ)
    (hrow : row < m) (hbound : start + count ≤ n) :
    loopFuel (innerFoldBody inputs r row) (count + 1)
      ({ start := ⟨start⟩, «end» := ⟨start + count⟩ },
        foldingRowVec inputs r row start) =
      .ok (foldingRowVec inputs r row (start + count)) := by
  induction count generalizing start with
  | zero =>
      rw [loopFuel]
      simp [innerFoldBody, foldingRowVec,
        ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop2_loop0.body,
        core.iter.range.IteratorRange.next]
  | succ count ih =>
      have hlt : start < start + (count + 1) := by omega
      have hinput : start < n := by omega
      rw [loopFuel]
      simp only [innerFoldBody,
        ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop2_loop0.body,
        core.iter.range.IteratorRange.next, hlt, ↓reduceIte, Result.bind_ok,
        inputSlice, Slice.index_usize, List.getElem?_ofFn, hrow, hinput,
        ↓reduceDIte, ark_ip_proofs.alloc.vec.Vec.index, powerVec,
        foldingRowVec, cloneModel,
        mulModel, addModel, ark_ip_proofs.alloc.vec.Vec.index_mut]
      rw [updateAt_eq_set]
      have hset :
          (List.ofFn (fun j : Fin n =>
            if (j : ℕ) < start then weightedInput inputs r (row + 1) j
            else weightedInput inputs r row j)).set start
              (weightedInput inputs r row ⟨start, hinput⟩ +
                inputs ⟨row, hrow⟩ ⟨start, hinput⟩ * r ^ row) =
            (foldingRowVec inputs r row (start + 1)).val := by
        apply List.ext_getElem?
        intro j
        by_cases hj : j = start
        · subst j
          rw [List.getElem?_set_self (by simp; exact hinput)]
          simp [foldingRowVec, hinput]
          symm
          exact weightedInput_succ inputs r row ⟨start, hinput⟩ hrow
        · rw [List.getElem?_set_ne (by omega)]
          by_cases hjn : j < n
          · simp only [foldingRowVec, List.getElem?_ofFn, hjn, ↓reduceDIte]
            by_cases hjs : j < start
            · rw [if_pos hjs, if_pos (by omega)]
            · have hsj : start < j := by omega
              rw [if_neg hjs, if_neg (by omega)]
          · simp [foldingRowVec, hjn]
      simp only [if_neg (Nat.lt_irrefl start)]
      rw [hset]
      have hend : start + (count + 1) = (start + 1) + count := by omega
      rw [hend]
      exact ih (start + 1) (by omega)

private theorem innerFoldLoop {F : Type} [Field F] {m n : ℕ}
    (inputs : Fin m → Fin n → F) (r : F) (row : ℕ) (hrow : row < m) :
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop2_loop0
      (cloneModel F) (addModel F) (mulModel F)
      { start := ⟨0⟩, «end» := ⟨n⟩ } (inputSlice inputs) (powerVec r m m)
      (foldedVec inputs r row) ⟨row⟩ = .ok (foldedVec inputs r (row + 1)) := by
  have hzero : foldedVec inputs r row = foldingRowVec inputs r row 0 := by
    apply congrArg alloc.vec.Vec.mk
    apply List.ext_getElem?
    intro j
    simp
  have hfull : foldingRowVec inputs r row n = foldedVec inputs r (row + 1) := by
    apply congrArg alloc.vec.Vec.mk
    apply List.ext_getElem?
    intro j
    simp
  rw [hzero]
  unfold ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop2_loop0
  apply loop_eq_of_fuel (fuel := n + 1) (by simp)
  simpa [innerFoldBody, hfull] using innerFoldFuel inputs r row 0 n hrow (by simp)

private def outerFoldBody {F : Type} [Field F] {m n : ℕ}
    (inputs : Fin m → Fin n → F) (r : F) :
    (core.ops.range.Range × alloc.vec.Vec F) →
      Result (ControlFlow (core.ops.range.Range × alloc.vec.Vec F)
        (alloc.vec.Vec F)) :=
  fun (iter, folded) =>
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop2.body
      (cloneModel F) (addModel F) (mulModel F) (inputSlice inputs) ⟨n⟩
      (powerVec r m m) iter folded

private theorem outerFoldFuel {F : Type} [Field F] {m n : ℕ}
    (inputs : Fin m → Fin n → F) (r : F) (start count : ℕ)
    (hbound : start + count ≤ m) :
    loopFuel (outerFoldBody inputs r) (count + 1)
      ({ start := ⟨start⟩, «end» := ⟨start + count⟩ }, foldedVec inputs r start) =
      .ok (foldedVec inputs r (start + count)) := by
  induction count generalizing start with
  | zero =>
      rw [loopFuel]
      simp [outerFoldBody,
        ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop2.body,
        core.iter.range.IteratorRange.next]
  | succ count ih =>
      have hlt : start < start + (count + 1) := by omega
      have hrow : start < m := by omega
      rw [loopFuel]
      simp only [outerFoldBody,
        ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop2.body,
        core.iter.range.IteratorRange.next, hlt, ↓reduceIte, Result.bind_ok]
      simp only [Usize.ofNat]
      rw [innerFoldLoop inputs r start hrow]
      simp only [Result.bind_ok]
      have hend : start + (count + 1) = (start + 1) + count := by omega
      rw [hend]
      exact ih (start + 1) (by omega)

private theorem outerFoldLoop {F : Type} [Field F] {m n : ℕ}
    (inputs : Fin m → Fin n → F) (r : F) :
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop2
      (cloneModel F) (addModel F) (mulModel F)
      { start := ⟨0⟩, «end» := ⟨m⟩ } (inputSlice inputs) ⟨n⟩
      (powerVec r m m) (foldedVec inputs r 0) = .ok (foldedVec inputs r m) := by
  unfold ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop2
  apply loop_eq_of_fuel (fuel := m + 1) (by simp)
  simpa [outerFoldBody] using outerFoldFuel inputs r 0 m (by simp)

private theorem powerLoop5 {F : Type} [Field F] (r : F) (m : ℕ) (hm : 0 < m) :
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop5
      (cloneModel F) (mulModel F) { start := ⟨1⟩, «end» := ⟨m⟩ } r
      ⟨List.replicate m 1⟩ = .ok (powerVec r m m) := by
  simpa [
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop1,
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop5,
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop1.body,
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop5.body]
    using powerLoop1 r m hm

private theorem innerFoldLoop6 {F : Type} [Field F] {m n : ℕ}
    (inputs : Fin m → Fin n → F) (r : F) (row : ℕ) (hrow : row < m) :
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop6_loop0
      (cloneModel F) (addModel F) (mulModel F)
      { start := ⟨0⟩, «end» := ⟨n⟩ } (inputSlice inputs) (powerVec r m m)
      (foldedVec inputs r row) ⟨row⟩ = .ok (foldedVec inputs r (row + 1)) := by
  simpa [
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop2_loop0,
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop6_loop0,
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop2_loop0.body,
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop6_loop0.body]
    using innerFoldLoop inputs r row hrow

private def outerFoldBody6 {F : Type} [Field F] {m n : ℕ}
    (inputs : Fin m → Fin n → F) (r : F) :
    (core.ops.range.Range × alloc.vec.Vec F) →
      Result (ControlFlow (core.ops.range.Range × alloc.vec.Vec F)
        (alloc.vec.Vec F)) :=
  fun (iter, folded) =>
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop6.body
      (cloneModel F) (addModel F) (mulModel F) (inputSlice inputs) ⟨n⟩
      (powerVec r m m) iter folded

private theorem outerFoldFuel6 {F : Type} [Field F] {m n : ℕ}
    (inputs : Fin m → Fin n → F) (r : F) (start count : ℕ)
    (hbound : start + count ≤ m) :
    loopFuel (outerFoldBody6 inputs r) (count + 1)
      ({ start := ⟨start⟩, «end» := ⟨start + count⟩ }, foldedVec inputs r start) =
      .ok (foldedVec inputs r (start + count)) := by
  induction count generalizing start with
  | zero =>
      rw [loopFuel]
      simp [outerFoldBody6,
        ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop6.body,
        core.iter.range.IteratorRange.next]
  | succ count ih =>
      have hlt : start < start + (count + 1) := by omega
      have hrow : start < m := by omega
      rw [loopFuel]
      simp only [outerFoldBody6,
        ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop6.body,
        core.iter.range.IteratorRange.next, hlt, ↓reduceIte, Result.bind_ok,
        Usize.ofNat]
      rw [innerFoldLoop6 inputs r start hrow]
      simp only [Result.bind_ok]
      have hend : start + (count + 1) = (start + 1) + count := by omega
      rw [hend]
      exact ih (start + 1) (by omega)

private theorem outerFoldLoop6 {F : Type} [Field F] {m n : ℕ}
    (inputs : Fin m → Fin n → F) (r : F) :
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop6
      (cloneModel F) (addModel F) (mulModel F)
      { start := ⟨0⟩, «end» := ⟨m⟩ } (inputSlice inputs) ⟨n⟩
      (powerVec r m m) (foldedVec inputs r 0) = .ok (foldedVec inputs r m) := by
  unfold ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop6
  apply loop_eq_of_fuel (fuel := m + 1) (by simp)
  simpa [outerFoldBody6] using outerFoldFuel6 inputs r 0 m (by simp)

private def powerSumBody {F : Type} [Field F] (r : F) :
    (core.ops.range.Range × F) → Result (ControlFlow (core.ops.range.Range × F) F) :=
  fun (iter, power) =>
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop4.body
      (cloneModel F) (mulModel F) r iter power

private theorem powerSumFuel {F : Type} [Field F] (r : F) (start count : ℕ) :
    loopFuel (powerSumBody r) (count + 1)
      ({ start := ⟨start⟩, «end» := ⟨start + count⟩ }, r ^ start) =
      .ok (r ^ (start + count)) := by
  induction count generalizing start with
  | zero =>
      rw [loopFuel]
      simp [powerSumBody,
        ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop4.body,
        core.iter.range.IteratorRange.next]
  | succ count ih =>
      have hlt : start < start + (count + 1) := by omega
      rw [loopFuel]
      simp only [powerSumBody,
        ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop4.body,
        core.iter.range.IteratorRange.next, hlt, ↓reduceIte, cloneModel,
        mulModel, Result.bind_ok]
      rw [← pow_succ]
      have hend : start + (count + 1) = (start + 1) + count := by omega
      rw [hend]
      exact ih (start + 1)

private theorem powerSumLoop {F : Type} [Field F] (r : F) (m : ℕ) :
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop4
      (cloneModel F) (mulModel F) { start := ⟨0⟩, «end» := ⟨m⟩ } r 1 =
      .ok (r ^ m) := by
  unfold ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop4
  apply loop_eq_of_fuel (fuel := m + 1) (by simp)
  simpa [powerSumBody] using powerSumFuel r 0 m

private def gicPrefix {F G : Type} [Field F] [AddCommGroup G] [Module F G]
    {m n : ℕ} (gamma : Fin (n + 1) → G) (inputs : Fin m → Fin n → F)
    (r rSum : F) (count : ℕ) : G :=
  rSum • gamma 0 +
    ∑ j ∈ Finset.range count,
      if hj : j < n then weightedInput inputs r m ⟨j, hj⟩ • gamma (Fin.succ ⟨j, hj⟩)
      else 0

private def gicBody {F G : Type} [Field F] [AddCommGroup G] [Module F G]
    {m n : ℕ} (gamma : Fin (n + 1) → G) (inputs : Fin m → Fin n → F)
    (r : F) : (core.ops.range.Range × G) →
      Result (ControlFlow (core.ops.range.Range × G) G) :=
  fun (iter, gic) =>
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop3.body
      (cloneModel F) (cloneModel G) (addModel G) (smulModel F G)
      (finSlice gamma) (foldedVec inputs r m) iter gic

private theorem gicPrefix_succ {F G : Type} [Field F]
    [AddCommGroup G] [Module F G] {m n : ℕ}
    (gamma : Fin (n + 1) → G) (inputs : Fin m → Fin n → F)
    (r rSum : F) (count : ℕ) (hcount : count < n) :
    gicPrefix gamma inputs r rSum (count + 1) =
      gicPrefix gamma inputs r rSum count +
        weightedInput inputs r m ⟨count, hcount⟩ • gamma (Fin.succ ⟨count, hcount⟩) := by
  rw [gicPrefix, Finset.sum_range_succ]
  simp [gicPrefix, hcount, add_assoc]

private theorem gicFuel {F G : Type} [Field F]
    [AddCommGroup G] [Module F G] {m n : ℕ}
    (gamma : Fin (n + 1) → G) (inputs : Fin m → Fin n → F)
    (r rSum : F) (start count : ℕ) (hbound : start + count ≤ n) :
    loopFuel (gicBody gamma inputs r) (count + 1)
      ({ start := ⟨start⟩, «end» := ⟨start + count⟩ },
        gicPrefix gamma inputs r rSum start) =
      .ok (gicPrefix gamma inputs r rSum (start + count)) := by
  induction count generalizing start with
  | zero =>
      rw [loopFuel]
      simp [gicBody,
        ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop3.body,
        core.iter.range.IteratorRange.next]
  | succ count ih =>
      have hlt : start < start + (count + 1) := by omega
      have hinput : start < n := by omega
      rw [loopFuel]
      simp only [gicBody,
        ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop3.body,
        core.iter.range.IteratorRange.next, hlt, ↓reduceIte, Result.bind_ok,
        usizeAdd, Usize.ofNat, finSlice, Slice.index_usize,
        List.getElem?_ofFn, show start + 1 < n + 1 by omega, ↓reduceDIte,
        cloneModel, ark_ip_proofs.alloc.vec.Vec.index, foldedVec, hinput,
        smulModel, addModel]
      have hstep :
          gicPrefix gamma inputs r rSum start +
              weightedInput inputs r m ⟨start, hinput⟩ •
                gamma ⟨start + 1, by omega⟩ =
            gicPrefix gamma inputs r rSum (start + 1) := by
        symm
        convert gicPrefix_succ gamma inputs r rSum start hinput using 1
      rw [hstep]
      have hend : start + (count + 1) = (start + 1) + count := by omega
      rw [hend]
      exact ih (start + 1) (by omega)

private theorem gicLoop3 {F G : Type} [Field F]
    [AddCommGroup G] [Module F G] {m n : ℕ}
    (gamma : Fin (n + 1) → G) (inputs : Fin m → Fin n → F)
    (r rSum : F) :
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop3
      (cloneModel F) (cloneModel G) (addModel G) (smulModel F G)
      { start := ⟨0⟩, «end» := ⟨n⟩ } (finSlice gamma) (foldedVec inputs r m)
      (rSum • gamma 0) = .ok (gicPrefix gamma inputs r rSum n) := by
  have hzero : rSum • gamma 0 = gicPrefix gamma inputs r rSum 0 := by
    simp [gicPrefix]
  rw [hzero]
  unfold ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop3
  apply loop_eq_of_fuel (fuel := n + 1) (by simp)
  simpa [gicBody] using gicFuel gamma inputs r rSum 0 n (by simp)

private theorem gicLoop7 {F G : Type} [Field F]
    [AddCommGroup G] [Module F G] {m n : ℕ}
    (gamma : Fin (n + 1) → G) (inputs : Fin m → Fin n → F)
    (r rSum : F) :
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop7
      (cloneModel F) (cloneModel G) (addModel G) (smulModel F G)
      { start := ⟨0⟩, «end» := ⟨n⟩ } (finSlice gamma) (foldedVec inputs r m)
      (rSum • gamma 0) = .ok (gicPrefix gamma inputs r rSum n) := by
  simpa [
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop3,
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop7,
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop3.body,
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop7.body]
    using gicLoop3 gamma inputs r rSum

private theorem fromElem_eq_replicate {T : Type} (value : T) (count : ℕ) :
    ark_ip_proofs.alloc.vec.from_elem (cloneModel T) value ⟨count⟩ =
      .ok ⟨List.replicate count value⟩ := by
  unfold ark_ip_proofs.alloc.vec.from_elem
  rw [repeatValues_eq_replicate]
  rfl

private theorem zeroFoldedVec {F : Type} [Field F] {m n : ℕ}
    (inputs : Fin m → Fin n → F) (r : F) :
    (⟨List.replicate n 0⟩ : alloc.vec.Vec F) = foldedVec inputs r 0 := by
  apply congrArg alloc.vec.Vec.mk
  apply List.ext_getElem?
  intro j
  simp [weightedInput]

private theorem weightedInput_full {F : Type} [Field F] {m n : ℕ}
    (inputs : Fin m → Fin n → F) (r : F) (j : Fin n) :
    weightedInput inputs r m j = ∑ i : Fin m, r ^ (i : ℕ) * inputs i j := by
  unfold weightedInput
  rw [← Fin.sum_univ_eq_sum_range]
  simp

private theorem gicPrefix_full {F G : Type} [Field F]
    [AddCommGroup G] [Module F G] {m n : ℕ}
    (gamma : Fin (n + 1) → G) (inputs : Fin m → Fin n → F)
    (r rSum : F) :
    gicPrefix gamma inputs r rSum n =
      rSum • gamma 0 +
        ∑ j : Fin n,
          (∑ i : Fin m, r ^ (i : ℕ) * inputs i j) • gamma (Fin.succ j) := by
  unfold gicPrefix
  rw [← Fin.sum_univ_eq_sum_range]
  simp [weightedInput_full]

private theorem geometricSum_div {F : Type} [Field F] (r : F) (m : ℕ)
    (hr : r ≠ 1) :
    (r ^ m - 1) / (r - 1) = ∑ i : Fin m, r ^ (i : ℕ) := by
  have hne : r - 1 ≠ 0 := sub_ne_zero.mpr hr
  apply (div_eq_iff hne).2
  simpa [Fin.sum_univ_eq_sum_range] using (geom_sum_mul r m).symm

/-- The extracted public-input fold returns the geometric sum and weighted IC fold.
    Nonempty rows are explicit; the `Fin` shape enforces equal row and key arities. -/
theorem fold_public_inputs_refinement_statement
    {F G : Type} [Field F] [AddCommGroup G] [Module F G]
    {m n : ℕ} (gamma : Fin (n + 1) → G) (inputs : Fin m → Fin n → F)
    (r : F) (hm : 0 < m) :
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core
        (cloneModel F) (partialEqModel F) (fromU64Model F) (oneModel F)
        (zeroModel F) (addModel F) (divModel F) (mulModel F) (subModel F)
        (cloneModel G) (addModel G) (smulModel F G)
        (finSlice gamma) (inputSlice inputs) r =
      .ok
        (∑ i : Fin m, r ^ (i : ℕ),
          ((∑ i : Fin m, r ^ (i : ℕ)) • gamma 0) +
            ∑ j : Fin n,
              (∑ i : Fin m, r ^ (i : ℕ) * inputs i j) • gamma (Fin.succ j)) := by
  letI := Classical.decEq F
  unfold ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core
  simp only [inputSlice, ark_ip_proofs.core.slice.Slice.is_empty,
    List.isEmpty_iff, List.ofFn_eq_nil_iff, show ¬m = 0 by omega,
    Bool.false_eq_true, not_false_eq_true, ark_ip_proofs.massert,
    ↓reduceIte, Result.bind_ok, Slice.index_usize, List.getElem?_ofFn,
    show 0 < m by exact hm, ↓reduceDIte, ark_ip_proofs.alloc.vec.Vec.len,
    List.length_ofFn, finSlice, Slice.len, usizeAdd, Usize.ofNat]
  have hvalidate := validateLoop inputs
  unfold inputSlice at hvalidate
  rw [hvalidate]
  simp only [Result.bind_ok, cloneModel_clone, oneModel, partialEqModel]
  by_cases hr : r = 1
  · subst r
    simp only [decide_true, if_true, UScalar.cast, lift, fromU64Model,
      Nat.cast_ofNat, Result.bind_ok]
    rw [fromElem_eq_replicate]
    simp only [Result.bind_ok]
    rw [powerLoop1 (F := F) 1 m hm]
    simp only [Result.bind_ok, zeroModel]
    rw [fromElem_eq_replicate]
    simp only [Result.bind_ok]
    rw [zeroFoldedVec inputs 1]
    have houter := outerFoldLoop inputs (1 : F)
    unfold inputSlice at houter
    rw [houter]
    simp only [Result.bind_ok, Slice.index_usize, finSlice, List.getElem?_ofFn,
      show 0 < n + 1 by omega, ↓reduceDIte, cloneModel_clone, smulModel_mul]
    have hgic := gicLoop3 gamma inputs (1 : F) (m : F)
    unfold finSlice at hgic
    simp only [Fin.zero_eta]
    rw [hgic]
    rw [gicPrefix_full]
    simp
  · simp only [show decide (r = 1) = false by simp [hr],
      Bool.false_eq_true, if_false]
    rw [powerSumLoop r m]
    simp only [Result.bind_ok, subModel, cloneModel_clone, divModel]
    rw [fromElem_eq_replicate]
    simp only [Result.bind_ok]
    rw [powerLoop5 r m hm]
    simp only [Result.bind_ok, zeroModel]
    rw [fromElem_eq_replicate]
    simp only [Result.bind_ok]
    rw [zeroFoldedVec inputs r]
    have houter := outerFoldLoop6 inputs r
    unfold inputSlice at houter
    rw [houter]
    simp only [Result.bind_ok, Slice.index_usize, finSlice, List.getElem?_ofFn,
      show 0 < n + 1 by omega, ↓reduceDIte, cloneModel_clone, smulModel_mul]
    have hgic := gicLoop7 gamma inputs r ((r ^ m - 1) / (r - 1))
    unfold finSlice at hgic
    simp only [Fin.zero_eta]
    rw [hgic]
    rw [gicPrefix_full, geometricSum_div r m hr]
    simp only [Result.bind_ok]

/-- The prepared PPE core exposes effect failure as `false` and, on success,
    computes the baseline three-pairing equation from the adapter laws. -/
theorem verify_ppe_refinement_eq
    {F G1 G2 G2Prepared GT E : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq GT]
    (e : G1 →ₗ[F] G2 →ₗ[F] GT)
    (normalize : G1 → G1) (preparedValue : G2Prepared → G2)
    (outcome : E → Option Unit)
    (effect : ark_ip_proofs.applications.groth16_aggregation.PreparedPairingEffect
      E G1 G2Prepared GT)
    (pairing : E) (alpha : G1) (beta gamma delta : G2)
    (gIC aggC : G1) (gammaNeg deltaNeg : G2Prepared)
    (ipAb : GT) (rSum : F)
    (normalization_law :
      normalize (-gIC) = -gIC ∧ normalize (-aggC) = -aggC)
    (prepared_negative_law :
      preparedValue gammaNeg = -gamma ∧ preparedValue deltaNeg = -delta)
    (pairing_effect_law :
      effect.multi_pairing_prepared pairing ⟨[-gIC, -aggC]⟩
          ⟨[gammaNeg, deltaNeg]⟩ =
        .ok (match outcome pairing with
          | none => none
          | some () => some
              (e (normalize (-gIC)) (preparedValue gammaNeg) +
                e (normalize (-aggC)) (preparedValue deltaNeg)))) :
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.verify_ppe_core
        (cloneModel F) (cloneModel G1) (negModel G1)
        (cloneModel G2Prepared) (cloneModel GT) (smulModel F GT)
        (addModel GT) (partialEqModel GT) effect
        { alpha_beta := e alpha beta, r_sum := rSum, g_ic := gIC,
          agg_c := aggC, gamma_g2_neg_pc := gammaNeg,
          delta_g2_neg_pc := deltaNeg, ip_ab := ipAb } pairing =
      .ok (match outcome pairing with
        | none => false
        | some () => decide
            (e (rSum • alpha) beta + e gIC gamma + e aggC delta = ipAb)) := by
  classical
  unfold ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.verify_ppe_core
  simp only [negModel, smulModel, addModel, Result.bind_ok,
    ark_ip_proofs.Array.make, ark_ip_proofs.Array.to_slice, lift]
  rw [pairing_effect_law]
  rcases normalization_law with ⟨hnormalizeGIC, hnormalizeAggC⟩
  rcases prepared_negative_law with ⟨hpreparedGamma, hpreparedDelta⟩
  simp only [Result.bind_ok, hnormalizeGIC, hnormalizeAggC,
    hpreparedGamma, hpreparedDelta]
  cases outcome pairing with
  | none => rfl
  | some effectUnit =>
      rcases effectUnit with ⟨⟩
      simp only [partialEqModel]
      congr 2
      simp [add_assoc]

/-- The extracted prepared PPE core accepts exactly on successful pairing
    evaluation and the canonical positive-sign PPE equation. -/
theorem verify_ppe_refinement_statement
    {F G1 G2 G2Prepared GT E : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq GT]
    (e : G1 →ₗ[F] G2 →ₗ[F] GT)
    (normalize : G1 → G1) (preparedValue : G2Prepared → G2)
    (outcome : E → Option Unit)
    (effect : ark_ip_proofs.applications.groth16_aggregation.PreparedPairingEffect
      E G1 G2Prepared GT)
    (pairing : E) (alpha : G1) (beta gamma delta : G2)
    (gIC aggC : G1) (gammaNeg deltaNeg : G2Prepared)
    (ipAb : GT) (rSum : F)
    (normalization_law :
      normalize (-gIC) = -gIC ∧ normalize (-aggC) = -aggC)
    (prepared_negative_law :
      preparedValue gammaNeg = -gamma ∧ preparedValue deltaNeg = -delta)
    (pairing_effect_law :
      effect.multi_pairing_prepared pairing ⟨[-gIC, -aggC]⟩
          ⟨[gammaNeg, deltaNeg]⟩ =
        .ok (match outcome pairing with
          | none => none
          | some () => some
              (e (normalize (-gIC)) (preparedValue gammaNeg) +
                e (normalize (-aggC)) (preparedValue deltaNeg)))) :
    ark_ip_proofs.ark_ip_proofs.applications.groth16_aggregation.verify_ppe_core
        (cloneModel F) (cloneModel G1) (negModel G1)
        (cloneModel G2Prepared) (cloneModel GT) (smulModel F GT)
        (addModel GT) (partialEqModel GT) effect
        { alpha_beta := e alpha beta, r_sum := rSum, g_ic := gIC,
          agg_c := aggC, gamma_g2_neg_pc := gammaNeg,
          delta_g2_neg_pc := deltaNeg, ip_ab := ipAb } pairing = .ok true ↔
      outcome pairing = some () ∧
        e (rSum • alpha) beta + e gIC gamma + e aggC delta = ipAb := by
  rw [verify_ppe_refinement_eq e normalize preparedValue outcome effect pairing
    alpha beta gamma delta gIC aggC gammaNeg deltaNeg ipAb rSum
    normalization_law prepared_negative_law pairing_effect_law]
  cases outcome pairing <;> simp

def verify_tipp_mipp_refinement_statement
    {F G1 G2 GT : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    {μ : ℕ} (stmt : FsStatement μ F G1 G2 GT)
    (proof : Proof μ F G1 G2 GT) (transcript : FsTranscript μ F)
    (run : Bool) : Prop :=
  run = true ↔ Ipp.LeafData stmt proof transcript

def verify_aggregate_refinement_statement
    {F G1 G2 GT : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    {μ : ℕ} (stmt : FsStatement μ F G1 G2 GT)
    (proof : Proof μ F G1 G2 GT) (transcript : FsTranscript μ F)
    (run : Bool) : Prop :=
  run = true ↔ Ipp.FsAccepts stmt proof transcript

#print axioms verify_ppe_refinement_eq
#print axioms verify_ppe_refinement_statement

end
end Ipp.Extracted
