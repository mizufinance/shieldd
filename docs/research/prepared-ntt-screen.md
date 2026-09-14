# Prepared native FFT screen

Cached powers reduce single-column transform time on an actual validated Transfer opening polynomial. This is a kernel result; full proving improvement is not yet measured.

| Transform | Reference median (ms) | Prepared median (ms) | Time reduction |
| --- | ---: | ---: | ---: |
| forward | 57.701084 | 35.623625 | 38.26% |
| inverse | 64.758708 | 52.212250 | 19.37% |

M4 Pro, two-worker environment; the transform itself is serial. Three warmups and five measured samples per method/direction alternate order. Every output exactly equals the unchanged Commonware implementation at N262144. Clocks include allocation, copying and transform; checks and cleanup are outside. Immutable forward/inverse tables require 8 MiB; construction took 3.451 ms. The actual polynomial has 196609 coefficients, including the mask. Original and converted witness checks and an independent polynomial oracle precede timing.

Two release tests cover random full-field vectors, zero/one/minus-one, padding, arbitrary inverse inputs, invalid dimensions and table bounds. The full-size screen passes all 32 output equalities. Guarded runs finish without resource pressure. The first executable build failed on a hash argument type, then passed after correction; no measurements came from the failed build.

Retain for prover-only integration. Reuse a plan across requests; keep verifier domain construction lightweight. Full-polynomial and seeded proof equivalence must precede complete API timing. No keys or proofs were generated in this screen, and no phone, verifier throughput or production release conclusion is made.

[Raw evidence](../../tools/proving-experiment/checkpoints/2026-09-14-prepared-ntt-screen/README.md).
