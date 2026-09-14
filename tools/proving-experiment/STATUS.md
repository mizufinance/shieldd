# Transfer proving experiment status

**The latest bounded desktop proving round is complete. The broader optimization campaign remains active.**

The [matched comparator report](../../docs/research/transfer-proving-comparator-selected.md) compares the isolated development implementations before the FFT follow-up below on M4Pro with two workers.

| Candidate | Warm median | First proof | Warm peak RSS |
| --- | ---: | ---: | ---: |
| A: subset Groth16/BLS12-377 | 1.709826s | 20.710457s | 0.598GiB |
| B: subset ZK-Pari377, owned arithmetic | 2.214584s | 24.732464s | 2.397GiB |
| C: native Pari381, comparator3/4 | 2.319087s | 19.898102s | 1.133GiB |

Three warmups, five measured warm requests and one fresh-process first proof per candidate; all27 timing proofs are unique and verified. The complete API includes witness decoding, solving, mapping, foreign boundaries, proving and encoding. First-process measurements do not flush OS page cache. No p95, phone acceptability, validator-throughput or payment-TPS claim follows.

A/B share154224 original R1CS rows; B has224778 converted rows and M229376/N262144. C has191516rows/191501columns and M196608/N262144. B includes the selected owned-admission improvement. All six A/B and C API scenarios and negative gates pass. B has19focused Rust tests including real-child integration; C has45native tests plus4Commonware domain/batch tests. The native WebAssembly build passes. Production release-gated prover suites and formal certification were not run.

Sources, raw evidence, plots and exact test records are preserved in `checkpoints/2026-09-14-comparator-selected`, with earlier C details in `checkpoints/2026-09-14-comparator34`. Earlier measurements below remain separate. The original SnarkPack/verification campaign remains stopped. Continue only worthwhile bounded source/compile screens; user preference is quick optimization benchmarks, not100-point grids.




## Completed safe WebAssembly MSM screen

[The real-opening comparison](../../docs/research/wasm-msm377-screen.md) rejects the safe Wasm path for native desktop acceleration: gnark0.826505s versusWasm2.959737s (3.581×time) on one historical verified524290-point377opening_r. Six independent gnark edge cases pass; all18actualMSM outputs match. Onegate+3warmups+5measured calls perbackend, scalar conversion/transport and output checks included.5GiBvirtualreservation, combinedprocess-tree peak2.898GiB, zero swap/competition. Fullbase admission and Wasm preparation are separately charged. Source/runtime/dependencies and compact evidence `checkpoints/2026-09-14-wasm-msm377` preserved. No freshproof, phone or production release suite ran.

This rejects a native acceleration candidate, not browser-only delivery against a browser baseline. Upstream variable-time behavior remains a limitation. The distinct BLS12-381 WebGPU/Metal source at a8ff121e6b5a089997fbce367eceb0ca826da898 exposes a complete G1MSM API and persistent Groth16-key buffers; inspect bounded allocation and adapter/device feasibility next. Currentnativeblst andGPU nam-blst must remain in separate binaries to avoid mixing implementations. No GPU benchmark has run yet.

## Completed six-limb ARM64 square screen

[The bounded primitive comparison](../../docs/research/arm64-square377-screen.md) rejects the adapted dedicated Go square: current gnark ARM64 assembly 15.224742ns→dedicated 17.288137ns, 13.55% slower. Two focused tests cover5231canonical cases with big-integer/assembly/alias checks and64-step chains. All16timed outputs match,3warmups+5samples each with256passes. Source, initial test compile failure, corrected tests and guard records are in `checkpoints/2026-09-14-square377`. No MSM/prover integration, real proof or production release suite ran; selected A/B/C remain unchanged.

This closes the available old dedicated Go kernel, not every possible handwritten assembly. BothA/B would need a fair shared arithmetic update if a future candidate wins. Four-limb scalar arithmetic and Cblst are separate. Next distinct avenue is a bounded source/feasibility review of safe SIMD/WASM or curve-correct localGPU MSM, charging preparation and transfer; no large sweep or original verifier campaign.

