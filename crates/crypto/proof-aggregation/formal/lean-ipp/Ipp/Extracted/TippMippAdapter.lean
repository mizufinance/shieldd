import Ipp.Extracted.TippMippAdapterGenerated

/-!
Exact Lean interpretation of the production TIPP/MIPP adapter boundary.
The extracted cores own serialization order, stage routing, comparisons, and
error propagation; only serializer, hash, field, pairing, and MSM primitives
remain parameters.
-/

namespace Ipp.Extracted.TippMippAdapter

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do
open ark_ip_proofs

noncomputable section

abbrev Stage :=
  applications.groth16_aggregation.TippMippChallengeStage

abbrev Primitive (FX F G1 G2 GT : Type) :=
  applications.groth16_aggregation.TippMippAdapterPrimitive
    FX F G1 G2 GT GT G1

abbrev Commitment (GT G1 : Type) :=
  applications.groth16_aggregation.TippMippCoreCommitment GT GT G1

/-- Arkworks' uncompressed `Vec` length prefix for one `IdentityOutput`
element. -/
def singletonIdentityOutputPrefix : List UInt8 :=
  [1, 0, 0, 0, 0, 0, 0, 0]

@[irreducible] def partialEq (T : Type) [DecidableEq T] :
    core.cmp.PartialEq T T where
  eq left right := .ok (decide (left = right))

/-- Exact successful serialization boundary used by the extracted adapter.
Serializers append canonical bytes and do not mutate the challenge effect. -/
structure SerializationContract
    {FX F G1 G2 GT : Type}
    (primitive : Primitive FX F G1 G2 GT) where
  encodeF : F → List UInt8
  encodeG1 : G1 → List UInt8
  encodeG2 : G2 → List UInt8
  encodeGT : GT → List UInt8
  serializeF : ∀ effect value bytes,
    primitive.serialize_f effect value ⟨bytes⟩ =
      .ok (.Ok (), effect, ⟨bytes ++ encodeF value⟩)
  serializeG1 : ∀ effect value bytes,
    primitive.serialize_g1 effect value ⟨bytes⟩ =
      .ok (.Ok (), effect, ⟨bytes ++ encodeG1 value⟩)
  serializeG2 : ∀ effect value bytes,
    primitive.serialize_g2 effect value ⟨bytes⟩ =
      .ok (.Ok (), effect, ⟨bytes ++ encodeG2 value⟩)
  serializeGT : ∀ effect value bytes,
    primitive.serialize_gt effect value ⟨bytes⟩ =
      .ok (.Ok (), effect, ⟨bytes ++ encodeGT value⟩)
  serializeABT : ∀ effect value bytes,
    primitive.serialize_abt effect value ⟨bytes⟩ =
      .ok (.Ok (), effect,
        ⟨bytes ++ singletonIdentityOutputPrefix ++ encodeGT value⟩)
  serializeCT : ∀ effect value bytes,
    primitive.serialize_ct effect value ⟨bytes⟩ =
      .ok (.Ok (), effect,
        ⟨bytes ++ singletonIdentityOutputPrefix ++ encodeG1 value⟩)

def x0Message
    {FX F G1 G2 GT : Type}
    {primitive : Primitive FX F G1 G2 GT}
    (contract : SerializationContract primitive)
    (r : F) (comA comB comC ipAB : GT) (aggC : G1) : List UInt8 :=
  contract.encodeF r ++
    contract.encodeGT comA ++
    contract.encodeGT comB ++
    contract.encodeGT comC ++
    contract.encodeGT ipAB ++
    contract.encodeG1 aggC

def roundMessage
    {FX F G1 G2 GT : Type}
    {primitive : Primitive FX F G1 G2 GT}
    (contract : SerializationContract primitive)
    (prior : F) (left right : Commitment GT G1) : List UInt8 :=
  contract.encodeF prior ++
    contract.encodeGT left.ab.1 ++
    contract.encodeGT left.ab.2.1 ++
    singletonIdentityOutputPrefix ++
    contract.encodeGT left.ab.2.2 ++
    contract.encodeGT left.c.1 ++
    singletonIdentityOutputPrefix ++
    contract.encodeG1 left.c.2 ++
    contract.encodeGT right.ab.1 ++
    contract.encodeGT right.ab.2.1 ++
    singletonIdentityOutputPrefix ++
    contract.encodeGT right.ab.2.2 ++
    contract.encodeGT right.c.1 ++
    singletonIdentityOutputPrefix ++
    contract.encodeG1 right.c.2

