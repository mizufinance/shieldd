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

## U2 — GIPA fold soundness (Ipp/Gipa.lean)

Decision (frontier design pass, 2026-07-08; arity corrected 2026-07-09):
**extraction-shaped** — **4-transcript** special soundness per round over an
accepting-transcript tree, consumed by U5's forking lemma. Implication shape
was rejected: one transcript gives one equation `Com' = c•L + Com + c⁻¹•R`
in three adversary-chosen unknowns, so it would need per-round "opening
known" (AGM-style) assumption rows. Extraction keeps the assumption surface
= commitment binding only.

Why arity 4 (not 3): the child openings recovered from the Laurent solve
are Laurent in the challenge with powers `{c, 1, c⁻¹}` on both message
lanes, so (a) the embed-equation inter-half consistency is a CUBIC identity
(needs 4 points to vanish coefficientwise), and (b) after (a) collapses the
spans to `{c,1}` (a-side) and `{1,c⁻¹}` (b-side), the T-lane identity is a
quadratic pinned by 4 points. Same reason Bulletproofs' IPA extractor
rewinds 4× per round. 3 points leave both identities underdetermined.

Spec rows: `gipa.round-folding`, `gipa.verifier-folding`,
`gipa.input-relation`, `tipp-mipp.gipa`. Model of record: ripp-spec §GIPA;
Rust: `gipa.rs` prover fold (rescale_fold call sites), verifier
`fold_output`, `_compute_final_commitment_keys`.

Generic lane (one definition, all five combined-TIPP/MIPP lanes are
instances; U4 instantiates with product types, free via Mathlib `Prod`
module instances):

- `cm : K →ₗ[F] Msg →ₗ[F] M` a bilinear commitment atom; vector commit
  `commitV ck m = ∑ i, cm (ck i) (m i)` over `Fin n`.
- Split convention (spec §GIPA, `gipa.rs:469-479`): index `i : Fin (2*m)`
  splits as lower `[..m]` / upper `[m..]`. `a1/ck_a2/ck_b1/b2` = upper,
  `a2/ck_a1/ck_b2/b1` = lower.
- Message fold `foldMsg (s : F) (v : Fin (2*m) → V) : Fin m → V :=
  fun i => s • v(upper i) + v(lower i)`. One def covers all four fold
  equations: `s = c` for `a`, `ck_b`; `s = c⁻¹` for `b`, `ck_a`.
- Verifier commitment fold `foldCom c L Com R = c • L + Com + c⁻¹ • R`.

Accepting-transcript tree (Prop-valued inductive, depth = remaining rounds;
`base` = the verifier's `_verify_base_commitment` shape at size 1, `node` =
FOUR children at pairwise-distinct nonzero challenges; challenge at the top
level of a size-`2^μ` instance corresponds to the HIGHEST index/bit,
matching the post-reversal transcript order shared with U3). The node
constructor carries ONLY the round messages `L*/R*`, the challenges, and
the child trees — it must NOT carry any opening or relation field (that
would make the extraction vacuous):

```
inductive AcceptTree : (μ : ℕ) → (ck_a : Fin (2^μ) → K₁) → (ck_b : Fin (2^μ) → K₂)
    → (ComA ComB ComT : M) → Prop
  | base  : ComA = cmA (ck_a 0) a₀ → ComB = cmB (ck_b 0) b₀
      → ComT = cmT ck_t (ip a₀ b₀) → AcceptTree 0 ..
  | node  : (LA RA LB RB LT RT : M) (c : Fin 4 → F)
      (hinj : Function.Injective c) (hnz : ∀ k, c k ≠ 0)
      (child : ∀ k, AcceptTree μ (foldMsg (c k)⁻¹ ck_a) (foldMsg (c k) ck_b)
                 (foldCom (c k) LA ComA RA) (foldCom (c k) LB ComB RB)
                 (foldCom (c k) LT ComT RT))
      → AcceptTree (μ+1) ck_a ck_b ComA ComB ComT
```

Lemma stack (each independently reviewable):

1. `laurent_vanish` (reusable core, generic F-module M): a Laurent
   identity `∑_{d=-2}^{2} (c k)^d • g_d = 0` holding at ≥ 5 — or for the
   degree-range actually needed, at (range+1) — pairwise-distinct nonzero
   points has all coefficients zero. (Multiply by `(c k)²`, then U1's
   `vandermonde_module_zero` / `rootSet` machinery.) The 3-point solve for
   `L, Com, R` from `c k • L + Com + (c k)⁻¹ • R = Z k` is the
   inhomogeneous instance (4 points available, 3 needed).
