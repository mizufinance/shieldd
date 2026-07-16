import Ipp.Extracted.AggregateVerifierGenerated
import Ipp.Extracted.CombinedChecks

namespace Ipp.Extracted.AggregateVerifier

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do
open ark_ip_proofs

-- This older extraction used `U64` as a machine-index alias.  Keep that
-- generated representation local now that the shared runtime also exposes
-- the bounded arithmetic `Aeneas.Std.U64` used by the field extractions.
abbrev U64 := Aeneas.Std.LegacyU64

set_option maxHeartbeats 20000
set_option maxRecDepth 2048

noncomputable section

private noncomputable def partialEq (T : Type) :
    ark_ip_proofs.core.cmp.PartialEq T T where
  eq left right := by
    letI := Classical.decEq T
    exact .ok (decide (left = right))

private def add (T : Type) [Add T] :
    ark_ip_proofs.core.ops.arith.Add T T T where
  add left right := .ok (left + right)

private def mul (T : Type) [Mul T] :
    ark_ip_proofs.core.ops.arith.Mul T T T where
  mul left right := .ok (left * right)

private def zero (T : Type) [Zero T] [Add T] :
    ark_ip_proofs.num_traits.identities.Zero T where
  coreopsarithAddInst := add T
  zero := .ok 0
  is_zero value := by
    letI := Classical.decEq T
    exact .ok (decide (value = 0))

private def one (T : Type) [One T] [Mul T] :
    ark_ip_proofs.num_traits.identities.One T where
  coreopsarithMulInst := mul T
  one := .ok 1

/-- The extracted aggregate verifier under the ordinary field adapters. -/
def run {F E FX : Type} [Field F]
    (effects : ark_ip_proofs.applications.groth16_aggregation.AggregateVerifierEffect
      FX F E) (effect : FX) :=
  ark_ip_proofs.applications.groth16_aggregation.verify_aggregate_proof_core
    (partialEq F) (zero F) (one F) effects effect

structure ProfileTiming (T : Type) where
  challenge_ms : T
  tipp_mipp_ms : T
  public_input_fold_ms : T
  ppe_ms : T
  core_total_ms : T

structure ProfiledOutput (T : Type) where
  challenge_ms : T
  tipp_mipp_ms : T
  public_input_fold_ms : T
  ppe_ms : T
  core_total_ms : T
  accepted : Bool

def profiledOutput {F FX T : Type}
    (timing : ProfileTiming T)
    (output : ark_ip_proofs.applications.groth16_aggregation.AggregateVerifierCoreOutput
      F FX) : ProfiledOutput T :=
  { challenge_ms := timing.challenge_ms
    tipp_mipp_ms := timing.tipp_mipp_ms
    public_input_fold_ms := timing.public_input_fold_ms
    ppe_ms := timing.ppe_ms
    core_total_ms := timing.core_total_ms
    accepted := output.accepted }

@[simp] theorem profiledOutput_accepted {F FX T : Type}
    (timing : ProfileTiming T)
    (output : ark_ip_proofs.applications.groth16_aggregation.AggregateVerifierCoreOutput
      F FX) :
    (profiledOutput timing output).accepted = output.accepted := by
  rfl

theorem profiledOutput_observational {F FX T : Type}
    (timing : ProfileTiming T)
    (output : ark_ip_proofs.applications.groth16_aggregation.AggregateVerifierCoreOutput
      F FX) :
    profiledOutput timing output = {
      challenge_ms := timing.challenge_ms
      tipp_mipp_ms := timing.tipp_mipp_ms
      public_input_fold_ms := timing.public_input_fold_ms
      ppe_ms := timing.ppe_ms
      core_total_ms := timing.core_total_ms
      accepted := output.accepted } := by
  rfl

/-- The named Rust-byte/digest-to-decoded-challenge boundary. Constructors
    record chronological nonce attempts; only `none`, zero, and one retry. -/
