# Proving optimization ledger

Diagnostic samples guide implementation; they are separate from the compact final
18-proof comparison specified in the [brief](../../docs/research/zkpari-proving-experiment.md).
The default prover remains the control until an alternative passes real-circuit
correctness and a matched timing check. Desktop choices must be reconsidered on phones.

| Candidate / cost | Intervention | Evidence and disposition |
| --- | --- | --- |
| B / repeated synthesis | Associate immutable outlined matrices with checked keys; map each fresh solved assignment directly | Six real scenarios under both original and lowered keys, exact upstream assignment parity, negative relation/key/shape checks. Retained. Preparation remains charged to first use. See `cache/b-prepared-current` and `cache/b-lowered-initial-evidence`. |
| B / generic R1CS conversion | Recognize square, affine-related and constant-factor rows without witness-dependent structure | 241,626 rows including boundaries; domain 262,144 versus 524,288. Six original/lowered relation and proof gates pass. Retained. This is a conversion optimization, not a claim of halving the original Groth16 domain. |
| B / MSMs, approximately 90% of initial kernel | Direct signed-window buckets, eliminating scalar-size sorting/base copying and using half-sized signed buckets on dense quotient/opening inputs | Six focused release tests and all real Transfer diagnostic proofs pass. Median 3.288 s versus matched 3.355 s, about 2% improvement. Not retained: this small kernel gain does not justify maintaining a custom group-arithmetic path before the complete API comparison. Diagnostic code remains reproducible. |
| B / MSMs | BLS12-377 decomposition `s = a - lambda*b`, with `lambda=-q`, `a=s mod q`, `b=floor(s/q)`, `q=91893752504881257701523279626832445441`; signed windows 14/15 | Scalar identity, full-field boundaries, recoding carries, neutral/repeated/opposite bases and independent multiplication tests pass; all real diagnostic proofs verify with exact parity. Medians 3.567/3.577 s, slower than 3.355 s reference: rejected for adoption. Per-call division/base expansion costs approximately 200 ms across dense MSMs. |
| B / GLV window rounding | Window 16 covers each 127-bit component plus carry in exactly eight windows, rather than nine/ten for widths 15/14 | Ten matched real proofs pass exact parity and verification; median 3.350 s versus 3.376 s reference, less than 1% gain. The initial widths were poor choices, but per-call GLV still does not justify adoption. |
| B / reusable bases | Immutable endomorphism tables for quotient/opening key slices, with direct scalar collection | Ten real proving calls pass exact parity/verification; six focused release tests pass, including wrong-table rejection. Median 3.330 s versus 3.376 s reference (1.4% gain), with 201,327,744 reusable table bytes and 41.140 ms preparation. Rejected: the small gain does not justify the added memory. |
| B / first use | Checked key loading and prepared-relation construction | Known slow path; profile separately before the complete API comparison. No validation may be silently disabled. |
| C / full native Transfer | Compose the native components with shared variables | All six initial full proofs and negative gates passed. Initial relation 360,396 rows / 360,416 columns / domain 524,288. The complete API and later tuning evidence follow below; native gadget-level design review remains required. |
| C / repeated relation compilation | Bind immutable derived-wire mapping to the exact source circuit/layout fingerprint | 37 release tests; all six prepared assignments and source/layout mutations pass. Matched complete API 10.0279 → 7.9747 s; mapping 2.183 s → 121 ms; exact proof parity. Retained. |
| C / masked polynomial squaring | One forward/inverse transform of unmasked A on 2N, then exact mask correction, replacing generic masked multiplication on 4N | 38 release tests with independent polynomial parity and remainder rejection; matched complete API 8.0049 → 6.7566 s; quotient 1.818 s → 609 ms; exact proof parity. Retained. B already has masked quotient expansion. |
| C / initialization | Attribute checked decoding, canonical round-trip and file I/O | 72.747 s / 387 ms / 21 ms respectively. Checked decode is dominant; no validation has been disabled. Bounded loader investigation pending. |
| C / native gadgets | Count hash permutations and group rows/columns, then assess the strongest justified design change | Pending under the user's native-circuit/selective-reuse steering. Only 99 affine general products does not exclude hash or group improvements. No wider hash or group formula has been adopted yet. |

