# Native prepared and combined blst arithmetic

C's complete API median falls from **3.560165 s to 2.970778 s**, a **16.55%**
reduction in matched desktop measurements. This development candidate uses the
same circuit, keys, masks, transcript and encodings. It does not incorporate the
affine circuit candidate or change the frozen desktop comparison.

The current G1 wrapper rebuilds a filtered projective-point vector, converts it
to affine and encodes scalars per call. `PreparedG1Msm` prepares checked affine
bases once, records identity positions and combines contributions to the same
commitment or opening. It uses existing blst Pippenger scheduling with two workers.
No base vector is copied during a prepared call. Scalar encoding, prefix copies
and zero padding remain per-proof work and are included in API timing.

## Actual-operand diagnostic

One fresh verified complete Transfer proof captured all five actual MSM classes.
Each class received two warmups and three matched native/prepared measurements.
Commitment and opening sums then received the same small native/prepared/combined
comparison. All 80 arithmetic results exactly matched the original group outputs.
These repeated operands are arithmetic diagnostics, not independent proofs.

| Operation | Points | Current native median | Prepared median | Combined median |
|---|---:|---:|---:|---:|
| Witness | 262,141 | 0.413352 s | 0.354425 s | — |
| Masks | 2 | 0.000078 s | 0.000076 s | — |
| Quotient | 262,147 | 0.595718 s | 0.508855 s | — |
| Opening A | 262,145 | 0.590055 s | 0.511834 s | — |
| Opening R | 524,290 | 1.097807 s | 0.929815 s | — |
| Witness + quotient | 524,288 | 1.026414 s | 0.877194 s | 0.786223 s |
| Opening A + R | 786,435 | 1.705450 s | 1.459544 s | 1.364491 s |

The witness basis contains 29,441 identity entries; its scalar vector contains
79,046 zero entries. The prepared index mapping removes identities once and
retains zero scalars safely. Two release tests cover identity/zero/opposite points,
short and empty coefficient prefixes, mismatched segment shapes and parallel
agreement with ordinary group arithmetic.

The combined-group medians save 0.581149 s and justify the complete API check.
Combined preparation took 0.338566 s in the diagnostic. Prepared and combined
table sets coexist there; their approximately 133 MB each are separate diagnostic
allocations, not a deployment memory measurement.

## Complete API verification and measurements

The integration binds every prepared basis to the loaded key's slices. It checks
slice addresses/counts on each callback, compares the two mask points explicitly,
and propagates callback failures. Current and candidate share the same resident
native prover. The candidate keeps two prepared tables; the tiny mask MSM remains
ordinary. Both paths use unprofiled callbacks and include the full encoded-witness
decode, circuit construction/solving, mapping, claim construction and proof encoding.

All six scenarios passed paired-randomness complete proof-byte equality and
ordinary verification. Changed statements and truncated packages reject; the
invalid witness rejects before timing. Two warmups and five measured proofs per
backend followed, alternating order. All 26 proving calls verified. Only the six
diagnostic parity pairs intentionally share masks; all 14 warmup/measured packages
are distinct.

| Backend | Five warm values (s) | Median |
|---|---|---:|
| Current native | 3.556268, 3.559967, 3.560165, 3.562854, 3.568332 | 3.560165 s |
| Prepared combined blst | 2.971905, 2.966429, 2.970778, 2.981274, 2.951978 | **2.970778 s** |

The selected candidate tables occupy **133,253,360 bytes** and took 0.332285 s to
prepare. Existing reference prover initialization took 21.590505 s. These exclude
fresh-process launch and do not constitute an isolated first-proof measurement.
The reference projective key remains resident, so the affine tables are additional
storage rather than a replacement that can be credited as a memory reduction.

Peak process-tree RSS was 4,275,699,712 bytes with both paths sharing one process
and candidate tables resident. No per-backend RSS attribution or phone feasibility
follows. The guard exited zero with no swap or competing heavy process. Historical
B 2.423954 s and A 1.850204 s are cross-session reference values, not fresh matched
competitors in this run.

Disposition: retain prepared/combined blst as C's arithmetic control. One bounded
gnark-crypto381 comparison on these same operands is the next independent control;
do not infer its result from BLS12-377. The final selected-worker/device comparison
remains separate. No further keys or proof corpus were generated.

Raw evidence: `cache/native-prepared-msm` and `cache/native-prepared-full`, each
with typed samples, completion hash and analysis. Exact source/patch archives and
binaries: `cache/native-prepared-msm-source` and `cache/native-prepared-full-source`.
The Commonware bootstrap checks the full recorded patch against its pinned commit.

Run the release examples under the resource guard, one at a time:

```sh
cargo +1.95.0 build --release --locked --offline --manifest-path tools/proving-experiment/native/Cargo.toml --example prepared_msm_full
tools/proving-experiment/native/target/release/examples/prepared_msm_full tools/proving-experiment/cache/NEW_OUTPUT tools/proving-experiment/cache/native-tuned-full-gate/keys/native.pk tools/proving-experiment/cache/native-tuned-witnesses
```