def finalBridgeMessage
    {FX F G1 G2 GT : Type}
    {primitive : Primitive FX F G1 G2 GT}
    (contract : SerializationContract primitive)
    (last : F) (finalCk : G2 × G1)
    (finalMessages : G1 × G2 × G1) : List UInt8 :=
  contract.encodeF last ++
    contract.encodeG2 finalCk.1 ++
    contract.encodeG1 finalCk.2 ++
    contract.encodeG1 finalMessages.1 ++
    contract.encodeG2 finalMessages.2.1 ++
    contract.encodeG1 finalMessages.2.2

def kzgMessage
    {FX F G1 G2 GT : Type}
    {primitive : Primitive FX F G1 G2 GT}
    (contract : SerializationContract primitive)
    (bridge : F) (finalCk : G2 × G1) : List UInt8 :=
  contract.encodeF bridge ++
    contract.encodeG2 finalCk.1 ++
    contract.encodeG1 finalCk.2

theorem x0_core_exact
    {FX F G1 G2 GT : Type}
    (primitive : Primitive FX F G1 G2 GT)
    (contract : SerializationContract primitive)
    (effect : FX) (r : F) (comA comB comC ipAB : GT) (aggC : G1) :
    applications.groth16_aggregation.arkworks_tipp_x0_adapter_core
        primitive effect r comA comB comC ipAB aggC =
      primitive.derive_challenge effect .X0
        ⟨x0Message contract r comA comB comC ipAB aggC⟩ := by
  simp [applications.groth16_aggregation.arkworks_tipp_x0_adapter_core,
    contract.serializeF, contract.serializeGT, contract.serializeG1,
    core.result.Result.Insts.CoreOpsTry.branch,
    ark_ip_proofs.alloc.vec.Vec.new,
    alloc.vec.Vec.deref, x0Message, List.append_assoc]

/-- Successful execution of the extracted X0 wrapper exposes exactly one
primitive challenge call with the production stage and serialized payload.
This is an inversion theorem, not an assumption about the primitive. -/
theorem x0_core_success_iff
    {FX F G1 G2 GT : Type}
    (primitive : Primitive FX F G1 G2 GT)
    (contract : SerializationContract primitive)
    (effect next : FX) (r : F) (comA comB comC ipAB : GT) (aggC : G1)
    (value : F) :
    applications.groth16_aggregation.arkworks_tipp_x0_adapter_core
        primitive effect r comA comB comC ipAB aggC =
        .ok (.Ok value, next) ↔
      primitive.derive_challenge effect .X0
          ⟨x0Message contract r comA comB comC ipAB aggC⟩ =
        .ok (.Ok value, next) := by
  rw [x0_core_exact primitive contract]

theorem round_core_exact
    {FX F G1 G2 GT : Type}
    (primitive : Primitive FX F G1 G2 GT)
    (contract : SerializationContract primitive)
    (effect : FX) (prior : F) (left right : Commitment GT G1) :
    applications.groth16_aggregation.arkworks_tipp_round_adapter_core
        primitive effect prior left right =
      primitive.derive_challenge effect .Round
        ⟨roundMessage contract prior left right⟩ := by
  rcases left with ⟨⟨leftA, leftB, leftT⟩, leftC, leftZ⟩
  rcases right with ⟨⟨rightA, rightB, rightT⟩, rightC, rightZ⟩
  simp [applications.groth16_aggregation.arkworks_tipp_round_adapter_core,
    contract.serializeF, contract.serializeGT, contract.serializeABT,
    contract.serializeCT, core.result.Result.Insts.CoreOpsTry.branch,
    ark_ip_proofs.alloc.vec.Vec.new, alloc.vec.Vec.deref, roundMessage,
    List.append_assoc]

/-- Successful execution of one extracted GIPA-round wrapper exposes exactly
one primitive challenge call. The left/right commitment order is fixed by the
extracted serializer proof above. -/
theorem round_core_success_iff
    {FX F G1 G2 GT : Type}
    (primitive : Primitive FX F G1 G2 GT)
    (contract : SerializationContract primitive)
    (effect next : FX) (prior value : F)
    (left right : Commitment GT G1) :
    applications.groth16_aggregation.arkworks_tipp_round_adapter_core
        primitive effect prior left right =
        .ok (.Ok value, next) ↔
      primitive.derive_challenge effect .Round
          ⟨roundMessage contract prior left right⟩ =
        .ok (.Ok value, next) := by
  rw [round_core_exact primitive contract]

