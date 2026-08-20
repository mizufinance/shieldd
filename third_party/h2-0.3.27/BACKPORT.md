# h2 0.3.27 security backport

This is upstream `h2` v0.3.27 with the fix for
[RUSTSEC-2026-0258](https://rustsec.org/advisories/RUSTSEC-2026-0258.html)
backported from upstream commit
[`193833e`](https://github.com/hyperium/h2/commit/193833e87c639e39751f339a9c375a44c8bfab54).
The 0.3 branch is closed and has no release containing this fix. Shieldd still
needs it through `reqwest` 0.11 in Tendermint RPC and Orbis.

The backport preserves 0.3's reset-stream defaults and existing payload-based
flow-control accounting. The upstream DATA-frame budget, empty-frame handling,
and regression tests otherwise apply unchanged. The 0.3-only
`local_init_window_sz` field was added to the new unit-test fixture.

The backport was verified with:

```console
cargo test --locked --manifest-path third_party/h2-0.3.27/Cargo.toml --lib proto::streams::counts::tests
```

The upstream protocol tests for ignored empty frames and connection shutdown
after excessive empty, padded-empty, and tiny DATA frames were also run against
the backport. Remove this directory and its `[patch.crates-io]` entry when the
remaining clients migrate to `reqwest` 0.12.
