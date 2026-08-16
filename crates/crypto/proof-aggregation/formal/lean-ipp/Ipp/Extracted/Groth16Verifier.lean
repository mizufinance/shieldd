import Ipp.Extracted.CombinedChecksGenerated
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
    ark_ip_proofs.core.convert.From F MacCampaign.U64 where
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

/- Public names for the exact algebra and slice adapters in the composed
   aggregate-PPE theorem. Other extracted modules define similar private
   helpers, so these live in a purpose-specific namespace. -/
namespace Groth16AdapterModel

def clone (T : Type) : core.clone.Clone T where
  clone value := .ok value

noncomputable def partialEq (T : Type) :
    ark_ip_proofs.core.cmp.PartialEq T T where
  eq left right := by
    letI := Classical.decEq T
    exact .ok (decide (left = right))

def fromU64 (F : Type) [NatCast F] :
    ark_ip_proofs.core.convert.From F MacCampaign.U64 where
  «from» value := .ok value.val

def add (T : Type) [Add T] :
    ark_ip_proofs.core.ops.arith.Add T T T where
  add left right := .ok (left + right)

def sub (T : Type) [Sub T] :
    ark_ip_proofs.core.ops.arith.Sub T T T where
  sub left right := .ok (left - right)

def mul (T : Type) [Mul T] :
    ark_ip_proofs.core.ops.arith.Mul T T T where
  mul left right := .ok (left * right)

def div (T : Type) [Div T] :
    ark_ip_proofs.core.ops.arith.Div T T T where
  div left right := .ok (left / right)

def one (T : Type) [One T] [Mul T] :
    ark_ip_proofs.num_traits.identities.One T where
  coreopsarithMulInst := mul T
  one := .ok 1

noncomputable def zero (T : Type) [Zero T] [Add T] :
    ark_ip_proofs.num_traits.identities.Zero T where
  coreopsarithAddInst := add T
  zero := .ok 0
  is_zero value := by
    letI := Classical.decEq T
    exact .ok (decide (value = 0))

def smul (F G : Type) [SMul F G] :
    ark_ip_proofs.core.ops.arith.Mul G F G where
  mul point scalar := .ok (scalar • point)

def neg (G : Type) [Neg G] :
    ark_ip_proofs.core.ops.arith.Neg G G where
  neg point := .ok (-point)

def finSlice {T : Type} {n : ℕ} (values : Fin n → T) : Slice T :=
  ⟨List.ofFn values⟩

def inputSlice {F : Type} {m n : ℕ}
    (inputs : Fin m → Fin n → F) : Slice (alloc.vec.Vec F) :=
  ⟨List.ofFn (fun i => ⟨List.ofFn (inputs i)⟩)⟩

end Groth16AdapterModel

private theorem groth16Adapter_clone (T : Type) :
    Groth16AdapterModel.clone T = cloneModel T := rfl

private theorem groth16Adapter_partialEq (T : Type) :
    Groth16AdapterModel.partialEq T = partialEqModel T := rfl

private theorem groth16Adapter_fromU64 (F : Type) [NatCast F] :
    Groth16AdapterModel.fromU64 F = fromU64Model F := rfl

private theorem groth16Adapter_add (T : Type) [Add T] :
    Groth16AdapterModel.add T = addModel T := rfl

private theorem groth16Adapter_sub (T : Type) [Sub T] :
    Groth16AdapterModel.sub T = subModel T := rfl

private theorem groth16Adapter_mul (T : Type) [Mul T] :
    Groth16AdapterModel.mul T = mulModel T := rfl

private theorem groth16Adapter_div (T : Type) [Div T] :
    Groth16AdapterModel.div T = divModel T := rfl

private theorem groth16Adapter_one (T : Type) [One T] [Mul T] :
    Groth16AdapterModel.one T = oneModel T := rfl

private theorem groth16Adapter_zero (T : Type) [Zero T] [Add T] :
    Groth16AdapterModel.zero T = zeroModel T := rfl