2. `commitV_foldMsg` (embed lemma): `commitV (foldMsg s ck) m
   = commitV ck (embed s m)` where `embed s m` places `m` on the lower half
   and `s • m` on the upper half. Bilinearity only.
3. `embed_injective`: `embed s` is injective (lower half is the identity),
   hence **folded-key binding reduces algebraically to original-key
   binding** — the assumption row stays at the SRS keys.
4. `round_extract` (the heart; MUST derive parent openings from child
   openings, never assume them). Chain, given 4 distinct nonzero `c k` and
   child openings `a'_k, b'_k, t'_k` of the folded commitments at folded
   keys:
   a. `commitV_foldMsg`: `Z^A_k := foldCom (c k) LA ComA RA
      = commitV ck_a (embed (c k)⁻¹ a'_k)`; same shape on B (embed `c k`)
      and T lanes.
   b. Laurent solve (lemma 1, any 3 of the 4 points): message-space
      openings `lA, a, rA` with `LA = commitV ck_a lA` etc. (define them
      as the explicit linear combinations of the `embed`-ed child
      openings; no binding needed to EXIST).
   c. Binding (`PairingCommitmentBinding` at `ck_a`, transported through
      `embed_injective`): per child, the vector equation
      `embed (c k)⁻¹ a'_k = (c k) • lA + a + (c k)⁻¹ • rA` over
      `Fin (m+m)`.
   d. Lower-half projection of (c): `a'_k = (c k) • lA_lo + a_lo
      + (c k)⁻¹ • rA_lo`. Upper-half projection ×`c k`:
      `a'_k = (c k)² • lA_hi + (c k) • a_hi + rA_hi`. Subtract: cubic
      Laurent identity at 4 points ⇒ (lemma 1) `lA_hi = 0`,
      `a_hi = lA_lo`, `rA_hi = a_lo`, `rA_lo = 0`; hence
      `a'_k = (c k) • lA_lo + a_lo`. Symmetrically on the B lane
      (embed `c k`): `b'_k = b_lo + (c k)⁻¹ • rB_lo`, `b_hi = rB_lo`.
   e. T lane: child relation `t'_k = ip a'_k b'_k`; substitute (d):
      `ip a'_k b'_k = (c k) • ip lA_lo b_lo + (ip a_lo b_lo
      + ip lA_lo rB_lo) + (c k)⁻¹ • ip a_lo rB_lo` — a `{c,1,c⁻¹}` span.
      T-lane Laurent solve + 4 points ⇒
      `ComT = cmT (ip a_lo b_lo + ip lA_lo rB_lo)`.
   f. Assemble: `a := a_lo ⊕ lA_lo` (lower ⊕ upper via the half-facts of
      (d): `a_hi = lA_lo`), `b := b_lo ⊕ rB_lo`; then
      `ip a b = ip a_lo b_lo + ip lA_lo rB_lo` and
      `ComA = commitV ck_a a`, `ComB = commitV ck_b b`,
      `ComT = cmT (ip a b)`.
5. `gipa_extract` (U2 capstone): induction on `μ` over `AcceptTree`
   applying `round_extract` to the four children's inductive-hypothesis
   openings:
   `AcceptTree μ ck_a ck_b ComA ComB ComT → CommitBinding cmA ck_a →
   CommitBinding cmB ck_b → CommitBinding cmT →
   ∃ a b, ComA = commitV ck_a a ∧ ComB = commitV ck_b b ∧
   ComT = cmT ck_t (ip a b)`.
   Note: binding is needed at every folded key along the tree; discharge
   via lemmas 2+3 (a folded-key collision embeds into an original-key
   collision), so the hypotheses stay at the root keys.
6. `foldKey_transcriptCoeffs` (U2↔U3 bridge, consumed by U4): iterating
   `foldMsg` over challenge list `[c_{μ-1}, …, c_0]` (fold order = highest
   bit first) collapses the key to `msm (transcriptCoeffs x rShift) srs`
   with `x j = c_j` — the GIPA final key equals the U3 KZG-bound structured
   MSM (`_compute_final_commitment_keys` bit-product,
   spec `gipa.round-folding`).

Named assumption (Ipp/Algebra.lean): `PairingCommitmentBinding` = message
injectivity of `commitV` at the given keys — an idealized Prop
computationally justified by AFGHO/double-pairing binding, same pattern as
U3's `KzgStructuredKeyBinding`; maps 1:1 to a future
`assume.pairing-commitment-binding` handoff row. Binding is needed only to
pin child openings to canonical folds (T-lane consistency); the Laurent
solve itself is assumption-free.

