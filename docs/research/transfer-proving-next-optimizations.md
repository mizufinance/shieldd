# Further Transfer prover optimization

The compact desktop comparison is frozen in
[transfer-proving-results.md](transfer-proving-results.md). Its measured warm
medians are A 1.8502 s, B 3.5661 s and C 3.6630 s. The user wants a substantial
additional reduction, with small targeted diagnostics and a short final benchmark.
This work continues the optimization experiment; it does not replace its evidence
or remove the pending physical-phone phase.

## Performance requirement

The arithmetic follow-up is complete: B's combined resident gnark MSM route
measures 2.423954 s in the full API. Its preceding matched separate-MSM control
measures 2.577256 s. Preserve these later results separately from the frozen
comparison below. The [subsequent research brief](zkpari-optimization-deep-research.md)
and [static evidence](zkpari-optimization-static-evidence.json) guide the next
selection: C affine/shared-square compiled costs and prepared/combined blst first;
corrected hinted gadgets, EdMSM and mixed-radix domains retain their stated gates.
Field divisibility does not establish a valid Pari domain generalization. No
benchmark or implementation follows automatically from the research handoff.

B spends about 3.459 s in proving and 0.107 s outside it. Even free API overhead
would leave it substantially slower than Groth16. Matching A requires roughly
another 48% reduction in B's complete warm latency; a clear 30% lead over current
A would mean about 1.30 s and roughly 64% less time than B. These are illustrative
targets, not promised gains or a user-specified adoption threshold.

Focus on arithmetic implementations and proof algebra/circuit size. Do not resume
small GLV-window sweeps, report faster startup as faster warm proving, or increase
the worker count for only one competitor. Shared circuit/kernel improvements need
a matched Groth16 control if adopted.

## First bounded probe: gnark-crypto arithmetic for B

B uses gnark for witness solving and Arkworks for zk-PARI proving. The shipping
Go dependency is gnark-crypto v0.20.1; it supplies BLS12-377 MultiExp and ARM64
base/scalar field assembly. The prior custom Arkworks MSM alternatives do not
answer whether this independent arithmetic implementation is faster for B's
actual scalars and SRS slices.

Preserve all final artifacts. Export the exact real-prover commitment/opening
MSM operands from a diagnostic invocation into a new ignored, source-bound cache.
Include all MSM classes, including the largest opening, with checked canonical
curve/scalar encoding and explicit identity handling. Preload the immutable bases
in both implementations. Compare two-worker Arkworks and pinned gnark-crypto
MultiExp on the same inputs: two warmups and three paired measured calls per
distinct required operation suffice. Verify exact output group equality and
record conversion, initialization, temporary memory and worker configuration.
No regenerated 4,096-proof corpus or whole parameter sweep.

Use the full phase profile to estimate the maximum end-to-end benefit before
integrating. A kernel win must survive scalar transport/conversion and all real
proof checks. If material, test a persistent coarse-grained arithmetic boundary
with bases resident, or port the prover's hot path to Go to avoid repeated large
cross-language transfers. Do not use one foreign call per field operation.
Preserve the exact relation, masks, transcript, public binding and encoding.
Ultimately use ordinary verification and paired-mask proof equality where the
protocol permits it, then fresh-randomness end-to-end samples. If the arithmetic
gain is small, close this branch with evidence; do not force a full rewrite.

Source: local pinned dependency and
[upstream BLS12-377 MSM](https://github.com/Consensys/gnark-crypto/blob/master/ecc/bls12-377/multiexp.go).
ARM64 code existing does not establish a measured speedup over Arkworks.

## Next bounded assessments

1. **Reduce work in the large commitments/openings.** The prover computes sums
   over several SRS slices. Investigate a segmented combined MSM that shares
   bucket reduction without concatenating/copying all bases; the existing source
   specifically rejects a copying merge. Treat precomputation for immutable
   bases separately from the already-rejected cached GLV tables. Start with an
   operation-count and memory analysis; proceed only for a plausible material
   gain. Rewriting the opening proof algebra is a separate cryptographic research
   proposal, not an implementation tweak with assumed soundness.
2. **Another domain reduction through equivalent circuit design.** C currently
   uses 232,683 rows and 232,703 columns. Reaching domain 131,072 needs at least
   101,611 rows and 101,631 columns removed (about 44%). Compile-cost inventory
   must identify enough credible savings before new key generation. Assess reuse
   of genuinely shared tree-path computation, square-efficient scalar-multiplication
   constraints, redundant canonical decompositions and constant/public outlining.
   Keep private path relationships private, and bind identical reused variables.
   Do not expose transaction branches, remove dummy behavior or alter privacy to
   reduce constraints. A small row saving that stays in the same domain may still
   help witness work, but cannot be sold as halving the FFTs or dense MSMs.
3. **Native public-polynomial and scalar arithmetic costs.** Public matrices are
   fixed and this Transfer statement has one public scalar. Consider preparing
   constant/per-public-input polynomial contributions and forming them directly,
   rather than doing full public interpolation each proof. Compare actual native
   NTT/field costs with a compatible alternative only if the measured remaining
   phase is large enough. B already has prepared lowering and masked quotient
   expansion; do not credit those as new transfers from C.

These are ordered assessments, not a requirement to implement every idea. Keep
source snapshots and avoid rewriting ongoing jobs. Start the gnark-crypto probe
first; use its result and the complete profile to choose the next intervention.

## Separate routes with different implications

Accelerating on a GPU could reduce desktop latency, but requires real target
hardware, transfer-inclusive measurements, meaningful memory bounds and a matched
Groth16 hardware control. It is not evidence of phone performance. More CPU workers
also need equal resources for all candidates and do not show less total work.

Offline preparation or wallet background work can reduce time after the user
presses Send. Record that separately from total proving work and apply comparable
preparation to Groth16. Never reuse proof masks or correlated proof randomness
between independent transactions to obtain a speedup.

Changing to lookup/custom-gate or different commitment protocols may materially
change proving cost, but it is a new proof-system design with new proof/security
and network behavior to assess. It is not a free optimization to pinned zk-PARI.
The present protocol may retain a fundamental proving-work disadvantage even
after competent engineering; a faster result must be measured, not required.

Checked-key loading remains a separate first-use issue. Immutable prepared state,
authenticated artifact handling and checked arithmetic implementation can be
improved without silently bypassing validation. Phone feasibility and first-use
cost remain part of the eventual adoption decision.

## Reporting

Use an optimization ledger with costs, correctness evidence and accepted/rejected
changes. Keep the original compact result immutable; rerun only changed candidates
and the needed matched control in a new small final comparison after real gains.
Do not pool diagnostic and final samples. Do not claim the full native curve is
inherently faster or slower based on unequal circuits or arithmetic stacks.