inductive RandomizerTrace {F E FX : Type} [Zero F] [One F]
    (derive : FX → U64 → Result (core.result.Result (Option F) E × FX)) :
    FX → U64 → FX → F → Prop
  | accept {effect next nonce randomizer}
      (derive_eq : derive effect nonce = .ok (.Ok (some randomizer), next))
      (nonzero : randomizer ≠ 0) (not_one : randomizer ≠ 1) :
      RandomizerTrace derive effect nonce next randomizer
  | retry {effect next final nonce candidate randomizer}
      (derive_eq : derive effect nonce = .ok (.Ok candidate, next))
      (rejected : candidate = none ∨ candidate = some 0 ∨ candidate = some 1)
      (tail : RandomizerTrace derive next ⟨nonce.val + 1⟩ final randomizer) :
      RandomizerTrace derive effect nonce final randomizer

/-- A chronological retry prefix ending in a challenge-effect error. -/
inductive RandomizerErrorTrace {F E FX : Type} [Zero F] [One F]
    (derive : FX → U64 → Result (core.result.Result (Option F) E × FX)) :
    FX → U64 → E → Prop
  | fail {effect next nonce error}
      (derive_eq : derive effect nonce = .ok (.Err error, next)) :
      RandomizerErrorTrace derive effect nonce error
  | retry {effect next nonce candidate error}
      (derive_eq : derive effect nonce = .ok (.Ok candidate, next))
      (rejected : candidate = none ∨ candidate = some 0 ∨ candidate = some 1)
      (tail : RandomizerErrorTrace derive next ⟨nonce.val + 1⟩ error) :
      RandomizerErrorTrace derive effect nonce error

private def body {F E FX : Type} [Field F]
    (effects : ark_ip_proofs.applications.groth16_aggregation.AggregateVerifierEffect
      FX F E) (state : FX × U64) :=
  ark_ip_proofs.applications.groth16_aggregation.verify_aggregate_proof_core_loop.body
    (partialEq F) (zero F) (one F) effects state.1 state.2

private theorem body_retry_none {F E FX : Type} [Field F]
    (effects : ark_ip_proofs.applications.groth16_aggregation.AggregateVerifierEffect
      FX F E) {effect next : FX} {nonce : U64}
    (h : effects.derive_randomizer effect nonce = .ok (.Ok none, next)) :
    body effects (effect, nonce) = .ok (.cont (next, ⟨nonce.val + 1⟩)) := by
  unfold body
    ark_ip_proofs.applications.groth16_aggregation.verify_aggregate_proof_core_loop.body
  rw [h]
  simp only [core.result.Result.Insts.CoreOpsTry.branch, Result.bind_ok,
    Aeneas.Std.add_eq, Usize.ofNat]

private theorem body_retry_zero {F E FX : Type} [Field F]
    (effects : ark_ip_proofs.applications.groth16_aggregation.AggregateVerifierEffect
      FX F E) {effect next : FX} {nonce : U64}
    (h : effects.derive_randomizer effect nonce = .ok (.Ok (some 0), next)) :
    body effects (effect, nonce) = .ok (.cont (next, ⟨nonce.val + 1⟩)) := by
  unfold body
    ark_ip_proofs.applications.groth16_aggregation.verify_aggregate_proof_core_loop.body
  rw [h]
  simp [core.result.Result.Insts.CoreOpsTry.branch, partialEq, zero,
    core.cmp.PartialEq.ne, Usize.ofNat]

private theorem body_retry_one {F E FX : Type} [Field F]
    (effects : ark_ip_proofs.applications.groth16_aggregation.AggregateVerifierEffect
      FX F E) {effect next : FX} {nonce : U64}
    (h : effects.derive_randomizer effect nonce = .ok (.Ok (some 1), next)) :
    body effects (effect, nonce) = .ok (.cont (next, ⟨nonce.val + 1⟩)) := by
  unfold body
    ark_ip_proofs.applications.groth16_aggregation.verify_aggregate_proof_core_loop.body
  rw [h]
  simp [core.result.Result.Insts.CoreOpsTry.branch, partialEq, zero, one,
    core.cmp.PartialEq.ne, Usize.ofNat]