The MSM diagnostic uses the exact real standard Transfer relation/key/assignment.
Two warmup blocks and three measured blocks compare each selected alternative
against Arkworks with changing order. Masks are fresh per block and deliberately identical within a block to
require exact proof-byte parity, as well as verification. These are diagnostic
proofs, not a fresh-randomness corpus or complete witness-to-proof measurements.
JSONL records include source/lock/key/witness/executable hashes, initialization,
each MSM's elapsed/preparation times and temporary storage metadata. Guard logs
retain process-tree RSS, memory, swap, disk and competing-workload observations.

## Initial MSM result

`cache/b-msm-real-transfer-diagnostic.jsonl` contains the initial four-way screen;
its exact source is preserved in `cache/b-msm-initial-source.tar.gz`. All 20
diagnostic proofs passed verification and paired proof-byte equality. Three
measured pre-solved kernel values per alternative, in seconds:

| Alternative | Values | Median |
| --- | --- | ---: |
| Arkworks | 3.3697, 3.3552, 3.3438 | 3.3552 |
| Dense signed width 14 | 3.2878, 3.2752, 3.3118 | 3.2878 |
| GLV width 14 | 3.5659, 3.5666, 3.5711 | 3.5666 |
| GLV width 15 | 3.5906, 3.5770, 3.5745 | 3.5770 |

Checked key loading and relation preparation took 77.734 s in this process,
separately from the kernels. Peak process-tree RSS was 2,253,340,672 bytes;
minimum reclaimable memory 19,569,131,520 bytes, swap zero, no competing heavy
jobs. The default prover path is unchanged. No tail percentile or final
whole-API speedup is inferred from these three-sample diagnostics.

The targeted width-16 run is in `cache/b-msm-window16-diagnostic.jsonl`, with
`cache/b-msm-window16-source.tar.gz`. Its measured reference kernels were
3.376099, 3.357924, 3.384093 s; GLV16 kernels were 3.349719, 3.339787,
3.366883 s. All ten proofs including warmups verified and had exact paired
proof parity. Preparation still consumed approximately 196 ms across dense MSMs;
the largest per-call expanded base vector was 100,663,680 bytes. Peak process-tree
RSS was 2,338,029,568 bytes, no swap or competing heavy jobs. Checked key/relation
initialization took 78.046 s.

The final cached-base comparison is in `cache/b-msm-cached-diagnostic.jsonl`,
with `cache/b-msm-cached-source.tar.gz`. Reference kernels were 3.366343,
3.376027, 3.376779 s; cached GLV16 kernels were 3.309200, 3.349605,
3.330081 s. All ten proving calls passed exact parity and verification. Reusable
tables cost 201,327,744 bytes and 41.140 ms to prepare, separately from 78.266 s
checked key/relation initialization. Peak process-tree RSS was 2,466,611,200 bytes,
with zero swap and no competing heavy jobs. The diagnostic process retains both
reference and candidate state; this RSS is not an isolated baseline measurement.

This MSM tuning branch is closed with the reference MSM retained. Larger
per-base tables are not pursued given the memory tradeoff; their benefit is
unmeasured. Specialized scalar division could at most remove the roughly 173 ms
remaining decomposition cost in the cached variant, about 5% of this kernel. Do not
continue speculative window/table searches before finishing the full APIs and C.
The known substantial retained B change is relation lowering/preparation. This
decision is practical rather than a claim of globally optimal curve arithmetic.

## Initial full native Transfer checkpoint

All six full proofs passed, with separate fresh openings and proof randomness.
This gate includes the complete 60-field statement and shared component bindings.
Its 128-byte proofs require an additional 82-byte claim. Setup: 59.231 s offline;
checked key decode and canonical round-trip: 74.384 s after file read. These
narrow timers do not measure first-use or whole warm requests. Proving/verifying
key encodings are 126,013,243 / 6,607,945 bytes. Preserve the checkpoint's source
archive and artifact hashes before optimizing. A targeted structural/compiler
diagnostic and complete-C profile are next; do not infer a curve-only comparison
from different circuit sizes. The native boolean gadget already uses `b² = b`
and the compiler fuses its assertion into one square row.

