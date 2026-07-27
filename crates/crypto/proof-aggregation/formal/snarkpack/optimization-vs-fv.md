# SnarkPack optimization headroom versus the FV layers

## Bottom line

S1 is enough to make the **abstract SnarkPack verifier specification** a stable
soundness target. It proves that acceptance by `Ipp.FsAccepts`, under the named
KZG structured-key, pairing-commitment, Groth16, and random-oracle assumptions
and the theorem's positive quantitative fork premise, implies every constituent
Groth16 PPE (`Ipp.S1.s1_soundness`). Consequently, an
optimization whose semantics are proved to leave the transcript and
`Ipp.FsAccepts` unchanged does not need a new SnarkPack soundness proof.

That is a substantial optimization unlock, but it is conditional: S1 does not
prove that the executed Rust before or after a change implements `Ipp.FsAccepts`.
`formal-handoff.md` explicitly leaves faithfulness of `gipa.rs`, `tipa`, and
`groth16_aggregation.rs` at abstract-trace/refinement evidence until S2. Thus
“preserves the S1 equations” is a proof obligation, not a conclusion supplied
by S1. S2 is the layer that can turn an optimized Rust function into a
machine-checked refinement of those equations. S3 is then needed when the
optimization changes the implementation of field, curve, MSM, Miller-loop, or
final-exponentiation arithmetic rather than merely reorganizing calls to those
operations.

The practical answer is therefore asymmetric:

- S1 already covers the largest **algebraic design surface**. Exact fold, MSM,
  KZG, and PPE rewrites can reuse its soundness theorem.
- S1 alone does not cover the largest **executed implementation surface**. S2
  is the high-leverage next layer for aggressive Rust changes.
- Several of the largest primitive-level wins, and the measured verifier
  deserialization hotspot, live below or outside S1. They require S3 or a
  neighboring serialization/subgroup-validation proof, not another proof of
  the aggregation algebra.

## The exact S1 optimization contract

The reusable contract is best stated as an implication. If an optimized path
is shown to:

1. produce the same typed statement and proof objects;
2. make the same five Fiat–Shamir queries with the same stage, context, nonce,
   message bytes, dependency order, and accepted field values;
3. satisfy the same `LeafData` equations, KZG accept predicates, randomizer
   restrictions, and final PPE in `Ipp.FsAccepts`; and
4. preserve the named cryptographic and query-bound premises of
   `Ipp.S1.s1_soundness`,

then S1 applies unchanged. In that precise sense, a proved S1-model-preserving
optimization is proved soundness-preserving. Neither byte equality on a test
corpus nor an informal algebra argument establishes all four items for arbitrary
executions.

The model fixes more than a high-level paper sketch:

- `Ipp.Gipa.foldMsg` fixes the half ordering and equation
  `s • upper + lower`; `foldCom` fixes `c • L + Com + c⁻¹ • R`.
- `ipm_foldMsg`, `commitV_foldMsg`, and the accepting-tree extraction fix the
  cross terms and commitment folding.
- `foldKey_transcriptCoeffs` identifies the iterated key fold with an MSM at the
  transcript coefficients.
- `Ipp.Kzg.transcript_prod_form_eval` identifies coefficient and product-form
  evaluation.
- `Ipp.FsGame.terminalFold`, `terminalR`, `LeafData`, and `FsAccepts` fix the
  five terminal equations, two KZG accepts, transcript reversal, and Groth16
  PPE.
- `Ipp.ChallengeEncoding` and the FS development fix the challenge constructors,
  chaining, rejection discipline, and quantitative bad-event/forking argument.

This structure is enough to avoid redoing the cryptographic soundness argument
for exact algebraic rewrites. It is deliberately not a model of limbs,
coordinates, serialization, subgroup checks, allocation, cache ownership,
Rayon scheduling, arkworks MSM, or pairing implementation.

## What S1 already unlocks

### Exact GIPA fold and rescale reorganization

The prover hot loop in `groth16_aggregation.rs::prove_tipp_mipp_gipa_profiled`
folds `A`, weighted `B`, `C`, the public power vector, and both commitment keys
every round through `fold_points_profiled`/`fold_scalars_profiled`. The generic
counterpart is `gipa.rs::rescale_fold`. The verifier folds five commitment
accumulators in `verify_tipp_mipp` through `fold_output`; the generic path is
`gipa.rs::_compute_recursive_challenges`.

The following are S1-spec-preserving designs:

