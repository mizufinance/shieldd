# SnarkPack Formal Optimization Research

Date: 2026-08-13
Branch: `codex/snarkpack-formal-optimization`
Base: `dev` at `436c346ba2d3d8560d4e35967d90585ccc684f7a`

Update 2026-08-15: the later v2-descendant review deliberately supersedes the
original exact-v1 scope restriction. Stable v1 remains byte-for-byte unchanged;
new work is isolated behind an explicit torus-v2 wrapper domain.

## Conclusion

Use formal verification as the admissibility check for optimization, not as a
post-hoc review step. Candidate search and benchmarking may be heuristic, but a
shipping exact-v1 candidate should carry three machine-checked claims:

1. it returns the same typed values and failures as the production core;
2. it preserves proof bytes, challenge calls, acceptance, and wire consumption;
3. its operation vector matches the production kernel and improves the declared
   dimensions.

The ranked source of truth is the
[operation register](operation-reduction-register.md). It now names the
production sites found in this pass instead of leaving duplicate arithmetic as
an abstract opportunity. The first pass should remain exact-v1. Randomized
equation batching changes the acceptance relation and belongs after the exact
kernel opportunities have been measured.

## Evidence from the shipping path

The previous count-48 Criterion milestone already established end-to-end
improvements of 24.33–40.27% for aggregation and 51.96–52.62% for verification;
see the [optimization playbook](../../optimization-playbook.md#count-48-milestone).
Those results show that exact algebraic substitutions can matter materially.
They do not identify the next cost center.

A release-mode diagnostic sample on the committed 48-proof Transfer corpus was
therefore taken on this branch. The standard one-thread-per-batch policy was
unchanged. SRS construction happened outside `backend_aggregate_ms`; the sample
was not a Criterion comparison and is only stage-selection evidence. Nested
stages must not be added together.

| Stage | Time | Share of backend aggregate |
| --- | ---: | ---: |
| Backend aggregate | 884.35 ms | 100.0% |
| Pairing Miller loops | 316.60 ms | 35.8% |
| Pairing operand preparation | 168.30 ms | 19.0% |
| Pairing final exponentiation | 83.94 ms | 9.5% |
| GIPA total | 618.66 ms | 70.0% |
| GIPA left and right commitments | 437.05 ms | 49.4% |
| KZG MSMs | 30.21 ms | 3.4% |
| KZG coefficient, evaluation, and quotient work | 0.024 ms | <0.01% |

Verification in the same sample took 58.47 ms: 23.73 ms in strict
deserialization and 34.71 ms in TIPP/MIPP verification. The decoder share is
large enough to investigate its G1/G2 subgroup kernels. By contrast, streaming
KZG coefficients remains mathematically clean but is not the first measured
count-48 cost center.

## Concrete findings

### Repeated pairing preparation

[`prover_round_commitment_adapter_core`](../../src/ipp/ip_proofs/src/applications/groth16_aggregation.rs)
computes four independent pairing products. Within each commitment, `a` is
used twice, `b` is used twice, and `ck_v` is used twice. The current
[`PairingInnerProduct`](../../src/ipp/inner_products/src/lib.rs) normalizes and
prepares both operands on every call.

The values cannot be merged: each pairing output enters the round transcript or
leaf equations independently. The operands can be normalized and prepared once
and then reused by four independent Miller-loop/final-exponentiation calls.
This is an exact substitution with a simple product-by-product equality proof.
The register records the full recurrence and the required ordered-error theorem
under `E5-SHARED-PAIRING-PREPARATION`.

Batching the easy part of several final exponentiations is a related but
separate experiment. A Montgomery batch inverse can replace several extension
field inversions while recovering every final-exponentiation output exactly.
It also adds multiplications, so this is a cost trade rather than componentwise
dominance and should be benchmarked only after its exact per-output theorem is
closed. Multiplying equations together without recovering each output is not
an exact replacement because transcript inputs would change.

### Verifier challenge and fold schedule

[`verify_tipp_mipp_challenge_prefix_core`](../../src/ipp/ip_proofs/src/applications/groth16_aggregation.rs)
derives each raw round challenge, immediately inverts it, and folds `com_z`.
Only the raw challenge and round commitments feed the next transcript query.
Consequently, arithmetic inversions and `com_z` folding can be deferred without
deferring or changing transcript derivation.

Two details are load-bearing:

- check zero immediately in historical round order, even if the actual inverse
  is deferred, so the first failure remains identical;
- derive the final bridge and KZG challenge before testing the randomizer, as
  the current core does.

After these checks, the round challenges and randomizer can use one exact batch
inverse. The chronological `com_z` recurrence can be flattened into a G1 MSM
using the same scalar sequence as the existing four GT folds. The register
keeps these as separate candidates so their cost and benchmark effects remain
attributable.

### Public-input projection

[`fold_public_inputs_core`](../../src/ipp/ip_proofs/src/applications/groth16_aggregation.rs)
computes the terminal power for the geometric sum and separately materializes
the same row powers. One streamed recurrence can fold each row and retain the
terminal power. The `r = 1` path can fold rows directly. This preserves the
existing geometric-sum expression and removes duplicate scalar-field
multiplications without introducing a division/addition trade. The function is
already inside the production extraction graph, making it a low-risk first
source-refinement exercise.

### Strict G1/G2 decoding

Arkworks 0.5 BLS12-377 does not override the short-Weierstrass default subgroup
test, so accepted-wire G1 and G2 points are checked by multiplication with the
prime subgroup order. The repository already has concrete BLS12-377 field,
curve, endomorphism, order, and subgroup models, plus the successful fast-GT
membership pattern from the prior pass.

The safe route is to derive BLS12-377-specific G1 and G2 predicates from the
curve parameters, then prove each predicate equivalent to `[r]P = 0` for every
on-curve point. Do not copy a BLS12-381 relation: the seed sign, twist, and
endomorphism eigenvalues must be derived for BLS12-377. Decoder refinement must
also preserve canonical encoding, full consumption, identity policy, and the
externally observed failure class. Literature confirms that endomorphisms can
accelerate subgroup membership on pairing-friendly curves, but the concrete
relation and whether it wins here remain local proof and benchmark questions
([El Housni, Guillevic, 2022](https://eprint.iacr.org/2022/352.pdf),
[Fuentes-Castañeda et al., 2022](https://eprint.iacr.org/2022/348.pdf)).

### KZG even-polynomial quotient

The current KZG polynomial has only even powers. Writing it as `P(X)=Q(X²)`
gives an exact quotient construction from a dense quotient in `Y=X²`, followed
by multiplication by `X+z`. That removes zero interleaving and redundant
synthetic-division work. It is a good small algebraic theorem and remains in the
register, but the diagnostic sample measured the entire coefficient/evaluation/
quotient stage below 0.01% of aggregate time. It should move forward only if a
larger-count profile changes that conclusion or if it materially simplifies
the code.

## Verification architecture

### 1. Cost-carrying semantics

Extend the existing `Ipp.Cost` work from handwritten protocol recurrences to
the shipping pure cores. Each registered effect should have a counting
interpreter that returns its normal result and an operation vector. Prove the
counter recurrence from the same extracted core used for semantic refinement.
Calibrated timings may rank verified candidates, but they must not replace the
vector with a single hardware score.

This pass added missing vector dimensions for pairing normalization,
preparation, scalar decomposition, endomorphisms, and Frobenius maps. Backend
field/curve expansion remains open until a concrete kernel is registered;
unknown work is never recorded as zero.

### 2. Three proof layers

| Layer | Purpose | Existing route |
| --- | --- | --- |
| Algebra | Prove fold, pairing, polynomial, subgroup, and batch-inverse equalities | Lean `Ipp` models |
| Source refinement | Bind the exact Rust values, traces, assertions, and failures to the algebraic model | Aeneas and hax/F* extraction of pure cores |
| Backend conformance | Bind normalization, preparation, MSM, pairing, and decode kernels to values and counts | Arkworks parity roots plus a concrete extracted or translation-validated kernel |

[Aeneas](https://arxiv.org/abs/2206.07185) is well matched to the repository's
safe, ownership-oriented pure cores because it translates Rust into functional
models while avoiding most memory reasoning. [hax](https://github.com/cryspen/hax)
provides a second source route into F*, Lean, or Rocq. Neither should be asked
to model Rayon scheduling or unsafe assembly directly; isolate the mathematical
kernel and verify the deterministic join/failure projection around it.

### 3. Proof-guided search

For algebraic and straight-line kernels, candidate generation need not be
trusted. An e-graph, addition-chain search, superoptimizer, or randomized search
may propose a faster expression; Lean accepts it only after proving functional
equivalence and the declared cost vector. This mirrors
[CryptOpt](https://arxiv.org/abs/2211.10665), which combines randomized assembly
search with a verified Coq equivalence checker, and the
[Jasmin/EasyCrypt “last mile” approach](https://arxiv.org/abs/1904.04606), which
uses equivalence proofs while progressively optimizing down to vectorized
assembly.

That approach is appropriate for BLS12-377 Fr/Fq/Fq2/Fq12 kernels only after
profiling still points below the Rust-level pairing and fold substitutions.
Replacing Arkworks with FFI or generated assembly expands the trusted boundary,
side-channel obligations, portability work, and build surface. It should not be
the opening move merely because verified superoptimization exists.

## Execution gates

Take exactly one operation-register candidate per implementation tranche.
Before production code changes, add:

1. a baseline/candidate parity test covering values and every relevant failure;
2. the algebraic equality theorem and operation-count statement;
3. the source extraction root or explicit temporary conformance obligation.

Then implement the smallest kernel, regenerate extraction evidence, and run the
focused Rust and formal gates. Only after semantic and count closure should the
candidate receive count-48 end-to-end Criterion A/B measurements across all
three families. Larger power-of-two and padded workloads are required when the
candidate's recurrence depends on `n`, `mu`, or the padding gap.

Acceptance requires unchanged proof bytes and challenge traces for exact-v1,
unchanged malformed-input behavior, a registered cost vector, and a measured
shipping improvement or a material simplification. Delete the candidate path
if it loses; do not retain a second production implementation as a compatibility
surface.

## Exclusions for this pass

- No transcript, proof shape, statement, or protocol-version change.
- No randomized subgroup or pairing-equation batching until an independent
  randomness model and total error bound are proved. SnarkPack itself discusses
  randomized compression of pairing checks, but that is a soundness trade, not
  an exact scheduler rewrite ([SnarkPack paper](https://eprint.iacr.org/2021/529.pdf)).
- No SRS ceremony or authentication change. Prepared-SRS caching is a workload
  concern and was only 0.38 ms in the diagnostic sample.
- No claim that formal equality implies a wall-clock win. Pairing literature
  treats Miller loops and final exponentiation as separate cost centers
  ([Scott et al., 2008](https://eprint.iacr.org/2008/490)); cache behavior,
  parallelism, and backend instruction selection still require measurement.

## E5 implementation checkpoint

The first implementation tranche shares normalization and prepared operands
across the four independent pairing products in each combined TIPP/MIPP round
commitment. It prepares the three unique G1 vectors and two unique G2 vectors
once, while retaining four Miller loops and four final exponentiations.

For `n = 2^mu`, Lean proves exact savings of `mu` G1 normalization batches,
`2*mu` G2 normalization batches, `n-1` normalized/prepared G1 elements, and
`2*(n-1)` normalized/prepared G2 elements. The semantic theorem proves the
ordered four-product tuple unchanged under the explicit prepared-pairing
backend law. Rust parity tests additionally exercise BLS12-377 values, exact
per-call counters, and every shape-error position.

An isolated count-48 Criterion A/B retained all earlier optimizations and
changed only E5. Median aggregation time decreased from 393.75 ms to 388.43 ms
for Transfer (-1.35%), from 395.01 ms to 390.74 ms for NoteReshape (-1.08%),
and from 394.64 ms to 387.73 ms for ICS20 (-1.75%). Criterion classified
Transfer and ICS20 as improvements; NoteReshape's statistically lower interval
remained inside its configured practical-noise threshold.

`lake build +Ipp.Optimization` completed single-threaded after the pinned cache
was restored. Focused Rust tests and the committed exact-v1 byte/transcript
fixtures and the pinned Hax/F* gate passed. Prover-gated, release-gated, and full slow suites have not
yet run at that checkpoint. E5 remained open until the prepared backend law,
source-to-cost binding, and final gates described below were registered.

## Completed candidate pass

The full register was evaluated after the initial E5 checkpoint. The generated
register is authoritative for final status; this section records the empirical
and design evidence behind those decisions.

### E1: shared four-lane GT digit schedule

The shipping verifier now decomposes the common `1+2*mu` scalar list once and
applies the identical signed-window schedule to all four GT lanes. Independent
Arkworks MSM calls remain a test oracle only. Lean proves both each flattened
recurrence and the four-lane product, then proves exactly `3*(1+2*mu)` fewer
scalar decompositions with every lane operation carried as an unchanged
arbitrary backend cost.

An isolated count-48 Criterion A/B improved Transfer by 1.00%, NoteReshape by
0.82%, and ICS20 by 0.66%; every confidence interval was below zero. The
attempt to extend the same buckets to the G1 `com_z` lane was rejected under
E11 because it replaced Arkworks GLV multiplication with a different
curve-add/double schedule rather than strictly reducing the registered kernel.

### E4: even-polynomial KZG quotient

Lean proves the even-polynomial quotient construction exactly and its modeled
field vector is strictly smaller. Two production layouts were benchmarked,
including an allocation-free in-place version. The affected stage was already
below 0.01% of aggregation, and the candidate regressed Transfer by 0.34% and
NoteReshape by 0.83% while ICS20 was statistically flat. The production code
and temporary benchmark seam were deleted; the theorem remains as a recorded
negative result.

### E8: one verifier challenge inversion (rejected)

The standalone Montgomery batch-inversion kernel is exact: Lean proves every
recovered value equals its independent inverse, and the modeled trade is from
`mu+1` inversions to one inversion plus `3*mu` multiplications. Its isolated
count-48 verifier experiment improved all three families by 0.27–0.56%.

The production integration nevertheless failed the stronger proof obligation.
Moving the inversions after the historical zero checks changed the extracted
`TippMippEffect` from ordered per-stage inversion effects into checks plus one
later batch effect. That invalidated the load-bearing `VerifyTippMipp`
refinement and its downstream accepted-run projections. Closing that gap needs
a redesign of the effect/refinement proof stack, not merely the already-proved
algebraic kernel. The production helper, effect-interface changes, and test
were therefore deleted; historical independent inversions remain shipping,
and the standalone theorem is retained only as research evidence.

### E9: streamed public-input fold

One power recurrence now supplies both row coefficients and the terminal
`r^k`; the `r=1` path folds directly. Lean proves every coefficient, terminal
power, and exact `k-1` multiplication saving. Rust parity covers 45 shape and
scalar combinations plus malformed inputs. Count-48 aggregation improved by
0.93% for Transfer and 0.81% for ICS20; NoteReshape was inconclusive.

### E10: BLS12-377 G1/G2 subgroup relations

Arkworks 0.5 uses its generic affine double-and-add check for both groups. The
new strict decoder first uses the BLS12-377 relations `phi(P)=[-x^2]P` for G1
and `psi(P)=[x]P` for G2, with the positive seed and twist coefficients pinned
in source. Propositions 4 and 5 of
[Budroni et al., ePrint 2022/352](https://eprint.iacr.org/2022/352.pdf) motivate
the tests, but their eigenspace equivalences are no longer a formal assumption.
Lean constructs both concrete additive maps, proves the coefficient identities,
proves each fast relation implies Arkworks `[r]P=0`, and proves that the
predicate `fast relation OR scalar fallback` is exactly `[r]P=0`.

The G1 proof uses `phi^3=1`, reduces the fast relation to two-torsion with an
explicit Bezout certificate, and excludes the remaining two-torsion point in
coordinates. The G2 proof establishes `psi^6=-1`, derives annihilation by
`x^6+1`, proves that scalar coprime to the full twist cofactor, and concludes
prime-subgroup membership. Complete acceptance and first-failure-position
preservation then follow without `PublishedFastSubgroupFacts` or any equivalent
eigenspace premise.

Across `5+2*mu` G1 and three G2 sites, the pinned Arkworks double-and-add loops
remove exactly `573+132*mu` curve additions and `1197+252*mu` curve doublings.
The accepted fast path adds `11+2*mu` base-field multiplications, `8+2*mu`
endomorphism maps, and six coordinate Frobenius maps, so it is correctly
classified as a Pareto trade rather than componentwise dominance. If a fast
relation fails, the validator runs the original scalar check; the registered
worst-case bound is therefore baseline plus the fast-filter cost. Differential
tests cover identity, valid subgroup points, random cofactor-torsion points,
off-curve points, nested G1/G2 proof mutations, canonical reserialization, and
full byte consumption.

The isolated count-48 verifier A/B was:

| Family | Generic G1/G2 checks | Fast checks | Criterion change |
| --- | ---: | ---: | ---: |
| Transfer | 57.334 ms | 54.708 ms | -4.58% (`-4.95%..-4.14%`) |
| NoteReshape | 64.016 ms | 54.808 ms | -14.38% (`-16.20%..-12.61%`) |
| ICS20 | 60.219 ms | 54.546 ms | -9.42% (`-9.99%..-8.85%`) |

### Rejected probabilistic and versioned candidates

P1 is dominated for this branch by the exact deterministic E7 GT predicate.
P2 has no admissible fresh private randomness source at the deterministic
consensus verifier boundary; Fiat–Shamir batching would require a new
correlated soundness reduction. Both were rejected rather than silently adding
acceptance error.

Every V2 entry changes the protocol objective or lacks a concrete construction:
combined GT objects, two-key KZG batching, ragged folding, heterogeneous keys,
alternative accumulation, native uncompressed Groth16 batching, and recursive
accumulation all require new statements, transcripts, setup, proof formats, or
security systems. They are rejected from this in-place branch, not claimed
impossible. E6 was also rejected because it was an umbrella search label with
no falsifiable kernel or vector; future S3 kernels must be registered
individually.

The resulting production set is E1, E2, E3, E5, E7, E9, and E10. E4, E6,
E8, E11, both probabilistic candidates, every V2 candidate, and the standing
R-series anti-patterns are rejected in the authoritative register.

## V2 descendant review (2026-08-15)

This pass reopened only constructions that remain recognizably descended from
SnarkPack: Groth16 proofs are still reduced through pairing and
multi-exponentiation inner-product arguments, rather than wrapped in a folding
scheme or recursive SNARK. Each experiment had to name its new statement,
transcript, wire, setup, error term, and concrete count-48 objective.

| Candidate | Result | Evidence |
| --- | --- | --- |
| Torus-compressed GT wire | **Retain** | Exact same SnarkPack relation and transcript after decoding; explicit v2 wrapper; 47.80% smaller count-48 proof |
| Trusted-prover codec fast path | **Retain** | Removes only the redundant validation of freshly constructed aggregate output; untrusted decoding retains every G1/G2/GT and shape check |
| Cached affine-torus reconstruction | **Retain** | Reuses each coordinate square and the batch denominator inverse; Lean proves value equality with the original decoder |
| XTR/CEILIDH 1/3-size trace wire | Reject | The trace identifies Frobenius conjugates and cannot reconstruct independently committed GT leaves or multiply unrelated commitments without extra data and a changed relation |
| Karabina cyclotomic representation | Reject for wire | Eight base-field elements per GT value is larger than the retained six-element Fq6 torus coordinate |
| Projective-torus GT folds | Reject | Exact output parity, but the count-48 four-lane prototype was about 12x slower than Arkworks GT MSM |
| Terminal pairing-equation batching | Reject | Both implemented variants were slower than exact verification |
| Bounded heterogeneous multi-VK | Defer construction | Requires authenticated canonical routing and commitments to per-position VK components |
| HPA/Dory replacement | Reject | Larger recursive proof inventory, slower reference verification, and incomplete production boundary |
| Neutral/ragged padding | Reject shortcut; defer true ragged protocol | Zero padding does not remove the fixed Groth16 `alpha-beta` term; true ragged folding changes the reduction |
| Bilateral KZG batching | Reject | Exact equation multiplication permits cancellation; randomized batching repeats the losing terminal-batch trade |

### Torus-v2 wire

The retained codec applies the quadratic-torus map from the Fq12 norm-one
subgroup into one Fq6 coordinate. For `x = a + bw`, `w^2 = v`, it stores
`g = (1+a)/b`, reserves wire zero for identity, and reconstructs

`a = (g^2+v)/(g^2-v)`, `b = 2g/(g^2-v)`.

The concrete `v` is the same BLS12-377 Fq6 non-square already proved in
`Ipp.Bls12377Fq12`. Lean proves denominator non-vanishing, norm preservation,
both inverse directions, coordinate injectivity, the `b=0` split into `1` and
`-1`, exclusion of `-1` from the odd-order GT subgroup, and uniqueness of the
identity sentinel. The implementation batch-inverts all denominators and then
runs the existing exact G1/G2/GT and shape validation on the reconstructed
proof. No new acceptance error is introduced. This follows the torus-map
technique analyzed in [ePrint 2022/1162](https://eprint.iacr.org/2022/1162.pdf)
and the older compressed-pairing literature
([ePrint 2007/429](https://eprint.iacr.org/2007/429.pdf)).

The optimization review compared the codec against the production torus
implementations in
[gnark-crypto](https://github.com/Consensys/gnark-crypto/blob/master/ecc/bls12-377/internal/fptower/e12.go)
and [blstrs](https://docs.rs/blstrs/latest/src/blstrs/gt.rs.html). They use the
same Fq6 Cayley coordinate and post-decode subgroup check. The local encoder
already improves the repeated-proof case by batching all Fq6 inversions and by
giving identity a proved zero sentinel.

The exact inner wire changes from `2840 + 4736*mu` to
`1688 + 2432*mu` bytes. Including the unchanged 73-byte wrapper gives
`1761 + 2432*mu`; at count 48 (`mu=6`) this is 16,353 bytes instead of
31,329, a 14,976-byte (47.80%) reduction. A real four-item aggregate changes
from 12,385 to 6,625 bytes, exactly 288 bytes for each of its 20 GT values.

The first transfer-only count-48 release quick benchmark measured:

| Operation | v1 | torus-v2 | Change |
| --- | ---: | ---: | ---: |
| Aggregate | 382.14 ms | 408.33 ms | +6.85% |
| Verify | 53.797 ms | 55.561 ms | +3.28% |

That regression came primarily from re-validating every group element in the
prover's freshly constructed proof before compression. V1 does not perform
that redundant encoder-side pass. The optimized v2 path now relies on the same
honest-constructor invariant as v1, while the verifier continues to validate
every untrusted reconstructed group element. It also packs Fq6 coordinates
directly, preallocates the exact output, and caches each decoded square rather
than recomputing it after batch inversion. `Ipp.TorusV2Optimization` proves the
trusted-check erasure under the constructor predicate and the cached decoder's
exact value equality.

A fresh paired-shape Criterion run after those changes measured:

| Operation | v1 | optimized torus-v2 | Change |
| --- | ---: | ---: | ---: |
| Aggregate | 385.10 ms | 378.58 ms | -1.69% |
| Verify | 53.566 ms | 54.183 ms | +1.15% |

The aggregate difference is within run-to-run noise, so the supported
conclusion is parity rather than a claimed prover speedup. The remaining
verifier cost is 0.617 ms per count-48 aggregate, down from 1.764 ms in the
original run.

An exact-output projective-torus prototype then evaluated the four count-48
verifier lanes entirely in Fq6,
using inversion-free projective addition and a single final inversion per
lane. It took 3.297 s for 16 repetitions versus 275.94 ms for Arkworks GT MSM,
about 12 times slower. The experiment was deleted; torus compression remains a
wire optimization, not the verifier's internal group representation.

The alternative Fp4 tower discussed in ePrint 2022/1162 permits 1/3-size
XTR/CEILIDH traces, but a trace represents a Frobenius-conjugacy class rather
than the exact GT element. SnarkPack commits many unrelated GT leaves and later
multiplies them with independent transcript challenges, so individual traces
do not determine the required products. Adding conjugacy selectors and root
recovery would still not supply trace-of-product data and would change the
proof relation. Karabina's four-Fp2 representation is exact enough for
compressed cyclotomic squaring, but at eight base-field elements it increases
this wire over the current six-element coordinate.

### Terminal pairing batching

Two real verifier implementations combined the seven terminal pairing
equations with a 128-bit Fiat-Shamir random linear combination. The
source-weighted version used ten Miller terms and one final exponentiation; the
Miller-output-weighted version applied the weights in Fq12. Both accepted valid
proofs and rejected a valid-subgroup mutation, but their count-48 medians were
60.47 ms and 79.19 ms respectively, versus 55.56 ms for exact torus-v2.

The experiment was deleted. The formal cancellation counterexample in
`Ipp.SnarkpackV2CandidateBounds` also records why multiplying equations without
random weights cannot be an exact replacement. The randomized construction's
additional error bound does not rescue a wall-clock loser.

### HPA and Dory

[Dory](https://eprint.iacr.org/2020/1274.pdf) and
[HPA](https://eprint.iacr.org/2024/981.pdf) are relevant lineage because they
use pairing-based inner-product reductions rather than a different proof
paradigm. The audited HPA reference implementation explicitly extends RIPP and
contains a Groth16 aggregation example
([source](https://github.com/5Donghwan/HPA)). It is not a viable replacement:

- the proof carries 16 reduction GT values plus five cross-term GT values per
  round, versus SnarkPack's eight; even with torus compression this is 6,048
  versus 2,304 GT bytes per round;
- its recorded 64-element HPA verifier time is 354 ms, far above this branch's
  approximately 56 ms count-48 verifier;
- the example does not close the full public-input and fixed-key Groth16
  relation, accepts verifier RNG directly, mutates proof/SRS vectors during
  verification, contains panic assertions, and leaves key/message validation
  as a TODO.

These are construction gaps, not Rust polish. HPA remains useful research for
future Hadamard-heavy statements, but replacing the already-specialized
SnarkPack TIPP/MIPP core would enlarge both proof and security surface.

### Heterogeneous keys, ragged folding, and bilateral KZG

A bounded multi-VK descendant is plausible only if proofs are canonically
grouped into contiguous `(vk_digest, count)` routes and the transcript binds
authenticated commitments to every per-position VK component. Omitting routing
from acceptance permits direct key substitution, formally captured by
`key_independent_acceptance_not_binding`. Recomputing the key vectors instead
makes verification linear. This remains a separately specified construction,
not a partially exposed API.

Replacing repeated-final padding with identity proof points is invalid under
the existing random combination: every nonzero slot weight still contributes
the fixed Groth16 `alpha-beta` term. The formal theorem
`zero_padding_does_not_remove_fixed_term` closes that shortcut. A genuine
odd-length carry or mixed-radix GIPA may still save work, but it needs new fold,
commitment-key, transcript, KZG, and extraction proofs. E2 already removes the
dominant `3*(n-m)` padded Miller terms from v1, lowering its immediate priority.

Finally, the two KZG openings have opposite group orientation and distinct
structured-key lanes. Multiplying their verification equations is not exact:
false residuals `t` and `-t` cancel. Randomized combination would add the same
scalar/GT work that lost in terminal batching, while the entire measured KZG
MSM stage is only 3.4% of aggregation. No bilateral setup change is justified
by the available ceiling.
