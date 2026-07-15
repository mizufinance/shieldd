-- Closed S2-30 extraction of the typed verify_tipp_mipp core graph.
-- Vendored from the pinned WSL hax/Aeneas output; runtime glue is local.
import Ipp.Extracted.AeneasRuntime

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do
set_option linter.unusedVariables false
set_option maxHeartbeats 1000000
set_option maxRecDepth 2048

noncomputable section

namespace ark_ip_proofs

def core.marker.PhantomData (T : Type) := Unit

/-- Trait declaration: [core::ops::arith::Add]
    Source: '/rustc/library/core/src/ops/arith.rs', lines 76:0-76:31
    Name pattern: [core::ops::arith::Add]
    Visibility: public -/
structure core.ops.arith.Add (Self : Type) (Rhs : Type) (Self_Output : Type)
  where
  add : Self → Rhs → Result Self_Output

/-- Trait declaration: [core::ops::arith::Sub]
    Source: '/rustc/library/core/src/ops/arith.rs', lines 188:0-188:31
    Name pattern: [core::ops::arith::Sub]
    Visibility: public -/
structure core.ops.arith.Sub (Self : Type) (Rhs : Type) (Self_Output : Type)
  where
  sub : Self → Rhs → Result Self_Output

/-- Trait declaration: [core::ops::arith::Mul]
    Source: '/rustc/library/core/src/ops/arith.rs', lines 322:0-322:31
    Name pattern: [core::ops::arith::Mul]
    Visibility: public -/
structure core.ops.arith.Mul (Self : Type) (Rhs : Type) (Self_Output : Type)
  where
  mul : Self → Rhs → Result Self_Output

/-- Trait declaration: [core::ops::arith::Neg]
    Source: '/rustc/library/core/src/ops/arith.rs', lines 690:0-690:19
    Name pattern: [core::ops::arith::Neg]
    Visibility: public -/
structure core.ops.arith.Neg (Self : Type) (Self_Output : Type) where
  neg : Self → Result Self_Output

/-- Trait declaration: [core::ops::arith::MulAssign]
    Source: '/rustc/library/core/src/ops/arith.rs', lines 901:0-901:37
    Name pattern: [core::ops::arith::MulAssign]
    Visibility: public -/
structure core.ops.arith.MulAssign (Self : Type) (Rhs : Type) where
  mul_assign : Self → Rhs → Result Self

/-- Trait declaration: [num_traits::identities::Zero]
    Source: '/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/num-traits-0.2.19/src/identities.rs', lines 12:0-12:48
    Name pattern: [num_traits::identities::Zero]
    Visibility: public -/
structure num_traits.identities.Zero (Self : Type) where
  coreopsarithAddInst : core.ops.arith.Add Self Self Self
  zero : Result Self
  is_zero : Self → Result Bool

/-- Trait declaration: [num_traits::identities::One]
    Source: '/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/num-traits-0.2.19/src/identities.rs', lines 106:0-106:47
    Name pattern: [num_traits::identities::One]
    Visibility: public -/
structure num_traits.identities.One (Self : Type) where
  coreopsarithMulInst : core.ops.arith.Mul Self Self Self
  one : Result Self

/-- [ark_ip_proofs::applications::groth16_aggregation::TippMippCoreCommitment]
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 168:0-171:1 -/
structure applications.groth16_aggregation.TippMippCoreCommitment (GT : Type)
  (ABT : Type) (CT : Type) where
  ab : (GT × GT × ABT)
  c : (GT × CT)

/-- [ark_ip_proofs::applications::groth16_aggregation::TippMippCoreProof]
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 174:0-182:1 -/
structure applications.groth16_aggregation.TippMippCoreProof (G1 : Type) (G2 :
  Type) (GT : Type) (ABT : Type) (CT : Type) where
  gipa_proof : alloc.vec.Vec
    ((applications.groth16_aggregation.TippMippCoreCommitment GT ABT CT) ×
    (applications.groth16_aggregation.TippMippCoreCommitment GT ABT CT))
  final_ck : (G2 × G1)
  final_ck_proofs : (G2 × G1)
  final_messages : (G1 × G2 × G1)

/-- [ark_ip_proofs::applications::groth16_aggregation::TippMippCoreInput]
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 184:0-199:1 -/
structure applications.groth16_aggregation.TippMippCoreInput (F : Type) (G1 :
  Type) (G2 : Type) (GT : Type) (ABT : Type) (CT : Type) where
  com_a : GT
  com_b : GT
  com_t : ABT
  com_c : GT
  com_z : CT
  ip_ab : GT
  agg_c : G1
  proof : applications.groth16_aggregation.TippMippCoreProof G1 G2 GT ABT CT
  verifier_g : G1
  verifier_g_beta : G1
  verifier_h : G2
  verifier_h_alpha : G2
  r : F
  kzg_g2_r_shift : F

/-- [ark_ip_proofs::gipa::BaseCommitmentResult]
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/gipa.rs', lines 82:0-85:1 -/
inductive gipa.BaseCommitmentResult (T : Type) (E : Type) where
| Ok : T → gipa.BaseCommitmentResult T E
| Err : E → gipa.BaseCommitmentResult T E

/-- Trait declaration: [ark_ip_proofs::gipa::BaseCommitmentEffect]
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/gipa.rs', lines 103:0-123:1 -/
structure gipa.BaseCommitmentEffect (Self : Type) (KA : Type) (KB : Type) (KT :
  Type) (MA : Type) (MB : Type) (MT : Type) (OA : Type) (OB : Type) (OT : Type)
  (E : Type) where
  inner_product : Self → Slice MA → Slice MB → Result
    (gipa.BaseCommitmentResult MT E)
  verify_left : Self → Slice KA → Slice MA → OA → Result
    (gipa.BaseCommitmentResult Bool E)
  verify_right : Self → Slice KB → Slice MB → OB → Result
    (gipa.BaseCommitmentResult Bool E)
  verify_target : Self → Slice KT → Slice MT → OT → Result
    (gipa.BaseCommitmentResult Bool E)

/-- Trait declaration: [ark_ip_proofs::applications::groth16_aggregation::TippMippEffect]
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 201:0-230:1 -/
structure applications.groth16_aggregation.TippMippEffect (Self : Type) (F :
  Type) (G1 : Type) (G2 : Type) (GT : Type) (ABT : Type) (CT : Type) (E : Type)
  where
  gipaBaseCommitmentEffectSelfG2G1TupleG1G2GTGTGTABTEInst :
    gipa.BaseCommitmentEffect Self G2 G1 Unit G1 G2 GT GT GT ABT E
  derive_x0 : Self → F → GT → GT → GT → GT → G1 → Result
    ((core.result.Result F E) × Self)
  derive_round : Self → F →
    applications.groth16_aggregation.TippMippCoreCommitment GT ABT CT →
    applications.groth16_aggregation.TippMippCoreCommitment GT ABT CT →
    Result ((core.result.Result F E) × Self)
  invert_round : Self → F → Result (core.result.Result F E)
  derive_final_bridge : Self → F → (G2 × G1) → (G1 × G2 × G1) →
    Result ((core.result.Result F E) × Self)
  derive_kzg : Self → F → (G2 × G1) → Result ((core.result.Result F E)
    × Self)
  invert_randomizer : Self → F → Result (core.result.Result F E)
  verify_c : Self → Slice G1 → Slice G2 → GT → Result
    (core.result.Result Bool E)
  verify_z : Self → Slice G1 → Slice F → CT → Result
    (core.result.Result Bool E)

/-- Trait declaration: [ark_ip_proofs::tipa::PairingEffect]
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/tipa/mod.rs', lines 1136:0-1138:1 -/
structure tipa.PairingEffect (Self : Type) (G1 : Type) (G2 : Type) (GT : Type)
  where
  multi_pairing : Self → Slice G1 → Slice G2 → Result (Option GT)

/-- [ark_ip_proofs::gipa::BaseCommitmentCoreInput]
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/gipa.rs', lines 192:0-201:1 -/
structure gipa.BaseCommitmentCoreInput (KA : Type) (KB : Type) (KT : Type) (MA
  : Type) (MB : Type) (OA : Type) (OB : Type) (OT : Type) where
  ck_a : KA
  ck_b : KB
  ck_t : alloc.vec.Vec KT
  a : MA
  b : MB
  com_a : OA
  com_b : OB
  com_t : OT

/-- [ark_ip_proofs::tipa::KzgG1VerifierCoreInput]
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/tipa/mod.rs', lines 1174:0-1183:1 -/
structure tipa.KzgG1VerifierCoreInput (F : Type) (G1 : Type) (G2 : Type) (GT :
  Type) where
  g : G1
  h_alpha : G2
  h : G2
  ck_final : G1
  ck_opening : G1
  eval : F
  z : F
  _pairing_output : core.marker.PhantomData GT

