# S2/S3 completion work order

Date: 2026-07-15. Status: S2-19..38 and S3-01..08 complete as of 2026-07-15; the code is
the authority and the S2 task text below is retained as the execution record.
S1, GAP-00/01/04, the
finite Aeneas loop semantics, S2-01/03/07/10/11, the S2-08/09 generic equation
kernels, and S3-C01/C02/P00 are landed and are not repeated as tasks.

## S2-19..38 completion status

S2-19 through S2-38 are **DONE**. The S2-38 gate is green: hax target/source
completeness, generated-artifact freshness, extracted-directory shim scan,
named refinement-theorem presence, focused Lean builds, the named axiom audit,
one full `lake build Ipp`, and the Rust test pass all completed. S3 and GAP
tracks below remain planned work except for S3-01..05.

## S3-01..08 completion status

S3-01 through S3-08 are **DONE**. The checked scalar-modulus prime,
base-modulus prime, and Fq2 nonresidue theorems now assemble into the concrete
`Ipp.Bls12377.arithmeticFacts` value. The BLS12-377 field, curve, and pairing
foundations consume that value directly, with focused gates green under the
pinned Lean v4.30.0 toolchain and no remaining `ArithmeticFacts` premise in
the concrete path. The F01A/F01B feasibility evidence is recorded below; the
2026-07-16 F02 re-decision selects F01B and deletes the losing fiat spike.

`NOW` means every proof dependency is present and the installed Windows/WSL
toolchain is sufficient. `GATED` means a listed predecessor must land first.
`HARD (sol)` is theorem or design work; `MECHANICAL (luna)` is a bounded
refactor, extraction, fixture, certificate-data, or integration batch. Every
numbered item is capped at one Codex session. If its acceptance criterion does
not fit, split the item before implementation; do not silently enlarge it.
Lean work uses one `lake` process at a time with `LEAN_NUM_THREADS=1`.

Concrete target routing used below: S2 Rust changes stay in `gipa.rs`,
`tipa/mod.rs`, and `applications/groth16_aggregation.rs`; generated Lean stays
under `Ipp/Extracted/*Generated.lean` and handwritten theorems under the
matching `Ipp/Extracted/*.lean`. S3 certificate, field, tower, subgroup, and
implementation theorems target `Ipp/Bls12377Certificates.lean`,
`Ipp/Bls12377Field.lean`, `Ipp/Bls12377Tower.lean`,
`Ipp/Bls12377Subgroups.lean`, and `Ipp/Bls12377Conformance.lean`, respectively,
while extending `Ipp/Bls12377.lean`/`Ipp/Bls12377Pairing.lean` only for their
existing specifications. F02 pins the one production implementation beneath
`src/ipp/ip_proofs/src/bls12_377/` and deletes the losing spike. GAP pure
decoders target `Ipp/CanonicalG1Decode.lean`, `Ipp/CanonicalG2Decode.lean`, and
`Ipp/CanonicalGtDecode.lean`; executed refinements target
`Ipp/Extracted/CanonicalDecode.lean`. These paths are part of the design, not
optional suggestions.

## 2026-07-14 design decision A — S2 pairing path

**Decision: use an associated-type-free abstract pairing-effect core, called
directly by the production wrappers.** Extend the pattern already green in
`tipa::verify_commitment_key_{g1,g2}_kzg_equation`: proof-relevant verifier
records carry explicit `F`, `G1`, `G2`, and `GT` types; pure field/group code
uses ordinary type parameters; the only opaque effects are pairing/prepared
pairing calls with no associated types. The existing public `P: Pairing`
functions become thin executed delegators that construct these records and
install the arkworks effect adapter. There is one verifier core, not a formal
copy and a production copy. Hax/Aeneas extracts that core; Rust parity tests
and an invariant pin the delegators' field mapping, feature branches, and
failure-as-`false` behavior. S3 later proves that the arkworks adapters realize
the concrete BLS12-377 field/group/pairing model.

This is a deliberate hybrid of candidate 2 with a thin concrete delegation
gate. It reuses the proved generic KZG kernels, avoids the exact `Pairing`
associated-type graph that blocks Aeneas, and keeps the S2 theorem parametric.
S2-38 may therefore claim that the **executed verifier orchestration core**
refines `Ipp.FsAccepts`, conditional on the named challenge-serialization,
MSM, and pairing-adapter laws. It may retire the corresponding
`abstract-trace`/review-only orchestration evidence, but it may not retire
`arkworks field/group/pairing mathematical operation implementations`,
`arkworks MSM implementation computes intended linear combination`, the
serialization/subgroup row, or either cryptographic binding assumption.

Rejected strategies:

- **Monomorphic verifier copy:** rejected because concrete BLS12-377 names do
  not remove the arkworks trait graph inside the copied bodies, and a second
  verifier path creates a permanent parity and maintenance obligation.
- **Hand-modeled public boundary:** rejected because it would leave the
  capstone dependent on reviewed correspondence for proof-relevant operand
  construction even though the generic-kernel extraction pattern already
  works.
- **Wait for S3 and extract arkworks wholesale:** rejected because it couples
  S2 to a months-long arithmetic campaign without improving the orchestration
  theorem.

The adapter is not a claim that arkworks is correct. Its Lean interpretation
is the existing bilinear map for S2; its concrete discharge is S3-41. Each
production refactor must be logged in `hax-extraction-boundary.md`, must keep
normal and `hax_compilation` paths covered by parity tests, and must pass the
16 `ark-ip-proofs` tests before extraction proceeds.

## Track S2 — finish executed orchestration refinement (20 sessions)

**S2-19 — explicit verifier-core boundary** — `MECHANICAL (luna)` — `NOW`.
Dependencies: the landed generic KZG kernels and installed hax/Aeneas
toolchain. Refactor `tipa/mod.rs` and
`applications/groth16_aggregation.rs` to introduce
explicit-type core input records and associated-type-free pairing/prepared-
pairing effects, with the existing public `P: Pairing` functions delegating to
the core; do not duplicate the verifier. Record every field projection,
failure case, feature branch, and effect postcondition in `hax-targets.txt` and
`hax-extraction-boundary.md`. Acceptance: normal and `hax_compilation`
`ark-ip-proofs` tests pass, new adapter-parity tests cover BLS12-377 and the
existing test pairing, and no public result or trace changes. Narrows the
`local RIPP implementation maps to intended algorithm` review row to the
declared arithmetic effects; retires no arkworks assumption.

**S2-20 — KZG public-core extraction batch** — `MECHANICAL (luna)` — `GATED`
on S2-19. Move product evaluation plus each existing generic equation call
into `verify_commitment_key_{g2,g1}_kzg_opening_core`, make both public wrappers
delegate once, extract the two cores, and vendor immutable generated modules
beside `Ipp/Extracted/KzgVerifiersGenerated.lean`. Acceptance: closed scoped
extraction succeeds without any arkworks associated type, freshness checks
pass, and wrapper/core parity covers success and pairing failure. Narrows the
public-wrapper gap in `tipp-mipp.kzg-equations`.

**S2-21 — public G2 KZG composition theorem** — `HARD (sol)` — `GATED` on
S2-20 and the landed S2-07/S2-08 theorems. In
`Ipp/Extracted/KzgVerifiers.lean`, prove the extracted G2 core computes the
product-form evaluation at `z^2` and accepts exactly the `acceptV` equation,
including operand order, sign, and effect failure. Acceptance: focused build,
zero `sorry`, and axiom audit limited to standard Mathlib axioms. Retires the
remaining public-wrapper portion of `tipp-mipp.kzg-equations`; it does not
retire `assume.kzg-structured-key-binding`.

**S2-22 — public G1 KZG composition theorem** — `HARD (sol)` — `GATED` on
S2-20 and the landed S2-07/S2-09 theorems. Prove the corresponding extracted
G1 core theorem in `Ipp/Extracted/KzgVerifiers.lean`, including inverse/raw
transcript selection, `rShift`, signs, operand order, and pairing failure.
Acceptance matches S2-21. Retires the remaining G1 public-wrapper portion of
`tipp-mipp.kzg-equations`, not KZG binding.

**S2-23 — coefficient-vector bridge** — `HARD (sol)` — `NOW`. Integrate the
already generated Vec/array graph for
`tipa::polynomial_coefficients_from_transcript` and replace
`polynomial_coefficients_refinement_statement` in
`Ipp/Extracted/PolynomialCoefficients.lean` by a theorem proving exact length,
even-index `Ipp.transcriptCoeffs`, and in-range odd zeros. Acceptance: the
generated function, not a handwritten substitute, is in the theorem; focused
build and axiom audit are green. Retires the remaining coefficient-construction
part of `tipp-mipp.kzg-equations` and `tipp-mipp.power-sequence`.
Dependencies: the landed generated target and finite Aeneas loop semantics.

**S2-24 — final commitment-key core and theorem** — `HARD (sol)` — `NOW`.
Refactor `gipa::compute_final_commitment_keys` to an explicit scalar/group
core whose `hax_compilation` MSM is the ordered fold, extract it, and replace
`final_commitment_keys_refinement_statement` in
`Ipp/Extracted/FinalCommitmentKeys.lean` with the two exact
`Ipp.transcriptCoeffs` MSM equalities and `foldKey_transcriptCoeffs`
corollaries. Dependencies: the landed extraction runtime and the explicit MSM
conformance premise. Acceptance: Rust parity, generated freshness, focused
Lean build, and axiom audit. Retires final-key portions of
`gipa.round-folding`/`gipa.verifier-folding`; the arkworks MSM ledger row stays.

**S2-25 — generic base-commitment theorem** — `HARD (sol)` — `GATED` on
S2-19. Give `GIPA::_verify_base_commitment` an explicit-type core in `gipa.rs`,
extract it, and prove in a new `Ipp/Extracted/BaseCommitment.lean` that success
is exactly the three singleton commitment equations and inner product, with
all `Result` failures preserved. Acceptance: theorem consumes only declared
commitment/pairing effect laws and focused checks are green. Retires the
terminal part of `gipa.verifier-folding`; it is reused by structured-scalar
message verification even though the Groth16 combined verifier spells out
five terminal equations.

**S2-26 — public-input fold core extraction** — `MECHANICAL (luna)` — `GATED`
on S2-19. Split `fold_public_inputs` into an explicit `F,G1` indexed-loop core,
retain the public arkworks delegator, extract the core, and vendor it under
`Ipp/Extracted/Groth16VerifierGenerated.lean`. Preserve the `r = 1` branch,
empty/equal-arity preconditions, assertions, and `gamma_abc_g1` ordering.
Acceptance: normal/hax parity tests cover `r=1`, `r!=1`, one row, and multiple
rows; extraction has no `Pairing` trait. Narrows `groth16.folded-inputs`.

**S2-27 — public-input fold refinement** — `HARD (sol)` — `GATED` on S2-26.
Replace `fold_public_inputs_refinement_statement` in
`Ipp/Extracted/Groth16Verifier.lean` by the exact `rSum` and `gIC` sum theorem,
including the geometric-series branch equality. Acceptance: shape failures
are explicit preconditions, focused build and axiom audit pass. Retires the
verifier portion of `groth16.folded-inputs`; MSM/backend correctness remains
in S3.

**S2-28 — prepared-PPE core extraction** — `MECHANICAL (luna)` — `GATED` on
S2-19. Refactor optimized `verify_ppe` so a core computes `alpha_beta_rsum`,
normalizes the exact two negated G1 operands, calls a prepared-pairing effect,
and compares with `ip_ab`; make the production wrapper delegate to it and
extract the core. Keep `verify_ppe_baseline` bench-only and add a release-mode
operand/GT parity test. Acceptance: failure maps to `false`, signs and prepared
point order are pinned, and extraction avoids `Pairing` associated types.
Narrows `groth16.ppe`.

**S2-29 — prepared-PPE refinement** — `HARD (sol)` — `GATED` on S2-28 and
S2-27. Replace `verify_ppe_refinement_statement` by a theorem that the
extracted optimized core accepts exactly
`e (rSum • alpha) beta + e gIC gamma + e aggC delta = ipAb`, conditional only
on named normalization, prepared-negative, and pairing-effect laws. Acceptance:
optimized/baseline equality is a derived equation or a pinned Rust parity gate,
pairing failure is proved false, and Lean checks/audit pass. Retires the
orchestration/equation portion of `groth16.ppe`, not pairing conformance.

**S2-30 — `verify_tipp_mipp` core extraction** — `MECHANICAL (luna)` — `GATED`
on S2-19 through S2-25. Move the proof-relevant body of `verify_tipp_mipp` into
an explicit-type core using a typed challenge-effect interface; keep the
single-exit round error state, make sequential and Rayon KZG branches call the
same two cores, and extract the closed core graph. Acceptance: generated code
contains the reversed round traversal, five folds, transcript reversals, KZG
calls, and five terminal checks; no result-bearing shim or arkworks trait graph
remains. Narrows `tipp-mipp.gipa` and `tipp-mipp.base-equations`.

**S2-31 — round-state and failure theorem** — `HARD (sol)` — `GATED` on S2-30.
In `Ipp/Extracted/VerifyTippMipp.lean`, prove the finite extracted loop's state
machine: first challenge/inversion failure is terminal, later iterations are
no-ops, success emits the exact chronological raw/inverse transcript and the
same challenge trace as `Ipp.reversedView`. Acceptance: arbitrary round count,
no two-round specialization, focused build and axiom audit. Retires the
control-flow/transcript part of `tipp-mipp.gipa`.

**S2-32 — five terminal-fold invariant** — `HARD (sol)` — `GATED` on S2-31
and the landed fold-output theorem. Prove the five accumulators after the loop
are exactly the corresponding `Ipp.terminalFold` values, with raw versus
inverse challenge orientation fixed. Target:
`Ipp/Extracted/VerifyTippMipp.lean`. Acceptance: one reusable fold invariant is
instantiated for all five lanes and focused checks pass. Retires the remaining
folding part of `tipp-mipp.gipa` and covered `gipa.verifier-folding` evidence.

**S2-33 — `verify_tipp_mipp`/`LeafData` capstone** — `HARD (sol)` — `GATED`
on S2-21/22/23/31/32 and the landed structured-scalar theorem. Compose the two
KZG equations, five terminal equations, nonzero inversions, and all `Result`
branches into `run = true ↔ Ipp.LeafData stmt proof transcript`. Replace
`verify_tipp_mipp_refinement_statement`; acceptance is a green focused build,
standard-only axiom audit, and no new semantic premise beyond the declared
effects. Retires verifier portions of `tipp-mipp.gipa`,
`tipp-mipp.base-equations`, and `tipp-mipp.kzg-equations`.

**S2-34 — combined-check core extraction** — `MECHANICAL (luna)` — `GATED` on
S2-27/29/33. Extract an associated-type-free core for
`verify_combined_checks_profiled`, including nonzero power-of-two and exact
round-count rejection, result propagation, trace replay, and the common result
of sequential/Rayon scheduling. Acceptance: feature-parity tests cover both
branches and malformed counts; generated freshness passes. Narrows the
combined-verifier review row.

**S2-35 — combined-check refinement** — `HARD (sol)` — `GATED` on S2-34.
Prove the extracted core returns exactly the conjunction of `LeafData` and the
PPE equation and replays the TIPP/MIPP trace in production order. Target:
`Ipp/Extracted/Groth16Verifier.lean`. Acceptance: timings are absent from the
semantic statement, every error branch is classified, focused checks pass.
Retires the combined-check orchestration portion of the local RIPP review row.

**S2-36 — aggregate verifier capstone** — `HARD (sol)` — `GATED` on S2-35.
Extract/refine the result-bearing core of
`verify_aggregate_proof_with_trace` and prove acceptance iff
`Ipp.FsAccepts`, conditional on the already named Rust-byte/digest-to-typed-
challenge trace correspondence. Acceptance: challenge retry/nonzero guards,
fixed decoded challenges, conjunction, errors, and trace order are present;
the theorem imports the generated core. Retires the covered `abstract-trace`
evidence in the `local RIPP implementation maps to intended algorithm` row;
hash-as-RO and serializer parity remain explicit.

**S2-37 — profiled projection theorem** — `MECHANICAL (luna)` — `GATED` on
S2-36. Prove `verify_aggregate_proof_profiled_with_trace.accepted` projects the
same Boolean as S2-36 and every timing field is observational. Use one semantic
call rather than duplicate the proof. Acceptance: normal and profiled trace/
acceptance parity tests plus focused Lean check. Retires the profiled-wrapper
review-only evidence.

**S2-38 — S2 gate and ledger rewrite** — `MECHANICAL (luna)` — `GATED` on
S2-21 through S2-37. Gate target completeness, generated freshness, adapter
mapping invariants, all refinement theorems, focused/full Lean checks, and
axiom audits; then update `ripp-refinement.md`, `ripp-spec.md`, and
`formal-handoff.md`. Acceptance: S2's claim is explicitly conditional on the
challenge serializer, MSM, commitment, and pairing-adapter laws; no S3,
serialization, hash-as-RO, KZG binding, or pairing-commitment binding claim is
made. Retires the remaining scoped orchestration review evidence and narrows
the arkworks rows to the concrete S3 adapters.

## Track S3 — finish BLS12-377 arithmetic conformance (41 sessions)