## Prepared and quotient complete-API evidence

The native witness codec is 16,297 bytes of complete logical fields/hints, without
solved wires. Output is 218 bytes including claim and framing. Timers include
construction/solving, source checks/mapping, openings/claim, proving, encoding and
cleanup; controller wall time and every raw stage are retained. Proof verification
is outside the timer. Sources and records are frozen in
`cache/native-initial-api-checkpoint.json`, `native-prepared-api-checkpoint.json`
and `native-square-api-checkpoint.json`, with correspondingly named source archives.
Each intervention used two warmups and one matched pair; these are diagnostic
comparisons, not final samples or confidence estimates. Native all-six optimized
full proofs and the final 18-proof matrix remain after gadget/initialization work.

The compiler folds additions, constant multiplication and fused squares already.
Its 103,775 materialized squares plus 246,284 general-product rows dominate the
current relation. Only 99 general products are affine-related, against 98,272
columns needed for the next domain boundary. Assess hash and group subcircuits
before treating that compiler inventory as a design limit. A and B retain the
shipping relation; field-independent prover/compiler ideas may transfer, while
changing B's circuit is not silently folded into the current baseline.

## Native component-guided circuit tuning

Frozen full inventory: `cache/native-component-inventory.json` and source archive.
The 120 arity-five tree hashes consumed 115,680 square rows under the narrow
sponge. The reviewed width-six/rate-five configuration uses the exact BLS12-381
field, alpha five, eight full/57 partial rounds with the reference security
margin; small arities retain width three. It changes native commitment values and
fixtures, so the complete relation and development keys were regenerated.

Constant weighted radix-four tables remove circuit doublings for fixed bases,
select all extended coordinates consistently, and keep complete Edwards addition.
Canonical scalar bits, subgroup/nonidentity boundaries and exceptional-case rules
remain. Independent Arkworks/native/variable-base boundary comparisons pass.
Selecting the audit key before multiplication removes three DH computations;
tier zero retains issuer DH for unconditional detection. Both user/issuer keys
remain authenticated subgroup points and the flag remains Boolean.

Measured structure: 360,396→232,683 rows; 360,416→232,703 columns;
524,288→262,144 domain. Hash savings 81,024 rows, fixed-base savings 26,991,
three DH savings 19,698. All 39 relevant release tests completed and the six
regenerated-key full proofs/negative cases pass. Kernel diagnostics are
3.360–3.392 s; complete API timing is pending. Source/artifact identities and
resources are in `cache/native-tuned-full-gate-checkpoint.json`.

Selective reuse: B already has prepared lowering/mapping and masked quotient
expansion. Its frozen gnark relation already uses arity-specific Poseidon377.
The selected-key DH idea could benefit gnark and Groth16 as well; the original
`DeriveSharedSecretsSpend` computes issuer and user products before selection.
Its matched-control assessment is authorized by the brief and remains to be
concluded after principal API work. A stays visible and frozen. blst381 is not
a BLS12-377 backend; no curve substitution or unsupported speed attribution is made.

## Checked proving-key loading

B's bounded decoder diagnostic uses the same 61,331,116-byte key and ordinary
checked point codec on every chunk, including canonical roundtrip and subgroup
validation. With two workers, the reference took 75.736 s and parallel chunk
decoding took 63.249 s (16.5% reduction). Complete key bytes match exactly.
Eight focused tests pass on the retained Rust 1.89 toolchain, including malformed,
truncated and non-subgroup points. The parallel decoder is selected for the
next B API build. Preserve `cache/b-parallel-key-profile.json` and guard records;
this is a diagnostic, not a fresh-process first-proof sample.

C's equivalent bounded strategy-based decoder passes a focused checked-codec
parity and invalid-encoding/identity/torsion/truncation test. Its paired same-key
profile and all-six cached-proof verification are pending. Both native loaders
use the ordinary subgroup-validating point codec; no unchecked artifact trust
shortcut is introduced.

