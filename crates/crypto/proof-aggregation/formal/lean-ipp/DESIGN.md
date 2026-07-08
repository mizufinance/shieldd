# lean-ipp design — S1 mechanization

Status: frontier-authored, living. Governs the theorem statements in `Ipp/`.
Scope decisions: `../snarkpack/s1-mechanization-scope.md` (Antoine green light
2026-07-08: U5 = full forking-lemma mechanization; U1+U3 first; package here).
Model of record for equations: `../snarkpack/ripp-spec.md`. Transcript shape
must stay aligned with `proof-aggregation-lean-conformance/lean/SnarkpackOracle.lean`.

## Model (Ipp/Algebra.lean, Ipp/Model.lean)

Abstract, not curve-specific:

- `F` — the scalar field (`Field F`), standing for BLS12-377 Fr.
- `G1 G2 GT` — `AddCommGroup` + `Module F _` (prime-order groups are
  F-vector spaces; written additively, matching Mathlib ergonomics —
  multiplicative GT notation from the spec transliterates to additive).
- `e : G1 →ₗ[F] G2 →ₗ[F] GT` — bilinear pairing as a bilinear map. No
  non-degeneracy needed for U1; U2/U3 name it only inside assumption rows.
- Vectors: `Fin n → G` (not `List`), matching Mathlib sums `∑ i, ...`.
- Pairing inner product `ipE a b = ∑ i, e (a i) (b i)`; MSM
  `msm c g = ∑ i, c i • g i`.

Named cryptographic assumptions live ONLY in `Ipp/Algebra.lean` as `structure`
/ `def ... : Prop` hypotheses (never `axiom`), consumed as explicit hypotheses
by theorems. Planned rows: `PairingCommitmentBinding` (AFGHO/structured-key
binding, U2), `KzgStructuredKeyBinding` (q-SDH-type, U3). Each maps 1:1 to a
future `formal-handoff.md` assumption row.

## U1 — randomizer lift (Ipp/RandomizerLift.lean)

Core algebra: a GT-coefficient polynomial identity with distinct evaluation
points has zero coefficients (Vandermonde over a module), hence the
"aggregate holds ⇒ every summand holds except on a small root set" lift.

```
-- coefficients in any F-module M (used at M := GT and M := G1)
lemma vandermonde_module_zero {n} (g : Fin n → M) :
    (∃ r : Fin n → F, Function.Injective r ∧ ∀ j, ∑ i, (r j)^(i:ℕ) • g i = 0)
    → ∀ i, g i = 0

-- root-set cardinality form (the probability carrier; no measure theory)
lemma rootSet_card_le {n} (g : Fin n → M) (h : ∃ i, g i ≠ 0) :
    Set.Finite {r : F | ∑ i, r^(i:ℕ) • g i = 0}
    ∧ Nat.card {r : F | ∑ i, r^(i:ℕ) • g i = 0} ≤ n - 1

-- the lift, stated on the Groth16 aggregation shape (spec §Groth16 adapter):
-- per-proof discrepancy dᵢ := e(Aᵢ,Bᵢ) − ppeRhs i ∈ GT (and G1 for agg_c);
-- if the r-weighted sum vanishes for r outside the root set, every dᵢ = 0.
theorem randomizer_lift ...
```

Probability reading (recorded in the docstring, formalized at U5): uniform `r`
over challenge space `S` hits the root set w.p. ≤ (n−1)/|S|. Until U5 lands,
theorems take `r ∉ rootSet` / injective-sample hypotheses; U5 discharges them
against the FS challenge distribution.

## U3 — KZG opening soundness (Ipp/Kzg.lean)

Spec: `ripp-spec.md` §Combined TIPP/MIPP, rows `tipp-mipp.kzg-equations`,
`tipa.srs`. SRS = `g·αⁱ`, `h·βⁱ` (i < 2n−1). The verifier checks two openings
(`v` once, `w` once) of the transcript polynomial
`f(X) = ∏_j (1 + c_j·X^{2^j})`-shaped structured evaluation at the KZG
challenge `z`.

Statement shape: `KzgStructuredKeyBinding` (named q-SDH-type assumption) says:
any (final-key, opening) pair passing the pairing check equals the honest
structured evaluation of the SRS at the transcript challenges. U3's theorem is
the instantiation at the two concrete openings: accepted `v_final`/`w_final`
⇒ `v_final = msm (transcriptCoeffs cs) srs.v ∧ w_final = msm ... srs.w_shifted`.
The transcript-coefficient product-form identity (`∏(1 + c_j X^{2^j})`
coefficient expansion) is proved outright (pure `Polynomial F` algebra) — only
the evaluation binding is assumed.

## U2 — GIPA fold soundness (Ipp/Gipa.lean) — design pass pending (Phase 3)

One symbolic round lemma, induction over depth ≤ 15, never unrolled. Verifier
fold (spec §GIPA): `Com' = c • L + Com + c⁻¹ • R` per commitment lane; fold
equations with the local `c = x⁻¹, c_inv = x` swap. Round lemma: terminal
(post-fold) relation + binding of the round commitments + challenge outside a
bad set ⇒ pre-fold relation. Detailed statement lands here after my Phase 3
design pass, reviewed against `SnarkpackOracle`'s fold recursion.

## U4 — composition (Ipp/Composition.lean)

Five terminal base equations (spec §Combined TIPP/MIPP verifier step 3)
+ U2 (unfold log n rounds) + U3 (final keys honest) + U1 (strip r-weights)
⇒ each per-proof Groth16 PPE `e(Aᵢ,Bᵢ) = e(α,β) + e(icᵢ,γ) + e(Cᵢ,δ)`
(additive GT), except on the union of the per-round/per-lift bad sets. One
capstone theorem consuming the unit lemmas.

## U5 — Fiat-Shamir (Ipp/FiatShamir.lean) — design gate open

Full forking-lemma mechanization (Antoine 2026-07-08; RO-row shortcut
declined). Known gap: VCVio's `euf_nma_bound` is 3-move Σ-protocol shaped;
SnarkPack has 2·log₂n + 3 challenge stages. Survey of VCVio/ArkLib multi-round
support in progress; design decision recorded here when made. U1–U4 are
U5-independent: they take challenge-goodness hypotheses that U5 discharges.

## Conventions

- No `sorry`; no `axiom` (assumptions are hypotheses via named `Prop` defs in
  `Ipp/Algebra.lean`).
- `maxHeartbeats` bounded per file; no `native_decide`.
- Lemma names carry the spec row they discharge in the docstring
  (e.g. `tipp-mipp.base-equations`).
