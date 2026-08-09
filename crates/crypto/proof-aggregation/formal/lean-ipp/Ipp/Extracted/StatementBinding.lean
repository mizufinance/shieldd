import Ipp.Extracted.StatementBindingGenerated

/-!
Audited equations for the extracted statement-hash and wrapper-binding cores.

The effect equations below are the concrete Rust/F*/Arkworks boundary.  The
theorems prove sequencing, retained values, fail-closed errors, and the exact
digest equality required to join the two successful executions.
-/

namespace Ipp.Extracted.StatementBinding

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do
open ark_ip_proofs

noncomputable section

/-- One successful execution of every statement-hash effect, in production
order.  No hash, framing, or canonical-encoding semantics are assumed by this
record; those meanings are supplied by the individual effect equations. -/
structure StatementHashEffectTrace
    (CanonicalInput E Effect : Type)
    (operations :
      statement_binding.StatementHashEffect Effect CanonicalInput E)
    (input : statement_binding.StatementHashCoreInput CanonicalInput)
    (initialEffect : Effect) where
  vkPreimage : alloc.vec.Vec UInt8
  vkDigest : alloc.vec.Vec UInt8
  canonicalStatement : alloc.vec.Vec UInt8
  statementPreimage : alloc.vec.Vec UInt8
  statementDigest : alloc.vec.Vec UInt8
  challengeContextPreimage : alloc.vec.Vec UInt8
  challengeContext : alloc.vec.Vec UInt8
  effect1 : Effect
  effect2 : Effect
  effect3 : Effect
  effect4 : Effect
  effect5 : Effect
  effect6 : Effect
  finalEffect : Effect
  vkPreimageExecution :
    operations.vk_preimage initialEffect
        (alloc.vec.Vec.deref input.serialized_vk) =
      .ok (.Ok vkPreimage, effect1)
  vkDigestExecution :
    operations.sha256 effect1 (alloc.vec.Vec.deref vkPreimage) =
      .ok (.Ok vkDigest, effect2)
  canonicalStatementExecution :
    operations.canonical_statement effect2 input.canonical_input
        (alloc.vec.Vec.deref vkDigest) =
      .ok (.Ok canonicalStatement, effect3)
  statementPreimageExecution :
    operations.statement_preimage effect3
        (alloc.vec.Vec.deref canonicalStatement) =
      .ok (.Ok statementPreimage, effect4)
  statementDigestExecution :
    operations.sha256 effect4 (alloc.vec.Vec.deref statementPreimage) =
      .ok (.Ok statementDigest, effect5)
  challengeContextPreimageExecution :
    operations.challenge_context_preimage effect5
        (alloc.vec.Vec.deref statementDigest) =
      .ok (.Ok challengeContextPreimage, effect6)
  challengeContextExecution :
    operations.sha256 effect6
        (alloc.vec.Vec.deref challengeContextPreimage) =
      .ok (.Ok challengeContext, finalEffect)

/-- The exact successful record retained by a statement-hash trace. -/
def StatementHashEffectTrace.execution
    {CanonicalInput E Effect : Type}
    {operations :
      statement_binding.StatementHashEffect Effect CanonicalInput E}
    {input : statement_binding.StatementHashCoreInput CanonicalInput}
    {initialEffect : Effect}
    (trace : StatementHashEffectTrace CanonicalInput E Effect operations
      input initialEffect) :
    statement_binding.StatementHashExecution CanonicalInput Effect :=
  {
    serialized_vk := input.serialized_vk
    canonical_input := input.canonical_input
    vk_preimage := trace.vkPreimage
    vk_digest := trace.vkDigest
    canonical_statement := trace.canonicalStatement
    statement_preimage := trace.statementPreimage
    statement_digest := trace.statementDigest
    challenge_context_preimage := trace.challengeContextPreimage
    challenge_context := trace.challengeContext
    effect := trace.finalEffect
  }

/-- The extracted statement-hash core executes exactly the seven recorded
effects and returns every intermediate byte vector without substitution. -/
theorem statement_hash_effect_core_exact
    {CanonicalInput E Effect : Type}
    {operations :
      statement_binding.StatementHashEffect Effect CanonicalInput E}
    {input : statement_binding.StatementHashCoreInput CanonicalInput}
    {initialEffect : Effect}
    (trace : StatementHashEffectTrace CanonicalInput E Effect operations
      input initialEffect) :
    statement_binding.statement_hash_effect_core operations input
        initialEffect =
      .ok (.Ok trace.execution) := by
  simp [statement_binding.statement_hash_effect_core,
    trace.vkPreimageExecution, trace.vkDigestExecution,
    trace.canonicalStatementExecution, trace.statementPreimageExecution,
    trace.statementDigestExecution,
    trace.challengeContextPreimageExecution,
    trace.challengeContextExecution, StatementHashEffectTrace.execution]