theorem final_bridge_core_exact
    {FX F G1 G2 GT : Type}
    (primitive : Primitive FX F G1 G2 GT)
    (contract : SerializationContract primitive)
    (effect : FX) (last : F) (finalCk : G2 × G1)
    (finalMessages : G1 × G2 × G1) :
    applications.groth16_aggregation.arkworks_tipp_final_bridge_adapter_core
        primitive effect last finalCk finalMessages =
      primitive.derive_challenge effect .FinalBridge
        ⟨finalBridgeMessage contract last finalCk finalMessages⟩ := by
  rcases finalCk with ⟨v, w⟩
  rcases finalMessages with ⟨a, b, c⟩
  simp [
    applications.groth16_aggregation.arkworks_tipp_final_bridge_adapter_core,
    contract.serializeF, contract.serializeG2, contract.serializeG1,
    core.result.Result.Insts.CoreOpsTry.branch,
    ark_ip_proofs.alloc.vec.Vec.new,
    alloc.vec.Vec.deref, finalBridgeMessage, List.append_assoc]

/-- Successful execution of the extracted final-bridge wrapper exposes
exactly the corresponding primitive challenge call. -/
theorem final_bridge_core_success_iff
    {FX F G1 G2 GT : Type}
    (primitive : Primitive FX F G1 G2 GT)
    (contract : SerializationContract primitive)
    (effect next : FX) (last value : F) (finalCk : G2 × G1)
    (finalMessages : G1 × G2 × G1) :
    applications.groth16_aggregation.arkworks_tipp_final_bridge_adapter_core
        primitive effect last finalCk finalMessages =
        .ok (.Ok value, next) ↔
      primitive.derive_challenge effect .FinalBridge
          ⟨finalBridgeMessage contract last finalCk finalMessages⟩ =
        .ok (.Ok value, next) := by
  rw [final_bridge_core_exact primitive contract]

theorem kzg_core_exact
    {FX F G1 G2 GT : Type}
    (primitive : Primitive FX F G1 G2 GT)
    (contract : SerializationContract primitive)
    (effect : FX) (bridge : F) (finalCk : G2 × G1) :
    applications.groth16_aggregation.arkworks_tipp_kzg_adapter_core
        primitive effect bridge finalCk =
      primitive.derive_challenge effect .Kzg
        ⟨kzgMessage contract bridge finalCk⟩ := by
  rcases finalCk with ⟨v, w⟩
  simp [applications.groth16_aggregation.arkworks_tipp_kzg_adapter_core,
    contract.serializeF, contract.serializeG2, contract.serializeG1,
    core.result.Result.Insts.CoreOpsTry.branch,
    ark_ip_proofs.alloc.vec.Vec.new,
    alloc.vec.Vec.deref, kzgMessage, List.append_assoc]

/-- Successful execution of the extracted KZG wrapper exposes exactly the
corresponding primitive challenge call. -/
theorem kzg_core_success_iff
    {FX F G1 G2 GT : Type}
    (primitive : Primitive FX F G1 G2 GT)
    (contract : SerializationContract primitive)
    (effect next : FX) (bridge value : F) (finalCk : G2 × G1) :
    applications.groth16_aggregation.arkworks_tipp_kzg_adapter_core
        primitive effect bridge finalCk =
        .ok (.Ok value, next) ↔
      primitive.derive_challenge effect .Kzg
          ⟨kzgMessage contract bridge finalCk⟩ =
        .ok (.Ok value, next) := by
  rw [kzg_core_exact primitive contract]

private def inverseResult {F : Type} (message : String) :
    Result (Option F) → Result (core.result.Result F String)
  | .ok (some inverse) => .ok (.Ok inverse)
  | .ok none => .ok (.Err message)
  | .fail error => .fail error
  | .div => .div

private def baseResult {T : Type} :
    Result (core.result.Result T String) →
      Result (gipa.BaseCommitmentResult T String)
  | .ok (.Ok value) => .ok (.Ok value)
  | .ok (.Err error) => .ok (.Err error)
  | .fail error => .fail error
  | .div => .div

private def targetBaseResult :
    Result Bool → Result (gipa.BaseCommitmentResult Bool String)
  | .ok value => .ok (.Ok value)
  | .fail error => .fail error
  | .div => .div

