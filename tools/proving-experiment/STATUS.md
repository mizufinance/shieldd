# Transfer proving experiment status

**The circuit, checked-loader and same-key polynomial round is complete. The broader optimization campaign remains active.**

The [latest measured report](../../docs/research/transfer-proving-optimized.md) and [compact checkpoint](checkpoints/2026-09-14-optimized/README.md) preserve the matched `cache/desktop-optimized` session. The prior `desktop-selected` and `desktop-final` sessions remain immutable; do not pool their samples.

| Candidate | Warm median | First proof | Warm peak RSS |
|---|---:|---:|---:|
| Improved Groth16 | 1.7924 s | 22.1028 s | 0.650 GiB |
| Improved ZK-Pari377 | 2.3268 s | 59.2497 s | 2.272 GiB |
| Native affine Pari381 | 2.7550 s | 25.8318 s | 3.617 GiB |

M4 Pro, two workers, standard regulated Transfer, three warmups and five measured warm proofs plus one fresh-process first proof per candidate. All 18 measured proofs and nine warmups verify with unique proof bytes. The guard exits zero without swap or competing heavy jobs. Fresh process does not mean a flushed OS page cache. No p95, confidence interval, phone, validator throughput or payment TPS claim follows.

## Completed gates

A/B share the selected-before-DH circuit: 155,122 original R1CS rows; B has 226,578 converted rows and domain 262,144. Three eligible audit tiers select authenticated keys before DH; sender-core issuer detection remains unconditional. C's full affine circuit has 220,009 rows and 220,029 columns, domain 262,144. Separate development keys remain in the cache.

B integrates deterministic checked G1 decoding, prepared public columns and checked coset quotient computation with combined gnark377 arithmetic. C combines its full affine relation, prepared public columns/coset powers and prepared blst arithmetic. The original-domain relation checks, masks, public statements, key association and canonical decoding remain checked.

All selected workers passed six full API scenarios and altered/truncated/trailing proof, changed statement and invalid-witness negatives. Complete original/converted assignment checks, DH parity and malformed-key gates passed. C passed 41 release unit tests; B passed 11 release bin tests and 11 example tests. Selected Go worker tests passed. The native Cargo identity collision was reproduced and rejected; corrected controls use unique package identities, circuit digests and executable hashes. Production release-gated prover suites and formal certification were not run.

## Completed native lifetime follow-up

The [matched C lifetime diagnostic](../../docs/research/native-pari-lifetimes.md) reduces warm peak RSS from3.425 to1.278 GiB while median warm time remains2.75 s. The old A/B/C matrix above is immutable. Six normal-worker Transfer/negative gates, all16 diagnostic proofs and42 release unit tests pass. No allocation instrumentation is enabled in the timing comparison. Converter last-use reclamation preserves the exact relation and existing key; earlier request cleanup is included in full API wall time.

## Completed B subset domain follow-up

The [complete subset377 worker](../../docs/research/pari-subset-proving.md) passes twelve release tests, six real solved-assignment proof gates and six logical-witness full-API gates. Its fresh setup, distinct key codec and transcript bind M229376/N262144; complete real/padding row checks precede coset quotient construction. Statement outlining, masks, canonical decoding and deterministic subgroup checks remain enforced.

Matched two-worker diagnostic: 3 warmups + 5 warm samples and one fresh-process first proof per variant; 18 unique proofs all verify. Warm median 2.306158→2.186758 s (5.18% improvement), first observation59.591334→53.121948 s, warmRSS2.301→2.202 GiB, package168B unchanged. Zero swap/competition, guard exit0. Sources/raw evidence: `checkpoints/2026-09-14-subset-proving`; exact run `cache/b-subset-desktop`. Retain the candidate. This is a targeted B result, not a new matched A/B/C matrix.

## Next bounded work

Implement/evaluate the fair corresponding gnark Groth16 subset control using the same selected-DH circuit, starting with M196608/N262144. Its setup Lagrange weights, vanishing query and actual coset-N quotient must change consistently; wire-indexed A/B/K queries do not automatically shrink. Preserve gnark's proof path and checked verifier; no Arkworks substitution. A single justified domain and short full-API diagnostic suffice; no grid or corpus restart. Evaluate native C applicability after this control, then select final A/B/C winners for one compact session.

Continue according to the [authorized campaign](../../docs/research/zkpari-optimization-campaign.md). Component screens and unavailable phones do not complete the campaign.

Physical iPhone/Android measurements remain unavailable from the recorded device check. Desktop ARM is not phone evidence. Actual devices and build/signing access remain prerequisites.

The older `tools/zkpari-spike` campaign and `complete-shieldd-proof-spike` automation stay stopped/paused. Its two 4,096-proof corpora and completed one-worker results are preserved. Do not resume that excluded verification campaign. Formal work stays in shieldd-security.