## Completed native prepared-key storage

The [full-API storage comparison](../../docs/research/native-prepared-key381.md) records first proof 19.498153834→15.382318917s (21.11% lower in single observations), warm median 2.088150209→2.103833792s (0.75% slower), and warm peak RSS 1211662336→1165770752B. Three warmups, five warm requests and one first proof per representation; all18 unique proofs verify under both workers. The stored proving key grows 51,671,551→98,612,487B; the218B API proof package stays unchanged.

Only four nonidentity query roles use checked96B storage. Full decoded-key and original canonical-byte equality, eight actual-scale malformed-key cases, two component tests, five Commonware release tests, six seeded proof equalities, six fullAPI valid/negative gates and scopedWASM all pass. Existing polynomial gates are reused because arithmetic is unchanged. Offline conversion/validation totals33.085567708s before final file writes, separately charged. Guards0, zero swap/competition. Exact run `cache/c-prepared-key381-desktop`;90-file compact evidence `checkpoints/2026-09-14-prepared-key381`.

Retain the development storage option for faster initialization when its extra46.94MB is acceptable. No warm-time gain, phone measurement, production release-gated suite or formal certification is claimed. The broader campaign remains active. The subsequent dedicated squaring screen is recorded above. Do not repeat completed FFT/key grids or restart the stopped verification campaign.

## Completed bounded parallel FFT

The [parallel FFT full-API comparison](../../docs/research/native-parallel-ntt-proving.md) reduces C2.191940291→2.110349417s warm (3.72%) against the frozen fused-inverse control. Threewarmups+fivewarm+onefirst pervariant;18uniqueverifiedproofs. First observations19.540296709→19.440820834s; warmRSS1207238656→1221246976B (13.36MiBhigher),same218Bpackage/key. These are separate paired samples, not a newA/B/Cmatrix.

The existing provingStrategy supplies two disjoint tasks perFFTstage, including the finalsingleblock; joinreturn is thebarrier. No extra pool. Threekerneltests/32exactoutputs, sixCommonwaretests, sixactualpolynomialgates, sixseededfullproofequalities, sixAPIgates andWASMpass. Guards0,swap0,nocompetition. Raw `cache/c-parallel-ntt-desktop`; compact `checkpoints/2026-09-14-parallel-ntt`. Retaincandidate.

The checked native key-storage follow-up is complete above; its startup/storage tradeoff is measured separately from this arithmetic comparison. Original verification campaign stays stopped.

## Completed fused inverse normalization

The [same-key normalization follow-up](../../docs/research/native-fused-inverse-proving.md) reduces C warm full-API proving2.235034375→2.184525083s (2.26%) relative to the frozen prepared-FFT control. Threewarmups+fivewarm+onefirst each; all18unique timing proofs verify. First observations19.776624333→19.514102667s; warmRSS1190985728→1112784896B; same218Bpackage and existingkey. No A/B/C samples are pooled.

The inverse transform omits per-butterfly halves; subset weights and prepared inverse coset powers carry exactly one inverse-N factor. Two kerneltests/all16outputequalities, five Commonware tests, six polynomialgates, six seeded fullproofequalities, six APIgates and WASMbuild pass. Guard exits0,swap0,no competition. Raw `cache/c-fused-inverse-desktop`; compact `checkpoints/2026-09-14-fused-inverse`. Retain candidate. Next bounded avenue is independent FFT butterfly work using the existing two-worker execution strategy; check actual-size kernel equality/cost before changing the prover, and add no hidden pool or worker budget.

## Completed prover-owned FFT follow-up

The [same-key native FFT comparison](../../docs/research/native-prepared-ntt-proving.md) reduces C warm full-API proving2.324596→2.236445s (3.79%). Three warmups+five warm+one first per variant; all18fresh timing proofs verify. First observations19.869731→19.483095s; warmRSS1.167→1.109GiB, package218B unchanged. These samples are separate from the A/B/C table above.

