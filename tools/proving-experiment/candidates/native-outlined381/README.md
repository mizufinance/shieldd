# Native constant-outlining candidate

Development-only correction of the final C compiler. Production paths are untouched.
`Cargo.toml` reuses the final C library and worker source with an isolated Commonware
copy. `bootstrap.py` checks the complete retained base identity and applies
`constant-outline.patch`; the patch adds the post-optimization copy constraint and
its exact row/assignment audit. The dependency lock differs only in package name.

Run one heavy command at a time under `tools/proving-experiment/guard.py`, with
`CARGO_BUILD_JOBS=2`. Use runtime Go/Rayon=2 for proving and =1 for batch verification.
Release binaries share `tools/proving-experiment/native/target` and Rust 1.95.0.

1. `python3 tools/proving-experiment/candidates/native-outlined381/bootstrap.py`.
2. Build `outline_gate`, `outlined_worker`, `outlined_batch` with this manifest,
   `--release --locked --offline -j 2`. Run `cargo test --lib --release` with two
   test threads. The retained command receipts give exact paths.
3. `outline_gate relations WITNESS_DIR NEW_JSON` checks all six existing native
   witness scenarios, binding the old relation digest and predicted row counts.
4. `outline_gate setup WITNESS_DIR NEW_KEY_DIR` creates and roundtrips fresh
   development keys. Never overwrite completed artifacts. The retained run uses
   `cache/native-outlined-keys`; new setup randomness intentionally changes keys.
5. `desktop.py gate NEW_OUTPUT` admits six fresh proofs and negative checks.
   `prepare_corpus.py GATE_DIR NEW_CORPUS_JSON` exports the checked pool.
6. `outlined_batch VK CORPUS NEW_REPORT 16`, then 4096 after the small screen passes.
   The runner is pinned to the retained VK hash and relation digest. For a newly
   generated key, deliberately update that VK hash from the checked setup receipt
   and rerun the proof gates; never disable the check to reuse stale artifacts.
7. `desktop.py measure NEW_OUTPUT` requires the checked gate and measures paired
   full proving requests against the retained unchanged C worker. Existing cache
   paths in the controller identify this experiment's frozen artifacts.

The relation, key generation, proof gates and timing outputs must all match their
source/artifact hashes before reuse. Proof bytes and large keys stay in ignored
cache storage; compact checkpoints preserve samples, identities and failure records.
Six repeated proofs support a preliminary verifier screen, not block or TPS claims.
The corrected candidate has no new physical-phone measurements.
