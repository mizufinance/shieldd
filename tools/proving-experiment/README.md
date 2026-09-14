# Transfer proving experiment

Development-only implementation of the [three-candidate brief](../../docs/research/zkpari-proving-experiment.md).
The [active optimization campaign](../../docs/research/zkpari-optimization-campaign.md)
defines the next implementation gates. The selected baseline is gnark Groth16
for A, the same relation with ZK-Pari/combined gnark377 arithmetic for B, and
native Commonware381/Jubjub with prepared blst for C. Candidate circuit changes
remain isolated experiments; applicable changes also receive a fair A control.

[STATUS.md](STATUS.md) records readiness and remaining work. The
[optimization ledger](optimization-ledger.md) preserves attributable diagnostics;
[native obligations](native-obligations.md) and [fixture mapping](native-fixture-mapping.md)
define C's complete relation and matched logical scenarios. Desktop results do
not measure phones or network throughput.

## Checked checkpoints

B has 241,626 square rows and domain 262,144. Original/lowered assignments,
prepared mapping and six real Transfer proofs pass, including negative cases.
The selected arithmetic uses combined resident gnark377 MSMs; alternate GLV/table
and Edwards paths are diagnostic only. Source-bound checks are recorded in the ledger.

C has 232,683 rows, 232,703 unpadded columns and domain 262,144. Its native hash,
fixed-base and selected-key DH tuning preserves full semantic gates. All six
regenerated-key real proofs and six complete API proofs pass. Forty relevant
release checks have passed across recorded focused invocations, plus the native
transport test. Four [parameter screening](native/poseidon-screening.md) tests pass.
The initial native port and all intermediate source/artifact checkpoints remain
in the cache. Selected API gates and compact desktop measurements are complete; see the
[measured report](../../docs/research/transfer-proving-selected.md). Physical phones remain pending.

Parallel checked key loading preserves canonical encodings, curve/subgroup and
identity checks. Its same-key diagnostics improved B from 75.736 to 63.249 s and
C from 38.116 to 20.190 s. These are initialization diagnostics, not first-proof
samples. Selected warm medians are A 1.8455 s, B 2.4765 s and C 3.0290 s; first proofs
are 23.0991, 89.8052 and 26.3193 s. All 18 measured proofs and six warmups verified.
The [Git checkpoint](checkpoints/2026-09-13-baseline/README.md) saves compact raw
measurements, provenance and exact source archives without generated keys or binaries.

## Reproduction

Use unique log prefixes, one heavy job at a time, and inspect every exit record:

```sh
export CARGO_BUILD_JOBS=2 RAYON_NUM_THREADS=2 GOMAXPROCS=2
python3 tools/proving-experiment/native/bootstrap.py
python3 tools/proving-experiment/guard.py tools/proving-experiment/cache/build-new -- cargo build --release --locked --offline --manifest-path tools/proving-experiment/Cargo.toml
python3 tools/proving-experiment/guard.py tools/proving-experiment/cache/native-build-new -- cargo +1.95.0 build --release --locked --offline --manifest-path tools/proving-experiment/native/Cargo.toml --example native_worker --example transfer_gate --example export_witnesses
```

The Commonware pin requires Rust 1.95 and is a separate workspace. Its recorded
patch completes the draft polynomial migration and adds measured prepared,
quotient, diagnostic and checked-loader changes. `bootstrap.py` verifies the
exact pin and patch; it does not overwrite an unexpected checkout.

A/B use the Go `cmd/provingexperiment serve A|B ARTIFACT_DIRECTORY` helper.
B's Rust entry point is `serve OLD_CACHE KEY GO_BINARY ARTIFACT_DIRECTORY`.
C's worker takes `KEY TEMPLATE_WITNESS`. Requests carry a bounded typed JSON
header plus canonical binary payload; B includes the complete Go solver bridge.
Templates contain logical inputs, not pre-solved intermediate wires.

```sh
python3 tools/proving-experiment/guard.py tools/proving-experiment/cache/a-api-new -- python3 tools/proving-experiment/api_gate.py A tools/proving-experiment/cache/a-api-new
python3 tools/proving-experiment/guard.py tools/proving-experiment/cache/b-api-new -- python3 tools/proving-experiment/api_gate.py B tools/proving-experiment/cache/b-api-new
python3 tools/proving-experiment/guard.py tools/proving-experiment/cache/c-api-new -- python3 tools/proving-experiment/native_api_gate.py tools/proving-experiment/cache/c-api-new
python3 tools/proving-experiment/guard.py tools/proving-experiment/cache/desktop-run-new -- python3 tools/proving-experiment/desktop.py tools/proving-experiment/cache/desktop-new
```