/-- Concrete effect record used by the extracted verifier when its primitive
boundary is the production Arkworks adapter. -/
@[irreducible] def effectOfPrimitive
    {FX F G1 G2 GT : Type}
    (primitive : Primitive FX F G1 G2 GT)
    (eqGT : core.cmp.PartialEq GT GT)
    (eqG1 : core.cmp.PartialEq G1 G1) :
    applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 String where
  gipaBaseCommitmentEffectSelfG2G1TupleG1G2GTGTGTABTEInst := {
    inner_product := fun effect left right =>
      applications.groth16_aggregation.arkworks_tipp_inner_product_adapter_core
        primitive effect left right
    verify_left := fun effect keys messages commitment =>
      baseResult <|
        applications.groth16_aggregation.arkworks_tipp_pairing_check_adapter_core
          eqGT primitive effect messages keys commitment
    verify_right := fun effect keys messages commitment =>
      baseResult <|
        applications.groth16_aggregation.arkworks_tipp_pairing_check_adapter_core
          eqGT primitive effect keys messages commitment
    verify_target := fun _effect _keys messages commitment =>
      targetBaseResult <|
        applications.groth16_aggregation.arkworks_tipp_target_check_adapter_core
          eqGT messages commitment
  }
  derive_x0 := fun effect r comA comB comC ipAB aggC =>
    applications.groth16_aggregation.arkworks_tipp_x0_adapter_core
      primitive effect r comA comB comC ipAB aggC
  derive_round := fun effect prior left right =>
    applications.groth16_aggregation.arkworks_tipp_round_adapter_core
      primitive effect prior left right
  invert_round := fun effect value =>
    inverseResult "round challenge must be non-zero" <|
      applications.groth16_aggregation.arkworks_tipp_inverse_adapter_core
        primitive effect value
  fold_gt_commitments := fun effect roots rounds inverse raw =>
    primitive.fold_gt_commitments effect roots rounds inverse raw
  derive_final_bridge := fun effect last finalCk finalMessages =>
    applications.groth16_aggregation.arkworks_tipp_final_bridge_adapter_core
      primitive effect last finalCk finalMessages
  derive_kzg := fun effect bridge finalCk =>
    applications.groth16_aggregation.arkworks_tipp_kzg_adapter_core
      primitive effect bridge finalCk
  invert_randomizer := fun effect value =>
    inverseResult "randomizer must be non-zero before inversion" <|
      applications.groth16_aggregation.arkworks_tipp_inverse_adapter_core
        primitive effect value
  verify_c := fun effect messages keys commitment =>
    applications.groth16_aggregation.arkworks_tipp_pairing_check_adapter_core
      eqGT primitive effect messages keys commitment
  verify_z := fun effect messages scalars commitment =>
    applications.groth16_aggregation.arkworks_tipp_msm_check_adapter_core
      eqG1 primitive effect messages scalars commitment

def baseEffectOfPrimitive
    {FX F G1 G2 GT : Type}
    (primitive : Primitive FX F G1 G2 GT)
    (eqGT : core.cmp.PartialEq GT GT)
    (eqG1 : core.cmp.PartialEq G1 G1) :=
  applications.groth16_aggregation.TippMippEffect.gipaBaseCommitmentEffectSelfG2G1TupleG1G2GTGTGTABTEInst
    (effectOfPrimitive primitive eqGT eqG1)

theorem effect_derive_x0_exact
    {FX F G1 G2 GT : Type}
    (primitive : Primitive FX F G1 G2 GT)
    (eqGT : core.cmp.PartialEq GT GT) (eqG1 : core.cmp.PartialEq G1 G1)
    (effect : FX) (r : F) (comA comB comC ipAB : GT) (aggC : G1) :
    (effectOfPrimitive primitive eqGT eqG1).derive_x0
        effect r comA comB comC ipAB aggC =
      applications.groth16_aggregation.arkworks_tipp_x0_adapter_core
        primitive effect r comA comB comC ipAB aggC := by
  simp only [effectOfPrimitive]

theorem effect_derive_round_exact
    {FX F G1 G2 GT : Type}
    (primitive : Primitive FX F G1 G2 GT)
    (eqGT : core.cmp.PartialEq GT GT) (eqG1 : core.cmp.PartialEq G1 G1)
    (effect : FX) (prior : F) (left right : Commitment GT G1) :
    (effectOfPrimitive primitive eqGT eqG1).derive_round
        effect prior left right =
      applications.groth16_aggregation.arkworks_tipp_round_adapter_core
        primitive effect prior left right := by
  simp only [effectOfPrimitive]

theorem effect_fold_gt_commitments_exact
    {FX F G1 G2 GT : Type}
    (primitive : Primitive FX F G1 G2 GT)
    (eqGT : core.cmp.PartialEq GT GT) (eqG1 : core.cmp.PartialEq G1 G1)
    (effect : FX) (roots : GT × GT × GT × GT)
    (rounds : Slice (Commitment GT G1 × Commitment GT G1))
    (inverse raw : Slice F) :
    (effectOfPrimitive primitive eqGT eqG1).fold_gt_commitments
        effect roots rounds inverse raw =
      primitive.fold_gt_commitments effect roots rounds inverse raw := by
  simp only [effectOfPrimitive]

theorem effect_final_bridge_exact
    {FX F G1 G2 GT : Type}
    (primitive : Primitive FX F G1 G2 GT)
    (eqGT : core.cmp.PartialEq GT GT) (eqG1 : core.cmp.PartialEq G1 G1)
    (effect : FX) (last : F) (finalCk : G2 × G1)
    (finalMessages : G1 × G2 × G1) :
    (effectOfPrimitive primitive eqGT eqG1).derive_final_bridge
        effect last finalCk finalMessages =
      applications.groth16_aggregation.arkworks_tipp_final_bridge_adapter_core
        primitive effect last finalCk finalMessages := by
  simp only [effectOfPrimitive]