Notes: challenge swap `c = x⁻¹, c_inv = x` is algebra-invisible (statement
takes nonzero `c`). Depth bound ≤ 15 is a U5 probability concern, not U2's
(generic `μ`). No bad sets in U2 — distinctness/nonzeroness hypotheses are
discharged by U5's forking tree.

## U4 — composition (Ipp/Composition.lean)

Five terminal base equations (spec §Combined TIPP/MIPP verifier step 3;
`groth16_aggregation.rs` `base_valid`) + U2 (tree extraction) + U3 (final
keys honest) + U1 (strip r-weights) ⇒ each per-proof Groth16 PPE
`e(Aᵢ,Bᵢ) = e(α,β) + e(icᵢ,γ) + e(Cᵢ,δ)` (additive GT). One capstone
theorem consuming the unit lemmas.

Terminal equations (Rust `base_valid`):
1. `ipE a_base v_final = foldedComA`   (v = KZG-bound `ck_v_final`)
2. `ipE w_final b_base = foldedComB`
3. `e a_final b_final = folded ip_ab`  (identity commitment lane)
4. `ipE c_base v_final = foldedComC`   (C reuses `v`)
5. `c_final • final_r = folded agg_c`, where
   `final_r = ∏_j (1 + x_j·r^{2^j})` = U3's `transcript_prod_form_eval`
   at `rShift = 1, z = r` — no new algebra.

Lane instantiation of U2's generic `(K, Msg, M)` (product modules, Mathlib
`Prod` instances): messages `MsgA = G1 × G1` (`(Aᵢ, Cᵢ)`),
`MsgB = G2 × F` (`(Bᵢ·rⁱ, rⁱ)`); keys `K_A = G2 × G2` (`(vᵢ, vᵢ)` — C path
reuses `v`), `K_B = G1 × F` (`(wᵢ·r⁻ⁱ, 1)`; `Unit` is not an F-module —
scalar component fixed to 1, deviation accepted 2026-07-09); T-lane pairing
`ip (a,c) (b,s) = (e a b, s • c) : GT × G1`. Binding
(`PairingCommitmentBinding` at the SRS keys) pins U2's extracted openings
to the aggregator's committed `(Aᵢ, Bᵢ·rⁱ, Cᵢ)`, and U1's `randomizer_lift`
(at `M := GT` for ip_ab, `M := G1` for agg_c) strips the rⁱ weights into
per-proof PPEs, except on U1's root set.

Capstone decomposition (frontier design pass 2026-07-09, resolving the
`htransport` gap found in review — `AcceptTree` is a pure rewinding
hypothesis and does not expose the real run's transcript, so the monolith
is stated at the tree with two conversion lemmas at its boundary):

1. `u4_terminal_decoder` (discharges `htransport`; pure bilinear algebra):
   hypotheses `ip_ab = ∑ᵢ e Aᵢ (rⁱ • Bᵢ)` and `agg_c = ∑ᵢ rⁱ • Cᵢ` (the
   componentwise reading of the pinned T-lane value at the product
   instantiation) + the aggregate Groth16 acceptance
   `e (r_sum • α) β + e g_ic γ + e agg_c δ = ip_ab` with
   `r_sum = ∑ᵢ rⁱ`, `g_ic = ∑ᵢ rⁱ • icᵢ` ⇒
   `∑ᵢ rⁱ • groth16Discrepancy … i = 0`. (Uses only `e` bilinearity:
   `e Aᵢ (rⁱ•Bᵢ) = rⁱ • e Aᵢ Bᵢ`, `e (r_sum•α) β = ∑ rⁱ • e α β`, etc.)
2. `leaf_accept_to_base` (consumes the five terminal equations; used by U5
   to build tree leaves from forked real transcripts): five terminal base
   equations at prover-supplied `vFinal/wFinal` + the two KZG accepts +
   `KzgStructuredKeyBinding`s (⇒ `u4_key_identification`) +
   `foldKey_transcriptCoeffs` + an `msm_shift` mini-lemma
   (`msm (transcriptCoeffs x r⁻¹) srs = msm (transcriptCoeffs x 1)
   (fun i => r⁻ⁱ·... • srs i)` — the w-side shift moves from coefficients
   into the basis, matching the `K_B` shifted-key lane) ⇒ the
   `AcceptTree.base` facts at the honestly folded product keys.