private theorem body_accept {F E FX : Type} [Field F]
    (effects : ark_ip_proofs.applications.groth16_aggregation.AggregateVerifierEffect
      FX F E) {effect challengeEffect finalEffect : FX} {nonce : U64}
    {randomizer : F} {combinedResult : core.result.Result (Bool × Bool) E}
    (hderive : effects.derive_randomizer effect nonce =
      .ok (.Ok (some randomizer), challengeEffect))
    (hnonzero : randomizer ≠ 0) (hnotone : randomizer ≠ 1)
    (hcombined : effects.verify_combined challengeEffect randomizer =
      .ok (combinedResult, finalEffect)) :
    body effects (effect, nonce) =
      .ok (.done (match combinedResult with
        | .Err error => .Err error
        | .Ok checks => .Ok {
            randomizer := randomizer
            checks := checks
            accepted := checks.1 && checks.2
            effect := finalEffect })) := by
  cases combinedResult with
  | Err error =>
      unfold body
        ark_ip_proofs.applications.groth16_aggregation.verify_aggregate_proof_core_loop.body
      rw [hderive]
      simp [core.result.Result.Insts.CoreOpsTry.branch, partialEq, zero, one,
        core.cmp.PartialEq.ne, hnonzero, hnotone, hcombined,
        core.result.Result.Insts.CoreOpsTryTraitFromResidualResultInfallible.from_residual]
  | Ok checks =>
      rcases checks with ⟨left, right⟩
      cases left <;> cases right <;>
        unfold body
          ark_ip_proofs.applications.groth16_aggregation.verify_aggregate_proof_core_loop.body <;>
        rw [hderive] <;>
        simp [core.result.Result.Insts.CoreOpsTry.branch, partialEq, zero, one,
          core.cmp.PartialEq.ne, hnonzero, hnotone, hcombined]

private theorem loopResult_of_trace
    {F E FX : Type} [Field F]
    (effects : ark_ip_proofs.applications.groth16_aggregation.AggregateVerifierEffect
      FX F E) {effect challengeEffect finalEffect : FX} {nonce : U64}
    {randomizer : F} {combinedResult : core.result.Result (Bool × Bool) E}
    (trace : RandomizerTrace effects.derive_randomizer effect nonce
      challengeEffect randomizer)
    (combined_eq : effects.verify_combined challengeEffect randomizer =
      .ok (combinedResult, finalEffect)) :
    LoopResult
      (body effects)
      (effect, nonce)
      (.ok (match combinedResult with
        | .Err error => .Err error
        | .Ok checks => .Ok {
            randomizer := randomizer
            checks := checks
            accepted := checks.1 && checks.2
            effect := finalEffect })) := by
  induction trace with
  | accept derive_eq nonzero not_one =>
      exact .done (body_accept effects derive_eq nonzero not_one combined_eq)
  | retry derive_eq rejected tail ih =>
      rcases rejected with rfl | rfl | rfl
      · exact LoopResult.next (body_retry_none effects derive_eq) (ih combined_eq)
      · exact LoopResult.next (body_retry_zero effects derive_eq) (ih combined_eq)
      · exact LoopResult.next (body_retry_one effects derive_eq) (ih combined_eq)

/-- Fixed decoded challenge attempts determine the extracted result. This
    includes retry order, both effect error images, and Boolean conjunction. -/
theorem run_of_trace
    {F E FX : Type} [Field F]
    (effects : ark_ip_proofs.applications.groth16_aggregation.AggregateVerifierEffect
      FX F E) {effect challengeEffect finalEffect : FX} {randomizer : F}
    {combinedResult : core.result.Result (Bool × Bool) E}
    (trace : RandomizerTrace effects.derive_randomizer effect 0#usize
      challengeEffect randomizer)
    (combined_eq : effects.verify_combined challengeEffect randomizer =
      .ok (combinedResult, finalEffect)) :
    run effects effect =
      .ok (match combinedResult with
        | .Err error => .Err error
        | .Ok checks => .Ok {
            randomizer := randomizer
            checks := checks
            accepted := checks.1 && checks.2
            effect := finalEffect }) := by
  unfold run ark_ip_proofs.applications.groth16_aggregation.verify_aggregate_proof_core
    ark_ip_proofs.applications.groth16_aggregation.verify_aggregate_proof_core_loop
  exact loop_eq_of_result (loopResult_of_trace effects trace combined_eq)