theorem effect_kzg_exact
    {FX F G1 G2 GT : Type}
    (primitive : Primitive FX F G1 G2 GT)
    (eqGT : core.cmp.PartialEq GT GT) (eqG1 : core.cmp.PartialEq G1 G1)
    (effect : FX) (bridge : F) (finalCk : G2 × G1) :
    (effectOfPrimitive primitive eqGT eqG1).derive_kzg
        effect bridge finalCk =
      applications.groth16_aggregation.arkworks_tipp_kzg_adapter_core
        primitive effect bridge finalCk := by
  simp only [effectOfPrimitive]

theorem effect_invert_round_some
    {FX F G1 G2 GT : Type}
    (primitive : Primitive FX F G1 G2 GT)
    (eqGT : core.cmp.PartialEq GT GT) (eqG1 : core.cmp.PartialEq G1 G1)
    (effect : FX) (value inverse : F)
    (hinverse :
      primitive.inverse effect value = .ok (some inverse)) :
    (effectOfPrimitive primitive eqGT eqG1).invert_round effect value =
      .ok (.Ok inverse) := by
  simp [effectOfPrimitive,
    applications.groth16_aggregation.arkworks_tipp_inverse_adapter_core,
    hinverse, inverseResult]

theorem effect_invert_randomizer_some
    {FX F G1 G2 GT : Type}
    (primitive : Primitive FX F G1 G2 GT)
    (eqGT : core.cmp.PartialEq GT GT) (eqG1 : core.cmp.PartialEq G1 G1)
    (effect : FX) (value inverse : F)
    (hinverse :
      primitive.inverse effect value = .ok (some inverse)) :
    (effectOfPrimitive primitive eqGT eqG1).invert_randomizer effect value =
      .ok (.Ok inverse) := by
  simp [effectOfPrimitive,
    applications.groth16_aggregation.arkworks_tipp_inverse_adapter_core,
    hinverse, inverseResult]

theorem inner_product_singleton_exact
    {FX F G1 G2 GT : Type}
    (primitive : Primitive FX F G1 G2 GT)
    (effect : FX) (left : G1) (right : G2) (value : GT)
    (hpair :
      primitive.pairing_inner_product effect ⟨[left]⟩ ⟨[right]⟩ =
        .ok (.Ok value)) :
    applications.groth16_aggregation.arkworks_tipp_inner_product_adapter_core
        primitive effect ⟨[left]⟩ ⟨[right]⟩ =
      .ok (.Ok value) := by
  simp [applications.groth16_aggregation.arkworks_tipp_inner_product_adapter_core,
    hpair]

theorem pairing_check_singleton_exact
    {FX F G1 G2 GT : Type} [DecidableEq GT]
    (primitive : Primitive FX F G1 G2 GT)
    (effect : FX) (left : G1) (right : G2) (value commitment : GT)
    (hpair :
      primitive.pairing_inner_product effect ⟨[left]⟩ ⟨[right]⟩ =
        .ok (.Ok value)) :
    applications.groth16_aggregation.arkworks_tipp_pairing_check_adapter_core
        (partialEq GT)
        primitive effect ⟨[left]⟩ ⟨[right]⟩ commitment =
      .ok (.Ok (decide (value = commitment))) := by
  simp [applications.groth16_aggregation.arkworks_tipp_pairing_check_adapter_core,
    core.result.Result.Insts.CoreOpsTry.branch,
    partialEq, hpair]

theorem pairing_check_singleton_true_iff
    {FX F G1 G2 GT : Type} [DecidableEq GT]
    (primitive : Primitive FX F G1 G2 GT)
    (effect : FX) (left : G1) (right : G2) (value commitment : GT)
    (hpair :
      primitive.pairing_inner_product effect ⟨[left]⟩ ⟨[right]⟩ =
        .ok (.Ok value)) :
    applications.groth16_aggregation.arkworks_tipp_pairing_check_adapter_core
        (partialEq GT)
        primitive effect ⟨[left]⟩ ⟨[right]⟩ commitment =
          .ok (.Ok true) ↔
      value = commitment := by
  rw [pairing_check_singleton_exact primitive effect left right
    value commitment hpair]
  simp

theorem target_check_singleton_exact
    {GT : Type} [DecidableEq GT] (message commitment : GT) :
    applications.groth16_aggregation.arkworks_tipp_target_check_adapter_core
        (partialEq GT)
        ⟨[message]⟩ commitment =
      .ok (decide (message = commitment)) := by
  simp [applications.groth16_aggregation.arkworks_tipp_target_check_adapter_core,
    Aeneas.Std.Usize.ofNat,
    Aeneas.Std.Slice.len,
    Aeneas.Std.Slice.index_usize,
    partialEq]

