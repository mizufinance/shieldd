import Ipp.Extracted.AppVerifierStateMachine
import Ipp.ShippingV1

/-!
Exact family, count, padding, and accepted-result bridge from the production
application state machine to one concrete `ShippingV1Input`.
-/

namespace Ipp.Extracted.AppVerifierStateMachine

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do
open ark_ip_proofs

noncomputable section

/-! The numeric tags are the protocol-facing protobuf discriminants consumed
by the production family router. Subfamily values remain part of the route. -/

def RepresentsShippingFamily (code : FamilyCode) :
    Ipp.ShippingV1.Family → Prop
  | .transfer =>
      code.proof_family_id.val = 7 ∧
        code.note_reshape_family_id.val = 0 ∧
        code.shielded_ics20_withdrawal_family_id.val = 0
  | .noteReshape subfamily =>
      code.proof_family_id.val = 8 ∧
        code.note_reshape_family_id.val = subfamily ∧
        code.shielded_ics20_withdrawal_family_id.val = 0
  | .shieldedIcs20Withdrawal subfamily =>
      code.proof_family_id.val = 10 ∧
        code.note_reshape_family_id.val = 0 ∧
        code.shielded_ics20_withdrawal_family_id.val = subfamily

/-- Canonical production family code for one supported formal route. -/
def shippingFamilyCode : Ipp.ShippingV1.Family → FamilyCode
  | .transfer =>
      { proof_family_id := ⟨7⟩
        note_reshape_family_id := ⟨0⟩
        shielded_ics20_withdrawal_family_id := ⟨0⟩ }
  | .noteReshape subfamily =>
      { proof_family_id := ⟨8⟩
        note_reshape_family_id := ⟨subfamily⟩
        shielded_ics20_withdrawal_family_id := ⟨0⟩ }
  | .shieldedIcs20Withdrawal subfamily =>
      { proof_family_id := ⟨10⟩
        note_reshape_family_id := ⟨0⟩
        shielded_ics20_withdrawal_family_id := ⟨subfamily⟩ }

@[simp] theorem shippingFamilyCode_represents
    (family : Ipp.ShippingV1.Family) :
    RepresentsShippingFamily (shippingFamilyCode family) family := by
  cases family <;> simp [shippingFamilyCode, RepresentsShippingFamily]

theorem representsShippingFamily_functional
    (code : FamilyCode) (left right : Ipp.ShippingV1.Family)
    (hleft : RepresentsShippingFamily code left)
    (hright : RepresentsShippingFamily code right) :
    left = right := by
  cases left <;> cases right <;>
    simp [RepresentsShippingFamily] at hleft hright ⊢ <;> omega

/-- An accepted production family-code equality transports the exact shipping
family interpretation from the bundle code to the planned call code. -/
theorem representsShippingFamily_of_matches
    (bundle planned : FamilyCode) (family : Ipp.ShippingV1.Family)
    (hmatch : familyCodeMatchesModel bundle planned = true)
    (hfamily : RepresentsShippingFamily bundle family) :
    RepresentsShippingFamily planned family := by
  cases family <;>
    simp [RepresentsShippingFamily, familyCodeMatchesModel] at hmatch hfamily ⊢ <;>
    omega

abbrev ConcretePlannedCall := app_verifier.AppVerifyShippingCall

/-- The production-used constructor preserves every field of the extracted
shipping-call record exactly. -/
@[simp] theorem extracted_shipping_call_from_parts_exact
    (call : ConcretePlannedCall) :
    app_verifier.app_verify_shipping_call_from_parts
        call.id call.bundle_family call.expected_real_count
        call.bundle_real_count call.expected_padded_count
        call.bundle_padded_count =
      .ok call := by
  cases call
  rfl

/-- The production-used wrapper projection retains the authenticated digest,
complete wrapper bytes, and exactly the inner slice returned by the successful
wrapper decoder. -/
@[simp] theorem extracted_shipping_wrapper_projection_from_parts_exact
    (statementDigest wrappedProofBytes innerProofBytes :
      alloc.vec.Vec UInt8) :
    app_verifier.app_verify_shipping_wrapper_projection_from_parts
        statementDigest wrappedProofBytes innerProofBytes =
      .ok
        { statement_digest := statementDigest
          wrapped_proof_bytes := wrappedProofBytes
          inner_proof_bytes := innerProofBytes } := by
  rfl