/-- Failure of the first effect is returned immediately, before any later
operation can contribute a value to the retained execution. -/
theorem statement_hash_effect_core_vk_preimage_error
    {CanonicalInput E Effect : Type}
    (operations :
      statement_binding.StatementHashEffect Effect CanonicalInput E)
    (input : statement_binding.StatementHashCoreInput CanonicalInput)
    (initialEffect finalEffect : Effect) (error : E)
    (herror :
      operations.vk_preimage initialEffect
          (alloc.vec.Vec.deref input.serialized_vk) =
        .ok (.Err error, finalEffect)) :
    statement_binding.statement_hash_effect_core operations input
        initialEffect =
      .ok (.Err error) := by
  simp [statement_binding.statement_hash_effect_core, herror]

/-- One successful wrapper effect retains its digest, complete wrapper, byte
cap, decoded inner proof, and final effect in the returned record. -/
theorem wrapper_decode_effect_core_exact
    {E Effect : Type}
    (operations : statement_binding.WrapperDecodeEffect Effect E)
    (input : statement_binding.WrapperDecodeCoreInput)
    (initialEffect finalEffect : Effect)
    (innerProof : alloc.vec.Vec UInt8)
    (hexecution :
      operations.decode_wrapper initialEffect
          (alloc.vec.Vec.deref input.wrapped_proof_bytes)
          (alloc.vec.Vec.deref input.expected_statement_digest)
          input.max_aggregate_proof_bytes =
        .ok (.Ok innerProof, finalEffect)) :
    statement_binding.wrapper_decode_effect_core operations input
        initialEffect =
      .ok (.Ok {
        expected_statement_digest := input.expected_statement_digest
        wrapped_proof_bytes := input.wrapped_proof_bytes
        max_aggregate_proof_bytes := input.max_aggregate_proof_bytes
        inner_proof_bytes := innerProof
        effect := finalEffect
      }) := by
  simp [statement_binding.wrapper_decode_effect_core, hexecution]

/-- Wrapper-effect failure is returned without constructing a successful
decode record. -/
theorem wrapper_decode_effect_core_error
    {E Effect : Type}
    (operations : statement_binding.WrapperDecodeEffect Effect E)
    (input : statement_binding.WrapperDecodeCoreInput)
    (initialEffect finalEffect : Effect) (error : E)
    (herror :
      operations.decode_wrapper initialEffect
          (alloc.vec.Vec.deref input.wrapped_proof_bytes)
          (alloc.vec.Vec.deref input.expected_statement_digest)
          input.max_aggregate_proof_bytes =
        .ok (.Err error, finalEffect)) :
    statement_binding.wrapper_decode_effect_core operations input
        initialEffect =
      .ok (.Err error) := by
  simp [statement_binding.wrapper_decode_effect_core, herror]

/-- One successful wrapper effect packaged for composition with the statement
hash trace. -/
structure WrapperDecodeEffectTrace
    (E Effect : Type)
    (operations : statement_binding.WrapperDecodeEffect Effect E)
    (input : statement_binding.WrapperDecodeCoreInput)
    (initialEffect : Effect) where
  innerProof : alloc.vec.Vec UInt8
  finalEffect : Effect
  execution :
    operations.decode_wrapper initialEffect
        (alloc.vec.Vec.deref input.wrapped_proof_bytes)
        (alloc.vec.Vec.deref input.expected_statement_digest)
        input.max_aggregate_proof_bytes =
      .ok (.Ok innerProof, finalEffect)

/-- The exact wrapper execution returned by a packaged effect trace. -/
def WrapperDecodeEffectTrace.output
    {E Effect : Type}
    {operations : statement_binding.WrapperDecodeEffect Effect E}
    {input : statement_binding.WrapperDecodeCoreInput}
    {initialEffect : Effect}
    (trace : WrapperDecodeEffectTrace E Effect operations input
      initialEffect) :
    statement_binding.WrapperDecodeExecution Effect :=
  {
    expected_statement_digest := input.expected_statement_digest
    wrapped_proof_bytes := input.wrapped_proof_bytes
    max_aggregate_proof_bytes := input.max_aggregate_proof_bytes
    inner_proof_bytes := trace.innerProof
    effect := trace.finalEffect
  }

