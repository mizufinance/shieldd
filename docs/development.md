# Development

Use the pinned Rust toolchain, a C/C++ compiler for RocksDB, and Python 3. Go is
needed only for generated protobuf consumers. Proving and verification are native
Rust/Commonware. Run commands from the repository root.

| Command | Purpose |
| --- | --- |
| `just pari-setup` | Generate a fresh complete demo proof registry |
| `just check` | Formatting and docs first, then source provenance, tooling and Rust checks |
| `just docs-check` | Local Markdown links and exact filename casing, including repository skills |
| `just ci-test` | Serial workspace tests, including real proofs, with an explicitly selected registry |
| `just commonware-test` | Pinned Commonware Pari and circuit compiler tests |
| `just chunks-test` | Immutable collection safety regressions and `no_std` checks |
| `just pari-proof-tests` | Serial ignored proof gates, including Disclosure app/CLI tests; workspace all features |
| `just features-check` | Independent crate feature boundaries |
| `just proto-lint` | Protobuf API naming, enum defaults and schema conventions |
| `just proto-check` | Reproduce Rust and Go protobufs |
| `just wasm-check` | Web-facing crates without native component features |
| `just rustdocs` | Nightly API docs for selected workspace/git packages, using default features |
| `just rustdocs-check` | All-feature first-party API docs; broken symbol links are errors, dependencies excluded |
| `just artifacts-native` | Stage the C header and native static library |

Set `SHIELDD_PARI_KEYS` to share an existing registry. Its default in `just` is
`target/dev-pari-keys`. Setup refuses to overwrite existing keys. CI caches
development keys outside Cargo targets. A source/toolchain cache key selects an exact
hit first, then a same-platform fallback. CI validates the compiled relations and
all verifying/proving artifacts before reuse; an invalid disposable cache is regenerated.
Normal registry loading still checks verifying keys against the compiled relations. See
[Proof system](proof-system.md) for registry and state identity rules.

## Select verification by impact

Use [Testing](testing.md) to design assertions and curate existing tests. This
page owns execution commands; a passing command alone does not establish test quality.

Use the optimized `ci` profile for local Rust checks and tests and reuse its cache.
`just build` and artifact staging use `release` for distributable binaries. A gate
run under `ci` does not establish a separate `--release` test run. Follow the shared
[resource limits](../AGENTS.md#local-resource-limits), including one heavy job at a time.

| Change | Evidence to collect |
| --- | --- |
| Docs/instructions/skills | `just docs-check`, checker tests, referenced symbols/commands and skill metadata; `just rustdocs-check` for API comments; fresh-session discovery and behavior when available |
| Domain/wallet | Failing regression, affected integration tests and relevant compile checks |
| Circuits/registry | Constraint and negative tests, complete family census, fresh keys for changed relations, `just pari-proof-tests` and application acceptance/identity checks |
| Native/Wasm boundary | `just features-check` and relevant `just wasm-check`; workspace all-features compilation does not verify isolated features |
| Persistence/concurrency | Legal/stale transitions, relevant restart/cancellation behavior and bounded growth |
| Protobuf/C ABI | `just proto-lint`, `just proto-check`, consumer/artifact tests and identified Bankd follow-up |
| Vendor patch | Source reproduction, vendor regressions and downstream proof gates under the pinned-source policy |
| Orbis | Local adapter/contract tests separately from live external tests; the incompatible locked runtime must still be rejected |

PR CI runs `just ci-test`: ordinary and ignored proof tests share one invocation
per binary under the workspace/all-features graph, including the pcli binary.
The integration suite shares its registry and immutable proof fixtures, while each
stateful scenario owns fresh storage. Test recipes and the standalone persistence
gate use small preallocated forests; the persistence gate preserves a caller's
`SHIELDD_STORAGE` override. Set `SHIELDD_STORAGE` when invoking Cargo directly.
The selection skips the transaction signing-vector
generator, which writes fixtures, and the denied-I/O fixture, which runs in the
separate container storage gate. `just pari-proof-tests` remains an ignored-only
command for focused proving work. Ordinary `cargo test` skips ignored tests.
The Orbis job checks isolated feature configurations and executes the proof-disabled
Disclosure case; all-feature adapter tests run in the workspace suite. Neither
job proves live Bankd/Orbis compatibility. The locked Orbis image is unsupported;
see the [external contract](jubjub-external-contract.md).

Run formatting and cheap tooling checks before expensive compilation. Record
commands, features, profile and relevant source/registry identity, distinguishing
passed, failed, interrupted and unrun checks in the task or CI output, with logs
outside the repository. Reuse completed checks unless changes or unresolved
failures justify repeating them.

The Markdown checker validates links and casing, not semantic claims or commands
inside examples. Documentation CI runs `just rustdocs-check` on first-party crates
with all features, treating broken symbol links as errors. It does not enforce
missing-doc or comment-length quotas, lint dependency documentation, or replace
isolated feature checks. `just rustdocs` remains the optional nightly index build
including selected Git dependency docs with default features.

Hardware custody is unavailable. Software and upstream RedJubjub FROST custody
are supported. Authenticated DKG broadcasts and confidential authenticated share
channels remain requirements of the threshold-signing ceremony. FROST uses the
transaction plan's CSPRNG-generated randomizer fixed before signing round one.

Commonware updates follow [the pinned-source policy](../third_party/commonware-patches/README.md).
Formal tools and evidence belong to the separate shieldd-security repository.
