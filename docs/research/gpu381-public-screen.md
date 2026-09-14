# BLS12-381 public GPU MSM screen

The public GPU path takes **1.553× native time** on the historical Transfer opening. Reject this unprepared path for native acceleration; a separate persistent-base screen remains worthwhile. No complete proof was generated.

| Method | Warm median | Warm sampled process RSS |
| --- | ---: | ---: |
| Current Commonware PreparedG1Msm, blst0.3.17 | 0.971646459s | 298,631,168B |
| Public WebGPU MSM with finite-base adapter | 1.508607000s | 1,577,992,192B |

The GPU implementation is [heliaxdev/webgpu-groth16](https://github.com/heliaxdev/webgpu-groth16/tree/a8ff121e6b5a089997fbce367eceb0ca826da898), pinned at a8ff121e6b5a089997fbce367eceb0ca826da898. It uses nam-blst0.3.15-nam.0 in a separate executable from the regular blst control. Rust1.95.0, two CPU workers, one active heavy job, M4 Pro20-core GPU. An independent adapter request with the library's identical selection options reports Apple M4 Pro/Metal; internal adapter identity is not exposed. Device limits match that probe.

The524290-point opening_r belongs to an earlier verified native Transfer proof, before the latest comparator/subset circuit. Canonical checked base decoding and proof/operand identities precede timing. One actual-output gate, three warmups and five measured calls per backend alternate order. All18outputs equal the recorded expected group element. Both workers reject a noncanonical scalar and wrong scalar count before measurement.

Each persistent request includes scalar-file read/hash, canonical decoding, arithmetic, output checking/encoding and JSON IPC. The GPU clock includes identity-base scanning, point serialization, GLV sorting/negation, upload, dispatch, readback and final folding. Bases are uploaded on every request. Native uses its prepared CPU bases. Native/GPU fresh-process component initialization measured15.619892/17.480496s, including checked base admission; this is not first-proof latency. Raw individual values remain in the JSON report and checkpoint.

Eight small independent CPU group-oracle cases pass: zero scalars, duplicates, inverse cancellation, identity points, scalar boundaries, odd count, identities only and empty input. The original public API failed the identity-point case because its mixed affine second operand assumes a finite point. A caller adapter removes identity-base terms with their corresponding scalars and handles empty/all-identity inputs. All eight cases then pass. The initial failure is retained. This scoped fix is not a general GPU-library correctness or security audit.

Preflight bounds GLV base bytes402654720, scalar-index bytes46137520, logical bucket bytes17301504 and sub-bucket bytes86507904. The conservative working allocation estimate is2659456848B, below the6GiB experiment cap and device limits. Sampled process RSS is not complete GPU-allocation telemetry. Combined guarded process-tree peak was1,947,795,456B; swap stayed zero and no competing heavy jobs appeared.

The persistent GPU proving-key path uses fixed interleaved bases and sign bits in indices, avoiding repeated base serialization/upload/conversion. That is a distinct remaining screen; this result does not reject it. Five samples support no p95 or uncertainty claim. No fresh full proof, phone measurement, production release-gated prover suite or formal certification ran.

[Compact evidence](../../tools/proving-experiment/checkpoints/2026-09-14-gpu381-public/README.md).