theorem target_check_singleton_true_iff
    {GT : Type} [DecidableEq GT] (message commitment : GT) :
    applications.groth16_aggregation.arkworks_tipp_target_check_adapter_core
        (partialEq GT)
        ⟨[message]⟩ commitment =
          .ok true ↔
      message = commitment := by
  rw [target_check_singleton_exact message commitment]
  simp

theorem msm_check_singleton_exact
    {FX F G1 G2 GT : Type} [DecidableEq G1]
    (primitive : Primitive FX F G1 G2 GT)
    (effect : FX) (message : G1) (scalar : F) (value commitment : G1)
    (hmsm :
      primitive.msm_inner_product effect ⟨[message]⟩ ⟨[scalar]⟩ =
        .ok (.Ok value)) :
    applications.groth16_aggregation.arkworks_tipp_msm_check_adapter_core
        (partialEq G1)
        primitive effect ⟨[message]⟩ ⟨[scalar]⟩ commitment =
      .ok (.Ok (decide (value = commitment))) := by
  simp [applications.groth16_aggregation.arkworks_tipp_msm_check_adapter_core,
    core.result.Result.Insts.CoreOpsTry.branch,
    core.slice.cmp.PartialEqSlice.eq_singleton,
    partialEq, hmsm,
    core.array.Array.as_slice, ark_ip_proofs.Array.make]

theorem msm_check_singleton_true_iff
    {FX F G1 G2 GT : Type} [DecidableEq G1]
    (primitive : Primitive FX F G1 G2 GT)
    (effect : FX) (message : G1) (scalar : F) (value commitment : G1)
    (hmsm :
      primitive.msm_inner_product effect ⟨[message]⟩ ⟨[scalar]⟩ =
        .ok (.Ok value)) :
    applications.groth16_aggregation.arkworks_tipp_msm_check_adapter_core
        (partialEq G1)
        primitive effect ⟨[message]⟩ ⟨[scalar]⟩ commitment =
          .ok (.Ok true) ↔
      value = commitment := by
  rw [msm_check_singleton_exact primitive effect message scalar
    value commitment hmsm]
  simp

theorem effect_inner_product_singleton
    {FX F G1 G2 GT : Type}
    (primitive : Primitive FX F G1 G2 GT)
    (eqGT : core.cmp.PartialEq GT GT) (eqG1 : core.cmp.PartialEq G1 G1)
    (effect : FX) (left : G1) (right : G2) (value : GT)
    (hpair :
      primitive.pairing_inner_product effect ⟨[left]⟩ ⟨[right]⟩ =
        .ok (.Ok value)) :
    (baseEffectOfPrimitive primitive eqGT eqG1).inner_product
        effect ⟨[left]⟩ ⟨[right]⟩ =
      .ok (.Ok value) := by
  simpa only [baseEffectOfPrimitive, effectOfPrimitive] using
    inner_product_singleton_exact primitive effect left right value hpair

theorem effect_verify_left_true_iff
    {FX F G1 G2 GT : Type} [DecidableEq G1] [DecidableEq GT]
    (primitive : Primitive FX F G1 G2 GT)
    (effect : FX) (message : G1) (key : G2) (value commitment : GT)
    (hpair :
      primitive.pairing_inner_product effect ⟨[message]⟩ ⟨[key]⟩ =
        .ok (.Ok value)) :
    (baseEffectOfPrimitive primitive
        (partialEq GT)
        (partialEq G1)).verify_left
        effect ⟨[key]⟩ ⟨[message]⟩ commitment =
          .ok (.Ok true) ↔
      value = commitment := by
  rw [show
    (baseEffectOfPrimitive primitive (partialEq GT) (partialEq G1)).verify_left
        effect ⟨[key]⟩ ⟨[message]⟩ commitment =
      baseResult
        (applications.groth16_aggregation.arkworks_tipp_pairing_check_adapter_core
          (partialEq GT) primitive effect ⟨[message]⟩ ⟨[key]⟩ commitment) by
      simp only [baseEffectOfPrimitive, effectOfPrimitive]]
  rw [pairing_check_singleton_exact primitive effect message key
    value commitment hpair]
  simp [baseResult]

