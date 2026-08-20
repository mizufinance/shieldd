# Circuit formal verification

## What certification claims

The four fixed-shape circuit families use four deliberately separate assurance
layers:

1. `Protocol/{NoteReshape,Transfer,ShieldedIcs20Withdrawal}/Semantics` is
   handwritten and imports only general mathematics. These modules define the
   consensus-accepted fixed-shape actions, concrete action-local
   pre-state/delta/post-state transitions, transaction composition and
   committed-envelope semantics, and the separate honest-construction
   guarantees. Executor rejection and rollback are runtime-tested boundaries,
   not Lean-derived execution traces.
2. The corresponding handwritten `Concrete` module fixes cryptographic
   primitives and domain separators using independent Poseidon and Decaf
   relations. It has no dependency on extracted or deployed circuit modules.
3. Generated `Deployed.Contracts.*/CircuitFacts` modules prove typed facts
   about every row of the exact deployed R1CS. Generated code does not define
   protocol correctness.
4. A handwritten deployed adapter consumes those exact facts and constructs
   the independent `Protocol.*.CircuitFacts`; the handwritten refinement then
   derives `Protocol.*.ConsensusAccepted`. Transaction-level claims additionally
   require the exact deployed relation to derive `Protocol.*.TransactionAccepted`;
   a standalone transaction theorem is not a deployed-circuit consequence.

The obligation ledger is
`crates/core/component/shielded-pool/formal/certified-circuit-obligation-ledger.md`.

The certified set is fixed-padded `note_reshape1x8` and `note_reshape8x1`,
fixed Transfer 2x2, and fixed shielded ICS-20 Withdrawal 2x1. The adapters cover
commitments, membership/nullifiers,
real/dummy selection, the exact old/recent nullifier-history classification,
randomized keys, conservation, canonical encodings, and the exact native
statement hash. Transfer additionally covers its asset/user
registry proofs, regulation-gated threshold comparison, unconditional compliance
ciphertexts, salts, shared-secret/ACK derivations, and factored metadata.
Transfer also proves the v4 seven-field compliance leaves and `Active` status, excludes
the asset-tree zero sentinel, constrains both detection slots to 32 bits, and
keeps the exact asset separate from the flag packed into sender-slot bit 32.
It has no DLEQ or public shared-point surface. Withdrawal proves the same
leaf/sentinel invariants, its compact canonical asset leaf, outbound value, and
all four 128-bit effect-hash limbs. The recent-position floor and each
history-required bit are included in the exact public statement projection.

External proof-key selection, body/public-input projection, signatures, current
asset policy and user-status roots, registry authorization, nullifier
state, output persistence, timestamp checks, and withdrawal execution stay
outside Groth16. State-changing premises are one concrete typed
`ConsensusTransition before action delta after`: it states freshness against
the action pre-state, equality of the action delta to the proof-bound
nullifiers and outputs, exact post-state extensions, and frame conditions.
Transaction-wide uniqueness and commit require separate enclosing-transaction
evidence; the action-local transition is not admissible as their sole proof.
All-or-nothing rejection rollback is a distinct runtime obligation. The
committed target is named at exact action-local
pre/post states, its nullifier/output multisets are included in the complete
transaction effects, and the durable transaction-final state is an exact
multiplicity-preserving multiset extension by those complete effects, modulo
storage ordering. This makes no append-order or SCT-position claim. Opaque
“transition accepted” predicates are rejected.
Wallet-only outgoing-view, plan-projection, and Transfer nonce guarantees
inhabit `HonestConstructionFacts`; they are not prerequisites of
`ConsensusAccepted`.

## Why the dummy-input bug passed

The previous Lean path proved that the deployed circuit satisfied facts derived
from that same circuit. Its generated semantic-looking `Statement` interface
was not an independent protocol specification. If the circuit and generated
interface omitted the same dummy obligation, Lean could prove both perfectly.
The missing piece was the handwritten join from exact circuit behavior to an
independently reviewed accepted-language relation.