private theorem groth16Adapter_smul (F G : Type) [SMul F G] :
    Groth16AdapterModel.smul F G = smulModel F G := rfl

private theorem groth16Adapter_neg (G : Type) [Neg G] :
    Groth16AdapterModel.neg G = negModel G := rfl

private theorem groth16Adapter_finSlice
    {T : Type} {n : ℕ} (values : Fin n → T) :
    Groth16AdapterModel.finSlice values = finSlice values := rfl

private theorem groth16Adapter_inputSlice
    {F : Type} {m n : ℕ} (inputs : Fin m → Fin n → F) :
    Groth16AdapterModel.inputSlice inputs = inputSlice inputs := rfl

private theorem updateAt_eq_set {T : Type} (items : List T) (index : ℕ) (value : T) :
    ark_ip_proofs.alloc.vec.Vec.updateAt items index value = items.set index value := by
  induction items generalizing index with
  | nil => simp [ark_ip_proofs.alloc.vec.Vec.updateAt]
  | cons item rest ih =>
      cases index <;> simp [ark_ip_proofs.alloc.vec.Vec.updateAt, ih]

private def validateBody {F : Type} (publicInputs : Slice (alloc.vec.Vec F))
    (arity : ℕ) : core.ops.range.Range → Result (ControlFlow core.ops.range.Range Unit) :=
  fun iter =>
    ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop0.body
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
        ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop0.body,
        core.iter.range.IteratorRange.next]
  | succ count ih =>
      have hlt : start < start + (count + 1) := by omega
      have hstart : start < m := by omega
      rw [loopFuel]
      simp only [validateBody,
        ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop0.body,
        core.iter.range.IteratorRange.next, hlt, ↓reduceIte, inputSlice,
        Slice.index_usize, List.getElem?_ofFn, hstart, ↓reduceDIte,
        ark_ip_proofs.alloc.vec.Vec.len, List.length_ofFn,
        ark_ip_proofs.massert, Result.bind_ok]
      have hend : start + (count + 1) = (start + 1) + count := by omega
      rw [hend]
      exact ih (start + 1) (by omega)

private theorem validateLoop {F : Type} {m n : ℕ}
    (inputs : Fin m → Fin n → F) :
    ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop0
      { start := ⟨0⟩, «end» := ⟨m⟩ } (inputSlice inputs) ⟨n⟩ = .ok () := by
  unfold ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop0
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

private theorem usizeSub (left right : Usize) (h : right.val ≤ left.val) :
    left - right = Result.ok ⟨left.val - right.val⟩ := by
  change (if right.val ≤ left.val then
      Result.ok ({ val := left.val - right.val } : Usize)
    else Result.fail .integerOverflow) = _
  simp [h]

private theorem usizeAdd (left right : Usize) :
    left + right = Result.ok ⟨left.val + right.val⟩ := rfl

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

private def rowVec {F : Type} {m n : ℕ}
    (inputs : Fin m → Fin n → F) (row : Fin m) : alloc.vec.Vec F :=
  ⟨List.ofFn (inputs row)⟩

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
    (inputs : Fin m → Fin n → F) (r : F) (row : ℕ) (hrow : row < m) :
    (core.ops.range.Range × alloc.vec.Vec F) →
      Result (ControlFlow (core.ops.range.Range × alloc.vec.Vec F)
        (alloc.vec.Vec F)) :=
  fun (iter, folded) =>
    ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop1_loop0.body
      (cloneModel F) (addModel F) (mulModel F) (r ^ row)
      (rowVec inputs ⟨row, hrow⟩) iter folded

