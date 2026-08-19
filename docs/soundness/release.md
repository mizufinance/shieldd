# Soundness release gate

A circuit release is ready only when source, deployed bytes, formal proof, key
material, and an actual proof round trip all describe the same circuit. Hash-only
restamping is never a fix for a failed semantic or source-drift gate.

## Required evidence

1. The independent requirements source, code-owned predicate baseline,
   generated specification matrix, applicable circuit roles, handwritten
   facts, consequence theorems, and mandatory adversarial tests form one closed
   claim set. Each requirement fixes its acceptance/construction placement,
   profiles, branch condition, binding mode, disclosure boundary, variables,
   exact normative statement, and evidence-removal census. The computed
   `coverage_status` is
   `coverage_closed` and `specification_status` is `specification_closed`; both
   are checked independently of the profile's editable candidate/certified
   label. Critical and high applications also have predicate-specific semantic
   evidence; generic family-valid or refinement evidence does not close them.
2. Focused circuit and statement-seam tests pass.
3. Fresh Go compilation is byte-identical to the deployed SR1CS and semantic
   manifest.
4. Fresh typed IR, verified proof-template witnesses, normalized coverage
   manifest, exact contracts and template semantics, Bounds, Capstone,
   CircuitFacts, RoleBindings, and SemanticBindings byte-match the committed
   files and ownership manifest.
5. Every deployed obligation is discharged and its relation/wire-role hashes
   match the exact rows.
6. The final protocol-validity theorem builds from the deployed capstone
   through the independent concrete refinement, and the code-owned
   `Valid`-to-security consequence root builds for that family. Each
   transaction-level atom also reaches `TransactionAccepted` through both
   `transactionAccepted_of_circuitFacts` and the profile's
   `transactionAccepted_of_deployedRelation`; a detached transaction theorem
   does not count.
7. No project axiom or compiler-backed primality shortcut exists, and
   the bounded `.olean` audit permits only `propext` and `Quot.sound` for the
   scalar-field certificate and selected final soundness declarations, while
   accepting proofs that use any subset.
8. Canonical schema-v2 metadata separately pins the exact deployed SR1CS, PK,
   binary VK, JSON VK, and fresh-setup provenance bytes; the two VK encodings
   decode to the same key.
9. The deployed keys prove and verify the committed witness against a freshly
   compiled constraint system, and the schema-v4 receipt binds that metadata,
   branch-labelled proof witness, manifest, SR1CS, PK, both VK encodings, and
   setup-provenance record. The receipt proves key/relation/witness coherence;
   it does not prove how setup randomness was generated or erased.
10. Stamped artifacts are updated last and their sidecars match.
11. Constraint and performance deltas are recorded when the circuit changed.
12. Runtime premises named by the final theorem have focused regressions:
    fixed shape/key selection, body/public-input projection, signatures,
    current asset policy and user-status roots, transaction-wide nullifier
    uniqueness, proof-bound effects, and withdrawal payload/state checks.
    Action-local state claims use the exact typed pre-state, action delta, and
    post-state transition. Transaction-wide uniqueness and commit use
    separate typed transaction-composition evidence at the durable
    transaction-final state, as multiplicity-preserving multiset extensions
    modulo storage ordering rather than append order or SCT positions.
    Rejection rollback is not Lean-derived and must instead pass mandatory
    executor tests covering both the state transaction and application buffers
    that live outside it. Neither an opaque acceptance predicate nor the
    shared action transition alone is admissible for a transaction-level
    claim.
13. The closed production proof-acceptance census byte-matches the reviewed
    matrix, every sink independently verifies Groth16 under the exact bundled
    family key before acceptance or cache promotion, and the nonce-bound exact
    test receipt proves that every cited selector ran once without a skip.
14. Infallible native payment-address derivation is explicitly conditional on
    `ZK-ASSUME-DIVERSIFIER-HASH-TO-GENERATOR-NONIDENTITY` for the exact
    personalized BLAKE2b-to-field-to-Elligator map. The assumption ledger
    records the 16-byte domain, the currently unknown quantitative reduction,
    the required nonidentity postcondition, and the typed-failure/remapped
    hash-to-group removal paths; untrusted addresses and circuit roles still
    reject identity values directly.
