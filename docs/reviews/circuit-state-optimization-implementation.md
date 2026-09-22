# Circuit and state optimization implementation

Implementation date: 2026-09-21. Scope follows the four recommendations in
[the experiment report](circuit-state-optimization-experiments.md). Existing
uncommitted branch changes were preserved; this report describes the additions.

## Implemented behavior

- Application arithmetic uses bounded and canonical-limb comparisons, shared
  decompositions, compact Disclosure controls, routing mask implications,
  scalar nonzero checks, quaternary selection and signed net balance. Commonware
  prover/compiler implementation and its patch queue are unchanged by this work.
- Disclosure selects a distinct one-note family for a validated one-output
  request; other supported requests use 32 slots. Proof verification derives
  family and circuit ID from the request, then checks evidence/key/envelope.
  Current IDs are `shieldd.disclosure.jubjub.pari.v2.1` and `.v2.32`.
- Retired-tree cleanup joins ordinary application commits in pages of at most
  256 records. A durable cursor and validated pack receipt preserve restart
  progress. Startup and background publication do not create a second writer.
  Immutable-pack file identity gates deletion; changed/lost files pause cleanup
  for repair. Root verification is reused only for checksum-identical bytes
  matching a previously verified durable receipt.
- Reconstructed packs have a 64 MiB cache budget, serialized cold loading and
  corrected eviction/quarantine accounting. The budget excludes trees held by
  active requests. Background and requested repairs share one gate; known-spent
  nullifiers fail without starting repair. Retained compact blocks permit repair
  after the expanded generation is removed.
- The active wallet SCT hash table uses `(position,height)` as its primary key
  with `WITHOUT ROWID`. Replays of an identical hash are idempotent; conflicting
  writes fail. Unused compliance hash tables/accessors were removed. Real tree
  roundtrip tests exposed and fixed missing-commitment reads and incomplete
  forgetting that could restore forgotten witnesses after reload.

The application version is 19. The wallet schema fingerprint changes with its
SQL schema. These guardrails reject stale development state; no migrations or
compatibility paths were introduced. Existing data and key directories were not
replaced. Note commitments, tree arity, history width 10, compliance key separation,
recovery capsules, and the one-public-digest architecture are preserved.

## Fresh proof registry

Generated and loaded in both staging and final locations by the native setup
command at `target/optimized-pari-keys-20260921`. All subsequent registry-gated
checks use that explicit directory. This is a local development setup.

Manifest SHA-256: `f3e342c0c80da1b8122e749eb577fdd9e53360cbb5ac49b4da4749c3214d91ad`.

| Family | Domain | Native proving key bytes | Native verifying key bytes |
| --- | ---: | ---: | ---: |
| transfer | 262,144 | 60,962,709 | 539 |
| reshape_one_to_eight | 262,144 | 58,307,381 | 539 |
| reshape_eight_to_one | 262,144 | 59,693,753 | 539 |
| withdrawal | 131,072 | 31,124,165 | 539 |
| seizure | 16,384 | 3,994,444 | 539 |
| disclosure | 131,072 | 29,838,725 | 539 |
| history_generation | 16,384 | 3,841,772 | 539 |
| history_chunk | 131,072 | 31,349,169 | 539 |
| disclosure_one | 8,192 | 1,840,166 | 539 |

All envelopes remain 244 bytes. Each relation exposes one application public
scalar and one committed witness value. New keys reflect the exact implemented
relations; experimental keys were not reused.

## Verification

- Circuit library: 63 passed; proof-envelope integration: 1 passed. This included
  real native proofs, all nine family shapes, malformed signed magnitudes,
  canonical comparisons and path-position binding.
- Wallet SCT regressions: first 2 passed / 2 failed; after the reproduced fixes,
  all 4 passed, including staged append/forget/reopen and rollback.
- Native registry generation and staging/final loading passed.
- Broad application integration run: 648 passed, 24 deliberately ignored;
  no failures. This includes 101 app tests, 35 embedded-service tests, wallet
  sweep/transfer/paid-withdrawal scenarios, 240 compliance tests, 18 Disclosure
  tests, 112 shielded-pool tests, 87 view tests, and CLI/registry/transaction tests.
  The app suite also launches a child-process cancellation check; its passing
  result is not counted a second time in the total.
- All workspace targets and features passed `cargo check --locked --profile ci
  --workspace --all-targets --all-features`.

- All 19 prover-gated tests actually ran and passed: seizure/capsule release,
  two wallet Disclosure export/import paths, request/family/key/context binding,
  machine verification outcomes, registry revalidation, both reshape families,
  withdrawals, Transfer (including distinct-witness batch verification), and
  historical generation/chunk and concurrent proving.
- The CLI was built with all features, including Disclosure proving. Prover
  strategy benchmarks and the signing-vector generator were excluded from the
  ignored-test run; the generator is not a verification gate.
- Formatting, diff whitespace checks, and Commonware source-integrity checks
  passed. All 359 Commonware source/patch-policy files in the initial inventory
  remain unchanged by this implementation.

Tests used the optimized `ci` profile, with two build/Rayon workers and one test
thread for expensive suites. A separate `--release` suite, external Orbis
deployment, full workspace test matrix, and new throughput benchmarks were not
run. The broader workspace was checked with all targets/features enabled.

The cache budget excludes active-request references. The pruning page size bounds
work per commit, not the backlog at every transaction rate; sustained pruning
throughput remains unmeasured. File identity gates cleanup after checksum/root
verification; retained compact blocks recover missing packs. See the evidence
notes for the repair-cancellation review and filesystem assumptions.

Verification logs and source fingerprints are retained in
[the implementation evidence](circuit-state-implementation/README.md).
