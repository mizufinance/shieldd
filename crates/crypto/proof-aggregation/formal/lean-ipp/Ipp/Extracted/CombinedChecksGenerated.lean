-- Closed S2-34 extraction of the associated-type-free combined-checks core graph.
-- Vendored from the pinned WSL hax/Aeneas output; standard-library glue lives in AeneasRuntime.
import Ipp.Extracted.VerifyTippMippGenerated

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do
set_option linter.unusedVariables false
set_option maxHeartbeats 1000000
set_option maxRecDepth 2048

noncomputable section

namespace Aeneas

inductive UScalarTy where
  | U64
  | Usize

namespace Std

abbrev U64 := Usize

end Std

namespace UScalar

def cast (_target : UScalarTy) (value : Std.Usize) : Std.Usize :=
  ⟨value.val⟩

end UScalar
end Aeneas

namespace ark_ip_proofs

def massert (condition : Prop) [Decidable condition] : Result Unit :=
  if condition then .ok () else .fail .panic

namespace core.slice.Slice

def is_empty {T : Type} (slice : Slice T) : Result Bool :=
  .ok slice.val.isEmpty

end core.slice.Slice

namespace alloc.vec

def repeat_values {T : Type} (cloneInst : core.clone.Clone T) (value : T) :
    Nat → Result (List T)
  | 0 => .ok []
  | Nat.succ count => do
      let copy ← cloneInst.clone value
      let rest ← repeat_values cloneInst value count
      .ok (copy :: rest)

def from_elem {T : Type} (cloneInst : core.clone.Clone T) (value : T)
    (len : Std.Usize) : Result (alloc.vec.Vec T) := do
  let values ← repeat_values cloneInst value len.val
  .ok ⟨values⟩

namespace Vec

def updateAt {T : Type} : List T → Nat → T → List T
  | [], _, _ => []
  | _ :: rest, 0, value => value :: rest
  | item :: rest, Nat.succ index, value => item :: updateAt rest index value

def index_mut {T : Type} (_inst : Type) (items : alloc.vec.Vec T)
    (index : Std.Usize) : Result (T × (T → alloc.vec.Vec T)) :=
  match items.val[index.val]? with
  | some old => .ok (old, fun value => ⟨updateAt items.val index.val value⟩)
  | none => .fail .arrayOutOfBounds

end Vec
end alloc.vec

namespace core.cmp

structure PartialEq (Self : Type) (Rhs : Type) where
  eq : Self → Rhs → Result Bool

end core.cmp

namespace core.convert

structure From (Self : Type) (T : Type) where
  «from» : T → Result Self

end core.convert

namespace core.ops.arith

structure Div (Self : Type) (Rhs : Type) (Self_Output : Type) where
  div : Self → Rhs → Result Self_Output

end core.ops.arith

structure applications.groth16_aggregation.PreparedPairingEffect (Self : Type)
    (G1 : Type) (G2Prepared : Type) (GT : Type) where
  multi_pairing_prepared : Self → Slice G1 → Slice G2Prepared → Result (Option GT)

structure applications.groth16_aggregation.PreparedPpeVerifierCoreInput (F : Type)
    (G1 : Type) (G2Prepared : Type) (GT : Type) where
  alpha_beta : GT
  r_sum : F
  g_ic : G1
  agg_c : G1
  gamma_g2_neg_pc : G2Prepared
  delta_g2_neg_pc : G2Prepared
  ip_ab : GT

structure applications.groth16_aggregation.CombinedChecksPpeInput (G1 : Type)
    (G2Prepared : Type) (GT : Type) where
  alpha_beta : GT
  agg_c : G1
  gamma_g2_neg_pc : G2Prepared
  delta_g2_neg_pc : G2Prepared
  ip_ab : GT

structure applications.groth16_aggregation.CombinedChecksCoreInput (F : Type)
    (G1 : Type) (G2 : Type) (G2Prepared : Type) (GT : Type) (ABT : Type)
    (CT : Type) where
  tipp_mipp : applications.groth16_aggregation.TippMippCoreInput F G1 G2 GT ABT CT
  gamma_abc_g1 : alloc.vec.Vec G1
  public_inputs : alloc.vec.Vec (alloc.vec.Vec F)
  r : F
  ppe : applications.groth16_aggregation.CombinedChecksPpeInput G1 G2Prepared GT

structure applications.groth16_aggregation.CombinedChecksError (E : Type) where
  kind : Std.Usize
  actual_rounds : Std.Usize
  expected_rounds : Std.Usize
  tipp_mipp_error : Option E

structure applications.groth16_aggregation.CombinedChecksCoreOutput (FX : Type) where
  checks : Bool × Bool
  tipp_mipp_effect : FX

@[reducible]
def applications.groth16_aggregation.verify_combined_checks_core.closure
    (F G1 G2 G2Prepared GT ABT CT E FX PE PPE : Type) := Unit