theorem effect_verify_left_exact
    {FX F G1 G2 GT : Type} [DecidableEq G1] [DecidableEq GT]
    (primitive : Primitive FX F G1 G2 GT)
    (effect : FX) (message : G1) (key : G2) (value commitment : GT)
    (hpair :
      primitive.pairing_inner_product effect ⟨[message]⟩ ⟨[key]⟩ =
        .ok (.Ok value)) :
    (baseEffectOfPrimitive primitive
        (partialEq GT)
        (partialEq G1)).verify_left
        effect ⟨[key]⟩ ⟨[message]⟩ commitment =
          .ok (.Ok (decide (value = commitment))) := by
  rw [show
    (baseEffectOfPrimitive primitive (partialEq GT) (partialEq G1)).verify_left
        effect ⟨[key]⟩ ⟨[message]⟩ commitment =
      baseResult
        (applications.groth16_aggregation.arkworks_tipp_pairing_check_adapter_core
          (partialEq GT) primitive effect ⟨[message]⟩ ⟨[key]⟩ commitment) by
      simp only [baseEffectOfPrimitive, effectOfPrimitive]]
  rw [pairing_check_singleton_exact primitive effect message key
    value commitment hpair]
  rfl

theorem effect_verify_right_true_iff
    {FX F G1 G2 GT : Type} [DecidableEq G1] [DecidableEq GT]
    (primitive : Primitive FX F G1 G2 GT)
    (effect : FX) (key : G1) (message : G2) (value commitment : GT)
    (hpair :
      primitive.pairing_inner_product effect ⟨[key]⟩ ⟨[message]⟩ =
        .ok (.Ok value)) :
    (baseEffectOfPrimitive primitive
        (partialEq GT)
        (partialEq G1)).verify_right
        effect ⟨[key]⟩ ⟨[message]⟩ commitment =
          .ok (.Ok true) ↔
      value = commitment := by
  rw [show
    (baseEffectOfPrimitive primitive (partialEq GT) (partialEq G1)).verify_right
        effect ⟨[key]⟩ ⟨[message]⟩ commitment =
      baseResult
        (applications.groth16_aggregation.arkworks_tipp_pairing_check_adapter_core
          (partialEq GT) primitive effect ⟨[key]⟩ ⟨[message]⟩ commitment) by
      simp only [baseEffectOfPrimitive, effectOfPrimitive]]
  rw [pairing_check_singleton_exact primitive effect key message
    value commitment hpair]
  simp [baseResult]

theorem effect_verify_right_exact
    {FX F G1 G2 GT : Type} [DecidableEq G1] [DecidableEq GT]
    (primitive : Primitive FX F G1 G2 GT)
    (effect : FX) (key : G1) (message : G2) (value commitment : GT)
    (hpair :
      primitive.pairing_inner_product effect ⟨[key]⟩ ⟨[message]⟩ =
        .ok (.Ok value)) :
    (baseEffectOfPrimitive primitive
        (partialEq GT)
        (partialEq G1)).verify_right
        effect ⟨[key]⟩ ⟨[message]⟩ commitment =
          .ok (.Ok (decide (value = commitment))) := by
  rw [show
    (baseEffectOfPrimitive primitive (partialEq GT) (partialEq G1)).verify_right
        effect ⟨[key]⟩ ⟨[message]⟩ commitment =
      baseResult
        (applications.groth16_aggregation.arkworks_tipp_pairing_check_adapter_core
          (partialEq GT) primitive effect ⟨[key]⟩ ⟨[message]⟩ commitment) by
      simp only [baseEffectOfPrimitive, effectOfPrimitive]]
  rw [pairing_check_singleton_exact primitive effect key message
    value commitment hpair]
  rfl

theorem effect_verify_target_true_iff
    {FX F G1 G2 GT : Type} [DecidableEq G1] [DecidableEq GT]
    (primitive : Primitive FX F G1 G2 GT)
    (effect : FX) (message commitment : GT) :
    (baseEffectOfPrimitive primitive
        (partialEq GT)
        (partialEq G1)).verify_target
        effect ⟨[()]⟩ ⟨[message]⟩ commitment =
          .ok (.Ok true) ↔
      message = commitment := by
  rw [show
    (baseEffectOfPrimitive primitive (partialEq GT) (partialEq G1)).verify_target
        effect ⟨[()]⟩ ⟨[message]⟩ commitment =
      targetBaseResult
        (applications.groth16_aggregation.arkworks_tipp_target_check_adapter_core
          (partialEq GT) ⟨[message]⟩ commitment) by
      simp only [baseEffectOfPrimitive, effectOfPrimitive]]
  rw [target_check_singleton_exact message commitment]
  simp [targetBaseResult]

