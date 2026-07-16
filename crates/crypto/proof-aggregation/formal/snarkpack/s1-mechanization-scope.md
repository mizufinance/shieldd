# S1 mechanization scope — removing the Filecoin-lineage assumption

Status: SCOPING MEMO, read-only prep for the human green-light
(playbook §2b priority 1). Nothing here changes any ledger row; the two
target rows stay `assumed` until the units below land.

## What "remove the filecoin lineage" means

Two `formal-handoff.md` rows currently rest on paper review + Bellperson
v0.21.0 lineage:

1. **abstract RIPP/GIPA/TIPA/SnarkPack algebraic soundness** — the reviewed
   local equations are sound under the published algebraic assumptions.
2. **SnarkPack aggregation implies each per-proof Groth16 verification (S1)**
   — accepting one aggregate implies every per-proof Groth16 equation.

Row 2's stated removal path is already the right shape: a bounded Lean
theorem that the *verifier's accepted equation set* implies the per-proof
equations, NOT a re-proof of the IPP paper. Row 1 shrinks to named
cryptographic assumptions (q-SDH-type for KZG, RO for Fiat-Shamir) once the
implication is mechanized — the "lineage" part (trust because Filecoin
shipped it) disappears; what remains are standard primitive assumptions of
the same class as `ZK-ASSUME-BINDING-SIG-DL`.

## Existing assets to build on (do not rebuild)

- `proof-aggregation-lean-conformance/lean/SnarkpackOracle.lean` — a
  hand-built Lean model of the full transcript + folding discipline
  (FS labels, challenge derivation, GIPA fold order, padding), already
  differentially tested against the Rust over the exhaustive shape domain
  (round depths to SRS max). The mechanization should state its theorems
  over *this* model; the existing conformance gate is then the
  model↔implementation bridge (same pattern as the coverage manifest's
  extractor-parity gate).
- `ripp-spec.md` "Combined TIPP/MIPP Spec" — the five terminal base
  equations and the challenge-preimage discipline, reviewed line-by-line.
- `lean-dleq` (VCVio, Lean 4.30) — the in-repo pattern for Fiat-Shamir
  arguments with an RO idealization (`CC-ASSUME-POSEIDON-RO` analog) and a
  group axiomatization; reuse its assumption style, not its code.
- F* implementation-boundary proofs — statement encoding injectivity,
  challenge-preimage injectivity, wrapper binding. These already discharge
  the byte layer; the Lean work is purely algebraic.

## Proposed proof units (each independently landable)

U1. **Randomizer lift** — over an abstract pairing `e : G1 → G2 → GT` (comm
    ring target), if `ip_ab = Σ r^i·e(A_i,B_i)` and `agg_c = Σ r^i·C_i` hold
    for a Fiat-Shamir `r`, then each summand equation holds except with
    Schwartz–Zippel probability over the challenge space. Pure polynomial
    identity + a probability bound; no GIPA structure needed. Smallest unit,
    do it first as the shakedown.

U2. **GIPA fold soundness (core induction)** — one symbolic round lemma:
    the terminal folded equations plus the round `(L,R)` commitments and
    challenge `x` imply the pre-fold equations, under the structured-key
    binding (KZG/SRS) assumption. Then induction over depth (`SnarkpackOracle`
    already defines the fold recursion; depth ≤ 15 bounded domain). This is
    the aggregate→per-proof engine. Mirrors the DTK ladder discipline:
    symbolic step lemma, never unrolled.

U3. **KZG opening soundness** — `v_final`/`w_final` verified openings imply
    the final keys are the honest structured-key evaluations at the
    transcript challenges, assuming q-SDH-type hardness on BLS12-377 (named
    assumption row, standard). Two openings only (`v` once, `w` once).

U4. **Base-equation bridge** — the five terminal checks (ripp-spec §TIPP/MIPP
    verifier step 3) + U2 + U3 compose to: accepted aggregate ⇒ each
    `e(A_i,B_i) = e(α,β)·e(ip_i,γ)·…` per-proof Groth16 equation. This is
    the S1 theorem; its statement should be shaped like the note_reshape2x1
    capstone (one composition theorem consuming the unit lemmas).

U5. **Fiat-Shamir** — either (a) keep the RO idealization as a named row
    (matches `CC-ASSUME-POSEIDON-RO` precedent; cheap) or (b) mechanize the
    forking-lemma extraction in VCVio (expensive; only if the frontier deems
    it worth it). Recommendation: (a) — the byte-level preimage injectivity
    is already F*-proved, so the RO row is small and honest.

## What stays assumed (never pays back to prove)

BLS12-377 pairing hardness (q-SDH, co-CDH), SHA-256 rows, arkworks
arithmetic rows, hax extraction rows. These are primitive/tool assumptions,
not lineage.

## Ordering & effort guess

U1 (small, days) → U3 (medium) → U2 (the real work; needs frontier design
for the induction statement) → U4 (composition, mechanical once U2/U3
exist) → U5a (row rename). Resource rules: new lake package or extend
lean-dleq's — do NOT put this in `tools/gnark/lean` (different toolchain
pin, and the adapter forest's rebuild cost must not couple to it).

## Decision needed from Antoine (S1 green light)

- Approve this decomposition (esp. U5 = RO row, not forking lemma).
- Where the package lives (extend `lean-dleq` env vs new
  `proof-aggregation/formal/lean-ipp`).
- Whether U1+U3 may start before the full U2 design review.
