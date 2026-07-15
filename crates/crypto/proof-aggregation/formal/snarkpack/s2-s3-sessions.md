# S2/S3 completion work order

Date: 2026-07-14. Status: S2-19..38 complete as of 2026-07-15; the code is
the authority and the S2 task text below is retained as the execution record.
S1, GAP-00/01/04, the
finite Aeneas loop semantics, S2-01/03/07/10/11, the S2-08/09 generic equation
kernels, and S3-C01/C02/P00 are landed and are not repeated as tasks.

## S2-19..38 completion status

S2-19 through S2-38 are **DONE**. The S2-38 gate is green: hax target/source
completeness, generated-artifact freshness, extracted-directory shim scan,
named refinement-theorem presence, focused Lean builds, the named axiom audit,
one full `lake build Ipp`, and the Rust test pass all completed. S3 and GAP
tracks below remain planned work; their task text is unchanged.

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

**S3-07 — F01B monomorphic arkworks feasibility slice** — `HARD (sol)` —
`GATED` on S3-05 and S2-19's extraction discipline. Extract one concrete Fq
four-limb multiply/reduce wrapper and prove range preservation plus
`decode (mul a b)=decode a*decode b`. Acceptance: the theorem covers the
executed carry/reduction closure with no unsafe/assembly/result assumption; a
mere wrapper theorem fails the session. This is evidence for F02 only.

**S3-08 — F02 single field-route decision** — `MECHANICAL (luna)` — `GATED`
on S3-06/07. Select F01A unless only F01B meets the no-opaque-boundary and
whole-stack compatibility criteria; use deterministic SnarkPack release
corpus measurements as a performance veto, record proof bytes/traces and
hardware, delete the rejected spike, and name the one `Field377` facade and
representation relation used below. Acceptance: one production path and one
proof path remain. Narrows no ledger row by itself.

**S3-09 — Fq representation and basic operations** — `HARD (sol)` — `GATED`
on S3-08. Prove the selected facade's Fq limb invariant, Montgomery encode/
decode, constants, add, sub, and neg against `ZMod baseModulus`. Acceptance:
all carry branches and output ranges are covered in the extracted/generated
implementation theorem. Begins retiring the base-field portion of the
arkworks arithmetic row.

**S3-10 — Fq multiplication and square** — `HARD (sol)` — `GATED` on S3-09.
Prove executed Fq multiplication, reduction, and square refine `ZMod`
multiplication, including word-overflow semantics and range preservation.
Acceptance: cross-backend edge/random vectors and focused proof checks pass.
Narrows the base-field operation row.

**S3-11 — Fq inversion, square root, and bytes** — `HARD (sol)` — `GATED` on
S3-10. Prove the executed fixed chains and canonical Fq encode/decode, with
zero, nonresidue, sign, spare-bit, and noncanonical failures explicit.
Acceptance: theorem covers every Fq path reached by curve decode/pairing and
composes with GAP-01. Retires the remaining Fq portion of the arkworks field
row and narrows serialization.

**S3-12 — Fr representation and basic operations** — `HARD (sol)` — `GATED`
on S3-08. Prove the selected facade's Fr representation, constants, encode/
decode, add, sub, and neg against `ZMod scalarModulus`. Acceptance mirrors
S3-09. Narrows the scalar-field portion of the arkworks arithmetic row.

**S3-13 — Fr multiplication and square** — `HARD (sol)` — `GATED` on S3-12.
Prove executed Fr multiply/reduce/square with all ranges and machine-word
semantics. Acceptance: deterministic vectors and focused proof checks pass.
Narrows the scalar-field operation row.

**S3-14 — Fr inversion, powers, and bytes** — `HARD (sol)` — `GATED` on
S3-13. Prove inversion, exponentiation paths used by the verifier, and
canonical Fr bytes, including zero/failure behavior. Acceptance: the S2
scalar adapter laws instantiate from these theorems. Retires the remaining Fr
portion of the arkworks field row.

**S3-15 — `Field377` integration gate** — `MECHANICAL (luna)` — `GATED` on
S3-09 through S3-14. Expose the one proved Fq/Fr facade to S2 and later S3
modules, run complete arithmetic vectors, normal/hax tests, focused/full Lean
checks, and axiom audits. Acceptance: no rejected route or bypass conversion
remains. Retires the prime-field portion of
`arkworks field/group/pairing mathematical operation implementations`.

**S3-16 — Fq2 implementation refinement** — `HARD (sol)` — `GATED` on S3-15.
Prove the executed Fq2 representation and add/sub/neg/mul/square against
`QuadraticAlgebra Fq (-5) 0`; include component order used by arkworks and
canonical bytes. Acceptance: no operation used by G2 or the extension tower is
opaque. Narrows the extension-field and serialization rows.