/-- Any successful production shipping-input construction retains all three
fields of the wrapper projection verbatim. -/
theorem extracted_shipping_input_success_retains_wrapper
    (call : app_verifier.AppVerifyShippingCall)
    (protocolVersion : Std.U32)
    (family : app_verifier.AppVerifyFamilyCode)
    (srsId serializedVk vkDigest : alloc.vec.Vec UInt8)
    (realCount paddedCount publicInputArity : Std.U32)
    (paddedPublicInputs :
      alloc.vec.Vec (alloc.vec.Vec (alloc.vec.Vec UInt8)))
    (canonicalStatementBytes : alloc.vec.Vec UInt8)
    (wrapper : app_verifier.AppVerifyShippingWrapperProjection)
    (challengeContext : alloc.vec.Vec UInt8)
    (output : app_verifier.AppVerifyShippingInput)
    (hexec :
      app_verifier.app_verify_shipping_input_from_parts
          call protocolVersion family srsId serializedVk vkDigest
          realCount paddedCount publicInputArity paddedPublicInputs
          canonicalStatementBytes wrapper challengeContext =
        .ok (.Ok output)) :
    output.statement_digest = wrapper.statement_digest ∧
      output.wrapped_proof_bytes = wrapper.wrapped_proof_bytes ∧
      output.inner_proof_bytes = wrapper.inner_proof_bytes := by
  unfold app_verifier.app_verify_shipping_input_from_parts at hexec
  cases hprojection :
      app_verifier.app_verify_shipping_projection_core
        call family realCount paddedCount with
  | fail error =>
      simp [hprojection] at hexec
  | div =>
      simp [hprojection] at hexec
  | ok result =>
      cases result with
      | Err error =>
          simp [hprojection] at hexec
      | Ok value =>
          simp [hprojection] at hexec
          subst output
          exact ⟨rfl, rfl, rfl⟩

/-- A successful production shipping-input construction is the exact record
assembled from its authenticated scalar and byte arguments.  This strengthens
the wrapper-only projection and prevents later composition from silently
replacing the serialized VK, canonical statement, padded rows, or challenge
context. -/
theorem extracted_shipping_input_success_exact
    (call : app_verifier.AppVerifyShippingCall)
    (protocolVersion : Std.U32)
    (family : app_verifier.AppVerifyFamilyCode)
    (srsId serializedVk vkDigest : alloc.vec.Vec UInt8)
    (realCount paddedCount publicInputArity : Std.U32)
    (paddedPublicInputs :
      alloc.vec.Vec (alloc.vec.Vec (alloc.vec.Vec UInt8)))
    (canonicalStatementBytes : alloc.vec.Vec UInt8)
    (wrapper : app_verifier.AppVerifyShippingWrapperProjection)
    (challengeContext : alloc.vec.Vec UInt8)
    (output : app_verifier.AppVerifyShippingInput)
    (hexec :
      app_verifier.app_verify_shipping_input_from_parts
          call protocolVersion family srsId serializedVk vkDigest
          realCount paddedCount publicInputArity paddedPublicInputs
          canonicalStatementBytes wrapper challengeContext =
        .ok (.Ok output)) :
    output =
      { call := call
        protocol_version := protocolVersion
        family := family
        srs_id := srsId
        serialized_vk := serializedVk
        vk_digest := vkDigest
        real_count := realCount
        padded_count := paddedCount
        public_input_arity := publicInputArity
        padded_public_inputs := paddedPublicInputs
        canonical_statement_bytes := canonicalStatementBytes
        statement_digest := wrapper.statement_digest
        wrapped_proof_bytes := wrapper.wrapped_proof_bytes
        inner_proof_bytes := wrapper.inner_proof_bytes
        challenge_context := challengeContext } := by
  unfold app_verifier.app_verify_shipping_input_from_parts at hexec
  cases hprojection :
      app_verifier.app_verify_shipping_projection_core
        call family realCount paddedCount with
  | fail error =>
      simp [hprojection] at hexec
  | div =>
      simp [hprojection] at hexec
  | ok result =>
      cases result with
      | Err error =>
          simp [hprojection] at hexec
      | Ok value =>
          simp [hprojection] at hexec
          exact hexec.symm