private theorem innerFoldFuel {F : Type} [Field F] {m n : ℕ}
    (inputs : Fin m → Fin n → F) (r : F) (row start count : ℕ)
    (hrow : row < m) (hbound : start + count ≤ n) :
    loopFuel (innerFoldBody inputs r row hrow) (count + 1)
      ({ start := ⟨start⟩, «end» := ⟨start + count⟩ },
        foldingRowVec inputs r row start) =
      .ok (foldingRowVec inputs r row (start + count)) := by
  induction count generalizing start with
  | zero =>
      rw [loopFuel]
      simp [innerFoldBody, foldingRowVec,
        ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop1_loop0.body,
        core.iter.range.IteratorRange.next]
  | succ count ih =>
      have hlt : start < start + (count + 1) := by omega
      have hinput : start < n := by omega
      rw [loopFuel]
      simp only [innerFoldBody,
        ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop1_loop0.body,
        core.iter.range.IteratorRange.next, hlt, ↓reduceIte, Result.bind_ok,
        rowVec, ark_ip_proofs.alloc.vec.Vec.index, List.getElem?_ofFn,
        hinput, ↓reduceDIte, foldingRowVec, cloneModel, mulModel, addModel,
        ark_ip_proofs.alloc.vec.Vec.index_mut]
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
    ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop1_loop0
      (cloneModel F) (addModel F) (mulModel F)
      { start := ⟨0⟩, «end» := ⟨n⟩ } (foldedVec inputs r row) (r ^ row)
      (rowVec inputs ⟨row, hrow⟩) =
      .ok (foldedVec inputs r (row + 1)) := by
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
  unfold ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop1_loop0
  apply loop_eq_of_fuel (fuel := n + 1) (by simp)
  simpa [innerFoldBody, hfull] using
    innerFoldFuel inputs r row 0 n hrow (by simp)

private def outerFoldBody {F : Type} [Field F] {m n : ℕ}
    (inputs : Fin m → Fin n → F) (r : F) :
    (core.ops.range.Range × alloc.vec.Vec F × Bool × F) →
      Result (ControlFlow
        (core.ops.range.Range × alloc.vec.Vec F × Bool × F)
        (alloc.vec.Vec F × Bool × F)) :=
  fun (iter, folded, rIsOne, power) =>
    ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop1.body
      (cloneModel F) (addModel F) (mulModel F) (inputSlice inputs) r ⟨n⟩
      iter folded rIsOne power

private theorem outerFoldFuelOne {F : Type} [Field F] {m n : ℕ}
    (inputs : Fin m → Fin n → F) (start count : ℕ)
    (hbound : start + count ≤ m) :
    loopFuel (outerFoldBody inputs (1 : F)) (count + 1)
      ({ start := ⟨start⟩, «end» := ⟨start + count⟩ },
        foldedVec inputs 1 start, true, 1) =
      .ok (foldedVec inputs 1 (start + count), true, 1) := by
  induction count generalizing start with
  | zero =>
      rw [loopFuel]
      simp [outerFoldBody,
        ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop1.body,
        core.iter.range.IteratorRange.next]
  | succ count ih =>
      have hlt : start < start + (count + 1) := by omega
      have hrow : start < m := by omega
      rw [loopFuel]
      simp only [outerFoldBody,
        ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop1.body,
        core.iter.range.IteratorRange.next, hlt, ↓reduceIte, Result.bind_ok,
        inputSlice, Slice.index_usize, List.getElem?_ofFn, hrow, ↓reduceDIte,
        Usize.ofNat]
      have hinner := innerFoldLoop inputs (1 : F) start hrow
      simp only [one_pow, rowVec] at hinner
      rw [hinner]
      simp only [Result.bind_ok]
      have hend : start + (count + 1) = (start + 1) + count := by omega
      rw [hend]
      exact ih (start + 1) (by omega)

private theorem outerFoldLoopOne {F : Type} [Field F] {m n : ℕ}
    (inputs : Fin m → Fin n → F) :
    ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop1
      (cloneModel F) (addModel F) (mulModel F)
      { start := ⟨0⟩, «end» := ⟨m⟩ } (inputSlice inputs) 1 ⟨n⟩
      (foldedVec inputs 1 0) true 1 =
      .ok (foldedVec inputs 1 m, true, 1) := by
  unfold ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop1
  apply loop_eq_of_fuel (fuel := m + 1) (by simp)
  simpa [outerFoldBody] using outerFoldFuelOne inputs 0 m (by simp)