3. `u4_capstone` (the monolith): hypotheses = bindings at SRS product keys
   + root-commitment openings by the committed vectors + a 4-ary
   `AcceptTree` at the product lanes + the aggregate PPE acceptance + U1
   challenge-goodness; conclusion `∀ i, e Aᵢ Bᵢ = groth16Rhs …`. Proof =
   `u4_gipa_pins_committed_vectors` → componentwise T-lane reading →
   `u4_terminal_decoder` → `u4_ppe_per_index`.

Allocation note: constructing the `AcceptTree` from 4^µ forked REAL
verifier transcripts (each converted per-leaf via `leaf_accept_to_base`)
is U5's job; U4 exports the conversion lemma so the five terminal
equations are consumed here, per the original scope.

## U5 — Fiat-Shamir (Ipp/FiatShamir.lean) — design gate open

Full forking-lemma mechanization (Antoine 2026-07-08; RO-row shortcut
declined). U1–U4 are U5-independent: they take challenge-goodness hypotheses
that U5 discharges.

Survey (2026-07-08, VCVio at the lean-dleq pin + upstream ArkLib):

- VCVio has SINGLE-fork machinery only: `ReplayFork.forkReplay` +
  `forkReplay_propertyTransfer` (pair of runs, same prefix, distinct answer
  at one fork slot) with the Bellare–Neven-style quantitative bound
  `acc·(acc/(qH+1) − 1/|Ω|)`; `euf_nma_bound` is hard-wired to 3-move
  Σ-protocols with 2-transcript special soundness. `Fischlin.lean` is
  straight-line-extraction for Fischlin-transformed protocols — not
  applicable (SnarkPack is plain FS).
- SnarkPack needs a DEPTH-µ 4-ARY transcript tree (three rewinds per GIPA
  round stage, U2's `AcceptTree`) plus scalar challenge stages (randomizer
  `r`, `x0`, final bridge, KZG `z`) that only need bad-set avoidance
  (RO union bound), not forking.
- Upstream ArkLib: right abstraction (round-by-round knowledge soundness on
  VCVio foundations) but multi-round FS knowledge soundness is roadmap, not
  completed mechanization. No tree-forking lemma exists in the Lean
  ecosystem today; Firsov–Janku's EasyCrypt mechanization is single-fork as
  well.

DECISION (Antoine 2026-07-09): **option A — full mechanization** of the
tree-forking lemma on VCVio foundations. (B rejected: bets on incomplete
upstream. C rejected: no interim assumption rows.)

Architecture (frontier design pass 2026-07-09). Layered sub-units, each a
bounded delegable task, all in-package (`Ipp/Fork.lean`,
`Ipp/FiatShamir.lean`) importing VCVio — we do NOT fork/patch VCVio:

- **U5a — scalar-stage goodness.** For the four scalar challenge stages
  (`aggregate.randomizer`, `tipp-mipp.x0`, `tipp-mipp.final-bridge`,
  `tipp-mipp.kzg`): an RO union bound. Statement shape: for any family of
  bad sets `B` of size ≤ d chosen by the adversary's earlier queries, the
  probability an accepting run has its stage challenge inside `B` is
  ≤ (qH+1)·d/|F|. Discharges U4's `hgeneric` and the KZG/bridge
  challenge-goodness hypotheses. Uses VCVio's query-log/cache machinery
  (the lean-dleq instantiation pattern is the template).
- **U5b — 4-ary single-position fork.** Generalize the STATEMENT (not the
  library): from VCVio's `ReplayFork.forkReplay` (pair of runs agreeing to
  a fork slot with distinct answers there), build `forkReplay4` — four
  runs, common prefix to the slot, PAIRWISE-distinct answers — by iterated
  pair-forking + a collision/distinctness accounting, with a
  Bellare–Neven-style strict bound (shape
  `acc·(acc/q − 1/|Ω|)`-iterated; the exact expression is whatever the
  iteration yields — record it, do not chase tightness).