C's checked key profile completed: 38.116 s sequential →20.190 s parallel
(47.0% reduction) on the same 66,686,335-byte key. Complete canonical key bytes
match and all six cached full proofs verify through the newly decoded key.
The focused codec test rejects malformed encodings, identity, order-three torsion
and truncation. Its API now selects bounded parallel decoding; the final API
build and proof gate preserve every required check. See
`cache/native-parallel-key-profile.json` and its resource/exit records.

## Shared gnark DH cost assessment

`cmd/sharedcost` compiles the actual current DH gadget and a selected-key form,
with the same Boolean flag, scalar decomposition, EPK computation/equivalence and
output binding. Per non-detection tier: **7,329→4,571 R1CS rows**, saving 2,758.
Three tiers suggest 8,274 rows (5.1% of the shipping 163,396); estimated 155,122
rows remain within the same 262,144 FFT domain. The tool/source/binary hashes are
in `cache/shared-dh-cost.json`. This is isolated component attribution, not a
changed full Transfer circuit or measured proving speedup.

Disposition: preserve the frozen current-A and exact-relation B comparison;
report this shared circuit opportunity explicitly. No changed gnark relation is
adopted by this experiment. A matched full-circuit Groth16/PARI control is required
if that shared relation change is pursued; it is authorized by the brief, but
would answer an additional source-circuit question. The present full-stack C
result does not isolate curve or backend effects or claim DH savings are PARI-only.

## gnark-crypto real-operand MSM probe

All five B commitment/opening classes passed exact output equality for 50 calls
(two warmups and three measured pairs per operation, two workers). Summed native
Arkworks medians: 3.0184 s; pinned gnark-crypto with complete scalar/pipe/result
boundary: 2.1202 s. This saves 29.8% of MSM time and projects B's full API at about
2.668 s versus frozen 3.5661 s. The projection is not a measured full proof and
still trails A's 1.8502 s. Five focused Rust tests and two Go tests passed.
No resource interruption or swap occurred. Largest Go MSM allocation traffic:
160.7 MB; Go peak RSS 359.4 MB; integrated proving memory remains unmeasured.

Disposition: material enough for the bounded persistent-worker full-proof trial;
not enough evidence for a stack replacement or broad Go rewrite. Retain the
native two-point mask operation if integration confirms the boundary penalty.
Require unchanged-key/relation binding, complete paired-proof parity, ordinary
verification and fresh full API measurements. Preserve
`cache/gnark-msm-probe-frozen/checkpoint.json`; see `gnark-msm-probe.md` for all
operation medians, boundary costs, initialization and limitations.

## Complete gnark arithmetic integration

Six complete paired-mask Transfer proofs match byte-for-byte and verify, with
negative statement/truncation and invalid-witness checks. Seven focused Rust tests
pass. Two warmup pairs and five fresh measured pairs give full logical-witness API
medians 3.469478 s Arkworks and 2.565229 s gnark: 26.1% less time. All 26 proving
calls verified; only the six diagnostic parity pairs intentionally share masks.
The foreign path uses profiled callbacks. Joint initialization 85.100 s includes
both Rust preparation and foreign base binding/loading; it is not isolated first
use. Peak diagnostic process-tree RSS3.005 GB; no swap/competition. Prior A1.8502 s
is cross-session. Source, binaries and raw samples are frozen in `cache/gnark-full`
and `cache/gnark-full-source`. No desktop-final artifact changed.

Disposition: retain as a successful integration diagnostic. Next assess a combined
commitment/opening MSM with immutable contiguous or segmented resident bases;
avoid per-proof base-vector copying. Do not infer that a full Go port or a stack
replacement is justified. Use an ordinary equivalent callback for final timing.

## Combined resident-base commitments/openings

Immutable Go bases now load directly into shared contiguous allocations; separate
views and combined calls share storage. No per-proof base copy or duplicate table.
Three matched arithmetic medians save 0.136329 s across commitment/opening, with
all 20 outputs equal. Full unprofiled API comparison confirms 2.577256→2.423954 s
(5.95% less time), two warmups and five samples per backend. Six paired-mask proof
packages match exactly and verify; invalid witness/statement/truncation checks pass.
Three Go tests and seven Rust tests pass. All26 proving calls verify; fresh timing
proofs are distinct. Joint initialization85.909 s, diagnostic peak RSS2.808 GB,
no swap/competition. Preserve `cache/gnark-combined-full` and its source archive.