private theorem body_challenge_error {F E FX : Type} [Field F]
    (effects : ark_ip_proofs.applications.groth16_aggregation.AggregateVerifierEffect
      FX F E) {effect next : FX} {nonce : U64} {error : E}
    (h : effects.derive_randomizer effect nonce = .ok (.Err error, next)) :
    body effects (effect, nonce) = .ok (.done (.Err error)) := by
  unfold body
    ark_ip_proofs.applications.groth16_aggregation.verify_aggregate_proof_core_loop.body
  rw [h]
  simp [core.result.Result.Insts.CoreOpsTry.branch,
    core.result.Result.Insts.CoreOpsTryTraitFromResidualResultInfallible.from_residual]

private theorem loopResult_of_error_trace
    {F E FX : Type} [Field F]
    (effects : ark_ip_proofs.applications.groth16_aggregation.AggregateVerifierEffect
      FX F E) {effect : FX} {nonce : U64} {error : E}
    (trace : RandomizerErrorTrace effects.derive_randomizer effect nonce error) :
    LoopResult (body effects) (effect, nonce) (.ok (.Err error)) := by
  induction trace with
  | fail derive_eq => exact .done (body_challenge_error effects derive_eq)
  | retry derive_eq rejected tail ih =>
      rcases rejected with rfl | rfl | rfl
      · exact .next (body_retry_none effects derive_eq) ih
      · exact .next (body_retry_zero effects derive_eq) ih
      · exact .next (body_retry_one effects derive_eq) ih

/-- A challenge-effect error is returned before any combined verifier call. -/
theorem run_challenge_error
    {F E FX : Type} [Field F]
    (effects : ark_ip_proofs.applications.groth16_aggregation.AggregateVerifierEffect
      FX F E) (effect next : FX) (error : E)
    (derive_eq : effects.derive_randomizer effect 0#usize =
      .ok (.Err error, next)) :
    run effects effect = .ok (.Err error) := by
  unfold run ark_ip_proofs.applications.groth16_aggregation.verify_aggregate_proof_core
    ark_ip_proofs.applications.groth16_aggregation.verify_aggregate_proof_core_loop
  apply loop_eq_of_result
  exact LoopResult.done (body_challenge_error effects derive_eq)

/-- A challenge error after any number of rejected candidates is propagated,
    and the combined verifier is never reached. -/