Whole-family Picus did not close that gap. Its export classified every secret
wire as an input, so the solver checked satisfiability after the prover had
already chosen all secret values. That can find local algebraic counterexamples,
but it does not establish that a protocol field is constrained or joined to
the accepted language.

Picus remains useful for:

- leaf-gadget counterexamples and small underconstraint probes;
- rapid checks before an exact Lean adapter exists;
- adversarial tests of a proposed local relation.

It is not part of the whole-family certification claim. Family exports
that assign every secret wire as an input are rejected.

## Specification independence

The CI boundary enforces:

- the independently reviewed
  `fv-specification-requirements.json` and the code-owned closed baseline have
  the same predicate IDs, placements, and profile sets. That hand-owned file,
  not the matrix generator, owns all 110 exact normative statements; each
  requirement also declares its branch condition, binding mode, disclosure
  boundary, variable source, and mandatory evidence-removal census;
- the generated specification matrix must equal that independent requirement
  source; the narrower native-type parity census is an exact subset for
  prover-private values rejected by native Rust types; every runtime profile
  has the exact applicable role multiplicity, and every role cites a concrete
  predicate plus an independent acceptance/security consequence theorem;
- every predicate/profile application binds the exact trace arguments or
  formal facts it claims. Its evidence-removal target names every selected
  trace or fact; the checker deletes a target from every application and
  requires all such mapping omissions to fail. This is a census-closure check,
  not evidence that a semantic attack was reproduced;
- every critical or high predicate/profile application additionally requires
  predicate-specific semantic evidence. A circuit atom needs either a theorem
  whose conclusion states that atom and is joined to the deployed acceptance
  root, or a concrete semantic mutation/negative test. An external or
  construction atom needs a dedicated typed-relation theorem or focused
  positive/negative test. A family-valid fixture, a generic refinement root,
  or the shared action transition alone cannot satisfy this gate;
- the independent generated-consequence roster names every exact
  `(profile, circuit predicate, deployed theorem)` triple for the two padded
  NoteReshape directions, Transfer, and Withdrawal. The checker independently
  re-derives that same deficit universe, pins the canonical roster bytes, and
  requires every named theorem to exist;
- existence and axiom checks are not accepted as proposition checks. The
  requirements artifact pins normalized theorem-signature hashes for the full
  consequence surface, including every atom theorem and each profile's
  `circuitFacts_of_relationAll` bridge, deployed/local acceptance root, and
  transaction root. Renaming a weakened `True` theorem to an expected name
  cannot satisfy the gate;
- a transaction atom selects `TransactionAccepted.actionAccepted` and
  `TransactionAccepted.committed`, not the action-local transition field.
  Withdrawal state/atomicity also selects
  `TransactionAccepted.withdrawalEffects`. Closure requires the protocol
  `transactionAccepted_of_circuitFacts` theorem and the profile-specific
  deployed `transactionAccepted_of_deployedRelation` root;
- every positive constraint-manifest segment has one exact
  `(operation, arguments, kind, row count)` inventory entry and is selected by
  at least one atomic predicate; every handwritten formal-fact field and every
  obligation-ledger row has exactly one evidence-set owner;
- every state/effect predicate selects only the family’s typed
  state relation; the checker pins the exact `ConsensusState`, `ActionDelta`,
  action-transition clauses, transaction-composition evidence, and acceptance
  embedding and rejects the former opaque state-premise fields;
- consensus acceptance, honest construction, and claims that deliberately
  compose both are different scopes. Construction evidence cannot enter a
  circuit-to-acceptance refinement;
- critical prover-private exclusions require a boundary-negative test, a
  recomputed attack reproduction, and a full-circuit negative test;
- a fresh constraint manifest must contain each matrix-mandated circuit
  predicate as the exact authenticated row shape before Lean refinement starts;
- protocol semantics cannot import generated contracts, manifests, traces,
  artifacts, or wire indices;