The prover owns8MiB of immutable FFT constants reused by subset interpolation and coset quotient transforms. Relation, keys, masks, verifier and generic multi-column NTT are unchanged. Five focused Commonware release tests, six actual polynomial gates, six seeded full-proof equalities, six persistent API gates and WASM build pass. Guard exits0, zero swap/competition. Exact run `cache/c-prepared-ntt-desktop`; compact evidence `checkpoints/2026-09-14-prepared-ntt`. Full snapshots remain cached; compact archives exclude only non-build Commonware documentation media. Retain this arithmetic candidate. The broader campaign remains active; no additional large measurement grid or original verification campaign was started.

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

## Completed owned arithmetic admission

The [owned-admission report](../../docs/research/pari-owned-admission.md) retains complete Rust key/subgroup and matrix association checks, then privately streams immutable validated query points into its own child. A separate bootstrap pipe must end at EOF before a nonce/key/domain/query-bound receipt allows proving; commands use an inherited Unix socket. Partial transfer and failed commands cannot be reused. Rust frees query vectors and still fully checks returned MSM points. The general Go file loader is unchanged.

All18Rust tests, six private Go tests, three general-loader tests and the explicitly run actual-child failure integration pass. Six real seeded proof bytes plus mask/WQ/AR MSM outputs exactly match the frozen protocol. Six full API gates and22fresh benchmark proofs pass;18paired-session proofs cross-verify. First medians40.877331→24.917131s (39.04% lower), warm2.204110→2.236299s (1.46% slower), warmRSS2.473→2.312GiB (6.49% lower). Required encoded key stays108,633,744B and package168B; candidate needs no109,764,812B resident-base files or their manifest. Guardexit0/swap0/no competition. Retain the desktop startup/storage tradeoff; keep the measured warm regression visible.

Exact run `cache/b-owned-desktop`; evidence `checkpoints/2026-09-14-owned-admission`. Selected owned runtime: `cache/b-owned-source/worker`, existing `cache/b-prepared-key.pk`, private `cache/b-owned-private-child`, same old Go solver/artifacts. Earlier prepared-key and matched A/B/C matrices remain immutable.

## Next bounded work

Continue the fair strict-comparator compile/solve and actual square-lowering gate for A/B, and the C M196608/N262144 domain/polynomial gate. The completed native comparator reduces the circuit enough to justify this smaller retained domain. Include the hinted gadget as a possible combined candidate after its count/solve gate. Keep every source/key/descriptor distinct and preserve the old workers.

## Completed corrected hinted-scalar screen

The [native hinted-scalar screen](../../docs/research/native-hinted-scalar-screen.md) and [algebra/call-site argument](../../docs/research/native-hinted-scalar-design.md) retain full cofactor8 output binding, bounded integer congruence and zero cases. Both primary papers were read in full; source PDF hashes are saved. The complete signed joint gadget has4827rows versus5537. Nine actual Transfer sites give213619rows/213576columns versus220009/220029; M229376/N262144 stays unchanged.

Seven release gadget/dynamic tests pass. All six existing native witness/statement identities pass original and converted checks with both unprepared and actual prepared mapping. Each run has18solves per variant plus invalid-witness and changed-statement rejection. Prepared standard checked-solve medians220.441→216.562ms; other scenarios vary, with construction/mapping broadly unchanged. This is a count/solve diagnostic, not a proving speedup. Guards exit0/swap0/no competition. No new setup, proof or production release-gated suite ran. Retain as a component and defer keys until a stronger combined circuit/domain cost case. Exact runs `cache/hinted-scalar-full` and `cache/hinted-scalar-prepared`; evidence `checkpoints/2026-09-14-hinted-scalar`.

## Explicit remaining campaign states