### S3 design decisions

The three `ArithmeticFacts` fields are temporary proof inputs, not permanent
ledger assumptions. Finish them with small kernel-checked certificates: a
generic Pocklington-style certificate soundness theorem plus concrete data for
the two primes, and a checked modular-exponentiation certificate for `-5`.
No `native_decide`, axiom declaration, or external Boolean oracle is accepted.

Keep F01A/F01B only as bounded feasibility slices and re-scope F02: it selects
the one backend that can be proved without opaque arithmetic and used by the
whole arkworks curve/pairing stack. End-to-end performance is a veto, not an
optimization contest. F01A (generated verified Montgomery backend) is
preferred because the observed hax failures make generic arkworks internals
high-risk; F01B may win only if a monomorphic four-limb multiplication theorem
actually closes. F02 deletes the losing spike and all later steps target the
single selected `Field377` facade.

Curve point-count equalities and optimal-ate bilinearity are mathematical
boundaries, not Rust implementation claims. The plan proves every arithmetic
consequence from exact named statements, but retains a cited, reviewer-signed
curve-order parameter row and the existing published-pairing row rather than
pretending Mathlib contains SEA/divisor theory. Everything executable on
either side of those statements remains a conformance target.

**S3-01 — checked primality-certificate kernel** — `HARD (sol)` — `NOW`.
Dependencies: none beyond pinned Mathlib. Create
`Ipp/Bls12377Certificates.lean` with a compact Pocklington certificate
record and prove its checker sound for `Nat.Prime`, reusing Mathlib modular
arithmetic and recursively checked small factors. Acceptance: a deliberately
corrupt certificate is rejected, the soundness theorem has no project axiom,
and the module meets focused resource limits. Narrows the certificate portion
of `arkworks field/group/pairing mathematical operation implementations`.

**S3-02 — scalar-modulus prime certificate** — `MECHANICAL (luna)` — `GATED`
on S3-01. Add generated certificate data for `scalarModulus` and prove
`scalarModulus.Prime` by the checker. Acceptance: all factors/witnesses are
literal reviewed data, checker reduction stays within one focused build, and
the theorem is axiom-audited. Discharges `ArithmeticFacts.scalarPrime`.

**S3-03 — base-modulus prime certificate** — `MECHANICAL (luna)` — `GATED` on
S3-01. Add the independent certificate tree for `baseModulus` and prove
`baseModulus.Prime`. Acceptance matches S3-02 and the certificate is split
into named subcertificates if its olean exceeds the package budget. Discharges
`ArithmeticFacts.basePrime`.

**S3-04 — Fq2 nonresidue certificate** — `HARD (sol)` — `GATED` on S3-03.
Prove a generic Euler-criterion/modular-power certificate lemma, check the
concrete exponentiation for `-5`, and derive
`∀ x : Fq, x^2 ≠ -5`. Target `Ipp/Bls12377Certificates.lean`. Acceptance:
kernel-checked concrete residue, focused build, and axiom audit. Discharges
`ArithmeticFacts.fq2Nonresidue`.

**S3-05 — concrete arithmetic-facts gate** — `MECHANICAL (luna)` — `GATED` on
S3-02/03/04. Define the concrete `arithmeticFacts` value, remove downstream
ad-hoc `ArithmeticFacts` parameters where a concrete BLS12-377 theorem is
intended, and gate `Bls12377`/`Bls12377Pairing` focused builds. Acceptance:
all field/curve foundations instantiate without a named certificate premise.
Retires the certificate slice of the arkworks arithmetic assumption.

**S3-06 — F01A verified-backend feasibility slice** — `HARD (sol)` — `GATED`
on S3-05. In a disposable, clearly named Rust module, generate a verified
Montgomery backend for both moduli and close one end-to-end Fq multiplication
decode theorem plus arkworks-facade construction/parity vectors. Acceptance:
no opaque carry/reduction result, safe Rust build, and a measured end-to-end
prover/verify run within the recorded regression budget. This is evidence for
F02, not ledger retirement.

**2026-07-15 S3-06 result (feasibility evidence only).** Generated safe Rust
word-by-word Montgomery backends for both moduli with the official published
fiat-crypto JavaScript generator `v0.1.6-115-g3c5114cb1` (commit
`3c5114cb11cdc1da781583543d5b42cf7c838d25`; artifact SHA-256
`4c05afbf01098b4e4e154e82d8358629f6e54b9bab386c56a655e2ba24adf3f0`),
using `--lang Rust --inline` under WSL. The disposable integration-test facade at
`src/ipp/ip_proofs/tests/bls12_377_fiat_spike.rs` passed encode/decode, add,
mul, and square parity against arkworks for 36 edge pairs plus 512 deterministic
random pairs per field. `Ipp.Bls12377.FiatAdapter.fq_fiat_mul_decodes_to_zmod_mul`
composes the explicitly transcribed fiat multiplication postcondition with the
S3-F00 decode relation; the postcondition remains fiat's proof boundary, not a
theorem about Rust established here. Focused and full single-threaded `Ipp`
builds passed; the axiom audit lists only `propext` and `Quot.sound`.
The disposable Rust/generated files and fiat-only adapter were deleted by the
2026-07-16 F02 re-decision; this paragraph and commit `ada36ceeb` retain the
historical feasibility and benchmark evidence.

Release medians on Windows MSVC, rustc 1.89.0, AMD Ryzen 7 3700X (nine samples,
200,000 operations/sample) were: Fq add 9.10 ns fiat / 2.44 ns arkworks (3.73x),
mul 63.66 / 38.73 (1.64x), square 61.24 / 40.76 (1.50x); Fr add 7.58 / 2.13
(3.55x), mul 28.71 / 17.74 (1.62x), square 27.50 / 19.78 (1.39x). The
deterministic SnarkPack corpus was not run because replacing arkworks fields
through the curve/pairing stack is invasive and outside this bounded slice.
Verdict: F01A is feasible enough to remain preferred for S3-08, subject to a
whole-stack facade/prover performance veto and a reviewed reproducible path
from fiat's Coq proof artifact to the exact vendored Rust outputs. This does not
retire any ledger row.

**S3-07 — F01B monomorphic arkworks feasibility slice** — `HARD (sol)` —
`GATED` on S3-05 and S2-19's extraction discipline. Extract one concrete Fq
four-limb multiply/reduce wrapper and prove range preservation plus
`decode (mul a b)=decode a*decode b`. Acceptance: the theorem covers the
executed carry/reduction closure with no unsafe/assembly/result assumption; a
mere wrapper theorem fails the session. This is evidence for F02 only.

**2026-07-15 S3-07 result (negative feasibility evidence).** The task's
"four-limb Fq" description does not match the pinned implementation:
BLS12-377 `Fq` is `Fp384<MontBackend<FqConfig, 6>>`, with six 64-bit limbs
(`Fr` is the four-limb field). The Windows x86_64 build has the ark-ff `asm`
feature available but does not enable the BMI2/ADX target features, so Fq
multiplication executes the safe-Rust no-carry CIOS branch. A disposable
six-limb monomorphic copy spells out `mul -> round x6 -> mac`, followed by
`subtract_modulus -> geq_modulus/sbb`; parity against real arkworks Fq passed
36 edge pairs and 512 deterministic random pairs. Scoped WSL hax/Charon/Aeneas
extraction from `crate::s3_07_arkworks_fq_spike::mul` produced a closed graph
containing those definitions and only executable `U64`/`U128`, array, cast,
shift, checked-add, and wrapping-operation runtime calls. However, the
range/decode theorem over that generated carry closure did not close; the
attempt stalled at the first symbolic `mac` bridge before the six CIOS round
invariant, conditional subtraction, or decode composition was established.
The incomplete Lean artifact was removed and no theorem is claimed. Verdict:
F01B fails the S3-07 design gate and supplies no basis for selecting arkworks
in S3-08; retain F01A unless later work is explicitly re-scoped to a larger
machine-arithmetic proof session. This result retires no ledger row.

**S3-08 — F02 single field-route decision** — `MECHANICAL (luna)` — **DONE
(2026-07-15)**. Select F01A unless only F01B meets the no-opaque-boundary and
whole-stack compatibility criteria; use deterministic SnarkPack release
corpus measurements as a performance veto, record proof bytes/traces and
hardware, delete the rejected spike, and name the one `Field377` facade and
representation relation used below. Acceptance: one production path and one
proof path remain. Narrows no ledger row by itself.

**2026-07-15 S3-08 decision (SUPERSEDED by the 2026-07-16 F02 re-decision below)
— select F01A, the generated verified Montgomery backend, as the single
production field route.** S3-07 extracted the executed
six-limb arkworks Fq multiplication graph but did not close even the first
symbolic `mac` bridge, so F01B does not meet its mandatory no-opaque-arithmetic
gate. Fiat's 1.50--1.64x multiplication/squaring and 3.55--3.73x addition
microbenchmark deficits are an integration risk, but they are not the required
deterministic end-to-end SnarkPack measurement and therefore do not constitute
the F02 performance veto.

At the time, the rejected option was **F01B arkworks post-hoc verification**,
because no range, carry/reduction, or decode theorem was established over the
executed path.

Under that superseded decision, `Field377` meant the one concrete safe-Rust
Fq/Fr facade to be added under
`src/ipp/ip_proofs/src/bls12_377/` directly over the pinned, vendored fiat-crypto
outputs, with no arkworks field-arithmetic fallback. Its Lean representation
relation is `Ipp.Bls12377.montgomeryRepresents`, specialized to
`baseModulus`/`baseMontgomeryRadix` for Fq and
`scalarModulus`/`scalarMontgomeryRadix` for Fr. S3-08 does not wire the facade
into production.

**2026-07-16 F02 re-decision — select F01B arkworks post-hoc verification as
the single production field route.** This supersedes the route selection and
S3-09..15 consequences of the 2026-07-15 S3-08 decision; it does not erase
either feasibility result. The changed fact is decisive:
`Ipp.Extracted.ArkworksFqMul.decode_extracted_mul` now proves the executed
six-limb safe-Rust CIOS multiplication, all U128/MAC carries, six reduction
rounds, conditional subtraction, canonical output, and Montgomery decode
capstone with no `sorry` or declared axiom. F01B therefore passes the mandatory
gate whose failure was the entire reason for choosing F01A.

Remaining-route estimate, excluding the common S3-15 integration/performance
gate: F01B is three Codex sessions (S3-F03B..F05B below). F01A is five scheduled
sessions (former S3-10..14) plus one bounded regeneration/composition gap before
they can start, because the S3-09 vendored fiat artifact lacks executed `sub`
and `opp` top levels. The estimate assumes the landed MAC/U128/sbb machinery is
reused for Fq's single carry chains and square, then instantiated at four limbs
for Fr; if that generalization does not fit S3-F03B, split before proceeding
rather than silently enlarging S3-F05B.

The claim/performance/maintenance trade favors F01B. It proves the code family
that remains in production, preserves arkworks' measured multiplication lead
(fiat was about 1.6x slower in the spike), and can extend to hand-optimized or
lazy-reduction limb code that fiat's generator cannot express. Its cost is
bespoke proof maintenance whenever the pinned arkworks limb algorithm, target
feature selection, or extraction changes; fiat would be easier to regenerate
once its provenance and missing operations were repaired, but would add a new
facade and retain the measured performance risk. There is no hybrid production
path: arkworks is production and proven post hoc; the fiat Rust spike and its
fiat-specific Lean contracts are deleted. The route-neutral Montgomery/ZMod
representation and additive semantic lemmas from S3-09 are retained under
`Ipp.Bls12377.MontgomeryFq` for the selected route's extracted-operation proofs.

`Field377` now means the pinned arkworks BLS12-377 Fq/Fr implementation already
used by the curve/pairing stack, with formal claims restricted to proved
safe-Rust paths and related to Lean by
`Ipp.Bls12377.montgomeryRepresents`, specialized to
`baseModulus`/`baseMontgomeryRadix` and
`scalarModulus`/`scalarMontgomeryRadix`. The retained monomorphic Rust closure,
generated Aeneas graph, parity gate, and `ArkworksFqMul.lean` are proof tooling
for that one production route, not a second backend.

**S3-F03B — Fq additive operations and square** — `HARD (sol)` — `DONE`
(2026-07-16). The monomorphic spike and Aeneas extraction cover arkworks'
executed `add_assign`, `sub_assign`, `neg`, and dedicated doubled-cross-product
`square_in_place` paths. Add/sub/neg close with `extracted_add_spec` /
`decode_extracted_add`, `extracted_sub_spec` / `decode_extracted_sub`, and
`extracted_neg_spec` / `decode_extracted_neg`. Square closes with
`extracted_reduce_round_spec`, `extracted_reduction_spec`,
`extracted_square_spec`, and `decode_extracted_square`. The square proof adds a
12-limb wide-value model and invariants for cross products, bit-joining shifts,
diagonal carries, and stale-low-prefix Montgomery reduction; multiplication is
consumed from `decode_extracted_mul`, not re-proved. Edge cases plus 512 random
cases per operation pass in normal and `hax_compilation` Rust configurations;
focused and full pinned single-threaded Lean builds and the axiom audit pass.

**S3-F04B — Fq inverse, square root, and canonical bytes** — `HARD (sol)` —
`GATED` on S3-F03B. Extract the exact fixed exponent/addition-chain loops and
canonical byte paths; prove loop induction over the proved mul/square effects
and compose with GAP-01, including zero inverse, nonsquare, sign, spare-bit, and
noncanonical failures. Acceptance: every Fq path reached by curve decoding and
pairing has an executed theorem and the remaining Fq/serialization portion of
the arkworks row is narrowed.

**S3-F05B — four-limb Fr refinement** — `DONE 2026-07-17` (executed by the
orchestrator directly; Codex capped until 2026-07-23). Landed: monomorphic
four-limb Fr spike (`s3_07_arkworks_fr_spike.rs`, parity green vs arkworks
incl. inversion and noncanonical-byte rejection), scoped six-root hax
extraction vendored as `Ipp/Extracted/ArkworksFrGenerated.lean`, and
`Ipp/Extracted/ArkworksFr.lean` proving against `ZMod scalarModulus`:
`decode_extracted_mul` (CIOS, 4-round induction), `decode_extracted_add/
sub/neg`, `decode_extracted_inv` (GKP lanes, fueled `u+v` descent) +
`extracted_inv_zero`, and `bytes_to_limbs_value_spec`/`from_bytes_value_spec`
against the GAP-01 `decodeLE` (no Fr wire records exist in GAP-01; GAP-11
composes from `decodeLE`). Exclusions, recorded: Fr sqrt (never executed on
scalars) and dedicated square (Fr squarings run the generic `mul` path);
`to_bytes` stays pinned by Rust parity. Full `lake build Ipp` green
(3414 jobs), zero sorry/axiom/native_decide, audits =
propext/Classical.choice/Quot.sound; Rust 43 tests green with
`mac-campaign`. The S2 scalar-adapter instantiation moves to S3-15 with the
rest of the wiring.

**S3-15 — arkworks `Field377` integration and performance veto** —
`DONE 2026-07-17` (orchestrator). Landed
`Ipp/Bls12377FrAdapter.lean`: `executedScalarAdapter` packages the Fr
decode laws (mul/add/sub/neg/inv/inv_zero/one/zero/wire) as the citable
instantiation of S2's scalar model instances, with the executed↔production
boundary remaining Rust-parity-pinned per design decision A; Montgomery
`oneMont` literal verified against `R mod r`. Full `lake build Ipp` green;
Rust suite green (43 tests, `mac-campaign`); no fiat backend or
rejected-route code artifact remains (doc/history references only). The
deterministic release-corpus A/B measurement is RECORDED AS NOT APPLICABLE:
its purpose was the F02 route veto, and the selected F01B route leaves
production arithmetic byte-identical — there is no candidate to measure
against baseline. The `formal-handoff.md` arkworks arithmetic row is
narrowed to tower/curve/pairing + delegator parity. Original scope for
reference: connect the proved Fq/Fr operation
theorems to the existing production curve/pairing call sites, run complete
arithmetic vectors, normal/hax tests, focused/full Lean checks, and axiom audits,
then run the deterministic release corpus for `aggregate_family` and
`verify_family_aggregate` at `n ∈ {1,2,4,8,64}` (plus 1024/2048 prover scaling
when available), recording hardware, medians, variance, profiles, proof bytes,
and challenge traces. Acceptance: no fiat backend, rejected-route artifact, or
bypass conversion remains; an above-noise end-to-end regression is a hard veto
that blocks and reopens F02. Passing retires the prime-field portion of
`arkworks field/group/pairing mathematical operation implementations`.

F02 re-decision execution verification (2026-07-16): focused
`lake build Ipp.Bls12377MontgomeryFq` (1964 jobs) and
`lake build Ipp.Extracted.ArkworksFqMul` (2973 jobs) passed; full
single-threaded `lake build Ipp` passed (3405 jobs). The new route-neutral
theorems and retained multiplication capstone audit only to `propext`,
`Classical.choice`, and `Quot.sound`. `cargo test -p ark-ip-proofs` passed 36
unit tests plus the arkworks Fq parity integration test, with two unrelated
tests ignored. Prover, release, deterministic corpus, and release-gated tests
were not run; they remain mandatory in S3-15.

