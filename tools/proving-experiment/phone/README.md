# Physical Android proving screen

Development-only ARM64/API33 harness for the connected SM-G781W (SM8250).
`setup_toolchain.py` pins official CLI15859902, NDK30.0.16248370 and Rust1.89/1.95.
`build.py` builds the retained A/B/C CPU workers; frozen source hashes bind the bundle.
`run.py` stages only experimental keys/witnesses/binaries under `/data/local/tmp`.
`main.go` supervises one backend and its child processes on the device.

Run builds sequentially inside `../guard.py`, then `run.py prepare`,
`run.py deploy --serial SERIAL`, and guarded `run.py run --serial SERIAL
--backend A|C|B --attempt LABEL`. Explicit serials prevent selecting another device.
Cache receipts retain commands, dependency locks, source bindings and binary hashes.
The A build uses the frozen worker's development gnark replacement and its existing key.

Six scenarios, altered statements/proofs, truncated/trailing proofs and an invalid
witness gate measurement. Every fresh proof verifies before sample admission.
Each backend then measures one fresh-process first proof, two warmups and five warm
standard Transfer requests. Proof identity and completed gate evidence are checked.
This compact screen does not estimate p95 or cold-tail latency.

Request clocks run on the device and include local pipe IPC, checked witness
construction/solving, proving and response encoding. First-proof time also includes
process startup and checked initialization. Artifact hashing happens beforehand and
can warm the OS file cache; these are not cold-storage measurements. ADB transport
duration is recorded separately. Verification occurs outside proving clocks.

Memory admission conservatively requires desktop RSS plus approximately1GiB of
headroom (A1.7GiB/C2.2GiB/B3.5GiB). Recheck before each backend. A skipped admission
is a policy outcome, not an observed Android OOM or proof failure. The supervisor
stops its process group below1GiB MemAvailable or at severe thermal status.
RSS covers the worker process tree, including B's solver and arithmetic children,
and excludes the supervisor. Missing RSS/thermal readings remain explicitly unknown.
No user applications are closed and no personal phone files are accessed.

All raw samples, proofs, resource records and failures stay in ignored cache paths.
Production dependencies, circuits and acceptance paths are untouched. No production
release-gated prover suite or formal certification is implied by the harness tests.