- **U5c — depth-µ tree composition.** Induction over the µ GIPA round
  stages composing U5b at each level to produce U2's `AcceptTree` (4-ary,
  distinct NONZERO challenges — nonzeroness costs an extra 1/|F| term per
  node). Strict (non-expected-time) composition: the concrete bound
  degrades geometrically in the arity/depth (`acc^{4^µ}`-shaped). This is
  ACCEPTED and documented: the theorem is unconditional, which is what
  removes the assumption row; bound tightening (ACK-style expected-time
  extraction) is explicitly future work, out of S1 scope.
  Refinement (2026-07-09, after U5b review): the recursion operates on
  canonical `(run, log)` pairs, NOT on wrapped `main`s — a parent branch's
  run is child #0 (its own continuation at deeper slots), and each node
  adds only three `replayTrial`s at its level's slot, exactly the
  `forkReplay4Core` shape. Prefix-chaining is then automatic (each trial
  replays the parent's log), which is REQUIRED: children must share the
  parent's prefix through its fork slot or the AcceptTree children would
  not share the parent's L/R round messages. Per-level slots strictly
  increase along the transcript (stage ℓ's query precedes stage ℓ+1's).
- **U5d — FS-SnarkPack game + tree assembly** (design pass 2026-07-09).
  Four sub-deliverables:
  1. `SnarkpackFsSpec`: one uniform challenge oracle whose DOMAIN is a
     structured sum type `(stage × payload)` mirroring the
     SnarkpackOracle stage sequence (randomizer, x0, round ℓ, bridge,
     kzg) with payloads the structured tuples actually hashed (prior
     challenge + the round L/R commitment objects for round stages).
     Injectivity of the encoding is BY CONSTRUCTION in the model; the
     byte-level injectivity of the real preimages stays at the existing
     `fs.challenge-preimage` shieldd-byte rows — record this split in the
     ledger note.
  2. `FsGame`: NMA-style — adversary outputs an aggregate proof;
     the game runs the combined verifier, which recomputes every stage
     challenge through the oracle and checks: the two KZG accepts, the
     five terminal base equations, and the aggregate Groth16 PPE.
     lean-dleq's `FiatShamir.lean` instantiation is the pattern.
  3. `accepted_run_leaf_data` (the `P_out` fed to
     `forkTree_propertyTransfer`): an accepting run's log determines, at
     each round slot ℓ: the queried payload (hence THE node's L/R
     commitment values) and the answer `x_ℓ` (challenge, with the
     `c = x⁻¹, c_inv = x` swap; `x = 0` is a bad event bounded in U5a
     style); and at the leaf: the data `leaf_accept_to_base` consumes.
  4. `tree_to_acceptTree` (the heart): a `TreeConsistent` run tree of
     accepting runs yields U2's `AcceptTree` at the U4 product lanes with
     root = the statement commitments. Per node: pairwise prefix
     agreement through the node's slot ⇒ all four children queried the
     SAME payload there ⇒ same L/R (this is why U5c's prefix chaining is
     load-bearing); pairwise-distinct answers ⇒ distinct challenges;
     nonzeroness from the bad-event exclusion. Per leaf:
     `leaf_accept_to_base`. Fold direction: each child's keys/commitments
     fold with that child's own answer — matching `AcceptTree.node`.
     Interface note (Fable review 2026-07-10): `TreeConsistent.node`
     currently exposes only `0 < cursor` + prefix agreement below
     `cursor`; the assembly additionally needs `slotPos < cursor` (the
     interleaved log position of the node's s-th `i`-query), derivable in
     `Ipp/Fork.lean` from the trials' `forkConsumed` state. The U5d(4)
     session should strengthen `TreeConsistent.node` with that field (and
     thread it through `forkTreeFrom_support_props`) rather than
     re-deriving it downstream.
     Wrapper design (Fable 2026-07-10, resolving the U5d(1–3) report's
     fork-domain-index mismatch — `SnarkpackFsSpec` is a function oracle,
     every `ChallengePoint` is its own index, while `forkTree` forks one
     fixed index): use the managed-RO single-index wrapper pattern of
     VCVio's `FiatShamir/Sigma/Fork.lean`. `wrapFs` routes every
     structured query through ONE uniform oracle (`Unit →ₒ F`-shaped
     index) and records the queried `ChallengePoint`s in a side trace
     (state or output); fork slots index the flat single-oracle query
     sequence; the level-ℓ selector `cf ℓ` returns the position at which
     the accepted run's round-ℓ point enters the trace (lean-dleq
     `forkPoint` pattern; "round point never queried before the verifier
     recomputation" is a U5a-style bad event, excluded in the selector's
     `none` branch). Prefix agreement in the wrapped log then implies
     equal traces below the fork slot, hence equal round payloads (L/R)
     across the four children.
     Lane-nativity decision (Fable 2026-07-10, resolving the U5d(4)
     tagged-leaf blocker): the game's `Proof`/`RoundComs` must carry
     LANE-NATIVE payloads (per-lane group elements, as the Rust proof
     does), with the tagged `U4Commitment` values CONSTRUCTED from them
     via lane-pure embeddings. Off-lane/tag components are then zero by
     construction, folds preserve lane-purity (linearity), and
     `AcceptTree.base`'s full tagged equalities reduce to exactly the
     five terminal lane equations. Do NOT add tag-purity checks to the
     verifier's acceptance — purity is a representation invariant of the
     model, not a check the real verifier performs.
     One exception (Fable 2026-07-10): the B-atom's SCALAR column is a
     bookkeeping lane (the real com_b carries no scalar component; rⁱ is
     public), and its folded component is checked by no real equation. The
     model verifier therefore carries a SIXTH leaf check
     `folded.comB.2 = (foldKey …).2 * terminalR` — satisfied by honest
     provers definitionally (GIPA per-lane invariant: folded commitment =
     atom(folded key, folded message)) and constraining only a component
     that does not exist in the real proof object. Ledger note: this check
     is a model-bookkeeping identity, not a divergence from the Rust
     verifier.
- **U5e — S1 capstone** (concretized 2026-07-10). Two-step shape:
  1. `s1_tree_probability`: `Pr[forkTree succeeds with all leaves
     accepting ∧ WrappedRunGood] ≥ F(acc)` where
     `F = (U5c parametric composition of the U5b closed node bound)
     applied to (acc − U5a wrapped_run_good_bound)`. Forking happens only
     at round slots, so all runs in the tree share the randomizer prefix:
     one `r` for the whole tree, and `randomizer_good_bound` (d = 2^µ−1,
     the U1 root-set size) is charged once, discharging `u4_capstone`'s
     `hgeneric`.
  2. `s1_soundness` (THE S1 theorem): if `F(acc) > 0` then the forkTree
     support is inhabited; `tree_to_acceptTree` + `u4_capstone` then give
     the DETERMINISTIC conclusion `∀ i, e (A i) (B i) = groth16Rhs …`
     for the statement's committed vectors. Stated hypotheses:
     `KzgStructuredKeyBinding` (both sides), `PairingCommitmentBinding`
     (both lanes), the statement openings (`hComA`/`hComB` as in
     `u4_capstone`), and `acc > err` with `err` the explicit expression
     making `F(acc) > 0`. Positive probability ⇒ support inhabitation is
     the strict-composition trick that keeps U5e free of expected-time
     machinery. Bound looseness is a documented ledger footnote, not an
     assumption.

Order: U5b → U5c (risk path, DONE) → U5b-quant → U5d(1–3) → U5a →
U5d(4) → U5e.

## Design-review repair plan (2026-07-10; REPORT-CODEX.md "Design review")

The pre-final-proofs review returned 4 CRITICAL / 6 MAJOR findings; all
accepted. Repairs, in execution order:

- **R1 (CRITICAL 1) — DONE** (commit f625a8ace): `discrepancyRootSet d` =
  THE single statement-determined bad set; `hroot : r ∉ discrepancyRootSet d`
  replaces the contradictory universal `hgeneric`;
  `discrepancyRootSet_card` is U5a's quantitative carrier.
- **R2 (CRITICAL 3) — transcript views.** Keep the CHRONOLOGICAL round
  vector for challenge chaining and commitment folding; define
  `reversedView x := fun i => x (Fin.rev i)` and use it for
  `transcriptCoeffs`, both `foldKey`s, and `terminalR` (W side takes
  inverses AFTER reindexing), matching
  `groth16_aggregation.rs:1382-1435,1514,1526-1536`. Add a two-round
  parity lemma against the Rust exponent formula
  (`coeff = [x₁·?, x₀·?]` orientation check) before any assembly proof.
- **R3 (CRITICAL 2) — cached managed RO.** Replace the non-caching
  wrapper: adversary AND verifier run against one cached structured RO
  (VCVio `withCaching` / `randomOracle` shape); the single-index adapter
  issues a fresh `Unit` sample only on a cache MISS, records the
  structured point for that miss, and replays reprogrammed values through
  the cache so verifier re-queries see them. Selector theorem: the
  fork-selected sampled answer EQUALS the verifier's `roundAnswer` at that
  level. `roundSlot` then points at the miss occurrence, and
  first-occurrence/answer mismatch disappears.
- **R4 (CRITICAL 4) — remove the synthetic B-scalar column; public-lane
  extraction.** The B-lane binding at the all-ones scalar key column is
  uninstantiable (only the SUM is bound). Redesign:
  (a) `Proof`/`RoundComs` lose the B-scalar components; the real B round
  commitment is GT only; `FsStatement.ComB : GT`. The r_vec coordinate
  becomes PUBLIC data folded from `r` and the chronological challenges.
  (b) U2 generalization (`Gipa.lean`): AcceptTree gains a PUBLIC lane —
  an F-module family `pub : Fin (2^μ) → P` carried as tree data with
  `node` requiring `child pub = foldMsg (c k) pub` (B-side orientation)
  and NO commitment; the T-lane pairing becomes
  `ip : Msg1 →ₗ (Msg2 × P) →ₗ IPv`. `round_extract`'s Laurent chain pins
  the committed columns via binding as before; the interpolants' public
  column equals the carried public family by Vandermonde UNIQUENESS
  (the public fold is a solution of the same 3-point system — no binding
  needed). `gipa_extract` concludes
  `ComT = cmT (ipm ip a (b ⊗ pub))`.
  (c) U4: `u4BCommitAtom` binds G2-column only (AFGHO row instantiable);
  the combined instance's public lane P := F with `pub i = rⁱ`;
  `hComB` pins only the B column; the sixth leaf check becomes a DERIVED
  lemma about the public fold (not an adversary-facing check); DecidableEq
  hash payloads shrink accordingly (Rust parity: nothing synthetic is
  hashed).
- **R5 (MAJORs 1,2 + MINOR 1) — game faithfulness.** Concrete typed
  payload records with exactly the Rust-hashed fields (randomizer binds
  com_a/com_b/com_c; x0 binds r+coms+ip_ab+agg_c; bridge binds last raw
  challenge+final keys+final messages; kzg binds bridge+final keys);
  `level` removed from the hashed round preimage (selector metadata only);
  `acceptV/acceptW` and `KzgStructuredKeyBinding` parametrized by the KZG
  challenge `z`; `LeafData` passes `transcript.kzg`; restores the
  bridge → kzg → opening dependency chain.
- **R6 (MAJOR 5) — assembly boundary.** REVISED per Design review 2
  (Part A; 2026-07-10). The argument-passing induction shape and the
  fold orientation stand; the boundary must FIRST provide, in order:
  1. `trace_prefix_of_log_prefix` (the CRITICAL enabler): equality of the
     wrapped oracle-answer log prefix transports to equality of the
     generated `WrappedFsRun.trace` prefix (including the selected
     entries). The flattened log erases structured points, so this is NOT
     derivable from `TreeConsistent`'s generic fields — prove it from
     `wrapFs`/replay execution determinism by induction on the
     computation (two supported runs of the same wrapped computation
     whose logs agree below `n` have equal outputs/traces below the
     corresponding miss count). Only after this may constructor
     injectivity recover shared `RoundComs`/nonces/x0/randomizer
     payloads across children.
  2. Filtered-rank/position lemma: the absolute position of the `s`-th
     `Sum.inr ()` entry bounds the absolute positions of all earlier
     structured entries; connects `DependencyOrdered`'s `tracePos`
     ordinals to `hprefixValues`' absolute positions. Never conflate `s`
     with `slotPos`.
  3. Transcript-chaining export (semantically true, currently
     unexported): from `queryRounds`/`fsVerifier_logged`, an accepted
     run has `roundPrev 0 = x0` and `roundPrev (j+1) = roundAnswer j`;
     plus x0-point payload equality across children gives shared
     `ipAb`/`aggC` (and, with 1–2 and `DependencyOrdered`, shared
     randomizer and x0 — `all_randomizer_eq`).
  4. The helper invariant is a PATH-PREFIX RECORD indexed by `j < level`
     (answer, `RoundComs`, nonce, chaining equality) carried for the
     subtree root and all leaves, extended at each node, preserved into
     all four children — not a single per-node constructor-injectivity
     step.
  5. Housekeeping: `foldCom_map` lives in Ipp/Composition.lean (import,
     do not re-prove); add the `(r ^ i)⁻¹ = (r⁻¹) ^ i` normalization for
     the B key; prove the general `Fin.rev`/`foldKey` index relation
     rather than relying on the two-round parity example.
- **R7 (MAJORs 3,4,6) — quantitative redesign (U5a/U5e).** Frontier
  design pass 2026-07-10; replaces the pointwise `ForkTreeNodeLowerBound`
  interface entirely:
  1. **Gated recursion** (review's gated-selector route): `forkTreeFrom`
     gains a leaf-acceptance gate `leafOk : run → Prop` (decidable) and
     REJECTS at depth 0 when `¬leafOk`; `TreeConsistent.leaf` carries the
     gate fact. Tree success then implies `tree.All leafOk`
     STRUCTURALLY — no separate `All Good` probability step. Instantiate
     `leafOk := accept ∧ WrappedRunGood`-conjuncts (post-R5 shape).
  2. **Continuation-parametrized one-level bound** (REVISED per Design
     review 2 Part B — a deterministic-predicate interface cannot compose
     randomized subtrees): formulate the one-level lemma over a
     CONTINUATION `next : (α × QueryLog spec) → OracleComp spec
     (Option β)` (with the level/lower parameters). Prove the exact
     expansion of "fork four children at the slot, run `next`
     independently on all four (canonical child-0 factor included)":
     the weighted marginal identities
     `pair = ∑' first, μ(first) · w(first)` and
     `raw-four = ∑' first, μ(first) · w(first)³`
     where `w(first)` is the CONDITIONAL continuation-success
     probability (U5b's existing identities are the `w = trial-success`
     instance; the proofs generalize over the weight), then the
     pair-fork/Jensen chain on `w`. The acceptance event must bundle
     `cf = some s`, reachability (`CfReachable`), and the `lower < s`
     gate — and a lemma that gated depth-`d` success entails those
     selector facts.
  3. **Averaged per-depth recurrence** (indexing fixed per review):
     `Q_d := averaged success probability of the gated depth-`d`
     continuation` — depth 0 = the gated leaf event, depth d+1 = one
     fork level followed by four INDEPENDENT depth-d continuations;
     transcript level = µ − d, carried separately. Deliverable:
     `Q_{d+1} ≥ (Q_d · (Q_d / q − h⁻¹))⁴ − 3·h⁻¹ =: G(Q_d)` via item 2
     with `next := the depth-d gated forkTreeFrom continuation`, hence
     `Pr[gated forkTree succeeds] = Q_µ ≥ G^[µ] Q_0` with
     `Q_0 = Pr[accept ∧ Good]` — geometrically degrading, ACCEPTED;
     `G` monotone on all of ℝ≥0∞ (review NOTE: no interval restriction
     needed); positive-probability ⇒ support via VCVio's
     `probEvent_pos_iff` (review-confirmed sound).

     **Coupling decision (2026-07-11).** Neither proposed bridge is sound at
     the current generality. Route A cannot replace fixed-root recursion by an
     averaged combined replay while preserving the invariant that the
     resulting subtree root is the supplied run. Route B is not a generic
     bind-commutation law: combined replay executes and logs the randomized
     continuation as part of the replayed computation, whereas `forkTreeFrom`
     executes it after forking the parent runs; adaptive or repeated oracle
     queries can distinguish these orders. The sound one-level quantity is
     therefore `forkTreeContinuationMass`, whose continuation selects `s` from
     the parent and calls the child with `(level + 1, some s)`. Iteration needs
     an additional protocol-specific replay-compatibility hypothesis or a
     redesigned tree semantics that carries the combined replay trace; no
     context-free equality with `averagedForkTreeSuccess` is assumed.
  4. **U5a events (post-R5 shapes)**: `Q_0 ≥ acc − err_bad` where
     `err_bad` sums: randomizer in `discrepancyRootSet` (size ≤ 2^µ−1,
     `discrepancyRootSet_card`), KZG `z`-goodness (consumer restored by
     R5's z-parametrization), round-point dependency-order violations
     (fork slot must postdate the r/x0 chain — selector-order fact from
     the cached wrapper), and any residual rejection-sampling coupling
     term R5 documents. Each an RO union bound over ≤ qb+1 queries.
     Dependency-order detail (Fable 2026-07-10, R6 prep): the ordering
     event is REAL — an adversary may pre-query round points before the
     randomizer point, so `all_randomizer_eq` must be CONDITIONED on a
     `DependencyOrdered` good-event (added to `WrappedRunGood` in R6).
     Its bound: an accepted run whose round-ℓ point was cache-missed
     before the x0 miss requires that point's `prev` component to equal
     the later-sampled fresh-uniform x0/previous-round answer — a
     guessing event, ≤ (qb+1)/|F| per level by union bound over the
     candidate early misses.
  5. **U5e composition**: `G^[µ](acc − err_bad) > 0` ⇒ forkTree support
     inhabited ⇒ (gated) `tree.All Good` + `TreeConsistent` ⇒
     `tree_to_acceptTree` (R6) ⇒ `u4_capstone` ⇒ per-proof PPEs. `err`
     in the S1 statement is the explicit expression making the iterate
     positive.

Execution: R2+R3 (one session, FsGame/FsFork-local), then R4 (Gipa/
Composition surgery per (b)), then R5, then R6 (assembly proof), then R7.
The NOTE findings confirm: per-round swap orientation and the U5e
positive-support technique are sound as designed.

## Conventions

- No `sorry`; no `axiom` (assumptions are hypotheses via named `Prop` defs in
  `Ipp/Algebra.lean`).
- `maxHeartbeats` bounded per file; no `native_decide`.
- Lemma names carry the spec row they discharge in the docstring
  (e.g. `tipp-mipp.base-equations`).