The API scripts use the preserved B lowered key and C tuned gate/witness cache.
To generate C artifacts in a new cache, run `transfer_gate NEW_CACHE_DIRECTORY`
and `export_witnesses NEW_CACHE_DIRECTORY`, then explicitly bind those paths in
the controller before freezing its identity. Setup is offline and never counted
as first use. All gates run before final measurements.

The compact desktop controller collects two untimed warmups, five warm samples
and one fresh-process first proof per candidate, with balanced backend orders
and a common two-worker profile. Every proof is checked before sample admission.
It records full API wall time, component timings, initialization, sampled RSS,
encoded bytes, raw values, medians/ranges and descriptive ratios. Resume verifies
source/artifact identities and prior proof hashes; changed identities require a
new cache. OS page-cache coldness is not claimed.

```sh
python3 -m unittest discover -s tools/proving-experiment -p 'test_*.py'
python3 -m unittest discover -s tools/proving-experiment/native -p 'test_poseidon_check.py'
```

The resource guard stops only its own process group on memory/swap/disk pressure
or sustained competing workloads. Do not modify running scripts or start another
heavy command behind a build lock. The old `tools/zkpari-spike` campaign remains
stopped; its two completed 4,096-proof corpora and one-worker evidence are intact.
Production release-gated prover suites and formal certification were not run for
this experiment. Formal tools/specifications/evidence belong in `shieldd-security`.

## Selected arithmetic comparison

`selected_workers.py` uses the measured combined gnark377 helper for B and prepared/combined blst for C. The original `desktop-final` binaries, report and cache are preserved. No circuit or key changes are introduced by this pass.

Run `selected_gate.py B|C NEW_CACHE_DIRECTORY` through `guard.py` sequentially before measurement. Each selected binary must accept six fresh real proofs and reject altered proofs, statements, truncation and the invalid witness. `test_selected.py` binds the Go helper to the previously verified combined binary; `test_desktop.py` checks sample identities and resume handling.

The frozen source manifest is produced once by `freeze_selected.py`. With `CARGO_BUILD_JOBS=2 RAYON_NUM_THREADS=2 GOMAXPROCS=2`, run `guard.py cache/desktop-selected-run -- python3 selected_desktop.py cache/desktop-selected` from this directory. It validates the selected gates and records 18 measured proofs plus six warmups, checked initialization, raw phases, exact binaries, fresh proof hashes and per-worker process-tree RSS. Relative cache arguments above are interpreted from this directory; the script requires the experiment cache.

Use the existing `../zkpari-spike/cache/venv/bin/python report_selected.py cache/desktop-selected ../../docs/research/transfer-proving-selected.md` for read-only analysis and plots. This reporting environment contains matplotlib; it is independent of the prover dependencies. Five warm values and one fresh-process first proof per backend do not support p95 or cold-tail claims. Physical-device measurements remain a separate access prerequisite.

## Bounded second-pass probes

`edmsm-probe.md` records the rejected Edwards-bucket route; `subgroup-startup-probe.md` records the promising deterministic membership-check component. Both preserve `desktop-selected`. The broader prioritization is in `../../docs/research/zkpari-optimization-second-pass.md`.

Edwards code is isolated in `edmsm/` with its own Go lockfiles. Use `GOTOOLCHAIN=go1.25.7 GOMAXPROCS=2 go test -p 2 ./...` there, and build the `edmsm` Rust example with Rust1.89 and Cargo jobs2. The controller takes `OPERANDS BASELINE_GO EDWARDS_GO NEW_OUTPUT`; set `SHIELDD_EDMSM_PREPARATION_RECORD` to the new output directory's `preparation.json` to retain separate checked-load/mapping attribution. The selected baseline is `cache/msmworker-combined`. Two warmups and three paired samples cover the actual combined commitment/opening operands with canonical transport.

The `subgroup` Rust example takes `OPERANDS NEW_OUTPUT`. It checks198point boundary cases and selects4096public bases evenly from four real key slices, then compares deterministic seed validation with the full-order reference. It measures membership and checked point decoding, not the compressed proving-key loader. Always wrap builds/tests/runs in the existing guard; these probes do not justify a new full matrix or changed keys by themselves. Raw sources, binaries, compiler metadata and successful resource logs are retained in their separate cache directories.