Disposition: select combined resident-base arithmetic for the development route;
no production adoption. Prior Groth161.8502 s is cross-session. Remaining non-MSM
profiled work is only about0.34 s: even eliminating all of it projects about2.08 s,
so a broad Go scalar/FFT rewrite cannot be sold as a comfortable lead over A.
Require a credible circuit/domain cost inventory before another expensive change.

## C affine formula compiled-cost probe

Current versus complete affine/shared-square gadget rows: variable252bits
6566→5537, variable129bits3390→2849, fixed252bits2515→2256. Explicit inverse-check
variant loses (7423/3820/2882). The winning cost candidate uses validated square-a,
nonsquare-d completeness and constrained on-curve induction; Var division alone
permits0/0.162valid original/converted cases pass,9wrong outputs and6off-curve
inputs reject, plus inverse/explicit-zero-denominator boundaries. See
`native-affine-cost.md` and `cache/native-affine-cost/manifest.json`.

Projection saves12,674rows/columns (~5.45% of full C rows), still domain262144.
No full relation/key/proof or timing result was generated. Retain as a circuit
candidate pending full relation/witness-cost inventory, without a new key or
adding overlapping hinted-gadget savings. Next independent arithmetic assessment:
prepared/combined blst. No resource interruption, swap or competing heavy job.

## C prepared and combined blst

Prepared affine/index tables avoid the current per-call projective-vector copy,
normalization and base concatenation. Exact actual-operand comparison:80calls pass,
one fresh captured full proof verifies. Combined group medians save0.581149 s.
Two release tests cover identity/zero/opposite points, prefixes and mismatched
segments. Full original-circuit/key API: six paired-mask proofs identical and
verified; invalid witness/statement/truncation checks pass. Two warmups and five
fresh samples per backend establish3.560165→2.970778 s (16.55% less time), ordinary
callbacks including scalar copies/encoding and API phases. All26 calls verify.
Preparation0.332285 s and extra table133.25 MB; shared diagnostic peakRSS4.276 GB,
no swap/competition. No isolated first-proof/device measurement. Sources and raw
records in `cache/native-prepared-full`, `cache/native-prepared-full-source`.

Disposition: keep prepared/combined blst as C's arithmetic control before one
independent gnark-crypto381 actual-operand comparison. No circuit/key change or
production adoption; historicalA/B values are cross-session. See
`native-prepared-msm.md` for complete evidence and limits.

## C gnark-crypto381 disposition

**Retain prepared/combined blst for the final native candidate.** All 70 actual-operand results match the verified Transfer capture exactly. Three measured pairs per cell follow two warmups, with two workers and checked Go transport included.

| Combined operation | Prepared blst median | gnark381 boundary median |
|---|---:|---:|
| Commitment | 0.788045 s | 0.744418 s |
| Opening | 1.363612 s | 1.260663 s |

The sum saves 0.146576 s (6.81% of these operations). Applied to the earlier native 2.970778 s API median, this would be only about 4.9% overall; it is a projection, not a measured full proof. The tiny mask operation regresses through Go and remains native. Checked Go base initialization alone takes 23.167 s in this diagnostic. The extra runtime, base storage and integration are not justified by this modest projected gain for the selected comparison.

Three focused Go tests and the Rust scalar-encoding test pass. The guarded comparison exits successfully with zero swap or competing heavy jobs. Diagnostic memory includes captured operands plus separate and combined tables, so it is not isolated selected-worker memory. Full source and binary identities are frozen in `cache/gnark381-source`; raw samples, completion hashes and the resource summary are in `cache/gnark381-comparison/analysis.json`.

No circuit or key changed. The final compact comparison selects current Groth16 A, combined gnark377 ZK-Pari B, and prepared/combined blst native C. Affine/shared-square circuit changes, corrected hinted multiplication, alternative domains and Edwards MSM remain deferred research; none is represented as measured full-proving progress. Phone access remains a separate prerequisite.

## Selected persistent workers