**S3-16 — Fq2 implementation refinement** — `HARD (sol)` — `DONE 2026-07-17`.
Prove the executed Fq2 representation and add/sub/neg/mul/square against
`QuadraticAlgebra Fq (-5) 0`; include component order used by arkworks and
canonical bytes. Acceptance: no operation used by G2 or the extension tower is
opaque. Narrows the extension-field and serialization rows.
SCOPE PIN (2026-07-17, orchestrator, from ark-ff 0.5.0 source): the
degree-2 `mul_assign` does NOT compose base ops — with 377 < 64·6−1 it
executes `Fp::sum_of_products` M=2: per outer limb j, TWO interleaved
product MAC chains accumulate into one register with dual carry words
(`fa::adc`/`adc_no_carry`), then one Montgomery reduction step and shift,
then `subtract_modulus`. This is a two-product generalization of the
proven CIOS round; the `MacChainState` invariant machinery extends with a
second product chain (new primitives: 3-input adc pair bookkeeping).
Square takes the general β ≠ −1 branch (v0 = c0−c1, v3 = c0−β·c1,
v2 = c0·c1 shape) and composes proven base ops, as do add (componentwise)
and inverse (norm route: (c0²−β·c1²)⁻¹ via proven square/mul/inv).
`mul_base_field_by_nonresidue(x)` for β = −5 must be pinned from the
Fq2Config (likely −(x.double().double() + x) — verify at extraction).
PROGRESS (2026-07-17, orchestrator): spike Fq2 layer + parity landed
(36ab5ec60, 92f240cd6 — SoP straight-lined after aeneas rejected
shifted-index loop writes); vendored graph landed (d8a221e0f);
componentwise decode_fq2_add/sub/neg proven (1510980f5). All four
nonresidue helpers pinned from ark-bls12-377 fq2.rs (in_place: x→−5x via
neg+double²+add; sub_and_mul: (y,x)→x+5y; plus_one_and_add: (y,x)→x−4y;
and_add: (y,x)→x−5y); Frobenius C1 = [1, −1].
REMAINING PROOF DESIGN (fully derived, ready to mechanize):
(1) `double` = mul2 shift + subtract_modulus. Lemmas: shl64-by-1 and
shr64-by-63 simp specs; `even_lor_one` (even y → y|||1 = y+1, via
Nat.bit/lor_bit like the landed lor_two_pow_eq_add); `u64_shl_join`
(or64 of doubled-high and low-top-bit = sum, disjoint-support case
split); shift telescope Σ(2xⱼ mod β + xⱼ₋₁/2⁶³)βʲ = 2⟦a⟧ given top limb
x₅ < 2⁶³ (from ⟦a⟧ < q < 2³⁷⁷: x₅ ≤ ⟦a⟧/β⁵ < 2⁵⁷ — prove via the
limbsToNat_six expansion + omega); then subtract_modulus spec (2⟦a⟧ < 2q)
gives `< q ∧ ≡ 2⟦a⟧`, decode law = 2·decode a by cast algebra. NOTE:
limbsToNat_make_six twins are PRIVATE in the Fq files — re-derive
locally.
(2) `sum_of_products2` kernel: per-round EXACT equation
⟦result'⟧·β = ⟦result⟧ + a0[j]·⟦b0⟧ + a1[j]·⟦b1⟧ + kⱼ·q, obtained by
telescoping three chains (p-chain over result, q-chain over p.lows,
r-chain reduction over q.lows with r0.low = 0 by the INV k-choice — all
landed machinery shapes) plus the dual-carry bookkeeping:
sum0 = adc(0,0,c₀), sum1 = adc(sum0.low, sum0.carry, c₁) splits
c₀+c₁ into low/high; top = adc(sum1.low, sum1.carry, cᵣ) with
NO-DISCARD proved from result' < β⁶ (bound: result' ≤ (β⁶+3(β−1)q)/β <
β⁵+3q < β⁶, contradiction if top.carry = 1). Loop induction over the
Range iterator exactly as PolynomialCoefficients' fueled range loops.
GLOBAL: maintain result_n·βⁿ = Σᵢ prefixₙ(aᵢ)·⟦bᵢ⟧ + Kₙ·q with
Kₙ = Σ kⱼβʲ < βⁿ; at n=6: result₆ < T/R + q with
T = ⟦a0⟧⟦b0⟧+⟦a1⟧⟦b1⟧ ≤ 2(q−1)² and q/R < 2⁻⁷ ⇒ result₆ < 2q, so ONE
subtract_modulus canonicalizes (do NOT use the per-round fixpoint bound
— it is ≈3q and insufficient); congruence result₆·R ≡ T (mod q) gives
decode(SoP a0 b0 a1 b1) = decode a0·decode b0 + decode a1·decode b1.
(3) Compositions: mul_by_nonresidue laws from double/neg/add decode laws
(−5x = −x + 2·2·(−x) etc., canonicity threading via each spec's bound
component); fq2_mul via SoP law ×2 + nonresidue law (model:
(a0b0−5a1b1, a0b1+a1b0)); fq2_square via the v0/v3/v2 identity
(c0²−5c1², 2c0c1) — pure ZMod ring algebra after decode laws; fq2_inv
via norm route + decode_extracted_inv (norm = c0²+5c1²... exactly
c0²−β·c1² with β=−5; zero case: both components zero ↔ decodeFq2 = 0,
uses the landed eq_zeroLimbs_of_value_zero pattern); inv-None ↔ norm
zero ↔ input zero (norm nonzero for nonzero input needs fq2Nonresidue:
c0² = 5·(−c1²)... norm c0²+5c1² = 0 with c1 ≠ 0 ⇒ (c0/c1)² = −5,
contradicting arithmeticFacts.fq2Nonresidue ✓ certified).
COMPLETION (2026-07-17, orchestrator, commits 35ec80e9e..73c53ec70):
all Fq2 ops mechanized in `ArkworksFq2.lean` on the extracted graph,
full Ipp package green, zero sorry, axioms = propext/Classical.choice/
Quot.sound only. Landed theorems: `decode_extracted_double`
(= decode a + decode a), `extracted_sop2_spec`/`decode_extracted_sop2`
(fused M=2 kernel = a0·b0 + a1·b1 after Montgomery reduction),
`extracted_fq2_mul_spec`/`extracted_fq2_square_spec`
(vs `QuadraticAlgebra Fq (-5) 0`), the three nonresidue-helper decode
laws, and `extracted_fq2_inv_some_spec` (some-branch: decode·input = 1
+ canonicity). Componentwise add/sub/neg already landed (1510980f5).
Fq2 canonical bytes = componentwise Fq bytes (no distinct extracted op;
covered by the Fq bytes track); component order (c0, c1) captured by
`decodeFq2`. The predicted `MacChainState`/`PolynomialCoefficients`
reuse did NOT hold: SoP chains are sequential (local `mac_chain_telescope`
+ `sop_body_ok` round lemma) and the loop needed a spec-based
`LoopResult` backward peel (`sop_loop_peel`), not closed-form simp;
dual-carry discard-freedom fell straight out of the u64 `isLt` bounds
via omega (no `result' < β⁶` contradiction needed). S3-17 now inherits
`extracted_fq2_inv_some_spec`; its remaining work is the inverse
none-direction/totality, sqrt, sign-selection, and Frobenius.
MECHANIZATION REFINEMENTS (2026-07-17, orchestrator, pre-flight review):
(a) dual-carry: prove sum1.carry = 0 and top.carry = 0 DIRECTLY from
chain-carry bounds — each chain gives c·β⁶ ≤ β⁶ + β·q ⇒ c < 2⁵⁸, so
c₀+c₁+cᵣ < β; drops the result′<β⁶ contradiction route entirely.
(b) the three SoP chains are SEQUENTIAL, not interleaved — landed
MacChainState is CIOS-interleave-specific and does not fit; use a local
six-MacSpec telescope (generalize x·bᵢ products to atoms, omega),
mirroring FqOps adc_telescope.
(c) loop: forward-total round lemma (∃ result′ k, body = ok cont ∧ exact
equation) + loopFuel downward induction with local tailToNat, closed by
loop_eq_of_fuel + determinism vs hexec — NOT PolynomialCoefficients
closed-form simp (our body needs spec-based stepping). sum0/sum1/top
take full-word third addends: use extracted_adc_general_spec (≤2 carry)
plus a local unconditional adc = ok (adcModel …) (landed eq_model
carries a carry≤1 hypothesis these calls do not satisfy).
(d) fq2_inv split: some-branch law (decode·input = 1 + canonicity) in
S3-16; the none-direction needs GKP-inv TOTALITY (nonzero → some) which
ArkworksFqInv does not provide — moved to S3-17 with the rest of
inverse.

**S3-17 — Fq2 inverse, square root, and Frobenius** — `HARD (sol)` —
`DONE 2026-07-17`. Prove the exact inverse/sqrt/
sign-selection/Frobenius paths, including zero and nonsquare failures.
Acceptance: GAP-03 can instantiate its executed decoder operations and
focused checks pass. Retires the Fq2 portion of the arkworks field row.
COMPLETION (2026-07-17, orchestrator, commits ad786d7ba..20fa317f2): all four
executed Fq2 paths proven on the extracted graph, full Ipp package green (3417
jobs), zero sorry, audited axioms only. (A) Frobenius `decode_fq2_frobenius =
star`. (B) inverse none-direction `extracted_fq2_inv_none_iff` (guard analysis,
no loop-termination). (C) sqrt `decode_extracted_fq2_sqrt` (arkworks complex
method faithfully copied incl. legendre/norm/two_inv/div-by-nonresidue;
SPEC-CONFORMANCE `decode r^2 = decode a` proven from the candidate re-square +
base `decode_extracted_sqrt` + `extracted_sqrt_canonical`, no TS-completeness
per the F02 decision). (D) sign-selection `extracted_fq2_less_spec` (executed
`into_bigint`/`gt` comparison refines the decoder `fq2Less` on canonical
`(c0,c1)` reps; needed a `limbsToNat` injectivity lemma and the mul-by-integer-1
canonical-value bridge). All parity-tested (sqrt vs `a.sqrt()` exact match;
`fq2_less` vs `into_bigint` lexicographic — Fp2 exposes no public order so this
validates the model convention). GAP-03's executed decoder operations
(`sqrtFq2`, `selectRoot`/`fq2Less`) are now instantiable on proven executed ops.
PROGRESS (2026-07-17, orchestrator, commits ad786d7ba, 868145d5d):
- Frobenius DONE: `fq2_frobenius` spike (`FROBENIUS_COEFF_FP2_C1 = [1,−1]`,
  the executed effect is `neg` on the `c1` lane), parity vs arkworks
  `frobenius_map_in_place(1)`, `extract_s3_17` root, vendored graph,
  `decode_fq2_frobenius : decodeFq2 output = star (decodeFq2 a)` — proven
  equal to Mathlib's `QuadraticAlgebra` `star` (the `b = 0` conjugation).
- Inverse none-direction DONE: `extracted_fq2_inv_none_iff`
  (`fq2_inv a = none → decodeFq2 a = 0`). KEY: the executed base `inv`
  returns `ok none` ONLY from its zero guard (both post-loop branches return
  `ok (some …)`), so `inv_none_imp_val_zero` needs NO loop-termination /
  totality proof — a guard analysis suffices. Composed with `norm_zero_imp`
  (the `fq2Nonresidue` certificate ⇒ `c0²+5c1² = 0` forces both lanes zero)
  and `decode_eq_zero_iff` (`ZMod.natCast_eq_zero_iff` + canonicity).
REMAINING (two heavy pieces, need extraction + hard proofs — candidates for
sol medium→high post-Jul-23 per token-budget discipline):
(B) SIGN-SELECTION / root ordering. Model is `CanonicalG2Decode.selectRoot`
    over `fq2Less` (compare canonical c1 first, then c0). The EXECUTED
    arkworks G2 compression compares `y.into_bigint()` vs `(−y).into_bigint()`
    — CANONICAL (post-Montgomery-reduction) representatives, NOT the
    Montgomery limbs, so a raw `gt` on stored limbs is the WRONG comparison.
    Plan: extract an `fq2_sign`/`fq2_gt` spike that (i) converts each lane out
    of Montgomery form (reuse the canonical-bytes / `into_bigint` path proven
    in S3-F04B), then (ii) does the c1-then-c0 limb compare via the proven
    `gt`. Prove it refines `fq2Less` on `(asNats ·)`. Bridge lemma: the
    canonical representative of a lane = `(decode lane).val` (the `ZMod` rep).
(C) SQRT (arkworks `QuadExtField::sqrt`, complex method, β = −5). Model is
    `CanonicalG2Decode.sqrtFq2` (already a checked-candidate `Option`: takes a
    base sqrt of the norm `c0²+5c1²`, forms `(c0±α)/2`, recovers `c1` from
    `c0`, and re-squares to validate). Extraction: monomorphic copy of the
    executed `sqrt` — zero case, `a.c1 = 0` split (base `sqrt(c0)` or
    `sqrt(c0/(q−5))`), else the norm-α-δ branch. Reuse the base-field
    `sqrt` already extracted+proven (S3-F04B Tonelli–Shanks, `ArkworksFqSqrtBytes`).
    Proof strategy: DO NOT prove Tonelli–Shanks completeness (excluded, per the
    F02 decision); prove SPEC-CONFORMANCE only — `fq2_sqrt a = some r →
    decodeFq2 r ^ 2 = decodeFq2 a` (every returned candidate is re-squared in
    the executed code, so the decode law composes `decode_extracted_square`
    with the branch algebra), and `fq2_sqrt a = none →` no base representative
    existed (nonsquare pass-through). This mirrors `sqrtFq2`'s
    checked-candidate shape exactly. Estimated: one focused sol session each.

