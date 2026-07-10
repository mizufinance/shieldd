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
- **U5e — S1 capstone.** One theorem: any adversary winning `FsGame`
  with probability `acc > err(qH, µ, n, |F|)` yields (constructively) the
  U4 capstone hypotheses, hence per-proof Groth16 PPEs — assumptions:
  `KzgStructuredKeyBinding`, `PairingCommitmentBinding` only.
  `err` composes: the U5c parametric bound instantiated with the U5b
  closed node bound, plus the U5a scalar-stage/zero-challenge union
  bounds. Looseness is a documented footnote in the ledger row, not an
  assumption.

Order: U5b → U5c (risk path, DONE) → U5b-quant → U5d(1–3) → U5a →
U5d(4) → U5e.

## Conventions

- No `sorry`; no `axiom` (assumptions are hypotheses via named `Prop` defs in
  `Ipp/Algebra.lean`).
- `maxHeartbeats` bounded per file; no `native_decide`.
- Lemma names carry the spec row they discharge in the docstring
  (e.g. `tipp-mipp.base-equations`).
