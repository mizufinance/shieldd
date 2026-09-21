# Remaining review remediation — September 21, 2026

Status: **fixed** — all six reproductions are covered by permanent regressions. Every test target passed across the full workspace run and the corrected transaction target rerun.

## Product and branch context

Shieldd is a Penumbra-derived privacy-pool library embedded into Bankd through
`HostExecution` and a C ABI. Shieldd owns shielded notes, nullifiers, proof
verification, compliance commitments, wallet planning/history, and issuer scan
records. Bankd owns consensus, authorization, public submission/query workflows,
accounting, settlement, and IBC execution. Both are prototypes; seizure-release
orchestration and host settlement remain incomplete.

The current branch is `codex/zkpari-migration`, based at `57eb44e8ca`. Its migration
is in the working tree, not a new sequence of branch commits. It replaces the
Decaf377/Groth16/gnark/SnarkPack paths with Jubjub, RedJubjub FROST, Poseidon over
the BLS12-381 scalar field, and native Commonware Pari circuits/proving/batch
verification. Eight fixed circuit families use an explicit, identity-bound key
registry. Wallet/history records, serialization, host integration, tooling and
tests are being updated together. Stale state is rejected rather than migrated.
The large pre-existing migration was preserved during this remediation.

Evidence: [project map](../README.md), [architecture](../architecture.md),
[proof system](../proof-system.md), [wallet](../wallet.md), root manifest and the
working-tree changes to crypto, app, and wallet code.

## Assessment and changes

All six findings in the [original review](remaining-usage-review.md) were
reproduced before changing their implementations. They warrant correctness fixes;
none establishes a demonstrated signature forgery or compliance bypass.

| Finding | Enforcement boundary and correction | Coverage |
| --- | --- | --- |
| Unregulated planning | `StoragePlanningIo::local_compliance` permits synthetic unregulated witnesses regardless of unrelated user-tree contents. Asset proofs and regulated-leaf requirements remain enforced. | Populated user tree with base-asset query succeeds; a regulated asset with policy but no user leaf fails. |
| Stale historical worker | Every stage, completion, and failure write compares the last persisted cache and captured `NullifierWindow` in one immediate SQLite transaction. A mismatch is stale work for a subsequent pass. The unchecked writer is test-only; scanner insertion remains inside its existing block transaction. | Original 33-row pagination race; same-window row replacement; unchanged-row window advancement; successful and failed fetches; completed-state CAS; existing spent-note and registry checks. |
| Conflicting daily volume | Completion checks final body and fee actions for duplicate real `(subject, day)` transitions, including precompleted actions. Canonical subjects bind address and asset. | Raw, completed and mixed transfers reject duplicate transitions; individually valid transfers, disclosure padding, and distinct subject/day budgets remain allowed. |
| Reservation release | Release requires the expected transaction ID as well as day and nullifier. | Expired owner's release preserves the replacement reservation and prevents a third acquisition; the current owner can release normally. There are still no production callers in this repository. |
| Threshold import | A narrow RedJubjub FROST adapter interpolates a deterministic threshold-sized public-share basis, checks its group key against the FVK spend key, and checks every remaining share against the same polynomial using upstream coefficient arithmetic. Import, dealer and DKG constructors validate. | Unrelated FVK, inconsistent extra public share and lowered threshold reject; honest dealer serialization, DKG and signing pass. The independent nullifier key cannot be inferred from public shares. |
| Pari compiler | Patch `0004` materializes the opposite deferred square before emitting a fused equality. Ordinary single-sided fusion is unchanged. Patch/source checksums were updated and reproduced from pinned upstream. | Equal, unequal, zero and opposite-sign roots, both assertion directions, and operands equal after linear folding; all 44 Pari tests pass. All eight current catalogue relation digests match the original review census exactly. |

