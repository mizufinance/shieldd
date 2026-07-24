# SnarkPack RIPP Review Spec

Status: Shieldd-local implementation spec, checked against Filecoin v2
transcript bug classes and used by `ripp-refinement.md`.
This is not a mechanized proof and not an independently invented SnarkPack
specification.

In this document, "RIPP" means the local proof stack under
`crates/crypto/proof-aggregation/src/ipp/ip_proofs/src`: GIPA, TIPP/MIPP,
TIPA helper primitives, and the Groth16 aggregation adapter.

Filecoin SnarkPack v2 is the reference for Fiat-Shamir omission/reordering bug
classes and transcript discipline. The normative SnarkPack-shape source is
Bellperson `v0.21.0` at peeled commit
`62c362fd46ca2139747b8770bae53ce6f1e42bb1`; rust-fil-proofs
`filecoin-proofs-v11.1.0` at commit
`004d7b4244c469e0d9aeebf15f9a81ef60308ba3` is production-consumer evidence
for the Filecoin Network v16 Skyr release. The Shieldd-local spec is
authoritative for BLS12-377, hash/domain choices, statement binding, padding,
SRS/VK binding, and aggregate-bundle integration. No cross-curve byte-level
equivalence to Filecoin is claimed.

## Comparison Levels

Every spec row/event has exactly one primary required comparison level.
Secondary checks can provide evidence, but they do not satisfy the row's gate.
The shared trace policy table in
`crates/crypto/proof-aggregation-trace-schema` must match the Spec Row Index
below.

- `shieldd-byte`: exact bytes hashed or serialized by Shieldd; required
  between Shieldd reference and optimized paths.
- `abstract-trace`: typed event order, labels, challenge dependencies, round
  schedule, object roles, and verifier equation roles.
- `filecoin-shape`: abstract dependency-shape comparison against Filecoin v2
  bug classes only.
- `shieldd-local`: Shieldd-only integration behavior with no Filecoin
  comparison target.

Default primary-level policy:

- Shieldd challenge preimages, statement bytes, wrapper bytes, SRS/VK digest
  inputs, and public-input framing use `shieldd-byte`.
- GIPA/TIPA/Groth16 round structure and verifier equation roles use
  `abstract-trace` unless exact Shieldd bytes are hashed at that step.
- Filecoin-specific bug-class checks use `filecoin-shape`.
- Shieldd-only app integration and aggregate-bundle routing use
  `shieldd-local` evidence in the refinement/adaptation maps.

Rows whose primary level is `abstract-trace` may consume objects whose byte
binding is established by upstream `shieldd-byte` rows. In that case, the
abstract row gates only the equation or event role; the upstream byte rows gate
canonical framing and byte-to-object binding.

### S2 executed-core refinement boundary

For the covered verifier orchestration, the abstract-trace/review-only evidence
is replaced by the named Lean theorem list in
`formal/snarkpack/s2-refinement-theorems.txt`. The executed core refines
`Ipp.FsAccepts` only under the named challenge-serializer/digest trace boundary,
  the explicit `OrderedMsmConformance` premise (now limited to the final
  monomorphic wrapper composition, production-copy identification, and retained
  Rayon correspondence), the commitment and
pairing-effect interpretation laws targeted by S3-41, and Rust parity tests for
the concrete delegators. The theorem list does not prove S3 arithmetic,
serialization/subgroup behavior, hash-as-a-random-oracle, KZG binding, or
pairing-commitment binding; those remain separate ledger assumptions.

### How each level is verified

