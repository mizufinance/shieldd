# B377 structured-subset polynomial screen

**Proceed to complete experimental setup/prover/verifier integration.** The actual six-assignment polynomial screen adds about20–25 ms per request. This leaves plausible room for shorter group operations, but no full-proof speedup has been measured.

| Scenario | Current subgroup polynomial work (ms) | Subset polynomial work (ms) | Added time (ms) |
|---|---:|---:|---:|
| transfer | 209.042 | 229.725 | 20.682 |
| transfer_unregulated | 211.160 | 232.286 | 21.126 |
| transfer_flagged | 209.785 | 232.597 | 22.812 |
| transfer_accumulating | 209.653 | 234.370 | 24.717 |
| transfer_over_limit_disclosure | 213.445 | 233.202 | 19.757 |
| transfer_accumulator_continuation | 213.264 | 234.653 | 21.388 |

Two workers, three warmups and five measured samples per scenario/variant in balanced order:96 total samples. Each variant checks every real and padded row, interpolates A/B, derives witness A from prepared public columns, computes the unmasked quotient on the full shifted N-point coset, expands the complete vanishing-polynomial masks and constructs both opening polynomials. No MSM, setup, verifier, witness decoding/solving/bridge or full-proof request is timed. Fixed nonzero masks and a fixed off-domain challenge are polynomial diagnostic inputs, not proof randomness.

## Domain and correctness

N262144, s32768, M229376. Exclude roots with indices1mod8, retaining increasing original-root order. The full outlined Transfer has226578rows and214084witness wires, leaving2798padding rows in D. Interpolation places row values times ZS on retained H points, zero on S, then performs an N-IFFT and exact division by ZS. The quotient uses three N-point coset transforms and pointwise inverse ZD; coefficients above the M-2 bound must vanish. The independent2N product/division oracle is used only outside timing.

All six real solved Transfer assignments pass original/converted validation, all retained-row interpolation comparisons, prepared/private-column equality, exact quotient coefficients against the independent oracle, complete masked polynomial identities and both opening coefficient/degree checks. First/last real row and first/last padding mutations reject. Five release example tests pass, including small-domain retained/excluded-root Lagrange reconstruction, every small-domain row mutation, degree/interpolation identities and malformed sizes. A standalone coset quotient still requires the preceding complete row-satisfaction check; this screen does not define a production acceptance path.

Public-column preparation is41.955 ms for the current domain and51.420 ms for the subset; dense storage16→14 MiB. Domain metadata preparation is negligible in this run. Current-domain interpolation/quotient/mask time is consistent with the earlier~145 ms component; this screen additionally includes both opening polynomials. It does not time the older synthetic2N quotient as the control.

## Next gate and limits

The degree bounds remove32768Q bases,32768A-opening bases and65536R-opening bases:131072 of1,262,666 non-mask bases (about10.4%). This is a count reduction, not a guaranteed arithmetic or full-API gain. Encoded proof group-element count stays unchanged. No subset key or proof has been generated, and no changed verifier has been implemented.

Next use an explicit checked domain descriptor and distinct development key encoding bound into the transcript; implement setup Lagrange weights, all vanishing masks and succinct public-input reconstruction consistently. Preserve the deterministic checked loader and combined resident MSM. Require six full proofs, exact relation obligations and all domain/key/statement/encoding negatives before a short matched complete-API measurement. Reject if gain is below3%, within observed paired noise, or initialization/memory tradeoffs undermine the benefit. Evaluate the applicable same-circuit gnark Groth16 domain control before claiming an intrinsic advantage; do not substitute Arkworks Groth16.

The guard completed without swap or competing heavy jobs. No production release-gated suite, phone, batch-verification or network-throughput measurement ran.

- [Raw screen](../../tools/proving-experiment/cache/b-subset-actual.json).
- [Source/assignment/binary identities](../../tools/proving-experiment/cache/b-subset-actual-source/identity.json).
- [Compact checkpoint](../../tools/proving-experiment/checkpoints/2026-09-14-subset-cost/README.md).
