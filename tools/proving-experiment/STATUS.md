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

## Completed native Pari381 subset follow-up

The [native subset worker](../../docs/research/native-subset-proving.md) retains the affine circuit and lifetime changes. It consistently uses M229376 for relation/assignment capacity and N262144 for FFTs; all220009rows/220029real columns fit. Rehashing the unchanged rows/layout under the old domain/namespace reproduces the frozen relation digest. Setup, both masks/public columns, openings, key lengths and new domain/transcript namespaces agree.

All44native release tests, three focused prepared/domain-audit tests, six actual polynomial/oracle gates, six fresh real-proof/negative gates and six logical-witness full-API gates pass. Matched 3warmups+5warm+1first per variant:18unique verified proofs; median2.758030→2.585017s (6.27%), first24.990656→22.364764s, warmRSS1.528→1.442GiB; package218B unchanged. Encoded key66,369,503→60,078,047B; padded zero witness slots were already implicit, so encoded savings are131072Q/A/R points, not163840points. Guards exit0, swap0, no competition. RetainC. Exact run `cache/c-subset-desktop`; compact evidence `checkpoints/2026-09-14-native-subset`.

## Completed selected subset A/B/C round

The [latest matched report](../../docs/research/transfer-proving-subset-selected.md) uses only the retained subset workers: A warm1.716633s, first20.545929s, warmRSS0.560GiB; B2.204663s,52.882439s,2.238GiB; C2.575632s,22.951463s,1.344GiB. Packages436/168/218B. Two warmups+five warm+one first per candidate, all24unique proofs verified. Full API gate identities are revalidated, guardexit0, swap0, no competing heavy jobs. Exact run `cache/desktop-subset-selected`; compact evidence `checkpoints/2026-09-14-subset-selected`.

Groth16 remains the fastest prover: Pari377 takes1.2843× its warm time and nativePari381 takes1.5004×. This completes the circuit, checked-loading, lifetime, polynomial and first single-coset domain round; it does not exhaust the broader campaign. Earlier sessions above remain immutable historical measurements, not pooled results.

## Completed prepared-key storage follow-up

The [prepared-key report](../../docs/research/pari-prepared-key.md) retains the same B subset key points, protocol, verifying key and proof package with canonical uncompressed G1 key storage. Every Rust and Go curve/subgroup/canonical check remains. Offline import proves equality of every key point. Thirteen release tests and six complete API gates pass.

Matched diagnostic: three first proofs per variant, plus three warmups and five warm proofs. All22unique proofs verify; the18paired-session proofs cross-verify under the other representation. First medians53.919482→40.921308s (24.11% reduction); warm2.195858→2.189084s, effectively unchanged. WarmRSS2.288→2.311GiB; key54,317,136→108,633,744B. One-time checked source import28.889625s, encoding0.070493s, checked output decode/equality16.627513s, with write/hash work separate. Guardexit0, no swap/competition. Exact run `cache/b-prepared-key-desktop`; evidence `checkpoints/2026-09-14-prepared-key`.

Retain the prepared storage option for development: binary `cache/b-prepared-key-source/worker`, key `cache/b-prepared-key.pk`, manifest `cache/b-prepared-key-bases`, original shared base files and Go solver/arithmetic. The final selected A/B/C round remains immutable; no new matrix is inferred or pooled.

## Next bounded work

B still spends about16s checking the same resident G1 bases again in Go and retains the corresponding Rust query vectors. Any single-owner validation/storage design must preserve a checked admission state: complete canonical/curve/subgroup validation of every point, exact key/source binding, query lengths and trusted IPC completion before accepting requests. Do not replace these with a manifest-only trust shortcut. First establish the boundary and memory benefit, then run adversarial loader/transport and full-API gates before measuring a new candidate. This ownership branch and the remaining circuit/arithmetic branches below are still open; the broader campaign is not concluded.

## Explicit remaining campaign states

- Next bounded preparation/ownership pass: B's remaining checked first-use cost and duplicate Rust/Go key/base storage; preserve source/artifact binding, canonicality and full subgroup checks. C lifetime work is complete.
- Pending circuit branch: corrected hinted scalar multiplication with subgroup/output binding, bounded congruence and zero/Decaf handling, first as a complete gadget and full Transfer count/solve gate. Give A applicable improvements before new keys.
- Pending source/compile screens: global square/bit reuse and reviewed exact-arity Anemoi/Jive, especially C. No reduced-round hash shortcut or unmeasured claim.
- Pending arithmetic feasibility: selected-path ARM64 squaring, safe SIMD/WASM MSM, bounded tables or one justified compiler setting. GPU requires a distinct curve-correct feasibility case. No broad profile grid.
- Closed/low priority on recorded evidence: EdMSM, prior GLV/windows, gnark381 hybrid and dense-scalar partition variants unless a new mechanism changes their cost case. Separate protocol/PQ/remote-proving alternatives cannot inherit this network comparison.

Continue according to the [authorized campaign](../../docs/research/zkpari-optimization-campaign.md). Phones remain pending actual device/build access; feasible desktop work continues. The older verification/SnarkPack campaign remains stopped.

Physical iPhone/Android measurements remain unavailable from the recorded device check. Desktop ARM is not phone evidence. Actual devices and build/signing access remain prerequisites.

The older `tools/zkpari-spike` campaign and `complete-shieldd-proof-spike` automation stay stopped/paused. Its two 4,096-proof corpora and completed one-worker results are preserved. Do not resume that excluded verification campaign. Formal work stays in shieldd-security.