/-- The production result constructor retains the complete authenticated
shipping input and derives both the reducer identity and accepted bit from its
exact arguments. -/
@[simp] theorem extracted_shipping_result_from_parts_exact
    (input : app_verifier.AppVerifyShippingInput)
    (accepted : Bool) :
    app_verifier.app_verify_shipping_result_from_parts input accepted =
      .ok {
        input := input
        result := {
          id := input.call.id
          accepted := accepted
        }
      } := by
  rfl

/-- Any successful result-constructor execution exposes the exact input,
planned full identifier, and accepted flag; none can be substituted by the
async caller after construction. -/
theorem extracted_shipping_result_success_retains_exact
    (input : app_verifier.AppVerifyShippingInput)
    (accepted : Bool)
    (output : app_verifier.AppVerifyShippingResult)
    (hexec :
      app_verifier.app_verify_shipping_result_from_parts input accepted =
        .ok output) :
    output.input = input ∧
      output.result.id = input.call.id ∧
      output.result.accepted = accepted := by
  have houtput :
      ({
        input := input
        result := {
          id := input.call.id
          accepted := accepted
        }
      } : app_verifier.AppVerifyShippingResult) = output :=
    Result.ok.inj
      ((extracted_shipping_result_from_parts_exact input accepted).symm.trans
        hexec)
  rw [← houtput]

/-! ### Repeat-final row-padding specification

The extracted loop is connected to this model after `AppVerifierGenerated` is
regenerated with `app_verify_repeat_final_rows_core` as a root.  Keeping the
model here makes the three acceptance-relevant postconditions explicit without
guessing declarations in the generated file.
-/

/-- Last element of a statically nonempty list, exposed without a proof
argument so that it matches the value cloned by the Rust core. -/
def repeatFinalLast {T : Type} (head : T) : List T → T
  | [] => head
  | next :: tail => repeatFinalLast next tail

@[simp] theorem getLast?_cons_repeatFinalLast
    {T : Type}
    (head : T) (tail : List T) :
    (head :: tail).getLast? = some (repeatFinalLast head tail) := by
  induction tail generalizing head with
  | nil => rfl
  | cons next tail ih =>
      simpa [repeatFinalLast] using ih next

/-- Pure normal form of every successful execution of the production
repeat-final padding core.  Invalid targets and empty/nonzero requests have no
successful output. -/
def repeatFinalRowsExpected {T : Type} (rows : List T) (target : Nat) :
    Option (List T) :=
  match rows with
  | [] =>
      if target = 0 then some [] else none
  | head :: tail =>
      if (head :: tail).length ≤ target then
        some ((head :: tail) ++
          List.replicate
            (target - (head :: tail).length)
            (repeatFinalLast head tail))
      else
        none

/-- Exact semantic facts needed from successful row padding.  The disjunction
keeps the core's sole empty success (`[]` padded to zero) separate from the
production nonempty case. -/
structure RepeatFinalRowsPostcondition
    {T : Type}
    (rows : List T) (target : Nat) (output : List T) : Prop where
  lengthExact : output.length = target
  prefixExact : output.take rows.length = rows
  suffixExact :
    (rows = [] ∧ target = 0 ∧ output = []) ∨
      ∃ last,
        rows.getLast? = some last ∧
          output.drop rows.length =
            List.replicate (target - rows.length) last

/-- The pure repeat-final normal form has the complete postcondition required
by canonical shipping-input construction. -/
theorem repeatFinalRowsExpected_success
    {T : Type}
    (rows output : List T) (target : Nat)
    (hexec : repeatFinalRowsExpected rows target = some output) :
    RepeatFinalRowsPostcondition rows target output := by
  cases rows with
  | nil =>
      by_cases htarget : target = 0
      · subst target
        simp [repeatFinalRowsExpected] at hexec
        subst output
        exact ⟨rfl, rfl, Or.inl ⟨rfl, rfl, rfl⟩⟩
      · simp [repeatFinalRowsExpected, htarget] at hexec
  | cons head tail =>
      by_cases hle : (head :: tail).length ≤ target
      · simp [repeatFinalRowsExpected, hle] at hexec
        subst output
        refine ⟨?_, ?_, ?_⟩
        · simp only [List.length_append, List.length_replicate]
          omega
        · simp
        · exact Or.inr
            ⟨repeatFinalLast head tail,
              getLast?_cons_repeatFinalLast head tail,
              by simp⟩
      · simp [repeatFinalRowsExpected, hle] at hexec