B's combined gnark377 engine and C's prepared/combined blst engine now expose typed framed serve modes using fresh OS/thread cryptographic randomness. Preparation records include the actual checked arithmetic-base loading and resident table construction. Shipping A and the frozen `desktop-final` workers are untouched. Eight B release example tests, one C release transport test and six focused Python checks pass.

The first B gate rejected an older separate-only Go helper (`unknown base class`) before admitting any proof or benchmark sample. Its failed guard, gate and source archive are retained with the wrong-helper suffix. A reproducing binary-hash test failed, the runner was bound to the previously validated `msmworker-combined`, and that test now passes. The corrected selected six-scenario gates precede the matched final sample campaign; failed diagnostics are not measurements.

## Selected matched desktop result

Both corrected selected worker gates pass all six fresh real proofs and negatives.
The guarded `desktop-selected` session exits zero:18measured+6warmup proofs all
verify, unique bytes, no swap/competition. Warm medians A1.845549125 s,
B2.476527458 s, C3.028955958 s. First proofs A23.099059250 s, B89.805215083 s,
C26.319305708 s. Sampled warm process-tree RSS A0.610 GiB, B2.373 GiB, C2.658 GiB.
Source archive SHA a66074594cbbec2da3da82ea1bd50406308b4a8035d4511321f930c64ae6fb6d.
All owned jobs exited. Current result/plots: `docs/research/transfer-proving-selected.md`.
B/C retain their circuits and keys; no phone or verification-throughput claim.
Desktop follow-up is complete. Physical phones/build access are the remaining prerequisite.

## Reopened pass: Edwards MSM

**Keep the selected combined gnark377 implementation.** The independent Edwards route passes all 20 actual-operand equality checks but does not show a material full-proving opportunity.

The summed group medians save 0.073017 s (3.60% of these operations). Applied to the selected B 2.476527 s API result, that would project only 2.95% overall. This is arithmetic evidence, not a measured new full-proof result. Two warmups and three balanced measured pairs per group use the same verified Transfer bases/scalars; all Rust scalar encoding, IPC, Go canonical input decoding and checked output mapping are inside the boundary. No window sweep or historical-reference multiplier is used.

See `edmsm-probe.md` and source-bound `cache/edmsm-comparison/analysis.json`.
No selected implementation changed; next deterministic subgroup-check startup probe is separate.

## Reopened pass: deterministic subgroup startup check

**The deterministic short check is a promising startup optimization.** It preserves canonical field decoding and curve/subgroup membership checks in this bounded public-base experiment. No full-key loader or selected prover was changed.

| membership | 149.626 ms | 60.077 ms | 2.49× |
| checked_decode | 148.373 ms | 60.726 ms | 2.44× |

198boundary cases and81,920sample validations pass. No full-key, first-proof or warm-proving claim.
See `subgroup-startup-probe.md` and `cache/subgroup-comparison/analysis.json`.

## 2026-09-14: full selected-key Transfer gate

Isolated `candidates/selected-dh` removes 8,274 original R1CS rows in three eligible tiers, leaving 155,122 rows. Sender-core issuer detection remains unconditional. Actual B lowering:226,574 body/226,578 converted rows;214,084 mapped witness wires;262,144 FFT domain. All six complete assignments pass original/converted/mapping gates and constant/statement/constrained-witness negatives. Existing tier/EPK/scalar/detection mutations pass; nine malformed ACK/DK cases reject across regulated/unregulated/flagged scenarios. Paired compiled helper accepts24 coordinate/encoding-equivalence cases and rejects bad flag/EPK. No new setup/proof yet; this is not a proving speedup. One Rust build failed on a Vec-field API typo, corrected and rerun successfully; both logs preserved. Compact source-bound evidence: `checkpoints/2026-09-14-selected-dh`. Production release-gated suites not run.

## 2026-09-14: circuit, checked-loader and polynomial round

Completed all three full-API workers and their six-scenario proof/negative gates with new development keys. A/B selected-before-DH uses 155,122 original rows; B has 226,578 converted rows. Native C affine relation has 220,009 rows and 220,029 columns. Exact full assignment checks precede proving.