theorem effect_verify_target_exact
    {FX F G1 G2 GT : Type} [DecidableEq G1] [DecidableEq GT]
    (primitive : Primitive FX F G1 G2 GT)
    (effect : FX) (message commitment : GT) :
    (baseEffectOfPrimitive primitive
        (partialEq GT)
        (partialEq G1)).verify_target
        effect ⟨[()]⟩ ⟨[message]⟩ commitment =
          .ok (.Ok (decide (message = commitment))) := by
  rw [show
    (baseEffectOfPrimitive primitive (partialEq GT) (partialEq G1)).verify_target
        effect ⟨[()]⟩ ⟨[message]⟩ commitment =
      targetBaseResult
        (applications.groth16_aggregation.arkworks_tipp_target_check_adapter_core
          (partialEq GT) ⟨[message]⟩ commitment) by
      simp only [baseEffectOfPrimitive, effectOfPrimitive]]
  rw [target_check_singleton_exact message commitment]
  rfl

theorem effect_verify_c_true_iff
    {FX F G1 G2 GT : Type} [DecidableEq G1] [DecidableEq GT]
    (primitive : Primitive FX F G1 G2 GT)
    (effect : FX) (message : G1) (key : G2) (value commitment : GT)
    (hpair :
      primitive.pairing_inner_product effect ⟨[message]⟩ ⟨[key]⟩ =
        .ok (.Ok value)) :
    (effectOfPrimitive primitive
        (partialEq GT)
        (partialEq G1)).verify_c
        effect ⟨[message]⟩ ⟨[key]⟩ commitment =
          .ok (.Ok true) ↔
      value = commitment := by
  simpa only [effectOfPrimitive] using
    pairing_check_singleton_true_iff primitive effect message key
      value commitment hpair

theorem effect_verify_c_exact
    {FX F G1 G2 GT : Type} [DecidableEq G1] [DecidableEq GT]
    (primitive : Primitive FX F G1 G2 GT)
    (effect : FX) (message : G1) (key : G2) (value commitment : GT)
    (hpair :
      primitive.pairing_inner_product effect ⟨[message]⟩ ⟨[key]⟩ =
        .ok (.Ok value)) :
    (effectOfPrimitive primitive
        (partialEq GT)
        (partialEq G1)).verify_c
        effect ⟨[message]⟩ ⟨[key]⟩ commitment =
      .ok (.Ok (decide (value = commitment))) := by
  simpa only [effectOfPrimitive] using
    pairing_check_singleton_exact primitive effect message key
      value commitment hpair

theorem effect_verify_z_true_iff
    {FX F G1 G2 GT : Type} [DecidableEq G1]
    (primitive : Primitive FX F G1 G2 GT)
    (eqGT : core.cmp.PartialEq GT GT)
    (effect : FX) (message : G1) (scalar : F) (value commitment : G1)
    (hmsm :
      primitive.msm_inner_product effect ⟨[message]⟩ ⟨[scalar]⟩ =
        .ok (.Ok value)) :
    (effectOfPrimitive primitive eqGT
        (partialEq G1)).verify_z
        effect ⟨[message]⟩ ⟨[scalar]⟩ commitment =
          .ok (.Ok true) ↔
      value = commitment := by
  simpa only [effectOfPrimitive] using
    msm_check_singleton_true_iff primitive effect message scalar
      value commitment hmsm

theorem effect_verify_z_exact
    {FX F G1 G2 GT : Type} [DecidableEq G1]
    (primitive : Primitive FX F G1 G2 GT)
    (eqGT : core.cmp.PartialEq GT GT)
    (effect : FX) (message : G1) (scalar : F) (value commitment : G1)
    (hmsm :
      primitive.msm_inner_product effect ⟨[message]⟩ ⟨[scalar]⟩ =
        .ok (.Ok value)) :
    (effectOfPrimitive primitive eqGT
        (partialEq G1)).verify_z
        effect ⟨[message]⟩ ⟨[scalar]⟩ commitment =
      .ok (.Ok (decide (value = commitment))) := by
  simpa only [effectOfPrimitive] using
    msm_check_singleton_exact primitive effect message scalar
      value commitment hmsm

#print axioms x0_core_exact
#print axioms round_core_exact
#print axioms final_bridge_core_exact
#print axioms kzg_core_exact
#print axioms x0_core_success_iff
#print axioms round_core_success_iff
#print axioms final_bridge_core_success_iff
#print axioms kzg_core_success_iff
#print axioms effect_invert_round_some
#print axioms effect_invert_randomizer_some
#print axioms pairing_check_singleton_true_iff
#print axioms target_check_singleton_true_iff
#print axioms msm_check_singleton_true_iff
#print axioms effect_verify_left_true_iff
#print axioms effect_verify_left_exact
#print axioms effect_verify_right_true_iff
#print axioms effect_verify_right_exact
#print axioms effect_verify_target_true_iff
#print axioms effect_verify_target_exact
#print axioms effect_verify_c_true_iff
#print axioms effect_verify_c_exact
#print axioms effect_verify_z_true_iff
#print axioms effect_verify_z_exact

end

end Ipp.Extracted.TippMippAdapter