/-- Successful repeat-final padding reaches the requested length exactly. -/
theorem repeatFinalRowsExpected_length_exact
    {T : Type}
    (rows output : List T) (target : Nat)
    (hexec : repeatFinalRowsExpected rows target = some output) :
    output.length = target :=
  (repeatFinalRowsExpected_success rows output target hexec).lengthExact

/-- Successful repeat-final padding preserves the complete caller-order
prefix, ruling out omission, duplication, or reordering of real rows. -/
theorem repeatFinalRowsExpected_prefix_exact
    {T : Type}
    (rows output : List T) (target : Nat)
    (hexec : repeatFinalRowsExpected rows target = some output) :
    output.take rows.length = rows :=
  (repeatFinalRowsExpected_success rows output target hexec).prefixExact

/-- Every successful nonempty padding suffix consists only of the original
final row; the empty branch is possible exactly at target zero. -/
theorem repeatFinalRowsExpected_suffix_exact
    {T : Type}
    (rows output : List T) (target : Nat)
    (hexec : repeatFinalRowsExpected rows target = some output) :
    (rows = [] ∧ target = 0 ∧ output = []) ∨
      ∃ last,
        rows.getLast? = some last ∧
          output.drop rows.length =
            List.replicate (target - rows.length) last :=
  (repeatFinalRowsExpected_success rows output target hexec).suffixExact

theorem identityModel_ok_iff
    (id : CallId) (bundleFamily : FamilyCode)
    (expectedRealCount : Usize) (bundleRealCount : Std.U32) :
    identityModel id bundleFamily expectedRealCount bundleRealCount = .Ok id ↔
      familyCodeMatchesModel bundleFamily id.family = true ∧
        expectedRealCount.val ≤ 2 ^ 32 - 1 ∧
        bundleRealCount.val = expectedRealCount.val := by
  cases hfamily : familyCodeMatchesModel bundleFamily id.family with
  | false =>
      simp [identityModel, hfamily]
  | true =>
      by_cases hover : 2 ^ 32 - 1 < expectedRealCount.val
      · have hnotBound : ¬expectedRealCount.val ≤ 2 ^ 32 - 1 :=
          Nat.not_le_of_gt hover
        norm_num at hover hnotBound ⊢
        simp [identityModel, hfamily, hover, hnotBound]
      · have hbound : expectedRealCount.val ≤ 2 ^ 32 - 1 :=
          Nat.le_of_not_gt hover
        norm_num at hover hbound ⊢
        by_cases hcount :
            bundleRealCount.val = expectedRealCount.val
        · simp [identityModel, hfamily, Nat.not_lt_of_ge hover, hover,
            hcount]
        · simp [identityModel, hfamily, Nat.not_lt_of_ge hover, hcount]

theorem paddingModel_ok_iff
    (id : CallId) (expectedPaddedCount : Usize)
    (bundlePaddedCount : Std.U32) :
    paddingModel id expectedPaddedCount bundlePaddedCount = .Ok id ↔
      expectedPaddedCount.val ≤ 2 ^ 32 - 1 ∧
        bundlePaddedCount.val = expectedPaddedCount.val := by
  by_cases hover : 2 ^ 32 - 1 < expectedPaddedCount.val
  · have hnotBound : ¬expectedPaddedCount.val ≤ 2 ^ 32 - 1 :=
      Nat.not_le_of_gt hover
    norm_num at hover hnotBound ⊢
    simp [paddingModel, hover, hnotBound]
  · have hbound : expectedPaddedCount.val ≤ 2 ^ 32 - 1 :=
      Nat.le_of_not_gt hover
    norm_num at hover hbound ⊢
    by_cases hcount :
        bundlePaddedCount.val = expectedPaddedCount.val
    · simp [paddingModel, Nat.not_lt_of_ge hover, hover, hcount]
    · simp [paddingModel, Nat.not_lt_of_ge hover, hcount]

theorem extracted_plan_identity_ok_iff
    (id : CallId) (bundleFamily : FamilyCode)
    (expectedRealCount : Usize) (bundleRealCount : Std.U32) :
    app_verifier.app_verify_plan_identity_core id bundleFamily
        expectedRealCount bundleRealCount = .ok (.Ok id) ↔
      familyCodeMatchesModel bundleFamily id.family = true ∧
        expectedRealCount.val ≤ 2 ^ 32 - 1 ∧
        bundleRealCount.val = expectedRealCount.val := by
  rw [extracted_plan_identity_eq_model]
  constructor
  · intro h
    exact
      (identityModel_ok_iff id bundleFamily expectedRealCount
        bundleRealCount).1 (Result.ok.inj h)
  · intro h
    exact congrArg Result.ok
      ((identityModel_ok_iff id bundleFamily expectedRealCount
        bundleRealCount).2 h)

