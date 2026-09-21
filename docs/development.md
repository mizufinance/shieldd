# Development

Use the pinned Rust toolchain, a C/C++ compiler for RocksDB, and Python 3. Go is
needed only for generated protobuf consumers. Proving and verification are native
Rust/Commonware. Run commands from the repository root.

| Command | Purpose |
| --- | --- |
| `just pari-setup` | Generate a fresh complete demo proof registry |
| `just check` | Source provenance, tooling, Rust and formatting checks |
| `just ci-test` | Workspace tests with an explicitly selected registry |
| `just commonware-test` | Pinned Commonware Pari, prepared math/MSM and compiler tests |
| `just pari-proof-tests` | Ignored expensive real proof tests, serially |
| `just features-check` | Independent crate feature boundaries |
| `just proto-check` | Reproduce Rust and Go protobufs |
| `just artifacts-native` | Stage the C header and native static library |

Set `SHIELDD_PARI_KEYS` to share an existing registry. Its default in `just` is
`target/dev-pari-keys`. Setup refuses to overwrite existing keys. See
[Proof system](proof-system.md) for registry and state identity rules.

Only one heavy verification job may run at once, including across agents.
Start with `CARGO_BUILD_JOBS=2`, `RAYON_NUM_THREADS=2`, `GOMAXPROCS=2`, Go `-p 2`,
and Rust `--test-threads=2`. Run expensive proofs serially. Check memory, swap,
disk and existing workloads first; stop this task's jobs if pressure appears.
Use the optimized `ci` profile and reuse its cache. Diagnose crashes before
retrying. Do not stop unrelated processes or change Docker's global resources.

Hardware custody is unavailable. Software and upstream RedJubjub FROST custody
are supported. Authenticated DKG broadcasts and confidential authenticated share
channels remain requirements of the threshold-signing ceremony. FROST uses the
transaction plan's CSPRNG-generated randomizer fixed before signing round one.

Commonware updates follow [the pinned-source policy](../third_party/commonware-patches/README.md).
Formal tools and evidence belong to the separate shieldd-security repository.