B's actual-assignment public-column/coset gate matches all quotient coefficients across six scenarios; the standard diagnostic improves 233.242→145.006 ms. Deterministic checked G1 decoding is integrated in all key slices/masks, retaining canonical/curve/subgroup checks. C's six paired-randomness full-Transfer proofs have identical bytes with prepared public/coset polynomials; the ordinary-MSM diagnostic improves 3.528304→3.320912 s. These component/API diagnostics are separate from the final combined matrix.

The matched `desktop-optimized` matrix uses three warmups and five measured warm proofs plus one fresh-process first proof per backend. All 27 proofs verify and have unique bytes. Warm medians A1.792406834 s, B2.326819375 s, C2.754955875 s; first observations22.102808833,59.249721584,25.831813 s. Warm peak RSS0.650,2.272,3.617 GiB. Guard exit0, zero swap, no competing heavy jobs. C's memory increase from prior2.658 GiB is material; investigate lifetimes before attributing it to retained polynomial preparation. These are descriptive desktop samples, not phone or network results.

C's41 release unit tests, B's11 release bin and11 release example tests, selected Go worker tests and native binary-identity regression pass. Initial native compile controls accidentally reused a same-package binary through Cargo's shared target cache; excluded reports and reproducing test are retained. Unique package names, expected relation digests/row counts and executable hashes fix control identity. Focused failed builds and corrected runs are preserved. Production release-gated suites and formal certification were not run.

Structured subset domains pass full-size synthetic identities but add polynomial cost in the measured kernel; shorter MSM/key tradeoffs remain unmeasured. The synthetic A product is not gnark's production coset-N kernel. Structured-domain proof integration and physical phones remain pending; the implemented round is complete, the broader campaign is not. Sources/raw records/resource evidence: `checkpoints/2026-09-14-optimized`; report `docs/research/transfer-proving-optimized.md`. Old verification/SnarkPack campaign remains stopped.

## 2026-09-14: native allocation lifetimes

Retain the checked lifetime changes. Instrumented full API attributes converter peak3,020,067,108→691,218,500 requested Rust bytes; early valued-circuit release reduces proving overlap905,293,864→761,114,664B. Final-use reclamation pins assertion/layout nodes and preserves deferred-square bases. Canonical rows/digest/keys and persistent prepared arithmetic stay identical.

Normal-worker six-scenario proof/negative gates and42 native release unit tests pass. Matched ordinary builds:3warmups+5warm samples per variant;16unique verified proofs; control2.752144750 s/3,677,323,264B peakRSS, candidate2.748394458 s/1,372,569,600B. RSS reduces62.67%; the0.14% median timing difference is not a claimed speedup. Requested allocation instrumentation is disabled for timing; no production release-gated suite or physical-phone test ran. Source/raw evidence `checkpoints/2026-09-14-lifetimes`; report `docs/research/native-pari-lifetimes.md`. Existing matrix remains immutable; next B377 structured-subset full-assignment cost gate remains open.

## 2026-09-14: actual B377 subset polynomial screen

One canonical M229376 domain within N262144 excludes roots1mod8. All226578outlined rows fit,214084witness wires unchanged. Five release example tests and six full-assignment coefficient/row/padding gates pass. Three warmups+five measured samples per scenario/domain yield96raw records. Standard complete polynomial cost209.042333→229.724625ms; six-scenario overhead19.757–24.717ms, including sparse vanishing masks and both openings. Quotient timing uses the current3N coset route; independent2N oracle stays outside timing. Public preparation41.955→51.420ms; public storage16→14MiB. Guard exits0 without pressure/competition.

Plausibility gate passes:131072fewerQ/A/R bases (~10.4% of non-mask bases) could outweigh the overhead, but no subset key, proof or full-API gain exists yet. Proceed to complete experimental setup/prover/verifier with bound descriptor/distinct key codec and all real-proof/domain/negative gates; apply3% measured full-API stop criterion and fair gnark Groth16 domain control. Encoded proof group-element count does not shrink. Compact source/raw evidence `checkpoints/2026-09-14-subset-cost`; report `docs/research/pari-subset-polynomial-screen.md`. Production release-gated, phone and validator measurements not run.

## 2026-09-14: complete B377 subset proving