theorem extracted_plan_padding_ok_iff
    (id : CallId) (expectedPaddedCount : Usize)
    (bundlePaddedCount : Std.U32) :
    app_verifier.app_verify_plan_padding_core id expectedPaddedCount
        bundlePaddedCount = .ok (.Ok id) ↔
      expectedPaddedCount.val ≤ 2 ^ 32 - 1 ∧
        bundlePaddedCount.val = expectedPaddedCount.val := by
  rw [extracted_plan_padding_eq_model]
  constructor
  · intro h
    exact
      (paddingModel_ok_iff id expectedPaddedCount bundlePaddedCount).1
        (Result.ok.inj h)
  · intro h
    exact congrArg Result.ok
      ((paddingModel_ok_iff id expectedPaddedCount bundlePaddedCount).2 h)

/-- Successful execution of the production scalar-projection core binds the
family and both counts passed by the statement constructor to the accepted
bundle call. -/
theorem extracted_shipping_projection_ok
    (call : ConcretePlannedCall) (family : Ipp.ShippingV1.Family)
    (realCount paddedCount : Std.U32)
    (hidentity :
      app_verifier.app_verify_plan_identity_core call.id call.bundle_family
          call.expected_real_count call.bundle_real_count =
        .ok (.Ok call.id))
    (hpadding :
      app_verifier.app_verify_plan_padding_core call.id
          call.expected_padded_count call.bundle_padded_count =
        .ok (.Ok call.id))
    (hprojection :
      app_verifier.app_verify_shipping_projection_core call
          (shippingFamilyCode family) realCount paddedCount =
        .ok (.Ok ())) :
    RepresentsShippingFamily call.bundle_family family ∧
      realCount = call.bundle_real_count ∧
      paddedCount = call.bundle_padded_count := by
  unfold app_verifier.app_verify_shipping_projection_core at hprojection
  rw [hidentity, hpadding,
    extracted_family_code_matches_eq_model] at hprojection
  cases hfamily :
      familyCodeMatchesModel (shippingFamilyCode family) call.bundle_family <;>
    simp [hfamily] at hprojection
  have hrepresents :
      RepresentsShippingFamily call.bundle_family family :=
    representsShippingFamily_of_matches
      (shippingFamilyCode family) call.bundle_family family hfamily
      (shippingFamilyCode_represents family)
  have hreal :
      realCount.val = call.bundle_real_count.val := by
    by_contra hne
    simp [hne] at hprojection
  have hpadded :
      paddedCount.val = call.bundle_padded_count.val := by
    by_contra hne
    simp [hreal, hne] at hprojection
  exact ⟨hrepresents,
    (usize_eq_iff_val_eq realCount call.bundle_real_count).2 hreal,
    (usize_eq_iff_val_eq paddedCount call.bundle_padded_count).2 hpadded⟩

/-- Facts carried by a production-accepted call into the exact shipping input.
In particular, the accepted family is the registered numeric route, not an
arbitrary context selected by the proof. -/
structure AcceptedShippingCallFacts
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    (expected : alloc.vec.Vec CallId)
    (results : alloc.vec.Vec CallResult)
    (call : ConcretePlannedCall)
    (input : Ipp.ShippingV1.ShippingV1Input
      μ F G1 G2 GT Row DecodedProof) : Prop where
  constructed :
    app_verifier.app_verify_shipping_call_from_parts
        call.id call.bundle_family call.expected_real_count
        call.bundle_real_count call.expected_padded_count
        call.bundle_padded_count =
      .ok call
  planned : call.id ∈ expected.val
  orderTagsExact :
    (expected.val.map (fun id => id.order_index.val)).Nodup
  uniqueAccepted :
    matchingAcceptances call.id results.val = [true]
  registeredFamily :
    RepresentsShippingFamily call.id.family input.family
  bundleFamilyExact :
    familyCodeMatchesModel call.bundle_family call.id.family = true
  inputRealCountExact :
    input.realCount = call.expected_real_count.val
  bundleRealCountExact :
    call.bundle_real_count.val = input.realCount
  inputPaddedCountExact :
    2 ^ μ = call.expected_padded_count.val
  bundlePaddedCountExact :
    call.bundle_padded_count.val = 2 ^ μ
  realCountFitsWire :
    call.expected_real_count.val ≤ 2 ^ 32 - 1
  paddedCountFitsWire :
    call.expected_padded_count.val ≤ 2 ^ 32 - 1
  validCounts :
    Ipp.ShippingV1.ValidCounts input
  repeatFinalPadding :
    Ipp.ShippingV1.RepeatFinalPadding input