- generators cannot write protocol-semantic modules;
- a circuit-only change must preserve the reviewed specification bundle digest
  `tools/gnark/lean/certified-protocol-semantics.sha256`;
- the digest includes every `Protocol/**/*.lean` and Poseidon377 semantic
  module, the recursively discovered Lean import closure of all four deployed
  roots and consequence modules, the whole `crates/**` Rust source/manifest/
  schema closure, the circuit/extractor Go trees, Lean proof generators, FV
  profiles/backends, Cargo/Go/Lean lock and build inputs, and the applicable CI
  gates and workflows. A weakened helper outside a cited theorem or test
  declaration therefore cannot evade review;
- every witness field must have a reviewed role, a supporting obligation, and
  at least one compiled R1CS row;
- exact statement reconstruction is differential-tested across Rust and Go;
- stale plan-body/balance caches and removed per-note address representations
  are forbidden by schema and structural regression tests.

This closes the specification only relative to the independently reviewed
110-predicate requirements source, code-owned baseline, and obligation ledger.
The current closed census contains 278 predicate/profile applications, 478
exact trace selections spanning 301 unique trace IDs, 339 formal-fact
selections spanning 103 unique acceptance/circuit/construction facts, 43
obligation-ledger rows, 25 security properties, and 289 predicate-specific
executable test IDs. Every declared `(test, predicate, profile)` claim must be
selected by one exact application;
family-specific evidence cannot silently claim another family merely because
the underlying predicate is shared.

`CommittedEffects` is deliberately an external transaction-envelope premise.
It establishes global uniqueness, exact durable extensions, and target
multiset inclusion; it does not claim a typed provenance proof that every item
is the concatenation of an enumerated list of accepted actions. The Lean model
deliberately has no detached rejected-outcome theorem. Release separately
requires end-to-end executor rollback regressions covering state transactions
and application-owned deferred buffers. Claims must not be strengthened beyond
these boundaries without extending the model.

The runtime half has a separate closed proof-acceptance census: 17 production
sinks and 7 explicitly guarded test/benchmark exclusions. The checker parses
the Rust entrypoints and rejects an unlisted public proof path, a missing
test/benchmark `cfg`, any production use of legacy aggregate `batch_verify`,
any cache promotion outside the reviewed callers, or any sink that does not
reach `verify_each` and `Groth16::verify_with_processed_vk` under the exact
bundled family key. Aggregation may be retained as redundant diagnostic or
performance evidence, but it is never an acceptance authority.

The adversarial runtime regressions exercise every deployed real-proof fixture
through ProcessProposal, cold DeliverTx, extracted-cache hits, host delivery
before and after CheckTx, and every cache-promotion tier. Decodable invalid
Groth16 proofs are rejected despite a supplied aggregate, and rejection occurs
before state mutation. Standalone test genesis does not create the Withdrawal
`channel-0` route, so these regressions make no positive end-to-end stateful
Withdrawal claim; the positive Withdrawal packet/supply transition remains
covered by its focused handler tests, while the invalid-proof paths reject
before IBC route state is consulted.

No mechanized process can
prove that humans have imagined every security property. Promotion therefore
still requires adversarial review of the requirements source itself. The
machine gate establishes two narrower, auditable claims: the reviewed
requirement set is closed under the repository census, and no reviewed atom,
branch/disclosure contract, role, trace row, formal fact, transition clause,
ledger row, required test, or stated assumption silently falls out of the
implementation/proof chain.

The version-6 NoteReshape witness contains one private shared asset ID,
diversified generator, transmission key, routing nonce, and current user-status
proof. Transfer V19 and Withdrawal V11 likewise derive their public bodies,
shared sender context, and status facts from canonical plan data.
There is no persisted placeholder action body or duplicate balance in any of
the three proof plans.

## Exact deployed chain