- Completed preparation/ownership: C lifetime cleanup; B checked compressed/uncompressed loading and private owned-child admission. Further changes require a distinct measured mechanism; do not repeat this grid.
- Completed C circuit screen: corrected hinted scalar multiplication saves2.90%rows, domains unchanged; retain component without new keys. A/B exact Decaf-representative applicability remains pending; do not substitute prime-subgroup coordinates silently.
- Completed exact-index reuse screen:184hash calls/0exact repeats,42decompositions/7repeats (663rows); no cross-component cache refactor justified. This is not a global equivalent-expression result. Native comparator now191516rows/191501columns (12.95%row reduction), with all-six original/converted/negative gates passing. A/B comparator and C3/4domain gates are next. Broader square reuse and reviewed exact-arity hash alternatives remain distinct possibilities, without reduced-round shortcuts.
- Pending arithmetic feasibility: selected-path ARM64 squaring, safe SIMD/WASM MSM, bounded tables or one justified compiler setting. GPU requires a distinct curve-correct feasibility case. No broad profile grid.
- Closed/low priority on recorded evidence: EdMSM, prior GLV/windows, gnark381 hybrid and dense-scalar partition variants unless a new mechanism changes their cost case. Separate protocol/PQ/remote-proving alternatives cannot inherit this network comparison.

Continue according to the [authorized campaign](../../docs/research/zkpari-optimization-campaign.md). Phones remain pending actual device/build access; feasible desktop work continues. The older verification/SnarkPack campaign remains stopped.

Physical iPhone/Android measurements remain unavailable from the recorded device check. Desktop ARM is not phone evidence. Actual devices and build/signing access remain prerequisites.

The older `tools/zkpari-spike` campaign and `complete-shieldd-proof-spike` automation stay stopped/paused. Its two 4,096-proof corpora and completed one-worker results are preserved. Do not resume that excluded verification campaign. Formal work stays in shieldd-security.

## Completed inclusive-comparator and exact-reuse screen

[Report](../../docs/research/native-comparator-reuse-screen.md): C220009→191516rows and220029→191501columns; M229376 currently retained, but M196608 fits. Polynomial LSB-first inclusive comparator keeps input predicates and final BoolVar assertion. Two release tests check1048small/boundary/wrong-answer cases; six full Transfer original/converted identities and invalid-witness/statement negatives pass,18prepared solves pervariant. Standard checked-solve median214.078→190.925ms; no full proving claim. Guard0/swap0/no competition. Exact reuse:184hashes/0repeats,42decompositions/7repeats663rows. Initial redacted-native-scalar diagnostic aliases were reproduced, rejected and corrected before any optimization; four identity tests pass. Sources/raw results `cache/reuse-comparator`, checkpoint `2026-09-14-comparator-reuse`. Continue A/B strict-comparator gate and C3/4domain/polynomial gate before setup.

## Completed BLS12-377 comparator screen

The [strict-comparison screen](../../docs/research/comparator377-screen.md) passes two focused Go tests, all six original/lowered/converted assignment gates and all18 wire-mutation gates. Original rows155122→154224; converted rows226578→224778. No new setup or proof measurement yet. Apply this improvement fairly to both selected A and B. The separate native comparator3/4-domain candidate is undergoing polynomial and key-boundary gates; the broader campaign remains active.

## Completed native comparator3/4 proving screen

The [bounded complete API screen](../../docs/research/native-comparator34-proving.md) improves C2.582560042→2.311950125s (10.4784%), with warmRSS16.53%lower and proving key13.99%smaller. Five balanced warm samples and three warmups per variant; all16new proofs verify. Three earlier first-proof observations were preserved and reverified, explicitly separate from the warm invocation.45focused release tests, six polynomial gates, six fresh-key proof gates and six fullAPI gates pass. WASMcheck remains pending. Fair A/B comparator sources are prepared; A is building fresh development keys. The broader campaign remains active. User preference: quick bounded screens, no100-point measurement grids.
