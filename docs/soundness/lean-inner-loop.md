# Lean circuit inner loop

The certified circuit workflow has three explicit tiers:

| Tier | Command | Intended use |
|---|---|---|
| Fast | `scripts/fv-lean.sh fast <circuit>` | Generator, drift, import, stamp, and vector checks; no Lean or prover |
| Affected | `scripts/fv-lean.sh affected <circuit>` | Fast tier plus that circuit's final theorem root only |
| Full | `scripts/fv-lean.sh full all` | Release-gated Lean, theorem audit, proving, and receipt checks |

Normal circuit edits should stay in `fast` until source generation and semantic
joins stabilize, then run `affected` for the edited family. `full` is a release
operation, not the edit loop.

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