private theorem outerFoldFuelNotOne {F : Type} [Field F] {m n : ℕ}
    (inputs : Fin m → Fin n → F) (r : F) (start count : ℕ)
    (hbound : start + count ≤ m) :
    loopFuel (outerFoldBody inputs r) (count + 1)
      ({ start := ⟨start⟩, «end» := ⟨start + count⟩ },
        foldedVec inputs r start, false, r ^ start) =
      .ok (foldedVec inputs r (start + count), false, r ^ (start + count)) := by
  induction count generalizing start with
  | zero =>
      rw [loopFuel]
      simp [outerFoldBody,
        ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop1.body,
        core.iter.range.IteratorRange.next]
  | succ count ih =>
      have hlt : start < start + (count + 1) := by omega
      have hrow : start < m := by omega
      rw [loopFuel]
      simp only [outerFoldBody,
        ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop1.body,
        core.iter.range.IteratorRange.next, hlt, ↓reduceIte, Result.bind_ok,
        inputSlice, Slice.index_usize, List.getElem?_ofFn, hrow, ↓reduceDIte,
        Usize.ofNat]
      have hinner := innerFoldLoop inputs r start hrow
      simp only [rowVec] at hinner
      rw [hinner]
      simp only [Result.bind_ok, cloneModel, mulModel]
      rw [← pow_succ]
      have hend : start + (count + 1) = (start + 1) + count := by omega
      rw [hend]
      exact ih (start + 1) (by omega)