/-- Compose exact planning, concrete identity/count checks, padding checks, and
the fail-closed result reducer into one accepted shipping-call witness. -/
theorem app_acceptance_binds_shipping_input
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    (expected : alloc.vec.Vec CallId)
    (results : alloc.vec.Vec CallResult)
    (call : ConcretePlannedCall)
    (input : Ipp.ShippingV1.ShippingV1Input
      μ F G1 G2 GT Row DecodedProof)
    (contract :
      Ipp.ShippingV1.StatementBindingContract
        μ F G1 G2 GT Row DecodedProof)
    (hsupported : contract.supported input)
    (declared : alloc.vec.Vec ExpectedCall)
    (hplan :
      app_verifier.app_verify_plan_ids_core declared = .ok expected)
    (haccepted :
      app_verifier.app_verify_normal_acceptance_core expected results =
        .ok (.Ok true))
    (hplanned : call.id ∈ expected.val)
    (hidentity :
      app_verifier.app_verify_plan_identity_core call.id call.bundle_family
          call.expected_real_count call.bundle_real_count =
        .ok (.Ok call.id))
    (hpadding :
      app_verifier.app_verify_plan_padding_core call.id
          call.expected_padded_count call.bundle_padded_count =
        .ok (.Ok call.id))
    (hfamily : RepresentsShippingFamily call.bundle_family input.family)
    (hreal : input.realCount = call.bundle_real_count.val)
    (hpadded : 2 ^ μ = call.bundle_padded_count.val) :
    AcceptedShippingCallFacts expected results call input := by
  have hplanValue :
      expected.val = planIdsModel declared.val := by
    rw [extracted_plan_ids_eq_model] at hplan
    exact
      congrArg (fun ids : alloc.vec.Vec CallId => ids.val)
        (Result.ok.inj hplan).symm
  have hreduce :=
    (app_reduce_accepts_iff_all_expected_accept expected results).1 haccepted
  have hid :=
    (extracted_plan_identity_ok_iff call.id call.bundle_family
      call.expected_real_count call.bundle_real_count).1 hidentity
  have hpad :=
    (extracted_plan_padding_ok_iff call.id call.expected_padded_count
      call.bundle_padded_count).1 hpadding
  refine {
    constructed := extracted_shipping_call_from_parts_exact call
    planned := hplanned
    orderTagsExact := ?_
    uniqueAccepted := hreduce.2 call.id hplanned
    registeredFamily :=
      representsShippingFamily_of_matches call.bundle_family call.id.family
        input.family hid.1 hfamily
    bundleFamilyExact := hid.1
    inputRealCountExact := hreal.trans hid.2.2
    bundleRealCountExact := hreal.symm
    inputPaddedCountExact := hpadded.trans hpad.2
    bundlePaddedCountExact := hpadded.symm
    realCountFitsWire := hid.2.1
    paddedCountFitsWire := hpad.1
    validCounts := contract.validCounts input hsupported
    repeatFinalPadding := contract.repeatFinalPadding input hsupported
  }
  · rw [hplanValue]
    exact (app_plan_complete_noDuplicate declared).2

#print axioms representsShippingFamily_functional
#print axioms shippingFamilyCode_represents
#print axioms representsShippingFamily_of_matches
#print axioms extracted_shipping_call_from_parts_exact
#print axioms extracted_shipping_wrapper_projection_from_parts_exact
#print axioms extracted_shipping_input_success_retains_wrapper
#print axioms extracted_shipping_input_success_exact
#print axioms extracted_shipping_result_from_parts_exact
#print axioms extracted_shipping_result_success_retains_exact
#print axioms extracted_plan_identity_ok_iff
#print axioms extracted_plan_padding_ok_iff
#print axioms extracted_shipping_projection_ok
#print axioms app_acceptance_binds_shipping_input

end

end Ipp.Extracted.AppVerifierStateMachine