- fuse, tile, vectorize, or parallelize independent element folds;
- do folds in place or use a different buffer layout;
- replace repeated scalar-multiply-and-add loops by an exact MSM or a batched
  group operation;
- calculate all verifier round challenges first and defer the accumulator folds,
  because the current round preimage contains the prior raw challenge and that
  round's left/right commitment objects, not the running folded accumulator;
- combine the deferred GT folds into one multi-exponentiation per final
  accumulator, as proposed in the optimization playbook.

These preserve `foldMsg`, `foldCom`, and `terminalFold` if their final group
elements are identical. Deferring verifier folds is especially well supported:
`derive_round_challenge` does not read `com_a`, `com_b`, `com_t`, `com_c`, or
`com_z`. It removes repeated standalone GT exponentiation schedules without
changing the challenge stream.

S1 is the sufficient **soundness specification** for these changes. For a
machine-checked claim about the executed code, S2 must additionally prove that
each optimized branch refines the same fold; S3 must discharge the MSM/group
operation premise if a new arithmetic kernel is introduced.

### MSM and final-key reorganization

`gipa.rs::_compute_final_commitment_keys` already demonstrates the pattern: it
replaced a sequential scalar-multiply/add fold with `msm_keys`.
`Ipp.foldKey_transcriptCoeffs` proves exactly the algebraic target, and the S2
plan names the Rust-to-model theorem for both key sides. The same reasoning
applies to:

- `MultiexponentiationInnerProduct` for `agg_c`;
- the G1 `com_z` lane and structured scalar at the GIPA leaf;
- `fold_public_inputs`'s `g_ic` calculation;
- the two KZG opening MSMs in
  `tipa::prove_commitment_key_kzg_opening_with_affine_profiled`;
- repeated-base or padding-aware scalar coalescing.

If the result remains `Ipp.msm` of the same coefficients and bases, S1 needs no
change. It does not, however, prove arkworks' Pippenger/window implementation;
the current handoff has a separate assumption that arkworks MSM computes the
intended linear combination. A verified replacement MSM is an S3 deliverable.

### KZG coefficient, evaluation, quotient, and precompute reuse

The prover currently materializes transcript coefficients, constructs a dense
polynomial, evaluates the product form, divides by `(X-z)`, pads the quotient,
and performs an MSM. Exact alternatives include synthetic division, streaming
coefficient generation, shared power tables, reuse between the `v` and `w`
openings where inputs coincide, and cache/reuse of immutable affine SRS data.

S1 fixes the transcript coefficients and accepted KZG equation, and
`transcript_prod_form_eval` proves the coefficient/product-form identity. This
makes these verified-spec-preserving optimizations so long as the same
polynomial, evaluation, opening, and final key result. S2 is needed to show the
actual indexing—especially the Rust zero interleaving at odd coefficient
indices—matches that model. S3 is needed for a guarantee about a new field or
MSM backend.

### Exact PPE-form rewrites

The live `verify_ppe` optimization is the canonical S1-level example:

```text
e(alpha * r_sum, beta) = e(alpha, beta) * r_sum
```

in the repository's additive-GT notation, with prepared `-gamma` and `-delta`
tables reused for the other two terms. This is a consequence of the bilinear map
modeled by S1 and leaves the final PPE in `FsAccepts` identical. Other exact
rewrites—reusing prepared fixed points, changing Miller-loop accumulation order,
or sharing immutable precomputes—are likewise soundness-spec-preserving when
they compute the same GT value.

The boundary matters: replacing several independent equality checks by one
random linear combination is not an exact PPE-form rewrite. It changes a
conjunction into a probabilistic batch check and adds a new failure event. The
intra-proof and cross-family final-exponentiation fusion candidates therefore
need a new batching lemma/security bound (and likely an extension above S1), not
merely an appeal to bilinearity.

### Pairing commitments and padding-aware coalescing

`initial_commitments_profiled` computes `com_a`, `com_b`, and `com_c` as pairing
inner products. For repeated padding rows, equal message bases can be coalesced
by adding their SRS keys (or equal SRS bases by adding scalars) before pairing.
More generally, pairing terms may be regrouped by bilinearity provided each
commitment GT element is unchanged. S1 consumes those commitments through exact
equations and pairing-commitment binding, so it permits this algebraic
coalescing. The win is shape-dependent and applies only to the duplicated
initial tail; later folds do not preserve that duplication.

### Challenge-stream scheduling, but not challenge-stream changes