Changed production files: `crates/view/src/storage_planning.rs`,
`crates/view/src/historical_proof_worker.rs`, `crates/view/src/storage.rs`,
`crates/view/src/client_compliance.rs`, `crates/custody/src/threshold/config.rs`,
`crates/crypto/redjubjub-frost/src/keys.rs`, and the vendored Pari compiler.
Regressions live alongside these modules and in
`crates/view/src/storage/historical_worker_tests.rs`. Wallet documentation and
Commonware patch provenance describe the resulting behavior.

A fresh independent source review found no concrete surviving bypass or
regression in the scoped candidate. It performed no builds or tests.

## Verification

All heavy jobs ran sequentially with `CARGO_BUILD_JOBS=2`, `RAYON_NUM_THREADS=2`,
`GOMAXPROCS=2`, and serial test harnesses. The existing `target/dev-pari-keys`
registry and build caches were reused. Memory, swap, disk and workloads were
checked during verification; no swap use or resource interruption occurred.

1. Baseline regressions: five wallet/custody reproductions failed on their
   reported assertions; the compiler reproduction also failed. Existing baseline
   custody tests passed (13), as did the other ordinary wallet tests (77).
2. Focused repair validation: 84 wallet tests, 15 custody tests, and one upstream
   FROST integration test passed. Four expensive wallet proof tests remained
   ignored. Commonware's release-profile `zk::pari` tests passed (44).
3. Broader verification: the workspace check passed for all targets/features.
   The full workspace test run passed every target except one existing transaction
   test fixture. That fixture spent two one-unit notes but output one unit, so it
   failed conservation before reaching its intended zero-binding-key rejection.
   Only its output amount was corrected to two in
   `crates/core/transaction/src/plan.rs`; the security assertion was preserved.
   The transaction package rerun passed all 23 unit tests and its signing-vector
   test (one vector generator ignored). The other completed workspace results
   were reused rather than rerunning unrelated proof generation.
4. Formatting, diff whitespace, Commonware inventory and clean-upstream
   reproduction checks passed. Python tooling tests passed (5 + 9 + 2).
   All eight pre-fix relation digests matched exactly. No temporary source
   instrumentation or catalogue example remains.

Commands, with the bounded environment above:

```sh
cargo test --locked --profile ci -p shieldd-sdk-view -p shieldd-sdk-custody -p redjubjub-frost --all-features --no-fail-fast -- --test-threads=1
CARGO_TARGET_DIR="$PWD/target" cargo test --locked --release --manifest-path third_party/commonware/Cargo.toml -p commonware-cryptography --lib --no-default-features --features std,bls12381 zk::pari -- --test-threads=1
cargo check --locked --profile ci --workspace --all-targets --all-features
cargo test --locked --profile ci --workspace --all-features --no-fail-fast -- --test-threads=1
cargo test --locked --profile ci -p shieldd-sdk-transaction --all-features -- --test-threads=1
cargo fmt --all -- --check
python3 scripts/commonware.py check
python3 scripts/commonware.py reproduce
python3 -m unittest discover -s scripts/tests
python3 -m unittest discover -s scripts/ci -p 'test_*.py'
python3 -m unittest discover -s deployments/scripts/tests
git diff --check
```

A temporary catalogue example compiled `Family::ALL`; its output was compared
programmatically with the pre-fix census, confirming all eight digests. The
example was removed. No proof keys were regenerated.

The dedicated ignored Shieldd end-to-end proof suite was **not run**.
The ordinary all-features workspace suite does run prover-feature-gated
acceptance tests that construct real transfer, reshape, withdrawal and fee-funding
proofs. Commonware release tests also include its small proof tests. These do
not establish execution of the separately ignored proof suite. No performance benchmarks, external
Bankd/Orbis integration, or formal verification were performed. Grouping proof
jobs, changing scan scheduling, removing repeated validation, and unrelated
cleanup remain separate work requiring their own evidence.

Logs and the isolated candidate diff are preserved locally in
`/Users/antoinecyr/.codex/visualizations/2026/09/21/01a0c43e-8273-7b72-a3e3-510f46473c80/remaining-review-fixes/`.