private theorem outerFoldLoopNotOne {F : Type} [Field F] {m n : ℕ}
    (inputs : Fin m → Fin n → F) (r : F) :
    ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop1
      (cloneModel F) (addModel F) (mulModel F)
      { start := ⟨0⟩, «end» := ⟨m⟩ } (inputSlice inputs) r ⟨n⟩
      (foldedVec inputs r 0) false 1 =
      .ok (foldedVec inputs r m, false, r ^ m) := by
  unfold ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop1
  apply loop_eq_of_fuel (fuel := m + 1) (by simp)
  simpa [outerFoldBody] using outerFoldFuelNotOne inputs r 0 m (by simp)

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
    ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop2.body
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
        ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop2.body,
        core.iter.range.IteratorRange.next]
  | succ count ih =>
      have hlt : start < start + (count + 1) := by omega
      have hinput : start < n := by omega
      rw [loopFuel]
      simp only [gicBody,
        ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop2.body,
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

private theorem gicLoop {F G : Type} [Field F]
    [AddCommGroup G] [Module F G] {m n : ℕ}
    (gamma : Fin (n + 1) → G) (inputs : Fin m → Fin n → F)
    (r rSum : F) :
    ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop2
      (cloneModel F) (cloneModel G) (addModel G) (smulModel F G)
      { start := ⟨0⟩, «end» := ⟨n⟩ } (finSlice gamma) (foldedVec inputs r m)
      (rSum • gamma 0) = .ok (gicPrefix gamma inputs r rSum n) := by
  have hzero : rSum • gamma 0 = gicPrefix gamma inputs r rSum 0 := by
    simp [gicPrefix]
  rw [hzero]
  unfold ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core_loop2
  apply loop_eq_of_fuel (fuel := n + 1) (by simp)
  simpa [gicBody] using gicFuel gamma inputs r rSum 0 n (by simp)

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
    (r : F) (hm : 0 < m) (hm64 : m < MacCampaign.u64Base) :
    ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core
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
  unfold ark_ip_proofs.applications.groth16_aggregation.fold_public_inputs_core
  simp only [inputSlice, ark_ip_proofs.core.slice.Slice.is_empty,
    List.isEmpty_iff, List.ofFn_eq_nil_iff, show ¬m = 0 by omega,
    not_false_eq_true, ark_ip_proofs.massert,
    ↓reduceIte, Result.bind_ok, Slice.index_usize, List.getElem?_ofFn,
    show 0 < m by exact hm, ↓reduceDIte, ark_ip_proofs.alloc.vec.Vec.len,
    List.length_ofFn, finSlice, Slice.len, usizeAdd, Usize.ofNat]
  have hvalidate := validateLoop inputs
  unfold inputSlice at hvalidate
  rw [hvalidate]
  simp only [Result.bind_ok, zeroModel]
  rw [fromElem_eq_replicate]
  simp only [Result.bind_ok, cloneModel_clone, oneModel, partialEqModel]
  rw [zeroFoldedVec inputs r]
  have hcast : (MacCampaign.castU64 ({ val := m } : Usize)).val = m := by
    change m % MacCampaign.u64Base = m
    exact Nat.mod_eq_of_lt hm64
  by_cases hr : r = 1
  · subst r
    simp only [decide_true]
    have houter := outerFoldLoopOne inputs
    unfold inputSlice at houter
    rw [houter]
    simp only [Result.bind_ok, if_true, lift, fromU64Model, hcast,
      show 0 < n + 1 by omega, ↓reduceDIte, smulModel_mul]
    have hgic := gicLoop gamma inputs (1 : F) (m : F)
    unfold finSlice at hgic
    simp only [Fin.zero_eta]
    rw [hgic]
    rw [gicPrefix_full]
    simp
  · simp only [show decide (r = 1) = false by simp [hr]]
    have houter := outerFoldLoopNotOne inputs r
    unfold inputSlice at houter
    rw [houter]
    simp only [Result.bind_ok, Bool.false_eq_true, if_false, subModel, divModel,
      show 0 < n + 1 by omega, ↓reduceDIte, smulModel_mul]
    have hgic := gicLoop gamma inputs r ((r ^ m - 1) / (r - 1))
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
    ark_ip_proofs.applications.groth16_aggregation.verify_ppe_core
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
  unfold ark_ip_proofs.applications.groth16_aggregation.verify_ppe_core
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
    ark_ip_proofs.applications.groth16_aggregation.verify_ppe_core
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

/-- Folding public inputs and the prepared pairing accept exactly on the
    successful canonical positive-sign PPE equation. -/
theorem verify_combined_ppe_refinement_statement
    {F G1 G2 G2Prepared GT E : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq GT]
    {m n : ℕ} (gammaABC : Fin (n + 1) → G1)
    (publicInputs : Fin m → Fin n → F) (r : F) (hm : 0 < m)
    (hm64 : m < MacCampaign.u64Base)
    (e : G1 →ₗ[F] G2 →ₗ[F] GT)
    (normalize : G1 → G1) (preparedValue : G2Prepared → G2)
    (outcome : E → Option Unit)
    (effect : ark_ip_proofs.applications.groth16_aggregation.PreparedPairingEffect
      E G1 G2Prepared GT)
    (pairing : E) (alpha : G1) (beta gamma delta : G2)
    (aggC : G1) (gammaNeg deltaNeg : G2Prepared) (ipAb : GT)
    (normalization_law :
      normalize (-(((∑ i : Fin m, r ^ (i : ℕ)) • gammaABC 0) +
          ∑ j : Fin n,
            (∑ i : Fin m, r ^ (i : ℕ) * publicInputs i j) •
              gammaABC (Fin.succ j))) =
        -(((∑ i : Fin m, r ^ (i : ℕ)) • gammaABC 0) +
          ∑ j : Fin n,
            (∑ i : Fin m, r ^ (i : ℕ) * publicInputs i j) •
              gammaABC (Fin.succ j)) ∧
      normalize (-aggC) = -aggC)
    (prepared_negative_law :
      preparedValue gammaNeg = -gamma ∧ preparedValue deltaNeg = -delta)
    (pairing_effect_law :
      effect.multi_pairing_prepared pairing
          ⟨[-(((∑ i : Fin m, r ^ (i : ℕ)) • gammaABC 0) +
              ∑ j : Fin n,
                (∑ i : Fin m, r ^ (i : ℕ) * publicInputs i j) •
                  gammaABC (Fin.succ j)), -aggC]⟩
          ⟨[gammaNeg, deltaNeg]⟩ =
        .ok (match outcome pairing with
          | none => none
          | some () => some
              (e (normalize (-(((∑ i : Fin m, r ^ (i : ℕ)) • gammaABC 0) +
                    ∑ j : Fin n,
                      (∑ i : Fin m, r ^ (i : ℕ) * publicInputs i j) •
                        gammaABC (Fin.succ j)))) (preparedValue gammaNeg) +
                e (normalize (-aggC)) (preparedValue deltaNeg)))) :
    ark_ip_proofs.applications.groth16_aggregation.verify_combined_ppe_core
        (Groth16AdapterModel.clone F) (Groth16AdapterModel.partialEq F)
        (Groth16AdapterModel.fromU64 F) (Groth16AdapterModel.one F)
        (Groth16AdapterModel.zero F) (Groth16AdapterModel.add F)
        (Groth16AdapterModel.div F) (Groth16AdapterModel.mul F)
        (Groth16AdapterModel.sub F)
        (Groth16AdapterModel.clone G1) (Groth16AdapterModel.add G1)
        (Groth16AdapterModel.smul F G1) (Groth16AdapterModel.neg G1)
        (Groth16AdapterModel.clone G2Prepared) (Groth16AdapterModel.clone GT)
        (Groth16AdapterModel.smul F GT) (Groth16AdapterModel.add GT)
        (Groth16AdapterModel.partialEq GT) effect
        { alpha_beta := e alpha beta, agg_c := aggC,
          gamma_g2_neg_pc := gammaNeg, delta_g2_neg_pc := deltaNeg,
          ip_ab := ipAb }
        (Groth16AdapterModel.finSlice gammaABC)
        (Groth16AdapterModel.inputSlice publicInputs) r pairing = .ok true ↔
      outcome pairing = some () ∧
        e ((∑ i : Fin m, r ^ (i : ℕ)) • alpha) beta +
          e (((∑ i : Fin m, r ^ (i : ℕ)) • gammaABC 0) +
              ∑ j : Fin n,
                (∑ i : Fin m, r ^ (i : ℕ) * publicInputs i j) •
                  gammaABC (Fin.succ j)) gamma +
          e aggC delta = ipAb := by
  simp only [groth16Adapter_clone, groth16Adapter_partialEq,
    groth16Adapter_fromU64, groth16Adapter_one, groth16Adapter_zero,
    groth16Adapter_add, groth16Adapter_div, groth16Adapter_mul,
    groth16Adapter_sub, groth16Adapter_smul, groth16Adapter_neg,
    groth16Adapter_finSlice, groth16Adapter_inputSlice]
  unfold ark_ip_proofs.applications.groth16_aggregation.verify_combined_ppe_core
  rw [fold_public_inputs_refinement_statement gammaABC publicInputs r hm hm64]
  simp only [Result.bind_ok]
  exact verify_ppe_refinement_statement e normalize preparedValue outcome effect
    pairing alpha beta gamma delta _ aggC gammaNeg deltaNeg ipAb _
    normalization_law prepared_negative_law pairing_effect_law

def verify_aggregate_refinement_statement
    {F G1 G2 GT : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    {μ : ℕ} (stmt : FsStatement μ F G1 G2 GT)
    (proof : Proof μ F G1 G2 GT) (transcript : FsTranscript μ F)
    (run : Bool) : Prop :=
  run = true ↔ Ipp.FsAccepts stmt proof transcript

#print axioms verify_ppe_refinement_eq
#print axioms verify_ppe_refinement_statement
#print axioms verify_combined_ppe_refinement_statement

end
end Ipp.Extracted