S1 permits scheduling changes around the stream: preallocate encodings, cache
the exact serialization of immutable objects, overlap independent work, or
derive the sequential challenges before doing verifier folds. It does not permit
changing stage labels, field decoding/rejection, message order, round order,
dependency edges, or transcript bytes while claiming the old theorem. Even if a
new stream appears cryptographically reasonable, it is a different FS game and
must re-establish challenge correspondence and the S1 bad-event/forking
premises. The playbook correctly classifies that as a protocol change, not a
category-1 optimization.

## Where S1 is not enough

### S2: proving that optimized Rust still denotes the S1 model

S2 is the missing refinement bridge for the proof-relevant hot paths. Its plan
targets `fold_output`, both `rescale_fold` branches, final commitment-key
recombination, KZG coefficient/product helpers and opening equations, transcript
reversal, public-input folding, `verify_ppe`, and the full aggregate verifier.
This is precisely where bugs from half ordering, inverse selection, iterator
order, reversal, vector lengths, mutation, result propagation, or parallel
branch drift occur. S1 abstracts all of those bugs into a correct equation.

Examples that need S2 for a machine-checked implementation claim include:

- changing AoS/SoA layouts or mutating fold buffers in place;
- replacing nested iterators by chunked/parallel traversals;
- hoisting powers or inverses and reusing them across stages;
- changing coefficient construction or quotient code;
- deferring the five verifier accumulators and recombining them later;
- caching prepared values while proving that the cache key and represented
  mathematical object are unchanged;
- preserving failure behavior for nonzero inversions, length mismatches, and
  pairing failures.

S2 remains parametric over lawful field/group/pairing operations and carries an
explicit MSM-conformance premise. It therefore proves orchestration equality,
not arkworks arithmetic. Also, the current Tier-1 plan is verifier-heavy. A
machine-checked safety claim for the largest prover loop
`prove_tipp_mipp_gipa_profiled`, initial commitment construction, or KZG opening
construction would require extending the S2 extraction inventory to those
executed prover functions.

### S3: swapping or deeply optimizing arithmetic kernels

The following high-impact changes are below the S1 abstraction and need S3 (or
an equivalently strong verified backend artifact):

- replacing arkworks' Montgomery field backend, limb width, reduction, carry
  code, or assembly with a faster implementation;
- a new windowed/Pippenger/fixed-base MSM, GLV scalar multiplication, batch
  normalization, or projective/affine formula implementation;
- batched inversion when the guarantee sought includes the concrete field
  multiplication/inversion code and its zero/failure cases (the batch-to-
  pointwise algebra can be proved above S3, but the primitive implementation
  still needs S3);
- changing Fq2/Fq6/Fq12 representations, sparse multiplication, cyclotomic
  squaring, line evaluation, Miller-loop scheduling, prepared-point format, or
  final-exponentiation addition chains;
- torus/cyclotomic GT representations used internally.

S3's proposed `Field377`, `Curve377`, and `Pairing377` packages align directly
with these changes. S1 only sees a `Field`, modules, an abstract `msm` sum, and a
bilinear map; it cannot distinguish a correct Pippenger or final-exponentiation
chain from a faulty one.

Representation changes split by boundary. A vector layout or affine-value cache
that preserves the same abstract points is principally S2. A new limb,
coordinate, extension-field, or prepared-pairing representation is S3. A wire
encoding or canonical deserializer is neither silently covered by S2 Tier 1 nor
by the S3 arithmetic plan: `s3-arithmetic-plan.md` explicitly keeps canonical
serialization as a separate ledger row.

### The measured verifier hotspot is outside S1

The optimization playbook records `deserialize_ms`, not pairings, as the current
number-one verifier hotspot. `AggregateProof::deserialize_compressed` validates
every encoded element. The proof contains four top-level GT elements and eight
GT elements per GIPA round, hence `4 + 8μ` GT elements for `n = 2^μ`, each
currently receiving a full subgroup validation.

Batched GT subgroup validation could replace many exponentiations with one or a
few randomized checks. This is not protected by S1: its `GT` type already is the
intended group, so malformed encodings and off-subgroup Fq12 values do not exist
in the model. It is also not discharged by the current S2 Tier-1 plan, and the S3
plan does not bundle canonical serialization. It needs a separate verified
decode/subgroup-validation boundary plus a cryptographic batching theorem using
the actual BLS12-377 cofactor factorization, fresh verifier randomness, complete
element coverage, and an explicit error bound. Byte stability alone is
irrelevant to the acceptance-strength change.

## Cost ranking and FV mapping

No benchmark or Rust toolchain was run for this analysis. The ranking combines
the repository's recorded profiling conclusions with operation counts from the
executed loops; it is not a claim of measured percentages on production
hardware.

