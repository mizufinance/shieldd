# S1 mechanization scope — completed

Status: S1 COMPLETE. `Ipp.s1_soundness` is proved in
`formal/lean-ipp/Ipp/S1.lean`, audited without project axioms, and gated by
`just snarkpack-lean-ipp`. The two Filecoin-lineage trust rows in
`formal-handoff.md` are retired in favor of this theorem, two named
cryptographic assumptions, and the explicit quantitative ROM sub-rows below.

## Completed units

- U1 randomizer lift: polynomial discrepancy/root-set reduction.
- U2 GIPA fold soundness: symbolic folding and pairing-commitment binding.
- U3 KZG opening soundness: structured-key recovery under
  `Ipp.KzgStructuredKeyBinding`.
- U4 base-equation bridge: accepted aggregate equations compose to every
  per-proof Groth16 pairing equation.
- U5b/U5c/U5d: FS game, combined-replay forking, and deterministic projection;
  the R1--R7 design-review repair trail is recorded in `REPORT-CODEX.md`.
- U5e: `Ipp.s1_soundness`, consuming the named assumptions and an explicit
  `BadEventBudget`.

The forking design was rebuilt around one combined-replay experiment rather
than independently assembled replay paths. It constructs a strict geometric
four-ary tree (`Fin 4`): child zero is canonical and three branches are fresh
replays. The bound uses an averaged gated recurrence, not the discarded
pointwise tree-bound interface. Its geometric loss is intentionally loose;
expected-time tightening is future work.

## U5a quantitative status

Concrete results are `fresh_miss_uniform`, `fresh_miss_mem_le`,
`structured_log_mem_at_le`, `structured_log_mem_before_le`,
`structured_log_mem_le`, whole-game query-bound transfer, bad-event union
algebra, `q0_lower_bound`, and the fork recurrence. The following
`BadEventBudget` fields remain parametric:

- `answer_collision_bound`: `Q^2/|F|`;
- `randomizer_rootset_bound`: `Q*dR/(|F|-2)`;
- `dependency_order_bound`: `mu*Q/|F|`;
- `round_slot_order_bound`: `mu*Q/|F|`;
- `kzg_z_bound`: `Q*dZ/|F|`;
- `round_unqueried_bound`: explicit `bUnq`, parametric by design;
- `wrapped_good_lower_bound`: source-to-wrapped quantitative transport.

Each is a named assumption sub-row in `formal-handoff.md`; none is hidden by a
generic ROM claim. The structured-only fixed-set `probEvent` union bound over
the first `Q = qb + 1` mixed-source ordinals is now proved. Remaining work is
the adaptive structured pair bound for collisions, accepted-stage log-witness
and bad-set-cardinality connections, protocol-local dependency/order guessing
reductions, and the pushforward mass theorem for `wrapFs`.

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
