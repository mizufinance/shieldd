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

## Completed fair Groth16 subset follow-up

The [complete gnark subset control](../../docs/research/groth16-subset-proving.md) uses M196608/N262144 with unchanged selected-DH circuit, solver, randomizers, MSM scheduling and standard Groth16 verifier/proof encoding. Fresh development setup and checked key descriptor bind regenerated subset Lagrange and shorter Z queries. Four focused tests, three worker tests, six setup proof self-tests and six full-API positive/negative gates pass.

Matched two-worker diagnostic: 3 warmups + 5 warm samples and one first proof per variant; 18 unique proofs all verify. Median 1.793246→1.722219 s (3.96%), first22.572976→20.809473 s, warmRSS0.672→0.597 GiB; package436B unchanged. Proving key40,732,773→37,587,069B. Guard exits0, zero swap/competition. Retain A subset. Exact run `cache/a-subset-desktop`; sources/raw evidence `checkpoints/2026-09-14-gnark-subset`. No mixed-session A/B/C table or phone claim.

## Next bounded work

Evaluate the corresponding native Pari381 subset domain, carrying the selected affine circuit and lifetime changes. Start with M229376/N262144. Its row/assignment sizing, block commitment keys/digests, both public columns and B-side mask must remain consistent. Keep the existing native worker and commonware checkout immutable; use a separate source copy and uniquely named candidate package. Gate actual coefficient/domain/statement/mask semantics before fresh setup and full API measurements. Do not extrapolate the B arithmetic result across fields or replace C's full affine relation with a toy.

After worthwhile C work is selected or rejected on measured evidence, run one compact matched final A/B/C session with both retained A/B subset improvements and the selected C lifetime worker. Continue according to the [authorized campaign](../../docs/research/zkpari-optimization-campaign.md). Missing phones and passing component probes do not complete feasible desktop work. The older verification/SnarkPack campaign remains stopped.

Physical iPhone/Android measurements remain unavailable from the recorded device check. Desktop ARM is not phone evidence. Actual devices and build/signing access remain prerequisites.

The older `tools/zkpari-spike` campaign and `complete-shieldd-proof-spike` automation stay stopped/paused. Its two 4,096-proof corpora and completed one-worker results are preserved. Do not resume that excluded verification campaign. Formal work stays in shieldd-security.