### Prover / aggregate builder

For `n = 2^μ`, the code structure gives the following approximate work:

- Initial `com_a/com_b/com_c` plus `ip_ab`: `4n` pairing terms and four final
  exponentiations.
- Each GIPA round constructs left and right commitments, each containing four
  pairing inner products. Summed over geometrically shrinking rounds this is
  `8n - 8` pairing terms and `8μ` final exponentiations.
- The five group-valued GIPA fold lanes perform about `5(n-1)` scalar
  multiplications in total; weighted `B`, shifted `ck_2`, and `agg_c` add more
  linear-size group work.
- The two KZG openings each MSM over roughly `2n-1` coefficients, about `4n-2`
  MSM terms total, in addition to coefficient and quotient field arithmetic.

This makes pairing commitment construction—Miller loops plus the unusually
large count of separate final exponentiations—the strongest likely prover
dominant. GIPA curve folds and the two KZG MSMs are the next tier and may become
dominant after pairing improvements or on different hardware.

| Prover opportunity | Likely leverage | Required FV guarantee |
| --- | --- | --- |
| Exact padding coalescing, pairing-term regrouping, prepared-SRS reuse | High when padding or preparation is material; S1-visible algebra | S1 for the equation; S2 for executed prover refinement; S3 for a changed pairing kernel |
| Faster Miller loop/final exponentiation/extension field backend | Potentially highest primitive-wide win | S3, consumed through S2; S1 remains unchanged |
| Reorganize/parallelize GIPA folds and round commitments | High at large `n`, but allocation-regime dependent | S1 equation + expanded prover-side S2; S3 only for new kernels |
| Faster KZG opening MSM, fixed-base SRS tables, synthetic quotient | High/medium and linear in `n`; memory/hardware dependent | S1 KZG model + prover-side S2; S3 for verified MSM/field backend |
| Batch inversions/power reuse | Usually lower; only `O(μ)` transcript inversions in current design | S2 for exact orchestration; S3 for concrete backend guarantee |

### Verifier

The current ranking starts with the repository's measured result, then the core
operation count:

1. **Deserialization and GT subgroup validation.** Measured number-one hotspot;
   `4 + 8μ` GT validations. This is a serialization/subgroup layer adjacent to
   S3, not S1/S2 Tier 1.
2. **GIPA GT folding.** Four GT accumulators each take two exponentiations per
   round, about `8μ` GT exponentiations; the fifth accumulator is G1. Exact fold
   deferral/multi-exponentiation is an S1-preserving design, S2 implementation
   theorem, and S3 MSM/GT-kernel premise.
3. **Fixed pairing checks.** Two two-pair KZG checks, four one-pair base checks,
   and the optimized two-pair PPE currently cause seven separate final
   exponentiations, largely independent of `n`. Exact prepared-value reuse is
   S1/S2; a faster final-exponentiation implementation is S3. Randomized fusion
   of checks needs an added batching soundness proof as well as S2/S3.
4. **Public-input folding, transcript polynomials, hashes, and inversions.** These
   are smaller unless public-input arity is unexpectedly large; the playbook has
   already judged transcript batch inversion and MSM-ifying `g_ic` below its
   end-to-end bar.

The verifier therefore has important headroom on both sides of the boundary:
the best currently measured opportunity is outside S1, while the large-`n` GT
fold opportunity is exactly the sort of algebra-preserving rewrite that S1
makes safe at the specification level.

## Recommendation

Treat S1 as the stable soundness specification and prioritize S2 next: it is the
shortest path to turning S1's broad algebraic leeway into machine-checked safety
for aggressive Rust rewrites, especially deferred verifier GT folds, fold/layout
changes, KZG construction, and PPE equivalence. Extend S2 to the combined prover
hot loop before claiming verified prover optimization. Do not launch S3 as one
monolithic campaign; run profile-driven `Field377`/MSM/pairing spikes and pursue
the package whose end-to-end A/B result pays, while separately specifying
canonical decode and GT subgroup validation because the measured verifier
hotspot is not covered by the current S3 plan. In short: S1 already unlocks the
largest algebraic optimization surface, but maximizing safely verified
prover-plus-verifier compute argues for S2 first and targeted S3/serialization
work immediately behind it. Confidence: **high** on the FV boundaries and
operation-count ranking, **medium** on the ordering of prover sub-hotspots and
post-deserialization verifier sub-hotspots because no production benchmark
samples were available or run here.
