# Safe WebAssembly BLS12-377 MSM screen

Reject this path as a native desktop acceleration candidate. One real Transfer opening took **0.826505s with gnark versus2.959737s with WebAssembly**, a **3.581× time ratio**. All18opening results match the independently recorded expected group element. No new complete proof was generated.

| Method | Warm median (s) | Five warm observations (s) |
| --- | ---: | --- |
| Selected gnark arithmetic | 0.826505 | 0.818937125, 0.814049708, 0.826504833, 0.874165125, 0.829894250 |
| Safe Wasm batched-affine MSM | 2.959737 | 2.925206417, 2.959737292, 2.932653166, 3.006934292, 2.987749708 |

The candidate is [montgomery](https://github.com/mitschabaude/montgomery/tree/5f6ee4ae03b67f493a714842627866221ce19383) at5f6ee4ae03b67f493a714842627866221ce19383, using its safe Parallel.msm entry point. It supports this exact BLS12-377 curve and uses the main thread plus one worker. Its upstream documentation explicitly does not promise constant-time execution; safe additions address exceptional group cases, not timing leakage. No production adoption conclusion follows.

The immutable524290-point opening_r comes from an earlier genuinely verified selected-DH Transfer proof. It is not the latest comparator/subset circuit. Existing proof, key, witness, base, scalar and expected-output hashes are checked before use. The existing hash-pinned gnark helper checks all supplied bases canonically, on-curve and in-subgroup before Wasm import. Its shared admission across the five historical base classes took17.023173s and is separately recorded. That is not a candidate-only setup cost or complete proving initialization.

M4 Pro, Node26.3.0 and Go1.25.7, two compute workers per backend and one active MSM at a time. One correctness call per backend precedes three warmups and five measured calls in alternating order. Both receive identical canonical big-endian scalar bytes. Native IPC and checked scalar decoding are inside its clock. Wasm checks scalar bounds, reverses/copies bytes, imports the scalar representation, executes safe MSM, normalizes and encodes the output inside its clock. Both output paths include the same checked canonical/curve/subgroup result validation. Expected-result comparison and sample recording are outside timing. This arithmetic screen excludes witness solving and cannot be presented as complete proving time.

Library import/dynamic compilation plus worker setup took0.165301s; point allocation/conversion took0.057571s after admission. Upstream reserves4GiB field plus1GiB scalar linear memory. This5GiB reservation differs from physical resident memory: sampled combined Node+Go process-tree peak was2.898GiB; largest recorded Wasm-host RSS was2.484GiB. The latter includes the adapter/corpus/runtime. Both workers remain resident during the paired run, so combined RSS is not a per-backend memory comparison. Resource guards show zero swap and no competing heavy jobs.

Before the real opening, six small independent gnark oracle cases pass: zero/max scalars, repeated points, inverse cancellation, identity points, scalar limb boundaries and odd input count. The first adapter attempt incorrectly allocated inputs only on the main thread, allowing worker scratch allocation to overlap them. Reserving through Parallel.getPointer/getScalarPointer on every worker fixes this; scalar readbacks and all six cases then pass. The initial failed log is retained. No upstream arithmetic was changed, and no unsafe/random-fast MSM path was used.

The negative native result avoids another full-proof integration. It does not rank browser implementations against each other or measure phones. Five warm samples do not support p95/confidence claims. No production release-gated prover suite or formal certification ran.

[Compact evidence](../../tools/proving-experiment/checkpoints/2026-09-14-wasm-msm377/README.md) · [Adapter source](../../tools/proving-experiment/candidates/wasm-msm/screen.ts).