/-- [ark_ip_proofs::applications::groth16_aggregation::verify_tipp_mipp_core::closure#1]
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 358:8-370:9 -/
def applications.groth16_aggregation.verify_tipp_mipp_core.closure_1 (F : Type)
  (G1 : Type) (G2 : Type) (GT : Type) (ABT : Type) (CT : Type) (E : Type) (FX :
  Type) (PE : Type) :=
  applications.groth16_aggregation.TippMippCoreInput F G1 G2 GT ABT CT × G1 ×
  G1 × alloc.vec.Vec F × F × F × PE

/-- [ark_ip_proofs::tipa::KzgG2VerifierCoreInput]
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/tipa/mod.rs', lines 1162:0-1171:1 -/
structure tipa.KzgG2VerifierCoreInput (F : Type) (G1 : Type) (G2 : Type) (GT :
  Type) where
  g : G1
  g_beta : G1
  h : G2
  ck_final : G2
  ck_opening : G2
  eval : F
  z : F
  _pairing_output : core.marker.PhantomData GT

/-- [ark_ip_proofs::applications::groth16_aggregation::verify_tipp_mipp_core::closure]
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 345:8-357:9 -/
def applications.groth16_aggregation.verify_tipp_mipp_core.closure (F : Type)
  (G1 : Type) (G2 : Type) (GT : Type) (ABT : Type) (CT : Type) (E : Type) (FX :
  Type) (PE : Type) :=
  applications.groth16_aggregation.TippMippCoreInput F G1 G2 GT ABT CT × G2 ×
  G2 × alloc.vec.Vec F × F × PE

namespace core.slice.index

structure SliceIndexUsizeSlice (T : Type) where

end core.slice.index

namespace alloc.slice.Slice

def into_vec {T : Type} (items : Slice T) : alloc.vec.Vec T :=
  ⟨items.val⟩

def reverse {T : Type} (items : Slice T) : Slice T :=
  ⟨items.val.reverse⟩

end alloc.slice.Slice

namespace core.slice.Slice

def reverse {T : Type} (items : Slice T) : Slice T :=
  ⟨items.val.reverse⟩

end core.slice.Slice

namespace alloc.vec

namespace Vec

def new (T : Type) : alloc.vec.Vec T := ⟨[]⟩

def len {T : Type} (items : alloc.vec.Vec T) : Std.Usize :=
  ⟨items.val.length⟩

def index {T : Type} (_inst : Type) (items : alloc.vec.Vec T)
    (index : Std.Usize) : Aeneas.Result T :=
  match items.val[index.val]? with
  | some value => .ok value
  | none => .fail .arrayOutOfBounds

def deref {T : Type} (items : alloc.vec.Vec T) : Slice T :=
  ⟨items.val⟩

def deref_mut {T : Type} (items : alloc.vec.Vec T) :
    Slice T × (Slice T → alloc.vec.Vec T) :=
  (⟨items.val⟩, fun slice => ⟨slice.val⟩)

end Vec
end alloc.vec

namespace Array

def make {T : Type} (_size : Std.Usize) (items : List T) : Slice T :=
  ⟨items⟩

def to_slice {T : Type} (items : Slice T) : Slice T := items

end Array

namespace Std.Array

def to_slice {T : Type} (items : Slice T) : Slice T := items

end Std.Array

instance : HSub Std.Usize Std.Usize (Aeneas.Result Std.Usize) where
  hSub left right :=
    if right.val ≤ left.val then .ok ⟨left.val - right.val⟩ else .fail .integerOverflow

/-- [ark_ip_proofs::gipa::verify_base_commitment_core]:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/gipa.rs', lines 203:0-231:1 -/
def gipa.verify_base_commitment_core
  {KA : Type} {KB : Type} {KT : Type} {MA : Type} {MB : Type} {MT : Type} {OA :
  Type} {OB : Type} {OT : Type} {E : Type} {FX : Type}
  (BaseCommitmentEffectInst : gipa.BaseCommitmentEffect FX KA KB KT MA MB MT OA
  OB OT E) (input : gipa.BaseCommitmentCoreInput KA KB KT MA MB OA OB OT)
  (effect : FX) :
  Result (gipa.BaseCommitmentResult Bool E)
  := do
  let y ←
    lift (Std.Array.to_slice (Array.make 1#usize [ input.a ] ))
  let ret := alloc.slice.Slice.into_vec y
  let y1 ←
    lift (Std.Array.to_slice (Array.make 1#usize [ input.b ] ))
  let ret1 := alloc.slice.Slice.into_vec y1
  let s := alloc.vec.Vec.deref ret
  let s1 := alloc.vec.Vec.deref ret1
  let bcr ← BaseCommitmentEffectInst.inner_product effect s s1
  match bcr with
  | gipa.BaseCommitmentResult.Ok value =>
    let t_base := alloc.vec.Vec.with_capacity MT 1#usize
    let t_base1 ← alloc.vec.Vec.push t_base value
    let s2 ← lift (Array.to_slice (Array.make 1#usize [ input.ck_a ]))
    let s3 := alloc.vec.Vec.deref ret
    let bcr1 ← BaseCommitmentEffectInst.verify_left effect s2 s3 input.com_a
    match bcr1 with
    | gipa.BaseCommitmentResult.Ok b =>
      if b
      then
        let s4 ← lift (Array.to_slice (Array.make 1#usize [ input.ck_b ]))
        let s5 := alloc.vec.Vec.deref ret1
        let bcr2 ←
          BaseCommitmentEffectInst.verify_right effect s4 s5 input.com_b
        match bcr2 with
        | gipa.BaseCommitmentResult.Ok b1 =>
          if b1
          then
            let s6 := alloc.vec.Vec.deref input.ck_t
            let s7 := alloc.vec.Vec.deref t_base1
            BaseCommitmentEffectInst.verify_target effect s6 s7 input.com_t
          else ok bcr2
        | gipa.BaseCommitmentResult.Err _ => ok bcr2
      else ok bcr1
    | gipa.BaseCommitmentResult.Err _ => ok bcr1
  | gipa.BaseCommitmentResult.Err error =>
    ok (gipa.BaseCommitmentResult.Err error)

/-- [ark_ip_proofs::mul_helper]:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/lib.rs', lines 15:0-19:1 -/
def mul_helper
  {T : Type} {F : Type} (coreopsarithMulAssignInst : core.ops.arith.MulAssign T
  F) (corecloneCloneInst : core.clone.Clone T) (corecloneCloneInst1 :
  core.clone.Clone F) (t : T) (f : F) :
  Result T
  := do
  let clone ← corecloneCloneInst.clone t
  let t1 ← corecloneCloneInst1.clone f
  coreopsarithMulAssignInst.mul_assign clone t1

/-- [ark_ip_proofs::gipa::fold_output]:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/gipa.rs', lines 57:0-72:1 -/
def gipa.fold_output
  {T : Type} {S : Type} (corecloneCloneInst : core.clone.Clone T)
  (coredefaultDefaultInst : core.default.Default T) (coreopsarithAddInst :
  core.ops.arith.Add T T T) (coreopsarithMulAssignInst :
  core.ops.arith.MulAssign T S) (corecloneCloneInst1 : core.clone.Clone S)
  (left : T) (current : T) (right : T) (c : S) (c_inv : S) :
  Result T
  := do
  let (current_value, _) ← core.mem.take coredefaultDefaultInst current
  let t ←
    mul_helper coreopsarithMulAssignInst corecloneCloneInst corecloneCloneInst1
      left c
  let t1 ← coreopsarithAddInst.add t current_value
  let t2 ←
    mul_helper coreopsarithMulAssignInst corecloneCloneInst corecloneCloneInst1
      right c_inv
  coreopsarithAddInst.add t1 t2

/-- [ark_ip_proofs::applications::groth16_aggregation::structured_scalar_final_from_raw_transcript_inner]: loop body 0:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 1918:4-1922:5 -/
def
  applications.groth16_aggregation.structured_scalar_final_from_raw_transcript_inner_loop.body
  {F : Type} (corecloneCloneInst : core.clone.Clone F) (coreopsarithAddInst :
  core.ops.arith.Add F F F) (coreopsarithMulInst : core.ops.arith.Mul F F F)
  (product : F) (raw_transcript_reversed : Slice F)
  (iter : core.ops.range.Range) (power : F) (product1 : F) :
  Result (ControlFlow ((core.ops.range.Range) × F × F) F)
  := do
  let (o, iter1) ←
    core.iter.range.IteratorRange.next core.iter.range.StepUsize iter
  match o with
  | none => ok (done product1)
  | some i =>
    let t ← Slice.index_usize raw_transcript_reversed i
    let challenge ← corecloneCloneInst.clone t
    let t1 ← corecloneCloneInst.clone power
    let t2 ← coreopsarithMulInst.mul challenge t1
    let t3 ← coreopsarithAddInst.add product t2
    let product2 ← coreopsarithMulInst.mul product1 t3
    let power1 ← coreopsarithMulInst.mul t1 power
    ok (cont (iter1, power1, product2))

/-- [ark_ip_proofs::applications::groth16_aggregation::structured_scalar_final_from_raw_transcript_inner]: loop 0:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 1918:4-1922:5 -/
def
  applications.groth16_aggregation.structured_scalar_final_from_raw_transcript_inner_loop
  {F : Type} (corecloneCloneInst : core.clone.Clone F) (coreopsarithAddInst :
  core.ops.arith.Add F F F) (coreopsarithMulInst : core.ops.arith.Mul F F F)
  (product : F) (iter : core.ops.range.Range)
  (raw_transcript_reversed : Slice F) (power : F) (product1 : F) :
  Result F
  := do
  loop
    (fun (iter1, power1, product2) =>
      applications.groth16_aggregation.structured_scalar_final_from_raw_transcript_inner_loop.body
      corecloneCloneInst coreopsarithAddInst coreopsarithMulInst product
      raw_transcript_reversed iter1 power1 product2)
    (iter, power, product1)

/-- [ark_ip_proofs::applications::groth16_aggregation::structured_scalar_final_from_raw_transcript_inner]:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 1912:0-1924:1 -/
def
  applications.groth16_aggregation.structured_scalar_final_from_raw_transcript_inner
  {F : Type} (corecloneCloneInst : core.clone.Clone F)
  (num_traitsidentitiesOneInst : num_traits.identities.One F)
  (coreopsarithAddInst : core.ops.arith.Add F F F) (coreopsarithMulInst :
  core.ops.arith.Mul F F F) (raw_transcript_reversed : Slice F) (r : F) :
  Result F
  := do
  let power ← corecloneCloneInst.clone r
  let product ← num_traitsidentitiesOneInst.one
  let i := Slice.len raw_transcript_reversed
  applications.groth16_aggregation.structured_scalar_final_from_raw_transcript_inner_loop
    corecloneCloneInst coreopsarithAddInst coreopsarithMulInst product
    { start := 0#usize, «end» := i } raw_transcript_reversed power product

/-- [ark_ip_proofs::tipa::polynomial_evaluation_product_form_from_transcript]: loop body 0:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/tipa/mod.rs', lines 1399:4-1403:5 -/
def tipa.polynomial_evaluation_product_form_from_transcript_loop0.body
  {F : Type} (corecloneCloneInst : core.clone.Clone F)
  (num_traitsidentitiesOneInst : num_traits.identities.One F)
  (coreopsarithAddInst : core.ops.arith.Add F F F) (coreopsarithMulInst :
  core.ops.arith.Mul F F F) (transcript : alloc.vec.Vec F)
  (iter : core.ops.range.Range) (power_2_zr : F)
  (product_form : alloc.vec.Vec F) :
  Result (ControlFlow ((core.ops.range.Range) × F × (alloc.vec.Vec
    F)) (alloc.vec.Vec F))
  := do
  let (o, iter1) ←
    core.iter.range.IteratorRange.next core.iter.range.StepUsize iter
  match o with
  | none => ok (done product_form)
  | some i =>
    let t ←
      alloc.vec.Vec.index (core.slice.index.SliceIndexUsizeSlice F) transcript
        i
    let x ← corecloneCloneInst.clone t
    let t1 ← num_traitsidentitiesOneInst.one
    let t2 ← corecloneCloneInst.clone power_2_zr
    let t3 ← coreopsarithMulInst.mul x t2
    let t4 ← coreopsarithAddInst.add t1 t3
    let product_form1 ← alloc.vec.Vec.push product_form t4
    let power_2_zr1 ← coreopsarithMulInst.mul t2 power_2_zr
    ok (cont (iter1, power_2_zr1, product_form1))

/-- [ark_ip_proofs::tipa::polynomial_evaluation_product_form_from_transcript]: loop 0:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/tipa/mod.rs', lines 1399:4-1403:5 -/
def tipa.polynomial_evaluation_product_form_from_transcript_loop0
  {F : Type} (corecloneCloneInst : core.clone.Clone F)
  (num_traitsidentitiesOneInst : num_traits.identities.One F)
  (coreopsarithAddInst : core.ops.arith.Add F F F) (coreopsarithMulInst :
  core.ops.arith.Mul F F F) (iter : core.ops.range.Range)
  (transcript : alloc.vec.Vec F) (power_2_zr : F)
  (product_form : alloc.vec.Vec F) :
  Result (alloc.vec.Vec F)
  := do
  loop
    (fun (iter1, power_2_zr1, product_form1) =>
      tipa.polynomial_evaluation_product_form_from_transcript_loop0.body
      corecloneCloneInst num_traitsidentitiesOneInst coreopsarithAddInst
      coreopsarithMulInst transcript iter1 power_2_zr1 product_form1)
    (iter, power_2_zr, product_form)

/-- [ark_ip_proofs::tipa::polynomial_evaluation_product_form_from_transcript]: loop body 1:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/tipa/mod.rs', lines 1406:4-1408:5 -/
def tipa.polynomial_evaluation_product_form_from_transcript_loop1.body
  {F : Type} (corecloneCloneInst : core.clone.Clone F) (coreopsarithMulInst :
  core.ops.arith.Mul F F F) (product_form : alloc.vec.Vec F)
  (iter : core.ops.range.Range) (product : F) :
  Result (ControlFlow ((core.ops.range.Range) × F) F)
  := do
  let (o, iter1) ←
    core.iter.range.IteratorRange.next core.iter.range.StepUsize iter
  match o with
  | none => ok (done product)
  | some i =>
    let t ←
      alloc.vec.Vec.index (core.slice.index.SliceIndexUsizeSlice F)
        product_form i
    let t1 ← corecloneCloneInst.clone t
    let product1 ← coreopsarithMulInst.mul product t1
    ok (cont (iter1, product1))

/-- [ark_ip_proofs::tipa::polynomial_evaluation_product_form_from_transcript]: loop 1:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/tipa/mod.rs', lines 1406:4-1408:5 -/
def tipa.polynomial_evaluation_product_form_from_transcript_loop1
  {F : Type} (corecloneCloneInst : core.clone.Clone F) (coreopsarithMulInst :
  core.ops.arith.Mul F F F) (iter : core.ops.range.Range)
  (product_form : alloc.vec.Vec F) (product : F) :
  Result F
  := do
  loop
    (fun (iter1, product1) =>
      tipa.polynomial_evaluation_product_form_from_transcript_loop1.body
      corecloneCloneInst coreopsarithMulInst product_form iter1 product1)
    (iter, product)

/-- [ark_ip_proofs::tipa::polynomial_evaluation_product_form_from_transcript]:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/tipa/mod.rs', lines 1389:0-1410:1 -/
def tipa.polynomial_evaluation_product_form_from_transcript
  {F : Type} (corecloneCloneInst : core.clone.Clone F)
  (num_traitsidentitiesOneInst : num_traits.identities.One F)
  (coreopsarithAddInst : core.ops.arith.Add F F F) (coreopsarithMulInst :
  core.ops.arith.Mul F F F) (transcript : alloc.vec.Vec F) (z : F)
  (r_shift : F) :
  Result F
  := do
  let t ← corecloneCloneInst.clone z
  let t1 ← coreopsarithMulInst.mul t t
  let t2 ← corecloneCloneInst.clone r_shift
  let power_2_zr ← coreopsarithMulInst.mul t1 t2
  let i := alloc.vec.Vec.len transcript
  let product_form ←
    tipa.polynomial_evaluation_product_form_from_transcript_loop0
      corecloneCloneInst num_traitsidentitiesOneInst coreopsarithAddInst
      coreopsarithMulInst { start := 0#usize, «end» := i } transcript
      power_2_zr (alloc.vec.Vec.new F)
  let product ← num_traitsidentitiesOneInst.one
  let i1 := alloc.vec.Vec.len product_form
  tipa.polynomial_evaluation_product_form_from_transcript_loop1
    corecloneCloneInst coreopsarithMulInst { start := 0#usize, «end» := i1 }
    product_form product

/-- [ark_ip_proofs::tipa::verify_commitment_key_g1_kzg_equation_core]:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/tipa/mod.rs', lines 1207:0-1227:1 -/
def tipa.verify_commitment_key_g1_kzg_equation_core
  {F : Type} {G1 : Type} {G2 : Type} {GT : Type} {E : Type} (corecloneCloneInst
  : core.clone.Clone F) (corecloneCloneInst1 : core.clone.Clone G1)
  (coreopsarithMulInst : core.ops.arith.Mul G1 F G1) (coreopsarithSubInst :
  core.ops.arith.Sub G1 G1 G1) (coreopsarithNegInst : core.ops.arith.Neg G1 G1)
  (corecloneCloneInst2 : core.clone.Clone G2) (coreopsarithMulInst1 :
  core.ops.arith.Mul G2 F G2) (coreopsarithSubInst1 : core.ops.arith.Sub G2 G2
  G2) (num_traitsidentitiesZeroInst : num_traits.identities.Zero GT)
  (PairingEffectInst : tipa.PairingEffect E G1 G2 GT)
  (input : tipa.KzgG1VerifierCoreInput F G1 G2 GT) (pairing : E) :
  Result Bool
  := do
  let t ← corecloneCloneInst.clone input.eval
  let t1 ← coreopsarithMulInst.mul input.g t
  let left_0 ← coreopsarithSubInst.sub input.ck_final t1
  let t2 ← corecloneCloneInst2.clone input.h
  let t3 ← corecloneCloneInst.clone input.z
  let t4 ← coreopsarithMulInst1.mul t2 t3
  let right_1 ← coreopsarithSubInst1.sub input.h_alpha t4
  let t5 ← coreopsarithNegInst.neg input.ck_opening
  let s ← lift (Array.to_slice (Array.make 2#usize [ left_0, t5 ]))
  let s1 ← lift (Array.to_slice (Array.make 2#usize [ input.h, right_1 ]))
  let o ← PairingEffectInst.multi_pairing pairing s s1
  match o with
  | none => ok false
  | some output => num_traitsidentitiesZeroInst.is_zero output

/-- [ark_ip_proofs::tipa::verify_commitment_key_g1_kzg_opening_core]:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/tipa/mod.rs', lines 1266:0-1301:1 -/
def tipa.verify_commitment_key_g1_kzg_opening_core
  {F : Type} {G1 : Type} {G2 : Type} {GT : Type} {E : Type} (corecloneCloneInst
  : core.clone.Clone F) (num_traitsidentitiesOneInst :
  num_traits.identities.One F) (coreopsarithAddInst : core.ops.arith.Add F F F)
  (coreopsarithMulInst : core.ops.arith.Mul F F F) (corecloneCloneInst1 :
  core.clone.Clone G1) (coreopsarithMulInst1 : core.ops.arith.Mul G1 F G1)
  (coreopsarithSubInst : core.ops.arith.Sub G1 G1 G1) (coreopsarithNegInst :
  core.ops.arith.Neg G1 G1) (corecloneCloneInst2 : core.clone.Clone G2)
  (coreopsarithMulInst2 : core.ops.arith.Mul G2 F G2) (coreopsarithSubInst1 :
  core.ops.arith.Sub G2 G2 G2) (num_traitsidentitiesZeroInst :
  num_traits.identities.Zero GT) (PairingEffectInst : tipa.PairingEffect E G1
  G2 GT) (g : G1) (h_alpha : G2) (h : G2) (ck_final : G1) (ck_opening : G1)
  (transcript : alloc.vec.Vec F) (r_shift : F) (z : F) (pairing : E) :
  Result Bool
  := do
  let eval ←
    tipa.polynomial_evaluation_product_form_from_transcript corecloneCloneInst
      num_traitsidentitiesOneInst coreopsarithAddInst coreopsarithMulInst
      transcript z r_shift
  let t ← corecloneCloneInst.clone z
  tipa.verify_commitment_key_g1_kzg_equation_core corecloneCloneInst
    corecloneCloneInst1 coreopsarithMulInst1 coreopsarithSubInst
    coreopsarithNegInst corecloneCloneInst2 coreopsarithMulInst2
    coreopsarithSubInst1 num_traitsidentitiesZeroInst PairingEffectInst
    { g, h_alpha, h, ck_final, ck_opening, eval, z := t, _pairing_output := ()
    } pairing

/-- [ark_ip_proofs::applications::groth16_aggregation::verify_tipp_mipp_core::{impl core::ops::function::FnOnce<(), bool> for ark_ip_proofs::applications::groth16_aggregation::verify_tipp_mipp_core::closure#1<'_0, '_1, '_2, '_3, '_4, '_5, '_6, '_7, F, G1, G2, GT, ABT, CT, E, FX, PE>}::call_once]:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 358:8-370:9 -/
def
  applications.groth16_aggregation.verify_tipp_mipp_core.closure_1.Insts.CoreOpsFunctionFnOnceTupleBool.call_once
  {F : Type} {G1 : Type} {G2 : Type} {GT : Type} {ABT : Type} {CT : Type} {E :
  Type} {FX : Type} {PE : Type} (corecloneCloneInst : core.clone.Clone F)
  (num_traitsidentitiesOneInst : num_traits.identities.One F)
  (coreopsarithAddInst : core.ops.arith.Add F F F) (coreopsarithMulInst :
  core.ops.arith.Mul F F F) (corecloneCloneInst1 : core.clone.Clone G1)
  (coreopsarithMulInst1 : core.ops.arith.Mul G1 F G1) (coreopsarithSubInst :
  core.ops.arith.Sub G1 G1 G1) (coreopsarithNegInst : core.ops.arith.Neg G1 G1)
  (corecloneCloneInst2 : core.clone.Clone G2) (coreopsarithMulInst2 :
  core.ops.arith.Mul G2 F G2) (coreopsarithSubInst1 : core.ops.arith.Sub G2 G2
  G2) (corecloneCloneInst3 : core.clone.Clone GT) (coredefaultDefaultInst :
  core.default.Default GT) (coreopsarithAddInst1 : core.ops.arith.Add GT GT GT)
  (coreopsarithMulAssignInst : core.ops.arith.MulAssign GT F)
  (num_traitsidentitiesZeroInst : num_traits.identities.Zero GT)
  (corecloneCloneInst4 : core.clone.Clone ABT) (coredefaultDefaultInst1 :
  core.default.Default ABT) (coreopsarithAddInst2 : core.ops.arith.Add ABT ABT
  ABT) (coreopsarithMulAssignInst1 : core.ops.arith.MulAssign ABT F)
  (corecloneCloneInst5 : core.clone.Clone CT) (coredefaultDefaultInst2 :
  core.default.Default CT) (coreopsarithAddInst3 : core.ops.arith.Add CT CT CT)
  (coreopsarithMulAssignInst2 : core.ops.arith.MulAssign CT F)
  (TippMippEffectInst : applications.groth16_aggregation.TippMippEffect FX F G1
  G2 GT ABT CT E) (tipaPairingEffectInst : tipa.PairingEffect PE G1 G2 GT)
  (c : applications.groth16_aggregation.verify_tipp_mipp_core.closure_1 F G1 G2
  GT ABT CT E FX PE) (_ : Unit) :
  Result Bool
  := do
  let (tmci, t, t1, v, t2, t3, t4) := c
  let t5 ← corecloneCloneInst1.clone tmci.verifier_g
  let t6 ← corecloneCloneInst2.clone tmci.verifier_h_alpha
  let t7 ← corecloneCloneInst2.clone tmci.verifier_h
  let t8 ← corecloneCloneInst1.clone t
  let t9 ← corecloneCloneInst1.clone t1
  tipa.verify_commitment_key_g1_kzg_opening_core corecloneCloneInst
    num_traitsidentitiesOneInst coreopsarithAddInst coreopsarithMulInst
    corecloneCloneInst1 coreopsarithMulInst1 coreopsarithSubInst
    coreopsarithNegInst corecloneCloneInst2 coreopsarithMulInst2
    coreopsarithSubInst1 num_traitsidentitiesZeroInst tipaPairingEffectInst t5
    t6 t7 t8 t9 v t2 t3 t4

/-- Trait implementation: [ark_ip_proofs::applications::groth16_aggregation::verify_tipp_mipp_core::{impl core::ops::function::FnOnce<(), bool> for ark_ip_proofs::applications::groth16_aggregation::verify_tipp_mipp_core::closure#1<'_0, '_1, '_2, '_3, '_4, '_5, '_6, '_7, F, G1, G2, GT, ABT, CT, E, FX, PE>}]
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 358:8-370:9 -/
def
  applications.groth16_aggregation.verify_tipp_mipp_core.closure_1.Insts.CoreOpsFunctionFnOnceTupleBool
  {F : Type} {G1 : Type} {G2 : Type} {GT : Type} {ABT : Type} {CT : Type} {E :
  Type} {FX : Type} {PE : Type} (corecloneCloneInst : core.clone.Clone F)
  (num_traitsidentitiesOneInst : num_traits.identities.One F)
  (coreopsarithAddInst : core.ops.arith.Add F F F) (coreopsarithMulInst :
  core.ops.arith.Mul F F F) (corecloneCloneInst1 : core.clone.Clone G1)
  (coreopsarithMulInst1 : core.ops.arith.Mul G1 F G1) (coreopsarithSubInst :
  core.ops.arith.Sub G1 G1 G1) (coreopsarithNegInst : core.ops.arith.Neg G1 G1)
  (corecloneCloneInst2 : core.clone.Clone G2) (coreopsarithMulInst2 :
  core.ops.arith.Mul G2 F G2) (coreopsarithSubInst1 : core.ops.arith.Sub G2 G2
  G2) (corecloneCloneInst3 : core.clone.Clone GT) (coredefaultDefaultInst :
  core.default.Default GT) (coreopsarithAddInst1 : core.ops.arith.Add GT GT GT)
  (coreopsarithMulAssignInst : core.ops.arith.MulAssign GT F)
  (num_traitsidentitiesZeroInst : num_traits.identities.Zero GT)
  (corecloneCloneInst4 : core.clone.Clone ABT) (coredefaultDefaultInst1 :
  core.default.Default ABT) (coreopsarithAddInst2 : core.ops.arith.Add ABT ABT
  ABT) (coreopsarithMulAssignInst1 : core.ops.arith.MulAssign ABT F)
  (corecloneCloneInst5 : core.clone.Clone CT) (coredefaultDefaultInst2 :
  core.default.Default CT) (coreopsarithAddInst3 : core.ops.arith.Add CT CT CT)
  (coreopsarithMulAssignInst2 : core.ops.arith.MulAssign CT F)
  (TippMippEffectInst : applications.groth16_aggregation.TippMippEffect FX F G1
  G2 GT ABT CT E) (tipaPairingEffectInst : tipa.PairingEffect PE G1 G2 GT) :
  core.ops.function.FnOnce
  (applications.groth16_aggregation.verify_tipp_mipp_core.closure_1 F G1 G2 GT
  ABT CT E FX PE) Unit Bool := {
  call_once :=
    applications.groth16_aggregation.verify_tipp_mipp_core.closure_1.Insts.CoreOpsFunctionFnOnceTupleBool.call_once
    corecloneCloneInst num_traitsidentitiesOneInst coreopsarithAddInst
    coreopsarithMulInst corecloneCloneInst1 coreopsarithMulInst1
    coreopsarithSubInst coreopsarithNegInst corecloneCloneInst2
    coreopsarithMulInst2 coreopsarithSubInst1 corecloneCloneInst3
    coredefaultDefaultInst coreopsarithAddInst1 coreopsarithMulAssignInst
    num_traitsidentitiesZeroInst corecloneCloneInst4 coredefaultDefaultInst1
    coreopsarithAddInst2 coreopsarithMulAssignInst1 corecloneCloneInst5
    coredefaultDefaultInst2 coreopsarithAddInst3 coreopsarithMulAssignInst2
    TippMippEffectInst tipaPairingEffectInst
}

/-- [ark_ip_proofs::tipa::verify_commitment_key_g2_kzg_equation_core]:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/tipa/mod.rs', lines 1185:0-1205:1 -/
def tipa.verify_commitment_key_g2_kzg_equation_core
  {F : Type} {G1 : Type} {G2 : Type} {GT : Type} {E : Type} (corecloneCloneInst
  : core.clone.Clone F) (corecloneCloneInst1 : core.clone.Clone G1)
  (coreopsarithMulInst : core.ops.arith.Mul G1 F G1) (coreopsarithSubInst :
  core.ops.arith.Sub G1 G1 G1) (coreopsarithNegInst : core.ops.arith.Neg G1 G1)
  (corecloneCloneInst2 : core.clone.Clone G2) (coreopsarithMulInst1 :
  core.ops.arith.Mul G2 F G2) (coreopsarithSubInst1 : core.ops.arith.Sub G2 G2
  G2) (num_traitsidentitiesZeroInst : num_traits.identities.Zero GT)
  (PairingEffectInst : tipa.PairingEffect E G1 G2 GT)
  (input : tipa.KzgG2VerifierCoreInput F G1 G2 GT) (pairing : E) :
  Result Bool
  := do
  let t ← corecloneCloneInst.clone input.eval
  let t1 ← coreopsarithMulInst1.mul input.h t
  let right_0 ← coreopsarithSubInst1.sub input.ck_final t1
  let t2 ← corecloneCloneInst1.clone input.g
  let t3 ← corecloneCloneInst.clone input.z
  let t4 ← coreopsarithMulInst.mul t2 t3
  let t5 ← coreopsarithSubInst.sub input.g_beta t4
  let left_1 ← coreopsarithNegInst.neg t5
  let s ← lift (Array.to_slice (Array.make 2#usize [ input.g, left_1 ]))
  let s1 ←
    lift (Array.to_slice (Array.make 2#usize [ right_0, input.ck_opening ]))
  let o ← PairingEffectInst.multi_pairing pairing s s1
  match o with
  | none => ok false
  | some output => num_traitsidentitiesZeroInst.is_zero output

/-- [ark_ip_proofs::tipa::verify_commitment_key_g2_kzg_opening_core]:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/tipa/mod.rs', lines 1229:0-1264:1 -/
def tipa.verify_commitment_key_g2_kzg_opening_core
  {F : Type} {G1 : Type} {G2 : Type} {GT : Type} {E : Type} (corecloneCloneInst
  : core.clone.Clone F) (num_traitsidentitiesOneInst :
  num_traits.identities.One F) (coreopsarithAddInst : core.ops.arith.Add F F F)
  (coreopsarithMulInst : core.ops.arith.Mul F F F) (corecloneCloneInst1 :
  core.clone.Clone G1) (coreopsarithMulInst1 : core.ops.arith.Mul G1 F G1)
  (coreopsarithSubInst : core.ops.arith.Sub G1 G1 G1) (coreopsarithNegInst :
  core.ops.arith.Neg G1 G1) (corecloneCloneInst2 : core.clone.Clone G2)
  (coreopsarithMulInst2 : core.ops.arith.Mul G2 F G2) (coreopsarithSubInst1 :
  core.ops.arith.Sub G2 G2 G2) (num_traitsidentitiesZeroInst :
  num_traits.identities.Zero GT) (PairingEffectInst : tipa.PairingEffect E G1
  G2 GT) (g : G1) (g_beta : G1) (h : G2) (ck_final : G2) (ck_opening : G2)
  (transcript : alloc.vec.Vec F) (r_shift : F) (z : F) (pairing : E) :
  Result Bool
  := do
  let eval ←
    tipa.polynomial_evaluation_product_form_from_transcript corecloneCloneInst
      num_traitsidentitiesOneInst coreopsarithAddInst coreopsarithMulInst
      transcript z r_shift
  let t ← corecloneCloneInst.clone z
  tipa.verify_commitment_key_g2_kzg_equation_core corecloneCloneInst
    corecloneCloneInst1 coreopsarithMulInst1 coreopsarithSubInst
    coreopsarithNegInst corecloneCloneInst2 coreopsarithMulInst2
    coreopsarithSubInst1 num_traitsidentitiesZeroInst PairingEffectInst
    { g, g_beta, h, ck_final, ck_opening, eval, z := t, _pairing_output := () }
    pairing

/-- [ark_ip_proofs::applications::groth16_aggregation::verify_tipp_mipp_core::{impl core::ops::function::FnOnce<(), bool> for ark_ip_proofs::applications::groth16_aggregation::verify_tipp_mipp_core::closure<'_0, '_1, '_2, '_3, '_4, '_5, '_6, F, G1, G2, GT, ABT, CT, E, FX, PE>}::call_once]:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 345:8-357:9 -/
def
  applications.groth16_aggregation.verify_tipp_mipp_core.closure.Insts.CoreOpsFunctionFnOnceTupleBool.call_once
  {F : Type} {G1 : Type} {G2 : Type} {GT : Type} {ABT : Type} {CT : Type} {E :
  Type} {FX : Type} {PE : Type} (corecloneCloneInst : core.clone.Clone F)
  (num_traitsidentitiesOneInst : num_traits.identities.One F)
  (coreopsarithAddInst : core.ops.arith.Add F F F) (coreopsarithMulInst :
  core.ops.arith.Mul F F F) (corecloneCloneInst1 : core.clone.Clone G1)
  (coreopsarithMulInst1 : core.ops.arith.Mul G1 F G1) (coreopsarithSubInst :
  core.ops.arith.Sub G1 G1 G1) (coreopsarithNegInst : core.ops.arith.Neg G1 G1)
  (corecloneCloneInst2 : core.clone.Clone G2) (coreopsarithMulInst2 :
  core.ops.arith.Mul G2 F G2) (coreopsarithSubInst1 : core.ops.arith.Sub G2 G2
  G2) (corecloneCloneInst3 : core.clone.Clone GT) (coredefaultDefaultInst :
  core.default.Default GT) (coreopsarithAddInst1 : core.ops.arith.Add GT GT GT)
  (coreopsarithMulAssignInst : core.ops.arith.MulAssign GT F)
  (num_traitsidentitiesZeroInst : num_traits.identities.Zero GT)
  (corecloneCloneInst4 : core.clone.Clone ABT) (coredefaultDefaultInst1 :
  core.default.Default ABT) (coreopsarithAddInst2 : core.ops.arith.Add ABT ABT
  ABT) (coreopsarithMulAssignInst1 : core.ops.arith.MulAssign ABT F)
  (corecloneCloneInst5 : core.clone.Clone CT) (coredefaultDefaultInst2 :
  core.default.Default CT) (coreopsarithAddInst3 : core.ops.arith.Add CT CT CT)
  (coreopsarithMulAssignInst2 : core.ops.arith.MulAssign CT F)
  (TippMippEffectInst : applications.groth16_aggregation.TippMippEffect FX F G1
  G2 GT ABT CT E) (tipaPairingEffectInst : tipa.PairingEffect PE G1 G2 GT)
  (c : applications.groth16_aggregation.verify_tipp_mipp_core.closure F G1 G2
  GT ABT CT E FX PE) (_ : Unit) :
  Result Bool
  := do
  let (tmci, t, t1, v, t2, t3) := c
  let t4 ← corecloneCloneInst1.clone tmci.verifier_g
  let t5 ← corecloneCloneInst1.clone tmci.verifier_g_beta
  let t6 ← corecloneCloneInst2.clone tmci.verifier_h
  let t7 ← corecloneCloneInst2.clone t
  let t8 ← corecloneCloneInst2.clone t1
  tipa.verify_commitment_key_g2_kzg_opening_core corecloneCloneInst
    num_traitsidentitiesOneInst coreopsarithAddInst coreopsarithMulInst
    corecloneCloneInst1 coreopsarithMulInst1 coreopsarithSubInst
    coreopsarithNegInst corecloneCloneInst2 coreopsarithMulInst2
    coreopsarithSubInst1 num_traitsidentitiesZeroInst tipaPairingEffectInst t4
    t5 t6 t7 t8 v tmci.kzg_g2_r_shift t2 t3

/-- Trait implementation: [ark_ip_proofs::applications::groth16_aggregation::verify_tipp_mipp_core::{impl core::ops::function::FnOnce<(), bool> for ark_ip_proofs::applications::groth16_aggregation::verify_tipp_mipp_core::closure<'_0, '_1, '_2, '_3, '_4, '_5, '_6, F, G1, G2, GT, ABT, CT, E, FX, PE>}]
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 345:8-357:9 -/
def
  applications.groth16_aggregation.verify_tipp_mipp_core.closure.Insts.CoreOpsFunctionFnOnceTupleBool
  {F : Type} {G1 : Type} {G2 : Type} {GT : Type} {ABT : Type} {CT : Type} {E :
  Type} {FX : Type} {PE : Type} (corecloneCloneInst : core.clone.Clone F)
  (num_traitsidentitiesOneInst : num_traits.identities.One F)
  (coreopsarithAddInst : core.ops.arith.Add F F F) (coreopsarithMulInst :
  core.ops.arith.Mul F F F) (corecloneCloneInst1 : core.clone.Clone G1)
  (coreopsarithMulInst1 : core.ops.arith.Mul G1 F G1) (coreopsarithSubInst :
  core.ops.arith.Sub G1 G1 G1) (coreopsarithNegInst : core.ops.arith.Neg G1 G1)
  (corecloneCloneInst2 : core.clone.Clone G2) (coreopsarithMulInst2 :
  core.ops.arith.Mul G2 F G2) (coreopsarithSubInst1 : core.ops.arith.Sub G2 G2
  G2) (corecloneCloneInst3 : core.clone.Clone GT) (coredefaultDefaultInst :
  core.default.Default GT) (coreopsarithAddInst1 : core.ops.arith.Add GT GT GT)
  (coreopsarithMulAssignInst : core.ops.arith.MulAssign GT F)
  (num_traitsidentitiesZeroInst : num_traits.identities.Zero GT)
  (corecloneCloneInst4 : core.clone.Clone ABT) (coredefaultDefaultInst1 :
  core.default.Default ABT) (coreopsarithAddInst2 : core.ops.arith.Add ABT ABT
  ABT) (coreopsarithMulAssignInst1 : core.ops.arith.MulAssign ABT F)
  (corecloneCloneInst5 : core.clone.Clone CT) (coredefaultDefaultInst2 :
  core.default.Default CT) (coreopsarithAddInst3 : core.ops.arith.Add CT CT CT)
  (coreopsarithMulAssignInst2 : core.ops.arith.MulAssign CT F)
  (TippMippEffectInst : applications.groth16_aggregation.TippMippEffect FX F G1
  G2 GT ABT CT E) (tipaPairingEffectInst : tipa.PairingEffect PE G1 G2 GT) :
  core.ops.function.FnOnce
  (applications.groth16_aggregation.verify_tipp_mipp_core.closure F G1 G2 GT
  ABT CT E FX PE) Unit Bool := {
  call_once :=
    applications.groth16_aggregation.verify_tipp_mipp_core.closure.Insts.CoreOpsFunctionFnOnceTupleBool.call_once
    corecloneCloneInst num_traitsidentitiesOneInst coreopsarithAddInst
    coreopsarithMulInst corecloneCloneInst1 coreopsarithMulInst1
    coreopsarithSubInst coreopsarithNegInst corecloneCloneInst2
    coreopsarithMulInst2 coreopsarithSubInst1 corecloneCloneInst3
    coredefaultDefaultInst coreopsarithAddInst1 coreopsarithMulAssignInst
    num_traitsidentitiesZeroInst corecloneCloneInst4 coredefaultDefaultInst1
    coreopsarithAddInst2 coreopsarithMulAssignInst1 corecloneCloneInst5
    coredefaultDefaultInst2 coreopsarithAddInst3 coreopsarithMulAssignInst2
    TippMippEffectInst tipaPairingEffectInst
}

/-- [ark_ip_proofs::applications::groth16_aggregation::verify_tipp_mipp_core]: loop body 0:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 268:4-321:5 -/
def applications.groth16_aggregation.verify_tipp_mipp_core_loop.body
  {F : Type} {G1 : Type} {G2 : Type} {GT : Type} {ABT : Type} {CT : Type} {E :
  Type} {FX : Type} (corecloneCloneInst : core.clone.Clone F)
  (corecloneCloneInst1 : core.clone.Clone GT) (coredefaultDefaultInst :
  core.default.Default GT) (coreopsarithAddInst : core.ops.arith.Add GT GT GT)
  (coreopsarithMulAssignInst : core.ops.arith.MulAssign GT F)
  (corecloneCloneInst2 : core.clone.Clone ABT) (coredefaultDefaultInst1 :
  core.default.Default ABT) (coreopsarithAddInst1 : core.ops.arith.Add ABT ABT
  ABT) (coreopsarithMulAssignInst1 : core.ops.arith.MulAssign ABT F)
  (corecloneCloneInst3 : core.clone.Clone CT) (coredefaultDefaultInst2 :
  core.default.Default CT) (coreopsarithAddInst2 : core.ops.arith.Add CT CT CT)
  (coreopsarithMulAssignInst2 : core.ops.arith.MulAssign CT F)
  (TippMippEffectInst : applications.groth16_aggregation.TippMippEffect FX F G1
  G2 GT ABT CT E)
  (v : alloc.vec.Vec ((applications.groth16_aggregation.TippMippCoreCommitment
  GT ABT CT) × (applications.groth16_aggregation.TippMippCoreCommitment GT ABT
  CT))) (round_count : Std.Usize) (iter : core.ops.range.Range)
  (effect : FX) (com_a : GT) (com_b : GT) (com_t : ABT) (com_c : GT)
  (com_z : CT) (prior_raw_challenge : F) (last_raw_challenge : F)
  (raw_transcript_chrono : alloc.vec.Vec F)
  (inv_transcript_chrono : alloc.vec.Vec F) (round_error : Option E) :
  Result (ControlFlow ((core.ops.range.Range) × FX × GT × GT ×
    ABT × GT × CT × F × F × (alloc.vec.Vec F) × (alloc.vec.Vec F) ×
    (Option E)) (FX × GT × GT × ABT × GT × CT × F × (alloc.vec.Vec F) ×
    (alloc.vec.Vec F) × (Option E)))
  := do
  let (o, iter1) ←
    core.iter.range.IteratorRange.next core.iter.range.StepUsize iter
  match o with
  | none =>
    ok (done (effect, com_a, com_b, com_t, com_c, com_z, last_raw_challenge,
      raw_transcript_chrono, inv_transcript_chrono, round_error))
  | some round_offset =>
    let i ← round_count - round_offset
    let round_index ← i - 1#usize
    let (left, right) ←
      alloc.vec.Vec.index (core.slice.index.SliceIndexUsizeSlice
        ((applications.groth16_aggregation.TippMippCoreCommitment GT ABT CT) ×
        (applications.groth16_aggregation.TippMippCoreCommitment GT ABT CT))) v
        round_index
    let b := core.option.Option.is_none round_error
    if b
    then
      let (r, effect1) ←
        TippMippEffectInst.derive_round effect prior_raw_challenge left right
      match r with
      | core.result.Result.Ok raw_challenge =>
        let r1 ← TippMippEffectInst.invert_round effect1 raw_challenge
        match r1 with
        | core.result.Result.Ok inv_challenge =>
          let (t, t1, t2) := left.ab
          let (t3, t4, t5) := right.ab
          let com_a1 ←
            gipa.fold_output corecloneCloneInst1 coredefaultDefaultInst
              coreopsarithAddInst coreopsarithMulAssignInst corecloneCloneInst
              t com_a t3 inv_challenge raw_challenge
          let com_b1 ←
            gipa.fold_output corecloneCloneInst1 coredefaultDefaultInst
              coreopsarithAddInst coreopsarithMulAssignInst corecloneCloneInst
              t1 com_b t4 inv_challenge raw_challenge
          let com_t1 ←
            gipa.fold_output corecloneCloneInst2 coredefaultDefaultInst1
              coreopsarithAddInst1 coreopsarithMulAssignInst1
              corecloneCloneInst t2 com_t t5 inv_challenge raw_challenge
          let (t6, t7) := left.c
          let (t8, t9) := right.c
          let com_c1 ←
            gipa.fold_output corecloneCloneInst1 coredefaultDefaultInst
              coreopsarithAddInst coreopsarithMulAssignInst corecloneCloneInst
              t6 com_c t8 inv_challenge raw_challenge
          let com_z1 ←
            gipa.fold_output corecloneCloneInst3 coredefaultDefaultInst2
              coreopsarithAddInst2 coreopsarithMulAssignInst2
              corecloneCloneInst t7 com_z t9 inv_challenge raw_challenge
          let t10 ← corecloneCloneInst.clone raw_challenge
          let raw_transcript_chrono1 ←
            alloc.vec.Vec.push raw_transcript_chrono t10
          let inv_transcript_chrono1 ←
            alloc.vec.Vec.push inv_transcript_chrono inv_challenge
          ok (cont (iter1, effect1, com_a1, com_b1, com_t1, com_c1, com_z1,
            t10, raw_challenge, raw_transcript_chrono1, inv_transcript_chrono1,
            round_error))
        | core.result.Result.Err error =>
          ok (cont (iter1, effect1, com_a, com_b, com_t, com_c, com_z,
            prior_raw_challenge, last_raw_challenge, raw_transcript_chrono,
            inv_transcript_chrono, some error))
      | core.result.Result.Err error =>
        ok (cont (iter1, effect1, com_a, com_b, com_t, com_c, com_z,
          prior_raw_challenge, last_raw_challenge, raw_transcript_chrono,
          inv_transcript_chrono, some error))
    else
      ok (cont (iter1, effect, com_a, com_b, com_t, com_c, com_z,
        prior_raw_challenge, last_raw_challenge, raw_transcript_chrono,
        inv_transcript_chrono, round_error))

/-- [ark_ip_proofs::applications::groth16_aggregation::verify_tipp_mipp_core]: loop 0:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 268:4-321:5 -/
def applications.groth16_aggregation.verify_tipp_mipp_core_loop
  {F : Type} {G1 : Type} {G2 : Type} {GT : Type} {ABT : Type} {CT : Type} {E :
  Type} {FX : Type} (corecloneCloneInst : core.clone.Clone F)
  (corecloneCloneInst1 : core.clone.Clone GT) (coredefaultDefaultInst :
  core.default.Default GT) (coreopsarithAddInst : core.ops.arith.Add GT GT GT)
  (coreopsarithMulAssignInst : core.ops.arith.MulAssign GT F)
  (corecloneCloneInst2 : core.clone.Clone ABT) (coredefaultDefaultInst1 :
  core.default.Default ABT) (coreopsarithAddInst1 : core.ops.arith.Add ABT ABT
  ABT) (coreopsarithMulAssignInst1 : core.ops.arith.MulAssign ABT F)
  (corecloneCloneInst3 : core.clone.Clone CT) (coredefaultDefaultInst2 :
  core.default.Default CT) (coreopsarithAddInst2 : core.ops.arith.Add CT CT CT)
  (coreopsarithMulAssignInst2 : core.ops.arith.MulAssign CT F)
  (TippMippEffectInst : applications.groth16_aggregation.TippMippEffect FX F G1
  G2 GT ABT CT E) (iter : core.ops.range.Range)
  (v : alloc.vec.Vec ((applications.groth16_aggregation.TippMippCoreCommitment
  GT ABT CT) × (applications.groth16_aggregation.TippMippCoreCommitment GT ABT
  CT))) (effect : FX) (com_a : GT) (com_b : GT) (com_t : ABT) (com_c : GT)
  (com_z : CT) (prior_raw_challenge : F) (last_raw_challenge : F)
  (raw_transcript_chrono : alloc.vec.Vec F)
  (inv_transcript_chrono : alloc.vec.Vec F) (round_error : Option E)
  (round_count : Std.Usize) :
  Result (FX × GT × GT × ABT × GT × CT × F × (alloc.vec.Vec F) ×
    (alloc.vec.Vec F) × (Option E))
  := do
  loop
    (fun (iter1, effect1, com_a1, com_b1, com_t1, com_c1, com_z1,
      prior_raw_challenge1, last_raw_challenge1, raw_transcript_chrono1,
      inv_transcript_chrono1, round_error1) =>
      applications.groth16_aggregation.verify_tipp_mipp_core_loop.body
      corecloneCloneInst corecloneCloneInst1 coredefaultDefaultInst
      coreopsarithAddInst coreopsarithMulAssignInst corecloneCloneInst2
      coredefaultDefaultInst1 coreopsarithAddInst1 coreopsarithMulAssignInst1
      corecloneCloneInst3 coredefaultDefaultInst2 coreopsarithAddInst2
      coreopsarithMulAssignInst2 TippMippEffectInst v round_count iter1 effect1
      com_a1 com_b1 com_t1 com_c1 com_z1 prior_raw_challenge1
      last_raw_challenge1 raw_transcript_chrono1 inv_transcript_chrono1
      round_error1)
    (iter, effect, com_a, com_b, com_t, com_c, com_z, prior_raw_challenge,
      last_raw_challenge, raw_transcript_chrono, inv_transcript_chrono,
      round_error)

/-- [ark_ip_proofs::applications::groth16_aggregation::verify_tipp_mipp_core]:
    Source: 'crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs', lines 232:0-436:1 -/
def applications.groth16_aggregation.verify_tipp_mipp_core
  {F : Type} {G1 : Type} {G2 : Type} {GT : Type} {ABT : Type} {CT : Type} {E :
  Type} {FX : Type} {PE : Type} (corecloneCloneInst : core.clone.Clone F)
  (num_traitsidentitiesOneInst : num_traits.identities.One F)
  (coreopsarithAddInst : core.ops.arith.Add F F F) (coreopsarithMulInst :
  core.ops.arith.Mul F F F) (corecloneCloneInst1 : core.clone.Clone G1)
  (coreopsarithMulInst1 : core.ops.arith.Mul G1 F G1) (coreopsarithSubInst :
  core.ops.arith.Sub G1 G1 G1) (coreopsarithNegInst : core.ops.arith.Neg G1 G1)
  (corecloneCloneInst2 : core.clone.Clone G2) (coreopsarithMulInst2 :
  core.ops.arith.Mul G2 F G2) (coreopsarithSubInst1 : core.ops.arith.Sub G2 G2
  G2) (corecloneCloneInst3 : core.clone.Clone GT) (coredefaultDefaultInst :
  core.default.Default GT) (coreopsarithAddInst1 : core.ops.arith.Add GT GT GT)
  (coreopsarithMulAssignInst : core.ops.arith.MulAssign GT F)
  (num_traitsidentitiesZeroInst : num_traits.identities.Zero GT)
  (corecloneCloneInst4 : core.clone.Clone ABT) (coredefaultDefaultInst1 :
  core.default.Default ABT) (coreopsarithAddInst2 : core.ops.arith.Add ABT ABT
  ABT) (coreopsarithMulAssignInst1 : core.ops.arith.MulAssign ABT F)
  (corecloneCloneInst5 : core.clone.Clone CT) (coredefaultDefaultInst2 :
  core.default.Default CT) (coreopsarithAddInst3 : core.ops.arith.Add CT CT CT)
  (coreopsarithMulAssignInst2 : core.ops.arith.MulAssign CT F)
  (TippMippEffectInst : applications.groth16_aggregation.TippMippEffect FX F G1
  G2 GT ABT CT E) (tipaPairingEffectInst : tipa.PairingEffect PE G1 G2 GT)
  (input : applications.groth16_aggregation.TippMippCoreInput F G1 G2 GT ABT
  CT) (effect : FX) (pairing : PE) :
  Result ((core.result.Result Bool E) × FX)
  := do
  let com_a ← corecloneCloneInst3.clone input.com_a
  let com_b ← corecloneCloneInst3.clone input.com_b
  let com_t ← corecloneCloneInst4.clone input.com_t
  let com_c ← corecloneCloneInst3.clone input.com_c
  let com_z ← corecloneCloneInst5.clone input.com_z
  let (r, effect1) ←
    TippMippEffectInst.derive_x0 effect input.r input.com_a input.com_b
      input.com_c input.ip_ab input.agg_c
  let cf ← core.result.Result.Insts.CoreOpsTry.branch r
  match cf with
  | core.ops.control_flow.ControlFlow.Continue val =>
    let prior_raw_challenge ← corecloneCloneInst.clone val
    let round_count := alloc.vec.Vec.len input.proof.gipa_proof
    let (effect2, com_a1, com_b1, com_t1, com_c1, com_z1, last_raw_challenge,
      raw_transcript_chrono, inv_transcript_chrono, round_error) ←
      applications.groth16_aggregation.verify_tipp_mipp_core_loop
        corecloneCloneInst corecloneCloneInst3 coredefaultDefaultInst
        coreopsarithAddInst1 coreopsarithMulAssignInst corecloneCloneInst4
        coredefaultDefaultInst1 coreopsarithAddInst2 coreopsarithMulAssignInst1
        corecloneCloneInst5 coredefaultDefaultInst2 coreopsarithAddInst3
        coreopsarithMulAssignInst2 TippMippEffectInst
        { start := 0#usize, «end» := round_count } input.proof.gipa_proof
        effect1 com_a com_b com_t com_c com_z prior_raw_challenge val
        (alloc.vec.Vec.new F) (alloc.vec.Vec.new F) none round_count
    match round_error with
    | none =>
      let (s, deref_mut_back) ←
        lift (alloc.vec.Vec.deref_mut raw_transcript_chrono)
      let s1 ← lift (core.slice.Slice.reverse s)
      let (s2, deref_mut_back1) ←
        lift (alloc.vec.Vec.deref_mut inv_transcript_chrono)
      let s3 ← lift (core.slice.Slice.reverse s2)
      let (r1, effect3) ←
        TippMippEffectInst.derive_final_bridge effect2 last_raw_challenge
          input.proof.final_ck input.proof.final_messages
      let cf1 ← core.result.Result.Insts.CoreOpsTry.branch r1
      match cf1 with
      | core.ops.control_flow.ControlFlow.Continue val1 =>
        let (r2, effect4) ←
          TippMippEffectInst.derive_kzg effect3 val1 input.proof.final_ck
        let cf2 ← core.result.Result.Insts.CoreOpsTry.branch r2
        match cf2 with
        | core.ops.control_flow.ControlFlow.Continue val2 =>
          let r3 ← TippMippEffectInst.invert_randomizer effect4 input.r
          let cf3 ← core.result.Result.Insts.CoreOpsTry.branch r3
          match cf3 with
          | core.ops.control_flow.ControlFlow.Continue val3 =>
            let (t, t1) := input.proof.final_ck
            let ck_v_final ← corecloneCloneInst2.clone t
            let ck_w_final ← corecloneCloneInst1.clone t1
            let (t2, t3) := input.proof.final_ck_proofs
            let ck_v_proof ← corecloneCloneInst2.clone t2
            let ck_w_proof ← corecloneCloneInst1.clone t3
            let raw_transcript_chrono1 := deref_mut_back s1
            let inv_transcript_chrono1 := deref_mut_back1 s3
            let (ck_v_valid, ck_w_valid) ←
              rayon_core.join.join
                (applications.groth16_aggregation.verify_tipp_mipp_core.closure.Insts.CoreOpsFunctionFnOnceTupleBool
                corecloneCloneInst num_traitsidentitiesOneInst
                coreopsarithAddInst coreopsarithMulInst corecloneCloneInst1
                coreopsarithMulInst1 coreopsarithSubInst coreopsarithNegInst
                corecloneCloneInst2 coreopsarithMulInst2 coreopsarithSubInst1
                corecloneCloneInst3 coredefaultDefaultInst coreopsarithAddInst1
                coreopsarithMulAssignInst num_traitsidentitiesZeroInst
                corecloneCloneInst4 coredefaultDefaultInst1
                coreopsarithAddInst2 coreopsarithMulAssignInst1
                corecloneCloneInst5 coredefaultDefaultInst2
                coreopsarithAddInst3 coreopsarithMulAssignInst2
                TippMippEffectInst tipaPairingEffectInst)
                (applications.groth16_aggregation.verify_tipp_mipp_core.closure_1.Insts.CoreOpsFunctionFnOnceTupleBool
                corecloneCloneInst num_traitsidentitiesOneInst
                coreopsarithAddInst coreopsarithMulInst corecloneCloneInst1
                coreopsarithMulInst1 coreopsarithSubInst coreopsarithNegInst
                corecloneCloneInst2 coreopsarithMulInst2 coreopsarithSubInst1
                corecloneCloneInst3 coredefaultDefaultInst coreopsarithAddInst1
                coreopsarithMulAssignInst num_traitsidentitiesZeroInst
                corecloneCloneInst4 coredefaultDefaultInst1
                coreopsarithAddInst2 coreopsarithMulAssignInst1
                corecloneCloneInst5 coredefaultDefaultInst2
                coreopsarithAddInst3 coreopsarithMulAssignInst2
                TippMippEffectInst tipaPairingEffectInst) (input, ck_v_final,
                ck_v_proof, raw_transcript_chrono1, val2, pairing) (input,
                ck_w_final, ck_w_proof, inv_transcript_chrono1, val3, val2,
                pairing)
            let (a_final, b_final, c_final) := input.proof.final_messages
            let t4 ← corecloneCloneInst1.clone a_final
            let y ←
              lift (Std.Array.to_slice (Array.make 1#usize [ t4 ] ))
            let ret := alloc.slice.Slice.into_vec y
            let t5 ← corecloneCloneInst2.clone b_final
            let y1 ←
              lift (Std.Array.to_slice (Array.make 1#usize [ t5 ] ))
            let ret1 := alloc.slice.Slice.into_vec y1
            let t6 ← corecloneCloneInst1.clone c_final
            let y2 ←
              lift (Std.Array.to_slice (Array.make 1#usize [ t6 ] ))
            let ret2 := alloc.slice.Slice.into_vec y2
            let t7 ← corecloneCloneInst2.clone ck_v_final
            let y3 ←
              lift (Std.Array.to_slice (Array.make 1#usize [ t7 ] ))
            let ret3 := alloc.slice.Slice.into_vec y3
            let t8 ← corecloneCloneInst1.clone ck_w_final
            let y4 ←
              lift (Std.Array.to_slice (Array.make 1#usize [ t8 ] ))
            let ret4 := alloc.slice.Slice.into_vec y4
            let t9 ←
              alloc.vec.Vec.index (core.slice.index.SliceIndexUsizeSlice G2)
                ret3 0#usize
            let t10 ← corecloneCloneInst2.clone t9
            let t11 ←
              alloc.vec.Vec.index (core.slice.index.SliceIndexUsizeSlice G1)
                ret4 0#usize
            let t12 ← corecloneCloneInst1.clone t11
            let y5 ←
              lift (Std.Array.to_slice (Array.make 1#usize [ () ] ))
            let ret5 := alloc.slice.Slice.into_vec y5
            let t13 ←
              alloc.vec.Vec.index (core.slice.index.SliceIndexUsizeSlice G1)
                ret 0#usize
            let t14 ← corecloneCloneInst1.clone t13
            let t15 ←
              alloc.vec.Vec.index (core.slice.index.SliceIndexUsizeSlice G2)
                ret1 0#usize
            let t16 ← corecloneCloneInst2.clone t15
            let base_result ←
              gipa.verify_base_commitment_core
                TippMippEffectInst.gipaBaseCommitmentEffectSelfG2G1TupleG1G2GTGTGTABTEInst
                {
                  ck_a := t10,
                  ck_b := t12,
                  ck_t := ret5,
                  a := t14,
                  b := t16,
                  com_a := com_a1,
                  com_b := com_b1,
                  com_t := com_t1
                } effect4
            match base_result with
            | gipa.BaseCommitmentResult.Ok value =>
              if value
              then
                let s4 := alloc.vec.Vec.deref ret2
                let s5 := alloc.vec.Vec.deref ret3
                let r4 ← TippMippEffectInst.verify_c effect4 s4 s5 com_c1
                let cf4 ← core.result.Result.Insts.CoreOpsTry.branch r4
                match cf4 with
                | core.ops.control_flow.ControlFlow.Continue val4 =>
                  if val4
                  then
                    let s6 := alloc.vec.Vec.deref raw_transcript_chrono1
                    let final_r ←
                      applications.groth16_aggregation.structured_scalar_final_from_raw_transcript_inner
                        corecloneCloneInst num_traitsidentitiesOneInst
                        coreopsarithAddInst coreopsarithMulInst s6 input.r
                    let s7 := alloc.vec.Vec.deref ret2
                    let s8 ←
                      lift (Array.to_slice (Array.make 1#usize [ final_r ]))
                    let r5 ← TippMippEffectInst.verify_z effect4 s7 s8 com_z1
                    let cf5 ← core.result.Result.Insts.CoreOpsTry.branch r5
                    match cf5 with
                    | core.ops.control_flow.ControlFlow.Continue val5 =>
                      if ck_v_valid
                      then
                        if ck_w_valid
                        then ok (core.result.Result.Ok val5, effect4)
                        else ok (core.result.Result.Ok false, effect4)
                      else ok (core.result.Result.Ok false, effect4)
                    | core.ops.control_flow.ControlFlow.Break residual =>
                      let r6 ←
                        core.result.Result.Insts.CoreOpsTryTraitFromResidualResultInfallible.from_residual
                          Bool (core.convert.FromSame E) residual
                      ok (r6, effect4)
                  else ok (core.result.Result.Ok false, effect4)
                | core.ops.control_flow.ControlFlow.Break residual =>
                  let r5 ←
                    core.result.Result.Insts.CoreOpsTryTraitFromResidualResultInfallible.from_residual
                      Bool (core.convert.FromSame E) residual
                  ok (r5, effect4)
              else ok (core.result.Result.Ok false, effect4)
            | gipa.BaseCommitmentResult.Err error =>
              ok (core.result.Result.Err error, effect4)
          | core.ops.control_flow.ControlFlow.Break residual =>
            let r4 ←
              core.result.Result.Insts.CoreOpsTryTraitFromResidualResultInfallible.from_residual
                Bool (core.convert.FromSame E) residual
            ok (r4, effect4)
        | core.ops.control_flow.ControlFlow.Break residual =>
          let r3 ←
            core.result.Result.Insts.CoreOpsTryTraitFromResidualResultInfallible.from_residual
              Bool (core.convert.FromSame E) residual
          ok (r3, effect4)
      | core.ops.control_flow.ControlFlow.Break residual =>
        let r2 ←
          core.result.Result.Insts.CoreOpsTryTraitFromResidualResultInfallible.from_residual
            Bool (core.convert.FromSame E) residual
        ok (r2, effect3)
    | some error => ok (core.result.Result.Err error, effect2)
  | core.ops.control_flow.ControlFlow.Break residual =>
    let r1 ←
      core.result.Result.Insts.CoreOpsTryTraitFromResidualResultInfallible.from_residual
        Bool (core.convert.FromSame E) residual
    ok (r1, effect1)

end ark_ip_proofs