The level determines the verification mechanism, not just the evidence standard.
This complements the deviation-class table in [Minimum Evidence Per Refinement
Row](#minimum-evidence-per-refinement-row): that table says what evidence a
refinement row needs; this says what tool checks a spec row at each level.

- `shieldd-byte` — **golden byte baselines** (the recorded trace fixtures in
  `proof-aggregation-reference`, e.g. `shieldd_byte_trace_baseline.txt`) plus,
  where extracted, **F\* boundary proofs** of preimage layout and injectivity.
  Any byte drift breaks a baseline.
- `abstract-trace` — the **Lean shape oracle** in
  `proof-aggregation-lean-conformance`, which independently re-derives the
  expected event/equation shape from this spec, and the implementation's emitted
  trace is asserted equal to it; plus **mutation matrices** (mutate an input,
  require rejection) and equation review. Arithmetic stays abstract; only
  structure is compared.
- `filecoin-shape` — review against the pinned Bellperson `v0.21.0` source,
  recorded in `filecoin-divergence-findings.md`. No byte or trace equality is
  claimed.
- `shieldd-local` — integration tests and adaptation/refinement evidence. **No
  RIPP row in this spec uses this level**; Shieldd-only app-integration rows
  (bundle routing, preflight, action rejection) live in the adaptation register,
  not here.


## Component Specs

The sections below walk the algorithm **top-down**, from the most abstract entry
point to the primitive it rests on: the Groth16 aggregation adapter calls the
combined TIPP/MIPP argument, which runs GIPA, which consumes Fiat-Shamir
challenges. Each section is self-contained (role, comparison levels, equations,
required checks) so a reviewer can audit one subtree at a time.

The prose and pseudocode here are the **model of record**: the executable Lean
shape oracle in `proof-aggregation-lean-conformance` is transcribed from these
sections, and refinement reviewers check the Rust against them. No gate parses
the pseudocode — it is verified by being the source the Lean oracle and the
review map point back to.

In each section, **Primary comparison levels** is the terse `row → level`
registry (the level meanings are defined once under [Comparison
Levels](#comparison-levels)), and **Required checks** carries the concrete
obligations, each tagged with the row id(s) it discharges. A check that spans
several rows names all of them; a `(precondition)` check is one this section does
not perform but is allowed to assume because an earlier layer (preflight, arity,
wrapper decode) already enforced it. So a row's level lives in one place and its
obligations in another, joined by the id; a `shieldd-byte` row with no tagged
byte-equality check is a visible gap.

## Groth16 Aggregation Adapter Spec

Implementation file:
`crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs`.

Source basis: paper algebra plus Shieldd public-input, family, and transcript
adaptations.

Primary comparison levels:

- `groth16.randomizer`: `shieldd-byte`
- `groth16.folded-inputs`: `abstract-trace`
- `groth16.ppe`: `abstract-trace`

Inputs:

```text
proof_i = (A_i, B_i, C_i)
vk = (alpha_g1, beta_g2, gamma_g2, delta_g2, gamma_abc_g1)
public_inputs_i
```

Prover:

```text
A = [A_i]
B = [B_i]
C = [C_i]

com_a = pairing_inner_product(A, ck_1)
com_b = pairing_inner_product(ck_2, B)
com_c = pairing_inner_product(C, ck_1)

r = Fiat-Shamir(com_a, com_b, com_c)
r_vec = [1, r, r^2, ..., r^(n-1)]
B_r = [B_i * r^i]
ip_ab = sum_i e(A_i, B_i * r^i)
agg_c = sum_i C_i * r^i
ck_2_r_inv = [ck_2_i * r^-i]

tipp_mipp proves both ip_ab over (A, B_r) and agg_c over (C, r_vec)
with one shared GIPA transcript, shared ck_1, shifted ck_2_r_inv, one final
bridge, and one KZG challenge.
```

Verifier:

```text
r = Fiat-Shamir(com_a, com_b, com_c)
verify combined tipp_mipp proof using tipp-mipp.* labels

r_sum = 1 + r + ... + r^(n-1)
folded_inputs_j = sum_i public_inputs_i[j] * r^i
g_ic = gamma_abc_g1[0] * r_sum
     + sum_j gamma_abc_g1[j + 1] * folded_inputs_j

accept iff:
  tipp_mipp_valid
  && e(alpha_g1 * r_sum, beta_g2)
     * e(g_ic, gamma_g2)
     * e(agg_c, delta_g2)
     == ip_ab
```

Required checks:

- (`groth16.randomizer`) prover and verifier derive `r` from exactly `com_a`,
  `com_b`, `com_c`
- (`groth16.randomizer`) the randomizer rejects degenerate `r == 0` and `r == 1`
  and re-derives under the next nonce: `r == 0` breaks inverse-power rescaling,
  `r == 1` collapses the position weights and defeats inter-proof anti-mixing.
  This diverges from Filecoin/bellperson, which adds no such guard; tracked in
  the adaptation register
- (`groth16.randomizer`) `x0` binds `r`, `com_a`, `com_b`, `com_c`, `ip_ab`, and
  `agg_c`
- (`groth16.folded-inputs`) `r_vec` order matches public-input folding and
  `agg_c`
- (`groth16.folded-inputs`) `ck_2_r_inv` uses inverse powers matching the shifted
  combined prover
- (`groth16.ppe`) the single GIPA proof carries both AB and C round commitments
  under one shared challenge stream
- (`groth16.ppe`) the final bridge is derived before the KZG challenge and binds
  final keys plus final base messages
- (`groth16.folded-inputs`, consuming upstream statement `shieldd-byte` rows)
  byte binding of public inputs to field elements is covered upstream; this
  section checks only the folding equation
- (precondition) confirm every path into this backend passes the preflight arity
  check first; this section assumes valid arity and does not re-check it
- (precondition) confirm malformed or mutated combined proof, KZG opening, public
  input, or PPE input is rejected upstream (preflight and wrapper decode) before
  reaching this section, not relied on here

## Combined TIPP/MIPP Spec

Implementation file:
`crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs`;
KZG helper primitives live in
`crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/tipa/mod.rs`.

Source basis: SnarkPack paper algebra plus Bellperson v2's combined
TIPP/MIPP transcript discipline, adapted to Shieldd SRS, curve, and challenge
framing.

Primary comparison levels:

- `tipa.srs`: `abstract-trace`
- `tipp-mipp.x0-seed`: `shieldd-byte`
- `tipp-mipp.gipa`: `abstract-trace`
- `tipp-mipp.final-bridge`: `shieldd-byte`
- `tipp-mipp.kzg-challenge`: `shieldd-byte`
- `tipp-mipp.kzg-equations`: `abstract-trace`
- `tipp-mipp.power-sequence`: `abstract-trace`
- `tipp-mipp.base-equations`: `abstract-trace`

SRS:

```text
g_alpha_powers = [g * alpha^i] for i in 0..2n-2
h_beta_powers  = [h * beta^i]  for i in 0..2n-2
g_beta = g * beta
h_alpha = h * alpha
```

Combined prover:

1. Computes the aggregate randomizer `r` from `com_a`, `com_b`, and `com_c`.
2. Forms `r_vec = [1, r, r^2, ...]`, `B_r = [B_i * r^i]`,
   `ip_ab = <A, B_r>`, and `agg_c = <C, r_vec>`.
3. Derives `x0` from:

```text
r
|| com_a
|| com_b
|| com_c
|| ip_ab
|| agg_c
```

4. Runs one GIPA loop over both relations. Each round emits one `(L, R)` pair
   whose commitment object contains the AB pairing-commitment triple and the C
   multiexponentiation commitment pair. The challenge input is the prior raw
   challenge plus both round commitment objects under stage
   `tipp-mipp.gipa.round`.
5. Folds the shared key `v` with the AB/TIPP challenge and folds the shifted
   key `w` with the inverse challenge. The C path reuses `v`.
6. Derives the final bridge challenge from:

```text
last_gipa_challenge
|| v_final
|| w_final
|| A_final
|| B_final
|| C_final
```

7. Derives one KZG challenge from the final bridge and final keys, opens `v`
   once and `w` once, and stores `(A_final, B_final, C_final)` in the proof.

Combined verifier:

1. Recomputes `r`, `x0`, every shared GIPA challenge, and the folded AB/C
   commitments from the single proof object.
2. Recomputes final keys from the shared transcript and verifies the stored
   final keys through one KZG challenge stage.
3. Checks the terminal base equations:

```text
<A_final, v_final> == folded com_a
<w_final, B_final> == folded com_b
<A_final, B_final> == folded ip_ab
<C_final, v_final> == folded com_c
C_final * r_final == folded agg_c
```

Required checks:

- (`tipp-mipp.x0-seed`, `tipp-mipp.gipa`, `tipp-mipp.final-bridge`,
  `tipp-mipp.kzg-challenge`) prover and verifier serialize the same `x0`, round,
  final-bridge, and KZG challenge preimages in the same order
- (`tipp-mipp.gipa`) every round challenge cross-binds both the AB and C
  commitments
- (`tipp-mipp.final-bridge`) final bridge binds the last GIPA challenge, final
  keys, and final messages
- (`tipp-mipp.kzg-equations`) `v` is opened once and reused by both the TIPP and
  MIPP base equations
- (`tipp-mipp.kzg-equations`) affine/projective KZG opening paths match
- (`tipp-mipp.kzg-equations`) transcript polynomial coefficients match the
  product-form evaluation
- (`tipp-mipp.kzg-equations`) verifier KZG equations use the correct source group
  and shift for each final key
- (`tipp-mipp.power-sequence`) shifted-SRS path accounts for `r` and its inverse
  consistently
- (`tipp-mipp.base-equations`) the final structured scalar for the C relation
  matches the shared raw transcript

## GIPA Spec

Implementation file:
`crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/gipa.rs`.

Source basis: paper algebra plus local implementation. Fiat-Shamir dependency
rows additionally import Filecoin v2 transcript discipline.

Primary comparison levels:

- `gipa.input-relation`: `abstract-trace`
- `gipa.round-folding`: `abstract-trace`
- `gipa.challenge-dependency`: `shieldd-byte`
- `gipa.verifier-folding`: `abstract-trace`

Input relation:

```text
IP(a, b) = t
ComA = CommitA(ck_a, a)
ComB = CommitB(ck_b, b)
ComT = CommitT(ck_t, t)
len(a) = len(b) = len(ck_a) = len(ck_b) = power_of_two
```

Prover round for `n > 1`, using local split conventions:

```text
split = n / 2
a1 = a[split..]       a2 = a[..split]
b1 = b[..split]       b2 = b[split..]
ck_a1 = ck_a[..split] ck_a2 = ck_a[split..]
ck_b1 = ck_b[split..] ck_b2 = ck_b[..split]

L = (
  CommitA(ck_a1, a1),
  CommitB(ck_b1, b1),
  CommitT(ck_t, IP(a1, b1))
)

R = (
  CommitA(ck_a2, a2),
  CommitB(ck_b2, b2),
  CommitT(ck_t, IP(a2, b2))
)
```

Challenge conversion:

```text
x = scalar_from_first_128_bits_be(challenge_digest(...))
require x != 0
c = x^-1
c_inv = x
```

The swap is a local convention used to keep one folded side cheap for
multiexponentiation. It is acceptable only if prover and verifier use the same
convention.

Fold:

```text
a'    = c     * a1    + a2
b'    = c_inv * b2    + b1
ck_a' = c_inv * ck_a2 + ck_a1
ck_b' = c     * ck_b1 + ck_b2
```

The prover records `(L, R)` each round, then reverses the proof round list and
challenge transcript before returning.

Verifier:

```text
for proof rounds in reverse proof order:
  recompute c, c_inv from prior transcript value and (L, R)
  ComA = c * L.ComA + ComA + c_inv * R.ComA
  ComB = c * L.ComB + ComB + c_inv * R.ComB
  ComT = c * L.ComT + ComT + c_inv * R.ComT

derive final ck_a_base, ck_b_base from the transcript exponents
verify:
  CommitA(ck_a_base, [a_base]) == ComA
  CommitB(ck_b_base, [b_base]) == ComB
  CommitT(ck_t, [IP(a_base, b_base)]) == ComT
```

Required checks:

- (`gipa.challenge-dependency`) prover and verifier serialize the same prior
  transcript value and `(L, R)` tuple in the same order
- (`gipa.verifier-folding`) proof round reversal matches verifier iteration
- (`gipa.round-folding`) final commitment-key exponent formulas match the fold
  equations
- (`gipa.input-relation`) base commitment check recomputes `IP(a_base, b_base)`
- (`gipa.round-folding`) parallel rescale path is equation-identical to
  sequential rescale

## Fiat-Shamir Challenge Spec

Implementation file:
`crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/challenge.rs`.

Source basis: Shieldd adaptation plus Filecoin v2 transcript omission and
ordering bug classes.

Primary comparison levels:

- `fs.context-constructor`: `shieldd-byte`
- `fs.challenge-preimage`: `shieldd-byte`
- `fs.stage-labels`: `shieldd-byte`
- `fs.filecoin-bug-class`: `filecoin-shape`

Context:

- `ChallengeContext = SHA256("shieldd.snarkpack.challenge_context.v1\0" ||
  statement_digest)`.
- The context has no public constructor except `from_statement_digest`.

Challenge preimage:

```text
"shieldd.snarkpack.challenge.v1\0"
|| u32_le(stage_label.len())
|| stage_label
|| challenge_context[32]
|| u64_le(nonce)
|| messages
```

Required checks:

- (`fs.context-constructor`) no call site can omit `ChallengeContext`
- (`fs.context-constructor`) no thread-local fallback exists
- (`fs.challenge-preimage`) nonce starts at `0` and increments only when
  challenge decoding fails
- (`fs.stage-labels`) stage labels are stable:
  - `aggregate.randomizer`
  - `tipp-mipp.x0`
  - `tipp-mipp.gipa.round`
  - `tipp-mipp.final-bridge`
  - `tipp-mipp.kzg`
- (`fs.context-constructor`, `fs.challenge-preimage`, `fs.stage-labels`) prover
  and verifier traces are byte-identical for accepted proofs
- (`fs.filecoin-bug-class`) transcript dependency shape is reviewed against the
  Filecoin v2 omission/reorder bug classes in `filecoin-divergence-findings.md`

Stage labels (the `b"…"` bytes hashed at each challenge) are a distinct
namespace from the Spec Row Index ids. Crosswalk (stage label ↔ spec-row
id), written as bullets so the index parser does not read them as rows:

- stage `tipp-mipp.x0` ↔ row `tipp-mipp.x0-seed`
- stage `tipp-mipp.gipa.round` ↔ row `tipp-mipp.gipa`
- stage `tipp-mipp.final-bridge` ↔ row `tipp-mipp.final-bridge`
- stage `tipp-mipp.kzg` ↔ row `tipp-mipp.kzg-challenge`

`verification.md` (TXN-M2 per-stage hashed-input table) references stage labels;
`filecoin-divergence-findings.md` references spec-row ids. Both are correct for
their context — use this crosswalk to move between them.

Filecoin v2 bug-class checklist:

- no omitted first-round transcript hash
- no omitted final randomness dependency
- no reorderable public messages
- no hidden/default transcript context
- prover and verifier consume equivalent challenge inputs


## What This Spec Does Not Prove

This spec does not prove:

- Groth16 soundness
- SnarkPack/RIPP/GIPA/TIPA algebraic soundness
- Fiat-Shamir/random-oracle security
- arkworks field/group/pairing/MSM/serialization correctness
- hax semantic preservation

Those are tracked as standing assumptions in
`formal-handoff.md`. End-to-end formal verification is out of
scope; algebraic soundness is assumed from the paper and the Filecoin
implementation and probabilistically cross-checked by Lean differential
conformance (verification.md ALG-I4).

## Spec Row Index

Flat registry of every spec row for lookup and trace-schema matching — not a
reading order. The component specs above are the top-down walk; this table is
the gate-checked source the trace-schema policy table must match.

| spec_row_id | source basis | primary_required_comparison_level | required evidence |
| --- | --- | --- | --- |
| `fs.context-constructor` | Shieldd adaptation; Filecoin v2 transcript context bug class | `shieldd-byte` | F* challenge-context row; invariant guard against alternate constructors |
| `fs.challenge-preimage` | Shieldd adaptation; Filecoin v2 ordered transcript-input bug class | `shieldd-byte` | F* challenge-preimage row; golden layout test |
| `fs.stage-labels` | Shieldd adaptation; Filecoin v2 domain-separation discipline | `shieldd-byte` | prover/verifier trace parity and stage-label review |
| `fs.filecoin-bug-class` | Bellperson `v0.21.0` Filecoin v2 transcript hardening, with rust-fil-proofs `filecoin-proofs-v11.1.0` as production-consumer evidence | `filecoin-shape` | `filecoin-divergence-findings.md` review against pinned Filecoin v1/v2 sources |
| `gipa.input-relation` | paper algebra and local implementation | `abstract-trace` | equation review and unit/property evidence |
| `gipa.round-folding` | paper algebra and local implementation | `abstract-trace` | equation review and prover/verifier trace evidence |
| `gipa.challenge-dependency` | Shieldd challenge helper and Filecoin v2 transcript-input discipline | `shieldd-byte` | trace parity over exact Shieldd challenge bytes |
| `gipa.verifier-folding` | paper algebra and local implementation | `abstract-trace` | `Ipp.Extracted.final_commitment_keys_refinement`, `final_commitment_keys_foldKey_corollaries`, and `verify_base_commitment_refinement`, conditional on MSM/commitment-effect laws; Rust delegator parity |
| `tipa.srs` | paper algebra and Shieldd SRS adaptation | `abstract-trace` | SRS dimension tests and refinement review |
| `tipp-mipp.x0-seed` | SnarkPack paper and Bellperson v2 combined transcript seed | `shieldd-byte` | trace parity over exact Shieldd seed bytes and x0-omission mutant |
| `tipp-mipp.gipa` | paper algebra and local combined TIPP/MIPP implementation | `abstract-trace` | `Ipp.Extracted.verify_tipp_mipp_refinement_statement` and its named round/fold support theorems; challenge trace and delegator parity remain separate |
| `tipp-mipp.final-bridge` | Bellperson v2 final-randomness link | `shieldd-byte` | trace parity over exact Shieldd bridge bytes and final-bridge mutant |
| `tipp-mipp.kzg-challenge` | Shieldd challenge helper and Filecoin v2 transcript-input discipline | `shieldd-byte` | trace parity over exact Shieldd combined KZG challenge bytes |
| `tipp-mipp.kzg-equations` | paper algebra and local implementation | `abstract-trace` | `Ipp.Extracted.hax_translated_verify_g2_kzg_opening_true_iff`, `hax_translated_verify_g1_kzg_opening_true_iff`, and named equation/coefficient theorems; concrete pairing adapter parity |
| `tipp-mipp.power-sequence` | paper algebra and local implementation | `abstract-trace` | `Ipp.Extracted.hax_translated_inverse_powers_eq`, `hax_translated_shifted_commitment_key_eq`, and `hax_translated_structured_scalar_final_eq` |
| `tipp-mipp.base-equations` | paper algebra and local implementation | `abstract-trace` | `Ipp.Extracted.verify_base_commitment_refinement` and `verify_tipp_mipp_refinement_statement`, conditional on commitment-effect laws |
| `groth16.randomizer` | Shieldd challenge helper and Filecoin v2 final-randomness bug class | `shieldd-byte` | randomizer trace parity and Filecoin bug-class review |
| `groth16.folded-inputs` | Shieldd public-input adaptation and paper algebra; byte binding is covered by `curve.field.public-input` and `serialization.public-input-fields` adaptation rows | `abstract-trace` | `Ipp.Extracted.fold_public_inputs_refinement_statement`; Rust `r=1`/`r!=1` delegator parity |
| `groth16.ppe` | paper algebra and local implementation | `abstract-trace` | `Ipp.Extracted.verify_ppe_refinement_eq`, `verify_ppe_refinement_statement`, and `verify_combined_ppe_refinement_statement`, conditional on prepared-pairing laws; Rust optimized/baseline parity |

## Minimum Evidence Per Refinement Row

Use this table when filling `ripp-refinement.md`.

| Row class | Required evidence |
| --- | --- |
| mechanical | equation review plus unit or parity test |
| performance | equation review plus specialized-vs-generic parity test |
| security-binding | challenge/message-order review plus trace parity or F* boundary row |
| semantic | equation review plus mutation rejection test; security/crypto signoff |

Rows that cannot meet the required evidence stay `open` or become explicit
`assumed` rows in `formal-handoff.md`.

## Review Method

For each `symbol_id` in `ripp-refinement-scope.txt`, verify four facts:

1. The local function implements the spec step listed here.
2. Prover and verifier use the same transcript inputs, labels, nonce rules, and
   challenge conversion.
3. Any performance specialization is equation-preserving.
4. Any security-binding or semantic deviation is either mechanically
   `proved-equivalent` or explicitly accepted as an `assumed` row by
   security/crypto review.

Do not mark a row `refined` just because tests pass. Tests are evidence for a
review conclusion; they are not a replacement for checking the equations.
Security-binding or semantic rows cannot become `refined` solely from tests.