def applications.groth16_aggregation.verify_ppe_core
  {F : Type} {G1 : Type} {G2Prepared : Type} {GT : Type} {E : Type}
  (corecloneCloneInst : core.clone.Clone F) (corecloneCloneInst1 :
  core.clone.Clone G1) (coreopsarithNegInst : core.ops.arith.Neg G1 G1)
  (corecloneCloneInst2 : core.clone.Clone G2Prepared) (corecloneCloneInst3 :
  core.clone.Clone GT) (coreopsarithMulInst : core.ops.arith.Mul GT F GT)
  (coreopsarithAddInst : core.ops.arith.Add GT GT GT) (corecmpPartialEqInst :
  core.cmp.PartialEq GT GT) (PreparedPairingEffectInst :
  applications.groth16_aggregation.PreparedPairingEffect E G1 G2Prepared GT)
  (input : applications.groth16_aggregation.PreparedPpeVerifierCoreInput F G1
  G2Prepared GT) (pairing : E) :
  Result Bool
  := do
  let alpha_beta_rsum ← coreopsarithMulInst.mul input.alpha_beta input.r_sum
  let t ← coreopsarithNegInst.neg input.g_ic
  let t1 ← coreopsarithNegInst.neg input.agg_c
  let s ← lift (Array.to_slice (Array.make 2#usize [ t, t1 ]))
  let s1 ←
    lift (Array.to_slice
      (Array.make 2#usize [ input.gamma_g2_neg_pc, input.delta_g2_neg_pc ]))
  let o ← PreparedPairingEffectInst.multi_pairing_prepared pairing s s1
  match o with
  | none => ok false
  | some folded =>
    let t2 ← coreopsarithAddInst.add alpha_beta_rsum folded
    corecmpPartialEqInst.eq t2 input.ip_ab

/-- [ark_ip_proofs::applications::groth16_aggregation::fold_public_inputs_core]: loop body 0:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 2284:8-2285:49 -/
def applications.groth16_aggregation.fold_public_inputs_core_loop0.body
  {F : Type} (public_inputs : Slice (alloc.vec.Vec F))
  (input_arity : Std.Usize) (iter : core.ops.range.Range) :
  Result (ControlFlow (core.ops.range.Range) Unit)
  := do
  let (o, iter1) ←
    core.iter.range.IteratorRange.next core.iter.range.StepUsize iter
  match o with
  | none => ok (done ())
  | some row_index =>
    let v ← Slice.index_usize public_inputs row_index
    let left_val := alloc.vec.Vec.len v
    massert (left_val = input_arity)
    ok (cont iter1)

/-- [ark_ip_proofs::applications::groth16_aggregation::fold_public_inputs_core]: loop 0:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 2284:8-2285:49 -/
def applications.groth16_aggregation.fold_public_inputs_core_loop0
  {F : Type} (iter : core.ops.range.Range)
  (public_inputs : Slice (alloc.vec.Vec F)) (input_arity : Std.Usize) :
  Result Unit
  := do
  loop
    (fun iter1 =>
      applications.groth16_aggregation.fold_public_inputs_core_loop0.body
      public_inputs input_arity iter1)
    iter

/-- [ark_ip_proofs::applications::groth16_aggregation::fold_public_inputs_core]: loop body 1:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 2299:4-2301:5 -/
def applications.groth16_aggregation.fold_public_inputs_core_loop1.body
  {F : Type} (corecloneCloneInst : core.clone.Clone F) (coreopsarithMulInst :
  core.ops.arith.Mul F F F) (r : F) (iter : core.ops.range.Range)
  (r_vec : alloc.vec.Vec F) :
  Result (ControlFlow ((core.ops.range.Range) × (alloc.vec.Vec F))
    (alloc.vec.Vec F))
  := do
  let (o, iter1) ←
    core.iter.range.IteratorRange.next core.iter.range.StepUsize iter
  match o with
  | none => ok (done r_vec)
  | some index =>
    let i ← index - 1#usize
    let t ←
      alloc.vec.Vec.index (core.slice.index.SliceIndexUsizeSlice F) r_vec i
    let t1 ← corecloneCloneInst.clone t
    let t2 ← corecloneCloneInst.clone r
    let t3 ← coreopsarithMulInst.mul t1 t2
    let (_, index_mut_back) ←
      alloc.vec.Vec.index_mut (core.slice.index.SliceIndexUsizeSlice F) r_vec
        index
    let r_vec1 := index_mut_back t3
    ok (cont (iter1, r_vec1))

/-- [ark_ip_proofs::applications::groth16_aggregation::fold_public_inputs_core]: loop 1:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 2299:4-2301:5 -/
def applications.groth16_aggregation.fold_public_inputs_core_loop1
  {F : Type} (corecloneCloneInst : core.clone.Clone F) (coreopsarithMulInst :
  core.ops.arith.Mul F F F) (iter : core.ops.range.Range) (r : F)
  (r_vec : alloc.vec.Vec F) :
  Result (alloc.vec.Vec F)
  := do
  loop
    (fun (iter1, r_vec1) =>
      applications.groth16_aggregation.fold_public_inputs_core_loop1.body
      corecloneCloneInst coreopsarithMulInst r iter1 r_vec1)
    (iter, r_vec)

/-- [ark_ip_proofs::applications::groth16_aggregation::fold_public_inputs_core]: loop body 3:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 2305:8-2308:9 -/
def applications.groth16_aggregation.fold_public_inputs_core_loop2_loop0.body
  {F : Type} (corecloneCloneInst : core.clone.Clone F) (coreopsarithAddInst :
  core.ops.arith.Add F F F) (coreopsarithMulInst : core.ops.arith.Mul F F F)
  (public_inputs : Slice (alloc.vec.Vec F)) (r_vec : alloc.vec.Vec F)
  (row_index : Std.Usize) (iter : core.ops.range.Range)
  (folded_public_inputs : alloc.vec.Vec F) :
  Result (ControlFlow ((core.ops.range.Range) × (alloc.vec.Vec F))
    (alloc.vec.Vec F))
  := do
  let (o, iter1) ←
    core.iter.range.IteratorRange.next core.iter.range.StepUsize iter
  match o with
  | none => ok (done folded_public_inputs)
  | some input_index =>
    let v ← Slice.index_usize public_inputs row_index
    let t ←
      alloc.vec.Vec.index (core.slice.index.SliceIndexUsizeSlice F) v
        input_index
    let t1 ← corecloneCloneInst.clone t
    let t2 ←
      alloc.vec.Vec.index (core.slice.index.SliceIndexUsizeSlice F) r_vec
        row_index
    let t3 ← corecloneCloneInst.clone t2
    let term ← coreopsarithMulInst.mul t1 t3
    let t4 ←
      alloc.vec.Vec.index (core.slice.index.SliceIndexUsizeSlice F)
        folded_public_inputs input_index
    let t5 ← corecloneCloneInst.clone t4
    let t6 ← coreopsarithAddInst.add t5 term
    let (_, index_mut_back) ←
      alloc.vec.Vec.index_mut (core.slice.index.SliceIndexUsizeSlice F)
        folded_public_inputs input_index
    let folded_public_inputs1 := index_mut_back t6
    ok (cont (iter1, folded_public_inputs1))

/-- [ark_ip_proofs::applications::groth16_aggregation::fold_public_inputs_core]: loop 3:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 2305:8-2308:9 -/
def applications.groth16_aggregation.fold_public_inputs_core_loop2_loop0
  {F : Type} (corecloneCloneInst : core.clone.Clone F) (coreopsarithAddInst :
  core.ops.arith.Add F F F) (coreopsarithMulInst : core.ops.arith.Mul F F F)
  (iter : core.ops.range.Range)
  (public_inputs : Slice (alloc.vec.Vec F)) (r_vec : alloc.vec.Vec F)
  (folded_public_inputs : alloc.vec.Vec F) (row_index : Std.Usize) :
  Result (alloc.vec.Vec F)
  := do
  loop
    (fun (iter1, folded_public_inputs1) =>
      applications.groth16_aggregation.fold_public_inputs_core_loop2_loop0.body
      corecloneCloneInst coreopsarithAddInst coreopsarithMulInst public_inputs
      r_vec row_index iter1 folded_public_inputs1)
    (iter, folded_public_inputs)

/-- [ark_ip_proofs::applications::groth16_aggregation::fold_public_inputs_core]: loop body 2:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 2304:4-2309:5 -/
def applications.groth16_aggregation.fold_public_inputs_core_loop2.body
  {F : Type} (corecloneCloneInst : core.clone.Clone F) (coreopsarithAddInst :
  core.ops.arith.Add F F F) (coreopsarithMulInst : core.ops.arith.Mul F F F)
  (public_inputs : Slice (alloc.vec.Vec F)) (input_arity : Std.Usize)
  (r_vec : alloc.vec.Vec F) (iter : core.ops.range.Range)
  (folded_public_inputs : alloc.vec.Vec F) :
  Result (ControlFlow ((core.ops.range.Range) × (alloc.vec.Vec F))
    (alloc.vec.Vec F))
  := do
  let (o, iter1) ←
    core.iter.range.IteratorRange.next core.iter.range.StepUsize iter
  match o with
  | none => ok (done folded_public_inputs)
  | some row_index =>
    let folded_public_inputs1 ←
      applications.groth16_aggregation.fold_public_inputs_core_loop2_loop0
        corecloneCloneInst coreopsarithAddInst coreopsarithMulInst
        { start := 0#usize, «end» := input_arity } public_inputs r_vec
        folded_public_inputs row_index
    ok (cont (iter1, folded_public_inputs1))

/-- [ark_ip_proofs::applications::groth16_aggregation::fold_public_inputs_core]: loop 2:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 2304:4-2309:5 -/
def applications.groth16_aggregation.fold_public_inputs_core_loop2
  {F : Type} (corecloneCloneInst : core.clone.Clone F) (coreopsarithAddInst :
  core.ops.arith.Add F F F) (coreopsarithMulInst : core.ops.arith.Mul F F F)
  (iter : core.ops.range.Range)
  (public_inputs : Slice (alloc.vec.Vec F)) (input_arity : Std.Usize)
  (r_vec : alloc.vec.Vec F) (folded_public_inputs : alloc.vec.Vec F) :
  Result (alloc.vec.Vec F)
  := do
  loop
    (fun (iter1, folded_public_inputs1) =>
      applications.groth16_aggregation.fold_public_inputs_core_loop2.body
      corecloneCloneInst coreopsarithAddInst coreopsarithMulInst public_inputs
      input_arity r_vec iter1 folded_public_inputs1)
    (iter, folded_public_inputs)

/-- [ark_ip_proofs::applications::groth16_aggregation::fold_public_inputs_core]: loop body 4:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 2312:4-2316:5 -/
def applications.groth16_aggregation.fold_public_inputs_core_loop3.body
  {F : Type} {G1 : Type} (corecloneCloneInst : core.clone.Clone F)
  (corecloneCloneInst1 : core.clone.Clone G1) (coreopsarithAddInst :
  core.ops.arith.Add G1 G1 G1) (coreopsarithMulInst : core.ops.arith.Mul G1 F
  G1) (gamma_abc_g1 : Slice G1) (folded_public_inputs : alloc.vec.Vec F)
  (iter : core.ops.range.Range) (g_ic : G1) :
  Result (ControlFlow ((core.ops.range.Range) × G1) G1)
  := do
  let (o, iter1) ←
    core.iter.range.IteratorRange.next core.iter.range.StepUsize iter
  match o with
  | none => ok (done g_ic)
  | some input_index =>
    let i ← input_index + 1#usize
    let t ← Slice.index_usize gamma_abc_g1 i
    let t1 ← corecloneCloneInst1.clone t
    let t2 ←
      alloc.vec.Vec.index (core.slice.index.SliceIndexUsizeSlice F)
        folded_public_inputs input_index
    let t3 ← corecloneCloneInst.clone t2
    let term ← coreopsarithMulInst.mul t1 t3
    let g_ic1 ← coreopsarithAddInst.add g_ic term
    ok (cont (iter1, g_ic1))

/-- [ark_ip_proofs::applications::groth16_aggregation::fold_public_inputs_core]: loop 4:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 2312:4-2316:5 -/
def applications.groth16_aggregation.fold_public_inputs_core_loop3
  {F : Type} {G1 : Type} (corecloneCloneInst : core.clone.Clone F)
  (corecloneCloneInst1 : core.clone.Clone G1) (coreopsarithAddInst :
  core.ops.arith.Add G1 G1 G1) (coreopsarithMulInst : core.ops.arith.Mul G1 F
  G1) (iter : core.ops.range.Range) (gamma_abc_g1 : Slice G1)
  (folded_public_inputs : alloc.vec.Vec F) (g_ic : G1) :
  Result G1
  := do
  loop
    (fun (iter1, g_ic1) =>
      applications.groth16_aggregation.fold_public_inputs_core_loop3.body
      corecloneCloneInst corecloneCloneInst1 coreopsarithAddInst
      coreopsarithMulInst gamma_abc_g1 folded_public_inputs iter1 g_ic1)
    (iter, g_ic)

/-- [ark_ip_proofs::applications::groth16_aggregation::fold_public_inputs_core]: loop body 5:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 2292:8-2294:9 -/
def applications.groth16_aggregation.fold_public_inputs_core_loop4.body
  {F : Type} (corecloneCloneInst : core.clone.Clone F) (coreopsarithMulInst :
  core.ops.arith.Mul F F F) (r : F) (iter : core.ops.range.Range)
  (r_power : F) :
  Result (ControlFlow ((core.ops.range.Range) × F) F)
  := do
  let (o, iter1) ←
    core.iter.range.IteratorRange.next core.iter.range.StepUsize iter
  match o with
  | none => ok (done r_power)
  | some _ =>
    let t ← corecloneCloneInst.clone r
    let r_power1 ← coreopsarithMulInst.mul r_power t
    ok (cont (iter1, r_power1))

/-- [ark_ip_proofs::applications::groth16_aggregation::fold_public_inputs_core]: loop 5:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 2292:8-2294:9 -/
def applications.groth16_aggregation.fold_public_inputs_core_loop4
  {F : Type} (corecloneCloneInst : core.clone.Clone F) (coreopsarithMulInst :
  core.ops.arith.Mul F F F) (iter : core.ops.range.Range) (r : F)
  (r_power : F) :
  Result F
  := do
  loop
    (fun (iter1, r_power1) =>
      applications.groth16_aggregation.fold_public_inputs_core_loop4.body
      corecloneCloneInst coreopsarithMulInst r iter1 r_power1)
    (iter, r_power)

/-- [ark_ip_proofs::applications::groth16_aggregation::fold_public_inputs_core]: loop body 6:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 2299:4-2301:5 -/
def applications.groth16_aggregation.fold_public_inputs_core_loop5.body
  {F : Type} (corecloneCloneInst : core.clone.Clone F) (coreopsarithMulInst :
  core.ops.arith.Mul F F F) (r : F) (iter : core.ops.range.Range)
  (r_vec : alloc.vec.Vec F) :
  Result (ControlFlow ((core.ops.range.Range) × (alloc.vec.Vec F))
    (alloc.vec.Vec F))
  := do
  let (o, iter1) ←
    core.iter.range.IteratorRange.next core.iter.range.StepUsize iter
  match o with
  | none => ok (done r_vec)
  | some index =>
    let i ← index - 1#usize
    let t ←
      alloc.vec.Vec.index (core.slice.index.SliceIndexUsizeSlice F) r_vec i
    let t1 ← corecloneCloneInst.clone t
    let t2 ← corecloneCloneInst.clone r
    let t3 ← coreopsarithMulInst.mul t1 t2
    let (_, index_mut_back) ←
      alloc.vec.Vec.index_mut (core.slice.index.SliceIndexUsizeSlice F) r_vec
        index
    let r_vec1 := index_mut_back t3
    ok (cont (iter1, r_vec1))

/-- [ark_ip_proofs::applications::groth16_aggregation::fold_public_inputs_core]: loop 6:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 2299:4-2301:5 -/
def applications.groth16_aggregation.fold_public_inputs_core_loop5
  {F : Type} (corecloneCloneInst : core.clone.Clone F) (coreopsarithMulInst :
  core.ops.arith.Mul F F F) (iter : core.ops.range.Range) (r : F)
  (r_vec : alloc.vec.Vec F) :
  Result (alloc.vec.Vec F)
  := do
  loop
    (fun (iter1, r_vec1) =>
      applications.groth16_aggregation.fold_public_inputs_core_loop5.body
      corecloneCloneInst coreopsarithMulInst r iter1 r_vec1)
    (iter, r_vec)

/-- [ark_ip_proofs::applications::groth16_aggregation::fold_public_inputs_core]: loop body 8:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 2305:8-2308:9 -/
def applications.groth16_aggregation.fold_public_inputs_core_loop6_loop0.body
  {F : Type} (corecloneCloneInst : core.clone.Clone F) (coreopsarithAddInst :
  core.ops.arith.Add F F F) (coreopsarithMulInst : core.ops.arith.Mul F F F)
  (public_inputs : Slice (alloc.vec.Vec F)) (r_vec : alloc.vec.Vec F)
  (row_index : Std.Usize) (iter : core.ops.range.Range)
  (folded_public_inputs : alloc.vec.Vec F) :
  Result (ControlFlow ((core.ops.range.Range) × (alloc.vec.Vec F))
    (alloc.vec.Vec F))
  := do
  let (o, iter1) ←
    core.iter.range.IteratorRange.next core.iter.range.StepUsize iter
  match o with
  | none => ok (done folded_public_inputs)
  | some input_index =>
    let v ← Slice.index_usize public_inputs row_index
    let t ←
      alloc.vec.Vec.index (core.slice.index.SliceIndexUsizeSlice F) v
        input_index
    let t1 ← corecloneCloneInst.clone t
    let t2 ←
      alloc.vec.Vec.index (core.slice.index.SliceIndexUsizeSlice F) r_vec
        row_index
    let t3 ← corecloneCloneInst.clone t2
    let term ← coreopsarithMulInst.mul t1 t3
    let t4 ←
      alloc.vec.Vec.index (core.slice.index.SliceIndexUsizeSlice F)
        folded_public_inputs input_index
    let t5 ← corecloneCloneInst.clone t4
    let t6 ← coreopsarithAddInst.add t5 term
    let (_, index_mut_back) ←
      alloc.vec.Vec.index_mut (core.slice.index.SliceIndexUsizeSlice F)
        folded_public_inputs input_index
    let folded_public_inputs1 := index_mut_back t6
    ok (cont (iter1, folded_public_inputs1))

/-- [ark_ip_proofs::applications::groth16_aggregation::fold_public_inputs_core]: loop 8:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 2305:8-2308:9 -/
def applications.groth16_aggregation.fold_public_inputs_core_loop6_loop0
  {F : Type} (corecloneCloneInst : core.clone.Clone F) (coreopsarithAddInst :
  core.ops.arith.Add F F F) (coreopsarithMulInst : core.ops.arith.Mul F F F)
  (iter : core.ops.range.Range)
  (public_inputs : Slice (alloc.vec.Vec F)) (r_vec : alloc.vec.Vec F)
  (folded_public_inputs : alloc.vec.Vec F) (row_index : Std.Usize) :
  Result (alloc.vec.Vec F)
  := do
  loop
    (fun (iter1, folded_public_inputs1) =>
      applications.groth16_aggregation.fold_public_inputs_core_loop6_loop0.body
      corecloneCloneInst coreopsarithAddInst coreopsarithMulInst public_inputs
      r_vec row_index iter1 folded_public_inputs1)
    (iter, folded_public_inputs)

/-- [ark_ip_proofs::applications::groth16_aggregation::fold_public_inputs_core]: loop body 7:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 2304:4-2309:5 -/
def applications.groth16_aggregation.fold_public_inputs_core_loop6.body
  {F : Type} (corecloneCloneInst : core.clone.Clone F) (coreopsarithAddInst :
  core.ops.arith.Add F F F) (coreopsarithMulInst : core.ops.arith.Mul F F F)
  (public_inputs : Slice (alloc.vec.Vec F)) (input_arity : Std.Usize)
  (r_vec : alloc.vec.Vec F) (iter : core.ops.range.Range)
  (folded_public_inputs : alloc.vec.Vec F) :
  Result (ControlFlow ((core.ops.range.Range) × (alloc.vec.Vec F))
    (alloc.vec.Vec F))
  := do
  let (o, iter1) ←
    core.iter.range.IteratorRange.next core.iter.range.StepUsize iter
  match o with
  | none => ok (done folded_public_inputs)
  | some row_index =>
    let folded_public_inputs1 ←
      applications.groth16_aggregation.fold_public_inputs_core_loop6_loop0
        corecloneCloneInst coreopsarithAddInst coreopsarithMulInst
        { start := 0#usize, «end» := input_arity } public_inputs r_vec
        folded_public_inputs row_index
    ok (cont (iter1, folded_public_inputs1))

/-- [ark_ip_proofs::applications::groth16_aggregation::fold_public_inputs_core]: loop 7:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 2304:4-2309:5 -/
def applications.groth16_aggregation.fold_public_inputs_core_loop6
  {F : Type} (corecloneCloneInst : core.clone.Clone F) (coreopsarithAddInst :
  core.ops.arith.Add F F F) (coreopsarithMulInst : core.ops.arith.Mul F F F)
  (iter : core.ops.range.Range)
  (public_inputs : Slice (alloc.vec.Vec F)) (input_arity : Std.Usize)
  (r_vec : alloc.vec.Vec F) (folded_public_inputs : alloc.vec.Vec F) :
  Result (alloc.vec.Vec F)
  := do
  loop
    (fun (iter1, folded_public_inputs1) =>
      applications.groth16_aggregation.fold_public_inputs_core_loop6.body
      corecloneCloneInst coreopsarithAddInst coreopsarithMulInst public_inputs
      input_arity r_vec iter1 folded_public_inputs1)
    (iter, folded_public_inputs)

/-- [ark_ip_proofs::applications::groth16_aggregation::fold_public_inputs_core]: loop body 9:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 2312:4-2316:5 -/
def applications.groth16_aggregation.fold_public_inputs_core_loop7.body
  {F : Type} {G1 : Type} (corecloneCloneInst : core.clone.Clone F)
  (corecloneCloneInst1 : core.clone.Clone G1) (coreopsarithAddInst :
  core.ops.arith.Add G1 G1 G1) (coreopsarithMulInst : core.ops.arith.Mul G1 F
  G1) (gamma_abc_g1 : Slice G1) (folded_public_inputs : alloc.vec.Vec F)
  (iter : core.ops.range.Range) (g_ic : G1) :
  Result (ControlFlow ((core.ops.range.Range) × G1) G1)
  := do
  let (o, iter1) ←
    core.iter.range.IteratorRange.next core.iter.range.StepUsize iter
  match o with
  | none => ok (done g_ic)
  | some input_index =>
    let i ← input_index + 1#usize
    let t ← Slice.index_usize gamma_abc_g1 i
    let t1 ← corecloneCloneInst1.clone t
    let t2 ←
      alloc.vec.Vec.index (core.slice.index.SliceIndexUsizeSlice F)
        folded_public_inputs input_index
    let t3 ← corecloneCloneInst.clone t2
    let term ← coreopsarithMulInst.mul t1 t3
    let g_ic1 ← coreopsarithAddInst.add g_ic term
    ok (cont (iter1, g_ic1))

/-- [ark_ip_proofs::applications::groth16_aggregation::fold_public_inputs_core]: loop 9:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 2312:4-2316:5 -/
def applications.groth16_aggregation.fold_public_inputs_core_loop7
  {F : Type} {G1 : Type} (corecloneCloneInst : core.clone.Clone F)
  (corecloneCloneInst1 : core.clone.Clone G1) (coreopsarithAddInst :
  core.ops.arith.Add G1 G1 G1) (coreopsarithMulInst : core.ops.arith.Mul G1 F
  G1) (iter : core.ops.range.Range) (gamma_abc_g1 : Slice G1)
  (folded_public_inputs : alloc.vec.Vec F) (g_ic : G1) :
  Result G1
  := do
  loop
    (fun (iter1, g_ic1) =>
      applications.groth16_aggregation.fold_public_inputs_core_loop7.body
      corecloneCloneInst corecloneCloneInst1 coreopsarithAddInst
      coreopsarithMulInst gamma_abc_g1 folded_public_inputs iter1 g_ic1)
    (iter, g_ic)

/-- [ark_ip_proofs::applications::groth16_aggregation::fold_public_inputs_core]:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 2264:0-2319:1 -/
def applications.groth16_aggregation.fold_public_inputs_core
  {F : Type} {G1 : Type} (corecloneCloneInst : core.clone.Clone F)
  (corecmpPartialEqInst : core.cmp.PartialEq F F) (coreconvertFromFU64Inst :
  core.convert.From F Std.U64) (num_traitsidentitiesOneInst :
  num_traits.identities.One F) (num_traitsidentitiesZeroInst :
  num_traits.identities.Zero F) (coreopsarithAddInst : core.ops.arith.Add F F
  F) (coreopsarithDivInst : core.ops.arith.Div F F F) (coreopsarithMulInst :
  core.ops.arith.Mul F F F) (coreopsarithSubInst : core.ops.arith.Sub F F F)
  (corecloneCloneInst1 : core.clone.Clone G1) (coreopsarithAddInst1 :
  core.ops.arith.Add G1 G1 G1) (coreopsarithMulInst1 : core.ops.arith.Mul G1 F
  G1) (gamma_abc_g1 : Slice G1) (public_inputs : Slice (alloc.vec.Vec F))
  (r : F) :
  Result (F × G1)
  := do
  let b ← core.slice.Slice.is_empty public_inputs
  massert (¬ b)
  let v ← Slice.index_usize public_inputs 0#usize
  let input_arity := alloc.vec.Vec.len v
  let left_val := Slice.len gamma_abc_g1
  let right_val ← input_arity + 1#usize
  massert (left_val = right_val)
  let i := Slice.len public_inputs
  applications.groth16_aggregation.fold_public_inputs_core_loop0
    { start := 0#usize, «end» := i } public_inputs input_arity
  let t ← corecloneCloneInst.clone r
  let t1 ← num_traitsidentitiesOneInst.one
  let b1 ← corecmpPartialEqInst.eq t t1
  if b1
  then
    let i1 := Slice.len public_inputs
    let i2 ← lift (UScalar.cast .U64 i1)
    let r_sum ← coreconvertFromFU64Inst.«from» i2
    let i3 := Slice.len public_inputs
    let r_vec ← alloc.vec.from_elem corecloneCloneInst t1 i3
    let i4 := Slice.len public_inputs
    let r_vec1 ←
      applications.groth16_aggregation.fold_public_inputs_core_loop1
        corecloneCloneInst coreopsarithMulInst
        { start := 1#usize, «end» := i4 } r r_vec
    let t2 ← num_traitsidentitiesZeroInst.zero
    let folded_public_inputs ←
      alloc.vec.from_elem corecloneCloneInst t2 input_arity
    let i5 := Slice.len public_inputs
    let folded_public_inputs1 ←
      applications.groth16_aggregation.fold_public_inputs_core_loop2
        corecloneCloneInst coreopsarithAddInst coreopsarithMulInst
        { start := 0#usize, «end» := i5 } public_inputs input_arity r_vec1
        folded_public_inputs
    let t3 ← Slice.index_usize gamma_abc_g1 0#usize
    let t4 ← corecloneCloneInst1.clone t3
    let t5 ← corecloneCloneInst.clone r_sum
    let g_ic ← coreopsarithMulInst1.mul t4 t5
    let g_ic1 ←
      applications.groth16_aggregation.fold_public_inputs_core_loop3
        corecloneCloneInst corecloneCloneInst1 coreopsarithAddInst1
        coreopsarithMulInst1 { start := 0#usize, «end» := input_arity }
        gamma_abc_g1 folded_public_inputs1 g_ic
    ok (r_sum, g_ic1)
  else
    let i1 := Slice.len public_inputs
    let r_power ←
      applications.groth16_aggregation.fold_public_inputs_core_loop4
        corecloneCloneInst coreopsarithMulInst
        { start := 0#usize, «end» := i1 } r t1
    let t2 ← coreopsarithSubInst.sub r_power t1
    let t3 ← corecloneCloneInst.clone r
    let t4 ← coreopsarithSubInst.sub t3 t1
    let r_sum ← coreopsarithDivInst.div t2 t4
    let i2 := Slice.len public_inputs
    let r_vec ← alloc.vec.from_elem corecloneCloneInst t1 i2
    let i3 := Slice.len public_inputs
    let r_vec1 ←
      applications.groth16_aggregation.fold_public_inputs_core_loop5
        corecloneCloneInst coreopsarithMulInst
        { start := 1#usize, «end» := i3 } r r_vec
    let t5 ← num_traitsidentitiesZeroInst.zero
    let folded_public_inputs ←
      alloc.vec.from_elem corecloneCloneInst t5 input_arity
    let i4 := Slice.len public_inputs
    let folded_public_inputs1 ←
      applications.groth16_aggregation.fold_public_inputs_core_loop6
        corecloneCloneInst coreopsarithAddInst coreopsarithMulInst
        { start := 0#usize, «end» := i4 } public_inputs input_arity r_vec1
        folded_public_inputs
    let t6 ← Slice.index_usize gamma_abc_g1 0#usize
    let t7 ← corecloneCloneInst1.clone t6
    let t8 ← corecloneCloneInst.clone r_sum
    let g_ic ← coreopsarithMulInst1.mul t7 t8
    let g_ic1 ←
      applications.groth16_aggregation.fold_public_inputs_core_loop7
        corecloneCloneInst corecloneCloneInst1 coreopsarithAddInst1
        coreopsarithMulInst1 { start := 0#usize, «end» := input_arity }
        gamma_abc_g1 folded_public_inputs1 g_ic
    ok (r_sum, g_ic1)

/-- [ark_ip_proofs::applications::groth16_aggregation::verify_combined_ppe_core]:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 267:0-302:1 -/
def applications.groth16_aggregation.verify_combined_ppe_core
  {F : Type} {G1 : Type} {G2Prepared : Type} {GT : Type} {E : Type}
  (corecloneCloneInst : core.clone.Clone F) (corecmpPartialEqInst :
  core.cmp.PartialEq F F) (coreconvertFromFU64Inst : core.convert.From F
  Std.U64) (num_traitsidentitiesOneInst : num_traits.identities.One F)
  (num_traitsidentitiesZeroInst : num_traits.identities.Zero F)
  (coreopsarithAddInst : core.ops.arith.Add F F F) (coreopsarithDivInst :
  core.ops.arith.Div F F F) (coreopsarithMulInst : core.ops.arith.Mul F F F)
  (coreopsarithSubInst : core.ops.arith.Sub F F F) (corecloneCloneInst1 :
  core.clone.Clone G1) (coreopsarithAddInst1 : core.ops.arith.Add G1 G1 G1)
  (coreopsarithMulInst1 : core.ops.arith.Mul G1 F G1) (coreopsarithNegInst :
  core.ops.arith.Neg G1 G1) (corecloneCloneInst2 : core.clone.Clone G2Prepared)
  (corecloneCloneInst3 : core.clone.Clone GT) (coreopsarithMulInst2 :
  core.ops.arith.Mul GT F GT) (coreopsarithAddInst2 : core.ops.arith.Add GT GT
  GT) (corecmpPartialEqInst1 : core.cmp.PartialEq GT GT)
  (PreparedPairingEffectInst :
  applications.groth16_aggregation.PreparedPairingEffect E G1 G2Prepared GT)
  (ppe : applications.groth16_aggregation.CombinedChecksPpeInput G1 G2Prepared
  GT) (gamma_abc_g1 : Slice G1) (public_inputs : Slice (alloc.vec.Vec F))
  (r : F) (pairing : E) :
  Result Bool
  := do
  let (r_sum, g_ic) ←
    applications.groth16_aggregation.fold_public_inputs_core corecloneCloneInst
      corecmpPartialEqInst coreconvertFromFU64Inst num_traitsidentitiesOneInst
      num_traitsidentitiesZeroInst coreopsarithAddInst coreopsarithDivInst
      coreopsarithMulInst coreopsarithSubInst corecloneCloneInst1
      coreopsarithAddInst1 coreopsarithMulInst1 gamma_abc_g1 public_inputs r
  applications.groth16_aggregation.verify_ppe_core corecloneCloneInst
    corecloneCloneInst1 coreopsarithNegInst corecloneCloneInst2
    corecloneCloneInst3 coreopsarithMulInst2 coreopsarithAddInst2
    corecmpPartialEqInst1 PreparedPairingEffectInst
    {
      alpha_beta := ppe.alpha_beta,
      r_sum,
      g_ic,
      agg_c := ppe.agg_c,
      gamma_g2_neg_pc := ppe.gamma_g2_neg_pc,
      delta_g2_neg_pc := ppe.delta_g2_neg_pc,
      ip_ab := ppe.ip_ab
    } pairing
/-- [ark_ip_proofs::applications::groth16_aggregation::verify_combined_checks_core::{impl core::ops::function::FnOnce<(E,), ark_ip_proofs::applications::groth16_aggregation::CombinedChecksError<E>> for ark_ip_proofs::applications::groth16_aggregation::verify_combined_checks_core::closure<F, G1, G2, G2Prepared, GT, ABT, CT, E, FX, PE, PPE>}::call_once]:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 424:12-429:13 -/
def
  applications.groth16_aggregation.verify_combined_checks_core.closure.Insts.CoreOpsFunctionFnOnceTupleECombinedChecksError.call_once
  {F : Type} {G1 : Type} {G2 : Type} {G2Prepared : Type} {GT : Type} {ABT :
  Type} {CT : Type} {E : Type} {FX : Type} {PE : Type} {PPE : Type}
  (corecloneCloneInst : core.clone.Clone F) (corecmpPartialEqInst :
  core.cmp.PartialEq F F) (coreconvertFromFU64Inst : core.convert.From F
  Std.U64) (num_traitsidentitiesOneInst : num_traits.identities.One F)
  (num_traitsidentitiesZeroInst : num_traits.identities.Zero F)
  (coreopsarithAddInst : core.ops.arith.Add F F F) (coreopsarithDivInst :
  core.ops.arith.Div F F F) (coreopsarithMulInst : core.ops.arith.Mul F F F)
  (coreopsarithSubInst : core.ops.arith.Sub F F F) (corecloneCloneInst1 :
  core.clone.Clone G1) (coreopsarithAddInst1 : core.ops.arith.Add G1 G1 G1)
  (coreopsarithMulInst1 : core.ops.arith.Mul G1 F G1) (coreopsarithSubInst1 :
  core.ops.arith.Sub G1 G1 G1) (coreopsarithNegInst : core.ops.arith.Neg G1 G1)
  (corecloneCloneInst2 : core.clone.Clone G2) (coreopsarithMulInst2 :
  core.ops.arith.Mul G2 F G2) (coreopsarithSubInst2 : core.ops.arith.Sub G2 G2
  G2) (corecloneCloneInst3 : core.clone.Clone G2Prepared) (corecloneCloneInst4
  : core.clone.Clone GT) (coredefaultDefaultInst : core.default.Default GT)
  (coreopsarithAddInst2 : core.ops.arith.Add GT GT GT) (coreopsarithMulInst3 :
  core.ops.arith.Mul GT F GT) (coreopsarithMulAssignInst :
  core.ops.arith.MulAssign GT F) (num_traitsidentitiesZeroInst1 :
  num_traits.identities.Zero GT) (corecmpPartialEqInst1 : core.cmp.PartialEq GT
  GT) (corecloneCloneInst5 : core.clone.Clone ABT) (coredefaultDefaultInst1 :
  core.default.Default ABT) (coreopsarithAddInst3 : core.ops.arith.Add ABT ABT
  ABT) (coreopsarithMulAssignInst1 : core.ops.arith.MulAssign ABT F)
  (corecloneCloneInst6 : core.clone.Clone CT) (coredefaultDefaultInst2 :
  core.default.Default CT) (coreopsarithAddInst4 : core.ops.arith.Add CT CT CT)
  (coreopsarithMulAssignInst2 : core.ops.arith.MulAssign CT F)
  (TippMippEffectInst : applications.groth16_aggregation.TippMippEffect FX F G1
  G2 GT ABT CT E) (tipaPairingEffectInst : tipa.PairingEffect PE G1 G2 GT)
  (PreparedPairingEffectInst :
  applications.groth16_aggregation.PreparedPairingEffect PPE G1 G2Prepared GT)
  (c : applications.groth16_aggregation.verify_combined_checks_core.closure F
  G1 G2 G2Prepared GT ABT CT E FX PE PPE) (tupled_args : E) :
  Result (applications.groth16_aggregation.CombinedChecksError E)
  := do
  ok
    {
      kind := 2#usize,
      actual_rounds := 0#usize,
      expected_rounds := 0#usize,
      tipp_mipp_error := (some tupled_args)
    }

/-- Trait implementation: [ark_ip_proofs::applications::groth16_aggregation::verify_combined_checks_core::{impl core::ops::function::FnOnce<(E,), ark_ip_proofs::applications::groth16_aggregation::CombinedChecksError<E>> for ark_ip_proofs::applications::groth16_aggregation::verify_combined_checks_core::closure<F, G1, G2, G2Prepared, GT, ABT, CT, E, FX, PE, PPE>}]
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 424:12-429:13 -/
@[reducible]
def
  applications.groth16_aggregation.verify_combined_checks_core.closure.Insts.CoreOpsFunctionFnOnceTupleECombinedChecksError
  {F : Type} {G1 : Type} {G2 : Type} {G2Prepared : Type} {GT : Type} {ABT :
  Type} {CT : Type} {E : Type} {FX : Type} {PE : Type} {PPE : Type}
  (corecloneCloneInst : core.clone.Clone F) (corecmpPartialEqInst :
  core.cmp.PartialEq F F) (coreconvertFromFU64Inst : core.convert.From F
  Std.U64) (num_traitsidentitiesOneInst : num_traits.identities.One F)
  (num_traitsidentitiesZeroInst : num_traits.identities.Zero F)
  (coreopsarithAddInst : core.ops.arith.Add F F F) (coreopsarithDivInst :
  core.ops.arith.Div F F F) (coreopsarithMulInst : core.ops.arith.Mul F F F)
  (coreopsarithSubInst : core.ops.arith.Sub F F F) (corecloneCloneInst1 :
  core.clone.Clone G1) (coreopsarithAddInst1 : core.ops.arith.Add G1 G1 G1)
  (coreopsarithMulInst1 : core.ops.arith.Mul G1 F G1) (coreopsarithSubInst1 :
  core.ops.arith.Sub G1 G1 G1) (coreopsarithNegInst : core.ops.arith.Neg G1 G1)
  (corecloneCloneInst2 : core.clone.Clone G2) (coreopsarithMulInst2 :
  core.ops.arith.Mul G2 F G2) (coreopsarithSubInst2 : core.ops.arith.Sub G2 G2
  G2) (corecloneCloneInst3 : core.clone.Clone G2Prepared) (corecloneCloneInst4
  : core.clone.Clone GT) (coredefaultDefaultInst : core.default.Default GT)
  (coreopsarithAddInst2 : core.ops.arith.Add GT GT GT) (coreopsarithMulInst3 :
  core.ops.arith.Mul GT F GT) (coreopsarithMulAssignInst :
  core.ops.arith.MulAssign GT F) (num_traitsidentitiesZeroInst1 :
  num_traits.identities.Zero GT) (corecmpPartialEqInst1 : core.cmp.PartialEq GT
  GT) (corecloneCloneInst5 : core.clone.Clone ABT) (coredefaultDefaultInst1 :
  core.default.Default ABT) (coreopsarithAddInst3 : core.ops.arith.Add ABT ABT
  ABT) (coreopsarithMulAssignInst1 : core.ops.arith.MulAssign ABT F)
  (corecloneCloneInst6 : core.clone.Clone CT) (coredefaultDefaultInst2 :
  core.default.Default CT) (coreopsarithAddInst4 : core.ops.arith.Add CT CT CT)
  (coreopsarithMulAssignInst2 : core.ops.arith.MulAssign CT F)
  (TippMippEffectInst : applications.groth16_aggregation.TippMippEffect FX F G1
  G2 GT ABT CT E) (tipaPairingEffectInst : tipa.PairingEffect PE G1 G2 GT)
  (PreparedPairingEffectInst :
  applications.groth16_aggregation.PreparedPairingEffect PPE G1 G2Prepared GT)
  : core.ops.function.FnOnce
  (applications.groth16_aggregation.verify_combined_checks_core.closure F G1 G2
  G2Prepared GT ABT CT E FX PE PPE) E
  (applications.groth16_aggregation.CombinedChecksError E) := {
  call_once :=
    applications.groth16_aggregation.verify_combined_checks_core.closure.Insts.CoreOpsFunctionFnOnceTupleECombinedChecksError.call_once
    corecloneCloneInst corecmpPartialEqInst coreconvertFromFU64Inst
    num_traitsidentitiesOneInst num_traitsidentitiesZeroInst
    coreopsarithAddInst coreopsarithDivInst coreopsarithMulInst
    coreopsarithSubInst corecloneCloneInst1 coreopsarithAddInst1
    coreopsarithMulInst1 coreopsarithSubInst1 coreopsarithNegInst
    corecloneCloneInst2 coreopsarithMulInst2 coreopsarithSubInst2
    corecloneCloneInst3 corecloneCloneInst4 coredefaultDefaultInst
    coreopsarithAddInst2 coreopsarithMulInst3 coreopsarithMulAssignInst
    num_traitsidentitiesZeroInst1 corecmpPartialEqInst1 corecloneCloneInst5
    coredefaultDefaultInst1 coreopsarithAddInst3 coreopsarithMulAssignInst1
    corecloneCloneInst6 coredefaultDefaultInst2 coreopsarithAddInst4
    coreopsarithMulAssignInst2 TippMippEffectInst tipaPairingEffectInst
    PreparedPairingEffectInst
}

/-- [ark_ip_proofs::applications::groth16_aggregation::verify_combined_checks_core]:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 305:0-447:1 -/
def applications.groth16_aggregation.verify_combined_checks_core
  {F : Type} {G1 : Type} {G2 : Type} {G2Prepared : Type} {GT : Type} {ABT :
  Type} {CT : Type} {E : Type} {FX : Type} {PE : Type} {PPE : Type}
  (corecloneCloneInst : core.clone.Clone F) (corecmpPartialEqInst :
  core.cmp.PartialEq F F) (coreconvertFromFU64Inst : core.convert.From F
  Std.U64) (num_traitsidentitiesOneInst : num_traits.identities.One F)
  (num_traitsidentitiesZeroInst : num_traits.identities.Zero F)
  (coreopsarithAddInst : core.ops.arith.Add F F F) (coreopsarithDivInst :
  core.ops.arith.Div F F F) (coreopsarithMulInst : core.ops.arith.Mul F F F)
  (coreopsarithSubInst : core.ops.arith.Sub F F F) (corecloneCloneInst1 :
  core.clone.Clone G1) (coreopsarithAddInst1 : core.ops.arith.Add G1 G1 G1)
  (coreopsarithMulInst1 : core.ops.arith.Mul G1 F G1) (coreopsarithSubInst1 :
  core.ops.arith.Sub G1 G1 G1) (coreopsarithNegInst : core.ops.arith.Neg G1 G1)
  (corecloneCloneInst2 : core.clone.Clone G2) (coreopsarithMulInst2 :
  core.ops.arith.Mul G2 F G2) (coreopsarithSubInst2 : core.ops.arith.Sub G2 G2
  G2) (corecloneCloneInst3 : core.clone.Clone G2Prepared) (corecloneCloneInst4
  : core.clone.Clone GT) (coredefaultDefaultInst : core.default.Default GT)
  (coreopsarithAddInst2 : core.ops.arith.Add GT GT GT) (coreopsarithMulInst3 :
  core.ops.arith.Mul GT F GT) (coreopsarithMulAssignInst :
  core.ops.arith.MulAssign GT F) (num_traitsidentitiesZeroInst1 :
  num_traits.identities.Zero GT) (corecmpPartialEqInst1 : core.cmp.PartialEq GT
  GT) (corecloneCloneInst5 : core.clone.Clone ABT) (coredefaultDefaultInst1 :
  core.default.Default ABT) (coreopsarithAddInst3 : core.ops.arith.Add ABT ABT
  ABT) (coreopsarithMulAssignInst1 : core.ops.arith.MulAssign ABT F)
  (corecloneCloneInst6 : core.clone.Clone CT) (coredefaultDefaultInst2 :
  core.default.Default CT) (coreopsarithAddInst4 : core.ops.arith.Add CT CT CT)
  (coreopsarithMulAssignInst2 : core.ops.arith.MulAssign CT F)
  (TippMippEffectInst : applications.groth16_aggregation.TippMippEffect FX F G1
  G2 GT ABT CT E) (tipaPairingEffectInst : tipa.PairingEffect PE G1 G2 GT)
  (PreparedPairingEffectInst :
  applications.groth16_aggregation.PreparedPairingEffect PPE G1 G2Prepared GT)
  (input : applications.groth16_aggregation.CombinedChecksCoreInput F G1 G2
  G2Prepared GT ABT CT) (effect : FX) (tipp_pairing : PE) (ppe_pairing : PPE) :
  Result (core.result.Result
    (applications.groth16_aggregation.CombinedChecksCoreOutput FX)
    (applications.groth16_aggregation.CombinedChecksError E))
  := do
  let num_proofs := alloc.vec.Vec.len input.public_inputs
  if num_proofs = 0#usize
  then
    ok (core.result.Result.Err
      {
        kind := 0#usize,
        actual_rounds := 0#usize,
        expected_rounds := 0#usize,
        tipp_mipp_error := none
      })
  else
    let b ← core.num.Usize.is_power_of_two num_proofs
    if b
    then
      let i ← core.num.Usize.ilog2 num_proofs
      let expected_rounds ← lift (UScalar.cast .Usize i)
      let actual_rounds := alloc.vec.Vec.len input.tipp_mipp.proof.gipa_proof
      if actual_rounds != expected_rounds
      then
        ok (core.result.Result.Err
          {
            kind := 1#usize,
            actual_rounds,
            expected_rounds,
            tipp_mipp_error := none
          })
      else
        let (r, effect1) ←
          applications.groth16_aggregation.verify_tipp_mipp_core
            corecloneCloneInst num_traitsidentitiesOneInst coreopsarithAddInst
            coreopsarithMulInst corecloneCloneInst1 coreopsarithMulInst1
            coreopsarithSubInst1 coreopsarithNegInst corecloneCloneInst2
            coreopsarithMulInst2 coreopsarithSubInst2 corecloneCloneInst4
            coredefaultDefaultInst coreopsarithAddInst2
            coreopsarithMulAssignInst num_traitsidentitiesZeroInst1
            corecloneCloneInst5 coredefaultDefaultInst1 coreopsarithAddInst3
            coreopsarithMulAssignInst1 corecloneCloneInst6
            coredefaultDefaultInst2 coreopsarithAddInst4
            coreopsarithMulAssignInst2 TippMippEffectInst tipaPairingEffectInst
            input.tipp_mipp effect tipp_pairing
        let tipp_result ←
          core.result.Result.map_err
            (applications.groth16_aggregation.verify_combined_checks_core.closure.Insts.CoreOpsFunctionFnOnceTupleECombinedChecksError
            corecloneCloneInst corecmpPartialEqInst coreconvertFromFU64Inst
            num_traitsidentitiesOneInst num_traitsidentitiesZeroInst
            coreopsarithAddInst coreopsarithDivInst coreopsarithMulInst
            coreopsarithSubInst corecloneCloneInst1 coreopsarithAddInst1
            coreopsarithMulInst1 coreopsarithSubInst1 coreopsarithNegInst
            corecloneCloneInst2 coreopsarithMulInst2 coreopsarithSubInst2
            corecloneCloneInst3 corecloneCloneInst4 coredefaultDefaultInst
            coreopsarithAddInst2 coreopsarithMulInst3 coreopsarithMulAssignInst
            num_traitsidentitiesZeroInst1 corecmpPartialEqInst1
            corecloneCloneInst5 coredefaultDefaultInst1 coreopsarithAddInst3
            coreopsarithMulAssignInst1 corecloneCloneInst6
            coredefaultDefaultInst2 coreopsarithAddInst4
            coreopsarithMulAssignInst2 TippMippEffectInst tipaPairingEffectInst
            PreparedPairingEffectInst) r ()
        let s := alloc.vec.Vec.deref input.gamma_abc_g1
        let s1 := alloc.vec.Vec.deref input.public_inputs
        let ppe_valid ←
          applications.groth16_aggregation.verify_combined_ppe_core
            corecloneCloneInst corecmpPartialEqInst coreconvertFromFU64Inst
            num_traitsidentitiesOneInst num_traitsidentitiesZeroInst
            coreopsarithAddInst coreopsarithDivInst coreopsarithMulInst
            coreopsarithSubInst corecloneCloneInst1 coreopsarithAddInst1
            coreopsarithMulInst1 coreopsarithNegInst corecloneCloneInst3
            corecloneCloneInst4 coreopsarithMulInst3 coreopsarithAddInst2
            corecmpPartialEqInst1 PreparedPairingEffectInst input.ppe s s1
            input.r ppe_pairing
        let cf ← core.result.Result.Insts.CoreOpsTry.branch tipp_result
        match cf with
        | core.ops.control_flow.ControlFlow.Continue val =>
          ok (core.result.Result.Ok
            { checks := (val, ppe_valid), tipp_mipp_effect := effect1 })
        | core.ops.control_flow.ControlFlow.Break residual =>
          core.result.Result.Insts.CoreOpsTryTraitFromResidualResultInfallible.from_residual
            (applications.groth16_aggregation.CombinedChecksCoreOutput FX)
            (core.convert.FromSame
            (applications.groth16_aggregation.CombinedChecksError E)) residual
    else
      ok (core.result.Result.Err
        {
          kind := 0#usize,
          actual_rounds := 0#usize,
          expected_rounds := 0#usize,
          tipp_mipp_error := none
        })

end ark_ip_proofs