**S3-18 — Fq6 irreducibility and canonical field model** — `HARD (sol)` —
`DONE 2026-07-17`. In `Ipp/Bls12377Pairing.lean` or a focused tower module,
prove `v^3-u` irreducible using a checked noncube/factorization certificate,
construct the canonical Fq6 field, and prove `Fq6Model` coefficient/multiply
equivalence. Acceptance: a `Field` instance is derived, not postulated.
Retires the Fq6 mathematical-foundation gap needed by GAP-07.
COMPLETION (2026-07-17, orchestrator; executed by sol): new hand-authored
`Ipp/Bls12377Fq6.lean` plus one certificate in `Bls12377Certificates.lean`.
Noncube route as pinned: `baseModulus_minus_five_cubeResidue` kernel-computes
`(q-5)^((q-1)/3) mod q` by `rfl` (377-bit exponent, maxRecDepth 100000) with
`≠ 1` by norm_num on the literal; `fq2U_not_cube` reduces `b^3 = u` to that
certificate via `Fintype.card Fq2 = q^2` (`QuadraticAlgebra.equivProd`),
`FiniteField.pow_card_sub_one_eq_one`, `u^2 = -5` parity collapse
`(q^2-1)/6 = (q-1)/3 + (q-1)·((q-1)/6)`, and Fermat in Fq. (The direct
753-bit-exponent fallback certificate did NOT finish in a bounded 180 s run
— the exponent-reduction route is load-bearing, note for S3-20's `w^2-v`.)
`fq6Polynomial_irreducible` via Mathlib `X_pow_sub_C_irreducible_of_prime_pow`
(p=3, n=1); `Fq6Canonical := AdjoinRoot (X^3 - C fq2U)` with global
`Fact (Irreducible _)` instance — `Field Fq6Canonical` is Mathlib's
`AdjoinRoot.instField`, derived not postulated (`fq6Canonical_field_available`
witnesses it). Coefficient map `fq6Coefficients` proven: zero/one/add/mul
(via `linear_combination` against `root^3 = algebraMap fq2U`), `fq6MulByV` =
mul-by-root, and BIJECTIVE via `AdjoinRoot.powerBasis` reindexed to `Fin 3`
(`Basis.equivFun` route) — so `Fq6Model` is a faithful coordinate model of
the canonical field. Full Ipp green (3421 jobs), zero sorry, audited axioms
only. S3-19 (executed Fq6 conformance) is now unblocked.

**S3-19 — executed Fq6 conformance** — `HARD (sol)` — `DONE 2026-07-17`.
Prove all reached Fq6 add/mul/square/sparse/inverse/
Frobenius routines refine the canonical field model. Acceptance: line
evaluation and final exponentiation have no unproved Fq6 primitive. Narrows
the pairing implementation row.
PART 1 DONE (2026-07-17, orchestrator; executed by sol): scope pin, spike,
parity, extraction, componentwise laws.
SCOPE PIN (from arkworks 0.5.0 source, citations in session report):
BLS12-377 is TwistType::D — `ell` uses Fq12 `mul_by_034`, which reaches Fq6
`mul_by_01` (twice) + add/sub + mul-by-v; Fq6 `mul_by_1` is M-twist-only
(`mul_by_014`) and UNREACHED — excluded from spike and from part 2 proof
obligations. Reached list: add, sub, neg, double, full `mul_assign`
(three-product Karatsuba), `square_in_place` (CH-SQR2), inverse
(norm/Algorithm-17 route), Frobenius powers 1 and 2 (pinned
FROBENIUS_COEFF_FP6_C1/C2 tables), sparse `mul_by_01`, and
`mul_base_field_by_nonresidue` ((c0,c1) → (−5c1, c0)).
LANDED: monomorphic `fq6_*` spike + `extract_s3_19` root appended to
`s3_07_arkworks_fq_spike.rs` composing the proven `fq2_*` closures; parity
`fq6_edges_and_512_random_vectors_match_arkworks` (edges + 512 random, all
reached ops incl. Frobenius 1/2 and zero-inverse None) green in
`cargo test -p ark-ip-proofs --features mac-campaign`; WSL aeneas extraction
succeeded with NO restructure, vendored `Ipp/Extracted/ArkworksFq6Generated.lean`
(reuses Fq/Fq2 graphs); `Ipp/Extracted/ArkworksFq6.lean` defines
`decodeFq6`/`Canonical6` and proves `decode_fq6_add/sub/neg/double` and
`decode_fq6_mul_base_field_by_nonresidue` (= `fq2U * ·`). Full Ipp green
(3423 jobs), zero sorry, audited axioms.
PART 2 DONE (2026-07-17, orchestrator; executed by sol): `decode_fq6_mul`
(Karatsuba chain refines `fq6Mul`), `decode_fq6_square` (CH-SQR2 refines
`fq6Mul x x`), `decode_fq6_mul_by_01` (sparse chain refines `fq6Mul` by
`⟨c0, c1, 0⟩`) — each via a private combined spec (bind-peel + Fq2 specs +
Fq2 ring normalization) projected into decode + `canonical6_mul/square/
mul_by_01` output-canonicity lemmas (ready for part 3 composition). Fq2
companions added: `canonical_fq2_add`/`canonical_fq2_sub` (the add/sub
decode laws did not expose output canonicity; derived from
`extracted_add_spec`/`extracted_sub_spec`). Full Ipp green (3423 jobs),
zero sorry, audited axioms.
PART 3 DONE-PARTIAL (2026-07-17, orchestrator; executed by sol):
inverse both directions — `decode_fq6_inv_some` (Algorithm-17 adjugate:
`fq6Mul (decode out) (decode a) = fq6One` + Canonical6) and
`decode_fq6_inv_none` (none → decode = fq6Zero), on model lemmas
`fq6CubicNorm_eq_zero_iff` (cubic norm vanishes only at 0; via the S3-18
field structure) and `fq6Mul_scaledAdjugate`. Canonical-field composition
corollaries landed: `canonical_field_fq6_mul/square/inv` (executed ops
transported through `fq6Coefficients` = field ops in `Fq6Canonical`).
Frobenius CONSTANTS certified: `fq6FrobeniusC1_one/C2_one/C1_two/C2_two`
(canonical `u^((q^k−1)/3)`, `u^(2(q^k−1)/3)` values = base-field residues;
two new 377-bit rfl certificates `baseModulus_minus_five_sixthResidue`/
`twoThirdsResidue`, k=2 exponents Fermat-reduced first, per the S3-18
rule — no 753-bit kernel computation). Full Ipp green (3423 jobs), zero
sorry, audited axioms, gate ok.
PART 4 DONE (2026-07-17, orchestrator; executed by sol):
`decode_fq6_frobenius_one/two` landed in combined-spec form (Canonical6
output + decode lane formulas with the CANONICAL constants
`fq2U ^ ((q^k−1)/3)` / `fq2U ^ (2(q^k−1)/3)` in the statements — no table
limbs; power 1 lanes star'd via `decode_fq2_frobenius`, power 2 identity).
S3-19 COMPLETE: every reached executed Fq6 routine (add/sub/neg/double,
Karatsuba mul, CH-SQR2 square, sparse mul_by_01, nonresidue helper,
Algorithm-17 inverse both directions, Frobenius 1/2) has a decode law
against `Fq6Model`, with `canonical_field_fq6_mul/square/inv` transporting
into `Fq6Canonical`. Fq6 slice of the arkworks field row retired in the
ledger. Full Ipp green (3423 jobs), zero sorry, audited axioms.

**S3-20 — Fq12 irreducibility and canonical field model** — `HARD (sol)` —
`DONE 2026-07-18`. Prove `w^2-v` irreducible with a checked nonsquare
certificate, construct the canonical Fq12 field, and prove `Fq12Model`
coefficient/multiply/power equivalence. Acceptance: multiplicative group and
field cardinality are available without an axiom. Retires the mathematical
foundation gap for GT.
COMPLETION (2026-07-18, orchestrator; executed by sol): new hand-authored
`Ipp/Bls12377Fq12.lean` (+ `minus_five_pow_half` corollary in
`Bls12377Certificates.lean`, `fq2_card` widened + `Fintype`/`fq6_card`
added in `Bls12377Fq6.lean`). NO new kernel certificate — the pinned
collapse route held: `fq6V^((q^6−1)/2)` reduces via `v^3 = u`, `u^2 = −5`,
evenness, and Fermat mod q−1 to `(−5)^((q−1)/2) = −1` (the EXISTING Euler
certificate `baseModulus_minus_five_powResidue`); the q^6-scale
divisibility identities went through `norm_num [baseModulus]` directly.
`fq6V_not_square`, `fq12Polynomial_irreducible` (degree-2 no-root route),
`Fq12Canonical := AdjoinRoot (X^2 − C fq6V)` with the Field instance
derived from the global `Fact` (S3-18 pattern), `fq6_card = q^6` /
`fq12_card = q^12` (power-basis `Fintype` instances — the GT acceptance
prerequisite, no axiom), and `fq12Coefficients` one/mul/POW
(`fq12Pow`/npowBinRec induction)/BIJECTIVE. Full Ipp green (3424 jobs),
zero sorry, audited axioms. S3-21 (executed Fq12) and the S3-22 GT
cardinality hook are now unblocked.

**S3-21 — executed Fq12 conformance** — `HARD (sol)` — `DONE 2026-07-18`.
Prove reached Fq12 add/mul/square/sparse/conjugate/
inverse/Frobenius/cyclotomic operations and canonical bytes against the field
model. Acceptance: all primitives used by Miller, final exponentiation,
GAP-04/07, and GT validation are covered. Retires the Fq12 portion of the
arkworks field row.
PART 1 DONE (2026-07-18, orchestrator; executed by sol): scope pin, spike,
parity, extraction, conjugation law.
SCOPE PIN (arkworks 0.5.0, citations in session report): reached set =
full mul, square, sparse `mul_by_034` (D-twist; `mul_by_014` M-twist-only
excluded), conjugation, cyclotomic inverse (nonzero check + conjugation),
full inverse, Frobenius powers EXACTLY 1 and 2 (easy part: conj·inv +
frobenius²; hard part: 1 and 2; full 12-row C1 table pinned, rows 1/2
executed), Granger–Scott `cyclotomic_square` (q²≡1 mod 6 branch),
`cyclotomic_exp` at positive X = 0x8508c00000000001 (NAF reversed,
square/multiply/inverse loop — pinned as a 64-digit big-endian NAF literal
+ `while index < 64` loop, accepted by aeneas FIRST TRY, following the Fq
pow/sqrt loop shape). NO Fq12-level add/sub/neg/double is reached
(excluded). BYTES VERDICT: the GT bytes path IS reached — transcript
serializes `ip_ab` uncompressed (groth16_aggregation.rs:1128) and
PairingOutput commitment lanes; arkworks quad/cubic serialization is
componentwise c0/c1(/c2), matching `Ipp/CanonicalGtDecode.lean`'s
`Fq12Wire`; `fq12_to_bytes`/`fq12_from_bytes` are in the spike + graph,
proofs in a later part (subgroup validity stays GAP-10).
LANDED: `Fq12Mont` spike + `extract_s3_21` root (all routines above +
bytes); parity `fq12_edges_and_512_random_vectors_match_arkworks` (edges +
512 random per routine, Frobenius 1/2, cyclotomic exp, 576-byte round
trips, noncanonical reject, zero → None both inverses) green; vendored
`Ipp/Extracted/ArkworksFq12Generated.lean` (imports Fq6 graph, no
duplication; current-aeneas output mechanically translated to the repo
MacCampaign dialect — new Std.U8/loop-attribute forms normalized);
`Ipp/Extracted/ArkworksFq12.lean` with `decodeFq12`/`Canonical12` +
`decode_fq12_conjugate` (c0 preserved, three c1 Fq2 lanes negated). Full
Ipp green (3426 jobs), zero sorry, audited axioms.
PART 2 DONE (2026-07-18, orchestrator; executed by sol):
`decode_fq12_mul` (quadratic Karatsuba refines `fq12Mul`),
`decode_fq12_square` (vs `fq12Square` = `fq12Mul a a` definitionally),
`decode_fq12_mul_by_034` (sparse chain refines `fq12Mul` by `sparse034`),
each with `canonical12_*` projections; private `fq12_nonresidue_spec`
(extracted Fq6 rotation = `fq6MulByV`). Fq6 canonicity companions added:
`canonical6_add/sub/double/mul_base_field_by_nonresidue`. Full Ipp green
(3426 jobs), zero sorry, audited axioms.
PART 3 DONE (2026-07-18, orchestrator; executed by sol):
`decode_fq12_inv_some/none` (norm route; none-direction via
`fq12QuadraticNorm_eq_zero_iff` whose nonzero direction is proved in
`Fq6Canonical` using `fq6V_not_square`),
`decode_fq12_cyclotomic_inverse_some/none` (syntactic conjugation gated on
nonzero; semantic norm-1 inversion deferred to S3-22),
`decode_fq12_frobenius_one/two` (proven Fq6 Frobenius lanes; c1 lanes
scaled by CANONICAL `fq2U^((q^k−1)/6)` — one new 377-bit certificate
`baseModulus_minus_five_twelfthResidue` for k=1 via evenness +
`fq2U_pow_twice`; k=2 Fermat-reduced to the existing sixth residue;
pinned table rows 1/2 kernel-matched to the canonical values, no table
limbs in statements). Full Ipp green (3426 jobs), zero sorry, audited
axioms.
PART 4 TIER A DONE (2026-07-18, orchestrator; executed by sol): exact
executable models added to `Bls12377Pairing.lean` (`fq12Conjugate`,
`fq12CyclotomicSquare` GS six-lane formula, `blsXnafBE` 64-digit pinned
NAF, `fq12CyclotomicExpStep`/`fq12CyclotomicExp` fold) and the executed
graphs proven to refine them UNCONDITIONALLY:
`decode_fq12_cyclotomic_square` + `canonical12_cyclotomic_square`,
`decode_fq12_cyclotomic_exp` + `canonical12_cyclotomic_exp`, with
`x_naf_be_matches_model` (kernel equality of the extracted NAF literal).
Exp loop proved by Aeneas loop-fuel induction (`cyclotomic_exp_loop0_fuel_
spec`, invariant: decoded accumulator = model fold over `drop index`) — no
64-step unroll. Full Ipp green (3426 jobs), zero sorry, audited axioms.
TIER B DEFERRED (unitarity semantics): `fq12ConjAut` (AdjoinRoot lift
`w ↦ −w`), conjugation transport, and the two unitarity laws
(GS-square = `fq12Mul x x`, `fq12CyclotomicExp x = fq12Pow x X` for
unitary x) stalled on ELABORATION friction, not math: after
`Polynomial.eval₂` expansion the residual well-definedness goal
`(-root (X^2 - C fq6V))^2 - algebraMap fq6V = 0` would not re-elaborate at
the `fq12Polynomial`/`Fq12Canonical` abbreviations to rewrite with
`fq12_root_square`. FIX HINT for the closer: state a standalone lemma
`(-AdjoinRoot.root fq12Polynomial)^2 = algebraMap _ _ fq6V` AT the
abbreviation (`rw [neg_sq, fq12_root_square]`... or `neg_pow` two-case),
then bridge to the expanded form with `simpa [fq12Polynomial]` /
`show` — i.e. prove BEFORE unfolding, convert after.
PART 5 DONE (2026-07-18, orchestrator; executed by sol): executed Fq12
bytes conform to `CanonicalGtDecode` — `decode_fq12_to_bytes` (=
`encodeFq12Canonical` in exact tower order; new add-only canonical
encoders + `Fq12ValueMatchesModel` bridge in `CanonicalGtDecode.lean`),
`decode_fq12_from_bytes_some` (canonicity + model decode succeeds with the
matching value), `decode_fq12_from_bytes_none` (model decode rejects), and
`decode_fq12_from_bytes_exact` (model decode = `result.map
canonicalFq12Value` — the exact acceptance/rejection classification).
Fq-level companions added in `ArkworksFqSqrtBytes.lean`
(`to_bytes_value_spec`, `from_bytes_some_canonical`,
`from_bytes_none_rejects_model`, one 8-byte word lemma composed over six
limbs). Full Ipp green (3426 jobs), zero sorry, audited axioms.
PART 6 DONE-WITH-CORRECTION (2026-07-18, orchestrator; executed by sol):
`fq12ConjAut` (AdjoinRoot lift `w ↦ −w`; the part-4 fix hint worked —
`fq12_neg_root_square` at the abbreviation, then `liftAlgHom` +
`algHom_ext` involutivity + `AlgEquiv.ofAlgHom`) and
`fq12Coefficients_conjugate` transport LANDED.
FINDING — the deferred tier-B premise was FALSE: unitarity
(`fq12Mul x (fq12Conjugate x) = fq12One`, the order-q^6+1 subgroup) does
NOT imply `fq12CyclotomicSquare x = fq12Mul x x` nor the exp law. The
cyclotomic subgroup is the STRICTLY SMALLER order q^4−q^2+1 group
(arkworks `CyclotomicMultSubgroup` contract). Refuted by an exact-field
diagnostic (`x = y/y^(q^6)`: unitary, but GS(x) ≠ x² and cyclotomic_exp ≠
pow; removed after use) and by an exact coordinate obstruction (unitarity
h0/h1/h2 do not entail the first GS lane identity — full equations in the
part-6 session report). CONSEQUENCE: the semantic GS/exp-as-pow laws
require an `x^(q^4−q^2+1) = 1` hypothesis and belong to the FINAL-EXP
sessions (S3-38/39) where the easy-part output provably lands in that
subgroup ((q^6−1)(q^2+1)·(q^4−q^2+1) = q^12−1), with S3-22's order-r GT
(r | q^4−q^2+1) as the other consumer. S3-21 itself is complete: every
executed Fq12 primitive refines its exact model formula unconditionally.
S3-21 COMPLETE (parts 1–6). Fq12 slice of the arkworks field row retired
in the ledger. Full Ipp green (3426 jobs), zero sorry, audited axioms.

**S3-22 — GT factorization and order-r characterization** — `HARD (sol)` —
`DONE 2026-07-18`. Prove `r ∣ q^12-1`, record the exact cofactor
and gcd facts, define the intended GT as `{x : Fq12ˣ | x^r=1}`, and prove it
has order `r` using finite-field cyclicity. Acceptance: zero versus
multiplicative identity and arkworks `PairingOutput` additive notation are
explicit. Supplies GAP-07 and narrows the subgroup portion of the arkworks row.
COMPLETION (2026-07-18, orchestrator; executed by sol): new hand-authored
`Ipp/Bls12377Gt.lean`. Exact literals pinned: `q^12−1 = r·gtCofactor` and
`q^4−q^2+1 = r·gtCyclotomicCofactor` (`fq12_order_factorization`,
`cyclotomic_order_factorization`), `(q^4−q^2+1) ∣ q^12−1` with quotient
`q^8+q^6−q^2−1`, `Nat.Coprime r gtCofactor` (r divides q^12−1 EXACTLY
once), `gcd r (q^12−1) = r`. `GtGroup` = kernel of the r-th-power
endomorphism on `Fq12Canonicalˣ` (`mem_gtGroup : x ∈ GtGroup ↔ x^r = 1`);
`gtGroup_card : Nat.card GtGroup = r` via `IsCyclic` units +
`IsCyclic.card_powMonoidHom_ker` (= gcd) + `Fintype.card_units` +
`fq12_card`. `gt_pow_cyclotomic_order_eq_one` gives GT members
`x^(q^4−q^2+1) = 1` — the EXACT hypothesis the S3-38/39 cyclotomic
semantic laws need (closes the S3-21 part-6 finding's consumer chain).
Identity/notation bridge explicit: `one_mem_gtGroup`, `gtValue_ne_zero`,
`fq12_zero_ne_gt_identity`, and the `ArkPairingOutput` add-only adapter
(`0 ↦ 1`, `+ ↦ *`, `n • ↦ ^n`). Full Ipp green (3427 jobs), zero sorry,
audited axioms. EXTENSION TOWER S3-16..22 COMPLETE. GAP-07 unblocked.

**S3-23 — exact curve-order boundary and arithmetic factors** — `HARD (sol)`
— `NOW`. Dependencies: the landed C01 curve/cofactor constants. Add a succinct
`PublishedCurveOrderFacts` proposition containing the
exact G1/G2 point-cardinality equalities for the concrete curves, cite the
pinned BLS12-377 parameter source, and mechanically prove the cofactor
multiplications and gcd/prime-power facts from the existing constants. This is
the retained point-count mathematics boundary; acceptance requires reviewer-
ready citations and no claim that the equalities were derived from curve
arithmetic. Narrows the vague arithmetic assumption to one exact cited row.

**S3-24 — G1 order-r subgroup theorem** — `HARD (sol)` — `GATED` on S3-05 and
S3-23. From the exact G1 cardinality and gcd facts, prove that
`inPrimeSubgroup p` is the unique order-`r` primary subgroup, has cardinal
`r`, includes identity, and excludes every nonidentity cofactor component.
Target `Ipp/Bls12377Subgroups.lean`. Acceptance: no generator-order or cyclicity
fact is assumed beyond S3-23. Supplies GAP-05.

**S3-25 — G2 order-r subgroup theorem** — `HARD (sol)` — `GATED` on S3-05 and
S3-23. Prove the corresponding theorem for the concrete twist group, including
the exact G2 cofactor and identity semantics. Acceptance mirrors S3-24.
Supplies GAP-06.

**S3-26 — executed G1 add/double/neg formulas** — `HARD (sol)` —
`DONE 2026-07-18`. Extract the selected monomorphic G1
affine/projective/mixed formulas and prove refinement to Mathlib addition,
doubling, and negation across infinity, equal, opposite, and zero-Z branches.
Acceptance: equality is of represented point classes. Narrows the group
portion of the arkworks arithmetic row.
PART 1 DONE (2026-07-18, orchestrator; executed by sol): scope pin, spike,
parity, extraction, decoder + easy laws.
SCOPE PIN (arkworks 0.5.0, full citations in session report): reached =
projective `AddAssign` (add-2007-bl; zero-Z checks both sides, equal →
doubling delegation, opposite → zero), mixed `AddAssign<Affine>`
(madd-2007-bl; affine-∞ no-op, projective-zero → (x,y,1)),
`double_in_place` a=0 shortcut ONLY (`D = 4XY²` branch; generic A≠0 branch
UNREACHED — COEFF_A = 0), projective neg, affine neg (reached via WNAF
MSM negative buckets — NEGATION_IS_CHEAP). IDENTITY VERDICT: any Z = 0 is
zero; arkworks' chosen ZERO literal is (1,1,0); opposite-branch returns
(1,1,0). ⚠ SCALAR-MUL DISCOVERY for S3-28: BLS12-377 G1 overrides mul with
GLV (glv.rs:90-123 — endomorphism decomposition, base negation, joint
double/add), and the affine subgroup check runs the generic
double-and-mixed-add loop (scalar_mul/mod.rs:29-44) at the CHARACTERISTIC
scalar — S3-28 must cover BOTH loop shapes. Normalization/batch-inversion
excluded to S3-29 (boundary pinned).
LANDED: `G1ProjMont`/`G1AffineMont`/`g1_zero` + g1_add/add_mixed/double/
neg/affine_neg spike + `extract_s3_26`; parity edges + 512 random compared
AFTER into_affine (represented point classes, incl. noncanonical zero-Z
and non-normalized inputs) green; vendored `ArkworksG1Generated.lean`
(imports Fq graph); `ArkworksG1.lean` with `CanonicalG1` + `decodeG1 :
… → Option (Fq × Fq)` (none ↔ executed Z=0 test; some (X/Z², Y/Z³)) —
DESIGN: returns a coordinate pair, NOT a Mathlib point; on-curve lifting
threads the represented-point invariant in parts 2-3 (mirrors
CanonicalG1Decode's decode/validity separation). Proved: `decode_g1_neg` +
the four identity/zero-branch laws (add left/right, mixed, double). Full
Ipp green (3430 jobs), zero sorry, audited axioms.
PART 2 LANDED (green PARTIAL, 2026-07-18, orchestrator; executed by sol):
standalone `chordAdd` (slope (y₂−y₁)/(x₂−x₁)) and `tangentDouble`
(a = 0 slope 3x²/2y) coordinate models — statement-shape decision: keep
this layer free of on-curve/Mathlib constructors; part 3 identifies them
with Mathlib slope/addX/addY once — plus `decode_g1_double_generic`
(full a=0 chain peel; rational identity isolated in private
`tangent_decode_identity` to bound elaboration). y = 0 note: executed
Z₃ = 2ZY ⇒ doubling an order-2 point yields canonical zero-Z (infinity);
the public `decode_g1_double_order2` needs the decoded-zero →
canonical-zero representative bridge, still owed. Full Ipp green (3430
jobs), zero sorry, audited axioms.
PART 2B LANDED (green PARTIAL, 2026-07-18, orchestrator; executed by
sol): the comparison-bridge layer —
`canonical_fq_val_eq_iff_decode_eq` (executed representative equality ↔
decoded Fq equality), `decode_g1_x_cross_eq_iff` / `decode_g1_y_cross_eq_iff`
(Jacobian cross-products ↔ decoded affine coordinate equality under
nonzero-Z), and `decode_g1_double_order2` (y = 0 doubling decodes to
infinity). Bridges deliberately isolate the division algebra from the
extracted chains (anti-blowup). Full Ipp green (3430 jobs), zero sorry,
audited axioms.
PART 2C LANDED (2026-07-18, orchestrator; sol + Fable memory surgery): the
six add theorems — `decode_g1_add_generic` (add-2007-bl refines `chordAdd`),
`decode_g1_add_equal_delegates`, `decode_g1_add_opposite`, and the three
mixed counterparts — all proven, full Ipp green (3430 jobs), zero sorry,
audited axioms.
⚠ MEMORY-ENGINEERING LESSON (curve track will hit this again on G2/scalar
mul — S3-27/28): the projective→affine Weierstrass rational identity blows
Lean's `ring`/def-eq to >9 GB and OOM-FROZE the 16 GB dev machine. Two-part
fix, both about preventing `let`-expansion of the deep add-2007-bl term:
(1) `chord_decode_identity` proven via an ABSTRACT `chord_decode_core`
(x,y,z,a_i as opaque params + defining-equation hypotheses + `chord_*_factor`
scale lemmas), closed with `clear_value` on the deep `let`-locals before the
final `exact` so unification is syntactic — dropped it from 9.4 GB to
1.9 GB. (2) The CONSUMERS (`decode_g1_add_generic`,
`decode_g1_add_mixed_generic`) must apply `chord_decode_core` DIRECTLY (opaque
decoded aliases, `clear_value` before the application), NOT the `let`-wrapped
`chord_decode_identity` (applying it re-expands the conclusion → 8.6 GB).
Full-file peak after both fixes: ~2 GB. NEVER run an unguarded heavy Lean
build on this machine — use the guarded wrapper (scratchpad guardian:
suppresses rust-analyzer, kills any lean > ceiling). See [[two-claude-snarkpack-workflow]].
PART 3 DONE (2026-07-18, orchestrator; executed by sol): new
`Ipp/Extracted/ArkworksG1Mathlib.lean` (separate file — keeps per-compile
memory low; peak ~1.9 GB). `chordAdd_eq_mathlib` / `tangentDouble_eq_mathlib`
identify the coordinate formulas with Mathlib `WeierstrassCurve.Affine`
`slope`/`addX`/`addY` for `g1Curve = ⟨0,0,0,0,1⟩` (negY = −y). Lift model
`DecodedG1OnCurve` (explicit on-curve boundary), `liftDecodedG1`,
`RepresentsDecodedG1`, and the `executed_g1_{add,add_mixed,double,neg}_*_
refines_mathlib` corollaries (generic/mixed/equal/opposite/identity/order2
branches) prove the executed formulas refine Mathlib `Affine.Point`
add/double/neg on the lifted decoded classes. On-curve + prime-subgroup
validity assumed explicitly (boundary discharged by S3-32/GAP-08); the group
operation identification itself uses NO subgroup premise. Full Ipp green,
zero sorry, audited axioms.
S3-26 COMPLETE (parts 1, 2, 2b, 2c, 3). The executed G1 group-formula slice
of the arkworks arithmetic row is proved. Next curve session: S3-27 (G2 —
same twist formulas over Fq2; the S3-26 memory lesson applies directly).

**S3-27 — executed G2 add/double/neg formulas** — `HARD (sol)` —
`DONE 2026-07-18`. Prove the exact twist formulas across the same
exceptional branches. Acceptance mirrors S3-26. Narrows the G2
group-operation row.
PART 1 DONE (2026-07-18, orchestrator; executed by sol): scope pin, spike,
parity, extraction, decoder + easy laws — the G2 analog of S3-26 part 1,
peak env-lean 426 MiB (light; 0 guardian kills).
SCOPE PIN (arkworks 0.5.0, citations in session report): D-type sextic twist,
COEFF_A = (0,0), COEFF_B = b/u (pinned Fq2 literal); reached = projective
`AddAssign` (add-2007-bl; zero-Z, equal→doubling, opposite→(1,1,0)), mixed
madd-2007-bl, `double_in_place` a=0 D=4XY² extension-degree-2 shortcut ONLY
(generic A≠0 unreached), projective + affine neg (WNAF buckets). Identity =
any Z=0, literal (1,1,0). ⚠ S3-28 FINDING: G2 implements `GLVConfig` but does
NOT wire glv_mul into `SWCurveConfig` — so G2 scalar-mul uses the GENERIC
double-and-add loops (projective mul_projective + affine subgroup-check
characteristic loop), NOT GLV (contrast G1 which IS GLV). S3-28 covers the
two generic G2 loop shapes + G1's GLV path. Normalization/into_affine
excluded to S3-29.
LANDED: `G2ProjMont`/`G2AffineMont` + g2_add/add_mixed/double/neg/affine_neg
spike + `extract_s3_27` composing proven fq2_* closures; parity edges+512
random after into_affine (projective classes; cargo mac-campaign green,
re-run by orchestrator); WSL aeneas extraction clean (14.6s, no restructure),
vendored `ArkworksG2Generated.lean` (imports Fq2/Fq6 graph); `ArkworksG2.lean`
`CanonicalG2` + `isZeroFq2Mont` + `decodeG2 : … → Option (Fq2 × Fq2)` +
`decode_g2_neg` and the four identity/zero-branch laws. Full Ipp green, zero
sorry, audited axioms.
PART 2 LANDED (green PARTIAL, 2026-07-18, orchestrator; executed by sol):
the memory pattern worked PROACTIVELY — peak env-lean 1.99 GB, 0 guardian
kills (no crisis, contrast the G1 discovery-under-fire). Design: Fq2-parallel
GENERIC-FIELD (`{F} [Field F]`) chord/tangent models + factor/scale lemmas +
`chord_decode_core` inside `ArkworksG2.lean`, instantiated at F = Fq2 only
after reducing the executed Fq2 chain to opaque decoded aliases (so `ring`
never expands the QuadraticAlgebra pair structure); consumer applies core via
`clear_value`. ArkworksG1.lean untouched. LANDED: `chordAddG2`/`tangentDoubleG2`
(generic), the comparison bridges `canonical_fq2_val_eq_iff_decode_eq` /
`decode_g2_x_cross_eq_iff` / `decode_g2_y_cross_eq_iff`, `decode_g2_add_generic`
(add-2007-bl over Fq2 refines chord), `decode_g2_double_generic`,
`decode_g2_double_order2`. Full Ipp green, zero sorry, audited axioms.
PART 2B DONE (2026-07-18, orchestrator; sol high-effort + Fable diagnosis):
the five branch theorems — `decode_g2_add_equal_delegates`,
`decode_g2_add_opposite`, `decode_g2_add_mixed_generic`,
`decode_g2_add_mixed_equal_delegates`, `decode_g2_add_mixed_opposite` — via
shared `g2_add_branch_of_same_x`/`g2_add_mixed_branch_of_same_x` routers.
⚠ MEMORY LESSON (a NEW one beyond G1, for the rest of the curve/pairing
track): the G1-mirror `simpa only [huExec, hsExec] using hexec` branch
resolution STILL traversed the discarded generic else-chain and hit 6.2 GB
over Fq2. FIX: peel the executed U/X and S/Y comparison BINDS structurally
(before the y-branch split), select the true branch from the tiny
comparison-result equation, then `change` to kernel-reduce the discarded
chain — plus ONE bounded `fq2_eq_components` bridge (executed Fq2 comparison
→ component equality, proven once). Dropped the router 6.2 GB → 1.9 GB;
full G2 file peak 2.0 GB. (First 2b attempt BLOCKED at medium; the fix
needed the structural-peel insight, landed at high after Fable read the G1
router and pinpointed the else-chain traversal.)
S3-27 add/double/neg over Fq2 COMPLETE.
PART 3 DONE (2026-07-18, orchestrator; executed by sol): new
`Ipp/Extracted/ArkworksG2Mathlib.lean` (separate file, peak ~1.9 GB).
`chordAddG2_eq_mathlib`/`tangentDoubleG2_eq_mathlib` proven over a GENERIC
short-Weierstrass `⟨0,0,0,0,b⟩` then instantiated at `b = g2TwistB` (so
`ring` never expands the Fq2 quadratic-algebra rep; makes explicit the affine
addX/addY specialization depends on a₁=a₂=a₃=a₄=0, NOT on b=1). Lift model
`DecodedG2OnCurve`/`liftDecodedG2`/`RepresentsDecodedG2` +
`DecodedG2InPrimeSubgroup`, and the 14 `executed_g2_{add,add_mixed,double,
neg}_*_refines_mathlib` corollaries prove the executed G2 formulas refine
`g2Curve.toAffine.Point` add/double/neg on decoded classes across all
branches, under the explicit on-curve/prime-subgroup boundary
(S3-32/GAP-08/09); the group-operation identification uses no subgroup
premise. Full Ipp green, zero sorry, audited axioms.
S3-27 COMPLETE (parts 1/2/2b/3). Both G1 (S3-26) and G2 (S3-27) executed
group formulas are proved and lifted to the Mathlib affine group law. Next
curve session: S3-28 (scalar-mul loops — G1 GLV path + the two G2 generic
double-and-add loop shapes).

**S3-28 — scalar-multiplication loops** — `HARD (sol)` — `IN PROGRESS`
(gates S3-26/27 satisfied). Prove the executed G1 and G2 scalar-bit loop
invariant and instantiate it to `k • p`, including zero scalar, identity,
leading zeros, and full Fr width. Acceptance: one generic loop theorem plus
two concrete corollaries. Narrows group arithmetic and supplies S2
scalar-action adapters.
PART 1 DONE (2026-07-18, orchestrator; executed by sol): scope pin + spike +
parity + extraction + single-step laws (peak ~1.84 GB, 0 kills).
SCOPE PIN (arkworks 0.5.0, citations in report): THREE reached loop shapes —
(a) G1 ordinary mul = GLV joint loop (`glv.rs`): decompose `k = k1 + λ·k2`,
`b1=P b2=φ(P)` sign-negated, precompute `b1+b2`, 256 paired bits MSB-first
(255 effective, one leading-pair skip), per pair double then choice-add
(10→b1, 01→b2, 11→b1b2, 00→none); (b) generic AFFINE double-and-add loop
(`sw_double_and_add_affine`) reached by BOTH curves' subgroup checks at the
253-bit characteristic (double + mixed-add-if-bit); (c) G2 ordinary mul =
generic PROJECTIVE double-and-add loop (`sw_double_and_add_projective`,
big-endian, leading-zeros suppressed, up to full 253-bit Fr). GLV BOUNDARY
DECISION (sol, sound): part 2 PROVES scalar-decomposition `k1 + k2·λ ≡ k
(mod r)` but treats the eigenspace fact `φ(P) = λ•P` as a CITED
curve-parameter boundary (GLV precondition, NOT an executable-loop fact;
never silently assumed for arbitrary on-curve points).
LANDED: g1/g2 mul_projective/affine loop + step closures + `extract_s3_28`
composing the proven `g1_*`/`g2_*` group ops; parity `scalar_mul_edges_and_
512_deterministic_random_vectors_match_arkworks` (zero/1/2/leading-zero/
Fr−1/identity + 512 random, after into_affine; 10 spike tests, cargo
mac-campaign green, re-run by orchestrator); WSL aeneas clean (12.1s, nested
outer-limb/inner-bit while loops accepted; full-crate hax hit unrelated
app-code failures so extraction ran from a truncated isolation crate — noted
technique); vendored `ArkworksScalarMulGenerated.lean`;
`ArkworksScalarMul.lean` `DecodedLoopState` + the four single-step laws
`decode_g{1,2}_mul_{projective,affine}_step_generic` (one iteration = decoded
tangent double + optional decoded chord add, composing S3-26/27 laws;
generic-branch premises exposed). Full Ipp green, zero sorry, audited axioms.

**S3-28 FINALE — COMPLETE (Green D; 2026-07-20; commit `d0026c58e`).**
Landed `ArkworksScalarMulGlvEndomorphism`, `ArkworksScalarMulGlvG1Neg`,
`ArkworksScalarMulGlvScheduleValue`, `ArkworksScalarMulGlvBase`, and
`ArkworksScalarMulGlvFinal`, with key theorems `glvBeta_cube`,
`valid_g1_glv_endomorphism`, `valid_g1_neg`, `jointValue_glvPairs_255`,
`valid_g1_glv_wrapper_signed`, and `valid_g1_glv_mul_projective`.
The cited `assume.bls12377-g1-glv-eigenspace` boundary is retained.
Gate: full Ipp (3496 jobs), GLV parity, and axiom-clean audit green.
PART 2 LANDED (green PARTIAL — algebraic invariant boundary; 2026-07-19,
orchestrator; sol-HIGH with design authority, peak 1.86 GB, 12 kills caught).
DESIGN CALL (sol): the loop invariant belongs ABOVE the coordinate fields —
new `Ipp/Extracted/ArkworksScalarMulInvariant.lean` over an arbitrary
`AddCommMonoid`, so it is field-independent and never expands Fq2. Proven:
`runBits`/`msbValue` fueled MSB-first double-and-add invariant
(`runBits = 2^processed • acc + prefix • base`) + `runBits_253`, zero,
empty, no_fuel, `runBits_suppress_leading_false`; `runJoint`/`jointValue`
GLV paired-bit invariant + `runJoint_256_skip` (the exact 256-pair schedule,
one leading (false,false) skip, choice-add 10→b1/01→b2/11→b1+b2/00→0),
`runJoint_eigenvalue` (CONDITIONAL eigenvalue substitution),
`GlvEigenPrecondition`; S2-facing ALGEBRAIC adapters `g2_scalar_action_
adapter`/`g1_glv_joint_action_adapter` (honestly labeled algebraic, NOT
executed-closure adapters — no over-claim). Induction is on SYMBOLIC fuel
only (no 253/255 unroll). GLV eigenspace fact `φ(P)=λ•P` recorded as the new
cited assumption `assume.bls12377-g1-glv-eigenspace` (λ pinned, prime-subgroup
precondition-gated, NOT axiom/NOT arbitrary points; consumer must supply
`GlvEigenPrecondition`). Full Ipp green, zero sorry, audited axioms.
⚠ SOL FINDING (sound stop): the S3-26/27 exceptional-branch refinement lemmas
(identity/order2/equal/opposite) preserve decoded represented classes but do
NOT all export output CANONICITY, which the next generic-formula step
requires — carrying it implicitly would be UNSOUND. Sol stopped at the
algebraic boundary rather than paper over it.
PART 2C DONE (2026-07-19, orchestrator; sol-executed; items 1+2 of the 6):
CANONICITY SURFACE completed on both curves — the four G1 identity companions
(verified from an interrupted prior run) plus `canonical_g{1,2}_zero`, all four
G2 identity companions, the previously-missing zero-accumulator mixed branch
(`decode_/canonical_g{1,2}_add_mixed_left_identity`), and projective+mixed
`canonical_g{1,2}_add_opposite`; the generic add/double, order-2 double, and
equal-delegate laws already exported canonicity and were REUSED (not
duplicated/weakened). BRANCH-COMPLETE STEP WRAPPERS: `ValidG{1,2}LoopState`
(canonical limbs ∧ `RepresentsDecodedG{1,2}` the Mathlib point) +
`ValidG{1,2}AffineLoopBase`, `valid_g{1,2}_{double,add,add_mixed}`, and the four
`valid_g{1,2}_mul_{projective,affine}_step` concluding `ValidG…LoopState output
(acc + acc + if bit then base else 0)` — callers carry NO unequal-X/nonzero-Y
premise (the point of the wrapper). Dispatch covers identity / order-2 /
equal→delegated-double / opposite→identity / generic, plus affine-infinity and
zero-accumulator for mixed; same-X finite classification DERIVED from both curve
equations (Y1²=Y2²), not assumed.
⚠ FOURTH MEMORY TECHNIQUE (now proven, use for the rest of the track): monolithic
development of these wrappers hit 6.2–7.5 GiB and was guardian-killed; the fix is
FILE SPLITTING — `ArkworksScalarMul{G1Base,G1Step,G2Base,G2Add,G2Step,Step,
StepAxioms}.lean`, each green at ~1.4–1.8 GiB (Lean's per-compile cumulative
footprint drops when heavy declarations are spread across compilation units).
PART 2D DONE (2026-07-19, orchestrator; sol-HIGH; items 3+4 of the 6): the
EXECUTED GENERIC SCALAR-MUL LOOPS ARE PROVEN TO COMPUTE `k • P`. Five new
modules (`ArkworksScalarMul{Scalar,Schedule,Loop,G1Loop,G2Loop}.lean`, each
green ~1.82–1.88 GB — file-splitting pattern). LOOP INDUCTION: the generated
code uses the repo's custom `Aeneas.loop`, NOT the vendored WP loop consumed by
`spec_decr_nat` — sol used the equivalent finite-execution API
(`Aeneas.loopResult_of_eq`, structural induction on `Aeneas.LoopResult`,
`scalarInnerBody_decreases`/`scalarOuterBody_decreases` with SYMBOLIC measures
`bitIndex.val`/`limb.val`, `scalar{Inner,Outer}LoopResult_to_model/_valid`).
Nothing unrolled: `partialValue_pred`/`highPrefix_pred` peel ONE arbitrary
countdown step; only the four bounded word-layout cases are concrete. Each bit
step is discharged by the part-2c branch-complete wrappers + `nsmul_bit_step`.
SCALAR BRIDGE: `msbValue_scalarBits : msbValue width (scalarBits width scalar)
= scalarToNat scalar % 2^width`, plus `highPrefix_eq_msbValue_256`,
`runBits_256_eq_253`, `msbValue_scalarBits_253` (zero, leading zeros, full
253-bit Fr). COROLLARIES: `valid_g1_mul_affine`, `valid_g2_mul_projective`,
`valid_g2_mul_affine`, each concluding `ValidG{1,2}LoopState output
(scalarToNat scalar • basePoint)` — STRONGER than canonical-Fr-only (hold for
every four-word scalar array; identity bases need no premise). Full Ipp green,
zero sorry, audited axioms.
⚠ CLAIM-SURFACE CAVEAT (orchestrator check, 2026-07-19): the part-1 spike's
`g1_mul_projective` is the GENERIC double-and-add loop — the spike contains NO
GLV/λ/endomorphism code at all. Arkworks G1 ordinary projective mul OVERRIDES
`mul_projective` with `glv_mul_projective`, so the spiked `g1_mul_projective`
models a path G1 NEVER EXECUTES (the generic projective loop is reached only by
G2). Part 2d correctly did NOT claim `valid_g1_mul_projective`. DO NOT prove a
`valid_g1_mul_projective` corollary from that closure — it would certify a
non-executed algorithm. The GLV session must either delete that stand-in or
mark it explicitly non-executed, and spike the REAL GLV path. What IS proven
for G1 today: the affine/subgroup-check loop (`valid_g1_mul_affine`), which is
genuinely reached.
PART 2E DONE (green PARTIAL, 2026-07-19, orchestrator; sol-HIGH): the GLV path
is now FAITHFULLY SPIKED, PARITY-PINNED, EXTRACTED, and its JOINT LOOP PROVEN.
TRAP FIXED: the non-executed generic `g1_mul_projective` loop was DELETED from
the spike, its parity call repointed at the real GLV path, and it was dropped
from `extract_s3_28`; only the elementary `g1_mul_projective_step` remains
(referenced by the already-landed graph + part-2c proofs) and is now documented
in-source as a NON-EXECUTED generic reference. No `valid_g1_mul_projective`
exists. SPIKE (rooted at `extract_s3_28_glv`): pinned Fr modulus, LLL basis
`[[a+1,1],[-1,a]]`, configured endomorphism coefficient, fixed-width
multiply/long-division/half-up rounding/sign-magnitude decomposition mirroring
arkworks `scalar_decomposition`; `b1=P`, `b2=φ(P)`, sign-conditional negations,
`b1b2`; 256-pair MSB-first loop with the exact magnitude-forced leading
`(false,false)` skip then 255 double+choice-add steps. PARITY compares the
decomposition SIGNS/MAGNITUDES DIRECTLY against `GLVConfig::scalar_decomposition`
AND the product against `G1Projective::mul_bigint` (the real GLV override):
zero/1/2/leading-zero/Fr−1/generator/identity + 512 random, cargo mac-campaign
green (10 spike tests). EXTRACTION: WSL scoped from a dependency-free copy (a
full-workspace retry died in the unrelated `metrics-0.24.1` crate, E0521);
vendored `ArkworksScalarMulGlvGenerated.lean`. PROOFS (4 new modules
`ArkworksScalarMulGlv{Step,Schedule,LoopModel,Loop}.lean`, each ~1.85 GB):
`valid_g1_glv_joint_step`, `glvPairs_*`, `runJoint_glvPairs_256_skip`,
`extracted_glv_bit`, `glvJointBody_decreases`, `glvJointLoopResult_to_model`,
and the corollaries `valid_g1_glv_joint_loop_256` (extracted loop represents
`runJoint 256 (glvPairs k1 k2 256) b1 b2 0` under valid bases + the two
`< 2^255` magnitude bounds) and `valid_g1_glv_joint_loop_value` (via
`runJoint_256_skip` → the two decoded magnitude actions). Symbolic
`bitIndex.val` measure; 256 iterations NOT unrolled. Zero sorry, audited axioms.
DISCIPLINE: sol emitted NO partial final corollary and made NO unconditional use
of the eigenspace fact.
PART 2F DONE (green PARTIAL, item (i) — the DECOMPOSITION CONGRUENCE; 2026-07-19,
orchestrator; sol-HIGH). `ArkworksScalarMulGlvDecomposition.lean` (+ 35 supporting
modules `ArkworksScalarMulGlv{Arithmetic,Reduce*,Mul*,Shift/SetBit/ClearBelow/
Wide*Core,Div*,Rounded*,Numeric*,Array*,Decomp*}.lean`, each green 1.82–1.89 GB
— the file-splitting technique at scale for the 384-bit long-division) proves
`extracted_decomposition_spec`:
`signed(k1) + signed(k2)·λ ≡ scalarToNat input (mod r)` for a successful
`g1_glv_scalar_decomposition`, PLUS `extracted_k1_lt_two_pow_255` /
`extracted_k2_lt_two_pow_255`. Proof route (all over Int/Nat, OFF the curve):
reduced rep `s < r`, `s ≡ input`; exact identity `signed(k1)+signed(k2)·λ =
s − β·r` (extracted 2nd sign is `false`, so `signed(k2) = −β`); `RoundedSpec`
half-up division (`numerator = q·r+rem`, `rem<r`, `quotient = q + [r < 2·rem]`;
r odd ⇒ no exact tie); LLL product decodes as `β·(a+1)`; sign branches
`k1 = |s − β·(a+1)|` reduce via `r = a·(a+1)+1`, `λ = r−a−1`. Bounds: `β ≤ a`,
`a+1 < 2^255`; low-four-limb projections justified only after six-limb `< 2^256`
(no truncation assumption); `numerator < 2^384` derived from `s<r`,
`numerator = s·a`. Zero sorry, audited axioms. Sol recorded the EXACT
final-corollary premise shape (explicit `hsubgroup` + `heigen`, neither
discharged in S3-28) so the remaining work cannot hide a boundary.
⚠ CODEX CAPPED 2026-07-19 ~18:30 (resets Jul 24 23:24) mid-way through the
finale dispatch — no work was done that turn. Per directive Fable continues,
but the finale is the delicate soundness boundary; rather than risk a fatigued
hand-written error at hour 33+, the orchestrator reverse-engineered the full
LEMMA-LEVEL ROADMAP below (executed `g1_glv_mul_projective` fully read) so the
finale can be finished cleanly by whoever picks it up (sol post-reset or Fable
when fresh):

FINALE ROADMAP (2 items, lemma-level; executed structure:
`g1_glv_mul_projective base scalar` = decompose → `b1=base`, `b2=g1_glv_
endomorphism base` (= `mul(x,COEFF)`, y/z unchanged) → sign-negate b1/b2 iff
`!k{1,2}_positive` via `g1_neg` → `b1b2 = g1_add b1 b2` → `g1_glv_joint_loop`):
✅ (ii-a) + (ii-b) DONE (2026-07-19, FABLE HAND-WROTE during the codex cap —
new file `Ipp/Extracted/ArkworksScalarMulGlvEndomorphism.lean`, env-lean green,
axiom-clean): `g1_endomorphism_coeff_canonical` (limbsToNat COEFF < baseModulus
via `limbsToNat_six` + `norm_num [wordBase, …]`), `glvBeta := decode COEFF`, and
`decode_g1_glv_endomorphism` (mirrors `decode_g1_neg`; peels `mul` via
`extracted_mul_spec`/`decode_extracted_mul`; concludes `CanonicalG1 output ∧
decodeG1 output = (decodeG1 a).map (p ↦ (glvBeta * p.1, p.2))` — the affine map
`(x,y) ↦ (β·x, y)`; div massage by `ring`). Original spec kept for reference:
(ii-a) `G1_ENDOMORPHISM_COEFF` canonicity; (ii-b) endomorphism DECODE law
`decode_g1_glv_endomorphism` mirroring `decode_g1_neg`, output.z=a.z (same ∞
branch), affine map `φ_aff (x,y) = (β·x, y)`. (ii-c)
endomorphism ON-CURVE: `φ_aff` preserves `y²=x³+1` iff `β³=1` — prove `β³=1` as
an Fq certificate (β = decode COEFF, a primitive cube root; `decide`/cert like
the Frobenius constants), then `(β·x)³+1 = β³x³+1 = x³+1`; gives the Mathlib
`g1Curve.toAffine.Point` for `φ(P)` from P on-curve. (ii-d) refine b1/b2/b1b2 to
valid states: `b1Point = if k1_positive then P else -P` (via `decode_g1_neg` +
`canonical_g1_zero`/neg canonicity), `b2Point = if k2_positive then φP else -φP`
(via ii-b/ii-c), `b1b2` valid via `valid_g1_add` for `b1Point + b2Point`.
(iii) FINAL corollary (premises pinned in part-2f report: explicit
`hsubgroup : inPrimeSubgroup P`, `heigen : GlvEigenPrecondition inPrimeSubgroup
phi lambda`): chain ii-d → `valid_g1_glv_joint_loop_value` giving
`k1mag • b1Point + k2mag • b2Point` = `signed(k1)•P + signed(k2)•φP`; apply
`heigen P hsubgroup` (ONLY eigenspace use) → `φP = λ•P`, so
`= (signed(k1)+signed(k2)·λ)•P`; `extracted_decomposition_spec` →
`signed(k1)+signed(k2)·λ ≡ scalarToNat scalar (mod r)`; then r-torsion of P
(SOURCE IT: `Ipp.Bls12377Subgroups` Sylow-r / prime-subgroup membership should
give `r • P = 0`; if not directly available, add it to the boundary EXPLICITLY —
do NOT fabricate `r•P=0`) reduces the ℤ-coefficient mod r to conclude
`ValidG1LoopState output (scalarToNat scalar • P)`. `hsubgroup`/`heigen` are NOT
discharged in S3-28 (S3-32/GAP-08 owns subgroup validity; eigenspace is the
cited ledger boundary). Superseded remaining text: (ii) refine the extracted endomorphism +
sign-conditional negations to decoded Mathlib points and build `b1b2` validity,
composing with `valid_g1_glv_joint_loop_value`; (iii) under an explicit
prime-subgroup premise + the cited `GlvEigenPrecondition`, combine
`extracted_decomposition_spec` + `valid_g1_glv_joint_loop_value` +
`runJoint_eigenvalue` for the final executed G1 `k • P`. Superseded scope text follows: (5) model the
executed G1 GLV wrapper (`g1_mul_projective`), connect its exact 256-pair skip
schedule to `runJoint`, and prove the LLL/rounded-division decomposition after
sign interpretation `k1 + k2·λ ≡ k (mod r)`; (6) combine with
`GlvEigenPrecondition` (the cited `assume.bls12377-g1-glv-eigenspace`) for the
final executed G1 `k • P`. Superseded item list follows: (3)
`Aeneas.Std.loop.spec_decr_nat` on the extracted nested limb/bit loops +
connect the four-limb schedule to `msbValue = scalar mod 2^width`; (4) the
executed G2 projective/affine + ordinary-G1 affine corollaries; (5) model the
executed G1 GLV wrapper, connect its 256-pair skip to `runJoint`, prove the
LLL/rounded-division decomposition `k1 + k2·λ ≡ k (mod r)`; (6) combine with
the eigencondition for the final executed G1 `k • P`. Item (1) is the
prerequisite unblocker — do it first.

**S3-29 — normalization and affine conversion conformance** — `HARD (sol)` —
`GATED` on S3-26/27. Prove executed single/batch normalization and affine/
projective conversions implement the landed C02 relations, including zero-Z
and all-infinity batches. Acceptance: prepared-pairing and serialization
consumers can use the theorem. Narrows group and serialization rows.

**S3-30 — MSM window/digit/bucket invariant** — `HARD (sol)` — `GATED` on
S3-28. Prove the exact executed `VariableBaseMSM` window selection, scalar
digit decomposition, and bucket accumulation invariant for one window,
including empty, length mismatch, zeros, and identities. Acceptance: no
opaque bucket result. Begins retiring the standalone MSM assumption.

**S3-29 DONE — normalization and affine conversion conformance.** `into_affine`
(`valid_g1_into_affine`/`valid_g2_into_affine`) and general `normalize_batch`
were proved for both curves, covering singleton zero/nonzero, all-infinity, and
general elementwise cases via the Montgomery batch-inversion invariant. The
index-loop extractable spike and executable `Vec.pop` lesson are recorded here;
commits `4887293c6` (part 1) and `e398c6ebb` (part 2). Gate: full Ipp (3541 jobs),
11 parity tests passed, axiom-clean.

**S3-31 — G1/G2 MSM capstone** — `HARD (sol)` — `GATED` on S3-30. Compose the
window invariant and prove both executed MSM paths represent
`∑ i, scalar_i • point_i`, including final window recombination and errors.
Acceptance: S2's explicit MSM premise instantiates for every reached call.
Retires `arkworks MSM implementation computes intended linear combination`.

**S3-32 — executed subgroup-check conformance** — `HARD (sol)` — `GATED` on
S3-24/25 and S3-28. Prove the exact arkworks G1 and G2 checked-membership
functions return true iff the concrete `inPrimeSubgroup` predicates, including
identity. Acceptance: extracted monomorphic predicates, not merely a restated
spec, and focused checks/audit pass. Supplies GAP-08/09 and narrows
`arkworks serialization and subgroup behavior`.

**S3-33 — prepared G2 and doubling-line conformance** — `HARD (sol)` —
`GATED` on S3-17/27/29. Prove prepared-point construction and every executed
doubling-line state transition refine `G2HomProjective` and `doubleLine`.
Acceptance: coefficient order and infinity handling are exact. Narrows the
pairing implementation row.

**S3-34 — addition-line conformance** — `HARD (sol)` — `GATED` on S3-33.
Prove every executed mixed-add line state transition refines `addLine`, with
loop-bit and exceptional cases explicit. Acceptance: focused checks/audit.
Narrows the pairing implementation row.

**S3-35 — sparse line evaluation conformance** — `HARD (sol)` — `GATED` on
S3-21 and S3-33/34. Prove D-twist evaluation and `mul_by_034` operand layout
equal `evalLine`/`sparse034`. Acceptance: all coefficient signs/positions and
infinity behavior are pinned. Narrows the line-evaluation row.

**S3-33 DONE (2026-07-22; commit `835bf2ef5`).** Prepared-G2 schedule and
doubling line are landed: the executed coefficient sequence, infinity handling,
and Miller-loop schedule were extracted and proved against `valid_g2_prepared`.

**S3-34 DONE (2026-07-22; commits `867d74ac6`, `694365175`, `759a2019b`).**
The addition line and `AddStep` were landed, Miller-loop genericity was derived
for the concrete ate scalars, and `valid_g2_prepared` became the capstone: the
full executed G2Prepared coefficient sequence is proven for prime-subgroup
inputs, retaining the subgroup premise discharged by S3-32/GAP-09.

**S3-36 — Miller-loop refinement** — `HARD (sol)` — `GATED` on S3-35. Prove
the executed 63-bit signed/positive schedule, square/line accumulation, and
conjugation choices equal `millerLoop` for one pair. Acceptance: bit order and
six set-bit additions match `ateLoopBits`; focused audit passes. Narrows the
Miller-loop implementation row.

**S3-37 — multi-Miller accumulation** — `HARD (sol)` — `GATED` on S3-36.
Prove prepared multi-pair traversal equals the product of the individual
specified Miller values, including empty lists, length behavior, and failures.
Acceptance: optimized batching has no review-only accumulator step. Narrows
multi-pairing implementation risk.

**S3-38 — final-exponentiation easy part** — `HARD (sol)` — `GATED` on S3-21.
Prove the executed inverse/conjugate/Frobenius easy part equals exponentiation
by `(q^6-1)(q^2+1)` on its exact success domain. Acceptance: zero/inversion
failure is preserved. Narrows final-exponentiation implementation risk.

**S3-39 — final-exponentiation hard chain** — `HARD (sol)` — `GATED` on
S3-22 and S3-38. Prove the exact cyclotomic/Frobenius chain equals the remaining
canonical exponent, then compose to `f^((q^12-1)/r)`. Acceptance: no optimized
step is assumed and focused resource/audit gates pass. Retires the final-
exponentiation implementation slice.

**S3-40 — multi-pairing capstone** — `HARD (sol)` — `GATED` on S3-37/39.
Prove `cfg_multi_pairing`, prepared pairing, and `multi_pairing` decode to the
product of `publishedAtePairing`, including failure and additive
`PairingOutput` notation. Acceptance: the exact effects used by S2 and GAP are
corollaries. Retires executable pairing-operation risk from the arkworks row.

**S3-41 — cited pairing boundary and S2 integration gate** — `MECHANICAL
(luna)` — `GATED` on S3-22/24/25/31/32/40 and GAP-07/10. Strengthen
`PublishedPairingBilinearNondegenerate` only as needed to state explicitly
that subgroup inputs land in GT, preserve its ePrint citations and reviewer
signoff, derive the additive bilinear adapter consumed by S2, and run full
field/curve/pairing checks plus axiom audits. Acceptance: S2 adapter premises
instantiate for BLS12-377 and all executable portions of
`arkworks field/group/pairing mathematical operation implementations` are
retired. The exact cited curve-order and optimal-ate bilinearity/
nondegeneracy/target-membership rows remain assumptions; cryptographic
hardness rows remain untouched.

## Track GAP — decoding and subgroup re-triage (12 sessions)

Landed foundations change the old status as follows: GAP-02 and GAP-03 are
`NOW`; GAP-05 and GAP-06 are gated on the new order-r characterizations, not
on C01; GAP-07 is gated on the Fq12 field/factorization theorem, not merely
P00; GAP-12 is removed from the required track because no batch validator is
executed in production. It may return only as a new optimization proposal
after GAP-07, with an owner-approved predicate, fresh-randomness design, and
benchmark gate. It is not counted below and cannot block GAP-14.

**GAP-02A — exact G1 compressed-decoder specification** — `HARD (sol)` —
`NOW`. Create `Ipp/CanonicalG1Decode.lean` with the pinned 48-byte flag layout,
infinity uniqueness, canonical x, curve equation, exact arkworks sign/root
selection, and exact consumption over the landed G1 curve. Dependencies:
GAP-01 and S3-C01, parameterized by `ArithmeticFacts` until S3-05. Acceptance:
malformed flag/spare-bit/infinity cases are executable and tested. Narrows
`arkworks serialization and subgroup behavior` and the challenge serializer
assumption.

**GAP-02B — G1 decode injectivity** — `HARD (sol)` — `GATED` on GAP-02A.
Prove two accepted G1 wires decoding to the same Mathlib point are identical,
using canonical-x injectivity and deterministic sign-root selection.
Acceptance: on-curve, identity, malformed, and trailing-byte cases appear in
the theorem suite; focused build/audit pass. Retires the pure G1 wire-
injectivity portion of the serialization row.

**GAP-03A — exact G2 compressed-decoder specification** — `HARD (sol)` —
`NOW`. Create `Ipp/CanonicalG2Decode.lean` with the pinned 96-byte component
order, flags, infinity, Fq2 lexicographic sign, twist equation, root selection,
and exact consumption. Dependencies: GAP-01 and S3-C01. Acceptance mirrors
GAP-02A and constants are checked against pinned arkworks sources. Narrows the
G2 serialization rows.

**GAP-03B — G2 decode injectivity** — `HARD (sol)` — `GATED` on GAP-03A.
Prove accepted-wire injectivity into the concrete G2 Mathlib point, including
both Fq2 roots, sign tie cases, and identity. Acceptance: focused build/audit
and no abstract decoder-law premise. Retires pure G2 wire injectivity.

**GAP-05 — G1 subgroup/torsion equivalence** — `HARD (sol)` — `GATED` on
S3-24. Prove the checked membership specification is equivalent to membership
in the cardinal-`r` G1 subgroup and excludes nonidentity cofactor torsion,
including identity semantics. Target `Ipp/Bls12377Subgroups.lean` or a thin
GAP module. Acceptance: exact cofactor/gcd facts are consumed. Retires the
pure G1 subgroup-mathematics portion of the serialization/subgroup row.

**GAP-06 — G2 subgroup/torsion equivalence** — `HARD (sol)` — `GATED` on
S3-25. Prove the same statement for the twist and exact G2 cofactor.
Acceptance mirrors GAP-05. Retires the pure G2 subgroup-mathematics portion.

**GAP-07 — GT membership equivalence** — `HARD (sol)` — `GATED` on GAP-04 and
S3-22. Prove the checked `PairingOutput` predicate is exactly nonzero
`x^r=1` in canonical Fq12 and hence membership in the cardinal-`r` GT subgroup,
with arkworks zero/identity conventions explicit. Acceptance: concrete
factorization/cardinality theorems, focused build/audit. Retires the pure GT
subgroup-mathematics portion and supplies S3-41.
COMPLETION (2026-07-18, orchestrator; executed by sol; status DONE): new
hand-authored `Ipp/Bls12377GtMembership.lean`. STRUCTURAL FINDING: GAP-04
had NO concrete GT predicate — only the parameterized
`CanonicalWire.decodePairingOutputChecked (member : PairingOutputValue →
Bool)` with no in-repo concrete caller. GAP-07 supplies the single
concrete boolean (`arkworksPairingOutputCheckedMembership` = `fq12Pow x r
= fq12One`, modeling the pinned arkworks `pow(r) == 1` check; nonzeroness
DERIVED from that equality, not separately checked) and specializes the
existing decoder (`decodePairingOutputGtChecked`) — no parallel decoder.
Equivalence chain proven: check ↔ `fq12Coefficients x ^ r = 1` ↔ nonzero ∧
r-torsion ↔ ∃ unit in `GtGroup`; `checkedPairingOutputEquivGt` type
equivalence with accepted-set cardinality = r via `gtGroup_card`;
wire-level `decodePairingOutputGtChecked_eq_some_iff`; S3-21 bridge
`pairingOutputModelOfValue_eq_of_matches`. Conventions explicit: Fq12 `1`
accepted, field additive zero rejected, arkworks additive `PairingOutput`
zero ↦ accepted multiplicative one. Symbolic power transport only (no
q^12-scale kernel work). Full Ipp green (3428 jobs), zero sorry, audited
axioms. Supplies S3-41; GAP-10 gains the checked surface for the executed
`Valid::check` refinement.

**GAP-08 — executed G1 decoder refinement** — `HARD (sol)` — `GATED` on
GAP-02B/GAP-05, S3-11, and S3-32. Extract the pinned BLS12-377 checked G1
deserialize path and prove success iff the canonical point and subgroup
predicates hold, preserving every error. Acceptance: malformed, trailing,
noncanonical, identity, and torsion fixtures pass. Narrows the executed G1
serialization/subgroup row.

**GAP-09 — executed G2 decoder refinement** — `HARD (sol)` — `GATED` on
GAP-03B/GAP-06, S3-17, and S3-32. Prove the corresponding checked G2 path,
including component order and sign selection. Acceptance mirrors GAP-08.
Narrows the executed G2 serialization/subgroup row.

**GAP-10 — executed GT decoder refinement** — `HARD (sol)` — `GATED` on
GAP-04/GAP-07 and S3-21. Extract `PairingOutput<Bls12_377>` decoding and
`Valid::check`; prove success iff canonical Fq12 decoding plus GT membership.
Acceptance: zero, one, noncanonical, trailing, and off-subgroup fixtures pass.
Narrows the executed GT serialization/subgroup row and supplies S3-41.

**GAP-11 — aggregate decode and challenge serializer composition** — `HARD
(sol)` — `GATED` on GAP-08/09/10 and S2-19. Prove aggregate traversal covers
the landed exact G1/G2/`4+8μ` GT inventory with exact byte consumption, then
prove each challenge-stage Rust component concatenation equals the Lean
serializer used by `Ipp.ChallengeEncoding`. Acceptance: every deployed stage
constructor is covered and mutation fixtures reject. Retires
`assume.challenge-message-serialization-injective` for SnarkPack aggregate
messages and narrows any remaining arkworks row to non-aggregate consumers.

**GAP-14 — serialization/subgroup gate and ledger retirement** — `MECHANICAL
(luna)` — `GATED` on GAP-11. Gate decoder extraction freshness, malformed/
trailing/noncanonical/torsion fixtures, focused/full Lean builds, and axiom
audits; update `formal-handoff.md`. Acceptance: retire `arkworks serialization
and subgroup behavior` only for the fully proved BLS12-377 G1/G2/GT aggregate
boundary and state any other consumer explicitly. GAP-12 is not a dependency.

## Critical paths

The completed S2 path was:

`S2-19 -> S2-20 -> S2-21/S2-22 -> S2-30 -> S2-31 -> S2-32 -> S2-33 -> S2-34 -> S2-35 -> S2-36 -> S2-37 -> S2-38`,

with S2-23/24/25/26/27/28/29 joining before S2-30 or S2-34 as listed. S2
finishes without waiting for S3 because its theorem is parametric in the named
arithmetic effects.

The concrete-discharge path is:

`S3-01 -> S3-02/03 -> S3-04 -> S3-05 -> S3-06/07 -> S3-08/F02 re-decision -> S3-F03B..F05B -> S3-15 -> S3-16..22`,

then curve work `S3-23 -> S3-24/25` and `S3-26..32`, pairing work
`S3-33..40`, GAP-07/10, and finally S3-41. The decode path begins immediately
with GAP-02A and GAP-03A, joins the subgroup/conformance work at GAP-08/09/10,
then ends `GAP-11 -> GAP-14`.

S3 is a multi-month campaign even when expressed as 38 sessions after the F02
re-decision. The long
risks are the checked large-prime certificates, selecting a no-opaque field
backend, Fq6/Fq12 irreducibility and implementation conformance, complete
exceptional-branch curve formulas/MSM, and the optimized final-exponentiation
chain. The session split prevents any of those from becoming a weeks-long
undifferentiated task.

## Immediate serial dispatch

The historical S2 dispatch order was:

1. **S2-19** — luna, medium, one session: land the explicit verifier-core and
   effect boundary with Rust parity.
2. **S2-20** — luna, medium, one session: extract both public KZG cores.
3. **S2-21** — sol, high, one session: compose product evaluation with the G2
   equation theorem.
4. **S2-22** — sol, high, one session: compose the G1 public wrapper theorem.
5. **S2-23** — sol, medium, one session: finish the generated coefficient Vec
   bridge.

After these five, S2 dispatched S2-24, S2-26, S2-27, S2-28, and S2-29 before
the closed `verify_tipp_mipp` graph. The current field-route serial dispatch is
S3-F04B, S3-F05B, then the S3-15 integration/performance veto.

## Session count and owner questions

The scoped campaign contains **38 S3 sessions and 12 GAP sessions: 50 total
estimated Codex-session slots** after replacing former S3-09..14 with
S3-F03B..F05B. Completed items remain in that scope count; GAP-12 is deliberately
excluded.
There is no currently blocking owner question. Antoine's review/signoff is
needed when S3-23 pins the exact curve-order citations and when S3-41 retains
the cited pairing-mathematics row. The owner-delegated production field route
re-decision is complete: F01B is the sole selected route.

## MAC campaign

### Session 1 — invariant design and first closed bridge (2026-07-15)

Status: complete. The recovered Arkworks-path spike is re-landed as an
experimental test/feature surface, its parity test passes, and its complete
Hax/Aeneas closure is vendored in
`Ipp/Extracted/ArkworksFqMulGenerated.lean`. Production builds do not expose
the Rust spike unless `hax_compilation` or the `mac-campaign` feature is set.
The extraction command was:

```text
cargo hax into -v --output-dir /root/shieldd-mac-campaign-session1-20260715 \
  aeneas-lean \
  --charon-args=--start-from=crate::s3_07_arkworks_fq_spike::mul \
  --lakefile
```

The extracted closure is `mul -> round x6 -> mac`, followed by
`subtract_modulus -> geq_modulus/sbb`. Hax reported that it could not identify
the Aeneas revision, but the Lean package source in `.lake/packages/aeneas`
is the required `e0a159645386230102a2bf89b4df2dcd2140777e` revision.

The outer-loop invariant is committed verbatim as:

```lean
/-- Outer CIOS invariant for the extracted `(round index, accumulator)` state. -/
def roundInvariant (a b : LimbArray) (state : Nat × LimbArray) : Prop :=
  state.1 ≤ limbCount ∧
  limbsToNat state.2 < 2 * Ipp.Bls12377.baseModulus ∧
  Nat.ModEq Ipp.Bls12377.baseModulus
    (limbsToNat state.2 * wordBase ^ state.1)
    (prefixToNat b state.1 * limbsToNat a)
```

The full two-MAC-chain prefix invariant used to telescope one round is:

```lean
/-- Exact telescoping invariant for a prefix of one extracted CIOS round. -/
def macChainInvariant (r a : LimbArray) (b k : Nat)
    (state : MacChainState) : Prop :=
  state.count ≤ limbCount ∧
  state.reductionLows.length = state.count ∧
  (∀ low ∈ state.reductionLows, low < wordBase) ∧
  state.productCarry < wordBase ∧
  state.reductionCarry < wordBase ∧
  prefixToNat r state.count + b * prefixToNat a state.count +
      k * prefixToNat ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS state.count =
    lowListToNat state.reductionLows +
      (state.productCarry + state.reductionCarry) * wordBase ^ state.count
```

Closed lemmas in `Ipp/Extracted/ArkworksFqMul.lean`:

- `macModel_spec`: reusable Nat quotient/remainder specification, including
  both output-limb bounds and the exact `acc + x * y + carry` equation.
- `extracted_mac_eq_model`: executable Aeneas `mac` equals the Nat model under
  64-bit input bounds; all checked U128 operations are proved successful.
- `extracted_mac_spec` and `extracted_mac_result_spec`: direct Nat-level specs
  for the extracted result.
- `extracted_mac_with_carry_spec`: named carry-threading form of the same
  primitive. The recovered code has one four-argument `mac`; there is no
  separate extracted `mac_with_carry` function.
- `macChainInvariant_initial`: zero-prefix base case.
- `macChainInvariant_step`: one complete product-MAC plus reduction-MAC step
  preserves the exact telescoping invariant.
- `extracted_macChainInvariant_step`: applies two actual extracted `mac`
  executions and proves the same full-step preservation result.

Verification completed:

- Rust parity: 36 edge pairs plus 512 deterministic random pairs passed.
- Focused Lean: `lake build Ipp.Extracted.ArkworksFqMul` passed.
- Full Lean: `lake build Ipp` passed, 3406 jobs, with the pinned Lean 4.30.0
  lake and `LEAN_NUM_THREADS=1`.
- `#print axioms` for the model, bridge, and step theorems is exactly within
  `propext`, `Classical.choice`, and `Quot.sound`. There are no `sorry`s or
  declared axioms in the campaign Lean files.
- Prover, release, and release-gated tests were not run in session 1.

Session 2 must continue in this order:

1. Prove the constant facts: `limbsToNat MODULUS = baseModulus`, the low-limb
   `INV` relation, and that the chosen reduction factor makes the first
   reduction MAC's low result zero.
2. Instantiate `extracted_macChainInvariant_step` for all six limb positions,
   identify the six reduction lows with the shifted array returned by
   `round`, and close the exact round equation
   `wordBase * limbsToNat r' = limbsToNat r + b * limbsToNat a +
   k * baseModulus`.
3. Prove the final top-word addition is in range. The individual carry bounds
   do not alone show `productCarry + reductionCarry < wordBase`; use the exact
   chain equation and the modulus/input bounds.
4. Prove the round output bound `< 2q`, then the one-step `roundInvariant`
   transition and begin the six-round induction. Leave `sbb` and final
   subtraction for session 3 unless the round proof closes early.

Dead ends and load-bearing details:

- Do not replace the generated scoped runtime with global Aeneas
  `UScalarTy`/`Std.Array` definitions. Older checked-in generated modules carry
  incompatible local definitions. `Aeneas.Std.MacCampaign` is intentionally
  scoped and executable.
- `omega` does not normalize the distributive carry expression in the chain
  step. Expanding the two MAC equations and using `ring` closes the finite
  telescoping identity cleanly.
- Do not use `native_decide` for fixed shift facts: its generated-code axioms
  violate the audit. Kernel `decide` closes them with the allowed audit.
- The first Mathlib tactic import can rebuild roughly 2973 cached modules and
  took about 70 seconds. This was cache setup, not a hung Lean process.
- Continue to run exactly one pinned `lake` process at a time with
  `LEAN_NUM_THREADS=1`.

### Session 2 — constants, carry bound, and equation-driven transition (2026-07-15)

Status: honest partial. The arithmetic that historically blocked the round is
closed, but the final executable bridge from the unrolled extracted `round` to
the six-MAC trace is not. No invariant was weakened or reformulated.

Closed lemmas in `Ipp/Extracted/ArkworksFqMul.lean`:

- `modulus_limbsToNat`, `inv_val`, and
  `inv_mul_modulus_low_add_one_mod_wordBase` pin the concrete modulus and `INV`
  facts with kernel `decide`.
- `reductionFactor_modEq_zero` and its limb-zero specialization
  `reductionFactor_choice` prove that
  `r0 + x * a0 + k * q0 ≡ 0 (mod 2^64)` for the extracted choice of `k`.
- `firstReductionLow_eq_zero` turns that congruence and the reduction-MAC
  equation into the exact zero-low fact.
- `macChainInvariant_roundEquation` is the exact six-step telescope: once the
  completed chain state is identified with the shifted returned limbs, it
  yields
  `limbsToNat r' * wordBase = limbsToNat r + b * limbsToNat a + k * q`.
- `macChainInvariant_topCarry_lt` proves the combined product/reduction carry
  is below `wordBase` from the exact chain equation and input bounds. It does
  not add the two individual carry bounds.
- `roundNumerator_lt`, `roundEquation_bound`, and
  `roundEquation_output_lt` prove the no-division bound
  `limbsToNat r' * wordBase < 2 * q * wordBase`, hence `r' < 2q`.
- `roundInvariant_step_of_equation` advances the existing outer invariant from
  round `i` to `i + 1` by multiplying the exact equation by `wordBase ^ i` and
  reducing the `k * q` term modulo `q`.

The exact open lemma is the executable round specification:

```lean
theorem extracted_round_spec (r a : LimbArray) (b : MacCampaign.U64)
    (output : LimbArray)
    (hr : limbsToNat r < 2 * Ipp.Bls12377.baseModulus)
    (ha : limbsToNat a < Ipp.Bls12377.baseModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.round r a b = .ok output) :
    ∃ k, k < wordBase ∧
      limbsToNat output * wordBase =
        limbsToNat r + b.val * limbsToNat a +
          k * Ipp.Bls12377.baseModulus ∧
      limbsToNat output * wordBase <
        2 * Ipp.Bls12377.baseModulus * wordBase
```

The mathematical sublemmas needed by this statement are closed. The stuck
part is only identifying the 12 successful generated MAC results, the wrapped
`k`, the zero first reduction low, and the checked final `add64` with the six
limbs returned by the generated `round`. Three implementations were rejected:

- local nested model `let`s expand the entire preceding trace in every later
  type and make elaboration superlinear;
- one direct `rw`/`simp only` walk over `round` creates a proof term exceeding
  the kernel recursion guard, even with a raised local `maxRecDepth`;
- executable tail equalities split at rounds 0/1/4 still force the kernel to
  compare the reducible continuation bodies and hit the same recursion guard.

Session 3 must proceed in this order:

1. Close `extracted_round_spec` with opaque **Prop continuations**, not
   executable tail equalities. Slice after reduction 0 and reduction 3; each
   segment predicate should expose only its local product/reduction results and
   end in an opaque continuation. Compose the three semantic segment lemmas,
   then apply the already closed first-low, top-carry, shifted-lows, and round
   equation lemmas. Keep the generated file immutable.
2. Apply `roundInvariant_step_of_equation` six times to the generated `mul`
   rounds. Prove the zero-array base case, unfold `prefixToNat` at six, and
   conclude the pre-subtraction accumulator is `< 2q` and represents
   `limbsToNat a * limbsToNat b * wordBase⁻⁶ (mod q)`.
3. Specify `geq_modulus` as six-limb lexicographic comparison and `sbb` as an
   exact low-word/borrow step. Compose six `sbb` calls to prove
   `subtract_modulus value` returns `value` below `q` and `value - q` at or
   above `q`. Use the precondition `value < 2q` to prove the result is
   canonical and congruent to `value` modulo `q`.
4. Finish the decode capstone: combine the six-round congruence, the canonical
   subtraction result, and `baseMontgomeryRadix = wordBase ^ limbCount` to
   prove that decoding the extracted result equals the product of the decoded
   canonical inputs.

Session-2 verification:

- Focused Lean: `lake build Ipp.Extracted.ArkworksFqMul` passed, 2973 jobs.
- Full Lean: `lake build Ipp` passed, 3406 jobs.
- Both builds used the pinned Lean 4.30.0 `lake` and `LEAN_NUM_THREADS=1`.
- `#print axioms` for the new k-choice, top-carry, round-equation, and invariant
  transition lemmas is within `propext`, `Classical.choice`, and `Quot.sound`.
  There are no `sorry`s or declared axioms in the campaign Lean files.
- Prover, release, and release-gated tests were not run.

### Session 3 — executed round, outer loop, subtraction, and decode (2026-07-15)

Status: COMPLETE. The generated Fq multiplication path is connected to the
session-1/2 mathematics through its final decode theorem. The generated file
remains immutable.

Closed lemmas in `Ipp/Extracted/ArkworksFqMul.lean`:

- `extracted_round_spec` identifies a successful generated `round` with the
  proven six product/reduction MAC pairs, zero first reduction low, checked
  top carry, shifted return limbs, exact round equation, and `< 2q` bound.
- `extracted_sbb_spec`, `geqPrefix_spec`, and
  `extracted_geq_modulus_spec` specify the generated subtraction primitives.
  `extracted_subtract_modulus_spec` composes all six `sbb` calls and proves the
  output is canonical, congruent to the input, satisfies `q + output = input`
  in the subtracting branch, and is unchanged below `q`.
- `extracted_mul_spec` follows the generated `mul` bind chain, starts
  `roundInvariant` at the zero accumulator, applies
  `roundInvariant_step_of_equation` at indices 0 through 5, and composes the
  final conditional subtraction. It proves the canonical output and
  `output * wordBase^6 ≡ a * b (mod q)`.
- `wordRadix_eq_baseMontgomeryRadix` identifies `wordBase^6` with the S3-F00
  radix. `decode` is defined directly by S3-F00's `montgomeryDecode` relation.
- The capstone statement is:

  ```lean
  theorem decode_extracted_mul (a b output : LimbArray)
      (ha : limbsToNat a < Ipp.Bls12377.baseModulus)
      (hb : limbsToNat b < Ipp.Bls12377.baseModulus)
      (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.mul a b = .ok output) :
      decode output = decode a * decode b
  ```

Elaboration result: one generated bind at a time won. Each known `.ok` action
is replaced by its continuation equation before the next action is exposed.
Opaque Prop traces separate execution from arithmetic. The subtraction proof
also uses named pure helpers for the six-word telescope and generic final-borrow
consequences. Local finite heartbeat/depth settings are documented at the
generated bridges; no global project setting was raised.

F02 reopening facts:

- S3-F01B's executed-code theorem gate is PASSED for Arkworks-compatible Fq
  multiplication: successful execution of the extracted `mul` on canonical
  Montgomery inputs decodes to the product of their decoded values.
- S3-F03B subsequently closed executed-code conformance for Fq add, sub, neg,
  and the dedicated square path. Fq inverse, square root, and canonical byte
  encode/decode remain for S3-F04B; four-limb Fr refinement remains S3-F05B.

Session-3 verification:

- Focused Lean: `lake build Ipp.Extracted.ArkworksFqMul` passed, 2973 jobs,
  with the pinned Lean 4.30.0 `lake` and `LEAN_NUM_THREADS=1`.
- Full Lean: `lake build Ipp` passed, 3406 jobs, with the same pinned,
  single-threaded configuration.
- `#print axioms` for the round, subtraction, outer multiplication, and decode
  capstone theorems is exactly within `propext`, `Classical.choice`, and
  `Quot.sound`. There are no `sorry`s or declared axioms in the campaign Lean
  files.
- Prover, release, and release-gated tests were not run.

### S3-F04B-1 — GKP inverse loop and decode capstone (2026-07-16)

Status: COMPLETE. The generated Arkworks GKP binary extended-Euclidean loop is
proved through its successful nonzero path, and the selected canonical
coefficient decodes to the multiplicative inverse of the decoded input.

The hand-fixed, kernel-certified `extracted_half_coefficient_spec` bridge was
supplied by the orchestrator and retained unchanged. `CoefficientInvariant`
and `InvInvariant` carry the two Nat congruences, coefficient bounds,
positivity, and binary-GCD coprimality. `inv_loop0_loop0_body_spec` and
`inv_loop0_loop1_body_spec` prove the factor-of-two steps; their fueled
inductions return odd divisors and preserve initially odd states. The outer
`inv_loop0_body_spec` composes both strips and both subtraction branches,
preserves coprimality, and proves strict decrease of `u+v` on every
continuation. `inv_loop0_fuel_spec` and `inv_loop0_spec` connect the body proof
to the extracted loop runtime. `extracted_inv_spec` follows the generated
initialization and final coefficient selection. The capstone is:

```lean
theorem decode_extracted_inv (a output : LimbArray)
    (ha : limbsToNat a < modulus) (hne : a ≠ zeroArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.inv a =
      .ok (some output)) :
    decode output * decode a = 1
```

The existing `extracted_inv_zero` certifies the `none` branch.

F04B-1 verification:

- Focused Lean: `lake build Ipp.Extracted.ArkworksFqInv` passed with the pinned
  Lean 4.30.0 `lake` and `LEAN_NUM_THREADS=1`, both before proof work and after
  the capstone landed.
- Full Lean: `lake build Ipp` passed, 3410 jobs, with the same pinned,
  single-threaded configuration.
- The normal `cargo test -p ark-ip-proofs` run passed 36 unit tests and both Fq
  spike tests (2 ignored); the `hax_compilation` run passed 37 unit tests and
  both Fq spike tests (2 ignored).
- `#print axioms` for both inner body lemmas, the outer body/fueled-loop
  theorems, and `decode_extracted_inv` reports exactly `propext`,
  `Classical.choice`, and `Quot.sound`. The inverse proof file has no `sorry`
  and declares no axioms.

F04B-2 remains exactly the Fq square-root and canonical byte encode/decode
paths; no F04B-2 content is claimed here.

### S3-F04B-2 — executed Fq square root and canonical bytes (2026-07-16)

Status: COMPLETE. The monomorphic Rust and scoped Aeneas extraction are landed,
and the square-root and byte-decoding paths are kernel-certified. BLS12-377 Fq has
`q ≡ 1 (mod 4)` and 2-adicity 46, so ark-ff 0.5.0 selects its precomputed
Tonelli--Shanks path with generator 15, the configured two-adic root of unity,
and exponent `(t - 1) / 2`. `Field::sqrt` returns that deterministic algorithm
output directly; arkworks does not apply an even, lexicographically-small, or
otherwise canonical sign normalization.

`decode_extracted_sqrt` proves that every returned root squares to the decoded
input. `extracted_sqrt_zero` proves zero maps to zero. The proof follows the
F04B-1 `LoopFuel` discipline through `pow_inner_body_spec`,
`pow_outer_body_spec`, `square_for_body_spec`, `sqrt_step_some_spec`, and
`sqrt_loop_body_spec`, with separate fueled-loop lemmas and no generated-body
mega-simplification.

The raw byte path is exactly six little-endian `u64` limbs (48 bytes), with a
strict integer `< q` check before Montgomery conversion on read.
`bytes_to_word_spec` proves each eight-byte word's agreement with GAP-01
`decodeLE`; `extracted_from_bytes_rejects_noncanonical` and
`extracted_from_bytes_accepts_canonical` prove the comparison branches;
`decode_from_bytes_conversion` proves the accepted Montgomery conversion.
`asFqWire_value` identifies the extracted byte array with GAP-01's `FqWire`.
`bytes_to_limbs_value_spec` regroups the 48 little-endian byte terms into the
six extracted limbs:

```lean
bytes_to_limbs bytes = .ok value ->
  limbsToNat value = CanonicalWire.decodeLE bytes.val
```

Together with `from_bytes_decodeFqCanonical_bridge_of_value`, it yields the
unconditional `from_bytes_decodeFqCanonical_bridge` consumed by GAP-08.

For square-root spec conformance, GAP-02A's `sqrtFq` is definitionally the
extracted bounded Tonelli--Shanks implementation applied to the unique
canonical Montgomery representation. `extracted_sqrt_sqrtFq` proves exact
result agreement for every successful extracted `Result`, including both its
`some` and `none` `Option` outcomes; `sqrtFq_zero` preserves the existing zero
theorem. This is structural algorithm conformance, not a Tonelli--Shanks
completeness proof. In particular, no `none`-implies-nonresidue or converse
theorem is claimed. Decoder correctness uses returned-root soundness,
determinism, and spec conformance, which is sufficient for injectivity and
GAP-08. F04B-2 is done and S3-F05B is next and unblocked.

F04B-2 verification:

- Normal and `hax_compilation` focused parity tests both pass all four tests,
  covering zero, one, QR/QNR pairs, exact returned roots, `q`, all-ones and
  spare-bit rejection, byte round-trips, and 512 deterministic random cases.
- Full normal Rust passes 36 unit tests (2 ignored) plus all four Fq parity
  tests; full `hax_compilation` Rust passes 37 unit tests (2 ignored) plus all
  four Fq parity tests.
- Focused pinned single-threaded `lake build
  Ipp.Extracted.ArkworksFqSqrtBytes` passes (2990 jobs); the focused GAP-02A
  G1/G2 decoder and injectivity targets also pass (2995 jobs).
- Full pinned single-threaded `lake build Ipp` passes (3412 jobs).
- `#print axioms` for `bytes_to_limbs_value_spec`,
  `from_bytes_decodeFqCanonical_bridge`, and `extracted_sqrt_sqrtFq` reports
  exactly `propext`, `Classical.choice`, and `Quot.sound`; the changed Lean
  files contain no `sorry` and declare no axioms.
- Prover, release, and release-gated tests were not run.