**S3-17 — Fq2 inverse, square root, and Frobenius** — `HARD (sol)` — `GATED`
on S3-16. Prove the exact inverse/sqrt/sign-selection/Frobenius paths, including
zero and nonsquare failures. Acceptance: GAP-03 can instantiate its executed
decoder operations and focused checks pass. Retires the Fq2 portion of the
arkworks field row.

**S3-18 — Fq6 irreducibility and canonical field model** — `HARD (sol)` —
`GATED` on S3-17. In `Ipp/Bls12377Pairing.lean` or a focused tower module,
prove `v^3-u` irreducible using a checked noncube/factorization certificate,
construct the canonical Fq6 field, and prove `Fq6Model` coefficient/multiply
equivalence. Acceptance: a `Field` instance is derived, not postulated.
Retires the Fq6 mathematical-foundation gap needed by GAP-07.

**S3-19 — executed Fq6 conformance** — `HARD (sol)` — `GATED` on S3-18.
Prove all reached Fq6 add/mul/square/sparse/inverse/Frobenius routines refine
the canonical field model. Acceptance: line evaluation and final exponentiation
have no unproved Fq6 primitive. Narrows the pairing implementation row.

**S3-20 — Fq12 irreducibility and canonical field model** — `HARD (sol)` —
`GATED` on S3-19. Prove `w^2-v` irreducible with a checked nonsquare
certificate, construct the canonical Fq12 field, and prove `Fq12Model`
coefficient/multiply/power equivalence. Acceptance: multiplicative group and
field cardinality are available without an axiom. Retires the mathematical
foundation gap for GT.

**S3-21 — executed Fq12 conformance** — `HARD (sol)` — `GATED` on S3-20.
Prove reached Fq12 add/mul/square/sparse/conjugate/inverse/Frobenius/
cyclotomic operations and canonical bytes against the field model. Acceptance:
all primitives used by Miller, final exponentiation, GAP-04/07, and GT
validation are covered. Retires the Fq12 portion of the arkworks field row.

**S3-22 — GT factorization and order-r characterization** — `HARD (sol)` —
`GATED` on S3-20 and S3-02/03. Prove `r ∣ q^12-1`, record the exact cofactor
and gcd facts, define the intended GT as `{x : Fq12ˣ | x^r=1}`, and prove it
has order `r` using finite-field cyclicity. Acceptance: zero versus
multiplicative identity and arkworks `PairingOutput` additive notation are
explicit. Supplies GAP-07 and narrows the subgroup portion of the arkworks row.

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

**S3-26 — executed G1 add/double/neg formulas** — `HARD (sol)` — `GATED` on
S3-15 and the landed C02 relations. Extract the selected monomorphic G1
affine/projective/mixed formulas and prove refinement to Mathlib addition,
doubling, and negation across infinity, equal, opposite, and zero-Z branches.
Acceptance: equality is of represented point classes. Narrows the group
portion of the arkworks arithmetic row.

**S3-27 — executed G2 add/double/neg formulas** — `HARD (sol)` — `GATED` on
S3-17 and landed C02. Prove the exact twist formulas across the same exceptional
branches. Acceptance mirrors S3-26. Narrows the G2 group-operation row.

**S3-28 — scalar-multiplication loops** — `HARD (sol)` — `GATED` on S3-26/27.
Prove the executed G1 and G2 scalar-bit loop invariant and instantiate it to
`k • p`, including zero scalar, identity, leading zeros, and full Fr width.
Acceptance: one generic loop theorem plus two concrete corollaries. Narrows
group arithmetic and supplies S2 scalar-action adapters.

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

`S3-01 -> S3-02/03 -> S3-04 -> S3-05 -> S3-06/07 -> S3-08 -> S3-09..15 -> S3-16..22`,

then curve work `S3-23 -> S3-24/25` and `S3-26..32`, pairing work
`S3-33..40`, GAP-07/10, and finally S3-41. The decode path begins immediately
with GAP-02A and GAP-03A, joins the subgroup/conformance work at GAP-08/09/10,
then ends `GAP-11 -> GAP-14`.

S3 is a multi-month campaign even when expressed as 41 sessions. The long
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

After these five, dispatch S2-24, S2-26, S2-27, S2-28, and S2-29 before the
closed `verify_tipp_mipp` graph. If S2 is externally paused, the first
independent NOW work is S3-01, S3-23, GAP-02A, and GAP-03A in that serial order.

## Session count and owner questions

Remaining mandatory work is **41 S3 sessions and 12 GAP sessions: 53 total
estimated Codex sessions**. GAP-12 is deliberately excluded.
There is no currently blocking owner question. Antoine's review/signoff is
needed when S3-23 pins the exact curve-order citations, when S3-08 selects the
production field route, and when S3-41 retains the cited pairing-mathematics
row, but the preceding work can start without those decisions.