/-- A complete successful statement-binding execution.  The final equality
is the only condition needed to connect the hash and wrapper effects. -/
structure BindingEffectTrace
    (CanonicalInput HashError DecodeError HashEffect DecodeEffect : Type)
    (hashOperations :
      statement_binding.StatementHashEffect HashEffect CanonicalInput
        HashError)
    (wrapperOperations :
      statement_binding.WrapperDecodeEffect DecodeEffect DecodeError)
    (hashInput : statement_binding.StatementHashCoreInput CanonicalInput)
    (wrapperInput : statement_binding.WrapperDecodeCoreInput)
    (initialHashEffect : HashEffect)
    (initialDecodeEffect : DecodeEffect) where
  hash : StatementHashEffectTrace CanonicalInput HashError HashEffect
    hashOperations hashInput initialHashEffect
  wrapper : WrapperDecodeEffectTrace DecodeError DecodeEffect
    wrapperOperations wrapperInput initialDecodeEffect
  digestExact :
    hash.statementDigest.val = wrapperInput.expected_statement_digest.val

/-- The three generated roots execute in order and join into one exact
binding record.  Neither retained execution can be replaced independently. -/
theorem binding_effect_trace_executes_and_joins
    {CanonicalInput HashError DecodeError HashEffect DecodeEffect : Type}
    {hashOperations :
      statement_binding.StatementHashEffect HashEffect CanonicalInput
        HashError}
    {wrapperOperations :
      statement_binding.WrapperDecodeEffect DecodeEffect DecodeError}
    {hashInput : statement_binding.StatementHashCoreInput CanonicalInput}
    {wrapperInput : statement_binding.WrapperDecodeCoreInput}
    {initialHashEffect : HashEffect}
    {initialDecodeEffect : DecodeEffect}
    (trace : BindingEffectTrace CanonicalInput HashError DecodeError
      HashEffect DecodeEffect hashOperations wrapperOperations hashInput
      wrapperInput initialHashEffect initialDecodeEffect) :
    statement_binding.statement_hash_effect_core hashOperations hashInput
        initialHashEffect =
        .ok (.Ok trace.hash.execution) ∧
      statement_binding.wrapper_decode_effect_core wrapperOperations
          wrapperInput initialDecodeEffect =
        .ok (.Ok trace.wrapper.output) ∧
      statement_binding.statement_binding_execution_core
          trace.hash.execution trace.wrapper.output =
        .ok (.Ok {
          statement := trace.hash.execution
          wrapper := trace.wrapper.output
        }) := by
  refine ⟨statement_hash_effect_core_exact trace.hash, ?_, ?_⟩
  · exact wrapper_decode_effect_core_exact wrapperOperations wrapperInput
      initialDecodeEffect trace.wrapper.finalEffect trace.wrapper.innerProof
      trace.wrapper.execution
  · have hdigest :
        trace.hash.execution.statement_digest.val =
          trace.wrapper.output.expected_statement_digest.val := by
      simpa [StatementHashEffectTrace.execution,
        WrapperDecodeEffectTrace.output] using trace.digestExact
    unfold statement_binding.statement_binding_execution_core
    simp [alloc.vec.partial_eq.PartialEqVec.ne_u8_exact,
      hdigest]

/-- Equal statement digests join the two exact executions and preserve both
records verbatim. -/
theorem statement_binding_execution_core_exact
    {CanonicalInput HashEffect DecodeEffect : Type}
    (statement :
      statement_binding.StatementHashExecution CanonicalInput HashEffect)
    (wrapper : statement_binding.WrapperDecodeExecution DecodeEffect)
    (hdigest :
      statement.statement_digest.val =
        wrapper.expected_statement_digest.val) :
    statement_binding.statement_binding_execution_core statement wrapper =
      .ok (.Ok { statement, wrapper }) := by
  unfold statement_binding.statement_binding_execution_core
  simp [alloc.vec.partial_eq.PartialEqVec.ne_u8_exact, hdigest]

/-- A digest mismatch is rejected by the extracted join and cannot construct
a `StatementBindingExecution`. -/
theorem statement_binding_execution_core_digest_mismatch
    {CanonicalInput HashEffect DecodeEffect : Type}
    (statement :
      statement_binding.StatementHashExecution CanonicalInput HashEffect)
    (wrapper : statement_binding.WrapperDecodeExecution DecodeEffect)
    (hdigest :
      statement.statement_digest.val ≠
        wrapper.expected_statement_digest.val) :
    statement_binding.statement_binding_execution_core statement wrapper =
      .ok (.Err
        statement_binding.StatementBindingExecutionError.StatementDigestMismatch) := by
  unfold statement_binding.statement_binding_execution_core
  simp [alloc.vec.partial_eq.PartialEqVec.ne_u8_exact, hdigest]

#print axioms statement_hash_effect_core_exact
#print axioms statement_hash_effect_core_vk_preimage_error
#print axioms wrapper_decode_effect_core_exact
#print axioms wrapper_decode_effect_core_error
#print axioms binding_effect_trace_executes_and_joins
#print axioms statement_binding_execution_core_exact
#print axioms statement_binding_execution_core_digest_mismatch

end

end Ipp.Extracted.StatementBinding