15. Setup trust remains explicitly
    `conditional_unverified_ceremony` under
    `ZK-ASSUME-GROTH16-SETUP-TOXIC-WASTE` until a recorded ceremony and
    mechanical toxic-waste-erasure evidence replace that assumption.
16. Every one of the 278 predicate/profile applications survives the positive
    evidence join and fails when one declared trace/fact evidence-removal target
    is deleted. This proves mapping closure, not semantic falsification.
    Every critical/high application separately survives its predicate-specific
    theorem or semantic-test gate.
    The 142-entry circuit consequence roster byte-matches its reviewed pin,
    equals the independently re-derived circuit relation-atom surface, and
    every exact profile/predicate theorem is present in the deployed root.
    The normalized propositions of the complete reviewed consequence/root
    theorem surface match their hand-owned fingerprints; an expected name with
    a weakened type does not count. Every mandatory test source also matches
    its reviewed full-file fingerprint, and the semantic digest covers the
    whole crates source/manifest/schema closure, circuit and extractor
    implementations, proof/import generators and lockfiles, FV configuration,
    and applicable CI control plane so a cited test cannot hide a weakened
    helper.
    Acceptance-only properties consume no honest-construction
    facts; composition properties name that extra scope explicitly.

## Commands

Run Lean serially and single-threaded:

```sh
(cd tools/gnark && go test ./internal/circuits/... ./internal/primitives/...)
cargo test -p shieldd-constraint-coverage
scripts/check-fv-census.sh
scripts/check-extracted-lean-heartbeats.sh
python3 scripts/check-fv-specification-completeness.py
bash scripts/check-fv-specification-evidence.sh
bash scripts/check-certified-circuit-spec-independence.sh strict
bash scripts/check-manifest-pin.sh all
bash scripts/check-constraint-coverage.sh --require-full-deployed --check-typed-bindings all
python3 scripts/gen-certified-circuit-artifacts.py --check
LEAN_NUM_THREADS=1 bash scripts/check-lean-circuit-fv.sh release all
bash scripts/check-circuit-fv.sh receipt all
```

The modes are cumulative. `drift` checks source, extraction, generator,
ownership, and emitted-Lean stability. `typed` additionally checks the selected
exact-fact and refinement closures, theorem bindings, obligation coverage, and
axioms. `release` additionally checks deployed PK/VK derivation, prove/verify,
negative key-family cases, soundness invariants, and final evidence.
`release all` is the terminal certification for both NoteReshape shapes,
Transfer 2x2, and shielded ICS-20 Withdrawal 2x1.

Use `typed` locally while developing proofs. Run `release` on the pinned
toolchain before refreshing and committing Lean evidence. Manual/nightly GitHub
Actions validates that committed evidence against its complete source closure
and reruns `drift all` plus deployed-key `receipt all`, but does not
independently rebuild the Lean import closure.

The focused StatementHash resource gate uses a 120 s / 4 GiB aggregator budget,
a 2 GiB marginal-RSS leaf budget, and a 50 MiB generated-olean budget. Current
measurements and circuit identities live in the stamped artifacts.

## Performance record

For an optimization, record the exact pre/post commit and deployed artifact,
constraint count and percentage, compile/setup/witness/prove/verify timings,
run count and statistic, acceleration mode, and key/proof sizes. Do not compare
different machines or setup modes without labeling the difference. A constraint
reduction without a current prover run is reported only as a constraint
reduction.

## Failure handling

- Source/SR1CS mismatch: regenerate and review the semantic diff; never restamp.
- IR/witness/contract/template/wiring/capstone/CircuitFacts mismatch: fix the
  extractor, generator, or proof, regenerate, and review the exact diff.
- New project axiom: stop; the certified FV path permits none.
- Key round-trip failure: the key set is stale or inconsistent; run a fresh
  setup and replace the complete PK/VK/SR1CS/metadata set together.
- Lean resource failure: narrow the module or proof shape. Do not set unlimited
  heartbeats or run concurrent Lake builds.