theorem run_randomizer_error
    {F E FX : Type} [Field F]
    (effects : ark_ip_proofs.applications.groth16_aggregation.AggregateVerifierEffect
      FX F E) {effect : FX} {error : E}
    (trace : RandomizerErrorTrace effects.derive_randomizer effect 0#usize error) :
    run effects effect = .ok (.Err error) := by
  unfold run ark_ip_proofs.applications.groth16_aggregation.verify_aggregate_proof_core
    ark_ip_proofs.applications.groth16_aggregation.verify_aggregate_proof_core_loop
  exact loop_eq_of_result (loopResult_of_error_trace effects trace)

/-- A combined-verifier error after a valid randomizer is propagated exactly. -/
theorem run_combined_error
    {F E FX : Type} [Field F]
    (effects : ark_ip_proofs.applications.groth16_aggregation.AggregateVerifierEffect
      FX F E) {effect challengeEffect finalEffect : FX} {randomizer : F} {error : E}
    (trace : RandomizerTrace effects.derive_randomizer effect 0#usize
      challengeEffect randomizer)
    (combined_eq : effects.verify_combined challengeEffect randomizer =
      .ok (.Err error, finalEffect)) :
    run effects effect = .ok (.Err error) := by
  exact run_of_trace effects trace combined_eq

private theorem RandomizerTrace.guards
    {F E FX : Type} [Zero F] [One F]
    {derive : FX → U64 → Result (core.result.Result (Option F) E × FX)}
    {effect next : FX} {nonce : U64} {randomizer : F}
    (trace : RandomizerTrace derive effect nonce next randomizer) :
    randomizer ≠ 0 ∧ randomizer ≠ 1 := by
  induction trace with
  | accept _ nonzero not_one => exact ⟨nonzero, not_one⟩
  | retry _ _ _ ih => exact ih

private theorem run_accepts_iff
    {F E FX : Type} [Field F]
    (effects : ark_ip_proofs.applications.groth16_aggregation.AggregateVerifierEffect
      FX F E) {effect challengeEffect finalEffect : FX} {randomizer : F}
    {combinedResult : core.result.Result (Bool × Bool) E}
    (trace : RandomizerTrace effects.derive_randomizer effect 0#usize
      challengeEffect randomizer)
    (combined_eq : effects.verify_combined challengeEffect randomizer =
      .ok (combinedResult, finalEffect)) :
    run effects effect = .ok (.Ok {
        randomizer := randomizer
        checks := (true, true)
        accepted := true
        effect := finalEffect }) ↔
      combinedResult = .Ok (true, true) := by
  rw [run_of_trace effects trace combined_eq]
  cases combinedResult with
  | Err error => simp
  | Ok checks =>
      rcases checks with ⟨left, right⟩
      cases left <;> cases right <;> simp

/-- The executed aggregate core accepts exactly `Ipp.FsAccepts`. The outer
    premise is the named Rust-byte/digest trace correspondence; the remaining
    premises are the declared aggregate/combined effects and S2-35 conditions. -/
theorem verify_aggregate_proof_refinement_statement
    {F G1 G2 G2Prepared GT E FX PE PPE AE AFX : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    {n : Nat} (stmt : Ipp.FsStatement n F G1 G2 GT)
    (proof : Ipp.Proof n F G1 G2 GT) (transcript : Ipp.FsTranscript n F)
    (aggregateEffects :
      ark_ip_proofs.applications.groth16_aggregation.AggregateVerifierEffect
        AFX F AE)
    (aggregateEffect challengeEffect finalAggregateEffect : AFX)
    (combinedResult : core.result.Result (Bool × Bool) AE)
    (randomizerTrace : RandomizerTrace aggregateEffects.derive_randomizer
      aggregateEffect 0#usize challengeEffect transcript.randomizer)
    (aggregateCombined :
      aggregateEffects.verify_combined challengeEffect transcript.randomizer =
        .ok (combinedResult, finalAggregateEffect))
    (effects : ark_ip_proofs.applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (tippPairing : ark_ip_proofs.tipa.PairingEffect PE G1 G2 GT)
    (ppeEffect : ark_ip_proofs.applications.groth16_aggregation.PreparedPairingEffect
      PPE G1 G2Prepared GT)
    (input : ark_ip_proofs.applications.groth16_aggregation.CombinedChecksCoreInput
      F G1 G2 G2Prepared GT GT G1)
    (effect effect4 : FX) (tipp_pairing : PE) (ppe_pairing : PPE)
    (ppeOutcome : PPE → Option Unit) (expected : Usize)
    (aggregateDelegates : combinedResult = .Ok (true, true) ↔
      Ipp.Extracted.CombinedChecks.run effects tippPairing ppeEffect input effect
          tipp_pairing ppe_pairing =
        .ok (.Ok { checks := (true, true), tipp_mipp_effect := effect4 }))
    (hnonempty : ark_ip_proofs.alloc.vec.Vec.len input.public_inputs ≠ 0#usize)
    (hpower : ark_ip_proofs.core.num.Usize.is_power_of_two
      (ark_ip_proofs.alloc.vec.Vec.len input.public_inputs) = .ok true)
    (hilog : ark_ip_proofs.core.num.Usize.ilog2
      (ark_ip_proofs.alloc.vec.Vec.len input.public_inputs) = .ok expected)
    (hrounds : ark_ip_proofs.alloc.vec.Vec.len input.tipp_mipp.proof.gipa_proof =
      expected)
    (htippTotal : ∃ valid nextEffect,
      Ipp.Extracted.CombinedChecks.runTipp effects tippPairing input.tipp_mipp
          effect tipp_pairing = .ok (.Ok valid, nextEffect))
    (hppeTotal : ∃ valid,
      Ipp.Extracted.CombinedChecks.runPpe ppeEffect input ppe_pairing = .ok valid)
    (htipp : Ipp.Extracted.CombinedChecks.runTipp effects tippPairing
        input.tipp_mipp effect tipp_pairing = .ok (.Ok true, effect4) ↔
      Ipp.LeafData stmt proof transcript)
    (hppe : Ipp.Extracted.CombinedChecks.runPpe ppeEffect input ppe_pairing =
        .ok true ↔
      ppeOutcome ppe_pairing = some () ∧
        stmt.e ((∑ i : Fin (2 ^ n), transcript.randomizer ^ (i : Nat)) •
            stmt.alpha) stmt.beta +
          stmt.e (∑ i : Fin (2 ^ n),
            transcript.randomizer ^ (i : Nat) • stmt.Aic i) stmt.gamma +
          stmt.e proof.aggC stmt.delta = proof.ipAb)
    (hx0 : transcript.x0 ≠ 0)
    (hroundChallenges : ∀ i, transcript.roundAnswer i ≠ 0)
    (hbridge : transcript.bridge ≠ 0) (hkzg : transcript.kzg ≠ 0)
    (hppeOutcome : ppeOutcome ppe_pairing = some ()) :
    run aggregateEffects aggregateEffect = .ok (.Ok {
        randomizer := transcript.randomizer
        checks := (true, true)
        accepted := true
        effect := finalAggregateEffect }) ↔
      Ipp.FsAccepts stmt proof transcript := by
  have hcombined :=
    Ipp.Extracted.CombinedChecks.verify_combined_checks_refinement_statement
      stmt proof transcript effects tippPairing ppeEffect input effect effect4
      tipp_pairing ppe_pairing ppeOutcome stmt.alpha
      (∑ i : Fin (2 ^ n), transcript.randomizer ^ (i : Nat) • stmt.Aic i)
      proof.aggC stmt.beta stmt.gamma stmt.delta
      (∑ i : Fin (2 ^ n), transcript.randomizer ^ (i : Nat)) proof.ipAb expected
      hnonempty hpower hilog hrounds htippTotal hppeTotal htipp hppe
  have hguards := randomizerTrace.guards
  calc
    run aggregateEffects aggregateEffect = .ok (.Ok {
        randomizer := transcript.randomizer
        checks := (true, true)
        accepted := true
        effect := finalAggregateEffect }) ↔
        combinedResult = .Ok (true, true) :=
      run_accepts_iff aggregateEffects randomizerTrace aggregateCombined
    _ ↔ Ipp.Extracted.CombinedChecks.run effects tippPairing ppeEffect input effect
          tipp_pairing ppe_pairing =
        .ok (.Ok { checks := (true, true), tipp_mipp_effect := effect4 }) :=
      aggregateDelegates
    _ ↔ Ipp.LeafData stmt proof transcript ∧
        (ppeOutcome ppe_pairing = some () ∧
          stmt.e ((∑ i : Fin (2 ^ n), transcript.randomizer ^ (i : Nat)) •
              stmt.alpha) stmt.beta +
            stmt.e (∑ i : Fin (2 ^ n),
              transcript.randomizer ^ (i : Nat) • stmt.Aic i) stmt.gamma +
            stmt.e proof.aggC stmt.delta = proof.ipAb) := hcombined
    _ ↔ Ipp.FsAccepts stmt proof transcript := by
      simp [Ipp.FsAccepts, hguards.1, hguards.2, hx0, hroundChallenges,
        hbridge, hkzg, hppeOutcome]

/-- The profiled wrapper projects the core acceptance Boolean.  Its timing
    fields are supplied observations and do not occur in the semantic claim. -/
theorem verify_aggregate_proof_profiled_with_trace_refinement_statement
    {F G1 G2 G2Prepared GT E FX PE PPE AE AFX T : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    {n : Nat} (stmt : Ipp.FsStatement n F G1 G2 GT)
    (proof : Ipp.Proof n F G1 G2 GT) (transcript : Ipp.FsTranscript n F)
    (aggregateEffects :
      ark_ip_proofs.applications.groth16_aggregation.AggregateVerifierEffect
        AFX F AE)
    (aggregateEffect challengeEffect finalAggregateEffect : AFX)
    (combinedResult : core.result.Result (Bool × Bool) AE)
    (randomizerTrace : RandomizerTrace aggregateEffects.derive_randomizer
      aggregateEffect 0#usize challengeEffect transcript.randomizer)
    (aggregateCombined :
      aggregateEffects.verify_combined challengeEffect transcript.randomizer =
        .ok (combinedResult, finalAggregateEffect))
    (effects : ark_ip_proofs.applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (tippPairing : ark_ip_proofs.tipa.PairingEffect PE G1 G2 GT)
    (ppeEffect : ark_ip_proofs.applications.groth16_aggregation.PreparedPairingEffect
      PPE G1 G2Prepared GT)
    (input : ark_ip_proofs.applications.groth16_aggregation.CombinedChecksCoreInput
      F G1 G2 G2Prepared GT GT G1)
    (effect effect4 : FX) (tipp_pairing : PE) (ppe_pairing : PPE)
    (ppeOutcome : PPE → Option Unit) (expected : Usize)
    (aggregateDelegates : combinedResult = .Ok (true, true) ↔
      Ipp.Extracted.CombinedChecks.run effects tippPairing ppeEffect input effect
          tipp_pairing ppe_pairing =
        .ok (.Ok { checks := (true, true), tipp_mipp_effect := effect4 }))
    (hnonempty : ark_ip_proofs.alloc.vec.Vec.len input.public_inputs ≠ 0#usize)
    (hpower : ark_ip_proofs.core.num.Usize.is_power_of_two
      (ark_ip_proofs.alloc.vec.Vec.len input.public_inputs) = .ok true)
    (hilog : ark_ip_proofs.core.num.Usize.ilog2
      (ark_ip_proofs.alloc.vec.Vec.len input.public_inputs) = .ok expected)
    (hrounds : ark_ip_proofs.alloc.vec.Vec.len input.tipp_mipp.proof.gipa_proof =
      expected)
    (htippTotal : ∃ valid nextEffect,
      Ipp.Extracted.CombinedChecks.runTipp effects tippPairing input.tipp_mipp
          effect tipp_pairing = .ok (.Ok valid, nextEffect))
    (hppeTotal : ∃ valid,
      Ipp.Extracted.CombinedChecks.runPpe ppeEffect input ppe_pairing = .ok valid)
    (htipp : Ipp.Extracted.CombinedChecks.runTipp effects tippPairing
        input.tipp_mipp effect tipp_pairing = .ok (.Ok true, effect4) ↔
      Ipp.LeafData stmt proof transcript)
    (hppe : Ipp.Extracted.CombinedChecks.runPpe ppeEffect input ppe_pairing =
        .ok true ↔
      ppeOutcome ppe_pairing = some () ∧
        stmt.e ((∑ i : Fin (2 ^ n), transcript.randomizer ^ (i : Nat)) •
            stmt.alpha) stmt.beta +
          stmt.e (∑ i : Fin (2 ^ n),
            transcript.randomizer ^ (i : Nat) • stmt.Aic i) stmt.gamma +
          stmt.e proof.aggC stmt.delta = proof.ipAb)
    (hx0 : transcript.x0 ≠ 0)
    (hroundChallenges : ∀ i, transcript.roundAnswer i ≠ 0)
    (hbridge : transcript.bridge ≠ 0) (hkzg : transcript.kzg ≠ 0)
    (hppeOutcome : ppeOutcome ppe_pairing = some ())
    (timing : ProfileTiming T) :
    (run aggregateEffects aggregateEffect = .ok (.Ok {
        randomizer := transcript.randomizer
        checks := (true, true)
        accepted := true
        effect := finalAggregateEffect }) ∧
      (profiledOutput timing {
        randomizer := transcript.randomizer
        checks := (true, true)
        accepted := true
        effect := finalAggregateEffect }).accepted = true) ↔
      Ipp.FsAccepts stmt proof transcript := by
  have hcore :=
    verify_aggregate_proof_refinement_statement
      stmt proof transcript aggregateEffects aggregateEffect challengeEffect
      finalAggregateEffect combinedResult randomizerTrace aggregateCombined
      effects tippPairing ppeEffect input effect effect4 tipp_pairing ppe_pairing
      ppeOutcome expected aggregateDelegates hnonempty hpower hilog hrounds
      htippTotal hppeTotal htipp hppe hx0 hroundChallenges hbridge hkzg hppeOutcome
  simpa [profiledOutput] using hcore

#print axioms run_of_trace
#print axioms run_challenge_error
#print axioms run_randomizer_error
#print axioms run_combined_error
#print axioms verify_aggregate_proof_refinement_statement
#print axioms profiledOutput_observational
#print axioms verify_aggregate_proof_profiled_with_trace_refinement_statement

end
end Ipp.Extracted.AggregateVerifier