```text
independent Semantics + Concrete primitives + obligation ledger
                              |
Go Define -> SR1CS -> typed slice IR -> generated row contracts
                              |                   |
                      coverage capstone     typed CircuitFacts
                              \                   /
                    handwritten family adapters
                              |
                independent concrete refinement
                              |
       explicit acceptance facts + typed before/delta/after transition
                              |
                 Protocol.*.ConsensusAccepted

Honest construction checks -----------------> ConstructedAndAccepted
```

Each circuit-to-protocol refinement is closed conditional on its named external
facts. Certification additionally pins the semantic segment manifest,
authenticated row IR, template equivalence witnesses, generated ownership
digests, SR1CS bytes, PK/VK bytes, and deployed-key prove/verify round trips.
Template reuse is permitted only with a checked wire/row permutation, optional
L/R swap, and valid nonzero R1CS scaling. Reused IR must project exactly onto
the authenticated manifest segment partition and match a complete canonical
reconstruction from the SR1CS and reviewed proof-template registry.

Release proof cases are branch-labelled rather than treated as one anonymous
coherence witness. Transfer proves and verifies canonical
`regulated_unflagged`, `regulated_flagged_hidden`, and `unregulated_hidden`
assignments under the same deployed key. Withdrawal does the same for its
regulated/optional-real and unregulated/optional-dummy branches. These receipts
show key/R1CS coherence and branch satisfiability; the exact-row Lean
refinement, not witness sampling, establishes the universal relation claim.

The artifact contracts are `shieldd.gnark.fv_profiles.v2` with
`proof_witnesses`, proof receipt schema v4 with `proof_case` and
`setup_provenance_sha256_hex`, circuit metadata v2, and setup provenance v2.
Setup provenance identifies each setup command generation self-test by case,
witness version, and witness hash and records that the test proved and verified
in process. It deliberately retains neither proof bytes nor a proof digest:
fresh schema-v4 release receipts are per-run operational evidence that binds a
prove/verify run to the deployed artifacts. They are nonce-bound and checked
before the gate exits, but are not signed or persisted as portable
attestations. The current provenance
records a fresh setup but also states
`setup_transcript=not_recorded` and
`toxic_waste_erasure=not_mechanically_verified`. A successful proof receipt is
not evidence of key derivation or toxic-waste destruction.
Accordingly every profile is stamped with
`setup_trust_status=conditional_unverified_ceremony` and the exact assumption
`ZK-ASSUME-GROTH16-SETUP-TOXIC-WASTE`. The completeness checker requires this
status/assumption join and will not report unconditional setup trust.

Every cited predicate test and separately owned runtime-policy test is
executable evidence, not a filename in a
spreadsheet. The requirements artifact pins the full source bytes for every
test ID, so retaining a selector while replacing its body with a vacuous pass
reopens the gate. `check-fv-specification-evidence.sh` resolves every Rust or Go
selector to exactly one runnable test, forbids ignores/skips, executes it under
the declared build profile and features, and emits a nonce-bound receipt over
the matrix, execution plan, source bytes, command, and output. The completeness
checker rejects a stale, partial, replayed, or differently scoped receipt.
The dedicated real-proof acceptance module is also a closed test census:
every runnable test in it must have a matrix row and is forced onto the exact
release prover execution path. Every Withdrawal-named runtime test in the
outbound ICS-20 module and every test in the three deployed shielded-action
handler modules are likewise required to have matrix rows. The fixed-padded
NoteReshape and Withdrawal proof modules are closed test censuses as well.

## Trust boundary

