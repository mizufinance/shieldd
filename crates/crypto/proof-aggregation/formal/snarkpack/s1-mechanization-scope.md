# S1 mechanization scope — completed

Status: the abstract S1 theorem is complete, but end-to-end shipping refinement
is not. `Ipp.S1.s1_soundness` and its contrapositive
`Ipp.S1.invalid_goal_fork_bound_nonpositive` are audited without project axioms.
They consume explicit KZG, pairing-commitment, ROM, and query-bound premises.
The current claim boundary is recorded in the generated `formal-handoff.md`.

## Completed units

- U1 randomizer lift: polynomial discrepancy/root-set reduction.
- U2 GIPA fold soundness: symbolic folding and pairing-commitment binding.
- U3 KZG opening soundness: structured-key recovery under
  `Ipp.KzgStructuredKeyBinding`.
- U4 base-equation bridge: accepted aggregate equations compose to every
  per-proof Groth16 pairing equation.
- U5b/U5c/U5d: FS game, combined-replay forking, and deterministic projection;
  the R1--R7 design-review repair trail is recorded in `REPORT-CODEX.md`.
- U5e: `Ipp.S1.s1_soundness`, consuming the named assumptions and the explicit
  `Ipp.S1.badEventError` expression.

The forking design was rebuilt around one combined-replay experiment rather
than independently assembled replay paths. It constructs a strict geometric
four-ary tree (`Fin 4`): child zero is canonical and three branches are fresh
replays. The bound uses an averaged gated recurrence, not the discarded
pointwise tree-bound interface. Its geometric loss is intentionally loose;
expected-time tightening is future work.

## U5a quantitative status

Concrete results include whole-game query-bound transfer, bad-event union
algebra, `q0_lower_bound`, and the fork recurrence. `badEventError` is the sum
of the proved collision, randomizer-root-set, dependency, round-order, and KZG
bad-event bounds. A numerical security claim remains unavailable until `qb`,
the maximum proof count, the nonce-rejection bound, and any future randomized
batching errors are instantiated. The hash-to-field/ROM bridge is
kernel-proved for a uniform byte oracle, including the exact 64-byte
modular-reduction distance. Replacing deployed Blake2b by that oracle and
constructing the exact accepted production trace remain explicit boundaries.

## Model boundary

The Lean theorem works over abstract `F`-modules and a bilinear pairing. Its
structured challenge preimages are injective by construction. Executed-Rust
orchestration, byte encoding, curve arithmetic, and hash-as-RO remain separate
boundaries recorded in `formal-handoff.md`.

## S2 go/no-go sketch — implementation/model faithfulness

Tier 1: hax-translate the proof-relevant orchestration in `gipa.rs` (folds and
final keys), TIPA polynomial helpers, and the `groth16_aggregation` verification
flow into Lean. Prove equivalence to the corresponding `Ipp` model functions.
Success retires the abstract-trace review rows; failure to translate a construct
must produce a narrow, reviewed semantic shim rather than a second handwritten
implementation model.

Tier 2: mechanize the concrete challenge-preimage byte layout and injectivity.
Success shrinks the Shieldd-byte assumption surface to hash-as-RO and trace
parity. Go/no-go review should confirm hax coverage, generated-code stability,
and whether the byte proof belongs in the existing F* boundary or the Lean
package before implementation starts.

## S3 go/no-go sketch — arithmetic implementation correctness

S3 targets implementation correctness, not curve security:

- field operations refine `ZMod p`; choose a fiat-crypto replacement or hax
  post-hoc proof only after performance measurements;
- elliptic-curve group operations conform to Mathlib Weierstrass definitions;
- Miller loop plus final exponentiation conform to published ate-pairing
  pseudocode.

Bilinearity/security of the published pairing construction, q-SDH/co-CDH, and
other curve hardness claims remain cited mathematical/cryptographic assumptions.
The S3 go/no-go requires measured backend options, an exact arithmetic API
boundary, and a proof-cost estimate; it must not be described as proving curve
security.
