# BLS12-377 ARM64 dedicated squaring screen

Reject the adapted dedicated six-limb kernel: median **15.224742→17.288137ns per square**, **13.55% slower** than the current gnark-crypto0.20.1 ARM64 assembly route. All16timed outputs match. No MSM or full-prover integration is justified by this candidate.

| Method | Median ns/square | Five measured observations, ns/square |
| --- | ---: | --- |
| Current assembly Square | 15.224742 | 15.291047, 15.223995, 15.184697, 15.224742, 15.343133 |
| Adapted dedicated Square | 17.288137 | 17.423268, 17.143703, 17.288137, 17.247439, 17.353913 |

This is the outer BLS12-377 base field, six64-bit Montgomery limbs. The selected gnark ARM64 wrapper calls general multiplication for Square; G1 point formulas use that operation, including doubling and mixed addition. Both selected Groth16 and Pari377 use this gnark arithmetic, so a future improvement must be applied fairly. Four-limb scalar-field squaring and native Pari381/blst are distinct paths; no result transfers to them automatically.

The isolated kernel adapts only the dedicated square body from the pinned ZPrize mobile harness revision6ae651b7b1664b81e7dac19c4a038eb014e93237. It preserves the modulus, Montgomery representation and carry schedule, uses the current fp.Element type, and performs an unconditional final subtraction and mask selection. The shared module cache and selected production/development backends are unchanged. Upstream and current assembly source hashes, license, Go dependencies and compiled worker identity are retained.

Two focused tests pass. All5231canonical inputs match an independent big-integer Montgomery oracle and current assembly, preserving the distinct input and supporting aliased output. Inputs cover zero, one, modulus-minus-one/two, all377power-of-two transitions with adjacent values, and4096deterministic random canonical raw limb arrays. Every case also passes a64-square in-place chain. The initial test compilation failed because its Montgomery constant assertion attempted compile-time uint64 overflow; using a runtime word fixes that assertion without changing the kernel or expected modular arithmetic. The failed log is retained.

M4 Pro, Go1.25.7, GOMAXPROCS2. The primitive loop is single-threaded, with three warmups and five measurements per method in alternating order. Each sample performs256dependent passes over5231inputs (1,339,136 squares) through matching indirect-call loops. Input copying, equality, hashing and disposal are outside timing. These synthetic primitive inputs are not Transfer proofs or captured MSM points. Five samples do not support p95 or strong confidence claims. Guards report zero swap and no competing heavy jobs.

No real proof or release-gated prover suite ran for this screen. It rejects this available dedicated Go kernel, not every possible handwritten assembly implementation. A new assembly proposal would need its own correctness and cost evidence; no full-proof speedup is inferred from instruction counts. Other worthwhile campaign avenues remain active.

[Compact raw evidence](../../tools/proving-experiment/checkpoints/2026-09-14-square377/README.md) · [Experiment source](../../tools/proving-experiment/candidates/square377/square.go).