The result still trusts the gnark compiler/backend and Groth16 implementation,
the extraction and coverage tools, Lean's kernel and standard axiom baseline,
and the documented cryptographic assumptions. These include Poseidon and
BLAKE2b collision resistance and the exact Decaf gadget interpretations listed
in the assumption ledger. Note-owner uniqueness specifically relies on
`ZK-ASSUME-IVK-HASH-TO-SCALAR-BINDING` for the composed
`Poseidon377::hash_2(... ) mod r` map restricted to nonzero results: native
full-viewing-key construction and all four circuits reject the zero reduced
scalar, and every circuit rejects identity-class transmission points exactly.
Only collisions between distinct admitted hash outputs congruent modulo `r`
remain an accepted-proof computational boundary; the five-target zero
probability is an honest-constructor availability concern. Infallible native
payment-address derivation additionally relies on
`ZK-ASSUME-DIVERSIFIER-HASH-TO-GENERATOR-NONIDENTITY` for the exact
personalized BLAKE2b-to-`Fq`-to-Elligator map over 16-byte diversifiers. The
ledger deliberately claims no concrete negligible reduction until the
Elligator identity-preimage count and hash-to-field idealization are proved;
serialized addresses and every circuit role still reject identity values
directly. It also trusts the current fresh-setup operator not
to retain toxic waste; the explicit provenance makes that residual visible but
does not discharge it. Protocol handlers own signatures, live state, and state
transitions.

The Lean gate permits one Lake build at a time with `LEAN_NUM_THREADS=1`.
Generated Lean is never edited directly; generator output and template
ownership are byte-checked. Affected pull requests run the bounded soundness
invariants, statement seams, manifest/stamp integrity, and Alloy checks.
Circuit, proof, and relevant toolchain changes run full artifact replay on the
exact merge-queue candidate. The workflow has no branch-push trigger, so it is
not repeated immediately after merge. Manual and daily default-branch runs also
regenerate every formal artifact and run deployed-key prove/verify to detect
toolchain, runner, and procedure drift. Lean kernel replay and the axiom audit
remain local release operations: committed evidence binds the source closure,
final theorem roots, axiom baseline, and toolchain, and strict replay rejects
stale evidence. This cadence does not claim that CI independently reruns Lean
or that candidate checks replace local proof verification.

## Lean circuit inner loop

The certified circuit workflow has three explicit tiers:

| Tier | Command | Intended use |
|---|---|---|
| Fast | `scripts/fv-lean.sh fast <circuit>` | Generator, drift, import, stamp, and vector checks; no Lean or prover |
| Affected | `scripts/fv-lean.sh affected <circuit>` | Fast tier plus that circuit's final theorem root only |
| Full | `scripts/fv-lean.sh full all` | Release-gated Lean, theorem audit, proving, and receipt checks |

Normal circuit edits should stay in `fast` until source generation and semantic
joins stabilize, then run `affected` for the edited family. `full` is a release
operation, not the edit loop.

Keep the circuit source and regenerated FV evidence in one PR. For reviewable
history, commit handwritten circuit/spec/proof changes before the generated
refresh instead of mixing both in one diff. A follow-up evidence PR is not an
acceptable interval for a changed circuit.

Build telemetry is emitted by `scripts/lean-build-safe.sh` when
`LEAN_BUILD_METRICS_OUT` is set. Budgets live in
`tools/gnark/lean/build-budgets.json`; they distinguish seating/handwritten,
same-schedule, added-block, and full-refinement changes.

Lean build cache identities are content-addressed by the target, platform,
toolchain, Lake manifest, that target's circuit IR/template inventory, proof
generator, extractor, and handwritten substrate. Git commit and timestamps are
recorded as metadata but do not invalidate the cache. Local builds reuse Lake's
normal `.lake/build` artifacts. The full CI artifact replay remains Lake-free;
the identity command is available to any CI worker that actually compiles Lean.

Statement-hash generation validates one shared Poseidon7 schedule and one
sponge block planner across every circuit variant. Scalar endpoint, row
normalization, and lane soundness are emitted as one leaf, eliminating the old
three-file chain. Transcript consumers import split core, encryption, metadata,
routing, and statement seams through a thin facade.

No command may run two Lake builds concurrently. All affected/full builds use
`LEAN_NUM_THREADS=1` and the named-module resource guard.

The terminal command list and failure policy live in
[release.md](release.md#commands).