Retain M229376/N262144. Fresh subset setup, distinct key/descriptor/transcript, actual vanishing masks/openings and reindexed public-input Lagrange evaluation pass twelve release tests, all six real solved-assignment proof gates and all six full-API negative/domain gates. Checked row validation precedes coset interpolation; deterministic full key and arithmetic-base checks remain included. No production acceptance path changed.

Targeted matched full-API comparison: five warm samples per variant after three warmups; one first proof each; eighteen distinct verified packages. Median2.306158→2.186757708s (5.17745%), first59.591334292→53.121948s, warmRSS2.300781→2.202209GiB. Key60,608,812→54,317,136B; resident arithmetic121,216,128→108,633,216B; proofpackage168B unchanged. Guard exit0, swap0, no competition. Initial offline lock pruning failure and corrected release builds/tests retained. No tail/phone/formal/production-release-suite claim. Report `docs/research/pari-subset-proving.md`; compact evidence `checkpoints/2026-09-14-subset-proving`. Next fair gnark M196608 control; existing A/B/C matrix remains immutable.

## 2026-09-14: fair gnark Groth16 subset control

Retain M196608/N262144. Actual six-assignment component screen passes interpolation, independent2N quotient and changed-row gates. Standard polynomial115.680→137.950ms; old-Z count projection433.796→344.451ms only establishes plausibility. Screen baseline defensivecopies are extra probe cost; final ordinary workers have no added baselinecopies.

Complete fresh setup changes all row Lagrange weights and the actual vanishing query; Z/H consistently filter N-bit-reversed degrees<M-1. Solver/randomizers/mainMSM scheduling, verifier and proof encoding stay unchanged. Distinct checked development key descriptor and canonical boundedFFTdomain preserve ordinary checked point decoding. Four focused tests, three worker tests, six setup proof self-tests and six full-API negative/key gates pass.

Matched full API: three warmups+five warm and one first proof each;18unique verified packages. Median1.793245584→1.722218625s (3.9608%); first22.572976084→20.809473208s; warmRSS721,141,760→640,532,480B. Key40,732,773→37,587,069B; VK540B and proofpackage436B unchanged. Guardexit0,swap0, no competition. Two source-preparation issues (read-only copied directories; overbroad text-match assertion) were corrected before validation; initial no-matching-tests invocation is excluded. No production release suite/formal/phone claim. Report `docs/research/groth16-subset-proving.md`; compact evidence `checkpoints/2026-09-14-gnark-subset`. NativeC subset is next bounded work; all previous matrices remain immutable.

## 2026-09-14: native Pari381 subset control

Retain M229376/N262144. Full220009rows/220029columns stay identical under the old-domain reference digest; relation/assignment padding, query dimensions, public columns, sparse vanishing, committed-blockBmask and both openings agree on the retained domain. New relation/key/commitment/FS namespaces and SHNCS001 package bind the experiment. Existing affine semantics/lifetime changes and checked point decoding remain.

44native release tests plus3focused prepared/domain-audit tests pass. Six real-assignment coefficient/public/original/converted gates: standard polynomial419.969→440.911ms; six-scenario overhead20.94–29.49ms;96samples. Fresh setup25.121745s, six real Transfer proof/negative/domain gates and six full API gates pass. Matched full API:3warmups+5warm+1first each;18unique verified packages. Median2.758029875→2.585016792s (6.2731%), first24.990656208→22.364763875s, warmRSS1,640,185,856→1,547,927,552B. Key66,369,503→60,078,047B; VK4,595,977B and package218B unchanged. Logical zero witness slots shrink but were already implicit; physical key savings are131072Q/A/R points. Guardexits0,swap0,no competition.

First build type/import errors were corrected before44tests; an archive-only path-normalization failure did not change runtime inputs or invalidate measurement. All compiled sources/locks/bin hashes match the pre-key snapshot; final patch checks both directions. No production release-gated/formal/phone claim. Report `docs/research/native-subset-proving.md`; evidence `checkpoints/2026-09-14-native-subset`. Next one matched selectedA/B/C round, then explicit remaining preparation/circuit/arithmetic branches; broader campaign active.
