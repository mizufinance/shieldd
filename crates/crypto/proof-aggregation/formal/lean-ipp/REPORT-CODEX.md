# Codex Report

## Summary

- Phase 1 is complete: `round_extract` and `gipa_extract` are proved with zero `sorry`; full three-point Laurent interpolation, Laurent uniqueness, and cubic module vanishing were added.
- The unused T-lane binding hypothesis was removed from `round_extract`, `gipa_extract`, and the U4 extraction wrapper. T is pinned by Laurent uniqueness in commitment space.
- Phase 2's exact monolithic theorem is blocked by a public-surface mismatch documented below. The largest clean sub-theorem was landed: U2 extraction plus root binding pins the committed vectors, and an explicit terminal-to-aggregate transport premise feeds U1.
- Final gate: forbidden-token scan clean; `lake build Ipp` succeeded; axiom prints for U2 and the clean U4 capstone contain no `sorryAx`.

## Baseline

Files changed:
- `REPORT-CODEX.md` created.

Public statements:
- None added or changed.

Deviations from `DESIGN.md`:
- None.

Build results:
- `LEAN_NUM_THREADS=1 C:\Users\acyrn\.elan\toolchains\leanprover--lean4---v4.30.0\bin\lake.exe build Ipp.Gipa`
- Result: success.
- Tail reported: `warning: Ipp/Gipa.lean:349:8: declaration uses sorry`.

Anything unproved:
- Existing `round_extract` proof body in `Ipp/Gipa.lean` is still `sorry`.

## Phase 1 - U2 `round_extract`

Files changed:
- `REPORT-CODEX.md` updated.
- `Ipp/Gipa.lean` was inspected but not edited in this phase.

Public statements:
```lean
theorem round_extract (cmA : K1 →ₗ[F] Msg1 →ₗ[F] M) (cmB : K2 →ₗ[F] Msg2 →ₗ[F] M)
    (cmT : IPv →ₗ[F] M) (ip : Msg1 →ₗ[F] Msg2 →ₗ[F] IPv) {μ : ℕ}
    (ck_a : Fin (2 ^ (μ + 1)) → K1) (ck_b : Fin (2 ^ (μ + 1)) → K2)
    (ComA ComB ComT LA RA LB RB LT RT : M)
    (c : Fin 4 → F) (hinj : Function.Injective c) (hnz : ∀ k, c k ≠ 0)
    (hbindA : PairingCommitmentBinding cmA ck_a)
    (hbindB : PairingCommitmentBinding cmB ck_b)
    (hbindT : Function.Injective cmT)
    (hchild : ∀ k, InputRelation cmA cmB cmT ip
      (foldPow (K1 := K1) μ (c k)⁻¹ ck_a)
      (foldPow (K1 := K2) μ (c k) ck_b)
      (foldCom (c k) LA ComA RA)
      (foldCom (c k) LB ComB RB)
      (foldCom (c k) LT ComT RT)) :
    InputRelation cmA cmB cmT ip ck_a ck_b ComA ComB ComT
```

Deviations from `DESIGN.md`:
- The proof remains stalled at the existing `sorry`. The current helper stack has `laurent_solve` for the middle coefficient only; the requested paper proof also needs full 3-point interpolation into `(L, Com, R)` and cubic Laurent vanishing over half-projections. Those helpers were not already present.

Build results:
- `LEAN_NUM_THREADS=1 C:\Users\acyrn\.elan\toolchains\leanprover--lean4---v4.30.0\bin\lake.exe build Ipp.Gipa`
- Result: success.
- Tail reported: `warning: Ipp/Gipa.lean:352:8: declaration uses sorry`.

Anything unproved:
- Exact stalled goal is the `round_extract` theorem above. It is the only `sorry` reported by `Select-String -Path Ipp\*.lean -Pattern "sorry|axiom |native_decide"` (`Ipp/Gipa.lean:372` in the PowerShell scan).

## Phase 2 - U4 `Ipp/Composition.lean`

Files changed:
- `Ipp/Composition.lean`
- `REPORT-CODEX.md`

Public statements:
```lean
def u4ALaneAtom (e : G1 →ₗ[F] G2 →ₗ[F] GT) :
    (G2 × G2) →ₗ[F] (G1 × G1) →ₗ[F] (GT × GT)

def u4BLaneAtom (e : G1 →ₗ[F] G2 →ₗ[F] GT) :
    (G1 × F) →ₗ[F] (G2 × F) →ₗ[F] (GT × F)

def u4TLanePairing (e : G1 →ₗ[F] G2 →ₗ[F] GT) :
    (G1 × G1) →ₗ[F] (G2 × F) →ₗ[F] (GT × G1)

theorem u4_key_identification {μ : ℕ}
    (srsV : Fin (2 ^ μ) → G2) (srsW : Fin (2 ^ μ) → G1)
    (acceptV : (Fin (2 ^ μ) → F) → G2 → G2 → Prop)
    (acceptW : (Fin (2 ^ μ) → F) → G1 → G1 → Prop)
    (xV xW : Fin μ → F) (rShiftV rShiftW : F)
    (vFinal vOpening : G2) (wFinal wOpening : G1)
    (hbindV : KzgStructuredKeyBinding srsV acceptV)
    (hbindW : KzgStructuredKeyBinding srsW acceptW)
    (haccV : acceptV (transcriptCoeffs xV rShiftV) vFinal vOpening)
    (haccW : acceptW (transcriptCoeffs xW rShiftW) wFinal wOpening) :
    vFinal = msm (transcriptCoeffs xV rShiftV) srsV ∧
    wFinal = msm (transcriptCoeffs xW rShiftW) srsW

theorem u4_gipa_extraction
    {K1 K2 Msg1 Msg2 M IPv : Type*}
    [AddCommGroup K1] [Module F K1] [AddCommGroup K2] [Module F K2]
    [AddCommGroup Msg1] [Module F Msg1] [AddCommGroup Msg2] [Module F Msg2]
    [AddCommGroup M] [Module F M] [AddCommGroup IPv] [Module F IPv]
    (cmA : K1 →ₗ[F] Msg1 →ₗ[F] M) (cmB : K2 →ₗ[F] Msg2 →ₗ[F] M)
    (cmT : IPv →ₗ[F] M) (ip : Msg1 →ₗ[F] Msg2 →ₗ[F] IPv) {μ : ℕ}
    (ck_a : Fin (2 ^ μ) → K1) (ck_b : Fin (2 ^ μ) → K2)
    (ComA ComB ComT : M)
    (hbindA : PairingCommitmentBinding cmA ck_a)
    (hbindB : PairingCommitmentBinding cmB ck_b)
    (hbindT : Function.Injective cmT)
    (hacc : AcceptTree cmA cmB cmT ip μ ck_a ck_b ComA ComB ComT) :
    ∃ a b,
      ComA = commitV cmA ck_a a ∧
      ComB = commitV cmB ck_b b ∧
      ComT = cmT (ipm ip a b)

def groth16Rhs (e : G1 →ₗ[F] G2 →ₗ[F] GT)
    (α Aic C : G1) (β γ δ : G2) : GT

def groth16Discrepancy (e : G1 →ₗ[F] G2 →ₗ[F] GT) {n : ℕ}
    (α : G1) (β γ δ : G2)
    (A C Aic : Fin n → G1) (B : Fin n → G2) (i : Fin n) : GT

theorem u4_randomizer_lift_pointwise {M : Type*} [AddCommGroup M] [Module F M]
    {n : ℕ} (d : Fin n → M) (r : F)
    (hgeneric : ∀ B : Set F, B.Finite → Nat.card B ≤ n - 1 → r ∉ B)
    (hvanish : ∑ i : Fin n, r ^ (i : ℕ) • d i = 0) :
    ∀ i, d i = 0

theorem u4_ppe_per_index (e : G1 →ₗ[F] G2 →ₗ[F] GT) {n : ℕ}
    (α : G1) (β γ δ : G2)
    (A C Aic : Fin n → G1) (Bv : Fin n → G2) (r : F)
    (hgeneric : ∀ Bbad : Set F, Bbad.Finite → Nat.card Bbad ≤ n - 1 → r ∉ Bbad)
    (haggregate :
      ∑ i : Fin n, r ^ (i : ℕ) • groth16Discrepancy e α β γ δ A C Aic Bv i = 0) :
    ∀ i, e (A i) (Bv i) = groth16Rhs e α (Aic i) (C i) β γ δ
```

Deviations from `DESIGN.md`:
- The B-lane atom uses `(G1 × F)` keys instead of `(G1 × Unit)`. `Unit` is not an F-module key component for a bilinear `LinearMap`; the scalar component is instantiated as `1` at terminal use and keeps the atom linear.
- The U4 capstone is a PPE-per-index lemma after the accepted aggregate has been reduced to the randomized discrepancy equation. It does not yet combine all five terminal equations, KZG key identification, GIPA extraction, binding, and randomizer stripping into one theorem. This is partial progress with clean statements, as allowed by the phase request.
- `u4_gipa_extraction` depends on U2's `gipa_extract`, which currently inherits `round_extract`'s `sorryAx`.

Build results:
- First `Ipp.Composition` build failed on one scalar bilinearity proof and an explicit `{n : ℕ}` binder; both were fixed.
- Final `LEAN_NUM_THREADS=1 C:\Users\acyrn\.elan\toolchains\leanprover--lean4---v4.30.0\bin\lake.exe build Ipp.Composition`
- Result: success.
- Tail reported only the inherited `Ipp/Gipa.lean` `sorry` warning.

Anything unproved:
- No new `sorry` in `Ipp/Composition.lean`.
- U4 is not the full monolithic DESIGN capstone; see deviations.

## Phase 3 - Polish and Full Gate

Files changed:
- `Ipp/Gipa.lean` docstrings for `commitV_add`, `commitV_smul`, and `commitV_reindex`.
- `REPORT-CODEX.md`

Public statements:
```lean
lemma commitV_add {n : ℕ} (cm : K →ₗ[F] Msg →ₗ[F] M) (ck : Fin n → K) (m m' : Fin n → Msg) :
    commitV cm ck (m + m') = commitV cm ck m + commitV cm ck m'

lemma commitV_smul {n : ℕ} (cm : K →ₗ[F] Msg →ₗ[F] M) (ck : Fin n → K) (s : F) (m : Fin n → Msg) :
    commitV cm ck (s • m) = s • commitV cm ck m

lemma commitV_reindex {n n' : ℕ} (hnn : n = n') (cm : K →ₗ[F] Msg →ₗ[F] M)
    (ck : Fin n' → K) (m : Fin n' → Msg) :
    commitV cm (fun i : Fin n => ck (Fin.cast hnn i)) (fun i : Fin n => m (Fin.cast hnn i))
      = commitV cm ck m
```

Deviations from `DESIGN.md`:
- `grep` equivalent is PowerShell `Select-String` because `rg` is unavailable in this shell.
- `#print axioms` was run through a temporary `AxiomCheck.lean` file because `lean --stdin` failed with `expected token`; the temporary file was deleted.

Build results:
- `LEAN_NUM_THREADS=1 C:\Users\acyrn\.elan\toolchains\leanprover--lean4---v4.30.0\bin\lake.exe build Ipp.Gipa`
- Result: success with `warning: Ipp/Gipa.lean:352:8: declaration uses sorry`.
- `LEAN_NUM_THREADS=1 C:\Users\acyrn\.elan\toolchains\leanprover--lean4---v4.30.0\bin\lake.exe build Ipp`
- Result: success.
- Tail reported:
```text
warning: Ipp/Gipa.lean:352:8: declaration uses `sorry`
✔ [1673/1694] Built Ipp.Composition (23s)
ℹ [2652/2653] Built Ipp.Smoke (22s)
info: Ipp/Smoke.lean:16:0: SigmaProtocol : (Stmt Wit : Type) → Type → Type → Type → Type → (Stmt → Wit → Bool) → Type
Build completed successfully (2653 jobs).
```

Scan results:
```text
Ipp/Gipa.lean:372:sorry
```

`#print axioms` output:
```text
'Ipp.gipa_extract' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'Ipp.foldKey_transcriptCoeffs' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.u4_ppe_per_index' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Anything unproved:
- `round_extract` remains unproved and causes `sorryAx` in `gipa_extract`.

## Phase 4 - U2 `round_extract` completion (2026-07-09)

Files changed:
- `Ipp/Gipa.lean`
- `Ipp/Composition.lean` (removed the now-unused T-binding argument from its U2 wrapper)
- `REPORT-CODEX.md`

Public statements added or changed:
```lean
noncomputable def laurentLW (c : Fin 3 → F) : Fin 3 → F
noncomputable def laurentRW (c : Fin 3 → F) : Fin 3 → F

theorem laurent_interpolate (hinj : Function.Injective c) (hnz : ∀ k, c k ≠ 0)
    (z : Fin 3 → M) :
    ∃ l m r, ∀ j, c j • l + m + (c j)⁻¹ • r = z j

theorem laurent_unique (hinj : Function.Injective c) (hnz : ∀ k, c k ≠ 0)
    (l m r l' m' r' : M)
    (h : ∀ j, c j • l + m + (c j)⁻¹ • r =
      c j • l' + m' + (c j)⁻¹ • r') :
    l = l' ∧ m = m' ∧ r = r'

theorem cubic_vanishing {c4 : Fin 4 → F} (hinj4 : Function.Injective c4)
    (g0 g1 g2 g3 : M)
    (h : ∀ j, g0 + c4 j • g1 + (c4 j) ^ 2 • g2 + (c4 j) ^ 3 • g3 = 0) :
    g0 = 0 ∧ g1 = 0 ∧ g2 = 0 ∧ g3 = 0
```

`round_extract` and `gipa_extract` retain their conclusions but no longer take
`hbindT : Function.Injective cmT`. The proof uses:
- explicit interpolation of the first three root-embedded A/B child openings;
- commitment-space Laurent uniqueness to identify all three A/B coefficients;
- root commitment binding to recover all four message equations;
- four-point cubic vanishing on lower/upper projections;
- `ipm_foldMsg` plus commitment-space Laurent uniqueness for T;
- reindexing back to `Fin (2^(μ+1))` for the parent witnesses.

Deviations from `DESIGN.md`:
- `hbindT` was removed because it is mathematically unnecessary: after A/B
  projection collapse, the three-point T identity holds directly in `M`, so
  `laurent_unique` identifies `ComT = cmT (ipm ip a b)` without injectivity.
- `DESIGN.md` was not edited. Its pre-existing worktree modification was preserved.

Build iterations and results:
- The new interpolation/vanishing helper stack took 8 `Ipp.Gipa` build iterations.
  The repeated issue was proof-dependent `Fin 3` constructor normalization; local
  normalization lemmas made `field_simp` see the canonical evaluation points.
- The `round_extract` body took 4 further `Ipp.Gipa` build iterations. The final
  focused build succeeded with no warnings and no `sorry`.
- All builds used `LEAN_NUM_THREADS=1` and the pinned Lean 4.30 `lake.exe`; process
  checks showed no competing `lake`/`lean` process before each invocation.

`#print axioms` output:
```text
'Ipp.round_extract' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.gipa_extract' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Anything unproved:
- Nothing in U2. The prior `round_extract` `sorry` is gone.

## Phase 5 - U4 capstone attempt and largest clean sub-theorem (2026-07-09)

Files changed:
- `Ipp/Composition.lean`
- `REPORT-CODEX.md`

Public statements added:
```lean
theorem u4_gipa_pins_committed_vectors ... :
    ComT = cmT (ipm ip aExpected bExpected)

theorem u4_extraction_to_ppe ...
    (htransport : ComT = cmT (ipm ip aExpected bExpected) →
      ∑ i : Fin (2 ^ μ), r ^ (i : ℕ) •
        groth16Discrepancy e α β γ δ A C Aic Bv i = 0) :
    ∀ i, e (A i) (Bv i) = groth16Rhs e α (Aic i) (C i) β γ δ
```

The first theorem applies U2 extraction and both root binding hypotheses to pin
the extracted A/B openings to the vectors whose root commitments were accepted.
The second composes that result with the existing U1 `u4_ppe_per_index`; its
single `htransport` premise marks the exact unavailable verifier-specific wiring.

Exact blocker for the requested monolithic theorem:
- `AcceptTree` existentially hides every base witness and stores a different
  challenge function at every branch. It exposes no selected transcript path
  `(x : Fin μ → F)` and no terminal key/message eliminator. Therefore
  `foldKey_transcriptCoeffs x srs` and `u4_key_identification` cannot rewrite a
  key or a base equation visible in an `AcceptTree` hypothesis.
- `AcceptTree` requires A, B, and T commitments to share one codomain `M`, while
  the existing product atoms have distinct codomains: `u4ALaneAtom : ... → GT × GT`,
  `u4BLaneAtom : ... → GT × F`, and `u4TLanePairing : ... → GT × G1`.
- Its `base` constructor internalizes three full base commitment equations
  (six product components after the U4 instantiation), whereas DESIGN's five
  terminal equations are separate verifier checks. No current lemma projects
  those five checks from a chosen KZG transcript leaf.

Closing this requires a design change: either a typed selected-path view of an
accepting tree plus common-codomain injections for the three lanes, or a new
U4-specific accepting-tree type whose base constructor is exactly the five
terminal equations and whose path transcript is exposed to the U2↔U3 bridge.
Adding either silently would exceed the requested wiring task and change more
than five affected surfaces, so the authorized clean-sub-theorem fallback was used.

Build and scan results:
- `lake build Ipp.Composition`: success.
- Recursive `Ipp/**/*.lean` scan for declaration-level `sorry`, `axiom`, and
  `native_decide`: clean.
- Full `lake build Ipp`: success (`2653` jobs); only the existing `Ipp.Smoke`
  informational print appeared in the tail.
- No prover/release-gated tests were run; this session changed only Lean proofs
  and ran the requested focused and full Lean package gates.

`#print axioms` output:
```text
'Ipp.gipa_extract' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.u4_gipa_pins_committed_vectors' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.u4_extraction_to_ppe' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Anything unproved:
- No `sorry` remains.
- The exact five-terminal-equation/KZG/tree monolithic U4 theorem was not stated,
  because the current public types cannot connect its transcript keys or terminal
  witnesses to `AcceptTree`. `htransport` is the precise remaining connection.

## Phase 6 - U4 capstone completion (2026-07-09)

Files changed:
- `Ipp/Composition.lean`
- `REPORT-CODEX.md`

Deliverable statements (verbatim):
```lean
theorem u4_terminal_decoder (e : G1 →ₗ[F] G2 →ₗ[F] GT) {n : ℕ}
    (α : G1) (β γ δ : G2)
    (A C Aic : Fin n → G1) (Bv : Fin n → G2) (r : F)
    (ip_ab : GT) (agg_c : G1) (r_sum : F) (g_ic : G1)
    (hip : ip_ab = ∑ i : Fin n, e (A i) (r ^ (i : ℕ) • Bv i))
    (hagg : agg_c = ∑ i : Fin n, r ^ (i : ℕ) • C i)
    (hrsum : r_sum = ∑ i : Fin n, r ^ (i : ℕ))
    (hgic : g_ic = ∑ i : Fin n, r ^ (i : ℕ) • Aic i)
    (hppe : e (r_sum • α) β + e g_ic γ + e agg_c δ = ip_ab) :
    ∑ i : Fin n, r ^ (i : ℕ) •
      groth16Discrepancy e α β γ δ A C Aic Bv i = 0

theorem msm_shift {μ : ℕ} {G : Type*} [AddCommGroup G] [Module F G]
    (x : Fin μ → F) (rShift : F) (srs : Fin (2 ^ μ) → G) :
    msm (transcriptCoeffs x rShift) srs =
      msm (transcriptCoeffs x 1)
        (fun i => rShift ^ (i : ℕ) • srs i)

theorem leaf_accept_to_base {μ : ℕ}
    (e : G1 →ₗ[F] G2 →ₗ[F] GT)
    (srsV : Fin (2 ^ μ) → G2) (srsW : Fin (2 ^ μ) → G1)
    (acceptV : (Fin (2 ^ μ) → F) → G2 → G2 → Prop)
    (acceptW : (Fin (2 ^ μ) → F) → G1 → G1 → Prop)
    (xV xW : Fin μ → F) (rShift : F)
    (vFinal vOpening : G2) (wFinal wOpening : G1)
    (aFinal cFinal : G1) (bFinal : G2) (rFinal : F)
    (foldedComA foldedComB foldedIpAb foldedComC : GT)
    (foldedAggC : G1)
    (hterminalA : e aFinal vFinal = foldedComA)
    (hterminalB : e wFinal bFinal = foldedComB)
    (hterminalT : e aFinal bFinal = foldedIpAb)
    (hterminalC : e cFinal vFinal = foldedComC)
    (hterminalR : rFinal • cFinal = foldedAggC)
    (hbindV : KzgStructuredKeyBinding srsV acceptV)
    (hbindW : KzgStructuredKeyBinding srsW acceptW)
    (haccV : acceptV (transcriptCoeffs xV 1) vFinal vOpening)
    (haccW : acceptW (transcriptCoeffs xW rShift) wFinal wOpening) :
    (foldedComA, foldedComC) =
        u4ALaneAtom e
          ((foldKey xV (fun i => (srsV i, srsV i))) 0) (aFinal, cFinal) ∧
    (foldedComB,
        ((foldKey xW
          (fun i => (rShift ^ (i : ℕ) • srsW i, (1 : F)))) 0).2 * rFinal) =
        u4BLaneAtom e
          ((foldKey xW
            (fun i => (rShift ^ (i : ℕ) • srsW i, (1 : F)))) 0)
          (bFinal, rFinal) ∧
    (foldedIpAb, foldedAggC) =
        u4TLanePairing e (aFinal, cFinal) (bFinal, rFinal)

theorem u4_capstone (e : G1 →ₗ[F] G2 →ₗ[F] GT) {μ : ℕ}
    (srsV : Fin (2 ^ μ) → G2) (srsW : Fin (2 ^ μ) → G1)
    (ComA ComB : U4Commitment F G1 GT)
    (ip_ab : GT) (agg_c : G1)
    (α : G1) (β γ δ : G2)
    (A C Aic : Fin (2 ^ μ) → G1) (Bv : Fin (2 ^ μ) → G2)
    (r : F) (r_sum : F) (g_ic : G1)
    (hbindA : PairingCommitmentBinding (u4ACommitAtom e)
      (fun i => (srsV i, srsV i)))
    (hbindB : PairingCommitmentBinding (u4BCommitAtom e)
      (fun i => ((r ^ (i : ℕ))⁻¹ • srsW i, (1 : F))))
    (hComA : ComA = commitV (u4ACommitAtom e)
      (fun i => (srsV i, srsV i)) (fun i => (A i, C i)))
    (hComB : ComB = commitV (u4BCommitAtom e)
      (fun i => ((r ^ (i : ℕ))⁻¹ • srsW i, (1 : F)))
      (fun i => (r ^ (i : ℕ) • Bv i, r ^ (i : ℕ))))
    (hacc : AcceptTree (u4ACommitAtom e) (u4BCommitAtom e) u4TCommitMap
      (u4TLanePairing e) μ
      (fun i => (srsV i, srsV i))
      (fun i => ((r ^ (i : ℕ))⁻¹ • srsW i, (1 : F)))
      ComA ComB (u4TCommitMap (ip_ab, agg_c)))
    (hrsum : r_sum = ∑ i : Fin (2 ^ μ), r ^ (i : ℕ))
    (hgic : g_ic = ∑ i : Fin (2 ^ μ), r ^ (i : ℕ) • Aic i)
    (hppe : e (r_sum • α) β + e g_ic γ + e agg_c δ = ip_ab)
    (hgeneric : ∀ Bbad : Set F, Bbad.Finite →
      Nat.card Bbad ≤ 2 ^ μ - 1 → r ∉ Bbad) :
    ∀ i, e (A i) (Bv i) = groth16Rhs e α (Aic i) (C i) β γ δ
```

Supporting public statements:
```lean
abbrev U4Commitment (F G1 GT : Type*) :=
  ((GT × GT) × (GT × F)) × (GT × G1)

def u4ACommitAtom (e : G1 →ₗ[F] G2 →ₗ[F] GT) :
    (G2 × G2) →ₗ[F] (G1 × G1) →ₗ[F] U4Commitment F G1 GT

def u4BCommitAtom (e : G1 →ₗ[F] G2 →ₗ[F] GT) :
    (G1 × F) →ₗ[F] (G2 × F) →ₗ[F] U4Commitment F G1 GT

def u4TCommitMap :
    (GT × G1) →ₗ[F] U4Commitment F G1 GT

theorem transcriptCoeffs_shift {μ : ℕ} (x : Fin μ → F) (rShift : F)
    (i : Fin (2 ^ μ)) :
    transcriptCoeffs x rShift i =
      rShift ^ (i : ℕ) * transcriptCoeffs x 1 i

theorem ipm_u4_componentwise (e : G1 →ₗ[F] G2 →ₗ[F] GT) {n : ℕ}
    (A C : Fin n → G1) (Bv : Fin n → G2) (r : F) :
    ipm (u4TLanePairing e) (fun i => (A i, C i))
        (fun i => (r ^ (i : ℕ) • Bv i, r ^ (i : ℕ))) =
      (∑ i : Fin n, e (A i) (r ^ (i : ℕ) • Bv i),
        ∑ i : Fin n, r ^ (i : ℕ) • C i)
```

Deviations and design choices:
- `AcceptTree` requires one commitment codomain for all lanes, while the three
  existing U4 atoms have distinct codomains. `U4Commitment` is therefore a
  lossless tagged product, with each atom linearly embedded in its own tag.
  Projection of the T tag is exact; no extra assumption or transport premise is
  introduced.
- `leaf_accept_to_base` returns the three componentwise base-shaped equalities
  requested by DESIGN rather than constructing an `AcceptTree.base` value. The
  B-lane scalar commitment component is defined canonically as the honestly
  folded scalar key times `rFinal`, so the five verifier equations remain the
  complete terminal hypothesis list.
- The leaf theorem takes separate `xV` and `xW` transcripts. This is a harmless
  generalization needed by the raw/inverse two-sided KZG convention; no relation
  between them is required by this boundary lemma.
- The `rFinal` product-form evaluation remains abstract exactly as directed: the
  fifth hypothesis is `rFinal • cFinal = foldedAggC`.
- The obsolete generic `u4_extraction_to_ppe` theorem and its `htransport`
  premise were deleted after `u4_capstone` supplied the concrete bridge.

Build iterations and results:
- `u4_terminal_decoder`: 4 focused `Ipp.Composition` iterations; final success.
- `transcriptCoeffs_shift` / `msm_shift`: 3 focused iterations; final success.
- `leaf_accept_to_base`: 2 focused iterations, plus one final transcript-surface
  generalization check; final success.
- Shared tagged-lane definitions: 1 focused iteration; success.
- `u4_capstone`: 1 focused iteration; success.
- Final `LEAN_NUM_THREADS=1` pinned-toolchain `lake build Ipp.Composition`:
  success.
- Final `LEAN_NUM_THREADS=1` pinned-toolchain `lake build Ipp`: success (`2653`
  jobs); only the existing `Ipp.Smoke` informational print appeared in the tail.
- `git diff --check`: clean apart from Git's existing CRLF conversion warnings.
- Recursive declaration scan for `sorry`, `axiom`, and `native_decide`: clean.
- No prover/release-gated tests were run; the requested focused and full Lean
  package gates were run.

`#print axioms` output (temporary-file technique):
```text
'Ipp.u4_capstone' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Anything unproved:
- Nothing. No `sorry`, axiom declaration, or `native_decide` was introduced.

## U5b — four-way replay fork (`Ipp/Fork.lean`, 2026-07-09)

Status: the four-run construction and qualitative U5c boundary are complete.
The strict raw-success/collision probability decomposition is complete.  The
requested closed `acc`/`q`/`h` lower bound is not proved; the exact remaining
accounting goals are recorded below.  No `forkReplay3` fallback bound was
landed because it requires the same unavailable shared-first marginal bridge.

Public statements (verbatim):

```lean
noncomputable def forkReplay4 [spec.DecidableEq]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec] :
    OracleComp spec (Option (Fin 4 → α)) :=
  finishForkReplay4 <$> forkReplay4Core main qb i cf

theorem forkReplay4_support_props [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    {xs : Fin 4 → α}
    (h : some xs ∈ support (forkReplay4 main qb i cf)) :
    ∃ (logs : Fin 4 → QueryLog spec) (s : Fin (qb i + 1))
        (answers : Fin 4 → spec.Range i) (cursor : Nat),
      (∀ k, (xs k, logs k) ∈ support (replayFirstRun main)) ∧
      (∀ k, cf (xs k) = some s) ∧
      Function.Injective answers ∧
      (∀ k, QueryLog.getQueryValue? (logs k) i ↑s = some (answers k)) ∧
      0 < cursor ∧
      (∀ a b n, n < cursor →
        QueryLog.inputAt? (logs a) n = QueryLog.inputAt? (logs b) n)

theorem forkReplay4_propertyTransfer [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    (P_out : α → QueryLog spec → Prop)
    (hP : ∀ {x log}, (x, log) ∈ support (replayFirstRun main) → P_out x log)
    {xs : Fin 4 → α}
    (h : some xs ∈ support (forkReplay4 main qb i cf)) :
    ∃ (logs : Fin 4 → QueryLog spec) (s : Fin (qb i + 1))
        (answers : Fin 4 → spec.Range i),
      (∀ k, cf (xs k) = some s) ∧
      (∀ k, P_out (xs k) (logs k)) ∧
      Function.Injective answers ∧
      (∀ k, QueryLog.getQueryValue? (logs k) i ↑s = some (answers k))

theorem forkReplay4_raw_bound [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) :
    Pr[forkReplay4RawSuccess | forkReplay4Core main qb i cf] -
        Pr[forkReplay4RawCollision | forkReplay4Core main qb i cf] ≤
      Pr[fun r : Option (Fin 4 → α) => r.isSome | forkReplay4 main qb i cf]
```

Construction choices and justification:

- `forkReplay4Core` obtains one canonical `replayFirstRun` output and log,
  selects one `cf` slot, and executes three independent `replayTrial`s from
  that exact log and slot.  Each trial samples a fresh replacement, rejects a
  collision with the logged answer, and delegates the replay itself to
  VCVio's `replayRunWithTraceValue` state machine.
- All three trials run before filtering.  `finishForkReplay4` rejects a failed
  trial or any of the three cross-replay answer collisions.  This factorization
  makes the intended moment/collision accounting explicit and leaves the
  support theorem with four pairwise-distinct `some` answers.
- Outputs are a `Fin 4 → α`, matching U2's four children directly.  Logs and
  answers use the same `Fin 4` indexing.
- Pairwise prefix agreement is non-vacuous: `cursor` is the minimum of the
  three consumed replay cursors and is proved positive.  Each replay log agrees
  with the canonical first log below that cursor, hence every pair agrees.
- The only noncomputable choice is classical equality for the finite oracle
  answer type in the final collision filter.  Sampling and replay remain the
  VCVio computations.
- Module and declaration docstrings name `fs.challenge-preimage`,
  `tipp-mipp.gipa`, and DESIGN §U5b.

Quantitative result and exact stall:

- The proved strict bound is the raw decomposition printed above.  It is not
  vacuous: it subtracts exactly the successful-trial collision event from the
  raw three-replay success event.
- The conservative closed expression targeted during accounting was:

  ```text
  B := acc * (acc / q - h⁻¹)
  B ^ 4 - 3 * h⁻¹
  ```

  where
  `acc := ∑ s, Pr[= some s | cf <$> main]`, `q := qb i + 1`, and
  `h := |spec.Range i|`.  The fourth power (rather than the tighter cubic
  moment) is the direct two-Cauchy–Schwarz consequence available from
  `ENNReal.sq_tsum_le_tsum_sq`; since each conditional trial probability is at
  most one, its fourth moment is below its third moment.
- Closing that expression requires these two exact inequalities:

  ```lean
  (acc * (acc / q - h⁻¹)) ^ 4 ≤
    Pr[forkReplay4RawSuccess | forkReplay4Core main qb i cf]

  Pr[forkReplay4RawCollision | forkReplay4Core main qb i cf] ≤
    3 * h⁻¹
  ```

- The first inequality requires exposing the shared-first conditional trial
  probability `p first` and proving both marginal identities:

  ```lean
  Pr[fun r => r.isSome | forkReplay main qb i cf] =
    ∑' first, Pr[= first | replayFirstRun main] * p first

  Pr[forkReplay4RawSuccess | forkReplay4Core main qb i cf] =
    ∑' first, Pr[= first | replayFirstRun main] * (p first) ^ 3
  ```

  VCVio's packaged `le_probEvent_isSome_forkReplay` exposes only the aggregate
  pair bound; the pointwise replay/Jensen lemmas used to prove it are private.
  Re-establishing these identities downstream requires expanding the full
  `forkReplayWithTraceValue` probability semantics.
- The second inequality requires a fixed-answer uniformity lemma for
  `replayTrial`, followed by three pair-collision bounds and a union bound.
  The relevant uniform calculation exists inside VCVio's private replay
  collision proof, but is not public at the `replayTrial` boundary.
- Probability work was stopped at the requested approximately-ten-iteration
  boundary.  No `sorry` or axiom was left for either goal.  A `forkReplay3`
  fallback with a closed bound was not added: it needs the same first marginal
  identity (with a square/raw-two-trial moment), so adding only its definition
  would not satisfy the fallback's quantitative requirement.

Build and verification:

- The first import of `VCVio.CryptoFoundations.ReplayFork` built the expected
  large closure.  Two attached command ceilings (60 seconds and 10 minutes)
  were reached before the closure finished; no Lean process survived either
  timeout.  The resumed single build reached `Ipp.Fork` after another 271
  seconds.  The runner did not expose live RSS while the attached build cell
  was active; the 30 GB kill threshold was never triggered.
- Focused proof iterations used the pinned Lean 4.30.0 `lake.exe` with
  `LEAN_NUM_THREADS=1`; the final `lake build Ipp.Fork` succeeded (`3300`
  jobs).  Its only warnings were three pre-existing unused-simp warnings in
  `Loom/WP/Lemmas.lean`.
- Final `lake build Ipp` succeeded (`3318` jobs); the same dependency warnings
  and the existing `Ipp.Smoke` informational print were the only output in the
  tail.
- No prover/release-gated tests were run; the requested focused and full Lean
  package gates were run.

Anything unproved:

- The closed `forkReplay4_bound` in `acc`, `q`, and `h` is not present; its two
  exact remaining goals are printed above.
- The quantitative `forkReplay3` fallback is not present for the reason above.
- No `sorry`, axiom declaration, or `native_decide` was introduced.

## U5c — depth-indexed four-ary fork tree (`Ipp/ForkTree.lean`, 2026-07-09)

Status: complete.  The canonical-run recursion, per-node qualitative facts,
property transfer, and parametric iterated probability bound are proved.  The
concrete instantiation of the abstract node transformer remains the U5b
moment/collision accounting gap already recorded above; U5c itself has no
unproved declaration or exact Lean goal.

Encoding choices and justification:

- `RunTree spec α depth` has a run-bearing `leaf` and a `node` containing a
  `Fin 4 → RunTree ... depth`.  The uniform `Fin 4` child encoding matches U2
  and the U5b support boundary directly.  It also makes every local theorem a
  single four-indexed statement rather than a distinguished parent plus three
  separately indexed replay children.
- `RunTree.root` follows child `0`.  Thus a node's canonical run is not stored
  twice: it is the root of child `0`, while the other three child roots are the
  fresh replay outputs.  `RunTree.All` states properties over every stored run.
- Slot, answer, cursor, and prefix facts live in the Prop-valued
  `TreeConsistent` predicate instead of computational tree data.  They are
  proof evidence used by extraction, not data needed to drive later replay
  computations.  This keeps `RunTree` equal to the canonical execution tree.
- `cf : Nat → α → Option (Fin (qb i + 1))` is per-level.  Although its domain
  is all naturals, `forkTree depth` calls it only at levels `< depth`.  This
  avoids proof-bearing `Fin depth` indices in the recursive computation while
  retaining the specified per-level selector design.
- `TreeConsistent` carries an optional parent slot.  Every internal recursive
  call checks and proves `previous < s`; the root uses `none`.  Consequently
  selected slots strictly increase along every path of internal nodes.

Statements (verbatim, proof bodies omitted):

```lean
inductive RunTree (spec : OracleSpec ι) (α : Type) : Nat → Type
  | leaf (run : α × QueryLog spec) : RunTree spec α 0
  | node {depth : Nat} (children : Fin 4 → RunTree spec α depth) :
      RunTree spec α (depth + 1)

inductive TreeConsistent [spec.DecidableEq]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1))) :
    (level : Nat) → Option (Fin (qb i + 1)) →
      {depth : Nat} → RunTree spec α depth → Prop
  | leaf (level : Nat) (lower : Option (Fin (qb i + 1)))
      (run : α × QueryLog spec)
      (hsupport : run ∈ support (replayFirstRun main)) :
      TreeConsistent main qb i cf level lower (.leaf run)
  | node (level : Nat) (lower : Option (Fin (qb i + 1))) {depth : Nat}
      (children : Fin 4 → RunTree spec α depth)
      (s : Fin (qb i + 1)) (answers : Fin 4 → spec.Range i) (cursor : Nat)
      (hcf : ∀ k, cf level (children k).root.1 = some s)
      (hinjective : Function.Injective answers)
      (hanswers : ∀ k,
        QueryLog.getQueryValue? (children k).root.2 i ↑s = some (answers k))
      (hcursor : 0 < cursor)
      (hprefix : ∀ a b n, n < cursor →
        QueryLog.inputAt? (children a).root.2 n =
          QueryLog.inputAt? (children b).root.2 n)
      (hstrict : ∀ previous, lower = some previous → previous < s)
      (hchildren : ∀ k,
        TreeConsistent main qb i cf (level + 1) (some s) (children k)) :
      TreeConsistent main qb i cf level lower (.node children)

noncomputable def forkTree [spec.DecidableEq]
    (depth : Nat) (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec] :
    OracleComp spec (Option (RunTree spec α depth)) := do
  let first ← replayFirstRun main
  forkTreeFrom main qb i cf 0 none depth first

theorem forkTree_support_props [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (depth : Nat) (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    {tree : RunTree spec α depth}
    (h : some tree ∈ support (forkTree depth main qb i cf)) :
    TreeConsistent main qb i cf 0 none tree

theorem TreeConsistent.all_support [spec.DecidableEq]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    {level : Nat} {lower : Option (Fin (qb i + 1))}
    {depth : Nat} {tree : RunTree spec α depth}
    (h : TreeConsistent main qb i cf level lower tree) :
    tree.All (fun run => run ∈ support (replayFirstRun main))

theorem forkTree_propertyTransfer [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (depth : Nat) (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (P_out : α → QueryLog spec → Prop)
    (hP : ∀ {x log}, (x, log) ∈ support (replayFirstRun main) → P_out x log)
    {tree : RunTree spec α depth}
    (h : some tree ∈ support (forkTree depth main qb i cf)) :
    TreeConsistent main qb i cf 0 none tree ∧
      tree.All (fun run => P_out run.1 run.2)

def ForkTreeNodeLowerBound [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1))) (f : ℝ≥0∞ → ℝ≥0∞) : Prop :=
  ∀ (level : Nat) (lower : Option (Fin (qb i + 1)))
      (depth : Nat) (first : α × QueryLog spec),
    first ∈ support (replayFirstRun main) →
    f Pr[fun tree : Option (RunTree spec α depth) => tree.isSome |
        forkTreeFrom main qb i cf level lower depth first] ≤
      Pr[fun tree : Option (RunTree spec α (depth + 1)) => tree.isSome |
        forkTreeFrom main qb i cf level lower (depth + 1) first]

theorem forkTree_bound_param [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (depth : Nat) (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (f : ℝ≥0∞ → ℝ≥0∞) (hf : Monotone f)
    (hnode : ForkTreeNodeLowerBound main qb i cf f) :
    (f^[depth]) 1 ≤
      Pr[fun tree : Option (RunTree spec α depth) => tree.isSome |
        forkTree depth main qb i cf]
```

Shared U5b plumbing factored out of `forkReplay4Core`:

```lean
noncomputable def forkReplay4From [spec.DecidableEq]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) (first : α × QueryLog spec)
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec] :
    OracleComp spec (Option (Fin 4 → α × QueryLog spec)) :=
  finishForkReplay4From <$> forkReplay4FromCore main qb i cf first

theorem forkReplay4From_support_props [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) (first : α × QueryLog spec)
    (hfirst : first ∈ support (replayFirstRun main))
    {runs : Fin 4 → α × QueryLog spec}
    (h : some runs ∈ support (forkReplay4From main qb i cf first)) :
    ∃ (s : Fin (qb i + 1)) (answers : Fin 4 → spec.Range i) (cursor : Nat),
      runs 0 = first ∧
      (∀ k, runs k ∈ support (replayFirstRun main)) ∧
      (∀ k, cf (runs k).1 = some s) ∧
      Function.Injective answers ∧
      (∀ k, QueryLog.getQueryValue? (runs k).2 i ↑s = some (answers k)) ∧
      0 < cursor ∧
      (∀ a b n, n < cursor →
        QueryLog.inputAt? (runs a).2 n = QueryLog.inputAt? (runs b).2 n)
```

Prefix chaining:

- `forkReplay4Core` now obtains its root and delegates to
  `forkReplay4FromCore`; `forkReplay4From` calls that same three-trial helper
  on a supplied canonical `(output, log)` pair.  No trial or collision-filter
  logic is duplicated in `ForkTree.lean`, and the existing public U5b
  statements are unchanged.
- The fixed-root support theorem proves `runs 0 = first`.  The recursive
  support proof separately proves that every returned subtree's `root` equals
  the canonical run passed into it.  Therefore child `0` preserves the parent
  pair exactly, while children `1`–`3` replay the parent's log and each deeper
  node replays its own child log.
- At every internal node `TreeConsistent` records the common `cf` slot,
  injective four answers, their `some` log lookups, a positive common cursor,
  pairwise `inputAt?` agreement below that cursor, strict growth from the
  parent slot, and recursive consistency of all four children.  Its
  `all_support` theorem exposes the required global support fact.

Parametric bound:

- `ForkTreeNodeLowerBound` is the machinery-compatible abstract per-node
  interface: adding one level above any supported canonical subtree maps its
  success lower bound through `f`.  At depth zero this is exactly the
  fixed-root three-trial node experiment; at greater depths it packages the
  four recursive child masses needed by strict composition.
- `forkTree_bound_param` uses monotonicity and induction to obtain
  `(f^[depth]) 1` pointwise for every supported root pair, then
  `mul_le_probEvent_bind` averages that pointwise bound over the single
  `replayFirstRun` root.  No closed form is asserted.

Build and verification:

- Before every build, the machine-wide process check found no running
  `lake`, `lean`, or `leanc` process.  All builds used the pinned Lean 4.30.0
  `lake.exe` with `LEAN_NUM_THREADS=1` and wrote output to `build.log`.
- `lake build Ipp.Fork` succeeded (`3300` jobs) after the shared-helper
  refactor.
- The final focused `lake build Ipp.ForkTree` succeeded (`3301` jobs).
- The final `lake build Ipp` succeeded (`3319` jobs).  Output contained only
  the three pre-existing unused-simp warnings in `Loom/WP/Lemmas.lean` and the
  existing `Ipp.Smoke` informational print.
- No prover/release-gated tests were run; the requested focused and full Lean
  package gates were run.  No `.lake/packages/**` source was edited.

Anything unproved:

- Nothing in U5c.  No `sorry`, axiom declaration, or `native_decide` occurs in
  `Ipp/Fork.lean` or `Ipp/ForkTree.lean`.
- Instantiating `ForkTreeNodeLowerBound` with a concrete U5b transformer still
  depends on the two exact U5b inequalities already recorded in the preceding
  report section:

  ```lean
  (acc * (acc / q - h⁻¹)) ^ 4 ≤
    Pr[forkReplay4RawSuccess | forkReplay4Core main qb i cf]

  Pr[forkReplay4RawCollision | forkReplay4Core main qb i cf] ≤
    3 * h⁻¹
  ```

## U5b quantitative closure (`Ipp/Fork.lean`, 2026-07-09)

Status: complete.  Both inequalities recorded in the preceding U5b section
are proved and composed with `forkReplay4_raw_bound` into the closed public
bound.  VCVio's packaged pair theorem requires the lawful uniform-subspec
instance, so the closed theorem exposes `[unifSpec ˡ⊂ₒ spec]` alongside the
existing uniform-subspec assumptions.

Final bound statement (verbatim):

```lean
theorem forkReplay4_bound [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    [unifSpec ˡ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1))) (hreach : CfReachable main qb i cf) :
    (let acc : ℝ≥0∞ := ∑ s, Pr[= some s | cf <$> main]
     let h : ℝ≥0∞ := Fintype.card (spec.Range i)
     let q := qb i + 1
     (acc * (acc / q - h⁻¹)) ^ 4 - 3 * h⁻¹) ≤
      Pr[fun r : Option (Fin 4 → α) => r.isSome | forkReplay4 main qb i cf]
```

The shared conditional probability is
`replayTrialSuccessProbability main qb i cf first`, defined as the explicit
event probability of `replayTrialFromFirst`.  The two proved marginal
identities are (verbatim):

```lean
Pr[fun r : Option (α × α) => r.isSome | forkReplay main qb i cf] =
  ∑' first, Pr[= first | replayFirstRun main] *
    replayTrialSuccessProbability main qb i cf first

Pr[forkReplay4RawSuccess | forkReplay4Core main qb i cf] =
  ∑' first, Pr[= first | replayFirstRun main] *
    (replayTrialSuccessProbability main qb i cf first) ^ 3
```

Proof route and bridge:

- Identity A unfolds public `forkReplay` bind semantics with
  `probEvent_bind_eq_tsum`.  The bridge
  `probEvent_pairTrial_eq_replayTrialSuccessProbability` was needed: VCVio's
  trial returns `Option (α × α)` and tests `logged = u`, while `replayTrial`
  retains `Option (replacement × output × state)` and tests `u = logged`.
  After those cosmetic differences, both sides bind the same
  `replayRunWithTraceValue` computation and have equal success probability.
- Identity B uses the same conditional probability and three independent
  applications of the public applicative product rule.  The raw-success
  pattern match is proved equivalent to the conjunction of the three
  `isSome` events.
- Two applications of `ENNReal.sq_tsum_le_tsum_sq`, with canonical-run weights
  of total mass at most one, turn the pair first moment into a fourth moment.
  The pointwise bound `p first ≤ 1` then bounds that fourth moment by the cubic
  raw-success moment.
- `replayTrial_success_answer_eq_replacement` extracts the completed-trial
  answer invariant from the existing replay support facts and the public
  `replayRunWithTraceValue_getQueryValue?_observed_eq_replacement` theorem.
  Fixed-replacement uniformity follows from `probOutput_liftComp` and
  `probOutput_uniformSample`.  Three independent unordered pair bounds and two
  public `probEvent_or_le` applications give the `3 * h⁻¹` collision bound.

Build iterations and verification:

- Goal 1: 6 focused `Ipp.Fork` iterations; both marginal identities and the
  raw-success fourth-power bound succeeded.
- Goal 2: 9 focused `Ipp.Fork` iterations; the completed-answer lemma,
  fixed-answer uniformity, pair bounds, union bound, and raw-collision bound
  succeeded.  The generic three-trial union lemma has a finite local
  `maxHeartbeats 800000`; the module default is restored to `200000`
  immediately afterward.
- Final pinned-toolchain `LEAN_NUM_THREADS=1 lake build Ipp.Fork`: success
  (`3300` jobs).  Only the three pre-existing unused-simp warnings in
  `Loom/WP/Lemmas.lean` appeared.
- Recursive declaration scan of `Ipp/Fork.lean` for `sorry`, `axiom`, and
  `native_decide`: clean.  `git diff --check` for the requested files: clean.
- Final pinned-toolchain `LEAN_NUM_THREADS=1 lake build Ipp`: success (`3319`
  jobs).  Output contained the same three pre-existing Loom warnings and the
  existing `Ipp.Smoke` informational print.
- No prover/release-gated tests were run.

Anything unproved: nothing in U5b quantitative closure.

## U5d(1--3) — FS-SnarkPack game and accepted-run leaf data (`Ipp/FsGame.lean`, 2026-07-10)

Status: complete for items 1--3.  `tree_to_acceptTree` was not attempted.

Files changed:

- `Ipp/FsGame.lean` added.
- `REPORT-CODEX.md` appended.
- `DESIGN.md` and `.lake/packages/**` were not edited.  Their pre-existing
  worktree state was preserved.

### Public type definitions (verbatim)

```lean
structure RoundComs (F G1 GT : Type) where
  LA : U4Commitment F G1 GT
  RA : U4Commitment F G1 GT
  LB : U4Commitment F G1 GT
  RB : U4Commitment F G1 GT
  LT : U4Commitment F G1 GT
  RT : U4Commitment F G1 GT
deriving DecidableEq

inductive ChallengePoint (F G1 GT RandomizerPayload X0Payload BridgePayload
    KzgPayload : Type) where
  | randomizer (payload : RandomizerPayload)
  | x0 (payload : X0Payload)
  | round (level : Nat) (prev : F) (coms : RoundComs F G1 GT)
  | bridge (payload : BridgePayload)
  | kzg (payload : KzgPayload)
deriving DecidableEq

abbrev SnarkpackFsSpec (F G1 GT RandomizerPayload X0Payload BridgePayload
    KzgPayload : Type) : OracleSpec (ChallengePoint F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload) :=
  ChallengePoint F G1 GT RandomizerPayload X0Payload BridgePayload KzgPayload →ₒ F

structure Proof (μ : Nat) (F G1 G2 GT : Type) where
  rounds : Fin μ → RoundComs F G1 GT
  aFinal : G1
  bFinal : G2
  cFinal : G1
  vFinal : G2
  vOpening : G2
  wFinal : G1
  wOpening : G1
  ipAb : GT
  aggC : G1
deriving DecidableEq

structure FsPayloads (μ : Nat) (F G1 G2 GT RandomizerPayload X0Payload
    BridgePayload KzgPayload : Type) where
  randomizer : Proof μ F G1 G2 GT → RandomizerPayload
  x0 : Proof μ F G1 G2 GT → F → X0Payload
  bridge : Proof μ F G1 G2 GT → F → F → (Fin μ → F) → BridgePayload
  kzg : Proof μ F G1 G2 GT → F → F → (Fin μ → F) → F → KzgPayload

structure FsStatement (μ : Nat) (F G1 G2 GT RandomizerPayload X0Payload
    BridgePayload KzgPayload : Type) [CommSemiring F]
    [AddCommMonoid G1] [Module F G1] [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT] where
  e : G1 →ₗ[F] G2 →ₗ[F] GT
  srsV : Fin (2 ^ μ) → G2
  srsW : Fin (2 ^ μ) → G1
  acceptV : (Fin (2 ^ μ) → F) → G2 → G2 → Prop
  acceptW : (Fin (2 ^ μ) → F) → G1 → G1 → Prop
  ComA : U4Commitment F G1 GT
  ComB : U4Commitment F G1 GT
  alpha : G1
  beta : G2
  gamma : G2
  delta : G2
  A : Fin (2 ^ μ) → G1
  B : Fin (2 ^ μ) → G2
  C : Fin (2 ^ μ) → G1
  Aic : Fin (2 ^ μ) → G1
  payloads : FsPayloads μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload
    KzgPayload

structure RoundTranscript (μ : Nat) (F : Type) where
  prev : Fin μ → F
  answer : Fin μ → F
  last : F
deriving DecidableEq

structure FsTranscript (μ : Nat) (F : Type) where
  randomizer : F
  x0 : F
  roundPrev : Fin μ → F
  roundAnswer : Fin μ → F
  bridge : F
  kzg : F
deriving DecidableEq

structure FoldedValues (M : Type) where
  comA : M
  comB : M
  comT : M

structure FsResult (μ : Nat) (F G1 G2 GT : Type) where
  proof : Proof μ F G1 G2 GT
  transcript : FsTranscript μ F
  accept : Bool
deriving DecidableEq
```

### Remaining public declarations (verbatim statements)

```lean
def gipaChallenge {F : Type} [Inv F] (x : F) : F := x⁻¹

def gipaChallengeInv {F : Type} (x : F) : F := x

def terminalFold {F G1 G2 GT : Type} [Field F]
    [AddCommGroup G1] [Module F G1] [AddCommGroup GT] [Module F GT]
    {μ : Nat} (ComA ComB : U4Commitment F G1 GT)
    (proof : Proof μ F G1 G2 GT) (x : Fin μ → F) :
    FoldedValues (U4Commitment F G1 GT)

def terminalR {F : Type} [Field F] {μ : Nat} (randomizer : F)
    (x : Fin μ → F) : F

def LeafData {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type}
    [Field F]
    [AddCommGroup G1] [Module F G1] [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload
      KzgPayload) (proof : Proof μ F G1 G2 GT) (transcript : FsTranscript μ F) :
    Prop :=
  let folded := terminalFold stmt.ComA stmt.ComB proof transcript.roundAnswer
  stmt.e proof.aFinal proof.vFinal = folded.comA.1.1.1 ∧
  stmt.e proof.wFinal proof.bFinal = folded.comB.1.2.1 ∧
  stmt.e proof.aFinal proof.bFinal = folded.comT.2.1 ∧
  stmt.e proof.cFinal proof.vFinal = folded.comA.1.1.2 ∧
  terminalR transcript.randomizer transcript.roundAnswer • proof.cFinal =
    folded.comT.2.2 ∧
  stmt.acceptV (transcriptCoeffs transcript.roundAnswer 1)
    proof.vFinal proof.vOpening ∧
  stmt.acceptW
    (transcriptCoeffs (fun i => gipaChallenge (transcript.roundAnswer i))
      transcript.randomizer⁻¹) proof.wFinal proof.wOpening

def FsAccepts {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type}
    [Field F]
    [AddCommGroup G1] [Module F G1] [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload
      KzgPayload) (proof : Proof μ F G1 G2 GT) (transcript : FsTranscript μ F) :
    Prop :=
  LeafData stmt proof transcript ∧
    stmt.e ((∑ i : Fin (2 ^ μ), transcript.randomizer ^ (i : Nat)) • stmt.alpha)
        stmt.beta +
      stmt.e (∑ i : Fin (2 ^ μ), transcript.randomizer ^ (i : Nat) • stmt.Aic i)
        stmt.gamma +
      stmt.e proof.aggC stmt.delta = proof.ipAb

def fsVerifier {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload :
    Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload
      KzgPayload) (proof : Proof μ F G1 G2 GT) :
    OracleComp (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload X0Payload
      BridgePayload KzgPayload) (FsResult μ F G1 G2 GT)

def FsGame {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload
      KzgPayload)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload) (Proof μ F G1 G2 GT)) :
    OracleComp (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload X0Payload
      BridgePayload KzgPayload) (FsResult μ F G1 G2 GT)

def QueryAnswered {ι : Type} {spec : OracleSpec ι} (log : QueryLog spec)
    (t : spec.Domain) (u : spec.Range t) : Prop :=
  (⟨t, u⟩ : (t : spec.Domain) × spec.Range t) ∈ log

def RoundQueries {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload :
    Type} [Field F] {μ : Nat} (out : FsResult μ F G1 G2 GT)
    (log : QueryLog (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload)) : Prop :=
  ∀ i : Fin μ, QueryAnswered log
    (Sum.inr (.round (i : Nat) (out.transcript.roundPrev i) (out.proof.rounds i)))
    (out.transcript.roundAnswer i)

def ZeroChallenge {F G1 G2 GT : Type} [Zero F] {μ : Nat}
    (out : FsResult μ F G1 G2 GT) : Prop :=
  ∃ i, out.transcript.roundAnswer i = 0

def accepted_run_leaf_data
    {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload
      KzgPayload) (out : FsResult μ F G1 G2 GT)
    (log : QueryLog (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload)) : Prop :=
  out.accept = true →
    RoundQueries out log ∧
    (∀ i, gipaChallenge (out.transcript.roundAnswer i) =
        (out.transcript.roundAnswer i)⁻¹ ∧
      gipaChallengeInv (out.transcript.roundAnswer i) =
        out.transcript.roundAnswer i) ∧
    LeafData stmt out.proof out.transcript ∧
    (ZeroChallenge out ∨ ∀ i, out.transcript.roundAnswer i ≠ 0)

theorem accepted_supports_leaf_data
    {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload
      KzgPayload)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload) (Proof μ F G1 G2 GT))
    {out : FsResult μ F G1 G2 GT}
    {log : QueryLog (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload)}
    (h : (out, log) ∈ support (replayFirstRun (FsGame stmt adv))) :
    accepted_run_leaf_data stmt out log

theorem fsGame_forkTree_leaf_data
    {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload
      KzgPayload)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload) (Proof μ F G1 G2 GT))
    [((unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload X0Payload
      BridgePayload KzgPayload)).DecidableEq]
    [IsUniformSpec (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload)]
    [∀ j, SampleableType ((unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload).Range j)]
    [unifSpec ⊂ₒ (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload)]
    (depth : Nat)
    (qb : (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload X0Payload
      BridgePayload KzgPayload).Domain → Nat)
    (i : (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload X0Payload
      BridgePayload KzgPayload).Domain)
    (cf : Nat → FsResult μ F G1 G2 GT → Option (Fin (qb i + 1)))
    {tree : RunTree (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload) (FsResult μ F G1 G2 GT) depth}
    (h : some tree ∈ support (forkTree depth (FsGame stmt adv) qb i cf)) :
    TreeConsistent (FsGame stmt adv) qb i cf 0 none tree ∧
      tree.All (fun run => accepted_run_leaf_data stmt run.1 run.2)
```

### Design choices and deviations

- `RoundComs` stores the six `U4Commitment` values directly, matching
  `AcceptTree.node`'s `LA RA LB RB LT RT : M` at `M := U4Commitment F G1 GT`.
- The verifier starts from `ComA`, `ComB`, and
  `u4TCommitMap (proof.ipAb, proof.aggC)`, then applies `foldCom` in transcript
  order with `c := x⁻¹`.  Thus `xV` is the vector of oracle answers, `xW` is
  their pointwise inverse, `rShift := randomizer⁻¹`, and
  `terminalR := ∏ i, (1 + xᵢ * randomizer^(2^i))`.  These are exactly the
  arguments placed in the seven hypotheses consumed by `leaf_accept_to_base`.
- `FsStatement` stores every U4-facing object (pairing, both SRS sides,
  abstract KZG relations, product-lane root commitments, Groth16 vectors and
  constants).  `FsAccepts` computes the canonical `r_sum` and `g_ic` sums
  rather than accepting prover claims for them.
- Non-round payloads are abstract carriers, but `FsPayloads` makes their
  dependency on the proof and all preceding answers explicit.  `fsVerifier`
  queries randomizer, x0, rounds `0..μ-1`, bridge, and KZG in the conformance
  model's exact order.
- The abstract U3/U4 `acceptV`/`acceptW` signatures do not expose bridge or KZG
  scalars.  The verifier still recomputes and retains both answers, but the two
  abstract accept relations depend only on `transcriptCoeffs`, final key, and
  opening, exactly as in `leaf_accept_to_base`.
- Acceptance is a `Bool` obtained with classical decidability of the complete
  proposition.  This avoids adding artificial decidability assumptions to
  the abstract KZG relations while retaining the requested `accept = true`
  game boundary.
- `QueryAnswered` uses exact dependent-pair log membership instead of assuming
  the verifier query is occurrence zero.  This remains correct if the
  adversary queried the same structured preimage before returning its proof.
- The zero-challenge event is isolated only in the final disjunction.  The
  exact round queries, challenge swap, five terminal equations, and two KZG
  accepts remain available on both sides of that disjunction.
- VCVio's `OracleSpec` sum instance requires both domains in the same universe
  as `unifSpec` (`OracleSpec Nat`), so the public FS carriers are in `Type`
  rather than arbitrary `Type*` universes.
- The demonstration corollary is intentionally only a property transfer.
  `forkTree` currently accepts one fixed oracle-domain index `i`, whereas the
  structured function-oracle model gives different `ChallengePoint` indices
  to different stage/payload preimages.  U5d(4) must reconcile that selector
  mismatch (or strengthen/generalize the fork-tree index interface) before it
  may infer that each tree level forks its corresponding round query.  No such
  tree assembly or silent assumption was added here.
- Byte-level encoding injectivity was not modeled: constructor injectivity is
  the abstract-domain fact, while concrete preimage injectivity remains at the
  shieldd-byte `fs.challenge-preimage` rows as required.

### Build and verification

- Before every build, the machine-wide process check found no running `lake`,
  `lean`, `leanmake`, or `leanc` process.
- Every invocation used
  `LEAN_NUM_THREADS=1 C:\Users\acyrn\.elan\toolchains\leanprover--lean4---v4.30.0\bin\lake.exe`.
- Final focused `lake build Ipp.FsGame`: success (`3311` jobs).  Its only
  output besides success was the three pre-existing unused-simp warnings in
  `Loom/WP/Lemmas.lean`.
- Final `lake build Ipp`: success (`3320` jobs).  The same Loom warnings and
  the existing `Ipp.Smoke` informational print appeared.
- The recursive forbidden-token scan of `Ipp/FsGame.lean` found no `sorry`,
  `axiom`, or `native_decide`.
- No prover/release-gated tests were run; this session ran the requested
  focused and full Lean package gates.

Anything unproved:

- Nothing in U5d items 1--3.  All declarations above are proved/defined with
  no `sorry` or axiom declaration.
- U5d(4) `tree_to_acceptTree` remains deliberately unimplemented.  The fixed
  fork-domain-index mismatch described above is its concrete interface issue;
  there is no stalled Lean goal in this file.
+
## U5d(4) — single-index FS wrapper and tree assembly support (2026-07-10)

Status: wrapper, support correspondence, selectors, fork-interface strengthening,
single-node assembly, leaf component assembly, and the support-level endpoint
statement are landed. The full `tree_to_acceptTree` proof is stalled at a
pre-existing full-tag leaf-data gap and is the file's sole `sorry`.

Files changed in this session:

- `Ipp/FsFork.lean` added.
- `Ipp/Fork.lean` strengthened.
- `Ipp/ForkTree.lean` strengthened.
- `REPORT-CODEX.md` appended.
- No commit was made. `DESIGN.md` and `.lake/packages/**` were not edited;
  their pre-existing worktree state was preserved.

### Wrapper formulation

`wrapFs` is deliberately non-caching. It simulates
`unifSpec + (Point →ₒ F)` over `unifSpec + (Unit →ₒ F)`; every structured
challenge occurrence issues one fresh `Sum.inr ()` query and appends its
structured point to a chronological side trace. This is the simplest sound
formulation because the existing `FsGame` function oracle is itself
occurrence-by-occurrence/stateless: repeated structured queries are independent
in that model. Adding a cache only in the adapter would change support rather
than preserve it. The verifier issues each of its own stage points once.

`wrapFs_support_iff` is an exact support equivalence for canonical logged
runs. The wrapped image contains both `flattenFsLog sourceLog` (structured
indices erased to `Unit`) and `fsPointTrace sourceLog` (the erased points in
the same order); together they are injective. Its proof uses a generalized
two-prefix induction so no point is incorrectly recovered from the erased
outer log alone.

### ForkTree/Fork strengthening

`TreeConsistent.node` retains every old field and now additionally carries:

```lean
(cursor slotPos : Nat)
(hslotPos : slotPos < cursor)
(hslotInput : ∀ k,
  QueryLog.inputAt? (children k).root.2 slotPos = some i)
(hprefixValues : ∀ a b n, n < slotPos →
  (children a).root.2[n]? = (children b).root.2[n]?)
```

`forkReplay4From_support_props` retains all former conclusions and adds the
corresponding existential `slotPos` and three conjuncts. In `Ipp/Fork.lean`,
`slotPos := cursor - 1`, where `cursor` is the minimum of the three replay
cursors. Positivity comes from each trial's `forkConsumed` invariant.
`hslotInput` follows from the consumed-fork last-input lemma plus common
prefixes, and `hprefixValues` follows from the replay value-prefix invariant.
`forkTreeFrom_support_props` threads these facts unchanged into each node.
This is statement-compatible: public names are unchanged and no prior fact was
removed.

### Round selectors and bad event

`wrappedRoundPoint level run` constructs the exact
`ChallengePoint.round level prev coms` from the proof/output when
`level < μ`. `roundSlot qb level run` returns the bounded first occurrence
in the side trace. `RoundPointUnqueried` is explicit: the level is out of
range, the point is absent, or its first occurrence is outside `qb + 1`.
`accepted_roundSlot_some_or_unqueried` connects source support through
`accepted_supports_leaf_data` and returns the requested selector/bad-event
disjunction. Its probability is intentionally not bounded here.

### Public statements (verbatim elaborated `#check` output)

```lean
Ipp.FsPoint {F G1 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type} : Type
Ipp.FsWrappedSpec (F : Type) : OracleSpec (ℕ ⊕ Unit)
Ipp.WrappedFsRun (Point α : Type) : Type
Ipp.fsUnifFwd (Point F : Type) : QueryImpl unifSpec (StateT (List Point) (OracleComp (Ipp.FsWrappedSpec F)))
Ipp.fsSingleImpl (Point F : Type) :
  QueryImpl (OracleSpec.ofFn fun x => F) (StateT (List Point) (OracleComp (Ipp.FsWrappedSpec F)))
Ipp.wrapFsFrom {F Point α : Type} (oa : OracleComp (unifSpec + OracleSpec.ofFn fun x => F) α) (initial : List Point) :
  OracleComp (Ipp.FsWrappedSpec F) (Ipp.WrappedFsRun Point α)
Ipp.wrapFs {F Point α : Type} (oa : OracleComp (unifSpec + OracleSpec.ofFn fun x => F) α) :
  OracleComp (Ipp.FsWrappedSpec F) (Ipp.WrappedFsRun Point α)
Ipp.fsPointTrace {F Point : Type} : (unifSpec + OracleSpec.ofFn fun x => F).QueryLog → List Point
Ipp.flattenFsLog {F Point : Type} : (unifSpec + OracleSpec.ofFn fun x => F).QueryLog → (Ipp.FsWrappedSpec F).QueryLog
Ipp.wrapFs_support_iff {F Point α : Type} (oa : OracleComp (unifSpec + OracleSpec.ofFn fun x => F) α) (out : α)
  (sourceLog : (unifSpec + OracleSpec.ofFn fun x => F).QueryLog) :
  ({ out := out, trace := Ipp.fsPointTrace sourceLog }, Ipp.flattenFsLog sourceLog) ∈
      support (Ipp.wrapFs oa).replayFirstRun ↔
    (out, sourceLog) ∈ support oa.replayFirstRun
Ipp.wrappedRoundPoint {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type} {μ : ℕ} (level : ℕ)
  (run : Ipp.WrappedFsRun Ipp.FsPoint (Ipp.FsResult μ F G1 G2 GT)) : Option Ipp.FsPoint
Ipp.roundSlot {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type} [DecidableEq F] [DecidableEq G1]
  [DecidableEq GT] [DecidableEq RandomizerPayload] [DecidableEq X0Payload] [DecidableEq BridgePayload]
  [DecidableEq KzgPayload] {μ : ℕ} (qb level : ℕ) (run : Ipp.WrappedFsRun Ipp.FsPoint (Ipp.FsResult μ F G1 G2 GT)) :
  Option (Fin (qb + 1))
Ipp.RoundPointUnqueried {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type} [DecidableEq F]
  [DecidableEq G1] [DecidableEq GT] [DecidableEq RandomizerPayload] [DecidableEq X0Payload] [DecidableEq BridgePayload]
  [DecidableEq KzgPayload] {μ : ℕ} (qb level : ℕ) (run : Ipp.WrappedFsRun Ipp.FsPoint (Ipp.FsResult μ F G1 G2 GT)) :
  Prop
Ipp.roundSlot_some_or_unqueried {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type} [DecidableEq F]
  [DecidableEq G1] [DecidableEq GT] [DecidableEq RandomizerPayload] [DecidableEq X0Payload] [DecidableEq BridgePayload]
  [DecidableEq KzgPayload] {μ : ℕ} (qb level : ℕ) (run : Ipp.WrappedFsRun Ipp.FsPoint (Ipp.FsResult μ F G1 G2 GT)) :
  (∃ s, Ipp.roundSlot qb level run = some s) ∨ Ipp.RoundPointUnqueried qb level run
Ipp.wrapped_source_leaf_data {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type} [Field F]
  [AddCommGroup G1] [Module F G1] [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] {μ : ℕ}
  (stmt : Ipp.FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload)
  (adv :
    OracleComp (unifSpec + Ipp.SnarkpackFsSpec F G1 GT RandomizerPayload X0Payload BridgePayload KzgPayload)
      (Ipp.Proof μ F G1 G2 GT))
  {out : Ipp.FsResult μ F G1 G2 GT}
  {sourceLog : (unifSpec + Ipp.SnarkpackFsSpec F G1 GT RandomizerPayload X0Payload BridgePayload KzgPayload).QueryLog}
  (h : (out, sourceLog) ∈ support (Ipp.FsGame stmt adv).replayFirstRun) :
  ({ out := out, trace := Ipp.fsPointTrace sourceLog }, Ipp.flattenFsLog sourceLog) ∈
      support (Ipp.wrapFs (Ipp.FsGame stmt adv)).replayFirstRun ∧
    Ipp.accepted_run_leaf_data stmt out sourceLog
Ipp.accepted_roundSlot_some_or_unqueried {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type}
  [Field F] [AddCommGroup G1] [Module F G1] [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
  [DecidableEq F] [DecidableEq G1] [DecidableEq GT] [DecidableEq RandomizerPayload] [DecidableEq X0Payload]
  [DecidableEq BridgePayload] [DecidableEq KzgPayload] {μ : ℕ}
  (stmt : Ipp.FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload)
  (adv :
    OracleComp (unifSpec + Ipp.SnarkpackFsSpec F G1 GT RandomizerPayload X0Payload BridgePayload KzgPayload)
      (Ipp.Proof μ F G1 G2 GT))
  (qb level : ℕ) {out : Ipp.FsResult μ F G1 G2 GT}
  {sourceLog : (unifSpec + Ipp.SnarkpackFsSpec F G1 GT RandomizerPayload X0Payload BridgePayload KzgPayload).QueryLog}
  (h : (out, sourceLog) ∈ support (Ipp.FsGame stmt adv).replayFirstRun) (haccept : out.accept = true) :
  have run := { out := out, trace := Ipp.fsPointTrace sourceLog };
  (∃ s, Ipp.roundSlot qb level run = some s) ∨ Ipp.RoundPointUnqueried qb level run
Ipp.acceptTree_node_of_answers {F K1 K2 Msg1 Msg2 M IPv : Type} [Field F] [AddCommGroup K1] [Module F K1]
  [AddCommGroup K2] [Module F K2] [AddCommGroup Msg1] [Module F Msg1] [AddCommGroup Msg2] [Module F Msg2]
  [AddCommGroup M] [Module F M] [AddCommGroup IPv] [Module F IPv] (cmA : K1 →ₗ[F] Msg1 →ₗ[F] M)
  (cmB : K2 →ₗ[F] Msg2 →ₗ[F] M) (cmT : IPv →ₗ[F] M) (ip : Msg1 →ₗ[F] Msg2 →ₗ[F] IPv) {μ : ℕ}
  {ckA : Fin (2 ^ (μ + 1)) → K1} {ckB : Fin (2 ^ (μ + 1)) → K2} {ComA ComB ComT : M} (LA RA LB RB LT RT : M)
  (answer : Fin 4 → F) (hinjective : Function.Injective answer) (hnonzero : ∀ (k : Fin 4), answer k ≠ 0)
  (child :
    ∀ (k : Fin 4),
      Ipp.AcceptTree cmA cmB cmT ip μ (Ipp.foldPow μ (answer k) ckA) (Ipp.foldPow μ (answer k)⁻¹ ckB)
        (Ipp.foldCom (answer k)⁻¹ LA ComA RA) (Ipp.foldCom (answer k)⁻¹ LB ComB RB)
        (Ipp.foldCom (answer k)⁻¹ LT ComT RT)) :
  Ipp.AcceptTree cmA cmB cmT ip (μ + 1) ckA ckB ComA ComB ComT
Ipp.LeafBaseComponents {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type} [Field F]
  [AddCommGroup G1] [Module F G1] [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] {μ : ℕ}
  (stmt : Ipp.FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload)
  (proof : Ipp.Proof μ F G1 G2 GT) (transcript : Ipp.FsTranscript μ F) : Prop
Ipp.leafData_to_base_components {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type} [Field F]
  [AddCommGroup G1] [Module F G1] [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] {μ : ℕ}
  (stmt : Ipp.FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload)
  (proof : Ipp.Proof μ F G1 G2 GT) (transcript : Ipp.FsTranscript μ F)
  (hbindV : Ipp.KzgStructuredKeyBinding stmt.srsV stmt.acceptV)
  (hbindW : Ipp.KzgStructuredKeyBinding stmt.srsW stmt.acceptW) (hleaf : Ipp.LeafData stmt proof transcript) :
  Ipp.LeafBaseComponents stmt proof transcript
Ipp.WrappedRunGood {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type} [Zero F] [DecidableEq F]
  [DecidableEq G1] [DecidableEq GT] [DecidableEq RandomizerPayload] [DecidableEq X0Payload] [DecidableEq BridgePayload]
  [DecidableEq KzgPayload] {μ : ℕ} (qb : ℕ) (run : Ipp.WrappedFsRun Ipp.FsPoint (Ipp.FsResult μ F G1 G2 GT)) : Prop
Ipp.tree_to_acceptTree {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type} [Field F]
  [AddCommGroup G1] [Module F G1] [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] [DecidableEq F]
  [DecidableEq G1] [DecidableEq GT] [DecidableEq RandomizerPayload] [DecidableEq X0Payload] [DecidableEq BridgePayload]
  [DecidableEq KzgPayload] {μ : ℕ}
  (stmt : Ipp.FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload)
  (adv :
    OracleComp (unifSpec + Ipp.SnarkpackFsSpec F G1 GT RandomizerPayload X0Payload BridgePayload KzgPayload)
      (Ipp.Proof μ F G1 G2 GT))
  (qb : (Ipp.FsWrappedSpec F).Domain → ℕ) (hbindV : Ipp.KzgStructuredKeyBinding stmt.srsV stmt.acceptV)
  (hbindW : Ipp.KzgStructuredKeyBinding stmt.srsW stmt.acceptW)
  {tree : Ipp.RunTree (Ipp.FsWrappedSpec F) (Ipp.WrappedFsRun Ipp.FsPoint (Ipp.FsResult μ F G1 G2 GT)) μ}
  (hconsistent :
    Ipp.TreeConsistent (Ipp.wrapFs (Ipp.FsGame stmt adv)) qb (Sum.inr ())
      (fun level run => Ipp.roundSlot (qb (Sum.inr ())) level run) 0 none tree)
  (hgood : Ipp.RunTree.All (fun run => Ipp.WrappedRunGood (qb (Sum.inr ())) run.1) tree) :
  have r := tree.root.1.out.transcript.randomizer;
  Ipp.AcceptTree (Ipp.u4ACommitAtom stmt.e) (Ipp.u4BCommitAtom stmt.e) Ipp.u4TCommitMap (Ipp.u4TLanePairing stmt.e) μ
    (fun i => (stmt.srsV i, stmt.srsV i)) (fun i => ((r ^ ↑i)⁻¹ • stmt.srsW i, 1)) stmt.ComA stmt.ComB
    (Ipp.u4TCommitMap (tree.root.1.out.proof.ipAb, tree.root.1.out.proof.aggC))
Ipp.fsFork_success_acceptTree {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type} [Field F]
  [AddCommGroup G1] [Module F G1] [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] [DecidableEq F]
  [DecidableEq G1] [DecidableEq GT] [DecidableEq RandomizerPayload] [DecidableEq X0Payload] [DecidableEq BridgePayload]
  [DecidableEq KzgPayload] [(Ipp.FsWrappedSpec F).IsUniformSpec]
  [(j : ℕ ⊕ Unit) → SampleableType ((Ipp.FsWrappedSpec F).Range j)] [unifSpec ⊂ₒ Ipp.FsWrappedSpec F] {μ : ℕ}
  (stmt : Ipp.FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload)
  (adv :
    OracleComp (unifSpec + Ipp.SnarkpackFsSpec F G1 GT RandomizerPayload X0Payload BridgePayload KzgPayload)
      (Ipp.Proof μ F G1 G2 GT))
  (qb : (Ipp.FsWrappedSpec F).Domain → ℕ) (hbindV : Ipp.KzgStructuredKeyBinding stmt.srsV stmt.acceptV)
  (hbindW : Ipp.KzgStructuredKeyBinding stmt.srsW stmt.acceptW)
  {tree : Ipp.RunTree (Ipp.FsWrappedSpec F) (Ipp.WrappedFsRun Ipp.FsPoint (Ipp.FsResult μ F G1 G2 GT)) μ}
  (hsuccess :
    some tree ∈
      support
        (Ipp.forkTree μ (Ipp.wrapFs (Ipp.FsGame stmt adv)) qb (Sum.inr ()) fun level run =>
          Ipp.roundSlot (qb (Sum.inr ())) level run))
  (hgood : Ipp.RunTree.All (fun run => Ipp.WrappedRunGood (qb (Sum.inr ())) run.1) tree) :
  have r := tree.root.1.out.transcript.randomizer;
  Ipp.AcceptTree (Ipp.u4ACommitAtom stmt.e) (Ipp.u4BCommitAtom stmt.e) Ipp.u4TCommitMap (Ipp.u4TLanePairing stmt.e) μ
    (fun i => (stmt.srsV i, stmt.srsV i)) (fun i => ((r ^ ↑i)⁻¹ • stmt.srsW i, 1)) stmt.ComA stmt.ComB
    (Ipp.u4TCommitMap (tree.root.1.out.proof.ipAb, tree.root.1.out.proof.aggC))
```

### Sound assembly lemmas landed

- `acceptTree_node_of_answers` converts four pairwise-distinct nonzero oracle
  answers `x` into `AcceptTree.node` challenges `c = x⁻¹`. Injectivity is
  transported by applying inversion twice; nonzeroness uses
  `inv_ne_zero`. Child keys and commitments use each child's own answer.
- `leafData_to_base_components` invokes `leaf_accept_to_base` with exactly
  the seven facts in `LeafData`.
- `fsFork_success_acceptTree` is the support-level endpoint: it obtains
  `TreeConsistent` from `forkTree_support_props` and invokes
  `tree_to_acceptTree`. Probability composition remains U5e.

### Exact stalled boundary

The recursive target is:

```lean
AcceptTree (u4ACommitAtom stmt.e) (u4BCommitAtom stmt.e) u4TCommitMap
  (u4TLanePairing stmt.e) μ
  (fun i => (stmt.srsV i, stmt.srsV i))
  (fun i => ((r ^ (i : Nat))⁻¹ • stmt.srsW i, (1 : F)))
  stmt.ComA stmt.ComB
  (u4TCommitMap (tree.root.1.out.proof.ipAb,
    tree.root.1.out.proof.aggC))
```

At a leaf, `AcceptTree.base` requires the three full tagged equalities:

```lean
folded.comA = u4ACommitAtom stmt.e keyA (proof.aFinal, proof.cFinal)
folded.comB = u4BCommitAtom stmt.e keyB (proof.bFinal, rFinal)
folded.comT = u4TCommitMap
  (u4TLanePairing stmt.e (proof.aFinal, proof.cFinal)
    (proof.bFinal, rFinal))
```

But `leaf_accept_to_base`, from the current `LeafData`, supplies only:

```lean
folded.comA.1.1 = u4ALaneAtom stmt.e keyA
  (proof.aFinal, proof.cFinal)
(folded.comB.1.2.1, keyB.2 * rFinal) =
  u4BLaneAtom stmt.e keyB (proof.bFinal, rFinal)
folded.comT.2 = u4TLanePairing stmt.e
  (proof.aFinal, proof.cFinal) (proof.bFinal, rFinal)
```

Thus the off-lane fields of all three tagged commitments are unconstrained.
Even the B-lane scalar uses the canonical `keyB.2 * rFinal`; no hypothesis
identifies it with `folded.comB.1.2.2`. Since `FsStatement.ComA`,
`FsStatement.ComB`, and all six `RoundComs` values are arbitrary full
`U4Commitment` values, an accepting run may contain junk in these unchecked
fields. The requested full `AcceptTree` conclusion is therefore not derivable
from acceptance plus the two bad-event exclusions.

The sound repair is to make lane purity part of the game data: use lane-native
round messages/root commitments and embed them with
`u4ACommitAtom`/`u4BCommitAtom`/`u4TCommitMap`, or add and verify explicit
full-tag purity equalities at every root/round/leaf. Under the prototype
contract policy, the lane-native representation is preferable.

A second unfinished proof layer, after that model repair, is the no-cache
wrapper's two-run prefix-determinism lemma (equal outer value prefixes through
the selected physical slot imply equal structured side traces through the
logical round slot). The strengthened `hprefixValues` field was added
specifically to make that lemma sound.

### Build and verification

- Process checks before builds found no active `lake` or `lean` process
  through `Get-Process`; the richer CIM command was permission-denied.
- Every build used `LEAN_NUM_THREADS=1` and
  `C:\Users\acyrn\.elan\toolchains\leanprover--lean4---v4.30.0\bin\lake.exe`.
- Focused `lake build Ipp.ForkTree`: success (3301 jobs).
- Focused `lake build Ipp.FsFork`: success (3312 jobs), with the expected
  sole warning that `tree_to_acceptTree` uses `sorry`.
- Final `lake build Ipp`: success (3321 jobs). Output contained the three
  pre-existing Loom unused-simp warnings, the existing `Ipp.Smoke` info
  line, and the disclosed `tree_to_acceptTree` sorry warning.
- Forbidden-token scan: no `axiom` or `native_decide`; exactly one
  `sorry`, at `tree_to_acceptTree`, under the task's stall rule.
- No prover/release-gated tests were run; the requested Lean package gates were
  run.

Anything unproved:

- `tree_to_acceptTree` only, for the exact full-tag leaf goal above.
  `fsFork_success_acceptTree` depends on it.

## U5d(4) lane-nativity refactor (Fable, 2026-07-10)

Implemented the DESIGN SU5d(4) lane-nativity decision directly (reviewer-
implemented; Codex usage-limited at the time):

- `Ipp/Composition.lean`: `u4AEmbedding`/`u4BEmbedding`/`u4TEmbedding` made
  public with docstrings; added `u4AEmbedding_injective`,
  `u4BEmbedding_injective`, `u4TEmbedding_injective`, and `foldCom_map`
  (linear maps commute with the verifier fold).
- `Ipp/FsGame.lean`: `RoundComs` fields, `FsStatement.ComA/ComB`,
  `FoldedValues`, `foldOne`/`foldRounds`/`terminalFold` all LANE-NATIVE;
  `LeafData` projections cleaned; added the SIXTH model-level leaf check
  (B-scalar bookkeeping fold = public product; DESIGN SU5d(4) exception
  paragraph documents why this is honest-definitional and absent from the
  real object).
- `Ipp/FsFork.lean`: `LeafBaseComponents` now states FULL lane equalities
  (comB included via the sixth check); `leafData_to_base_components`
  re-proved; `tree_to_acceptTree`/`fsFork_success_acceptTree` root
  commitments now `u4AEmbedding stmt.ComA` / `u4BEmbedding stmt.ComB`.

Builds: `lake build Ipp.FsGame` (3311 jobs) and `lake build Ipp.FsFork`
(3312 jobs) green; sole remaining `sorry` = `tree_to_acceptTree` (the
recursion), unchanged in role but its leaf obligation now follows from
`leafData_to_base_components` + embedding injectivity + `foldCom_map`.

## Design review (pre-final-proofs)

Fresh-eyes read-only review against `DESIGN.md`, the current Lean statement
surfaces, VCVio's oracle semantics, the Rust verifier, `ripp-spec.md`, and
`SnarkpackOracle.lean`. No Lean build was needed: the findings below concern
already-elaborated statement shapes and cross-model equations.

### CRITICAL

1. **`Ipp/Composition.lean:u4_randomizer_lift_pointwise`,
   `u4_ppe_per_index`, and `u4_capstone`; DESIGN §U4 and §U5a/§U5e — the
   `hgeneric` hypothesis is contradictory for every nontrivial aggregation.**
   The hypothesis quantifies over *all* finite `Bbad : Set F` of cardinality at
   most `n - 1` and concludes `r ∉ Bbad`. When `n ≥ 2`, instantiate it with
   `{r}`: the set is finite, has cardinality one, and contains `r`. Thus
   `u4_capstone` is vacuous for every `μ ≥ 1`, and no random-oracle union bound
   can discharge it: the singleton `{r}` is chosen after seeing `r`. The U1
   argument only needs avoidance of the one root set determined before `r` is
   sampled. **Resolution:** expose the concrete discrepancy root set (or return
   it from a preparatory lemma) and state `r ∉ rootSet d`; alternatively quantify
   over a bad set/family with an explicit pre-sampling independence interface.
   Rewrite the U5a target to bound that exact event, not universal avoidance of
   every small set.

2. **`Ipp/FsGame.lean:SnarkpackFsSpec`, `FsGame`, `QueryAnswered`;
   `Ipp/FsFork.lean:fsSingleImpl`, `wrapFs`, `roundSlot`, `WrappedRunGood`;
   DESIGN §U5d wrapper decision — the model is not a random function, and the
   selected fork answer need not be the verifier's transcript answer.**
   `Point →ₒ F` is only an `OracleSpec`; direct queries are fresh independent
   occurrences. VCVio's actual lazy random oracle is
   `OracleSpec.randomOracle = uniformSampleImpl.withCaching` and explicitly
   guarantees that equal inputs have equal outputs. `FsGame` never runs through
   that cache, and `fsSingleImpl` deliberately issues a fresh `Unit` query for
   every occurrence. Consequently, if the adversary queried the eventual round
   point before verification, `roundSlot` selects the point's first trace
   occurrence, while `RoundQueries` merely proves that the verifier's later
   occurrence exists. Those two occurrences may have different answers.
   `TreeConsistent.hanswers` then supplies the first answer, whereas
   `terminalFold`, `LeafData`, and the intended child fold use
   `transcript.roundAnswer` from the later verifier query. This makes the
   planned path-fold invariant false, not merely difficult to prove. It also
   invalidates the claim that non-caching preserves real random-oracle support.
   **Resolution:** run the adversary and verifier against one managed cached
   structured RO. The single-index adapter should issue a `Unit` sample only on
   a cache miss, record the structured point for that miss, and replay the
   changed value through the cache so verifier re-queries see it. Then prove a
   selector theorem equating the selected sampled answer with the verifier's
   `roundAnswer`. Do not proceed with the current non-caching wrapper.

3. **`Ipp/FsGame.lean:queryRounds`, `terminalFold`, `terminalR`, `LeafData`;
   `Ipp/FsFork.lean:LeafBaseComponents`, `tree_to_acceptTree`;
   `Ipp/Gipa.lean:foldKey`; DESIGN §U2.6/§U5d(4) — the KZG/final-scalar
   transcript is reversed incorrectly.** Rust verifies proof rounds in reverse
   storage order, accumulates the raw challenges in verifier chronology, and
   then reverses both raw and inverse transcripts before the KZG checks
   (`groth16_aggregation.rs:1382-1435`); `structured_scalar_final_from_raw_transcript`
   consumes that reversed vector (`1514`, `1526-1536`). `foldKey` likewise uses
   `x (μ-1)` for the first highest-bit fold. Lean stores `queryRounds` answers in
   verifier chronology but passes that vector directly to `transcriptCoeffs`,
   `foldKey`, and `terminalR`. For two rounds, Rust's coefficients/final scalar
   use `[x₁, x₀]`, while Lean uses `[x₀, x₁]`. Commitment folding itself is
   correctly chronological, so one vector cannot serve both roles unchanged.
   This also means the node answers along a path cannot equal the current
   leaf-side `foldKey transcript.roundAnswer` in the required index
   orientation. **Resolution:** keep an explicit chronological round view for
   challenge chaining and `terminalFold`, and define a reversed/KZG view for
   `transcriptCoeffs`, both final keys, and `terminalR` (with inverse applied on
   the W side after reindexing). Add a two-round parity test/lemma against the
   Rust exponent formula before restarting `tree_to_acceptTree`.

4. **`Ipp/Composition.lean:u4BLaneAtom`, `u4BCommitAtom`, `u4_capstone`;
   `Ipp/FsGame.lean:RoundComs`, `FsStatement.ComB`, sixth `LeafData` conjunct;
   DESIGN §U4 and §U5d(4) SIXTH-leaf decision — the B-scalar bookkeeping lane
   is neither cryptographically bound nor honest-definitional in the present
   model.** At the root, the scalar key column is all ones, so the scalar part
   of `commitV u4BCommitAtom` is only the sum of the scalar messages. For
   `n ≥ 2`, two different scalar vectors with the same sum and zero G2
   components collide. Therefore the advertised
   `PairingCommitmentBinding (u4BCommitAtom ...)` cannot be justified by the
   AFGHO binding row and is uninstantiable for the concrete product lane. In
   addition, `FsStatement.ComB.2` is fixed before the randomizer but
   `u4_capstone.hComB` requires it to equal the commitment of `(r^i)`, hence
   `∑ r^i`. The synthetic `LB.2/RB.2` fields are adversary-provided and are
   included in `ChallengePoint.round`, although Rust's round commitment has no
   such fields. The sixth leaf equation constrains only their final fold; it
   does not make the root or round fields definitional, and it gives the
   adversary hash inputs that do not exist in Rust. The other five folded lane
   components are checked; no additional unchecked real component was found.
   **Resolution:** remove the synthetic scalar column from the proof object,
   structured hash payload, and pairing-binding assumption. Carry it as a pure
   public fold computed from `r` and the chronological challenges, and prove
   its terminal identity separately. Rework the U4 lane/extraction boundary so
   binding applies only to the real B commitment while the known scalar
   coordinate is fixed by construction. The sixth identity may remain as a
   derived lemma, not an extra adversary-controlled verifier check.

### MAJOR

1. **`Ipp/FsGame.lean:FsPayloads`, `ChallengePoint`, `FsStatement`;
   DESIGN §U5d(1) — the non-round challenge preimages are under-constrained.**
   The four payload builders are arbitrary functions and may ignore every
   listed argument (for example, all payload carriers can be `Unit`). Function
   arguments document possible dependencies but do not enforce that the real
   fields are present or injectively encoded. Constructor disjointness only
   separates stages; it does not establish the claimed challenge-preimage
   injectivity. In particular, nothing forces the randomizer to bind exactly
   `com_a/com_b/com_c`, x0 to bind `r/com_a/com_b/com_c/ip_ab/agg_c`, the bridge
   to bind the last raw challenge/final keys/final messages, or KZG to bind the
   bridge/final keys. **Resolution:** replace abstract payload carriers with
   canonical typed records containing exactly the Rust fields, leaving only
   byte serialization as the external `fs.challenge-preimage` obligation; or
   add explicit injectivity and field-projection hypotheses consumed by the S1
   theorem. Also keep selector metadata such as the round number out of the
   hashed record unless Rust hashes it.

2. **`Ipp/Algebra.lean:KzgStructuredKeyBinding`;
   `Ipp/FsGame.lean:FsStatement.acceptV/acceptW`, `LeafData`, `fsVerifier`;
   DESIGN §U3/§U5a — the bridge and KZG challenges are recomputed but the KZG
   challenge is absent from acceptance.** The real equations in
   `tipa/mod.rs:1137-1180` depend on `kzg_challenge`, and the bridge matters by
   feeding the preimage that derives it. Lean's fixed `acceptV/acceptW`
   relations take only coefficients, key, and opening; they cannot depend on
   the run's dynamic `transcript.kzg`. Thus `bridge` and `kzg` are dead values
   for `FsAccepts`, the planned KZG-stage goodness bound has no consumer, and
   the named binding hypothesis directly supplies key identification without
   modeling the checked equation. **Resolution:** parameterize the concrete
   acceptance relations and binding statement by `z` (and the needed SRS
   verification elements), pass `transcript.kzg` in `LeafData`, and state the
   exact `z`-goodness premise required by U3. This restores the final-bridge →
   KZG → opening dependency chain.

3. **`Ipp/ForkTree.lean:ForkTreeNodeLowerBound`, `forkTree_bound_param`;
   `Ipp/Fork.lean:forkReplay4_bound`; DESIGN §U5c/§U5e — the current parametric
   tree theorem is not conceptually instantiated by the closed U5b bound.**
   `ForkTreeNodeLowerBound` is pointwise over *every* supported fixed first run,
   and `forkTree_bound_param` starts the iteration at `1`. If any supported run
   is rejecting/bad or has `cf = none`, the depth-zero-to-one obligation forces
   any positive `f 1` to be at most zero. The U5b theorem, in contrast, is an
   averaged bound in the global mass `acc := Pr[cf isSome]`; it does not prove
   that pointwise fixed-root interface, nor does it bound four recursively
   conditioned child subtrees. No theorem currently connects the two surfaces.
   **Resolution:** redesign U5c's quantitative interface around an averaged or
   goodness-conditioned recurrence with base mass `Pr[Good ∧ accepting]`, and
   prove the per-level four-child product/conditioning lemma explicitly. A
   pointwise version would need a uniform conditional lower bound over every
   good supported root, which the current `acc` theorem does not provide.

4. **DESIGN §U5e `s1_tree_probability`; `Ipp/FsFork.lean:WrappedRunGood` and
   `fsFork_success_acceptTree` — subtracting a one-run bad-event bound does not
   yet produce a successful tree whose every leaf is good.** The U5c theorem
   bounds only `tree.isSome`; `tree_to_acceptTree` separately assumes
   `tree.All WrappedRunGood`. Applying the node bound to
   `acc - wrapped_run_good_bound` is not a proved event transformation. One
   must either gate every level's selector on goodness and prove tree success
   implies `All Good`, or bound bad replay leaves under their conditional replay
   distributions (with the corresponding `4^μ` accounting). **Resolution:**
   choose and state one of those routes before U5e. The gated-selector route is
   cleaner, but it must be combined with the revised averaged U5c recurrence.

5. **`Ipp/ForkTree.lean:TreeConsistent`; `Ipp/FsFork.lean:roundSlot`,
   `tree_to_acceptTree`; REPORT's latest induction plan — the current invariant
   does not supply the required leaf path-fold correspondence.** Generic
   `TreeConsistent` gives a Unit-oracle ordinal and outer-log prefix facts; it
   does not state that this ordinal is the exact logical round sample, that its
   value equals `out.transcript.roundAnswer[level]`, or that the sequence of
   selected node answers is the correctly reversed leaf transcript view. Under
   current non-caching semantics the first equality is actually false (CRITICAL
   2), and under the current transcript indexing the second is false
   (CRITICAL 3). It also lacks a packaged lemma that all leaves share the
   randomizer/root proof prefix. **Resolution:** after fixing the managed RO and
   transcript views, strengthen the wrapper-specific assembly boundary (either
   `TreeConsistent` fields or proved wrapper lemmas carried into the induction)
   with: selected-point/answer correctness, selected-slot stage ordering,
   ancestor-answer/path correspondence, and shared randomizer/root-data facts.
   Then formulate the induction with an explicit accumulated chronological
   prefix and its reversed coefficient view.

6. **`Ipp/FsGame.lean:WrappedRunGood` inputs and challenge queries; Rust
   `derive_scalar_challenge`/`derive_randomizer`; DESIGN §U5a — rejection
   sampling and stage-order bad events are missing.** Rust rejection-samples
   every scalar stage until nonzero and rejects `r = 1` as well as `r = 0`.
   Lean makes one uniform query per stage and only excludes zero round answers.
   Moreover, to charge the randomizer once, the chosen first round occurrence
   must be after the queries that determine `r` and `x0`; the current
   `RoundPointUnqueried` checks only absence/budget, not dependency order. This
   is particularly important when the adversary pre-queries its eventual FS
   points, which is normal. **Resolution:** model nonce/rejection sampling (or
   prove an explicit ideal-to-real coupling/error term), include the real bad
   values at every stage, and add a selector/dependency-order condition ensuring
   the randomizer and prior challenge chain lie before each fork slot.

### MINOR

1. **`Ipp/FsGame.lean:ChallengePoint.round`; Rust
   `derive_round_challenge`; DESIGN §U5d(1) — `level` is modeled as hashed
   input although Rust hashes only the common stage label, prior raw challenge,
   and the two round commitment objects.** This makes equal real preimages at
   different levels distinct model oracle points. **Resolution:** keep `level`
   as out-of-band selector/index metadata and remove it from the structured
   preimage identity.

2. **`Ipp/Composition.lean:leaf_accept_to_base` docstring and
   `Ipp/FsFork.lean:tree_to_acceptTree` docstring; REPORT U5d(4) stalled-boundary
   text — documentation still describes the pre-refactor five-equation/full-tag
   blocker.** The code now has the sixth conjunct and lane-native embeddings;
   the actual blockers are the oracle, indexing, and recursive correspondence
   issues above. **Resolution:** update these comments when the design is
   repaired so the final proof prompt does not target an obsolete stalled goal.

### NOTE

1. **`Ipp/Gipa.lean:foldMsg`, `foldCom`, `AcceptTree.node`, `round_extract`,
   `gipa_extract`; `Ipp/FsFork.lean:acceptTree_node_of_answers` — the local GIPA
   split and `c = x⁻¹`, `c_inv = x` orientation are otherwise faithful.** A
   raw oracle answer `x` becomes the AcceptTree challenge `c = x⁻¹`; A keys fold
   by `x`, B keys by `x⁻¹`, commitments by `x⁻¹·L + Com + x·R`, A messages by
   `x⁻¹`, and B messages by `x`, matching `gipa.rs:469-479, 549-574, 693-705`.
   The defect is the cross-round vector indexing described in CRITICAL 3, not
   the one-round swap.

2. **DESIGN §U5e positive-probability trick — positive probability implying
   inhabited support is a sound non-expected-time capstone technique.** The
   accepted looseness of the strict bound is not itself a soundness problem.
   It becomes usable only after the event being lower-bounded is aligned with
   successful assembly and the U5b/U5c quantitative interfaces are connected.

3. **Shared-randomizer-prefix plan — plausible after, but not before, the
   wrapper/invariant repairs.** A fork at correctly ordered round cache misses
   has `r` in the common replay prefix, and prefix chaining should propagate one
   `r` through the whole tree. The current first-occurrence/non-caching model and
   missing stage-order fact do not establish it. Add an explicit
   `TreeConsistent.all_randomizer_eq`-style lemma before charging the root-set
   event only once.

### Go / no-go

- **(i) `tree_to_acceptTree` as planned: NO-GO.** Its statement/invariant is
  blocked by the non-caching first-occurrence answer mismatch and the reversed
  transcript error; the current leaf path-fold correspondence is false. Repair
  those models, then strengthen the wrapper-specific induction facts as in
  MAJOR 5.
- **(ii) U5a prompt as sketched in DESIGN §U5a: NO-GO.** It currently targets a
  contradictory U4 goodness premise and omits managed-RO consistency,
  dependency-order/selector events, rejection sampling, and the exact KZG
  challenge consumer. Restate the concrete bad events first.
- **(iii) U5e plan as sketched: NO-GO.** The positive-support final step is fine,
  but the advertised probability lower bound does not follow from the current
  pointwise U5c interface, and no bound yet yields `tree.All WrappedRunGood`.
  Redesign the goodness-conditioned averaged recurrence before final proof work.

## R2 + R3 design-review repairs (2026-07-10)

Scope was limited to R2/R3. The synthetic B-scalar column remains unchanged;
R4 was not started. `DESIGN.md` and `.lake/packages/**` were not edited in this
session.

### R2: transcript views

`Ipp/FsGame.lean` now defines

```lean
def reversedView {F : Type} {μ : Nat} (x : Fin μ → F) : Fin μ → F :=
  fun i => x (Fin.rev i)
```

Call-site audit:

| Occurrence | View | Reason |
| --- | --- | --- |
| `queryRounds` previous-answer chaining | chronological | Rust derives each round challenge from the immediately preceding verifier-chronology answer. |
| `terminalFold` / `foldRounds` commitment folding | chronological | Rust folds commitments while iterating verifier rounds; the local one-round `x⁻¹`/`x` swap was already correct. |
| `LeafData` V-side `transcriptCoeffs` | reversed | Rust reverses the raw verifier transcript before the KZG key-opening check. |
| `LeafData` W-side `transcriptCoeffs` | reversed, then `gipaChallenge` | Rust reverses the inverse transcript; inversion is applied after reindexing. |
| Synthetic sixth-check W-side `foldKey` in `LeafData` | reversed, then `gipaChallenge` | `foldKey` consumes highest-bit-first transcript order; the scalar lane remains only because R4 is deferred. |
| `LeafBaseComponents` V-side `foldKey` (`xV`) | reversed | Final V key uses the same reversed raw transcript as the V KZG coefficients. |
| `LeafBaseComponents` W-side `foldKey` (`xW`) | reversed, then `gipaChallenge` | Final W key reindexes first and takes inverses second. |
| `leaf_accept_to_base` instantiation in `leafData_to_base_components` | V reversed; W reversed then inverse | Keeps the key-identification inputs identical to the repaired leaf checks. |
| Every `terminalR` consumer in `LeafData`, `LeafBaseComponents`, and `leafData_to_base_components` | reversed | Rust starts at power `r` and squares after each entry of the reversed raw transcript. |

Two-round parity lemma (verbatim statement):

```lean
theorem reversedView_two_round_parity {F : Type} [Field F] (x0 x1 r : F) :
    transcriptCoeffs (reversedView ![x0, x1]) 1 =
        transcriptCoeffs ![x1, x0] 1 ∧
      terminalR r (reversedView ![x0, x1]) =
        (1 + x1 * r) * (1 + x0 * r ^ 2) := by
```

Verdict: matches `groth16_aggregation.rs:1526-1536`. For chronological
answers `[x0, x1]`, Rust first reverses to `[x1, x0]`; it assigns `r` to
`x1`, squares the power, and assigns `r²` to `x0`. This agrees with the task
sketch once its placeholders are resolved.

### R3: cached managed random oracle

Chosen construction:

- `fsSourceOracle` is
  `fsSourceUnifFwd + QueryImpl.withCaching (fsSourceImpl Point F)`.
- `QueryImpl.withCaching` is VCVio's lazy cache transformer from
  `OracleComp.QueryTracking.CachingOracle`; internally it consults
  `OracleSpec.QueryCache` and installs misses with `QueryCache.cacheQuery`.
- `StateT.run (simulateQ (fsSourceOracle ...) oa) ∅` surrounds the complete
  `FsGame`, so the adversary and verifier share one cache.
- On a hit, `withCaching` returns the cached answer and `fsSourceImpl` is not
  called. On a miss, `fsSourceImpl` emits one structured source query; only
  those miss queries reach `fsMissImpl`, which emits one `Sum.inr ()` query.
- `fsPointTrace` and `flattenFsLog` now operate on that random-function miss
  log. The miss order is therefore exactly the fork-slot order, and replay
  reprogramming supplies the value that is inserted into the shared cache.
- `wrapFs_support_iff` now relates the wrapped run to
  `replayFirstRun (fsRandomFunction oa)`, not to fresh-occurrence semantics.

The cache/log proof is bidirectional from the empty cache: every structured
miss-log entry is preserved in the final cache, and every final cache entry has
an exact miss-log witness. `wrapped_source_leaf_data`, `RoundQueries`,
`roundSlot`, `RoundPointUnqueried`, and
`accepted_roundSlot_some_or_unqueried` are re-established over those miss
semantics. `tree_to_acceptTree` and `fsFork_success_acceptTree` elaborate with
the new wrapper types.

Selector deliverable, verbatim:

```lean
theorem roundSlot_answer_eq_transcript
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq GT]
    [DecidableEq RandomizerPayload] [DecidableEq X0Payload]
    [DecidableEq BridgePayload] [DecidableEq KzgPayload]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload
      KzgPayload)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload) (Proof μ F G1 G2 GT))
    (qb : Nat) (level : Fin μ)
    {out : FsResult μ F G1 G2 GT}
    {sourceLog : QueryLog (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload)}
    (h : (out, sourceLog) ∈ support
      (replayFirstRun (fsRandomFunction (FsGame stmt adv))))
    (_haccept : out.accept = true)
    {slot : Fin (qb + 1)}
    (hslot : roundSlot qb (level : Nat)
      ({ out := out, trace := fsPointTrace sourceLog } :
        WrappedFsRun
          (FsPoint (F := F) (G1 := G1) (GT := GT)
            (RandomizerPayload := RandomizerPayload) (X0Payload := X0Payload)
            (BridgePayload := BridgePayload) (KzgPayload := KzgPayload))
          (FsResult μ F G1 G2 GT)) = some slot) :
    QueryLog.getQueryValue? (flattenFsLog sourceLog) (Sum.inr ()) (slot : Nat) =
      some (out.transcript.roundAnswer level) := by
```

This theorem is proved. It is the property that was false for the former
fresh-occurrence adapter.

### Verification and remaining proof

All commands used the pinned Lean 4.30.0 `lake.exe`, one build at a time, with
`LEAN_NUM_THREADS=1`, and wrote output to `build.log`.

- `lake build Ipp.FsGame`: pass; 3311 jobs.
- `lake build Ipp.FsFork`: pass; `Ipp.FsFork` built in 42s; 3314 jobs.
- `lake build Ipp`: pass; 3323 jobs.
- `git diff --check`: pass.

No prover/release-gated tests were run; this Lean package has no separate
prover/release gate in the requested workflow.

The only remaining `sorry` is the permitted pre-existing R6 assembly proof
`tree_to_acceptTree`. Its exact target is:

```lean
let r := tree.root.1.out.transcript.randomizer
AcceptTree (u4ACommitAtom stmt.e) (u4BCommitAtom stmt.e) u4TCommitMap
  (u4TLanePairing stmt.e) μ
  (fun i => (stmt.srsV i, stmt.srsV i))
  (fun i => ((r ^ (i : Nat))⁻¹ • stmt.srsW i, (1 : F)))
  (u4AEmbedding stmt.ComA) (u4BEmbedding stmt.ComB)
  (u4TCommitMap (tree.root.1.out.proof.ipAb, tree.root.1.out.proof.aggC))
```

## R5 game-faithfulness repair (2026-07-10)

R5 implements design-review MAJOR 1, MAJOR 2, MINOR 1, and the game-model
half of MAJOR 6. `FsPayloads` and all four abstract payload type parameters
were deleted. The verifier now constructs canonical payload records directly
from the statement, proof, and transcript.

### Payload records (verbatim)

```lean
structure RandomizerPayload (GT : Type) where
  comA : GT
  comB : GT
  comC : GT
deriving DecidableEq

structure X0Payload (F G1 GT : Type) where
  r : F
  comA : GT
  comB : GT
  comC : GT
  ipAb : GT
  aggC : G1
deriving DecidableEq

structure BridgePayload (F G1 G2 : Type) where
  lastRawChallenge : F
  vFinal : G2
  wFinal : G1
  aFinal : G1
  bFinal : G2
  cFinal : G1
deriving DecidableEq

structure KzgPayload (F G1 G2 : Type) where
  bridgeChallenge : F
  vFinal : G2
  wFinal : G1
deriving DecidableEq
```

Their docstrings state that byte-serialization injectivity remains the
shieldd-byte `fs.challenge-preimage` obligation. `FsStatement.ComA.1` is
`com_a`, `ComB` is `com_b`, and `FsStatement.ComA.2` is `com_c`.

The structured point is now:

```lean
inductive ChallengePoint (F G1 G2 GT : Type) where
  | randomizer (payload : RandomizerPayload GT) (nonce : Nat)
  | x0 (payload : X0Payload F G1 GT) (nonce : Nat)
  | round (prev : F) (coms : RoundComs G1 GT) (nonce : Nat)
  | bridge (payload : BridgePayload F G1 G2) (nonce : Nat)
  | kzg (payload : KzgPayload F G1 G2) (nonce : Nat)
deriving DecidableEq
```

Thus round `level` is no longer part of the hashed identity. `FsTranscript`
records each accepted round nonce, and `wrappedRoundPoint` uses the level only
to select `(roundPrev, proof.rounds, roundNonce)`. The cached-RO first-miss
selector and `roundSlot_answer_eq_transcript` were re-proved for that point.

### z-parametrized KZG binding (verbatim)

```lean
/-- q-SDH-type KZG structured-key binding and z-challenge SZ step (U3/U5a;
    maps 1:1 to a future
    `formal-handoff.md` assumption row `assume.kzg-structured-key-binding`;
    spec rows `tipp-mipp.kzg-equations`, `tipp-mipp.power-sequence`).

    `srs` is the structured commitment-key basis (the SRS powers `h·βⁱ` / `g·αⁱ`
    the opening is checked against). `accept z coeffs key opening` abstracts the
    verifier's pairing check on a claimed final key `key` and opening proof
    `opening` for the transcript polynomial with coefficients `coeffs` at the KZG
    challenge `z` — its concrete instance is
    `verify_commitment_key_g{1,2}_kzg_opening` in `tipa/mod.rs`. For every `z`,
    an accepted pair pins the key to the honest structured MSM. This row bundles
    q-SDH binding with the z-challenge Schwartz--Zippel step; failure of the
    required z-goodness condition is a U5a bad event. Stated as an explicit
    hypothesis (never an axiom), discharged at S1 handoff. -/
def KzgStructuredKeyBinding {G : Type*} [AddCommGroup G] [Module F G] {N : ℕ}
    (srs : Fin N → G) (accept : F → (Fin N → F) → G → G → Prop) : Prop :=
  ∀ (z : F) (coeffs : Fin N → F) (key opening : G),
    accept z coeffs key opening → key = msm coeffs srs
```

`FsStatement.acceptV/acceptW`, `kzg_final_key_structured`,
`kzg_final_keys_structured`, `u4_key_identification`, and
`leaf_accept_to_base` now take `z`. `LeafData` passes `transcript.kzg` to both
acceptance relations. Consequently the concrete bridge payload determines the
KZG point, and the resulting `z` is consumed by both opening checks.

### Rejection sampling

The chosen formulation is a fuel-bounded `queryAccepting`. Each attempt queries
the nonce-bearing structured point, starting at nonce zero and incrementing
only after rejection. Fuel exhaustion returns `none`; `fsVerifier` immediately
returns a canonical rejected result. This keeps every successful path a finite,
straight-line `OracleComp` while making termination explicit and leaving fuel
exhaustion available for the later U5a accounting.

The oracle range is already `F`, so byte-to-field decode failure is abstracted
at this layer. The semantic gates follow the Rust source exactly:

- randomizer: reject `0` and `1`;
- x0, every round, final bridge, and KZG: reject `0`.

`FsAccepts` includes those accepted-value facts and accepted cached runs expose
them as `ChallengesAccepted`. Therefore the former `ZeroChallenge` bad event
and its `ZeroChallenge ∨ ...` split are vacuous and were deleted. In particular,
accepted runs retain both `r ≠ 0` and `r ≠ 1` for U4/U5e consumers, and every
accepted round answer is nonzero by construction.

### Verification

All Lean commands used the pinned Lean 4.30.0 `lake.exe`, one at a time, with
`LEAN_NUM_THREADS=1`; output was written to `build.log`.

- `lake build Ipp.Kzg`: pass (1278 jobs).
- `lake build Ipp.Composition`: pass (1671 jobs).
- `lake build Ipp.FsGame`: pass (3311 jobs).
- `lake build Ipp.FsFork`: pass (3314 jobs).
- final `lake build Ipp`: pass (3323 jobs).
- `git diff --check`: pass.

The temp-file axiom audit reported exactly:

```text
'Ipp.u4_capstone' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.roundSlot_answer_eq_transcript' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No `axiom` or `native_decide` was added. No prover/release-gated tests were
run; this task exercised the requested Lean package builds.

The sole remaining `sorry` is the permitted R6 `tree_to_acceptTree`. Its exact
goal remains:

```lean
let r := tree.root.1.out.transcript.randomizer
AcceptTree (u4ACommitAtom stmt.e) (u4BCommitAtom stmt.e) u4TCommitMap
  (u4TLanePairing stmt.e) μ
  (fun i => (stmt.srsV i, stmt.srsV i))
  (fun i => (r ^ (i : Nat))⁻¹ • stmt.srsW i)
  (fun i => r ^ (i : Nat))
  (u4AEmbedding stmt.ComA) (u4BEmbedding stmt.ComB)
  (u4TCommitMap (tree.root.1.out.proof.ipAb, tree.root.1.out.proof.aggC))
```

No additional unproved goals, axioms, or `native_decide` uses remain.

## R4 design-review repair: public B-side lane (2026-07-10)

Scope was limited to R4 / CRITICAL 4. `DESIGN.md` and `.lake/packages/**`
were not edited. No commit was created.

The synthetic scalar commitment column is gone. `RoundComs.LB/RB`,
`FsStatement.ComB`, and `FoldedValues.comB` are now `GT`; the B commitment
atom has G1 keys, G2 messages, and GT output. The public scalar family is
threaded separately through GIPA and is used only as the second component of
the T-lane message.

The node convention now names the raw oracle answer `c`: A keys, B messages,
and the public family fold by `c`; B keys and A messages fold by `c⁻¹`; the
verifier commitment fold uses `c⁻¹`. This is the orientation in
`gipa.rs:549-573`. In particular, the public family follows the real B message,
not the B commitment key.

### U2 public statements (verbatim)

```lean
def InputRelation (cmA : K1 →ₗ[F] Msg1 →ₗ[F] M) (cmB : K2 →ₗ[F] Msg2 →ₗ[F] M)
    (cmT : IPv →ₗ[F] M) (ip : Msg1 →ₗ[F] (Msg2 × P) →ₗ[F] IPv) {μ : ℕ}
    (ck_a : Fin (2 ^ μ) → K1) (ck_b : Fin (2 ^ μ) → K2)
    (pub : Fin (2 ^ μ) → P) (ComA ComB ComT : M) : Prop :=
  ∃ a b,
    ComA = commitV cmA ck_a a ∧
    ComB = commitV cmB ck_b b ∧
    ComT = cmT (ipm ip a (fun i => (b i, pub i)))

inductive AcceptTree (cmA : K1 →ₗ[F] Msg1 →ₗ[F] M) (cmB : K2 →ₗ[F] Msg2 →ₗ[F] M)
    (cmT : IPv →ₗ[F] M) (ip : Msg1 →ₗ[F] (Msg2 × P) →ₗ[F] IPv) :
    (μ : ℕ) → (ck_a : Fin (2 ^ μ) → K1) → (ck_b : Fin (2 ^ μ) → K2) →
      (pub : Fin (2 ^ μ) → P) → (ComA ComB ComT : M) → Prop
  | base {ck_a : Fin (2 ^ 0) → K1} {ck_b : Fin (2 ^ 0) → K2} {ComA ComB ComT : M}
      {pub : Fin (2 ^ 0) → P}
      (a0 : Msg1) (b0 : Msg2)
      (hA : ComA = cmA (ck_a 0) a0)
      (hB : ComB = cmB (ck_b 0) b0)
      (hT : ComT = cmT (ip a0 (b0, pub 0))) :
      AcceptTree cmA cmB cmT ip 0 ck_a ck_b pub ComA ComB ComT
  | node {μ : ℕ} {ck_a : Fin (2 ^ (μ + 1)) → K1} {ck_b : Fin (2 ^ (μ + 1)) → K2}
      {pub : Fin (2 ^ (μ + 1)) → P} {ComA ComB ComT : M}
      (LA RA LB RB LT RT : M) (c : Fin 4 → F)
      (hinj : Function.Injective c) (hnz : ∀ k, c k ≠ 0)
      (child : ∀ k, AcceptTree cmA cmB cmT ip μ
        (foldPow (K1 := K1) μ (c k) ck_a)
        (foldPow (K1 := K2) μ (c k)⁻¹ ck_b)
        (foldPow (K1 := P) μ (c k) pub)
        (foldCom (c k)⁻¹ LA ComA RA)
        (foldCom (c k)⁻¹ LB ComB RB)
        (foldCom (c k)⁻¹ LT ComT RT)) :
      AcceptTree cmA cmB cmT ip (μ + 1) ck_a ck_b pub ComA ComB ComT

theorem round_extract (cmA : K1 →ₗ[F] Msg1 →ₗ[F] M) (cmB : K2 →ₗ[F] Msg2 →ₗ[F] M)
    (cmT : IPv →ₗ[F] M) (ip : Msg1 →ₗ[F] (Msg2 × P) →ₗ[F] IPv) {μ : ℕ}
    (ck_a : Fin (2 ^ (μ + 1)) → K1) (ck_b : Fin (2 ^ (μ + 1)) → K2)
    (pub : Fin (2 ^ (μ + 1)) → P)
    (ComA ComB ComT LA RA LB RB LT RT : M)
    (c : Fin 4 → F) (hinj : Function.Injective c) (hnz : ∀ k, c k ≠ 0)
    (hbindA : PairingCommitmentBinding cmA ck_a)
    (hbindB : PairingCommitmentBinding cmB ck_b)
    (hchild : ∀ k, InputRelation cmA cmB cmT ip
      (foldPow (K1 := K1) μ (c k)⁻¹ ck_a)
      (foldPow (K1 := K2) μ (c k) ck_b)
      (foldPow (K1 := P) μ (c k)⁻¹ pub)
      (foldCom (c k) LA ComA RA)
      (foldCom (c k) LB ComB RB)
      (foldCom (c k) LT ComT RT)) :
    InputRelation cmA cmB cmT ip ck_a ck_b pub ComA ComB ComT := by

theorem gipa_extract (cmA : K1 →ₗ[F] Msg1 →ₗ[F] M) (cmB : K2 →ₗ[F] Msg2 →ₗ[F] M)
    (cmT : IPv →ₗ[F] M) (ip : Msg1 →ₗ[F] (Msg2 × P) →ₗ[F] IPv) {μ : ℕ}
    (ck_a : Fin (2 ^ μ) → K1) (ck_b : Fin (2 ^ μ) → K2)
    (pub : Fin (2 ^ μ) → P) (ComA ComB ComT : M)
    (hbindA : PairingCommitmentBinding cmA ck_a)
    (hbindB : PairingCommitmentBinding cmB ck_b)
    (hacc : AcceptTree cmA cmB cmT ip μ ck_a ck_b pub ComA ComB ComT) :
    ∃ a b,
      ComA = commitV cmA ck_a a ∧
      ComB = commitV cmB ck_b b ∧
      ComT = cmT (ipm ip a (fun i => (b i, pub i))) := by
```

The public-lane Laurent/Vandermonde helpers are:

```lean
theorem laurent_interpolate_unique (hinj : Function.Injective c) (hnz : ∀ k, c k ≠ 0)
    (z : Fin 3 → M) (l m r l' m' r' : M)
    (h : ∀ j, c j • l + m + (c j)⁻¹ • r = z j)
    (h' : ∀ j, c j • l' + m' + (c j)⁻¹ • r' = z j) :
    l = l' ∧ m = m' ∧ r = r' :=
  laurent_unique hinj hnz l m r l' m' r' fun j => (h j).trans (h' j).symm

theorem embed_foldMsg_laurent (c : F) (hc : c ≠ 0) (v : Fin (m + m) → V) :
    embed c (foldMsg c⁻¹ v) = c • foldLaurentL v + v + c⁻¹ • foldLaurentR v := by
```

`round_extract` interpolates the embedded public child openings, proves that
the honest embedded fold solves the same three-point system, and applies
`laurent_interpolate_unique` to identify the interpolated middle coefficient
with the carried parent `pub`. No commitment binding is used for this step.

### U4 lane definitions and capstone (verbatim)

```lean
def u4ALaneAtom (e : G1 →ₗ[F] G2 →ₗ[F] GT) :
    (G2 × G2) →ₗ[F] (G1 × G1) →ₗ[F] (GT × GT) where
  toFun k :=
    { toFun := fun m => (e m.1 k.1, e m.2 k.2)
      map_add' := by
        intro x y
        ext <;> simp
      map_smul' := by
        intro s x
        ext <;> simp }
  map_add' := by
    intro x y
    ext m <;> simp
  map_smul' := by
    intro s x
    ext m <;> simp

def u4BLaneAtom (e : G1 →ₗ[F] G2 →ₗ[F] GT) :
    G1 →ₗ[F] G2 →ₗ[F] GT where
  toFun k :=
    { toFun := fun m => e k m
      map_add' := map_add (e k)
      map_smul' := map_smul (e k) }
  map_add' := by
    intro x y
    ext m
    simp
  map_smul' := by
    intro s x
    ext m
    simp

def u4TLanePairing (e : G1 →ₗ[F] G2 →ₗ[F] GT) :
    (G1 × G1) →ₗ[F] (G2 × F) →ₗ[F] (GT × G1) where
  toFun a :=
    { toFun := fun b => (e a.1 b.1, b.2 • a.2)
      map_add' := by
        intro x y
        ext <;> simp [add_smul]
      map_smul' := by
        intro s x
        ext <;> simp [smul_smul] }
  map_add' := by
    intro x y
    ext b <;> simp [smul_add]
  map_smul' := by
    intro s x
    ext b <;> simp [smul_smul, mul_comm]

abbrev U4Commitment (_F G1 GT : Type*) :=
  ((GT × GT) × GT) × (GT × G1)

def u4ACommitAtom (e : G1 →ₗ[F] G2 →ₗ[F] GT) :
    (G2 × G2) →ₗ[F] (G1 × G1) →ₗ[F] U4Commitment F G1 GT :=
  u4LiftAtom u4AEmbedding (u4ALaneAtom e)

def u4BCommitAtom (e : G1 →ₗ[F] G2 →ₗ[F] GT) :
    G1 →ₗ[F] G2 →ₗ[F] U4Commitment F G1 GT :=
  u4LiftAtom u4BEmbedding (u4BLaneAtom e)

def u4TCommitMap :
    (GT × G1) →ₗ[F] U4Commitment F G1 GT :=
  u4TEmbedding

theorem u4_capstone (e : G1 →ₗ[F] G2 →ₗ[F] GT) {μ : ℕ}
    (srsV : Fin (2 ^ μ) → G2) (srsW : Fin (2 ^ μ) → G1)
    (ComA ComB : U4Commitment F G1 GT)
    (ip_ab : GT) (agg_c : G1)
    (α : G1) (β γ δ : G2)
    (A C Aic : Fin (2 ^ μ) → G1) (Bv : Fin (2 ^ μ) → G2)
    (r : F) (r_sum : F) (g_ic : G1)
    (hbindA : PairingCommitmentBinding (u4ACommitAtom e)
      (fun i => (srsV i, srsV i)))
    (hbindB : PairingCommitmentBinding (u4BCommitAtom e)
      (fun i => (r ^ (i : ℕ))⁻¹ • srsW i))
    (hComA : ComA = commitV (u4ACommitAtom e)
      (fun i => (srsV i, srsV i)) (fun i => (A i, C i)))
    (hComB : ComB = commitV (u4BCommitAtom e)
      (fun i => (r ^ (i : ℕ))⁻¹ • srsW i)
      (fun i => r ^ (i : ℕ) • Bv i))
    (hacc : AcceptTree (u4ACommitAtom e) (u4BCommitAtom e) u4TCommitMap
      (u4TLanePairing e) μ
      (fun i => (srsV i, srsV i))
      (fun i => (r ^ (i : ℕ))⁻¹ • srsW i)
      (fun i => r ^ (i : ℕ))
      ComA ComB (u4TCommitMap (ip_ab, agg_c)))
    (hrsum : r_sum = ∑ i : Fin (2 ^ μ), r ^ (i : ℕ))
    (hgic : g_ic = ∑ i : Fin (2 ^ μ), r ^ (i : ℕ) • Aic i)
    (hppe : e (r_sum • α) β + e g_ic γ + e agg_c δ = ip_ab)
    (hroot : r ∉ discrepancyRootSet
      (fun i => groth16Discrepancy e α β γ δ A C Aic Bv i)) :
    ∀ i, e (A i) (Bv i) = groth16Rhs e α (Aic i) (C i) β γ δ := by
```

The terminal public-fold identity was proved, so no additional permitted
`sorry` was needed:

```lean
theorem foldKey_public_terminal {μ : ℕ} (x : Fin μ → F) (r : F) :
    foldKey x (fun i : Fin (2 ^ μ) => r ^ (i : ℕ)) 0 =
      ∏ j : Fin μ, (1 + x j * r ^ (2 ^ (j : ℕ))) := by

theorem foldKey_public_eq_terminalR {F : Type} [Field F] {μ : Nat}
    (x : Fin μ → F) (randomizer : F) :
    foldKey x (fun i : Fin (2 ^ μ) => randomizer ^ (i : Nat)) 0 =
      terminalR randomizer x := by
  simpa [terminalR] using foldKey_public_terminal x randomizer
```

### FS leaf statement (verbatim)

```lean
def LeafData {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type}
    [Field F]
    [AddCommGroup G1] [Module F G1] [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload
      KzgPayload) (proof : Proof μ F G1 G2 GT) (transcript : FsTranscript μ F) :
    Prop :=
  let folded := terminalFold stmt.ComA stmt.ComB proof transcript.roundAnswer
  stmt.e proof.aFinal proof.vFinal = folded.comA.1 ∧
  stmt.e proof.wFinal proof.bFinal = folded.comB ∧
  stmt.e proof.aFinal proof.bFinal = folded.comT.1 ∧
  stmt.e proof.cFinal proof.vFinal = folded.comA.2 ∧
  terminalR transcript.randomizer (reversedView transcript.roundAnswer) • proof.cFinal =
    folded.comT.2 ∧
  stmt.acceptV (transcriptCoeffs (reversedView transcript.roundAnswer) 1)
    proof.vFinal proof.vOpening ∧
  stmt.acceptW
    (transcriptCoeffs
      (fun i => gipaChallenge (reversedView transcript.roundAnswer i))
      transcript.randomizer⁻¹) proof.wFinal proof.wOpening
```

This is five real terminal equations plus the two KZG accepts. The DESIGN
§U5d(4) paragraph permitting a sixth verifier check is superseded by this R4
repair: the identity is now `foldKey_public_eq_terminalR`, a theorem about
public data, rather than an adversary-facing check or hash field.

### Axiom and build audits

The temp-file audit reported exactly:

```text
'Ipp.gipa_extract' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.u4_capstone' depends on axioms: [propext, Classical.choice, Quot.sound]
```

All builds used the pinned Lean 4.30.0 `lake.exe`, one build at a time, with
`LEAN_NUM_THREADS=1`, and wrote output to `build.log`.

- `lake build Ipp.Gipa`: pass; 1670 jobs; final focused run 29s.
- `lake build Ipp.Composition`: pass; 1671 jobs; final focused run 28s.
- `lake build Ipp.FsGame`: pass; 3311 jobs; final focused run 35s.
- `lake build Ipp.FsFork`: pass; 3314 jobs; final focused run 43s.
- `lake build Ipp`: pass; 3323 jobs.
- `git diff --check`: pass.

No prover/release-gated tests were run; this Lean package has no separate
prover/release gate in the requested workflow. No `axiom` or `native_decide`
was added.

The only remaining `sorry` is the pre-existing permitted R6 assembly theorem.
Its exact current goal is:

```lean
let r := tree.root.1.out.transcript.randomizer
AcceptTree (u4ACommitAtom stmt.e) (u4BCommitAtom stmt.e) u4TCommitMap
  (u4TLanePairing stmt.e) μ
  (fun i => (stmt.srsV i, stmt.srsV i))
  (fun i => (r ^ (i : Nat))⁻¹ • stmt.srsW i)
  (fun i => r ^ (i : Nat))
  (u4AEmbedding stmt.ComA) (u4BEmbedding stmt.ComB)
  (u4TCommitMap (tree.root.1.out.proof.ipAb, tree.root.1.out.proof.aggC))
```

## Design review 2 (R6 architecture + R7 quantitative)

Review date: 2026-07-10. This was a source-level, read-only review of
`codex-r6-impl.md`, DESIGN R7 items 1--5, and the current Lean surfaces. No
Lean build was run: the issues below are statement/invariant issues rather
than elaboration uncertainties. The pre-existing build logs were not touched.

### Part A -- R6 induction architecture

There are CRITICAL findings for Part A.

#### CRITICAL

1. **`codex-r6-impl.md` Step 1/per-node argument; `Ipp/FsFork.lean:27,
   613-652, 798-827, 1060-1116`; `Ipp/ForkTree.lean:62-81` -- wrapped-log
   prefix agreement does not imply structured-point/trace agreement.**
   `FsWrappedSpec` records a structured miss only as the fixed input
   `Sum.inr ()` and its field answer. The actual `FsPoint` is kept separately
   in `WrappedFsRun.trace`; `flattenFsLog` deliberately erases it.
   `TreeConsistent.hprefix` and `hprefixValues` therefore equate only erased
   inputs and answers. They cannot establish that two children have the same
   `trace[n]`, nor that their selected round points, randomizer points, or x0
   points are equal. `roundSlot` says that each child's *own* round point is at
   its own trace index; `roundSlot_answer_eq_transcript` identifies its answer,
   but neither theorem relates the point to another child. Thus the prompt's
   implication "prefix/value agreement ... => same `RoundComs`" and its
   proposed derivation of `all_randomizer_eq` do not follow from the current
   invariant.

   **Resolution:** add and prove a wrapper-specific replay-prefix theorem that
   transports equality of the wrapped oracle-answer prefix to equality of the
   generated `WrappedFsRun.trace` prefix (including the selected entry), then
   thread that fact through `TreeConsistent` or a wrapper-specific consistency
   refinement. An equally sound redesign is to retain an authenticated point
   observation in the fork boundary instead of erasing it. The theorem must be
   proved from `wrapFs`/replay execution semantics; it cannot be postulated from
   the current generic log fields. Only after this theorem may constructor
   injectivity be used to recover shared `RoundComs`, nonces, x0 root data, and
   randomizer-point payloads.

#### MAJOR

1. **`Ipp/FsFork.lean:1104-1116` versus `Ipp/ForkTree.lean:64-79` -- the
   dependency-order index is not yet connected to the prefix-value index.**
   `DependencyOrdered` proves `tracePos ... = some i` and `i < (s : Nat)`,
   where `s` is the ordinal among `Sum.inr ()` queries. Cross-child value
   agreement is stated at absolute list positions `n < slotPos`.
   `hslotPos : slotPos < cursor` does not imply that the absolute position of
   the `i`th structured query is below `slotPos`. This fact is true for the
   ordered filtered log but no such bridge is exposed here.

   **Resolution:** prove a query-log rank/position lemma: if `slotPos` is the
   absolute position of the `s`th `Sum.inr ()` entry, then every `i < s` has a
   unique absolute position below `slotPos`, with `getQueryValue?` equal to the
   value stored at that position. Combine it with the trace-prefix theorem from
   CRITICAL 1. Do not silently rewrite `s` as `slotPos`.

2. **`codex-r6-impl.md` "three bridging lemmas"; `Ipp/FsGame.lean:184-203,
   220-236`; `Ipp/FsFork.lean:1007-1058` -- the listed bridges are not
   sufficient for the leaf or node cases.** In addition to truncated-fold
   extension, terminal-fold completion, and key/public alignment, the proof
   needs exposed semantic lemmas establishing, for every accepted supported
   run,
   `roundPrev 0 = x0` and
   `roundPrev (j.succ) = roundAnswer j`. These are true by `queryRounds`, but
   are not fields of `FsTranscript`, `LeafData`, `RoundQueries`, or
   `WrappedRunGood`, and no current public lemma states them. It also needs the
   wrapper-prefix consequences that all leaf proofs share `ipAb`/`aggC` (from
   the x0 point) and that ancestor `proof.rounds` payloads persist down a path,
   plus the tagged-embedding/fold commutation used to pass from lane-native
   `terminalFold` values to `AcceptTree` commitments. The prompt mentions
   `foldCom_map`, but no such lemma currently exists in `FsFork.lean`.

   **Resolution:** expose an accepted-transcript chaining record/lemma from
   `fsVerifier_logged`/`queryRounds_logged`; prove wrapper-prefix root-data and
   ancestor-payload lemmas; and add the linear-map/fold commutation (plus the
   elementary `(r ^ i)⁻¹ = (r⁻¹) ^ i` normalization needed by the B key) before
   attempting the generalized induction. Treat these as part of the assembly
   boundary, not as consequences of the three advertised fold lemmas.

3. **`codex-r6-impl.md` run-correspondence invariant -- current-level point
   injectivity alone does not give ancestor-level `proof.rounds` agreement.**
   Equality of two `.round` constructors at level `level` gives equality of
   that level's `prev`, `RoundComs`, and nonce only. Agreement at every
   ancestor must be carried inductively and preserved across each later fork.
   `hstrict` orders the selected *structured ordinals*, which is enough only
   after the rank/position and trace-prefix bridges above are available.

   **Resolution:** state the helper invariant explicitly as a path-prefix
   record indexed by `j < level`, containing answer, `RoundComs`, nonce, and
   chaining equality for the current subtree root/all leaves. Prove extension
   at a node and preservation into all four child subtrees. Do not replace this
   with a single per-node constructor-injectivity step.

#### NOTE

1. **`Ipp/FsGame.lean:184-203` -- the proposed `roundPrev` chain is
   semantically correct, not false.** Round zero uses x0, and the recursive
   call uses the previous answer as the next `prev`. Hence shared x0 plus
   shared answers below level `j` does imply shared `roundPrev j`. The defect
   is that this semantic fact is not currently exported to the R6 boundary.

2. **`Ipp/Gipa.lean:427-429, 478-503, 822-832`; `Ipp/FsGame.lean:158-160,
   275-280` -- the key/public orientation in the prompt is correct if the
   truncation is defined carefully.** `AcceptTree.node`/`foldPow` peels the
   highest remaining vector bit. `foldKey` first consumes `x (last)`. For
   `x = reversedView roundAnswer`, that value is chronological answer zero;
   recursion then consumes chronological answers one, two, and so on. Thus an
   R6 accumulator extended in chronological order matches
   `foldKey (reversedView ...)` at the leaf. The two-round parity lemma is a
   useful sanity check, though the general proof should unfold the
   `Fin.rev`/`foldKey` index relation rather than rely on the two-round example.

**Part A go/no-go:** **NO-GO** for implementing R6 per
`codex-r6-impl.md` as written. The argument-passing induction shape is viable,
and the fold orientation is right, but the current boundary cannot prove its
central shared-point premise and the advertised bridge set is incomplete.

### Part B -- R7 quantitative design

There are CRITICAL findings for Part B.

#### CRITICAL

1. **DESIGN R7 items 2-3; `Ipp/Fork.lean:605-824`; `Ipp/ForkTree.lean:86-113`
   -- a predicate-parametrized four-run bound does not compose randomized
   recursive subtrees.** Existing U5b has the exact marginal identities

   ```text
   pair success = sum_first w(first) * p(first)
   raw three-replay success = sum_first w(first) * p(first)^3,
   ```

   where `first` is sampled by `replayFirstRun main` and `p(first)` is the
   conditional probability of one replay trial. For a deterministic predicate
   `S` on completed runs, the required predicate versions would instead be

   ```text
   pair-all-S = sum_first w(first) * 1[S first] * pS(first)
   raw-four-all-S = sum_first w(first) * 1[S first] * pS(first)^3,
   ```

   together with a forking lower bound for `pair-all-S`, not merely the current
   unpredicated marginal identities. These identities are not currently
   present, but are at least a coherent generalization.

   The planned `S_l`, however, is not a deterministic predicate on a completed
   run: success of `forkTreeFrom ... depth run` contains fresh oracle randomness.
   Replacing it by "support is inhabited" discards the success probability and
   cannot prove the quantitative recurrence. Conversely, embedding recursive
   subtree computations after each child changes `pS(first)` into a continuation
   success probability and requires a continuation-parametrized theorem plus
   four conditional-product identities. `forkReplay4_bound_pred` as stated does
   not provide that theorem.

   **Resolution:** formulate the one-level lemma over a continuation
   `next : loggedRun -> OracleComp spec (Option beta)` (with the appropriate
   `level/lower` parameters). Prove an exact expansion for the computation that
   forks four children and runs `next` independently on all four, including the
   canonical child-zero factor, and generalize the pair-fork/Jensen step to the
   resulting conditional success function. Only then define
   `Q_d` as the averaged probability of a depth-`d` gated continuation and
   derive `G(Q_d) <= Q_(d+1)`.

2. **DESIGN R7 item 3 -- the stated `S_l` indexing contradicts its claimed
   endpoints.** It defines `S_0 := leafOk` but then says
   `S_(l+1)` is success of a `(mu-l-1)`-deep subtree. Consequently `S_mu` is a
   depth-zero leaf event again, while `S_1` is depth `mu-1`; it cannot also be
   true that `Q_mu` is the full depth-`mu` tree success probability.

   **Resolution:** use `S_d(run)`/`Q_d` for the exact depth-`d` continuation:
   depth zero is the gated leaf and depth `d+1` is one fork level followed by
   four depth-`d` continuations. Keep transcript `level` as the separate value
   `mu - remainingDepth` (or index by `(level, depth)` with their sum fixed).

#### MAJOR

1. **DESIGN R7 items 2-3; `Ipp/Fork.lean:788-824, 1144-1169` -- `accS` is not
   yet aligned with the selector/reachability event consumed by U5b.** The
   current lower bound starts from
   `sum s, Pr[cf output = some s | main]` and requires `CfReachable`.
   A valid predicate theorem must start from the probability that the canonical
   logged run both satisfies `S` and supplies a reachable current-level slot
   (and, below the root, satisfies the `lower < slot` gate). `S : alpha x
   QueryLog -> Prop` cannot simply replace `cf : alpha -> Option slot` in the
   existing theorem, and the current `probEvent_fst_replayFirstRun` identity
   only handles predicates of `alpha`, not log-dependent subtree conditions.

   **Resolution:** prove the two weighted predicate identities displayed in
   CRITICAL 1 and a predicate-aware replay-fork lower bound whose acceptance
   event explicitly includes `cf = some s`, reachability, and the lower-slot
   gate. For this application, also prove that the depth-`d` gated success event
   entails those selector facts. This is the precise bridge missing between
   the canonical-run U5b machinery and the proposed `Q_d` average.

2. **DESIGN R7 item 4; `Ipp/FsFork.lean:829-838, 1122-1133` -- the proposed
   `q0_lower_bound` event list does not equal `WrappedRunGood`.**
   `WrappedRunGood` includes every `not RoundPointUnqueried qb level run`.
   Item 4 mentions dependency-order violations but gives no term or deterministic
   query-budget hypothesis for a round point whose first miss is outside
   `qb + 1`. Acceptance ensures the verifier issued the logical query, but does
   not by itself bound its miss ordinal; the adversary has no query-bound
   hypothesis in the displayed R7 design. Thus the planned union bound does not
   yet lower-bound the exact `Q_0` gate.

   **Resolution:** state the adversary/wrapped-main query-budget hypothesis and
   prove `RoundPointUnqueried` impossible under it, or add its actual bad-event
   bound to `err_bad`. Define `leafOk` verbatim first, then make every U5a term
   correspond to one conjunct of that definition.

3. **DESIGN R7 items 4-5; `Ipp/FsFork.lean:639-652, 786-796` -- the probability
   space for `Q_0` is not connected quantitatively to the planned base
   acceptance bound.** `wrapFs_support_iff` is only a support equivalence.
   `Q_0` is an event under `replayFirstRun (wrapFs ...)`, whereas the cached FS
   acceptance/U5a analysis naturally runs under `fsRandomFunction (FsGame ...)`.
   Support equivalence is insufficient to rewrite probabilities.

   **Resolution:** prove a probability-preserving wrapper identity (or an
   explicit coupling equality) for the exact output/trace/good event, then use
   `probEvent_fst_replayFirstRun` to move between output and logged-run views.
   Record this equality in the statement of `q0_lower_bound` rather than relying
   on the existing support theorem.

4. **DESIGN R7 item 4; `Ipp/Algebra.lean:33-51` -- KZG z-goodness is currently
   already bundled into the `KzgStructuredKeyBinding` hypothesis.** Charging a
   separate z bad-event while still assuming the all-z binding definition
   double-counts/changes the intended boundary. In addition, root-set avoidance
   is needed by `u4_capstone` but is not a conjunct of current
   `WrappedRunGood`, so it is not structurally supplied by the proposed leaf
   gate.

   **Resolution:** choose one KZG boundary: retain the current all-z explicit
   binding hypothesis and remove the z term, or weaken binding to a z-good
   statement and gate/bound that exact event. Add root randomizer avoidance as
   a separately gated root event (charge it once after shared-randomizer is
   proved), or explicitly include it in `leafOk` and prove equivalence using
   shared randomizer.

#### MINOR

1. **DESIGN R7 item 1; `Ipp/ForkTree.lean:125-258` -- gated recursion changes
   theorem signatures but does not invalidate the existing one-way support
   facts.** Adding a depth-zero rejection and a gate field to
   `TreeConsistent.leaf` preserves "success implies consistency/all support"
   after threading `leafOk`. `TreeConsistent.all_support` and property transfer
   remain derivable. The old `forkTree_bound_param` base case uses success
   probability one and will no longer hold, but item 2 says that pointwise
   interface is to be deleted, so it must be removed rather than shimmed.

   **Resolution:** update the support theorem signatures and callers in one
   change, retain both leaf support and leaf gate evidence, and delete
   `ForkTreeNodeLowerBound`/`forkTree_bound_param` when the averaged theorem
   replaces them.

#### NOTE

1. **DESIGN R7 item 3 -- `G` is monotone on `ENNReal`.** Division by the fixed
   positive query-count cast is monotone, truncated subtraction by `h^-1` is
   monotone, multiplication of the two nonnegative monotone factors is
   monotone, and so are fourth power and final truncated subtraction. The lemma
   should be proved globally; no extra interval restriction is needed.

2. **DESIGN R7 item 5; VCVio `EvalDist/Defs/Basic.lean:239-261` -- the final
   probability-to-support step is sound.** VCVio exposes
   `probEvent_pos_iff`/`probEvent_ne_zero_iff`: positive probability of
   `Option.isSome` gives an `isSome` output in support, hence a concrete tree.
   This step becomes applicable once the lower bound targets the exact gated
   `forkTree` computation.

**Part B go/no-go:** **NO-GO** for implementing R7 per DESIGN items 1--5 as
written. Gated support propagation, monotonicity of `G`, and the final
positive-support step are sound, but the per-level quantitative theorem and
indexing must be redesigned, and `Q_0` must be aligned with the exact gate and
probability space before implementation.

## Revised R6 boundary attempt (2026-07-10)

Status: R6 items 1 and 2 are complete and green. The transcript-chaining part
of item 3 is complete. Work stopped at item 3 because the requested x0-payload,
shared-`ipAb`/`aggC`, and `all_randomizer_eq` conclusions do not follow from
the current good-event boundary. No statement was weakened and no additional
`sorry` was introduced; the pre-existing `tree_to_acceptTree` is still the
package's sole `sorry`.

Files changed:

- `Ipp/Fork.lean`
- `Ipp/ForkTree.lean`
- `Ipp/FsGame.lean`
- `Ipp/FsFork.lean`
- `REPORT-CODEX.md`

`DESIGN.md` and `.lake/packages/**` were not edited. No commit was created.

### Boundary 1: deterministic replay

Statement verbatim:

```lean
theorem trace_prefix_of_log_prefix {Point α : Type} [DecidableEq Point]
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α)
    {runA runB : WrappedFsRun Point α}
    {logA logB : QueryLog (FsWrappedSpec F)} (n : Nat)
    (hsupportA : (runA, logA) ∈ support (replayFirstRun (wrapFs oa)))
    (hsupportB : (runB, logB) ∈ support (replayFirstRun (wrapFs oa)))
    (hprefix : ∀ m, m < n → logA[m]? = logB[m]?)
    (hinputA : QueryLog.inputAt? logA n = some (Sum.inr ()))
    (hinputB : QueryLog.inputAt? logB n = some (Sum.inr ())) :
    runA.trace.take (structuredMissCountBefore logA n + 1) =
      runB.trace.take (structuredMissCountBefore logA n + 1) := by
```

The proof is by `OracleComp.inductionOn` over the wrapped computation. It
separates ambient-uniform and structured-miss steps, uses equality of the
dependent logged head entries to identify the continuation before recursing,
and deliberately does not require equality of the selected answer. The
selected structured point is included. A supporting induction proves that
`wrapFsFrom` only appends to its initial trace. The theorem took six focused
proof iterations, below the task's approximately-twelve-iteration stop rule.

### Boundary 2: filtered rank and absolute position

Statement verbatim:

```lean
theorem filtered_rank_position
    [DecidableEq F]
    (log : QueryLog (FsWrappedSpec F)) (slotPos s : Nat)
    (hrank : structuredMissCountBefore log slotPos = s) :
    ∀ i, i < s → ∃ pos value, pos < slotPos ∧
      log[pos]? = some ⟨Sum.inr (), value⟩ ∧
      QueryLog.getQueryValue? log (Sum.inr ()) i = some value := by
```

The generic fork boundary was strengthened with the missing rank fact. The
new `TreeConsistent.node` field is verbatim:

```lean
(hslotRank : ∀ k,
  (QueryLog.getQ ((children k).root.2.take slotPos) (· = i)).length = (s : Nat))
```

`forkReplay4From_support_props` proves this from VCVio's
`replayRunWithTraceValue_forkConsumed_imp_prefix_count`, immutable fork-query
state, and pairwise replay-prefix equality. `forkTreeFrom_support_props`
threads it into every node. Thus `s` is never identified with `slotPos`.

### Boundary 3: transcript chaining

Record and projection statements verbatim:

```lean
structure TranscriptChaining {F : Type} {μ : Nat} (x0 : F)
    (roundPrev roundAnswer : Fin μ → F) : Prop where
  zero : ∀ hμ : 0 < μ, roundPrev ⟨0, hμ⟩ = x0
  succ : ∀ (j : Nat) (hj : j + 1 < μ),
    roundPrev ⟨j + 1, hj⟩ = roundAnswer ⟨j, Nat.lt_of_succ_lt hj⟩

theorem roundPrev_zero {F : Type} {μ : Nat} {x0 : F}
    {roundPrev roundAnswer : Fin μ → F}
    (h : TranscriptChaining x0 roundPrev roundAnswer) (hμ : 0 < μ) :
    roundPrev ⟨0, hμ⟩ = x0 := h.zero hμ

theorem roundPrev_succ {F : Type} {μ : Nat} {x0 : F}
    {roundPrev roundAnswer : Fin μ → F}
    (h : TranscriptChaining x0 roundPrev roundAnswer)
    (j : Nat) (hj : j + 1 < μ) :
    roundPrev ⟨j + 1, hj⟩ = roundAnswer ⟨j, Nat.lt_of_succ_lt hj⟩ := h.succ j hj

theorem wrapped_supports_transcript_chaining
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    {run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT)}
    {log : QueryLog (FsWrappedSpec F)}
    (h : (run, log) ∈ support (replayFirstRun (wrapFs (FsGame stmt adv))))
    (haccept : run.out.accept = true) :
    TranscriptChaining run.out.transcript.x0 run.out.transcript.roundPrev
      run.out.transcript.roundAnswer := by
```

The cached `queryRounds` invariant now proves chaining together with cache
correctness. It is propagated through `fsVerifier_cached`, `fsGame_cached`,
and `fsRandomFunction_replay_cached`; a support-preservation induction for
`wrapFsFrom` exports it for arbitrary accepted supported wrapped runs.

### Exact item-3 blocker

The next required node facts are, for the four child roots:

```lean
∀ a b : Fin 4,
  (children a).root.1.out.proof.ipAb =
      (children b).root.1.out.proof.ipAb ∧
  (children a).root.1.out.proof.aggC =
      (children b).root.1.out.proof.aggC
```

and the shared-randomizer consequence needed globally:

```lean
∀ k : Fin 4,
  (children k).root.1.out.transcript.randomizer =
    (children 0).root.1.out.transcript.randomizer
```

Current hypotheses provide:

```lean
hslotRank : ∀ k,
  structuredMissCountBefore (children k).root.2 slotPos = (s : Nat)
hprefixValues : ∀ a b n, n < slotPos →
  (children a).root.2[n]? = (children b).root.2[n]?
htrace : ∀ a b,
  ((children a).root.1.trace.take (s + 1) =
    (children b).root.1.trace.take (s + 1))
```

together with `DependencyOrdered` and `TranscriptChaining`. These facts do
make the selected round points equal, hence expose equal `roundPrev`,
`RoundComs`, and round nonces. They do not make the accepted x0 points equal.

A permitted execution can cache two distinct x0 points `P ≠ Q` before the
selected round miss, with the random function assigning the same accepted
field answer to both. Both points are then present in the common trace prefix;
one replay branch may use `P` and another `Q`. Since the x0 payload contains
`ipAb` and `aggC`, the branches can have different root T-lane data while all
current `WrappedRunGood`, prefix, rank, and chaining hypotheses hold. Random
functions are not injective, so equality of x0 answers does not imply equality
of x0 payloads.

Closing the displayed goals requires an additional event/premise, for example
collision-freedom of the structured random function on the relevant pre-slot
trace (with its probability charged in R7), or a stronger selector invariant
that identifies the same accepted x0 point across replays. Neither is present
in revised R6's binding boundary or current `WrappedRunGood`. Consequently
`all_randomizer_eq`, the path-prefix record, the generalized fold induction,
and `tree_to_acceptTree` were not attempted past this point.

### Path-prefix helper invariant

No helper invariant declaration was landed because item 3 did not establish
the root data required to state its subtree-root fields soundly. Therefore
there is no verbatim helper invariant statement to report; adding one would
only move the unproved x0-payload goal into a record constructor.

### Verification and axiom audit

All Lean commands used the pinned Lean 4.30.0 `lake.exe`, one at a time, with
`LEAN_NUM_THREADS=1`, and wrote output to `build.log`.

- `lake build Ipp.Fork`: pass (3300 jobs).
- `lake build Ipp.ForkTree`: pass (3301 jobs).
- `lake build Ipp.FsGame`: pass (3311 jobs).
- `lake build Ipp.FsFork`: pass (3314 jobs); sole warning is the pre-existing
  `tree_to_acceptTree` `sorry`.
- `lake build Ipp`: pass (3323 jobs); same sole `sorry` warning.

Temporary-file `#print axioms` output:

```text
'Ipp.trace_prefix_of_log_prefix' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.filtered_rank_position' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.wrapped_supports_transcript_chaining' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.tree_to_acceptTree' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'Ipp.fsFork_success_acceptTree' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
```

The requested `just snarkpack-lean-ipp` gate could not be launched because
`just` is not installed or present on either the PowerShell or Git Bash PATH
(`which just` reported no executable). The package's underlying full Lean
build was run directly and passed as recorded above. Zero-`sorry` and clean
axiom-audit success criteria are not met solely because `tree_to_acceptTree`
remains blocked as described.

## U5a (opus session)

New file: `Ipp/FsBadEvents.lean` (import-only w.r.t. existing `Ipp/*.lean`;
imports `Ipp.FsFork`). No existing file edited except this report. No `sorry`,
no `axiom`, no `native_decide` in the new file.

### Probability space and events

All bounds are over
`fsProbComp stmt adv := replayFirstRun (fsRandomFunction (FsGame stmt adv))`
(the lazy structured random function: fresh uniform `F` on structured cache
misses, ≤ qb+1 in scope). Support points are `(out, sourceLog)`; the wrapped
image is `wrappedOf z = { out := z.1, trace := fsPointTrace z.2 }`.

Bad-event predicates (all in `Ipp` namespace):
- `BadCollision z := ¬ StructuredAnswersInjective (fsPointTrace z.2).length (flattenFsLog z.2)`
- `BadRandomizer badR z := z.1.transcript.randomizer ∈ badR`
- `BadDependency qb stmt z := ¬ DependencyOrdered qb stmt (wrappedOf z)`
- `BadKzg badZ z := z.1.transcript.kzg ∈ badZ`
- `BadUnqueried qb z := ∃ level, level < μ ∧ RoundPointUnqueried qb level (wrappedOf z)`
- `RunGoodFull qb stmt badR badZ z := WrappedRunGood qb stmt (wrappedOf z) (flattenFsLog z.2) ∧ randomizer ∉ badR ∧ kzg ∉ badZ`

The randomizer/KZG bad sets are modelled as abstract `Set F` (with size
parameters `dR`, `dZ`) rather than `discrepancyRootSet d` directly, so the U5e
consumer instantiates `badR := discrepancyRootSet d`, `dR := 2^μ − 1` via
`discrepancyRootSet_card`, and `badZ`/`dZ` from the KZG challenge-goodness set.

### Verbatim statements

1. `answer_collision_bound` (field of `BadEventBudget`):
   `Pr[fun z => Accepted z ∧ BadCollision z | fsProbComp stmt adv] ≤ ↑((qb+1)^2) / ↑(Fintype.card F)`

2. `randomizer_rootset_bound` (field):
   `Pr[fun z => Accepted z ∧ BadRandomizer badR z | fsProbComp stmt adv] ≤ ↑((qb+1)*dR) / (↑(Fintype.card F) - 2)`
   (consumer sets dR = 2^µ−1 from `discrepancyRootSet_card`; the `−2`
   denominator is the randomizer stage rejecting {0,1}.)

3. `dependency_order_bound` (field):
   `Pr[fun z => Accepted z ∧ BadDependency qb stmt z | fsProbComp stmt adv] ≤ ↑(μ*(qb+1)) / ↑(Fintype.card F)`

4. `kzg_z_bound` (field, parametric bad set of size ≤ dZ):
   `Pr[fun z => Accepted z ∧ BadKzg badZ z | fsProbComp stmt adv] ≤ ↑((qb+1)*dZ) / ↑(Fintype.card F)`

5. `round_unqueried_bound` (field, fully parametric value `bUnq`):
   `Pr[fun z => Accepted z ∧ BadUnqueried qb z | fsProbComp stmt adv] ≤ bUnq`

The five are bundled into
`structure BadEventBudget qb stmt adv [Fintype F] badR badZ dR dZ bUnq`.

Item 5 (`q0_lower_bound`, THE deliverable, proved concretely):
```
theorem q0_lower_bound [Fintype F] (qb) (stmt) (adv) (badR badZ : Set F) (dR dZ : Nat) (bUnq)
    (H : BadEventBudget qb stmt adv badR badZ dR dZ bUnq) :
    Pr[fun z => Accepted z ∧ RunGoodFull qb stmt badR badZ z | fsProbComp stmt adv] ≥
      Pr[fun z => Accepted z | fsProbComp stmt adv]
        - (↑((qb+1)^2)/↑(card F)
           + (↑((qb+1)*dR)/(↑(card F)-2)
              + (↑(μ*(qb+1))/↑(card F)
                 + (↑((qb+1)*dZ)/↑(card F) + bUnq))))
```
plus the abstract engine `q0_lower_bound_abstract` (same conclusion with the
five RHS as opaque `ℝ≥0∞` hypotheses `bCol … bUnq`).

### What is proved vs. parametric

- PROVED concretely (pure ENNReal event algebra, no sorry):
  - `q0_lower_bound_abstract` / `q0_lower_bound`: the complement/union-bound
    lower bound. Chain: `Pr[accept] ≤ Pr[accept∧good ∨ accept∧¬good]`
    (`probEvent_mono''`) `≤ Pr[good] + Pr[accept∧¬good]` (`probEvent_or_le`)
    `≤ Pr[good] + Σ Pr[accept∧badᵢ]` (`probEvent_mono` on support + iterated
    `probEvent_or_le`) `≤ Pr[good] + err`; then `tsub_le_iff_right`.
  - `accepted_challengesAccepted`: accepting support runs satisfy
    `ChallengesAccepted`, extracted from the public
    `wrapped_source_leaf_data`. This discharges the `ChallengesAccepted`
    conjunct of `WrappedRunGood` for free — no separate bad event needed.
  - `accepted_not_good_bad`: the pointwise support decomposition of
    `accept ∧ ¬RunGoodFull` into the five bad events (case split on
    `randomizer ∈ badR`, `kzg ∈ badZ`, then `not_and_or` + `push_neg` on the
    remaining `WrappedRunGood` conjuncts).

- PARAMETRIC (stated as `BadEventBudget` fields, i.e. named hypotheses): all
  four per-event probability bounds (items 1–4) and the round-unqueried bound
  (the item-5 note term). These are the RO union-bound / birthday counting
  facts over the cached uniform sampler. They were NOT discharged from scratch
  this session: each requires threading VCVio's per-query uniform-sampling
  distribution through `fsRandomFunction`'s `withCaching` state and the four
  rejection-sampled scalar stages — substantially more sampling-distribution
  infrastructure than fits here. Per the task's "parametric-but-stated beats
  stalled-concrete" clause they are stated at the exact constants requested
  (with `round_unqueried_bound` left as an abstract `bUnq`, matching DESIGN
  §R7 item 4's note that a clean concrete round-unqueried bound may resist).

### Constants / corrections chosen

- Collision: `(qb+1)^2 / |F|` (birthday over ordinal pairs, denominator |F|).
  The rejection-sampling `1/(|F|−2)` correction the task mentions is folded
  into the field's stated RHS as `/|F|`; if the concrete proof needs the
  `−2` slack it should be applied when that field is discharged. Documented
  as a known slack point.
- Randomizer: denominator `|F| − 2` (stage rejects {0,1}); numerator
  `(qb+1)·dR`, dR ≤ 2^µ−1 via `discrepancyRootSet_card`.
- Dependency: `μ·(qb+1)/|F|` (union over µ levels × candidate early misses,
  each a 1/|F| guess of the fresh x0/prev answer).
- KZG: `(qb+1)·dZ/|F|`.
- All numerics use `ℕ → ℝ≥0∞` coercions; `|F| = Fintype.card F`.

### Build results (one lake at a time, LEAN_NUM_THREADS=1)

- `lake build Ipp.FsBadEvents`: SUCCESS, exit 0, no errors.
- `lake build Ipp` (full package): SUCCESS, exit 0, 3324 jobs (prior 3323 +
  the new module).
- Warnings only: `push_neg` deprecation (repo-wide, pre-existing style);
  one `linter.unusedSectionVars` on `accepted_challengesAccepted` (the
  uniform-spec section instances are unused by that particular lemma —
  cosmetic); the pre-existing `Ipp.FsFork` `sorry` at `tree_to_acceptTree`
  (NOT introduced here and NOT referenced by any U5a theorem).

Note on build discipline: the first two build attempts silently ran `lake`
from the repo ROOT (the PowerShell tool's cwd), which built an unrelated
cached target and returned exit 1 without touching the new module. Fixed by
`Set-Location` into `lean-ipp` before invoking lake; recorded here so future
sessions set the working directory explicitly.

### Exact remaining gaps

1. Discharge the four `BadEventBudget` probability fields (items 1–4) as
   concrete RO union bounds. Requires: (a) a per-structured-miss uniform-mass
   lemma for `fsRandomFunction` (fresh sample distribution on a cache miss,
   ≤ 1/|F|, and ≤ 1/(|F|−2) inside the randomizer rejection loop); (b) a
   union bound over the ≤ qb+1 miss ordinals of `fsPointTrace`; (c) for
   randomizer/dependency, coupling the pre-slot prefix to the sampled answer.
2. The `round_unqueried_bound` term (`bUnq`) — DESIGN flags this as possibly
   resisting a clean concrete bound; left abstract.
3. The collision `1/(|F|−2)` rejection-sampling correction is not reflected
   in the stated `/|F|` denominator; reconcile when field 1 is discharged.

## R6 `tree_to_acceptTree` completion (2026-07-11)

Status: complete. The package's last `sorry` was replaced by a structural
induction over `TreeConsistent`; `fsFork_success_acceptTree` was re-derived from
the completed theorem. No statement was weakened, no axiom or `native_decide`
was added, and no design or package-cache file was edited.

The private generalized helper statement is verbatim:

```lean
private theorem tree_to_acceptTree_aux
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (hbindV : KzgStructuredKeyBinding stmt.srsV stmt.acceptV)
    (hbindW : KzgStructuredKeyBinding stmt.srsW stmt.acceptW)
    {depth level : Nat} (hsize : level + depth = μ)
    {lower : Option (Fin (qb (Sum.inr ()) + 1))}
    {tree : RunTree (FsWrappedSpec F)
      (WrappedFsRun
        (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
        (FsResult μ F G1 G2 GT)) depth}
    (hconsistent : TreeConsistent (wrapFs (FsGame stmt adv)) qb (Sum.inr ())
      (fun level run => roundSlot (qb (Sum.inr ())) level run) level lower tree)
    (hgood : tree.All (fun run => WrappedRunGood (qb (Sum.inr ())) stmt run.1 run.2))
    (root : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT))
    (slot : Nat → Fin (qb (Sum.inr ()) + 1))
    (hpath : PathPrefix (qb (Sum.inr ())) level slot root tree.root.1)
    (hlower : lower = if level = 0 then none else some (slot (level - 1))) :
    let r := root.out.transcript.randomizer
    let folded := foldRoundsUpTo root.out.transcript.roundAnswer root.out.proof.rounds
      { comA := stmt.ComA, comB := stmt.ComB,
        comT := (root.out.proof.ipAb, root.out.proof.aggC) }
      level depth hsize
    AcceptTree (u4ACommitAtom stmt.e) (u4BCommitAtom stmt.e) u4TCommitMap
      (u4TLanePairing stmt.e) depth
      (foldKeysUpTo id root.out.transcript.roundAnswer
        (fun i => (stmt.srsV i, stmt.srsV i)) level depth hsize)
      (foldKeysUpTo gipaChallenge root.out.transcript.roundAnswer
        (fun i => (r ^ (i : Nat))⁻¹ • stmt.srsW i) level depth hsize)
      (foldKeysUpTo id root.out.transcript.roundAnswer
        (fun i => r ^ (i : Nat)) level depth hsize)
      (u4AEmbedding folded.comA) (u4BEmbedding folded.comB)
      (u4TCommitMap folded.comT) := by
```

The node case consumes `TreeConsistent`'s selector/rank/value facts,
`TreeConsistent.all_support`, `PathPrefix.preserveChild`, `PathPrefix.refl`,
`PathPrefix.extend`, `trace_prefix_of_log_prefix`,
`selectedRoundPoint_eq_of_prefix`, `wrapped_roundSlot_answer_eq_transcript`,
the truncated-fold successor/congruence lemmas, `acceptTree_node_of_answers`,
and `foldCom_map`. `PathPrefix.preserveChild` in turn consumes the
collision-freedom pin `sharedRootData_of_x0` and the structured-point boundary.
The `lower`/last-slot equality in the helper is what turns the node's immediate
`hstrict` fact plus `PathPrefix.slot_strict` into strictness against every prior
path slot.

The leaf case consumes `wrapFs_support_exists_source`,
`wrapped_source_leaf_data`, `leafData_to_base_components`,
`foldKeysUpTo_complete`, `foldRoundsUpTo_complete`, both truncated-fold
congruence lemmas, `inv_pow_eq_pow_inv`, and
`foldKey_public_eq_terminalR`. The `PathPrefix` fields align all chronological
answers, rounds, the randomizer, `ipAb`, and `aggC` before the three lane-native
base equations are lifted through `u4AEmbedding`, `u4BEmbedding`, and
`u4TCommitMap`.

Verification used the pinned Lean 4.30.0 `lake.exe`, one process at a time,
with `LEAN_NUM_THREADS=1` and build output in `build.log`:

- `lake build Ipp.FsFork`: success (3314 jobs), no `sorry` warning.
- `lake build Ipp`: success (3324 jobs).
- Temporary-file axiom audit:
  - `'Ipp.tree_to_acceptTree' depends on axioms: [propext, Classical.choice, Quot.sound]`
  - `'Ipp.fsFork_success_acceptTree' depends on axioms: [propext, Classical.choice, Quot.sound]`
- Recursive `Ipp/` scan for `sorry`: 0 matches.
- Recursive `Ipp/` scan for `axiom `: 0 matches (therefore comments-only
  vacuously).
- `git diff --check`: success.

Nothing remains unproved, so there is no stuck goal to report. No separate
prover/release-gated tests were run; the requested focused and full Lean package
gates were run.

## U5a-quant (opus session 2)

Scope: begin discharging the parametric `BadEventBudget` fields concretely,
starting from the foundational per-miss uniform mass. Edited ONLY
`Ipp/FsBadEvents.lean` (two new theorems in a new `section FreshMiss`, plus a
module-header note) and this report. No other `Ipp/*.lean`, no `DESIGN.md`, no
`.lake/packages/**`. No `sorry`, no `axiom`, no `native_decide` introduced.

### Item 1 — foundational uniform-miss lemma: DELIVERED (concrete, green)

Two theorems, verbatim:

```lean
theorem fresh_miss_uniform {Point : Type} [DecidableEq Point] [Fintype F]
    [IsUniformSpec (unifSpec + (Point →ₒ F))]
    (point : Point) (cache : (Point →ₒ F).QueryCache)
    (hmiss : cache point = none) (v : F) :
    Pr[= v | Prod.fst <$> ((fsSourceOracle Point F) (Sum.inr point)).run cache] =
      (Fintype.card F : ℝ≥0∞)⁻¹

theorem fresh_miss_mem_le {Point : Type} [DecidableEq Point] [Fintype F]
    [IsUniformSpec (unifSpec + (Point →ₒ F))]
    (point : Point) (cache : (Point →ₒ F).QueryCache)
    (hmiss : cache point = none) (bad : Finset F) :
    Pr[fun z => z.1 ∈ bad |
        ((fsSourceOracle Point F) (Sum.inr point)).run cache] ≤
      (bad.card : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)
```

`fresh_miss_uniform` is the load-bearing item: at a structured cache MISS
(`cache point = none`) the sampled answer (first component of the StateT run of
the source oracle at index `Sum.inr point`) equals any fixed `v` with
probability EXACTLY `1/|F|`. This is the plain-uniform version the task asked to
state first: the raw per-miss sample is uniform on `F`; the rejection layer of
`queryAccepting` sits above it.

Proof route (short, direct — matches the technique of `Ipp/Fork.lean`'s
`probOutput_replayTrial_hasReplacement_le`):
- Unfold the miss step. On `cache point = none`,
  `Prod.fst <$> ((fsSourceOracle Point F) (Sum.inr point)).run cache`
  reduces (same `simp` set as `fsSource_support_step_inr`'s `hrun`:
  `fsSourceOracle, QueryImpl.add_apply_inr, QueryImpl.withCaching_apply,
  StateT.run_bind, StateT.run_get, fsSourceImpl, hmiss`) to the raw
  `(unifSpec + (Point →ₒ F)).query (Sum.inr point)` — the cache write is erased
  by `Prod.fst`.
- `probOutput_query` (VCVio `EvalDist.lean`, needs `[IsUniformSpec spec]`) gives
  `(Fintype.card ((unifSpec + (Point →ₒ F)).Range (Sum.inr point)))⁻¹`.
- Reconcile that range-card with `Fintype.card F`: the range is defeq `F`, but
  the two `Fintype` instances differ (the goal's comes from the opaque
  `[IsUniformSpec …]` hypothesis, not the local `[Fintype F]`). `congr` unifies
  the defeq types and leaves a single `Fintype F = Fintype F` instance goal,
  closed by `Subsingleton.elim` (`Subsingleton (Fintype α)` from Mathlib
  `Data/Fintype/Defs`). This instance-reconciliation was the only real friction
  (several build iterations); `Nat.card_eq_fintype_card`, `Fintype.card_congr`,
  and explicit-instance `congrArg` all fail because `rw`/TC re-synthesize a
  non-defeq instance — `congr` + `Subsingleton.elim` is the working idiom.

`fresh_miss_mem_le` is the set form used by the KZG/randomizer union bounds:
`probEvent_map` to push the event onto the first component, then
`probEvent_eq_sum_fintype_ite` over `F`, each term rewritten by
`fresh_miss_uniform`, then `Finset.sum_filter`/`Finset.filter_univ_mem`/
`Finset.sum_const` collapse the constant indicator sum to `|bad|·|F|⁻¹`.

Design note: both are stated generically in `Point` (not fixed to `FsPoint`) so
the concrete `BadEventBudget` discharge can instantiate `Point := FsPoint`,
`spec := FsSourceSpec` — the section-`Quantitative` instances already provide
`IsUniformSpec (FsSourceSpec …)`. The parametric `BadEventBudget` structure and
`q0_lower_bound`/`q0_lower_bound_abstract` are UNCHANGED.

### Item 2 — `kzg_z_bound_concrete`: NOT delivered (stays parametric)

Left the `BadEventBudget.kzg_z_bound` field parametric. Reason: the step from
the per-slot `fresh_miss_mem_le` to the field bound
`Pr[Accepted z ∧ z.1.transcript.kzg ∈ badZ | fsProbComp stmt adv]
   ≤ (qb+1)·dZ / |F|`
requires a DISTRIBUTIONAL union bound over the ≤ qb+1 structured miss ordinals
of the whole game `replayFirstRun (fsRandomFunction (FsGame stmt adv))`, which
does not yet exist and is a large development (the previous session's "remaining
gap (b)"). Concretely the missing pieces are:

1. A support/extraction lemma: an accepting run caches its KZG challenge at the
   kzg-stage structured point, i.e.
   `Accepted z → ∃ point, (point is a `ChallengePoint.kzg _` and)
       QueryAnswered z.2 (Sum.inr point) z.1.transcript.kzg`.
   `fsRandomFunction_replay_cached` already gives round-answer caching and
   `LeafData ∧ ChallengesAccepted`, and `queryAccepting_cached` caches an
   accepted scalar answer at its nonce-bearing point — but no current lemma
   projects the kzg-challenge caching out of `fsVerifier`/`FsGame`. This is a
   `queryAccepting_cached`-style extraction for the kzg stage; tractable but new.

2. THE BLOCKER — a distributional union-over-misses lemma, exact goal:
   ```
   Pr[fun z => ∃ point, QueryAnswered z.2 (Sum.inr point) v ∧ v ∈ badZ
      | replayFirstRun (fsRandomFunction (FsGame stmt adv))]
     ≤ (numStructuredMisses) * (dZ / |F|)
   ```
   with `numStructuredMisses ≤ qb + 1`. This is the analogue of VCVio's
   `probEvent_cache_has_value_le_of_unique_preimage`
   (`QueryTracking/Unpredictability.lean`), but for `fsSourceOracle`
   (= `fsSourceUnifFwd + withCaching fsSourceImpl`) rather than the plain
   `cachingOracle`, and for a `Finset` bad set rather than a single value. It
   needs a `probEvent`-level induction over `FsGame`'s bind structure that at
   each source step invokes `fresh_miss_mem_le` on the fresh miss and carries a
   union bound — the distributional counterpart of the SUPPORT-level
   `fsSource_preservesInv`/`fsSource_log_cached` inductions in `Ipp/FsFork.lean`.
   Building it (or adapting the VCVio lemma across the oracle-structure gap)
   exceeds the ~10-iteration item budget, especially after the instance-wall
   iterations spent landing item 1. Not attempted rather than left half-built.

The `(qb+1)` miss-count bound itself is a separate obligation: nothing in
`FsBadEvents.lean` currently ties `numStructuredMisses` to `qb`; that budget
link is a hypothesis the concrete discharge must add (the fork budget from U5b).

### Item 3 — `answer_collision_bound_concrete`: NOT attempted

Blocked on the same distributional machinery as item 2 (a birthday union over
ordered miss-ordinal pairs, the later miss hitting the earlier fixed answer with
mass ≤ 1/|F| by `fresh_miss_uniform`), so it stays parametric.

### Build results (one lake at a time, LEAN_NUM_THREADS=1, cwd = lean-ipp)

- Process check (Get-Process lake|lean) empty before every build.
- `lake build Ipp.FsBadEvents`: SUCCESS, exit 0. Only warnings are pre-existing:
  the `push_neg` deprecation and one `linter.unusedSectionVars` on
  `accepted_challengesAccepted` (both pre-existing from session 1), and the
  pre-existing `Ipp/FsFork.lean:1437` `sorry` (`tree_to_acceptTree`, NOT mine
  and NOT referenced by any FsBadEvents theorem).
- `lake build Ipp` (full package): SUCCESS, exit 0.
- Forbidden-token scan of `Ipp/FsBadEvents.lean` (`sorry|native_decide|axiom |
  admit`): clean (0 matches).
- No prover/release-gated tests were run; only the requested focused and full
  Lean package gates.

## R7 revised — gated recursion and continuation-parametrized recurrence attempt (2026-07-11)

Prerequisite R6 was verified before edits: `lake build Ipp.FsFork` succeeded
(3314 jobs), the recursive `Ipp/*.lean` scan found no `sorry`, declared
`axiom`, or `native_decide`, and `#print axioms` for both
`tree_to_acceptTree` and `fsFork_success_acceptTree` reported only
`[propext, Classical.choice, Quot.sound]`.

### Item 1 — gated recursion: complete and green

`forkTreeFrom` and `forkTree` now take
`leafOk : α × QueryLog spec → Prop` with `[DecidablePred leafOk]`. Depth zero
returns `some (.leaf first)` exactly when `leafOk first`; otherwise it returns
`none`. `TreeConsistent.leaf` now stores both first-run support and the gate
fact. The structural endpoint is:

```lean
theorem forkTree_success_all_leafOk [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (depth : Nat) (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    {tree : RunTree spec α depth}
    (h : some tree ∈ support (forkTree depth main qb i cf leafOk)) :
    tree.All leafOk
```

The concrete `FsFork` gate is exactly
`fun run => WrappedRunGood (qb (Sum.inr ())) stmt run.1 run.2`.
`tree_to_acceptTree` no longer has a separate `tree.All WrappedRunGood`
argument; it derives it using `hconsistent.all_leafOk`.
`fsFork_success_acceptTree` likewise has only the successful gated-fork
hypothesis. A local noncomputable `DecidablePred` instance uses
`Classical.propDecidable`; it changes no proposition and adds no axiom beyond
the already-audited `Classical.choice`.

The replaced prototype interface was deleted outright: there are no remaining
definitions or references named `ForkTreeNodeLowerBound` or
`forkTree_bound_param`.

### Item 2 — continuation machinery and weighted identities: complete and green

The fixed-root composite is `forkReplay4ContinueFrom`: it forks four
collision-free logged children and independently invokes `next` on all four,
including child zero. The averaged closed experiment is
`forkReplay4Continue`, obtained by applying the existing collision-accounted
U5b theorem to `continuedForkMain main next` and a selector which rejects when
`next` fails or the lower-slot gate fails.

Weighted pair identity, verbatim:

```lean
theorem probEvent_forkReplayPairContinue_eq_tsum
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    {β : Type}
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    (next : (α × QueryLog spec) → OracleComp spec (Option β)) :
    Pr[fun z : Option β × Option β => z.1.isSome ∧ z.2.isSome |
        forkReplayPairContinue main qb i cf next] =
      ∑' first, Pr[= first | replayFirstRun main] *
        (Pr[fun z => z.isSome | next first] *
          replayContinuationSuccessProbability main qb i cf first next)
```

Weighted raw-four identity, verbatim:

```lean
theorem probEvent_forkReplay4ContinueRaw_eq_tsum
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    {β : Type}
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    (next : (α × QueryLog spec) → OracleComp spec (Option β)) :
    Pr[fun z : Option β × Option β × Option β × Option β =>
          z.1.isSome ∧ z.2.1.isSome ∧ z.2.2.1.isSome ∧ z.2.2.2.isSome |
        forkReplay4ContinueRaw main qb i cf next] =
      ∑' first, Pr[= first | replayFirstRun main] *
        (Pr[fun z => z.isSome | next first] *
          (replayContinuationSuccessProbability main qb i cf first next) ^ 3)
```

This is the precise canonical-child form: the first-child continuation factor
is present once, while the replay-continuation factor is cubed. The Jensen
proof absorbs the canonical factor into the subprobability weight and proves:

```lean
theorem forkReplayPairContinue_pow_four_le_raw
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    {β : Type}
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    (next : (α × QueryLog spec) → OracleComp spec (Option β)) :
    Pr[fun z : Option β × Option β => z.1.isSome ∧ z.2.isSome |
        forkReplayPairContinue main qb i cf next] ^ 4 ≤
      Pr[fun z : Option β × Option β × Option β × Option β =>
          z.1.isSome ∧ z.2.1.isSome ∧ z.2.2.1.isSome ∧ z.2.2.2.isSome |
        forkReplay4ContinueRaw main qb i cf next]
```

Closed one-level bound, verbatim:

```lean
theorem forkReplay4Continue_bound [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    [unifSpec ˡ⊂ₒ spec]
    {β : Type}
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : α → Option (Fin (qb i + 1)))
    (lower : Option (Fin (qb i + 1)))
    (next : (α × QueryLog spec) → OracleComp spec (Option β))
    (hreach : CfReachable (continuedForkMain main next) qb i
      (continuedForkSelector qb i cf lower)) :
    (let acc : ℝ≥0∞ := ∑ s, Pr[= some s |
        continuedForkSelector qb i cf lower <$> continuedForkMain main next]
     let h : ℝ≥0∞ := Fintype.card (spec.Range i)
     let q := qb i + 1
     (acc * (acc / q - h⁻¹)) ^ 4 - 3 * h⁻¹) ≤
      Pr[fun r : Option (Fin 4 → (α × QueryLog spec) × Option β) => r.isSome |
        forkReplay4Continue main qb i cf lower next]
```

`continuedForkSelector` bundles continuation success, `cf = some s`, and the
`lower < s` gate; the theorem requires `CfReachable` for that exact selector.
`ForkSelectorAccepted` records those same facts at support level, and
`forkTree_success_selectorAccepted` proves that successful positive-depth
gated recursion entails them.

The pre-existing closed `forkReplay4_bound` was preserved without statement
or proof changes. The new closed theorem instantiates it at
`continuedForkMain`/`continuedForkSelector`; the direct weighted identities
specialize to the old trial-success marginal when `next` is the always-success
continuation. Thus collision accounting remains the existing `3 / h` proof,
not a duplicated or weakened argument.

### Item 3 — recurrence: partial; exact coupling stall, no `sorry`

Delivered and green:

```lean
noncomputable def forkTreeStep (q h x : ℝ≥0∞) : ℝ≥0∞ :=
  (x * (x / q - h⁻¹)) ^ 4 - 3 * h⁻¹

theorem forkTreeStep_monotone (q h : ℝ≥0∞) : Monotone (forkTreeStep q h)
```

`averagedForkTreeSuccess main qb i cf leafOk level lower depth` is the exact
success probability of the gated `forkTreeFrom` continuation, averaged over
`replayFirstRun main`, with transcript level and lower slot carried separately.
The following endpoints are proved:

```lean
theorem averagedForkTreeSuccess_zero ... :
    averagedForkTreeSuccess main qb i cf leafOk level lower 0 =
      Pr[leafOk | replayFirstRun main]

theorem forkTree_probability_eq_average ... :
    Pr[fun tree : Option (RunTree spec α depth) => tree.isSome |
        forkTree depth main qb i cf leafOk] =
      averagedForkTreeSuccess main qb i cf leafOk 0 none depth
```

The monotone scalar iteration is also closed:

```lean
theorem forkTree_iterate_bound (q h : ℝ≥0∞) (Q : Nat → ℝ≥0∞)
    (hrec : ∀ d, forkTreeStep q h (Q d) ≤ Q (d + 1)) :
    ∀ depth, ((forkTreeStep q h)^[depth]) (Q 0) ≤ Q depth
```

The unconditional recurrence and requested `forkTree_bound` were **not**
landed. No false level-independent theorem and no `sorry` were introduced.
The exact remaining distributional goal is to couple the closed averaged
continued experiment with the existing fixed-root top-down recursion. For

```lean
next_d first :=
  match cf level first.1 with
  | none => pure none
  | some s =>
      forkTreeFrom main qb i cf leafOk (level + 1) (some s) d first
```

the missing equality/inequality bridge is:

```lean
Pr[fun r : Option (Fin 4 →
      (α × QueryLog spec) × Option (RunTree spec α d)) => r.isSome |
    forkReplay4Continue main qb i (cf level) lower next_d]
  ≤
Pr[fun tree : Option (RunTree spec α (d + 1)) => tree.isSome | do
    let first ← replayFirstRun main
    forkTreeFrom main qb i cf leafOk level lower (d + 1) first]
```

together with identification of the continued selector mass `acc` with the
context-averaged `Q_d`. The two computations order randomness differently:
`forkReplay4Continue` replays the combined `(main; next_d)` computation,
whereas `forkTreeFrom` first fixes/forks the four completed parent runs and
then invokes four independent recursive continuations. Proving their
probability coupling requires a bind-commutation/replay-log theorem not present
in VCVio. Moreover the child lower slot is the sampled `s`, so replacing this
context average by `averagedForkTreeSuccess ... (level+1) none d` would be
incorrect for arbitrary selectors. This is the exact stalled recurrence goal;
consequently there is no `forkTree_bound` statement to quote verbatim.

### Verification

All builds used pinned
`C:\Users\acyrn\.elan\toolchains\leanprover--lean4---v4.30.0\bin\lake.exe`,
`LEAN_NUM_THREADS=1`, and one Lake/Lean process machine-wide, with output in
`build.log`/`build.err.log`:

- `lake build Ipp.Fork`: success (3300 jobs).
- `lake build Ipp.ForkTree`: success (3301 jobs).
- `lake build Ipp.FsGame`: success (3311 jobs).
- `lake build Ipp.FsFork`: success (3314 jobs).
- final `lake build Ipp`: success (3324 jobs).
- recursive `Ipp/*.lean` scan: zero `sorry`, zero declared `axiom`, zero
  `native_decide`.
- `git diff --check`: success.
- `#print axioms` for both weighted identities, the Jensen theorem, the closed
  continuation bound, `forkTree_success_all_leafOk`, `forkTreeStep_monotone`,
  `forkTree_iterate_bound`, `tree_to_acceptTree`, and
  `fsFork_success_acceptTree`: every result was exactly
  `[propext, Classical.choice, Quot.sound]`.

No prover/release-gated tests were applicable or run. No commit was made;
`DESIGN.md` and `.lake/packages/**` were not edited.

## R7 recurrence follow-up — coupling decision and sound endpoint (2026-07-11)

### Coupling decision

Neither proposed generic coupling is sound for the current interfaces. Route A
cannot make a fixed-root `forkTreeFrom ... first` invoke the averaged combined
replay experiment recursively while retaining the R6 invariant
`result.root = first`: `forkReplay4Continue` samples a new canonical run. Route
B is not a generic bind-commutation theorem. The combined experiment executes
and logs `next` inside the computation being replayed, while fixed-root
`forkTreeFrom` forks the parent runs first and executes the four continuations
afterward. An adaptive continuation, or one which repeats an earlier oracle
query, can distinguish those orders.

There is also no unconditional scalar recurrence for arbitrary `cf`. For
example, `cf level := fun _ => none` makes the positive-depth tree success
probability zero and satisfies `CfReachable` vacuously, while for a certain leaf
gate and sufficiently large range the proposed `forkTreeStep q h Q₀` is
positive. Thus reachability alone cannot prove the requested recurrence.

The design decision recorded under DESIGN R7 item 3 is to expose the sound
child-slot-threaded continuation mass and require any later iteration theorem
to supply a protocol-specific replay-compatibility hypothesis (or first change
the tree semantics to carry the combined replay trace). No equality with the
context-free average is assumed.

### Strengthened one-level endpoint

The child continuation now threads the sampled slot `s` exactly:

```lean
noncomputable def forkTreeChildContinuation [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    (level depth : Nat) (first : α × QueryLog spec) :
    OracleComp spec (Option (RunTree spec α depth)) :=
  match cf level first.1 with
  | none => pure none
  | some s =>
      forkTreeFrom main qb i cf leafOk (level + 1) (some s) depth first
```

The sound contextual quantity (the `Q` available to the one-level theorem) is,
verbatim:

```lean
noncomputable def forkTreeContinuationMass [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    (level : Nat) (lower : Option (Fin (qb i + 1))) (depth : Nat) : ℝ≥0∞ :=
  ∑ s, Pr[= some s |
    continuedForkSelector qb i (cf level) lower <$> continuedForkMain main
      (forkTreeChildContinuation main qb i cf leafOk level depth)]
```

`forkTreeContinuationMass_step` proves
`forkTreeStep (qb i + 1) |Range i| Q ≤ Pr[forkReplay4Continue ... isSome]`
for this exact `Q`, under the exact continued-selector `CfReachable` premise.
It is a direct specialization of `forkReplay4Continue_bound` and is green.

### Remaining exact goal

`forkTree_bound` is intentionally absent: declaring it from the current
hypotheses would be false. The single missing protocol-specific premise is an
equality or lower bound connecting

```lean
Pr[fun r : Option (Fin 4 →
      (α × QueryLog spec) × Option (RunTree spec α depth)) => r.isSome |
  forkReplay4Continue main qb i (cf level) lower
    (forkTreeChildContinuation main qb i cf leafOk level depth)]
```

to

```lean
averagedForkTreeSuccess main qb i cf leafOk level lower (depth + 1)
```

and, for scalar iteration, an identification/lower bound from the preceding
level's success to `forkTreeContinuationMass ... level lower depth`. Such a
premise must state why continuation oracle queries commute with replay (or why
the concrete continuation makes no distinguishing queries); it is not implied
by `CfReachable`.

### Verification

- `lake build Ipp.ForkTree`: success (3301 jobs).
- final `lake build Ipp`: success (3324 jobs).
- recursive `Ipp/*.lean` scan: `sorry_count=0`,
  `axiom_decl_count=0`, `native_decide_count=0`.
- `git diff --check`: success.
- temporary-file `#print axioms` for `forkTreeContinuationMass_step` and
  `forkTree_iterate_bound`: exactly
  `[propext, Classical.choice, Quot.sound]` for both.
- no prover/release-gated tests were applicable or run.
- no `.lake/packages/**` files were edited and no commit was made.

## U5a-quant-2

Scope: attempted to discharge the five `BadEventBudget` fields from the
per-miss lemmas. Edited only `Ipp/FsBadEvents.lean` and this report. No commit;
no edits to `DESIGN.md`, other `Ipp/*.lean`, or `.lake/packages/**`.

### Core union-bound goal and blocking invariant

The requested load-bearing statement is, schematically:

```lean
Pr[fun z => ∃ i < qb + 1,
    (flattenFsLog z.2)[i]? ∈ bad | fsProbComp stmt adv] ≤
  (((qb + 1) * bad.card : Nat) : ℝ≥0∞) /
    (Fintype.card F : ℝ≥0∞)
```

Equivalently at the cache level, each witness must be a structured entry that
was absent initially and installed at one of the first `qb + 1` miss ordinals.
The exact induction premise needed to cover *all* structured misses of the
whole game is:

```lean
IsTotalQueryBound (FsGame stmt adv) (qb + 1)
```

(or a structured-query-only analogue). That premise is absent from
`BadEventBudget`, from `fsProbComp`, and from the quantitative section's type
class context. `adv` is an arbitrary `OracleComp`; `qb` currently appears only
in fork-slot selectors and bad-event predicates and has no theorem relating it
to the number of adversary/game queries or misses.

This is not merely a tactic stall. The referenced VCVio theorem
`probEvent_cache_has_value_le_of_unique_preimage` explicitly assumes
`IsTotalQueryBound oa n`; dropping that hypothesis would allow an arbitrary
computation to make more than `n` fresh draws, invalidating the `n/|F|` union
bound. Therefore no theorem asserting the requested whole-`fsProbComp`
`qb + 1` bound was added, and no false statement, `sorry`, or `axiom` was used.

### Budget fields

- `kzg_z_bound`: still parametric. Besides KZG cache extraction, it needs a
  sound bound on the adversary's opportunities to pre-cache the adaptive KZG
  point; no relation between `qb` and `adv` exists.
- `answer_collision_bound`: still parametric. Bounding all collisions among
  structured misses by `(qb+1)^2/|F|` directly requires the same missing miss
  bound.
- `randomizer_rootset_bound`: still parametric. The `{0,1}` rejection
  correction does not repair the missing opportunity bound; a later proof must
  also derive the conditional denominator `|F|-2` from `queryAccepting`.
- `dependency_order_bound`: still parametric. Its adaptive chain-guessing
  reduction is not a fixed-set hit and also needs bounded early miss slots.
- `round_unqueried_bound`: remains parametric by design.

Added `BadEventBudget.ofBounds`, a constructor that keeps precisely these five
unproved bounds as explicit hypotheses. This preserves the structure and makes
the remaining assumptions visible rather than hiding the absent query-budget
contract.

### Verification

- Focused `LEAN_NUM_THREADS=1 lake build Ipp.FsBadEvents`: success (3315 jobs).
- Full `LEAN_NUM_THREADS=1 lake build Ipp`: success.
- `#print axioms Ipp.BadEventBudget.ofBounds`: only standard Lean foundations;
  no project axiom and no `sorryAx`.
- Recursive scans of `Ipp/FsBadEvents.lean` for `sorry`, `axiom`, and
  `native_decide`: zero matches (excluding explanatory comments as noted in
  the command output).
- `git diff --check`: success.

No prover/release-gated tests were run; the requested focused and full Lean
builds were run.

## R7 feasibility & soundness assessment

### Q1 — A: tractable, but a substantial redesign rather than a missing lemma

My assessment is that A is technically tractable. It is not blocked on an
unknown mathematical conjecture. It is, however, not a small closure task on
the current `forkTreeFrom`: the current recurrence is false at its advertised
generality, and VCVio does not contain a theorem that repairs the ordering
mismatch. A sound A must change the experiment and then re-establish its
support connection to R6.

What the pinned VCVio revision already provides:

- `OracleComp.IsTotalQueryBound` is a structural, total query-count predicate,
  with `pure`, query, monotonicity, bind/sequence composition, per-index and
  predicate-targeted variants, dynamic-count soundness, and transfer through
  `simulateQ`/stateful handlers. It also has query-count-preserving results for
  tracing, counting, caching, and related handlers. Thus threading an explicit
  adversary/game budget is supported by the library rather than requiring a
  new query-cost framework.
- The cache layer already exposes the right quantitative endpoints. In
  particular, `probEvent_cache_has_value_le_of_unique_preimage` consumes an
  `IsTotalQueryBound`, and `QueryTracking/Birthday.lean` has total-bound log and
  cache birthday bounds. `CachingOracle.lean` transfers total bounds through
  caching. These are useful foundations for U5a.
- `SeededFork.lean` provides one-fork seeded execution, query-bound and
  expected-query-work accounting, support facts, and the packaged
  Bellare--Neven-style probability inequality. `ReplayFork.lean` provides a
  logged canonical first run, re-execution against a trace with one replaced
  answer, prefix/replacement/state correctness, support transfer, and the
  packaged pair-fork lower bound. The local `Ipp/Fork.lean` has already built
  and proved the four-way and continuation-aware one-level bounds on top of
  those facilities.
- VCVio has general SPMF coupling and relational-program-logic machinery, plus
  ordinary probability bind algebra. The public
  `probEvent_bind_bind_swap` only swaps two *independent* draws. It does not say
  that an oracle computation may be moved into or out of a replay while
  preserving its adaptive query log. The replay-specific query-bound theorem
  in `ReplayFork.lean` is private, and there is no public replay/continuation
  commutation theorem with the strength R7 would need.

What VCVio does not provide is an iterated fork, transcript-tree extractor, or
combined-replay recursion. `SeededFork` and `ReplayFork` are single-position,
two-run constructions. A tree experiment is expressible in `OracleComp`—the
local `forkReplay4Continue` already proves that a continuation can be executed
inside the computation being replayed—but its recursive distribution and tree
support theorem must be defined and proved in this package. The existing
relational framework can help prove equality of two computations once an
appropriate invariant/coupling is supplied; it does not manufacture the false
generic coupling between the current top-down recursion and combined replay.

The query-budget half of A is comparatively routine but not free. One should
take an explicit bound on `adv`, prove a bound for the bounded verifier nonce
loops, and compose them for `FsGame`. Notice that the full-game bound is not
automatically the adversary bound: `fsVerifier` can make up to
`(μ + 4) * stmt.rejectionFuel` structured queries. The API must say whether
`qb + 1` bounds the adversary, structured cache misses, or the complete game,
and all selector/error constants must use the same meaning. With that contract,
the cache-hit and birthday bounds have a clear VCVio route. The adaptive
`dependency_order_bound`, the `|F|-2` conditioning for the randomizer, and the
currently parametric `round_unqueried_bound` still require protocol-local
reductions; total-query-boundedness alone does not prove those event
implications.

The single hardest sub-goal is the recursive experiment theorem: define a
bottom-up/combined-replay extractor whose level-`m` computation runs the
level-`m+1` subtree extractor *inside* the replayed computation, prove that its
successful output has exactly the R6 prefix/root/slot/tree invariants, and
identify the selector mass in the one-level theorem with the preceding
recursive success mass. This is the point at which logs, the sampled lower
slot, sibling cache consistency, and the four child subtrees all meet. I see a
credible path: make the recursively combined experiment the definition (in the
style of the sub-extractors in the multi-round Fiat--Shamir literature), include
the selected slot and the canonical logged run in its typed success output,
filter structural consistency at each level, and prove probability recurrence
directly from `forkReplay4Continue_bound`; then prove a new support induction
into `AcceptTree`. That avoids proving any bind-commutation statement. It does
mean replacing, not patching, the quantitative role of `forkTreeFrom`.

Rough effort: about 10--18 focused Lean sessions if the quantitative expression
and query-budget meaning are fixed up front: 2--3 for the budgeted game and
verifier bounds, 3--5 for the four concrete U5a reductions, 3--6 for the new
combined tree experiment and recurrence, and 2--4 for the R6/U5e support and
assembly rework. The upper tail can exceed that if the exact `G` is held fixed
after the redesigned experiment naturally yields a different conservative
bound, or if `round_unqueried_bound` is expected to become a derived field
rather than remain a declared loss. This is new formal probabilistic
engineering on existing foundations, not research-open mathematics; the exact
strict `G` theorem is nevertheless new to this codebase and not present in
VCVio/Mathlib. My uncertainty is medium, concentrated in matching the current
`G` and in how much R6 proof structure survives the bottom-up recursion.

### Q2 — C: the broad theorem is standard; the proposed exact row is not obvious

There is strong literature support for the *qualitative shape* “a
query-bounded Fiat--Shamir prover can be rewound recursively to obtain a tree
of accepting transcripts.” It is not accurate, however, to cite every part of
the proposed C row as an immediate Bellare--Neven result.

- Bellare--Neven's general forking lemma is the standard single-fork/two-run
  result and is a good ancestor for VCVio's packaged pair bound. It does not by
  itself give a depth-`μ`, 4-ary tree or this `G` iterate. See [Bellare--Neven,
  *New Multi-Signature Schemes and a General Forking Lemma*](https://soc1024.ece.illinois.edu/teaching/ece498ac/fall2019/forkinglemma.pdf).
- Bootle--Cerulli--Chaidos--Groth--Petit explicitly define an
  `(n₁,...,nμ)`-tree of accepting transcripts and state a recursive general
  forking lemma. Their proof is an expected-polynomial-time interactive
  rewindable-transcript construction with asymptotic collision accounting; it
  is not the present strict ROM experiment and does not state the
  `G^[μ]` lower bound. See Lemma 1 of [BCC+16, *Efficient Zero-Knowledge
  Arguments for Arithmetic Circuits in the Discrete Log Setting*](https://ora.ox.ac.uk/objects/uuid%3A2f919864-a097-48ce-9a28-2b9dc3e6382d/files/mda3d5f58ddbc3c92580ccda9599d3179).
- The later multi-round Fiat--Shamir analysis is the closest standard result:
  it recursively treats a sub-extractor as the random-oracle algorithm being
  rewound, keeps oracle answers consistent within a recursion level, and
  outputs `(k₁,...,kμ)` trees for a Q-query prover. Its stated success/runtime
  theorem and knowledge error are different from the local strict four-way
  `G` recurrence. See [*Fiat--Shamir Transformation of Multi-Round Interactive
  Proofs*](https://link.springer.com/article/10.1007/s00145-023-09478-y),
  especially the recursive sub-extractor construction and Proposition 2.

Accordingly, a cryptographer should accept “multi-round FS tree extraction
under a query bound” as established technique. They should *not* accept the
exact proposed conjunction as an obvious library axiom without checking its
experiment and losses. The exact row can be stronger than the textbook results
in several ways: it asks for a particular strict, finite-run extractor rather
than expected-time retries; fixes a particular fourth-power transformer and
collision subtraction at every level; requires the local lower-slot and
prefix/dependency conditions needed by R6; and folds acceptance together with
`WrappedRunGood`. Conversely, its very lossy iterated `G` can be numerically
weaker than modern multi-round extraction theorems. A weaker numerical bound
does not automatically make it a corollary when the extractor distribution and
good-event predicates differ.

Most importantly, the five `BadEventBudget` fields are not all “the forking
lemma.” Answer collisions and fixed bad-set hits are standard ROM union-bound
applications after a sound total-query contract. The adaptive dependency-order
event, conditional randomizer denominator, and especially the deliberately
parametric round-unqueried loss are protocol-specific. Bundling them into one
row labelled merely “general forking lemma” would assume away precisely the
non-obvious part and could hide a real gap. The current generic statement
without a query contract is false; adding the contract makes the goal
plausible, not automatic.

If C is chosen, the cleanest phrasing is a visibly protocol-specific
`SnarkpackFsTreeExtractionAssumption`, not `ForkingLemma` alone. Its antecedent
should state the exact structural/total query bound and field/cardinality
side-conditions. Its conclusion should name one precise combined-replay
experiment and assert

```text
G^[μ](Pr[Accepted] - err_bad)
  ≤ Pr[the experiment returns an R6-compatible 4-ary AcceptTree]
```

with `G`, `err_bad`, the arity/depth, distinct-nonzero requirements, selector
order, and `RunGoodFull` predicates expanded or referenced by exact definitions.
Keep `BadEventBudget` as a separate named premise (or separate fields with the
five inequalities), rather than presenting it as a consequence of the
forking-tree row. If U5e only consumes positive support, an even more honest
and smaller assumption is the implication

```text
0 < G^[μ](Pr[Accepted] - err_bad) -> Nonempty (R6-compatible AcceptTree)
```

but it must be labelled as a SnarkPack FS extraction assumption, not as the
textbook Bellare--Neven lemma. This minimizes what is assumed while making the
unmechanized cryptographic step unmistakable.

**Recommendation: A, provided roughly 10--18 focused sessions are acceptable; confidence 0.72.**

### R7-A? execution-design index

The concrete option-A? blueprint is now in `DESIGN.md`, subsection
**“R7-A? execution design”**: it fixes `Q := qb + 1` as the whole-game
`IsTotalQueryBound`, replaces the unsound top-down quantitative experiment by
the bottom-up `forkTreeCombined` replay of the entire preceding extractor,
specifies the strengthened `CombinedReplayConsistent` support bridge back to
unchanged R6 `TreeConsistent` consumers, and states the recursive
support-plus-selector-mass theorem that gates the recurrence.  Its ordered
15-session list is the implementation index (sessions 1--3 query/scalars,
4--10 combined replay and recurrence, 11--12 R6 reconnection, 13--14 U5a,
15 U5e capstone).  Confidence is **0.74** that this is buildable within the
10--18-session envelope; the largest residual risk is the new relational proof
that an outer replay-prefix of the nested extractor projects to the canonical
base-run prefix/rank/value facts required by `TreeConsistent`, not any missing
generic VCVio commutation lemma.

## A? session 1

- Added `Ipp.Q qb := qb + 1` in `Ipp/FsBadEvents.lean`, documented as the whole-game query cap and the size of `Fin (qb + 1)`; its `+1` is not an extra query.  Added simp-normal `Q_eq_add_one` and `Q_pos` helpers.
- Normalized every U5a printed quantitative constant in `BadEventBudget`, `BadEventBudget.ofBounds`, and `q0_lower_bound` to `Q` forms: `Q^2/|F|`, `Q*dR/(|F|-2)`, `μ*Q/|F|`, `Q*dZ/|F|`, and unchanged `bUnq`.  Field types remain definitionally unchanged.
- Confirmed `forkTreeStep`, `forkTreeStep_monotone`, and `forkTree_iterate_bound` already provide the scalar monotonicity and `Function.iterate` recurrence step needed by session 10; no additional scalar lemma was needed.
- Deferred: none.  Build results: `LEAN_NUM_THREADS=1` with the pinned Lean 4.30.0 Lake binary passed `Ipp.FsBadEvents`, `Ipp.ForkTree`, and final `Ipp` (warnings only).

## A? session 2

- Added the verifier total-query proofs to `Ipp/FsGame.lean`:

```lean
theorem queryAccepting_isTotalQueryBound {F G1 G2 GT : Type}
    (mkPoint : Nat → ChallengePoint F G1 G2 GT) (acceptable : F → Bool)
    (fuel nonce : Nat) :
    IsTotalQueryBound (queryAccepting mkPoint acceptable fuel nonce) fuel

theorem queryRounds_isTotalQueryBound {F G1 G2 GT : Type} [Zero F]
    (fuel μ : Nat) (prev : F) (rounds : Fin μ → RoundComs G1 GT) :
    IsTotalQueryBound (queryRounds (G2 := G2) fuel μ prev rounds) (μ * fuel)

theorem fsVerifier_isTotalQueryBound {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT) (proof : Proof μ F G1 G2 GT) :
    IsTotalQueryBound (fsVerifier stmt proof) ((μ + 4) * stmt.rejectionFuel)
```

- Verified VCVio names exactly match the design: `OracleComp.IsTotalQueryBound`, `isTotalQueryBound_bind`, `IsTotalQueryBound.mono`, `isTotalQueryBound_query_bind_iff`, and the `pure` structural case.  No API-name correction.  `queryRounds` has a phantom `G2` argument, so its statement and proof applications require `(G2 := G2)`; this is an elaboration annotation only.
- Query counts match the design.  `fsVerifier` has randomizer, x0, `μ` rounds, bridge, and KZG stages: `(μ + 4) * rejectionFuel`.  The proof composes the stage bounds with `isTotalQueryBound_bind` and normalizes the arithmetic with `.mono`.
- Build results: focused `LEAN_NUM_THREADS=1` pinned Lean 4.30.0 Lake build of `Ipp.FsGame` and final `lake build Ipp` both passed (warnings only, all pre-existing).  Output is in `build.log`.  Prover/release-gated tests were not run.  Deferred: session 3 game/cache transfer only; no transfer lemma was added.

## A? session 3

- **Caching-transfer verification (performed first): found and used.** VCVio provides `OracleComp.IsTotalQueryBound.simulateQ_run_withCaching` in `.lake/packages/VCVio/VCVio/OracleComp/QueryTracking/CachingOracle.lean` with the usable signature

```lean
theorem IsTotalQueryBound.simulateQ_run_withCaching
    (so : QueryImpl spec (OracleComp spec'))
    {oa : OracleComp spec α} {n : ℕ}
    (h : IsTotalQueryBound oa n)
    (hstep : ∀ t, IsTotalQueryBound (so t) 1)
    (cache : spec.QueryCache) :
    IsTotalQueryBound ((simulateQ so.withCaching oa).run cache) n
```

  The FS source has an ambient-uniform forwarding branch in addition to the cached structured branch, so `fsRandomFunction_isTotalQueryBound` uses VCVio's stateful `IsTotalQueryBound.simulateQ_run_of_step` to combine the two one-query steps; its structured step is discharged by VCVio's `QueryImpl.isTotalQueryBound_run_withCaching`. `fsProbComp_isTotalQueryBound` uses VCVio's `isTotalQueryBound_run_simulateQ_loggingOracle_iff`.

- Added the adversary/game composition lemmas in `Ipp/FsGame.lean`:

```lean
theorem FsGame_isTotalQueryBound {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] {μ qa : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (hadv : IsTotalQueryBound adv qa) :
    IsTotalQueryBound (FsGame stmt adv)
      (qa + (μ + 4) * stmt.rejectionFuel)

theorem FsGame_isTotalQueryBound_of_le {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] {μ qa qb : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (hadv : IsTotalQueryBound adv qa)
    (hcap : qa + (μ + 4) * stmt.rejectionFuel ≤ qb + 1) :
    IsTotalQueryBound (FsGame stmt adv) (qb + 1)
```

- Added the same-bound transfer lemmas in `Ipp/FsFork.lean` and `Ipp/FsBadEvents.lean`:

```lean
theorem fsRandomFunction_isTotalQueryBound {Point α : Type} [DecidableEq Point]
    [IsUniformSpec (unifSpec + (Point →ₒ F))]
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α) {n : Nat}
    (h : IsTotalQueryBound oa n) :
    IsTotalQueryBound (fsRandomFunction oa) n

theorem wrapFs_isTotalQueryBound {Point α : Type} [DecidableEq Point]
    [IsUniformSpec (unifSpec + (Point →ₒ F))] [IsUniformSpec (FsWrappedSpec F)]
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α) {n : Nat}
    (h : IsTotalQueryBound oa n) :
    IsTotalQueryBound (wrapFs oa) n

theorem fsProbComp_isTotalQueryBound {μ : Nat}
    [IsUniformSpec (FsSourceSpec F G1 G2 GT)]
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    {n : Nat} (h : IsTotalQueryBound (FsGame stmt adv) n) :
    IsTotalQueryBound (fsProbComp stmt adv) n
```

  Instantiating `n := Q qb` and `h := FsGame_isTotalQueryBound_of_le stmt adv hadv hcap` gives the design's same-`Q` cap at each layer. The two wrapper lemmas expose the total source-query cap; structured misses are a subset because cache hits make zero source queries and each miss makes one, so this supports the later `Sum.inr ()` ordinal consumers.

- Verification: focused pinned (`LEAN_NUM_THREADS=1`) builds of `Ipp.FsGame`, `Ipp.FsFork`, and `Ipp.FsBadEvents` passed. Final pinned `lake build Ipp` passed; `build.log` contains its tail output. Warnings were pre-existing lint/deprecation warnings. Prover/release-gated tests were not run. Deferred to sol: nothing; the caching transfer was available in usable form.

## A? session 4

Added the combined-experiment data layer in `Ipp/ForkTree.lean`; the old experiment remains unchanged and `forkTreeCombined` is deliberately not defined.

```lean
def combinedLevel (total built : Nat) (h : built < total) : Nat

def treeFirstSlot {qb : ι → Nat} {i : ι}
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (total built : Nat) (tree : RunTree spec α built) :
    Option (Fin (qb i + 1))

def combinedTreeSelector
    (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (total built : Nat) (h : built < total) :
    Option (RunTree spec α built) → Option (Fin (qb i + 1))

def keepCombinedChild {depth : Nat} :
    (Option (RunTree spec α depth) × QueryLog spec) →
      OracleComp spec (Option (RunTree spec α depth))

def assembleCombinedNode {depth : Nat} :
    Option (Fin 4 →
      (Option (RunTree spec α depth) × QueryLog spec) ×
        Option (RunTree spec α depth)) →
      Option (RunTree spec α (depth + 1))

@[simp] theorem combinedLevel_eq (total built : Nat) (h : built < total) :
    combinedLevel total built h = total - (built + 1)

@[simp] theorem treeFirstSlot_zero (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (total : Nat) (tree : RunTree spec α 0) :
    treeFirstSlot cf total 0 tree = none

@[simp] theorem treeFirstSlot_succ (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (total built : Nat) (tree : RunTree spec α (built + 1)) :
    treeFirstSlot cf total (built + 1) tree = cf (total - (built + 1)) tree.root.1

@[simp] theorem combinedTreeSelector_none (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (total built : Nat) (h : built < total) :
    combinedTreeSelector qb i cf total built h
      (none : Option (RunTree spec α built)) = none

@[simp] theorem combinedTreeSelector_some_cf_none (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (total built : Nat) (h : built < total) (tree : RunTree spec α built)
    (hcf : cf (combinedLevel total built h) tree.root.1 = none) :
    combinedTreeSelector qb i cf total built h (some tree) = none

@[simp] theorem combinedTreeSelector_some_first_none (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (total built : Nat) (h : built < total) (tree : RunTree spec α built)
    (s : Fin (qb i + 1))
    (hcf : cf (combinedLevel total built h) tree.root.1 = some s)
    (hfirst : treeFirstSlot cf total built tree = none) :
    combinedTreeSelector qb i cf total built h (some tree) = some s

@[simp] theorem combinedTreeSelector_some_first_some (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (total built : Nat) (h : built < total) (tree : RunTree spec α built)
    (s next : Fin (qb i + 1))
    (hcf : cf (combinedLevel total built h) tree.root.1 = some s)
    (hfirst : treeFirstSlot cf total built tree = some next) :
    combinedTreeSelector qb i cf total built h (some tree) =
      if s < next then some s else none

@[simp] theorem keepCombinedChild_some {depth : Nat}
    (tree : RunTree spec α depth) (log : QueryLog spec) :
    keepCombinedChild (some tree, log) = pure (some tree)

@[simp] theorem keepCombinedChild_none {depth : Nat} (log : QueryLog spec) :
    keepCombinedChild ((none : Option (RunTree spec α depth)), log) = pure none

@[simp] theorem some_mem_support_keepCombinedChild_iff {depth : Nat}
    (tree : RunTree spec α depth) (child : Option (RunTree spec α depth))
    (log : QueryLog spec) :
    some tree ∈ support (keepCombinedChild (child, log)) ↔ child = some tree

@[simp] theorem assembleCombinedNode_none {depth : Nat} :
    assembleCombinedNode (α := α) (spec := spec) (depth := depth) none = none

@[simp] theorem assembleCombinedNode_some_of_all_isSome {depth : Nat}
    (branches : Fin 4 →
      (Option (RunTree spec α depth) × QueryLog spec) ×
        Option (RunTree spec α depth))
    (h : forall k, (branches k).2.isSome) :
    assembleCombinedNode (some branches) =
      some (.node (fun k => (branches k).2.get (h k)))

@[simp] theorem assembleCombinedNode_some_of_not_all_isSome {depth : Nat}
    (branches : Fin 4 →
      (Option (RunTree spec α depth) × QueryLog spec) ×
        Option (RunTree spec α depth))
    (h : ¬ forall k, (branches k).2.isSome) :
    assembleCombinedNode (some branches) = none
```

Elaboration deviation: `treeFirstSlot` needs inferred `{qb : ι → Nat}` and `{i : ι}` binders because its contractual `cf` argument mentions `qb i` while this project disables auto-implicit binders. This does not change argument order, result type, or behavior. The `keepCombinedChild_none` and selector-`none` lemmas carry explicit `Option (RunTree ...)` annotations solely to resolve erased dependent indices.

Verification: the pinned Lean 4.30.0, `LEAN_NUM_THREADS=1` focused `lake build Ipp.ForkTree` passed (warnings only: two unused proof binders). I attempted the required final `lake build Ipp` serially; the environment's 60-second command ceiling terminated it twice while it was still compiling its final downstream modules, so it did not produce a passing final package result. `build.log` contains the tail from the last attempt. Prover/release-gated tests were not run.

## A? session 5

Implemented the contractual bottom-up extractor verbatim:

```lean
noncomputable def forkTreeCombined [spec.DecidableEq]
    (total : Nat) (main : OracleComp spec α)
    (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec] :
    (built : Nat) → built ≤ total →
      OracleComp spec (Option (RunTree spec α built))
  | 0, _ => do
      let first ← replayFirstRun main
      if leafOk first then pure (some (.leaf first)) else pure none
  | built + 1, hle =>
      assembleCombinedNode <$> forkReplay4Continue
        (forkTreeCombined total main qb i cf leafOk built (by omega))
        qb i (combinedTreeSelector qb i cf total built (by omega)) none
        keepCombinedChild
termination_by built _ => built
```

Exact unfold equations:

```lean
@[simp] theorem forkTreeCombined_zero [spec.DecidableEq]
    (total : Nat) (main : OracleComp spec α)
    (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (hle : 0 ≤ total) :
    forkTreeCombined total main qb i cf leafOk 0 hle = (do
      let first ← replayFirstRun main
      if leafOk first then pure (some (.leaf first)) else pure none)

@[simp] theorem forkTreeCombined_succ [spec.DecidableEq]
    (total built : Nat) (main : OracleComp spec α)
    (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (hle : built + 1 ≤ total) :
    forkTreeCombined total main qb i cf leafOk (built + 1) hle =
      assembleCombinedNode <$> forkReplay4Continue
        (forkTreeCombined total main qb i cf leafOk built (by omega))
        qb i (combinedTreeSelector qb i cf total built (by omega)) none
        keepCombinedChild
```

isSome equivalence statements:

```lean
theorem assembleCombinedNode_isSome_iff {depth : Nat}
    (branches? : Option (Fin 4 →
      (Option (RunTree spec α depth) × QueryLog spec) ×
        Option (RunTree spec α depth))) :
    (assembleCombinedNode branches?).isSome ↔
      ∃ branches, branches? = some branches ∧ ∀ k, (branches k).2.isSome

theorem forkReplay4Continue_success_all_isSome [spec.DecidableEq]
    [IsUniformSpec spec] [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    {depth : Nat}
    (main : OracleComp spec (Option (RunTree spec α depth)))
    (qb : ι → Nat) (i : ι)
    (cf : Option (RunTree spec α depth) → Option (Fin (qb i + 1)))
    {branches : Fin 4 →
      (Option (RunTree spec α depth) × QueryLog spec) ×
        Option (RunTree spec α depth)}
    (h : some branches ∈ support
      (forkReplay4Continue main qb i cf none keepCombinedChild)) :
    ∀ k, (branches k).2.isSome

theorem probEvent_isSome_assembleCombinedNode_forkReplay4Continue
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    {depth : Nat}
    (main : OracleComp spec (Option (RunTree spec α depth)))
    (qb : ι → Nat) (i : ι)
    (cf : Option (RunTree spec α depth) → Option (Fin (qb i + 1))) :
    Pr[fun tree : Option (RunTree spec α (depth + 1)) => tree.isSome |
        assembleCombinedNode <$> forkReplay4Continue main qb i cf none keepCombinedChild] =
      Pr[fun branches : Option (Fin 4 →
          (Option (RunTree spec α depth) × QueryLog spec) ×
            Option (RunTree spec α depth)) => branches.isSome |
        forkReplay4Continue main qb i cf none keepCombinedChild]
```

Termination is structural on `built`; the successor call decreases from `built + 1` to `built`, and `omega` discharges both the recursive bound and `built < total`. No private step or index cast was needed. The unfold proofs use `simp only [forkTreeCombined]` because generated proof arguments prevent raw `rfl`.

Verification: pinned Lean 4.30.0, `LEAN_NUM_THREADS=1`; focused `lake build Ipp.ForkTree` passed, and final serial `lake build Ipp` passed in 125.3 seconds (3324 jobs). Dedicated `#print axioms` checks for the definition and five lemmas reported only `propext`, `Classical.choice`, and `Quot.sound`; zero `sorry`, custom axioms, or `native_decide`. Prover/release-gated tests were not run. Nothing was deferred.

## A? session 6

Implemented the construction-side shell in `Ipp/ForkTree.lean`; R6's
`TreeConsistent`, `AcceptTree`, and all R6 lemmas remain unchanged.

The `CombinedReplayConsistent` definition is:

```lean
inductive CombinedReplayConsistent [spec.DecidableEq]
    (total : Nat) (main : OracleComp spec α) (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) :
    (built : Nat) → RunTree spec α built → QueryLog spec → Prop
  | leaf (outerLog : QueryLog spec) (run : α × QueryLog spec)
      (hprojection : CombinedCanonicalProjection main (.leaf run) outerLog)
      (hgate : leafOk run) :
      CombinedReplayConsistent total main qb i cf leafOk 0 (.leaf run) outerLog
  | node {built : Nat} (outerLog : QueryLog spec)
      (children : Fin 4 → RunTree spec α built) (hcover : built + 1 ≤ total)
      (hprojection : CombinedNodePrefixProjection total main qb i cf children outerLog)
      (childLogs : Fin 4 → QueryLog spec)
      (hchildren : ∀ k,
        CombinedReplayConsistent total main qb i cf leafOk built (children k) (childLogs k)) :
      CombinedReplayConsistent total main qb i cf leafOk (built + 1) (.node children) outerLog
```

Session 7's explicit projection field is exactly
`CombinedNodePrefixProjection total main qb i cf children outerLog`: it
existentially carries the canonical base-run/outer-log prefix witness, common
level slot, four distinct answers, cursor and slot position, and all existing
R6 `hprefix`, `hslotInput`, `hslotRank`, and `hprefixValues` facts, followed
by `∀ k next, treeFirstSlot cf total built (children k) = some next → slot < next`.
`CombinedCanonicalProjection` records `baseRun ∈ support (replayFirstRun
main)`, `tree.root = baseRun`, and `∀ n, n < baseRun.2.length →
outerLog[n]? = baseRun.2[n]?`.

The forgetful theorem statement is:

```lean
theorem CombinedReplayConsistent.forget [spec.DecidableEq]
    {total : Nat} {main : OracleComp spec α} {qb : ι → Nat} {i : ι}
    {cf : Nat → α → Option (Fin (qb i + 1))} {leafOk : α × QueryLog spec → Prop}
    {built : Nat} {tree : RunTree spec α built} {outerLog : QueryLog spec}
    (h : CombinedReplayConsistent total main qb i cf leafOk built tree outerLog)
    (lower : Option (Fin (qb i + 1)))
    (hlower : CombinedSlotLower qb i cf total built tree lower) :
    TreeConsistent main qb i cf leafOk (total - built) lower tree
```

`CombinedSlotLower` permits `none`, the depth-zero case, or an explicit strict
lower-than-`treeFirstSlot` witness. Helpers include `leaf_intro`, `all_support`,
`all_leafOk`, `firstSlot_some`, and `slot_lt_child_first`.

Verification: pinned Lean 4.30.0 with `LEAN_NUM_THREADS=1`; focused `lake
build Ipp.ForkTree` passed, then serial `lake build Ipp` passed in 125.1s
(3324 jobs). Warnings were pre-existing plus one local tactic-style linter
warning; no `sorry`, `axiom`, or `native_decide` was introduced. Prover/release-
gated tests were not run.

## A? session 7

Proved the nested replay-prefix projection by the direct relational route; the
sanctioned internal-carrier fallback was not used. The reusable standalone
lemma statement is verbatim:

```lean
theorem combinedNodePrefixProjection_of_outerReplay
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (total built : Nat) (hbuilt : built < total)
    (main : OracleComp spec α) (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (extractor : OracleComp spec (Option (RunTree spec α built)))
    (hbaseReach : CfReachable main qb i (cf (combinedLevel total built hbuilt)))
    {children : Fin 4 → RunTree spec α built}
    {childLogs : Fin 4 → QueryLog spec} {outerLog : QueryLog spec}
    {branches : Fin 4 →
      (Option (RunTree spec α built) × QueryLog spec) ×
        Option (RunTree spec α built)}
    (hfork : some branches ∈ support
      (forkReplay4Continue extractor qb i
        (combinedTreeSelector qb i cf total built hbuilt) none keepCombinedChild))
    (hbranches : ∀ k,
      branches k = ((some (children k), childLogs k), some (children k)))
    (hchildren : ∀ k,
      CombinedCanonicalProjection main (children k) (childLogs k))
    (hcanonical : CombinedCanonicalProjection main (.node children) outerLog) :
    CombinedNodePrefixProjection total main qb i cf children outerLog
```

The direct relation is represented by `hfork` (the four replayed outer
executions), `hchildren` (the induction hypothesis for every completed nested
child), and `hcanonical` (the canonical root projection of the enclosing
extractor run). The proof uses these relational-induction steps:

- Added `forkReplay4_support_props_full`, which retains VCVio ReplayFork's
  common slot, distinct replacement answers, replay cursor, fork position,
  input prefix, filtered slot rank, and value prefix. It is derived from the
  fixed-root replay support theorem, not from a computation commutation.
- Unfolded the actual `forkReplay4Continue` once. For every successful child,
  `continuedForkMain_keepCombinedChild_support_props` applies VCVio's
  `withQueryLog_self_log_eq` theorem (itself proved by `OracleComp.inductionOn`)
  to recover the nested extractor support point and identify the replay run's
  outer log with the embedded child extractor log. `keepCombinedChild` is pure,
  so it adds no query-log entries.
- Inverted `continuedForkSelector`/`combinedTreeSelector` to recover the common
  current-level slot and prove it precedes each present child first slot.
- Used `hbaseReach` and each completed child's canonical support projection to
  prove the recorded outer fork position lies inside every canonical base log.
  The contradiction compares the base log's reachable `slot`-th filtered query
  with the outer prefix's recorded filtered rank.
- Projected replay equality only through `slotPos`: input equality through
  `slotPos + 1`, value equality strictly before `slotPos`, the exact filtered
  rank at `slotPos`, the common slot input, and the four distinct replacement
  values. No prefix equality is claimed after the fork query.

No `probEvent_bind_bind_swap`, generic adaptive commutation, or equality with
the retired top-down experiment is used. The recursive support induction is
not included; it remains session 8.

`#print axioms` results:

```text
'Ipp.forkReplay4_support_props_full' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.combinedNodePrefixProjection_of_outerReplay' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Verification used pinned Lean 4.30.0 and `LEAN_NUM_THREADS=1`, with one
machine-wide Lake/Lean process at a time. Focused `lake build Ipp.ForkTree`
passed (3301 jobs), and final `lake build Ipp` passed in 125.2s (3324 jobs).
Scans of the two edited Lean files found no `sorry`, `axiom`, or
`native_decide`; `git diff --check` passed. Prover/release-gated tests were not
run.

### A? session 12b implementation details

Session 12b took the strengthened-good-event route.  Existing
`DependencyOrdered` cannot soundly imply cross-round order: it constrains the
randomizer/x0 dependencies relative to round slots, while an adversary may
pre-query a later accepted round point.  The new `RoundSlotOrdered` event says
that accepted round-point first-occurrence ordinals follow protocol round
order.  Its complement, `BadRoundOrder`, is a separate U5a guessing event.

The updated good-event statement is verbatim:

```lean
def WrappedRunGood
    [Field F] [AddCommGroup G1] [Module F G1] [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat} (qb : Nat) (stmt : FsStatement μ F G1 G2 GT)
    (run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT))
    (log : QueryLog (FsWrappedSpec F)) : Prop :=
  run.out.accept = true ∧
    ChallengesAccepted run.out ∧
    (∀ level, level < μ → ¬RoundPointUnqueried qb level run) ∧
    RoundSlotOrdered qb run ∧
    DependencyOrdered qb stmt run ∧
    StructuredAnswersInjective (F := F) run.trace.length log
```

`fs_roundSlot_order` discharges the exact deferred session-12 goal.  For an
arbitrary successful depth-`depth` extractor support run, the already-proved
combined invariant yields `all_leafOk.root`; its `RoundSlotOrdered` conjunct is
instantiated at `μ - (depth + 1)` and `μ - depth`.  A `treeFirstSlot = some`
witness forces `0 < depth`, and arithmetic gives the strict level order.
`forkTreeCombined_support_all_leafOk` is the small generic projection exposing
this existing invariant fact.  `fsFork_bound` now specializes `forkTree_bound`
using `fs_roundSlot_order`, so its FS caller has no external `hslotOrder`.

The updated support endpoint remains premise-free with respect to slot order;
its statement is verbatim:

```lean
theorem fsFork_success_acceptTree
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (hbindV : KzgStructuredKeyBinding stmt.srsV stmt.acceptV)
    (hbindW : KzgStructuredKeyBinding stmt.srsW stmt.acceptW)
    {tree : RunTree (FsWrappedSpec F)
      (WrappedFsRun
        (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
        (FsResult μ F G1 G2 GT)) μ}
    (hsuccess : some tree ∈ support
      (forkTreeCombined μ (wrapFs (FsGame stmt adv)) qb (Sum.inr ())
        (fun level run => roundSlot (qb (Sum.inr ())) level run)
        (fun run => WrappedRunGood (qb (Sum.inr ())) stmt run.1 run.2)
        μ (Nat.le_refl μ))) :
    let r := tree.root.1.out.transcript.randomizer
    AcceptTree (u4ACommitAtom stmt.e) (u4BCommitAtom stmt.e) u4TCommitMap
      (u4TLanePairing stmt.e) μ
      (fun i => (stmt.srsV i, stmt.srsV i))
      (fun i => (r ^ (i : Nat))⁻¹ • stmt.srsW i)
      (fun i => r ^ (i : Nat))
      (u4AEmbedding stmt.ComA) (u4BEmbedding stmt.ComB)
      (u4TCommitMap (tree.root.1.out.proof.ipAb, tree.root.1.out.proof.aggC))
```

`RunGoodFull` inherits the new conjunct through `WrappedRunGood`.
`accepted_not_good_bad`, `q0_lower_bound_abstract`, and `q0_lower_bound` now
account for six bad events.  The new U5a signature left for sessions 13--14 is:

```lean
round_slot_order_bound :
  Pr[fun z => Accepted z ∧ BadRoundOrder qb z | fsProbComp stmt adv] ≤
    ((μ * Q qb : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)
```

`BadEventBudget.ofBounds` takes the corresponding `hOrd` premise.  The concrete
`q0_lower_bound` subtracts a second `μ * Q qb / |F|` term; proving that numeric
field is intentionally deferred to U5a sessions 13--14.  No consumer re-proofs
remain.

`#print axioms`:

```text
'Ipp.fs_roundSlot_order' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.fsFork_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.fsFork_success_acceptTree' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.q0_lower_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Verification used pinned Lean 4.30.0, `LEAN_NUM_THREADS=1`, and one Lake/Lean
process at a time:

```text
lake build Ipp.FsFork: passed (3314 jobs, 66.3 seconds on final focused run).
lake build Ipp.FsBadEvents: passed (3315 jobs, 45.1 seconds).
lake build Ipp: passed (3324 jobs, 45.3 seconds).
```

The `Ipp/` scan is empty for `sorry`, custom `axiom`, and `native_decide`.
`DESIGN.md` and `.lake/packages/**` were not edited; no commit was made.
Prover/release-gated circuit tests were not run.

## A? session 8

Proved the support/invariant half as the discoverable standalone theorem below;
the selector-mass identity remains session 9.

```lean
theorem forkTreeCombined_support_invariant
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)]
    [unifSpec ⊂ₒ spec] [unifSpec ˡ⊂ₒ spec]
    (total built : Nat) (hbuilt : built < total)
    (main : OracleComp spec α) (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    (hbaseReach : ∀ level, level < total →
      CfReachable main qb i (cf level))
    (hselectorTotal : ∀ {first},
      first ∈ support (replayFirstRun main) → leafOk first →
      ∀ level, level < total → ∃ s, cf level first.1 = some s) :
    CfReachable
      (forkTreeCombined total main qb i cf leafOk built (Nat.le_of_lt hbuilt))
      qb i (combinedTreeSelector qb i cf total built hbuilt) ∧
    ∀ {tree outerLog},
      (some tree, outerLog) ∈ support (replayFirstRun
        (forkTreeCombined total main qb i cf leafOk built
          (Nat.le_of_lt hbuilt))) →
      CombinedReplayConsistent total main qb i cf leafOk built tree outerLog
```

The bottom-up induction proves depth zero by unfolding `forkTreeCombined_zero`,
projecting the nested logging support, checking `leafOk`, and applying the
session-6 `CombinedReplayConsistent.leaf` constructor. At successor depth it
unfolds `forkTreeCombined_succ` once, applies
`forkReplay4_support_props_full` to the four executions, invokes the induction
hypothesis on every successful child, and constructs the session-6
`CombinedReplayConsistent.node`. The node projection is discharged by the
session-7 `combinedNodePrefixProjection_of_outerReplay`; that lemma inverts
`combinedTreeSelector` and supplies the common earlier slot plus its strict
inequality to every present child first slot. Consequently the induction does
not separately invoke the session-6 consumer lemmas `firstSlot_some` or
`slot_lt_child_first`; those remain downstream eliminators for the invariant.
The new `CombinedReplayConsistent.canonicalProjection` eliminator exposes the
session-6 canonical field without dependent constructor case splits.

Because replaying the whole fork has a longer outer log than its canonical
first execution, session 8 also proves
`forkReplay4_firstRun_prefix_of_outerReplay`. This connects the exact outer
support witness to child zero's logged execution, allowing the child canonical
prefix to be composed into the parent canonical prefix without choosing an
unrelated support witness.

The exact deferred session-9 goal is:

```lean
(∑ s, Pr[= some s |
  continuedForkSelector qb i
    (combinedTreeSelector qb i cf total built hbuilt) none <$>
  continuedForkMain
    (forkTreeCombined total main qb i cf leafOk built
      (Nat.le_of_lt hbuilt))
    keepCombinedChild] =
  Pr[fun tree => tree.isSome |
    forkTreeCombined total main qb i cf leafOk built
      (Nat.le_of_lt hbuilt)])
```

`#print axioms` results:

```text
'Ipp.forkReplay4_firstRun_prefix_of_outerReplay' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.forkTreeCombined_support_invariant' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Verification used the pinned Lean 4.30.0 toolchain with
`LEAN_NUM_THREADS=1` and one machine-wide Lake/Lean process at a time. Focused
`lake build Ipp.Fork` passed (3300 jobs), focused `lake build Ipp.ForkTree`
passed (3301 jobs), and final `lake build Ipp` passed in 124.6 seconds (3324
jobs). Scans of `Ipp/Fork.lean` and `Ipp/ForkTree.lean` found no `sorry`,
`axiom`, or `native_decide`; `git diff --check` passed. Prover/release-gated
tests were not run.

## A? session 9

Session 9 landed the event-extensional selector-mass machinery, but the
unconditional design theorem is not derivable from the stated hypotheses.
The proved mass theorem is:

```lean
theorem forkTreeCombined_selectorMass_of_selector_success
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (total built : Nat) (hbuilt : built < total)
    (main : OracleComp spec α) (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    (hselectorSuccess : ∀ {tree outerLog},
      (some tree, outerLog) ∈ support (replayFirstRun
        (forkTreeCombined total main qb i cf leafOk built
          (Nat.le_of_lt hbuilt))) →
      ∃ s, combinedTreeSelector qb i cf total built hbuilt (some tree) = some s) :
    (∑ s, Pr[= some s |
      continuedForkSelector qb i
        (combinedTreeSelector qb i cf total built hbuilt) none <$>
      continuedForkMain
        (forkTreeCombined total main qb i cf leafOk built
          (Nat.le_of_lt hbuilt))
        keepCombinedChild]) =
      Pr[fun tree => tree.isSome |
        forkTreeCombined total main qb i cf leafOk built
          (Nat.le_of_lt hbuilt)]
```

The proof is event extensionality.  The new
`sum_probEvent_eq_some_eq_probEvent_isSome` rewrites the finite sum of
disjoint `some s` singleton events to the mapped selector's `isSome` event.
`combinedTreeSelector_eq_some_implies_isSome` handles the reverse direction.
On a successful child, support inversion of `continuedForkMain` reduces
`keepCombinedChild` to the original successful tree; its output marginal is
then identified with the extractor by
`Prod.fst <$> replayFirstRun extractor = extractor`.

The attempted successful-tree selector-totality proof got as far as the
public `combinedTreeSelector_cf_some_of_consistent`: session 8's
`CombinedReplayConsistent.canonicalProjection`, `all_leafOk`, and
`hselectorTotal` prove

```lean
∃ selected,
  cf (combinedLevel total built hbuilt) tree.root.1 = some selected
```

for every successful tree.  At positive depth, unfolding
`combinedTreeSelector` additionally leaves the exact goal

```lean
selected next : Fin (qb i + 1)
hselected :
  cf (combinedLevel total built hbuilt) tree.root.1 = some selected
hfirst : treeFirstSlot cf total built tree = some next
⊢ selected < next
```

No session-8 invariant or stated session-9 hypothesis relates the new level's
slot to the first stored slot.  In particular, `hselectorTotal` asserts only
existence.  A level-constant `cf` is permitted: a depth-one tree can succeed
using that slot, while the next `combinedTreeSelector` rejects because the new
slot equals the stored first slot.  Thus the requested unconditional mass
identity (and therefore the combined three-conjunct theorem) needs a
cross-level strict-order hypothesis or a strengthened invariant; it cannot be
proved from the DESIGN statement without an axiom.

`#print axioms` results:

```text
'Ipp.sum_probEvent_eq_some_eq_probEvent_isSome' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.combinedTreeSelector_eq_some_implies_isSome' depends on axioms: [propext]
'Ipp.combinedTreeSelector_cf_some_of_consistent' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.forkTreeCombined_selectorMass_of_selector_success' depends on axioms: [propext, Classical.choice, Quot.sound]
```

These are the project's standard logical/quotient axioms; there is no `sorry`,
custom `axiom`, or `native_decide`.  Focused `lake build Ipp.ForkTree` passed
(3301 jobs).  Final `lake build Ipp` passed (3324 jobs, 124.8 seconds).  The
prover/release-gated circuit tests were not run; this session changed only the
Lean IPP package and its report.

## A? session 9b

Session 9b makes the missing cross-level ordering fact an explicit premise,
discharges the session-9 conditional selector-mass lemma, and assembles the
support/invariant/mass theorem.  The premise is universal over the combined
depth so the later FS instantiation can discharge it at each `depth < total`:

```lean
(hslotOrder : ∀ {depth} (hdepth : depth < total)
  {tree : RunTree spec α depth} {outerLog : QueryLog spec},
  (some tree, outerLog) ∈ support (replayFirstRun
    (forkTreeCombined total main qb i cf leafOk depth
      (Nat.le_of_lt hdepth))) →
  ∀ {selected next},
    cf (combinedLevel total depth hdepth) tree.root.1 = some selected →
    treeFirstSlot cf total depth tree = some next →
    selected < next)
```

The full mass theorem statement is:

```lean
theorem forkTreeCombined_selectorMass
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (total built : Nat) (hbuilt : built < total)
    (main : OracleComp spec α) (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    (hbaseReach : ∀ level, level < total →
      CfReachable main qb i (cf level))
    (hselectorTotal : ∀ {first},
      first ∈ support (replayFirstRun main) → leafOk first →
      ∀ level, level < total → ∃ s, cf level first.1 = some s)
    (hslotOrder : ∀ {depth} (hdepth : depth < total)
      {tree : RunTree spec α depth} {outerLog : QueryLog spec},
      (some tree, outerLog) ∈ support (replayFirstRun
        (forkTreeCombined total main qb i cf leafOk depth
          (Nat.le_of_lt hdepth))) →
      ∀ {selected next},
        cf (combinedLevel total depth hdepth) tree.root.1 = some selected →
        treeFirstSlot cf total depth tree = some next →
        selected < next) :
    (∑ s, Pr[= some s |
      continuedForkSelector qb i
        (combinedTreeSelector qb i cf total built hbuilt) none <$>
      continuedForkMain
        (forkTreeCombined total main qb i cf leafOk built
          (Nat.le_of_lt hbuilt))
        keepCombinedChild]) =
      Pr[fun tree => tree.isSome |
        forkTreeCombined total main qb i cf leafOk built
          (Nat.le_of_lt hbuilt)]
```

It proves the existing `forkTreeCombined_selectorMass_of_selector_success`
conditional by obtaining selector totality from
`combinedTreeSelector_cf_some_of_consistent` and using `hslotOrder` exactly for
the remaining `selected < next` branch.  The assembled central theorem
statement is:

```lean
theorem forkTreeCombined_support_invariant_and_selectorMass
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)]
    [unifSpec ⊂ₒ spec] [unifSpec ˡ⊂ₒ spec]
    (total built : Nat) (hbuilt : built < total)
    (main : OracleComp spec α) (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    (hbaseReach : ∀ level, level < total →
      CfReachable main qb i (cf level))
    (hselectorTotal : ∀ {first},
      first ∈ support (replayFirstRun main) → leafOk first →
      ∀ level, level < total → ∃ s, cf level first.1 = some s)
    (hslotOrder : ∀ {depth} (hdepth : depth < total)
      {tree : RunTree spec α depth} {outerLog : QueryLog spec},
      (some tree, outerLog) ∈ support (replayFirstRun
        (forkTreeCombined total main qb i cf leafOk depth
          (Nat.le_of_lt hdepth))) →
      ∀ {selected next},
        cf (combinedLevel total depth hdepth) tree.root.1 = some selected →
        treeFirstSlot cf total depth tree = some next →
        selected < next) :
    CfReachable
        (forkTreeCombined total main qb i cf leafOk built
          (Nat.le_of_lt hbuilt))
        qb i (combinedTreeSelector qb i cf total built hbuilt) ∧
      (∀ {tree outerLog},
        (some tree, outerLog) ∈ support (replayFirstRun
          (forkTreeCombined total main qb i cf leafOk built
            (Nat.le_of_lt hbuilt))) →
        CombinedReplayConsistent total main qb i cf leafOk built tree outerLog) ∧
      ((∑ s, Pr[= some s |
        continuedForkSelector qb i
          (combinedTreeSelector qb i cf total built hbuilt) none <$>
        continuedForkMain
          (forkTreeCombined total main qb i cf leafOk built
            (Nat.le_of_lt hbuilt))
          keepCombinedChild]) =
        Pr[fun tree => tree.isSome |
          forkTreeCombined total main qb i cf leafOk built
            (Nat.le_of_lt hbuilt)])
```

FS-facing discharge hook for session 11/15 (signature sketch only; no FS
proof was added here): a `PathPrefix qb pathDepth slot root run` witness plus
`selectedLevel < nextLevel < pathDepth`, and
`roundSlot qb selectedLevel run = some selected` / `roundSlot qb nextLevel run =
some next`, should expose `selected < next` through
`PathPrefix.slot_strict`.  The combined instantiation uses
`selectedLevel = total - (built + 1)` and `nextLevel = total - built`.

Verification:

```text
Ipp.forkTreeCombined_support_invariant_and_selectorMass
depends on axioms: [propext, Classical.choice, Quot.sound]
Focused `lake build Ipp.ForkTree`: passed (3301 jobs).
Final `lake build Ipp`: passed (3324 jobs, 124.8 seconds).
```

The pinned Lean 4.30.0 toolchain was used with `LEAN_NUM_THREADS=1` and one
machine-wide Lake/Lean process at a time.  No `sorry`, custom `axiom`, or
`native_decide` was added.  Prover/release-gated circuit tests were not run.

## A? session 10

Implemented the one-step combined-replay recurrence and its total-depth
iteration.  The private reachability bridge is specialized to the query-free
`keepCombinedChild` continuation and uses its existing outer-log support
lemma.

`forkTreeCombined_step` statement:

```lean
theorem forkTreeCombined_step
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)]
    [unifSpec ⊂ₒ spec] [unifSpec ˡ⊂ₒ spec]
    (total built : Nat) (hbuilt : built < total)
    (main : OracleComp spec α) (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    (hbaseReach : ∀ level, level < total →
      CfReachable main qb i (cf level))
    (hselectorTotal : ∀ {first},
      first ∈ support (replayFirstRun main) → leafOk first →
      ∀ level, level < total → ∃ s, cf level first.1 = some s)
    (hslotOrder : ∀ {depth} (hdepth : depth < total)
      {tree : RunTree spec α depth} {outerLog : QueryLog spec},
      (some tree, outerLog) ∈ support (replayFirstRun
        (forkTreeCombined total main qb i cf leafOk depth
          (Nat.le_of_lt hdepth))) →
      ∀ {selected next},
        cf (combinedLevel total depth hdepth) tree.root.1 = some selected →
        treeFirstSlot cf total depth tree = some next →
        selected < next) :
    forkTreeStep (qb i + 1) (Fintype.card (spec.Range i))
        (Pr[fun t : Option (RunTree spec α built) => t.isSome |
          forkTreeCombined total main qb i cf leafOk built
            (Nat.le_of_lt hbuilt)]) ≤
      Pr[fun t : Option (RunTree spec α (built + 1)) => t.isSome |
        forkTreeCombined total main qb i cf leafOk (built + 1)
          (Nat.succ_le_of_lt hbuilt)]
```

`forkTree_bound` statement:

```lean
theorem forkTree_bound
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)]
    [unifSpec ⊂ₒ spec] [unifSpec ˡ⊂ₒ spec]
    (total : Nat)
    (main : OracleComp spec α) (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    (hbaseReach : ∀ level, level < total →
      CfReachable main qb i (cf level))
    (hselectorTotal : ∀ {first},
      first ∈ support (replayFirstRun main) → leafOk first →
      ∀ level, level < total → ∃ s, cf level first.1 = some s)
    (hslotOrder : ∀ {depth} (hdepth : depth < total)
      {tree : RunTree spec α depth} {outerLog : QueryLog spec},
      (some tree, outerLog) ∈ support (replayFirstRun
        (forkTreeCombined total main qb i cf leafOk depth
          (Nat.le_of_lt hdepth))) →
      ∀ {selected next},
        cf (combinedLevel total depth hdepth) tree.root.1 = some selected →
        treeFirstSlot cf total depth tree = some next →
        selected < next) :
    ((forkTreeStep (qb i + 1) (Fintype.card (spec.Range i)))^[total])
        (Pr[leafOk | replayFirstRun main]) ≤
      Pr[fun t : Option (RunTree spec α total) => t.isSome |
        forkTreeCombined total main qb i cf leafOk total (Nat.le_refl total)]
```

Verification:

```text
Ipp.forkTreeCombined_step
depends on axioms: [propext, Classical.choice, Quot.sound]
Ipp.forkTree_bound
depends on axioms: [propext, Classical.choice, Quot.sound]
Focused `lake build Ipp.ForkTree`: passed (3301 jobs).
Final `lake build Ipp`: passed (3324 jobs, 124.5 seconds).
```

The pinned Lean 4.30.0 toolchain was used with `LEAN_NUM_THREADS=1`, one
machine-wide Lake/Lean process at a time, and no `lake update` or Mathlib
build.  No `sorry`, custom `axiom`, or `native_decide` was added.  Prover and
release-gated circuit tests were not run.

## A? session 11

Added the public full-depth combined-tree support API.  The direct successful
tree premise is bridged to an outer replay log, then the existing
`forkTreeCombined_support_invariant_core` at `built = total` is forgotten with
`lower = none`.  These qualitative endpoint theorems require `hbaseReach`;
`hselectorTotal` and `hslotOrder` remain premises of the indexed selector and
mass theorems used before the full-depth endpoint.

The three theorem statements are:

```lean
theorem forkTreeCombined_support_props
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (total : Nat) (main : OracleComp spec α) (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    (hbaseReach : ∀ level, level < total →
      CfReachable main qb i (cf level))
    {tree : RunTree spec α total}
    (h : some tree ∈ support
      (forkTreeCombined total main qb i cf leafOk total (Nat.le_refl total))) :
    TreeConsistent main qb i cf leafOk 0 none tree

theorem forkTreeCombined_success_all_leafOk
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (total : Nat) (main : OracleComp spec α) (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    (hbaseReach : ∀ level, level < total →
      CfReachable main qb i (cf level))
    {tree : RunTree spec α total}
    (h : some tree ∈ support
      (forkTreeCombined total main qb i cf leafOk total (Nat.le_refl total))) :
    tree.All leafOk

theorem forkTreeCombined_propertyTransfer
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (total : Nat) (main : OracleComp spec α) (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    (hbaseReach : ∀ level, level < total →
      CfReachable main qb i (cf level))
    (P_out : α → QueryLog spec → Prop)
    (hP : ∀ {x log}, (x, log) ∈ support (replayFirstRun main) → P_out x log)
    {tree : RunTree spec α total}
    (h : some tree ∈ support
      (forkTreeCombined total main qb i cf leafOk total (Nat.le_refl total))) :
    TreeConsistent main qb i cf leafOk 0 none tree ∧
      tree.All (fun run => P_out run.1 run.2)
```

The small `fsGame_forkTree_leaf_data` consumer now invokes
`forkTreeCombined_propertyTransfer` at `total = built`, with its explicit
`hbaseReach` premise.  The old `forkTree` experiment remains for session 12.

`#print axioms`:

```text
'Ipp.forkTreeCombined_support_props' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.forkTreeCombined_success_all_leafOk' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.forkTreeCombined_propertyTransfer' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Verification used the pinned Lean 4.30.0 toolchain with `LEAN_NUM_THREADS=1`
and one Lake/Lean process at a time:

```text
Focused `lake build Ipp.ForkTree`: passed (3301 jobs).
Focused `lake build Ipp.FsGame`: passed (3311 jobs).
Final `lake build Ipp`: passed (3324 jobs, 92.1 seconds).
```

No `sorry`, custom `axiom`, or `native_decide` was added.  No commit was made;
`DESIGN.md` and `.lake/packages/**` were not edited.  Prover/release-gated
circuit tests were not run.

## A? session 12

Session 12 removed the obsolete top-down experiment and reconnected the FS
support endpoint to the full-depth combined experiment.  Two of the three FS
premises are discharged below.  The hslot-order premise is deferred because
the current FS contract does not imply it; the exact goal and reason are
recorded at the end of this section.

The reachability lemma is:

```lean
theorem fs_roundSlot_reachable
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat) (level : Nat) :
    CfReachable (wrapFs (FsGame stmt adv)) qb (Sum.inr ())
      (roundSlot (qb (Sum.inr ())) level)
```

It projects a wrapped support point to its source log, uses
`roundSlot_tracePos`/`tracePos_get`, and obtains the corresponding flattened
structured query value from `fsPointTrace_flatten_at`.

The selector-totality lemma is:

```lean
theorem fs_roundSlot_selector_total
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : Nat) {first :
      WrappedFsRun
        (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
        (FsResult μ F G1 G2 GT) × QueryLog (FsWrappedSpec F)}
    (_hfirst : first ∈ support
      (replayFirstRun (wrapFs (FsGame stmt adv))))
    (hgood : WrappedRunGood qb stmt first.1 first.2) :
    ∀ level, level < μ → ∃ s, roundSlot qb level first.1 = some s
```

It is exactly `roundSlot_some_or_unqueried` resolved by
`hgood.2.2.1`.

The updated FS endpoint statement is:

```lean
theorem fsFork_success_acceptTree
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (hbindV : KzgStructuredKeyBinding stmt.srsV stmt.acceptV)
    (hbindW : KzgStructuredKeyBinding stmt.srsW stmt.acceptW)
    {tree : RunTree (FsWrappedSpec F)
      (WrappedFsRun
        (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
        (FsResult μ F G1 G2 GT)) μ}
    (hsuccess : some tree ∈ support
      (forkTreeCombined μ (wrapFs (FsGame stmt adv)) qb (Sum.inr ())
        (fun level run => roundSlot (qb (Sum.inr ())) level run)
        (fun run => WrappedRunGood (qb (Sum.inr ())) stmt run.1 run.2)
        μ (Nat.le_refl μ))) :
    let r := tree.root.1.out.transcript.randomizer
    AcceptTree (u4ACommitAtom stmt.e) (u4BCommitAtom stmt.e) u4TCommitMap
      (u4TLanePairing stmt.e) μ
      (fun i => (stmt.srsV i, stmt.srsV i))
      (fun i => (r ^ (i : Nat))⁻¹ • stmt.srsW i)
      (fun i => r ^ (i : Nat))
      (u4AEmbedding stmt.ComA) (u4BEmbedding stmt.ComB)
      (u4TCommitMap (tree.root.1.out.proof.ipAb, tree.root.1.out.proof.aggC))
```

The endpoint calls `forkTreeCombined_support_props` with
`fs_roundSlot_reachable`; `tree_to_acceptTree_aux`, `tree_to_acceptTree`, and
all R6 path-prefix, filtered-rank, transcript-chaining, shared-root, fold, and
`AcceptTree` lemmas below them are unchanged.

Deleted definitions:

- `forkTreeFrom`
- `forkTree`
- `forkTreeFrom_support_props`
- `forkTree_support_props`
- `forkTree_success_all_leafOk`
- `forkTree_success_selectorAccepted`
- `forkTree_propertyTransfer`
- `averagedForkTreeSuccess`
- `averagedForkTreeSuccess_zero`
- `forkTree_probability_eq_average`
- `forkTreeChildContinuation`
- `forkTreeContinuationMass`
- `forkTreeContinuationMass_step`

`forkReplay4Continue` and its support/bound machinery, `forkTreeCombined`,
`forkTreeStep`, `forkTreeStep_monotone`, `forkTree_iterate_bound`, and all
combined-tree support/mass/property-transfer APIs remain.

Deferred hslot-order goal, specialized to the FS instantiation:

```lean
∀ {depth} (hdepth : depth < μ)
  {tree : RunTree (FsWrappedSpec F)
    (WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT) depth}
  {outerLog : QueryLog (FsWrappedSpec F)},
  (some tree, outerLog) ∈ support
    (replayFirstRun
      (forkTreeCombined μ (wrapFs (FsGame stmt adv)) qb (Sum.inr ())
        (fun level run => roundSlot (qb (Sum.inr ())) level run)
        (fun run => WrappedRunGood (qb (Sum.inr ())) stmt run.1 run.2)
        depth (Nat.le_of_lt hdepth))) →
  ∀ {selected next},
    roundSlot (qb (Sum.inr ())) (combinedLevel μ depth hdepth)
      tree.root.1 = some selected →
    treeFirstSlot
      (fun level run => roundSlot (qb (Sum.inr ())) level run)
      μ depth tree = some next →
    selected < next
```

The current `roundSlot` is the first occurrence in the complete
adversary-plus-verifier miss trace.  `WrappedRunGood` supplies acceptance,
challenge acceptance, `¬RoundPointUnqueried`, `DependencyOrdered` for
randomizer/x0 versus round slots, and structured-answer injectivity, but no
cross-round no-prequery/order invariant.  The existing `DependencyOrdered`
documentation explicitly notes that an adversary can pre-query round points;
`RoundQueries` supplies membership, not chronological positions.  Therefore
the requested implication is not derivable soundly from the current fields;
adding an axiom, `sorry`, or an unaccounted strengthened good-event field would
be unsound.  This is the single deferred item for a follow-up sol session.

Verification:

```text
LEAN_NUM_THREADS=1, pinned Lean 4.30.0, one Lake/Lean process at a time.
lake build Ipp.FsFork: passed (3314 jobs).
lake build Ipp.ForkTree: passed (3301 jobs).
lake build Ipp: passed (3324 jobs).
#print axioms Ipp.fsFork_success_acceptTree:
'Ipp.fsFork_success_acceptTree' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Deleted-name grep over `Ipp/` is empty.  No `sorry`, custom `axiom`, or
`native_decide` was added.  `DESIGN.md` and `.lake/packages/**` were not
edited, no commit was made, and prover/release-gated circuit tests were not
run.

## A? session 12b

The implementation details, verbatim statements, U5a bound signature, axiom
prints, and focused verification are recorded above under
“A? session 12b implementation details”.  Final `lake build Ipp`: passed
(3324 jobs, 45.3 seconds).

## A? sessions 13–15 (finish)

Scope: one ordered run over sessions 13, 14, and 15. Edited
`Ipp/FsBadEvents.lean`, `Ipp/ForkTree.lean`, `Ipp/FsFork.lean`, and added
`Ipp/S1.lean`. No commit; no edit to `DESIGN.md` or `.lake/packages/**`.

### Phase 13 — concrete cache bad-event bounds

The requested whole-game finite-set union bound was not completed. No theorem
with a false or unproved conclusion was added. The exact remaining core goal is:

```lean
Pr[fun z => ∃ i, i < Q qb ∧ ∃ point answer,
    z.2[i]? = some ⟨Sum.inr point, answer⟩ ∧ answer ∈ bad |
  fsProbComp stmt adv] ≤
  (((Q qb) * bad.card : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)
```

under `IsTotalQueryBound (FsGame stmt adv) (Q qb)`. The existing VCVio
birthday theorem cannot be instantiated directly: `FsSourceSpec` also contains
ambient-uniform indices whose ranges are not uniformly lower-bounded by `|F|`,
while the event must count only `Sum.inr` structured misses. The required proof
is therefore the custom `probEvent` induction described in the task. The source
to wrapped quantitative erasure induction was also attempted; its precise
recursive bind goal was equality between the wrapped replay distribution and
the pushforward of the source replay by
`(out, log) ↦ ({out, trace := fsPointTrace log}, flattenFsLog log)`. It reduced
correctly to ambient and structured bind cases, but the dependent uniform
`Fintype` instances and mapped continuation distributions did not close within
the bounded attempts.

Consequently none of the following `BadEventBudget` fields was discharged by a
new concrete theorem in this phase; their field statements remain verbatim:

```lean
answer_collision_bound :
  Pr[fun z => Accepted z ∧ BadCollision z | fsProbComp stmt adv] ≤
    (((Q qb) ^ 2 : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)

randomizer_rootset_bound :
  Pr[fun z => Accepted z ∧ BadRandomizer badR z | fsProbComp stmt adv] ≤
    (((Q qb) * dR : Nat) : ℝ≥0∞) /
      ((Fintype.card F : ℝ≥0∞) - 2)

kzg_z_bound :
  Pr[fun z => Accepted z ∧ BadKzg badZ z | fsProbComp stmt adv] ≤
    (((Q qb) * dZ : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)
```

The `|F|-2` randomizer denominator continues to document conditioning after
rejecting `{0,1}`; it has not been derived from the rejection loop.
`lake build Ipp.FsBadEvents` passed after the Phase-14 interface change below.

### Phase 14 — protocol-local bounds and assembly

The dependency and cross-round guessing reductions remain explicit parametric
fields; no concrete theorem was asserted:

```lean
dependency_order_bound :
  Pr[fun z => Accepted z ∧ BadDependency qb stmt z | fsProbComp stmt adv] ≤
    ((μ * Q qb : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)

round_slot_order_bound :
  Pr[fun z => Accepted z ∧ BadRoundOrder qb z | fsProbComp stmt adv] ≤
    ((μ * Q qb : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)
```

`BadEventBudget.ofBounds` remains the honest assembly constructor. Its six bad
event arguments are explicit, and it now also takes the exact quantitative
source-to-wrapped premise needed by session 15:

```lean
hWrap :
  Pr[fun z => Accepted z ∧ RunGoodFull qb stmt badR badZ z |
      fsProbComp stmt adv] ≤
    Pr[WrappedRunGoodFull qb stmt badR badZ |
      replayFirstRun (wrapFs (FsGame stmt adv))]
```

This is parametric because the repository previously proved only a support
bijection for `wrapFs`, not preservation of probability mass. The new
`WrappedRunGoodFull` gate retains the randomizer and KZG exclusions in the
actual fork experiment; using plain `WrappedRunGood` here would lose the
root-set premise required by `u4_capstone`.

Concrete versus parametric status: the per-miss lemmas, query-bound transfers,
event-union algebra, `q0_lower_bound`, fork recurrence, stronger-gate
monotonicity, and deterministic verifier/tree projections are concrete. All six
per-event budget fields plus `wrapped_good_lower_bound` are parametric. The
round-unqueried field remains parametric by design.

### Phase 15 — U5e S1 capstone

Added `Ipp/S1.lean`. `TreeConsistent.mono_leafOk` forgets the extra full-good
gate only at the existing `tree_to_acceptTree` boundary. `FsFork` now retains
the already-proved `FsAccepts` fact from an accepting cached verifier run and
exports `wrapped_support_accepts`, supplying the aggregate PPE checked by the
verifier. The capstone uses `q0_lower_bound`, the explicit
`wrapped_good_lower_bound`, `forkTree_bound`, `forkTreeStep_monotone`,
`probEvent_pos_iff`, `tree_to_acceptTree`, and `u4_capstone`.

The theorem statement is verbatim:

```lean
theorem s1_soundness [Fintype F]
    [(FsSourceSpec F G1 G2 GT).DecidableEq]
    [IsUniformSpec (FsSourceSpec F G1 G2 GT)]
    [∀ j, SampleableType ((FsSourceSpec F G1 G2 GT).Range j)]
    [unifSpec ⊂ₒ FsSourceSpec F G1 G2 GT]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F] [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Set F) (dZ : Nat) (bUnq : ℝ≥0∞)
    (hbindV : KzgStructuredKeyBinding stmt.srsV stmt.acceptV)
    (hbindW : KzgStructuredKeyBinding stmt.srsW stmt.acceptW)
    (hbindA : PairingCommitmentBinding (u4ACommitAtom stmt.e)
      (fun i => (stmt.srsV i, stmt.srsV i)))
    (hbindB : ∀ r : F, PairingCommitmentBinding (u4BCommitAtom stmt.e)
      (fun i => (r ^ (i : Nat))⁻¹ • stmt.srsW i))
    (hComA : u4AEmbedding stmt.ComA = commitV (u4ACommitAtom stmt.e)
      (fun i => (stmt.srsV i, stmt.srsV i)) (fun i => (stmt.A i, stmt.C i)))
    (hComB : ∀ r : F, u4BEmbedding stmt.ComB = commitV (u4BCommitAtom stmt.e)
      (fun i => (r ^ (i : Nat))⁻¹ • stmt.srsW i)
      (fun i => r ^ (i : Nat) • stmt.B i))
    (H : BadEventBudget (qb (Sum.inr ())) stmt adv
      (discrepancyRootSet (fun i => groth16Discrepancy stmt.e stmt.alpha
        stmt.beta stmt.gamma stmt.delta stmt.A stmt.C stmt.Aic stmt.B i))
      badZ (2 ^ μ - 1) dZ bUnq)
    (hpositive : 0 <
      ((forkTreeStep (qb (Sum.inr ()) + 1) (Fintype.card F))^[μ])
        (Pr[Accepted | fsProbComp stmt adv] -
          badEventError (F := F) μ (qb (Sum.inr ())) (2 ^ μ - 1) dZ bUnq)) :
    ∀ i, stmt.e (stmt.A i) (stmt.B i) =
      groth16Rhs stmt.e stmt.alpha (stmt.Aic i) (stmt.C i)
        stmt.beta stmt.gamma stmt.delta
```

The strict premise is DESIGN §R7(5)'s exact
`G^[μ](acc - err_bad) > 0`, rather than a separately inverted closed-form
`acc > err`; no inverse threshold lemma was fabricated.

Temporary-file axiom audit output:

```text
'Ipp.s1_soundness' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Verification and gate substance:

- `lake build Ipp.FsFork`: passed (3314 jobs).
- `lake build Ipp.FsBadEvents`: passed (3315 jobs).
- `lake build Ipp.S1`: passed (3316 jobs).
- final `lake build Ipp`: passed (3325 jobs).
- recursive `Ipp/*.lean` scan: `sorry` count 0.
- recursive `Ipp/*.lean` scan: `axiom ` count 0.
- recursive `Ipp/*.lean` scan: `native_decide` count 0.
- `git diff --check`: passed.
- No prover/release-gated circuit tests were applicable or run.

The requested success condition is therefore met for the proved, axiom-clean
`s1_soundness` capstone and package gates, but not for concrete sessions 13–14:
their probability bounds remain explicit hypotheses for the reasons above.

## S1 finish: Phase 6 + U5a

Scope: Phase 6 ledger/CI/scope delivery first, followed by a bounded U5a
hardening attempt. No commit was made. Existing edits to `Ipp/ForkTree.lean`
and `Ipp/FsFork.lean` were preserved.

### Phase 6 ledger flip

The two Filecoin-lineage assumption rows were deleted. The replacement proved
row is verbatim:

```text
| SnarkPack aggregation implies every per-proof Groth16 pairing equation (S1) | `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/gipa.rs`; `tipa`; `groth16_aggregation` | abstract FS-compiled combined-verifier game | Lean (`lean-ipp`) | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/S1.lean` | `Ipp.s1_soundness` (module `Ipp.S1`) | proved | Lean `v4.30.0` | `just snarkpack-lean-ipp`; axiom audit: `propext`, `Classical.choice`, `Quot.sound` only |
```

The two cryptographic assumption rows, each mapping 1:1 to its
`Ipp/Algebra.lean` `Prop` definition, are verbatim:

```text
| `assume.kzg-structured-key-binding` | cryptography lead | q-SDH-type binding of the structured KZG keys; bundles the KZG-challenge Schwartz--Zippel step because the verifier checks only the evaluation at `z`. | Computational BLS12-377 assumption, represented exactly by the `Ipp.KzgStructuredKeyBinding` `Prop` definition in `Ipp/Algebra.lean`. | Postcondition: every accepted `(final key, opening)` equals the honest structured SRS MSM at the transcript coefficients; consumed explicitly by `Ipp.s1_soundness`. | replace with a reduction for the deployed KZG scheme and curve | security/crypto | assumed |
| `assume.pairing-commitment-binding` | cryptography lead | AFGHO/double-pairing binding at the SRS keys for the A/C product lane and real B lane. | Computational BLS12-377 assumption, represented exactly by the `Ipp.PairingCommitmentBinding` `Prop` definition in `Ipp/Algebra.lean`. | Postcondition: the pairing vector commitment is message-injective at the supplied keys; the removed synthetic scalar column is not an instance. | replace with a reduction for the deployed pairing commitment | security/crypto | assumed |
```

Because the quantitative fields remain parametric, the additional explicit
assumption sub-rows are verbatim:

```text
| `assume.ro-answer-collision-union-bound` | formal verification owner | Supplies `BadEventBudget.answer_collision_bound`, `Q^2/card(F)`. | Fixed-set structured-miss union bounds are proved; the adaptive pair-collision reduction is not. | Postcondition: the accepted collision event has probability at most `Q^2/card(F)`; evidence is `Ipp.structured_log_mem_before_le` and the explicit theorem hypothesis in `Ipp/FsBadEvents.lean`. | prove the mixed-log structured pair bound and reduce `BadCollision` to it | security/crypto/formal | assumed |
| `assume.ro-randomizer-rootset-union-bound` | formal verification owner | Supplies `BadEventBudget.randomizer_rootset_bound`, `Q*dR/(card(F)-2)`. | The mixed structured-log union is proved, but the accepted-stage log witness, bad-set cardinality premise, and rejection-loop conditioning are not connected to this field. | Postcondition: the accepted randomizer-root event has probability at most `Q*dR/(card(F)-2)`; evidence is `Ipp.structured_log_mem_le` and the explicit theorem hypothesis in `Ipp/FsBadEvents.lean`. | export the accepted randomizer log witness, add the cardinality premise, and prove `{0,1}` rejection conditioning | security/crypto/formal | assumed |
| `assume.ro-dependency-order-union-bound` | formal verification owner | Supplies `BadEventBudget.dependency_order_bound`, `mu*Q/card(F)`. | The protocol-local early-query guessing reduction has not been transported through the full probability game. | Postcondition: the accepted dependency-order event has probability at most `mu*Q/card(F)`; evidence is the support-level dependency lemmas and explicit theorem hypothesis in `Ipp/FsBadEvents.lean`. | prove the protocol-local reduction from a bad dependency trace to a fresh miss guess | security/crypto/formal | assumed |
| `assume.ro-round-slot-order-union-bound` | formal verification owner | Supplies `BadEventBudget.round_slot_order_bound`, `mu*Q/card(F)`. | The cross-round pre-query guessing reduction remains parametric. | Postcondition: the accepted round-order event has probability at most `mu*Q/card(F)`; evidence is the chronological support lemmas and explicit theorem hypothesis in `Ipp/FsBadEvents.lean`. | prove the adjacent-round guessing reduction over structured miss ordinals | security/crypto/formal | assumed |
| `assume.ro-kzg-z-union-bound` | formal verification owner | Supplies `BadEventBudget.kzg_z_bound`, `Q*dZ/card(F)`. | The mixed structured-log union is proved, but the cached-verifier postcondition does not retain/export the accepted KZG log witness and the field interface lacks the bad-set cardinality premise. | Postcondition: the accepted KZG bad-set event has probability at most `Q*dZ/card(F)`; evidence is `Ipp.structured_log_mem_le` and the explicit theorem hypothesis in `Ipp/FsBadEvents.lean`. | retain/export the accepted KZG cache/log witness and add the `badZ.ncard <= dZ` premise | security/crypto/formal | assumed |
| `assume.ro-round-unqueried-bound` | formal verification owner | Supplies the explicit `BadEventBudget.round_unqueried_bound` parameter `bUnq`. | Kept parametric by the S1 design: acceptance on a never-missed round point already constrains a fresh answer. | Postcondition: the accepted unqueried-round event has probability at most `bUnq`; evidence is the explicit theorem hypothesis in `Ipp/FsBadEvents.lean`. | give a separate ROM reduction if a non-parametric bound is required | security/crypto/formal | assumed |
| `assume.fs-wrapped-probability-transport` | formal verification owner | Transfers accepted-and-good probability from the source miss-log experiment to the wrapped forking experiment. | Only support transport is proved; quantitative mass preservation through `wrapFs` is not. | Postcondition: source accepted-and-good probability is no greater than the wrapped good-event probability; evidence is `BadEventBudget.wrapped_good_lower_bound` and support transport in `Ipp/FsFork.lean`. | prove the pushforward distribution equality for `wrapFs`/logging | security/crypto/formal | assumed |
```

The boundary notes record the strict geometric four-way recurrence and its
loose bound, the structured-model/byte split, nonce rejection and dependency
bookkeeping, and the abstract F-module/pairing model-fidelity boundary.

### Scope, CI, and S2/S3 artifact

`formal/snarkpack/s1-mechanization-scope.md` is now a completion memo: U1--U4,
U5b--U5e are marked complete; the combined-replay redesign and arity `Fin 4`
are recorded; U5a's split is explicit. The same file contains the reviewable S2
Tier-1/Tier-2 and S3 go/no-go sketches.

`.github/workflows/snarkpack-formal.yml` now has a separate `lean-ipp` job. It
checks out the repository, installs `just` and `leanprover/lean4:v4.30.0`, and
runs `just snarkpack-lean-ipp` under a 30-minute timeout. The heavy Lean build
is not added to default `ci-check`/`ci-test`.

### U5a outcome

Added `Ipp/FsMissBounds.lean` and imported it from `Ipp/FsBadEvents.lean`.
After 18 narrow elaboration/build iterations, the previously load-bearing
mixed-source probability transport closed without `sorry` or axioms:

- `structured_log_mem_at_le`: at any fixed mixed log ordinal, a structured
  answer hits finite `bad` with probability at most `|bad|/|F|`;
- `structured_log_mem_before_le`: union over the first `n` ordinals gives
  `n*|bad|/|F|`;
- `structured_log_mem_le`: `IsTotalQueryBound oa n` lifts this to any
  structured entry in the complete logged run.

The proof structurally inducts through `replayFirstRun`; the `Sum.inl` ambient
branch contributes zero and therefore never imposes a range-cardinality
premise. `lake build Ipp.FsMissBounds` and `lake build Ipp.FsBadEvents` passed.

No `BadEventBudget` field was changed to concrete, so `BadEventBudget.ofBounds`
remains the honest assembly constructor. Parametric fields are:
`answer_collision_bound`, `randomizer_rootset_bound`,
`dependency_order_bound`, `round_slot_order_bound`, `kzg_z_bound`,
`round_unqueried_bound`, and `wrapped_good_lower_bound`.

The exact next accepted-stage transport goal for KZG is:

```lean
z ∈ support (fsProbComp stmt adv) →
Accepted z ∧ BadKzg badZ z →
∃ point answer,
  QueryAnswered z.2 (Sum.inr point) answer ∧ answer ∈ badZ
```

The analogous randomizer goal is blocked at the same public boundary. The
private cached-verifier result retains randomizer/x0 but does not publicly
export that log witness, and it does not retain the accepted KZG cache entry.
The budget interface also has no `badR.ncard <= dR` or `badZ.ncard <= dZ`
premise, so even a witness cannot justify the numeric field as currently
shaped. Collision additionally needs an adaptive structured-pair theorem
(a prior answer is the later bad singleton), while dependency and round order
need protocol-local reductions from their trace predicates to a fresh guess.
`round_unqueried_bound` remains parametric by design; quantitative `wrapFs`
pushforward remains independent work.

### Verification

Explicit axiom audit:

```text
'Ipp.s1_soundness' depends on axioms: [propext, Classical.choice, Quot.sound]
```

- final pinned `LEAN_NUM_THREADS=1 lake build Ipp`: passed, 3326 jobs,
  165.4 seconds;
- recursive `Ipp/*.lean` scan: `sorry` 0, `axiom` declarations 0,
  `native_decide` 0;
- `git diff --check`: passed;
- invariant recipe body `./scripts/check-snarkpack-invariants.sh`: passed with
  `snarkpack invariants ok` using the script's intended tracked-tree search
  semantics; the exact `just snarkpack-invariants` launcher could not be run
  because this sandbox denied access to the supplied WinGet `just` directory;
- no prover/release-gated circuit tests were applicable or run.

## NOW batch

### U5a-R1 — dependency-order candidate-pair bound

**Proved.** Adaptive accepted-proof selection is reduced to an ordered pair of
structured RO misses and bounded by the pairwise union bound
`Q(qb)^2 / card(F)`. The exact public theorem statements are:

```lean
theorem structured_point_candidate_before_le
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α)
    (candidate : Point → Option F) (n : Nat) :
    Pr[fun z => ∃ i, i < n ∧ ∃ j, j < n ∧ i ≤ j ∧ ∃ point answer,
        (fsPointTrace z.2)[i]? = some point ∧
        candidate point = some answer ∧
        (structuredAnswers z.2)[j]? = some answer | replayFirstRun oa] ≤
      (((n ^ 2 : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) := by

theorem dependency_order_candidate_bound {μ : Nat}
    (qb : Nat) (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (hbound : IsTotalQueryBound (FsGame stmt adv) (qb + 1)) :
    Pr[fun z => z.1.accept = true ∧
        ¬ DependencyOrdered qb stmt
          ({ out := z.1, trace := fsPointTrace z.2 } :
            WrappedFsRun (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
              (FsResult μ F G1 G2 GT)) |
      replayFirstRun (fsRandomFunction (FsGame stmt adv))] ≤
      ((((qb + 1) ^ 2 : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) := by

theorem dependency_order_bound [Fintype F] {μ : Nat}
    (qb : Nat) (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    (hbound : IsTotalQueryBound (FsGame stmt adv) (Q qb)) :
    Pr[fun z => Accepted z ∧ BadDependency qb stmt z | fsProbComp stmt adv] ≤
      (((Q qb) ^ 2 : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞) := by
```

`#print axioms`:

```text
'Ipp.structured_point_candidate_before_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.dependency_order_candidate_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.dependency_order_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
```

### U5a-R2 — adjacent-round candidate-pair bound and S1 integration

**Proved.** The accepted adjacent-round chain supplies the same ordered
candidate-pair witness, so the concrete bound is also `Q(qb)^2 / card(F)`:

```lean
theorem round_slot_order_candidate_bound {μ : Nat}
    (qb : Nat) (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (hbound : IsTotalQueryBound (FsGame stmt adv) (qb + 1)) :
    Pr[fun z => z.1.accept = true ∧
        ¬ RoundSlotOrdered qb
          ({ out := z.1, trace := fsPointTrace z.2 } :
            WrappedFsRun (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
              (FsResult μ F G1 G2 GT)) |
      replayFirstRun (fsRandomFunction (FsGame stmt adv))] ≤
      ((((qb + 1) ^ 2 : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) := by

theorem round_slot_order_bound [Fintype F] {μ : Nat}
    (qb : Nat) (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    (hbound : IsTotalQueryBound (FsGame stmt adv) (Q qb)) :
    Pr[fun z => Accepted z ∧ BadRoundOrder qb z | fsProbComp stmt adv] ≤
      (((Q qb) ^ 2 : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞) := by
```

`BadEventBudget` and `BadEventBudget.ofBounds` were deleted. The final concrete
`q0_lower_bound` uses collision `Q²/card(F)`, randomizer-root
`Q*dR/(card(F)-2)`, dependency-order `Q²/card(F)`, round-slot-order
`Q²/card(F)`, KZG `Q*dZ/card(F)`, and the zero unqueried bound.

The final explicit `s1_soundness` hypotheses, verbatim from its declaration,
are:

```lean
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F) (dZ : Nat)
    (hbindV : KzgStructuredKeyBinding stmt.srsV stmt.acceptV)
    (hbindW : KzgStructuredKeyBinding stmt.srsW stmt.acceptW)
    (hbindA : PairingCommitmentBinding (u4ACommitAtom stmt.e)
      (fun i => (stmt.srsV i, stmt.srsV i)))
    (hbindB : ∀ r : F, PairingCommitmentBinding (u4BCommitAtom stmt.e)
      (fun i => (r ^ (i : Nat))⁻¹ • stmt.srsW i))
    (hComA : u4AEmbedding stmt.ComA = commitV (u4ACommitAtom stmt.e)
      (fun i => (stmt.srsV i, stmt.srsV i)) (fun i => (stmt.A i, stmt.C i)))
    (hComB : ∀ r : F, u4BEmbedding stmt.ComB = commitV (u4BCommitAtom stmt.e)
      (fun i => (r ^ (i : Nat))⁻¹ • stmt.srsW i)
      (fun i => r ^ (i : Nat) • stmt.B i))
    (hZcard : badZ.card ≤ dZ)
    (hquery : IsTotalQueryBound (FsGame stmt adv) (Q (qb (Sum.inr ()))))
    (hpositive : 0 <
      ((forkTreeStep (qb (Sum.inr ()) + 1)
        (Fintype.card F))^[μ])
        (Pr[Accepted | fsProbComp stmt adv] -
          badEventError (F := F) (qb (Sum.inr ())) (2 ^ μ - 1) dZ))
```

There is no residual ROM-budget hypothesis. `#print axioms`:

```text
'Ipp.round_slot_order_candidate_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.round_slot_order_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.q0_lower_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.s1_soundness' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Ledger promotion: `formal-handoff.md` now has proved dependency-order and
adjacent-round candidate-pair rows and no longer contains
`assume.ro-dependency-order-union-bound` or
`assume.ro-round-slot-order-union-bound`. Its S1 row records that all ROM
bad-event bounds are concrete.

Verification: direct checks passed for `Ipp.FsBadEvents` and `Ipp.S1`; focused
`lake build Ipp.S1` passed 3322 jobs in 183.4 seconds, warnings only. The first
focused `Ipp.FsBadEvents` attempt timed out after 240.9 seconds while replaying
dependencies; after directly rebuilding the missing support artifact, the
module and the enclosing `Ipp.S1` focused build passed. No concurrent Lean or
Lake invocation was used. The final `lake build Ipp` remains for the batch-end
verification.

### GAP-01 — canonical field-component decode injectivity

**Proved** in `Ipp/CanonicalDecode.lean` against the pinned
`ark-bls12-377 0.5.0` modulus. `decodeLE` is the exact 48-byte little-endian
integer model; `decodeFqCanonical` accepts exactly values below the modulus.
The proof covers fixed-width left inversion, accepted-wire injectivity,
noncanonical values, the seven spare high bits of the 384-bit container,
wrong/trailing byte counts, and component lifts through Fq12.

Theorem statements, verbatim:

```lean
theorem encodeLE_decodeLE (xs : List UInt8) :
    encodeLE xs.length (decodeLE xs) = xs := by

theorem decodeLE_encodeLE_of_lt (width n : Nat) (h : n < 256 ^ width) :
    decodeLE (encodeLE width n) = n := by

theorem decodeFqCanonical_injective {x y : FqWire} {v : FqValue}
    (hx : decodeFqCanonical x = some v)
    (hy : decodeFqCanonical y = some v) : x = y := by

theorem decodeFqCanonical_rejects_noncanonical (w : FqWire)
    (h : fqModulus ≤ w.value) : decodeFqCanonical w = none := by

theorem decodeFqCanonical_rejects_spare_bits (w : FqWire)
    (h : 2 ^ 377 ≤ w.value) : decodeFqCanonical w = none := by

theorem decodeFqList_rejects_wrong_length (xs : List UInt8)
    (h : xs.length ≠ 48) : decodeFqList xs = none := by

theorem decodeFqList_exact_consumption {xs : List UInt8} {x : FqValue}
    (h : decodeFqList xs = some x) : xs.length = 48 := by

theorem decodeFq2Canonical_injective {x y : Fq2Wire} {v : Fq2Value}
    (hx : decodeFq2Canonical x = some v)
    (hy : decodeFq2Canonical y = some v) : x = y := by

theorem decodeFq6Canonical_injective {x y : Fq6Wire} {v : Fq6Value}
    (hx : decodeFq6Canonical x = some v)
    (hy : decodeFq6Canonical y = some v) : x = y := by

theorem decodeFq12Canonical_injective {x y : Fq12Wire} {v : Fq12Value}
    (hx : decodeFq12Canonical x = some v)
    (hy : decodeFq12Canonical y = some v) : x = y := by
```

`CanonicalWire.DecoderFamily` now includes the previously missing Fq6 type and
`decodeFq6` signature, so the wire family covers every extension level named by
GAP-01.

`#print axioms`:

```text
'Ipp.CanonicalWire.encodeLE_decodeLE' depends on axioms: [propext]
'Ipp.CanonicalWire.decodeLE_encodeLE_of_lt' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.CanonicalWire.decodeFqCanonical_injective' depends on axioms: [propext, Quot.sound]
'Ipp.CanonicalWire.decodeFqCanonical_rejects_noncanonical' depends on axioms: [propext]
'Ipp.CanonicalWire.decodeFqCanonical_rejects_spare_bits' depends on axioms: [propext]
'Ipp.CanonicalWire.decodeFqList_exact_consumption' depends on axioms: [propext]
'Ipp.CanonicalWire.decodeFq2Canonical_injective' depends on axioms: [propext, Quot.sound]
'Ipp.CanonicalWire.decodeFq6Canonical_injective' depends on axioms: [propext, Quot.sound]
'Ipp.CanonicalWire.decodeFq12Canonical_injective' depends on axioms: [propext, Quot.sound]
```

Focused `lake build Ipp.CanonicalDecode` passed 548 jobs in 46.7 seconds;
after adding the bounded decode/encode direction, `lake build
Ipp.CanonicalGtDecode` passed 549 jobs in 47.4 seconds. Both completed with
warnings only.

### GAP-02 — G1 compressed decode injectivity

**Stalled before a Lean goal could be elaborated.** The session's named
dependency, the pure Mathlib BLS12-377 G1 curve instantiation from S3-C01, is
absent from this branch. There is no G1 affine/projective point type, curve
equation, square-root/sign selector, infinity convention, or reviewed
on-curve facts under `Ipp/`; only GAP-00's abstract
`G1Wire → Option G1` signature exists. The exact unformable target is the
injectivity of the accepted canonical compressed decoder
`decodeG1Canonical : G1Wire → Option G1Point377`, including malformed flags,
infinity uniqueness, root selection, on-curve validity, and exact
consumption. Introducing `G1Point377` or those curve facts as hypotheses here
would merely restate the missing S3-C01 dependency, so no tautological theorem
was added.

### GAP-03 — G2 compressed decode injectivity

**Stalled for the same explicit dependency reason.** S3-C01's BLS12-377 twist
instantiation over Fq2 is absent: no `G2Point377`, twist equation, Fq2 root/sign
selection, infinity convention, or reviewed on-curve facts exist. The exact
unformable target is accepted-wire injectivity for
`decodeG2Canonical : G2Wire → Option G2Point377` with the listed malformed,
infinity, sign, on-curve, and exact-consumption cases. No axiom or abstract
decoder-law assumption was introduced.

### GAP-04 — GT canonical decode injectivity

**Proved** in `Ipp/CanonicalGtDecode.lean`. The pinned PairingOutput wire is
decoded solely as the GAP-01 canonical Fq12 value, while the order-`r`
predicate is modeled as a distinct subsequent filter.

Theorem statements, verbatim:

```lean
theorem decodePairingOutputCanonical_injective
    {x y : PairingOutputWire} {v : PairingOutputValue}
    (hx : decodePairingOutputCanonical x = some v)
    (hy : decodePairingOutputCanonical y = some v) : x = y := by

theorem decodePairingOutputChecked_eq_some_iff
    (member : PairingOutputValue → Bool) (w : PairingOutputWire)
    (v : PairingOutputValue) :
    decodePairingOutputChecked member w = some v ↔
      decodePairingOutputCanonical w = some v ∧ member v = true := by
```

`canonicalDecoderFamily` connects the GAP-01/GAP-04 concrete field and
PairingOutput decoders to GAP-00's decoder signatures while leaving the
dependency-blocked G1/G2 functions explicit.

`#print axioms`:

```text
'Ipp.CanonicalWire.decodePairingOutputCanonical_injective' depends on axioms: [propext, Quot.sound]
'Ipp.CanonicalWire.decodePairingOutputChecked_eq_some_iff' depends on axioms: [propext]
```

Focused `lake build Ipp.CanonicalGtDecode` passed 549 jobs in 27.3 seconds,
warnings only.

### GAP-05 — G1 subgroup/torsion membership statement

**Stalled before elaboration on the named dependency.** S3-C01 and its
reviewed BLS12-377 G1 order/cofactor facts are absent. Consequently there is
no exact checked-membership predicate, scalar multiplication on a G1 curve
model, intended order-`r` subgroup, cofactor decomposition, or identity
semantics to relate. The missing goal is the equivalence between that concrete
checked predicate and order-`r` membership together with exclusion of every
nonidentity cofactor component. No replacement `Prop`, axiom, or assumed
factorization was added.

### GAP-06 — G2 subgroup/torsion membership statement

**Stalled before elaboration on the named dependency.** The S3-C01 G2 twist
model and reviewed order/cofactor/twist facts are absent. The exact missing
goal is checked-membership equivalence to the intended order-`r` subgroup on
the BLS12-377 twist, including identity and exclusion of all nontrivial torsion
components. No abstract fact was promoted as a proof.

### GAP-07 — GT subgroup membership statement

**Stalled after GAP-04 because S3-P00 is absent.** GAP-04 supplies the
canonical Fq12 value, but this branch has no Fq12 multiplication, `1`,
exponentiation, scalar order `r`, zero/identity convention, or reviewed
factorization facts. The exact unformable goal is equivalence of the pinned
checked PairingOutput predicate with `x ^ r = 1`, and then with the intended
order-`r` target subgroup. `decodePairingOutputChecked_eq_some_iff` deliberately
keeps the later membership predicate explicit rather than assuming this goal.

### GAP-12 — batched GT membership soundness

**Not started because GAP-07 is not available.** GAP-00 already proves the
aggregate contains exactly `4 + 8 * μ` GT wires, but no exact BLS12-377
off-subgroup quotient/factorization, fresh verifier coefficient distribution,
or concrete batch predicate exists in Lean. The missing quantitative goal is
that the actual randomized predicate over all `4 + 8 * μ` decoded values
accepts any list containing an off-subgroup value with at most its stated
field/cofactor error, without adversary-chosen coefficient gaps. Proving only
the coverage count or postulating a random-linear-check lemma would not meet
the session acceptance criteria, so neither was presented as GAP-12.

### NOW batch final verification

- final pinned `LEAN_NUM_THREADS=1 lake build Ipp`: passed 3,339 jobs in 20.6
  seconds, warnings only;
- recursive `Ipp/*.lean` scan: zero `sorry`, project `axiom` declarations, or
  `native_decide`;
- all temporary `NOW-*-Audit.lean` files were removed and no temporary `.log`
  file was created;
- `git diff --check`: passed;
- no commit was made;
- no prover/release-gated circuit tests were applicable or run.

## GAP-00

Implemented in `Ipp/CanonicalWire.lean`.

The canonical byte/component model is:

```lean
abbrev Bytes (n : Nat) := Fin n → UInt8
abbrev FqBytes := Bytes 48
abbrev Fq2Bytes := Bytes 96
abbrev Fq6Bytes := Bytes 288
abbrev Fq12Bytes := Bytes 576

structure FqWire where bytes : FqBytes
structure Fq2Wire where c0 : FqWire; c1 : FqWire
structure Fq6Wire where c0 : Fq2Wire; c1 : Fq2Wire; c2 : Fq2Wire
structure Fq12Wire where c0 : Fq6Wire; c1 : Fq6Wire
structure PointFlags where infinity : Bool; sign : Bool
structure G1Wire where flags : PointFlags; x : FqWire
structure G2Wire where flags : PointFlags; x : Fq2Wire
structure PairingOutputWire where value : Fq12Wire
```

`CommitmentWire` contains three GT `ab` entries and one GT `c` entry plus its
G1 component. `RoundWire` contains left and right commitments. The
`AggregateProofWire` record contains the four top-level GT values (`comA`,
`comB`, `comC`, `ipAb`), `aggC`, both final-key pairs, the three final-message
points, and `Fin μ → RoundWire`.

The curve-dependent decoder signatures are:

```lean
structure DecoderFamily (F Fq2 Fq12 G1 G2 GT : Type*) where
  decodeFq : FqWire → Option F
  decodeFq2 : Fq2Wire → Option Fq2
  decodeFq12 : Fq12Wire → Option Fq12
  decodeG1 : G1Wire → Option G1
  decodeG2 : G2Wire → Option G2
  decodePairingOutput : PairingOutputWire → Option GT
```

The exported `decodeFq`, `decodeFq2`, `decodeFq12`, `decodeG1`, `decodeG2`,
and `decodePairingOutput` definitions are projections of this bundle. They
assert no field, curve, subgroup, or pairing law; those remain GAP-01..07.

Coverage lemma, verbatim:

```lean
theorem aggregateProofWire_coverage {μ : Nat} (p : AggregateProofWire μ) :
    p.gtElements.length = 4 + 8 * μ ∧
    p.g1Elements.length = 5 + 2 * μ ∧
    p.g2Elements.length = 3 := by
  exact ⟨p.gtElements_length, p.g1Elements_length, p.g2Elements_length⟩
```

The traversal definitions include every top-level and per-round field. The GT
count is four top-level values plus eight per round; the corresponding G1 and
G2 counts are five plus two per round, and three top-level respectively.

Focused result:

- `LEAN_NUM_THREADS=1 C:\Users\acyrn\.elan\toolchains\leanprover--lean4---v4.30.0\bin\lake.exe build Ipp.CanonicalWire` — passed (547 jobs).
- `#print axioms Ipp.CanonicalWire.aggregateProofWire_coverage` —
  `[propext, Quot.sound]`; no `sorryAx`, project axiom, or `native_decide`.
- Decoder projection `Ipp.CanonicalWire.decodeFq` has no axioms.

Final full-build result and final forbidden-token scan are recorded below after
the gate. No prover/release-gated tests were run; GAP-00 is pure Lean framing
and coverage only. GAP-01..07 remain responsible for canonical decode
injectivity and subgroup/torsion proofs; no per-component injectivity was
attempted here.

Final gate:

- `LEAN_NUM_THREADS=1 C:\Users\acyrn\.elan\toolchains\leanprover--lean4---v4.30.0\bin\lake.exe build Ipp` — passed (3328 jobs, about 208 seconds).
- `Ipp/*.lean` forbidden-token scan for `sorry`, `axiom `, and `native_decide` — clean.
- `git diff --check` — passed.

## S2/S3 kickoff

Scope: four phases in order. No commit was made. Cargo, hax, Rust/F*/opam, and
the gnark Lean lane were not run or touched because this Windows host lacks
MSVC Build Tools and the Windows SDK.

### Phase 1 — S2 Tier 2 challenge encoding

Added `Ipp/ChallengeEncoding.lean`. It models the exact Rust framing

```text
"shieldd.snarkpack.challenge.v1\0"
|| u32_le(stage_label.len())
|| stage_label
|| context[32]
|| u64_le(nonce)
|| messages
```

as `List UInt8`, including all twelve deployed labels accepted by
`challenge.rs`. `Context` and `Nonce` are fixed-width 32- and 8-byte vectors;
every 8-byte vector is exactly one `u64` little-endian representation. The
checked label-length premise is proved for every closed `Stage` constructor.

New theorems:

- `Ipp.ChallengeEncoding.stageLabel_length_lt_u32`;
- `Ipp.ChallengeEncoding.challengePreimage_injective`;
- `Ipp.ChallengeEncoding.serialized_challenge_preimage_injective`.

The first injectivity theorem proves that equality of encoded bytes recovers
the stage label, context, nonce, and arbitrary final message bytes. Thus the
domain constant, `u32_le` label-length framing, all stage-label distinctions,
fixed 32-byte context boundary, fixed 8-byte nonce boundary, and unbounded final
message suffix are proved collision-free. The serializer lift proves full typed
payload injectivity from exactly `Function.Injective serialize`.

The reduced serializer row is verbatim:

```text
| `assume.challenge-message-serialization-injective` | proof-aggregation maintainers | Connects the typed `ChallengePoint` payload objects to the final `messages` byte field framed by `challenge_preimage`. | Curve/field object serialization is outside the framing theorem. | Postcondition: for each deployed stage payload type, the exact Rust serializer used to build `messages` is injective; `Ipp.ChallengeEncoding.serialized_challenge_preimage_injective` then proves full `(stage, context, nonce, payload)` preimage injectivity. | prove canonical arkworks field/group serialization injective on checked subgroup objects and prove each stage's fixed-field concatenation equals the serializer supplied to the Lean theorem | security/crypto/formal | assumed |
```

Accordingly, the `fs.challenge-preimage` framing sub-facts are proved; typed
field/group-object-to-`messages` injectivity is reduced to that row. Rust-to-Lean
execution/byte parity remains the hax/F* and trace boundary, and hash-as-RO is
unchanged. `formal-handoff.md` now records the Lean theorem alongside the
existing hax/F* byte-layout proof rather than claiming that the new theorem
proves executed-Rust parity.

### Phase 2 — S2 Tier 1 design

Wrote
`crates/crypto/proof-aggregation/formal/snarkpack/s2-tier1-plan.md`. It inventories
the exact `gipa.rs` fold/rescale/final-key/base functions, TIPA coefficient,
product-evaluation, and G1/G2 KZG-verifier functions, and the executed
Groth16 aggregate verification chain. Each entry has a theorem-shaped target
against `foldMsg`, `foldCom`, `foldKey`/`transcriptCoeffs`, `terminalFold`,
`LeafData`, `FsAccepts`, and the exact KZG accept equations. It also specifies
the arithmetic-trait adapter, extraction order, target/boundary metadata
updates, ledger rows retired, and stop conditions.

Verdict: **GO on a toolchain-capable host; no-go on this host**. Estimate:
8–12 engineer-weeks, with a stop/go review after coefficient and
`rescale_fold` equivalence. Hax was not run.

### Phase 3 — arithmetic implementation-correctness design

Wrote
`crates/crypto/proof-aggregation/formal/snarkpack/s3-arithmetic-plan.md`. It fixes
the API boundary at arkworks `0.5.0` BLS12-377 field, short-Weierstrass,
MSM, Miller-loop, final-exponentiation, and multi-pairing operations. The field
decision prefers a fiat-crypto-verified swap only if corpus-backed aggregate and
verify measurements on the real prover path are within/above the playbook's
noise gate; otherwise hax post-hoc arkworks verification requires a successful
limb multiplication/reduction spike.

The EC plan uses the pinned Mathlib affine/projective/Jacobian formula modules,
nonsingular points, coordinate conversions, and `AddCommGroup` instances. Its
theorems relate monomorphized arkworks formulas to Mathlib point-class addition,
doubling, negation, scalar multiplication, subgroup checks, and MSM. The pairing
plan splits executable Miller-loop/final-exponentiation conformance from the
cited mathematical statement that the pinned published optimal-ate pseudocode
computes a non-degenerate bilinear pairing. The latter remains a literature row
because the pinned Mathlib has no cryptographic ate-pairing/divisor correctness
stack. S3 explicitly does not prove curve security.

Verdict: **NO-GO as one monolithic campaign; GO as gated field, EC, and pairing
stages**. Estimate: 15–26 engineer-months after S2 extraction works.

### Phase 4 — S1 U5a hardening

The attempt did not hit the previous public-boundary blocker. Strengthened the
cached verifier postcondition in `Ipp/FsFork.lean` to retain the accepted KZG
cache entry and exported:

- `accepted_source_kzg_query`;
- `accepted_source_randomizer_query`.

Added the corresponding support-to-log witnesses and concrete probability
theorems in `Ipp/FsBadEvents.lean`:

- `accepted_badKzg_log_witness`;
- `accepted_badRandomizer_log_witness`;
- `kzg_z_bound_of_query_bound` and `kzg_z_bound`;
- `randomizer_rootset_bound`.

`kzg_z_bound` proves the exact `Q*dZ/|F|` budget from
`IsTotalQueryBound (FsGame stmt adv) (Q qb)` and `badZ.card <= dZ`.
`randomizer_rootset_bound` first proves the stronger unconditional source-miss
bound `Q*|badR|/|F|`, then weakens it to the budget's
`Q*dR/(|F|-2)` using `badR.card <= dR`. No rejection-loop conditioning
assumption is needed for this event-subset argument.

The two `BadEventBudget` fields remain parametric in the current S1 theorem only
because that interface accepts abstract `Set`s and does not carry the whole-game
query-bound/cardinality premises. The ledger rows now say exactly how to remove
them. Collision still needs an adaptive structured-pair bound; dependency and
round order still need protocol-local guessing reductions; round-unqueried stays
parametric by design; quantitative `wrapFs` pushforward remains independent.

### Verification

Focused builds passed:

- `lake build Ipp.ChallengeEncoding` (547 jobs);
- `lake build Ipp.FsFork` (3314 jobs);
- `lake build Ipp.FsBadEvents` (3316 jobs).

Final pinned `LEAN_NUM_THREADS=1 lake build Ipp` passed (3327 jobs, 46.5 seconds
with the focused-build cache warm).

Explicit axiom audit:

```text
'Ipp.ChallengeEncoding.stageLabel_length_lt_u32' does not depend on any axioms
'Ipp.ChallengeEncoding.challengePreimage_injective' depends on axioms: [propext, Quot.sound]
'Ipp.ChallengeEncoding.serialized_challenge_preimage_injective' depends on axioms: [propext, Quot.sound]
'Ipp.accepted_source_kzg_query' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.accepted_badKzg_log_witness' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.kzg_z_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.randomizer_rootset_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No `sorry`, project `axiom`, or `native_decide` was introduced. No
prover/release-gated circuit tests were applicable or run.

## S2/S3 continuation

Scope: pure Lean continuation only. No commit was made. Cargo, hax, Rust,
F*/opam, and the gnark Lean lane were not run. All Lean invocations used the
pinned Lean 4.30.0 `lake.exe`, `LEAN_NUM_THREADS=1`, and one Lean/Lake process
at a time.

### U5a budget discharge

`Ipp/FsMissBounds.lean` now exposes the structured answer sequence explicitly
and proves its parity with the flattened fork log. The adaptive birthday stack
is complete:

- `structured_answer_mem_at_le` bounds a fixed structured ordinal while
  ignoring ambient queries;
- `structured_answer_collision_at_le` conditions the later ordinal on the
  earlier sampled singleton;
- `structured_answer_collision_before_le` unions over ordered pairs;
- `structured_answers_not_injective_le` transports failure of
  `StructuredAnswersInjective` through the total query cap.

`Ipp.answer_collision_bound` therefore proves the accepted collision event is
at most `Q^2/card(F)`. The adaptive-collision blocker closed after ten narrow
`Ipp.FsMissBounds` proof/build iterations; no parametric collision premise
remains.

`BadEventBudget` was replaced rather than compatibility-wrapped. Its bad sets
are finite carriers and the discharged fields were deleted. Field status is:

- fully concrete probability bounds: `answer_collision_bound`,
  `randomizer_rootset_bound`, and `kzg_z_bound`;
- conditional probability fields: none. Their non-probabilistic prerequisites
  are explicit inputs to `q0_lower_bound`: the whole-game query cap and finite
  carrier cardinalities. `s1_soundness` proves the randomizer carrier equality
  and `badR.card <= 2^μ-1` internally, and retains only `hquery` and
  `hZcard`;
- parametric residual fields: `dependency_order_bound`,
  `round_slot_order_bound`, `round_unqueried_bound`, and
  `wrapped_good_lower_bound`.

`BadEventBudget.ofBounds` now assembles exactly those four residual fields.
`q0_lower_bound` constructs collision, randomizer, and KZG bounds internally
from the query/cardinality prerequisites. `s1_soundness` now accepts finite
`badZ`, its cardinality fact, the whole-game query bound, and the four-field
residual budget. `s1BadRandomizers`, `coe_s1BadRandomizers`, and
`s1BadRandomizers_card` construct and discharge the discrepancy carrier.

The two protocol-order goals did not close. Their exact remaining probability
statements are:

```lean
Pr[fun z => Accepted z ∧ BadDependency qb stmt z | fsProbComp stmt adv] ≤
  ((μ * Q qb : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)

Pr[fun z => Accepted z ∧ BadRoundOrder qb z | fsProbComp stmt adv] ≤
  ((μ * Q qb : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)
```

The sharpened blocker is not adaptive answer collision. `BadDependency` must
extract an early round-point payload whose embedded `prev` guessed the later
x0/previous-round answer; `BadRoundOrder` must extract the analogous
cross-round prequery. Neither event is a collision between two logged answers,
so the completed birthday theorem cannot discharge it. A new point-payload
guessing lemma, indexed by `(level, early miss ordinal)`, plus accepted-trace
reductions to that lemma are required to obtain the requested `μ*Q/card(F)`
shape. `round_unqueried_bound` and quantitative `wrapFs` pushforward remain the
previously documented independent boundaries.

### Final `s1_soundness` assumption surface

The explicit theorem inputs are:

- computational binding: `hbindV`, `hbindW : KzgStructuredKeyBinding` and
  `hbindA`, `hbindB : PairingCommitmentBinding`;
- commitment/model premises: `hComA`, `hComB`;
- finite bad-set/query facts: `hZcard`, `hquery`; the randomizer carrier and
  bound are internal theorems;
- residual ROM bundle `H : BadEventBudget ...` with the four fields above;
- the quantitative positivity premise `hpositive`.

Thus the final surface is not yet only the two named cryptographic assumption
families. The explicit axiom audit is:

```text
'Ipp.s1_soundness' depends on axioms: [propext, Classical.choice, Quot.sound]
```

### S2 Tier-2 deepening

`Ipp/ChallengeEncoding.lean` adds:

- `challengePreimage_stage_eq`, a narrow stage recovery theorem;
- `append_serializers_injective`, reducing fixed-length field concatenation to
  injectivity of each canonical component serializer;
- `fixed_pair_serialization_injective`, proving the byte boundary between two
  fixed vectors cannot collide.

`Ipp/FsGame.lean` now maps the five modeled `ChallengePoint` constructors to
the exact deployed stages with `challengePointStage`. `challengePointPreimage`
uses the proved byte framing, and `challengePoint_frame_eq_same_constructor`
proves that equal framed bytes imply the same constructor. The model's
constructor-disjointness claim is therefore backed by deployed label framing,
not merely asserted from inductive tags. The residual serializer row is now
limited to injectivity/parity of canonical field/group component serializers;
fixed-length concatenation and cross-stage separation are proved in Lean.

### Ledger and verification

`formal-handoff.md` deletes the three discharged assumption rows:
`assume.ro-answer-collision-union-bound`,
`assume.ro-randomizer-rootset-union-bound`, and
`assume.ro-kzg-z-union-bound`. The S1 row now records the four residual ROM
hypotheses, and the serializer row records the component-concatenation and
`ChallengePoint` framing theorems. The dependency/order, round-unqueried, and
wrapped-transport rows remain assumed.

Focused builds passed for `Ipp.FsMissBounds`, `Ipp.FsBadEvents`,
`Ipp.ChallengeEncoding`, `Ipp.FsGame`, and `Ipp.S1`. The final pinned
`LEAN_NUM_THREADS=1 lake build Ipp` passed: the cold invalidation run took
386 seconds and rebuilt `Ipp.FsFork`, `Ipp.FsMissBounds`, `Ipp.FsBadEvents`,
and `Ipp.S1`; the final post-signature-reduction run passed 3327 jobs in
19.6 seconds with warnings only.

The recursive `Ipp/*.lean` scan found zero `sorry`, project `axiom`
declarations, or `native_decide`; `git diff --check` passed. The direct
`check-snarkpack-invariants.sh` body passed with `snarkpack invariants ok` under
a temporary tracked-tree `git grep` compatibility wrapper (removed after the
run); the stock fallback timed out because it recursively scanned the OneDrive
tree without `rg`. No prover/release-gated circuit tests were applicable or
run.

## U5a residual discharge

Scope: pure Lean on the pinned `v4.30.0` toolchain, one Lean/Lake process at a
time with `LEAN_NUM_THREADS=1`. No commit was made. Two of the four residual
fields were discharged; the two requested protocol-order bounds remain
parametric after the adaptive-selection obstruction below was isolated.

### Field status

1. `assume.fs-wrapped-probability-transport` — **proved and deleted**.
   `Ipp.probEvent_wrapFs_eq` proves exact event-mass preservation, not only the
   requested inequality:

   ```lean
   Pr[fun z => q ({ out := z.1, trace := fsPointTrace z.2 },
       flattenFsLog z.2) |
     replayFirstRun (fsRandomFunction oa)] =
   Pr[q | replayFirstRun (wrapFs oa)]
   ```

   The proof inducts over `OracleComp`, couples both ambient and structured
   query branches, and handles the distinct source/wrapped inherited `Fintype`
   instances by explicit cardinality equivalences. The protocol specialization
   `Ipp.wrapped_good_probability_eq` gives equality between source
   accepted-and-good mass and wrapped good-event mass. The
   `BadEventBudget.wrapped_good_lower_bound` field was deleted and `S1` now uses
   the theorem directly.

2. `assume.ro-dependency-order-union-bound` — **partial; remains parametric**.
   The exact intended per-`(level, early miss ordinal)` step would have to show
   that an early round/x0 payload guess matches the later accepted x0,
   randomizer, or previous-round answer with mass at most `1/card(F)`. The
   sharpened blocked event has the shape

   ```lean
   Accepted z ∧ sourceLog[k] = (round guess coms nonce, answer) ∧
     answer ≠ 0 ∧ k < targetSlot z ∧ acceptedTarget z = guess
   ```

   at probability `≤ 1/card(F)`. `structured_answer_mem_at_le` can bound a
   fixed later raw miss ordinal, but `acceptedTarget z` is selected from an
   adaptive set of later candidate points. In the current game `adv` chooses
   the proof after its RO queries: it can query several early round payloads,
   query several x0/target payload candidates (varying proof payload/nonce),
   observe their answers, and output the proof selecting a matching pair. Thus
   the model supplies a candidate-pair/birthday game, not the single fresh
   sample needed for `μ*Q/card(F)`. A sound removal path is either a
   commitment/non-adaptive payload-selection invariant before these samples or
   a separately proved `Q^2/card(F)`-style pair bound. No such redesign was
   silently introduced.

3. `assume.ro-round-slot-order-union-bound` — **partial; remains parametric**.
   Its adjacent-round reduction reaches the same wall: a later-round point's
   `prev` must equal an accepted earlier-round answer, but the accepted proof
   and both candidate point sets remain selectable after adaptive RO queries.
   The missing quantitative step is the analogous fixed-level event above with
   `acceptedTarget` equal to the preceding round challenge. Support-level
   chronology and transcript chaining identify the required equality, but do
   not collapse the adaptively selected later candidate set to one raw miss.
   The ledger now records the commitment/non-adaptivity or pairwise-bound design
   choices explicitly.

4. `assume.ro-round-unqueried-bound` — **proved at zero and deleted**.
   `Ipp.accepted_not_badUnqueried` uses the exported accepted round-query
   witness and `fsPointTrace_mem_of_queryAnswered` to put every accepted round
   point in the structured miss trace. `fsPointTrace_length_le` plus the
   whole-game `Q qb = qb + 1` cap puts its first occurrence in the fork budget.
   Therefore `Ipp.round_unqueried_bound` proves

   ```lean
   Pr[fun z => Accepted z ∧ BadUnqueried qb z | fsProbComp stmt adv] = 0
   ```

   The `BadEventBudget.round_unqueried_bound` field, `bUnq`, and its
   `badEventError` term were deleted.

`BadEventBudget` and `BadEventBudget.ofBounds` now contain exactly two fields:
`dependency_order_bound` and `round_slot_order_bound`.

### Final `s1_soundness` surface

The printed explicit inputs are:

- computational binding: `hbindV`, `hbindW : KzgStructuredKeyBinding` and
  `hbindA`, `hbindB : PairingCommitmentBinding`;
- commitment/model openings: `hComA`, `hComB`;
- finite KZG carrier and whole-game facts: `hZcard`, `hquery`;
- residual `H : BadEventBudget ...`, now containing only the dependency-order
  and round-slot-order probability fields;
- quantitative positivity: `hpositive`.

There is no transport, collision, randomizer, KZG, round-unqueried, or `bUnq`
premise. The success target of zero parametric bad-event fields was not reached
because the two order bounds above remain explicit.

Explicit axiom audit:

```text
'Ipp.probEvent_wrapFs_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.wrapped_good_probability_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.round_unqueried_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.s1_soundness' depends on axioms: [propext, Classical.choice, Quot.sound]
```

### Ledger and verification

`formal-handoff.md` promotes wrapped probability transport and accepted
round-in-budget to proved theorem rows and deletes their assumption rows. The
S1 row now names only the two residual order hypotheses. The remaining two
assumption rows record the adaptive candidate-selection blocker and the two
honest removal paths.

- focused `lake build Ipp.FsFork`: passed (3315 jobs, 67.3 seconds on the final
  focused transport run);
- focused `lake build Ipp.FsBadEvents`: passed (3317 jobs; the final invalidated
  unqueried run took 120.1 seconds);
- focused `lake build Ipp.S1`: passed (3318 jobs, 73.2 seconds after signature
  reduction);
- final pinned `LEAN_NUM_THREADS=1 lake build Ipp`: passed, 3327 jobs, 147.1
  seconds, warnings only;
- `snarkpack-invariants`: passed with `snarkpack invariants ok` by running the
  script under Git Bash with a temporary tracked-tree `git grep` compatibility
  wrapper; the wrapper was removed;
- recursive `Ipp/*.lean` scan: `sorry` 0, project `axiom` declarations 0,
  `native_decide` 0;
- `git diff --check`: passed;
- no prover/release-gated circuit tests were applicable or run.

## S2 Tier1 kickoff

### Target and extraction scope

The kickoff target is `ark_ip_proofs::gipa::fold_output`, the smallest S2
theorem-sized target in `s2-tier1-plan.md`. The production function is a
straight-line mutation: `mem::take(current)`, two calls to the executed
`mul_helper`, and two additions. The default `parallel` feature does not affect
this closure. `bench-baseline` is disabled and remains outside the release
gate.

Hax's `-i` selector is not supported by the Aeneas backend and is ignored. The
working scope control is Charon's `--start-from`, which follows only the named
function's referenced closure. Cargo's target directory must be on WSL's ext4
filesystem rather than the OneDrive/DrvFS source tree, and the cold Charon
build must be serialized on this machine.

Exact working PowerShell/WSL invocation:

```text
wsl -d Ubuntu -e bash -lc 'source $HOME/.cargo/env; export PATH=/root/.cargo/bin:$PATH; export CARGO_TARGET_DIR=/root/.cache/shieldd-hax-target; export CARGO_BUILD_JOBS=1; eval $(opam env --switch=hax 2>/dev/null); cd /mnt/c/Users/acyrn/OneDrive/Documents/source/shieldd/crates/crypto/proof-aggregation/src/ipp/ip_proofs; cargo hax into -v --output-dir /root/shieldd-s2-fold-output-scoped aeneas-lean --charon-args='"'"'--start-from crate::gipa::fold_output'"'"' --lakefile'
```

The operative Cargo command is therefore:

```text
cargo hax into -v \
  --output-dir /root/shieldd-s2-fold-output-scoped \
  aeneas-lean \
  --charon-args='--start-from crate::gipa::fold_output' \
  --lakefile
```

The command completed successfully. Charon emitted a 98,925-byte LLBC file and
Aeneas translated it in 0.379 seconds. Artifact hashes are:

```text
3af81530a773d466f6a1108c038a5f9c1338beda9957de50786696f3d472f1d6  ark_ip_proofs.llbc
35ca6256244053dc76be6732a4f2764a4ccb20e0e55622f0a1e210adb52e792d  Types.lean
79241f3b828ad6169c19fcc1a8fb867b459a31229e5293e7694650e1df5bddab  Funs.lean
6423f1ceba71a299545f2c174a67f6ef7871d3c66db66debd65f4faf68bcfb34  FunsExternal_Template.lean
```

The installed hax reports untagged commit
`c8e27c5945f7fc5791939cff7c1277f4ab768fe1`. Hax warned that the Aeneas
binary reports commit `unknown` rather than the expected `e0a1596`; this did
not prevent LLBC import or Lean generation. That provenance warning must be
removed before generated-code freshness becomes a release gate.

### Extracted Lean and runtime integration

The generated semantic definitions are:

```lean
def mul_helper
  {T : Type} {F : Type} (mulAssignInst : core.ops.arith.MulAssign T F)
  (cloneT : core.clone.Clone T) (cloneF : core.clone.Clone F)
  (t : T) (f : F) : Result T := do
  let clone ← cloneT.clone t
  let f' ← cloneF.clone f
  mulAssignInst.mul_assign clone f'

def gipa.fold_output
  {T : Type} {S : Type} (cloneT : core.clone.Clone T)
  (defaultT : core.default.Default T) (addT : core.ops.arith.Add T T T)
  (mulAssign : core.ops.arith.MulAssign T S)
  (cloneS : core.clone.Clone S)
  (left current right : T) (c c_inv : S) : Result T := do
  let (current_value, _) ← core.mem.take defaultT current
  let t ← mul_helper mulAssign cloneT cloneS left c
  let t1 ← addT.add t current_value
  let t2 ← mul_helper mulAssign cloneT cloneS right c_inv
  addT.add t1 t2
```

The raw Aeneas project pins Lean `v4.30.0-rc2`, Aeneas `e0a1596`, and Hax
Lean `v0.1.0`. Its blanket `import Aeneas` builds unrelated upstream tactic
benchmark modules such as `AeneasMeta.Async.Test` and
`Aeneas.Tactic.Step.Test`; that support project is not compatible as a clean
dependency of the repository's final Lean `v4.30.0` build. It was fetched for
evaluation but is neither retained in `lakefile.lean` nor vendored wholesale.

Instead, `Ipp/Extracted/AeneasRuntime.lean` vendors the exact executable subset
needed here: Aeneas-shaped `Error`/`Result`, lawful result bind, `Clone`,
`Default`, and a transparent `core.mem.take` returning `(old, default)`. It has
no axiom. `Ipp/Extracted/FoldOutputGenerated.lean` preserves the generated
`mul_helper` and `fold_output` bodies, with generator metadata attributes and
the oversized umbrella import removed. The target-specific runtime is not a
claim that future Vec/iterator/loop extractions need no additional Aeneas
semantics; every extension must be recorded at the extraction boundary.

### Refinement theorem

`Ipp/Extracted/FoldOutput.lean` supplies transparent S2 adapters:

- clone is identity in `Result.ok`;
- default is `Result.ok 0`;
- addition is `Result.ok (x + y)`;
- multiplication-assignment is `Result.ok (s • x)`.

The completed theorem is:

```lean
theorem hax_translated_fold_output_eq_foldCom
    {F M : Type} [Field F] [AddCommGroup M] [Module F M]
    (left current right : M) (c : F) (_hc : c ≠ 0) :
    ark_ip_proofs.gipa.fold_output
        (cloneModel M) (defaultModel M) (addModel M) (smulAssignModel F M)
        (cloneModel F) left current right c c⁻¹ =
      .ok (Ipp.foldCom c left current right) := by
  rfl
```

Status: proved, not scaffolded. No bridging lemma is needed for this target;
the generated monadic binds and `mem::take` reduce definitionally through the
transparent runtime and adapters. The `c ≠ 0` premise records the verifier
call-site condition; `fold_output` itself accepts `c_inv` as an explicit input.

### Metadata and verification

`hax-targets.txt` now records `mul_helper` and `gipa::fold_output`.
`hax-extraction-boundary.md` records their trait/arithmetic boundary,
bench-only exclusion, and the executable `core_mem_take` postcondition.

- focused pinned Windows `LEAN_NUM_THREADS=1 lake build
  Ipp.Extracted.FoldOutput`: passed, 1,673 jobs;
- full pinned Windows `LEAN_NUM_THREADS=1 lake build Ipp`: passed, 3,335 jobs,
  warnings only;
- theorem axiom audit: `[propext, Classical.choice, Quot.sound]` only;
- `scripts/check-snarkpack-invariants.sh`: passed with
  `snarkpack invariants ok` using a temporary tracked-tree `rg` compatibility
  wrapper; the wrapper was removed;
- `Ipp/Extracted/*.lean`: no `sorry`, project `axiom` declaration, or
  `native_decide`;
- scoped `git diff --check`: passed;
- no prover, release-gated circuit, `bench-baseline`, or Rust test suite was
  run. The WSL Charon invocation itself compiled the selected Rust crate and
  dependencies.

### Go-forward

Use `--charon-args='--start-from crate::<path>'`, the ext4 Cargo target, and
`CARGO_BUILD_JOBS=1` for every remaining S2 extraction. Do not use hax `-i` for
the Aeneas backend and do not broaden to the entire aggregation crate.

The next stop/go slice should add one target at a time: the transcript
coefficient/evaluation helpers (S2-06/S2-07) or `rescale_fold` (S2-03). Those
will introduce Vec/iterator or loop semantics; add only their observed Aeneas
runtime definitions, with executable postconditions and no opaque result shim.
Keep the full Aeneas runtime external until a pinned final-4.30-compatible
revision excludes its tactic tests. After each target, preserve the raw LLBC
and generator hashes, prove the adapter/refinement theorem, run the focused
module plus full `lake build Ipp`, and stop if the executed result needs an
opaque semantic assumption.

## S2 Tier1 scale-out (serial)

This pass covered the first three extractable targets in the requested order.
No commit was created. Rust changes were limited to behavior-preserving
extraction refactors: named free helpers, hax-only indexed loops, and the
existing production Rayon/iterator paths retained under `not(hax_compilation)`.
The adapted crate built and passed its tests in both configurations:
`cargo build -p ark-ip-proofs`, normal `cargo test -p ark-ip-proofs`
(16 passed, 2 ignored), and hax `RUSTFLAGS='--cfg hax_compilation'
cargo test -p ark-ip-proofs` (16 passed, 2 ignored). The hax backend emitted
its known Aeneas version warning (expected `e0a1596`, found `unknown`).

### gipa::rescale_fold

- Rust adapted for extraction: the method now delegates to the named
  `rescale_fold_inner`. Under `hax_compilation` it uses a sequential
  indexed loop; the production thresholded Rayon path is unchanged.
- Hax invocation:

  `cargo hax into -v --output-dir /root/shieldd-s2-rescale-fold-scoped-hax2 aeneas-lean --charon-args='--start-from crate::gipa::rescale_fold_inner' --lakefile`

- Extraction completed. The generated loop body was integrated as
  `Ipp/Extracted/RescaleFoldGenerated.lean`, using the observed range
  iterator support added to `AeneasRuntime.lean`.
- Result: scaffolded, not proved. The exact refinement statement is:

  `def rescale_fold_refinement_statement
      {F M : Type} [Field F] [AddCommGroup M] [Module F M]
      {n : ℕ} (scaled_half unscaled_half : Fin n → M) (scalar : F) : Prop :=
    ark_ip_proofs.gipa.rescale_fold_inner
        (cloneModel M) (addModel M) (smulAssignModel F M) (cloneModel F)
        (finSlice scaled_half) (finSlice unscaled_half) scalar =
      .ok (finVec (Ipp.foldMsg scalar (Fin.addCases unscaled_half scaled_half)))`

  The remaining goal is the list-backed Aeneas Vec traversal equals the
  Fin-indexed `Ipp.foldMsg`; no bridge or admission was added.
- Ledger: `ark_ip_proofs::gipa::rescale_fold_inner` was added to
  `hax-targets.txt` and given a scaffolded row in
  `hax-extraction-boundary.md`; no abstract-trace row was promoted.

### gipa::_compute_final_commitment_keys

- Rust adapted for extraction: the old method body was moved to the named
  `compute_final_commitment_keys` helper. The hax path uses a sequential
  `msm_keys_extraction` loop; normal and bench-baseline paths retain their
  existing MSM implementations.
- Hax invocation:

  `cargo hax into -v --output-dir /root/shieldd-s2-final-keys2 aeneas-lean --charon-args='--start-from crate::gipa::compute_final_commitment_keys' --lakefile`

- Result: scaffolded. Charon compiled the target, but Aeneas stopped before a
  usable Lean function on the mixed mutually-recursive
  `ark_ff::Field`/`PrimeField`/`FftField` associated-type group and the
  `DoublyHomomorphicCommitment::msm_keys` closure. The reported failure was
  Aeneas internal error while translating `compute_final_commitment_keys`;
  no opaque runtime assumption was introduced.
- The exact no-sorry scaffold is
  `final_commitment_keys_refinement_statement`: for arbitrary translated
  `G × G`, it requires equality to
  `(Ipp.msm (Ipp.transcriptCoeffs (fun j => (x j)⁻¹) 1) ckA,
  Ipp.msm (Ipp.transcriptCoeffs x 1) ckB)`.
- Ledger: `ark_ip_proofs::gipa::compute_final_commitment_keys` was added to
  `hax-targets.txt` and given a scaffolded blocker row in
  `hax-extraction-boundary.md`; no abstract-trace row was promoted.

### tipa::polynomial_coefficients_from_transcript

- Rust adapted for extraction: the production itertools/interleave
  implementation remains unchanged; a hax-only indexed nested loop preserves
  the same coefficient placement and zero padding.
- Hax invocation:

  `cargo hax into -v --output-dir /root/shieldd-s2-coefficients2 aeneas-lean --charon-args='--start-from crate::tipa::polynomial_coefficients_from_transcript' --lakefile`

- Extraction completed through Aeneas. Its generated Vec/array/index support
  graph was not silently replaced; it remains to be integrated into the
  vendored runtime. The exact scaffold is:

  `def polynomial_coefficients_refinement_statement : Prop :=
    ∀ {F : Type} [Field F] {μ : ℕ} (x : Fin μ → F) (rShift : F)
      (coefficients : List F),
      coefficients.length = 2 ^ (μ + 1) - 1 ∧
      (∀ i : Fin (2 ^ μ), coefficients[2 * (i : ℕ)]? =
        some (Ipp.transcriptCoeffs x rShift i)) ∧
      (∀ i : ℕ, 2 * i + 1 < coefficients.length →
        coefficients[2 * i + 1]? = some 0)`

  It is scaffolded, not proved, and has no `sorry`, project axiom, or
  `native_decide`.
- Ledger: `ark_ip_proofs::tipa::polynomial_coefficients_from_transcript`
  was added to `hax-targets.txt` and given a scaffolded row in
  `hax-extraction-boundary.md`; no abstract-trace row was promoted.

### Remaining S2 Tier1 targets

`tipa::polynomial_evaluation_product_form_from_transcript`,
`tipa::verify_commitment_key_g1_kzg_opening`,
`tipa::verify_commitment_key_g2_kzg_opening`, and the Groth16 aggregation
verify path/PPE were not processed in this serial pass and remain outstanding. No prover or
release-gated circuit tests were run. The final pinned Windows
`LEAN_NUM_THREADS=1 lake build Ipp` passed successfully (3,341 jobs,
warnings only), and `scripts/check-snarkpack-invariants.sh` passed with
`snarkpack invariants ok`.

## S2 Tier1 scale-out (serial)

No commit was created. This continuation used one WSL hax extraction and one
pinned Windows Lean build at a time. The adapted Rust crate passed normal and
hax-configured tests after each extraction refactor: 16 passed, 0 failed, 2
ignored. No prover or release-gated circuit tests were applicable or run.

### Target ledger

`gipa::rescale_fold_inner`, `gipa::compute_final_commitment_keys`, and
`tipa::polynomial_coefficients_from_transcript` were already extracted in the
prior serial section. Their exact no-sorry statements remain in
`Ipp/Extracted/RescaleFold.lean`, `FinalCommitmentKeys.lean`, and
`PolynomialCoefficients.lean`; all three remain scaffolded with, respectively,
the `Vec` traversal/`Ipp.foldMsg` bridge, the Aeneas Field/associated-MSM
blocker, and the coefficient Vec/array support bridge. Their hax invocations
were `/root/shieldd-s2-rescale-fold-scoped-hax2`,
`/root/shieldd-s2-final-keys2`, and `/root/shieldd-s2-coefficients2`.
No abstract-trace row was promoted for any of them.

#### `tipa::polynomial_evaluation_product_form_from_transcript`

Rust gained only an hax-only owned-arithmetic/indexed product loop; the
production iterator path is unchanged. Hax completed with:

`cargo hax into -v --output-dir /root/shieldd-s2-product-form4 aeneas-lean --charon-args='--start-from crate::tipa::polynomial_evaluation_product_form_from_transcript' --lakefile`

The generated code is `Ipp/Extracted/PolynomialEvaluationProductFormGenerated.lean`.
It is scaffolded, not proved by `rfl` or a bridge. The exact statement is:

```lean
def polynomial_evaluation_product_form_refinement_statement
    {F : Type} [Field F] {μ : ℕ} (x : Fin μ → F) (z rShift : F) : Prop :=
  ark_ip_proofs.tipa.polynomial_evaluation_product_form_from_transcript
      (cloneModel F) (oneModel F) (zeroModel F) (addModel F) (mulModel F)
      (finVec x) z rShift =
    .ok (∏ j : Fin μ, (1 + (x j * rShift ^ (2 ^ (j : ℕ))) *
      z ^ (2 ^ (j : ℕ))))
```

The remaining goal is the extracted loop to `Finset.prod` bridge (the initial
`rfl` attempt also exposed the extracted `z`/`rShift` argument reduction).
Ledger row: `scaffolded`; no abstract-trace row promoted.

#### KZG opening verifiers

No production Rust refactor was needed for either verifier. Hax invocations
were `/root/shieldd-s2-kzg-g2` for
`crate::tipa::verify_commitment_key_g2_kzg_opening` and
`/root/shieldd-s2-kzg-g1` for
`crate::tipa::verify_commitment_key_g1_kzg_opening`. Charon completed both;
Aeneas stopped on the mixed arkworks `Pairing`/`PairingOutput` trait group.
Both exact equation statements are scaffolded in `Ipp/Extracted/KzgVerifiers.lean`:

```lean
def verify_commitment_key_g2_kzg_opening_refinement_statement
    {F G1 G2 GT : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT]
    (e : G1 → G2 → GT) (g gBeta : G1) (h : G2)
    (key opening : G2) (eval z : F) (run : Bool) : Prop :=
  run = true ↔
    e g (key - eval • h) - e (gBeta - z • g) opening = 0

def verify_commitment_key_g1_kzg_opening_refinement_statement
    {F G1 G2 GT : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT]
    (e : G1 → G2 → GT) (g : G1) (hAlpha : G2) (h : G2)
    (key opening : G1) (eval z : F) (run : Bool) : Prop :=
  run = true ↔
    e (key - eval • g) h - e opening (hAlpha - z • h) = 0
```

The source theorem is the definition in `KzgVerifiers.lean` (with the exact
single `[AddCommGroup GT]` constraint shown above). Both ledger rows are
`scaffolded`; no abstract-trace row promoted.

#### Groth16 arithmetic helpers

The following behavior-preserving Rust helpers were added solely to isolate
extractable arithmetic: `structured_scalar_final_from_raw_transcript_inner`,
`inverse_powers_with_inverse`, and `build_shifted_ck_2_inner`. The production
wrappers and parallel branches remain unchanged. Cargo tests passed after each
edit. Hax completed in `/root/shieldd-s2-structured-scalar`,
`/root/shieldd-s2-inverse-powers`, and `/root/shieldd-s2-shifted-ck2`, using
the corresponding `--start-from crate::applications::groth16_aggregation::*`
paths. All three generated modules are vendored and all three statements are
scaffolded: indexed Vec-to-model bridges remain, with no `rfl` or bridge proof.
The exact shifted-key statement is:

```lean
def shifted_commitment_key_refinement_statement
    {F G : Type} [Field F] [AddCommGroup G] [Module F G]
    {n : ℕ} (ck : Fin n → G) (powers : Fin n → F) : Prop :=
  ark_ip_proofs.applications.groth16_aggregation.build_shifted_ck_2_inner
      (copyModel G) (mulModel F G) (copyModel F)
      (finSlice ck) (finSlice powers) =
    .ok (finVec (fun i => powers i • ck i))
```

The other two exact statements are:

```lean
def structured_scalar_final_refinement_statement
    {F : Type} [Field F] {μ : ℕ} (x : Fin μ → F) (r : F) : Prop :=
  ark_ip_proofs.applications.groth16_aggregation.structured_scalar_final_from_raw_transcript_inner
      (cloneModel F) (oneModel F) (addModel F) (mulModel F)
      (finSlice (Ipp.reversedView x)) r =
    .ok (Ipp.terminalR r (Ipp.reversedView x))

def inverse_powers_refinement_statement
    {F : Type} [Field F] {n : ℕ} (rInv : F) : Prop :=
  ark_ip_proofs.applications.groth16_aggregation.inverse_powers_with_inverse
      (cloneModel F) (oneModel F) (mulModel F) ⟨n⟩ rInv =
    .ok (finVec (fun i : Fin n => rInv ^ (i : ℕ)))

def inverse_powers_nonzero_refinement_statement
    {F : Type} [Field F] {n : ℕ} (r : F) (hr : r ≠ 0) : Prop :=
  inverse_powers_refinement_statement (n := n) (r⁻¹)
```

Their ledger rows are `scaffolded`, and no abstract-trace row was promoted.

#### Groth16 verify path and PPE

`fold_public_inputs` was attempted with `/root/shieldd-s2-fold-public-inputs`,
`verify_ppe` with `/root/shieldd-s2-ppe`, and the full traced orchestration
with `/root/shieldd-s2-aggregate-trace`. No Rust refactor was needed. Charon
completed, but Aeneas rejected the arkworks Field/group/PairingOutput group.
The full orchestration probe additionally reported the exact first control
flow blocker: `Early returns inside of loops are not supported yet` at
`groth16_aggregation.rs:1376:0-1549:1` in `verify_tipp_mipp`.

The no-sorry abstract boundary is in `Ipp/Extracted/Groth16Verifier.lean`.
The exact principal statements are:

```lean
def fold_public_inputs_refinement_statement
    {F G : Type} [Field F] [AddCommGroup G] [Module F G]
    {m n : ℕ} (gamma : Fin (n + 1) → G) (inputs : Fin m → Fin n → F)
    (r runSum : F) (runGic : G) : Prop :=
  runSum = (∑ i : Fin m, r ^ (i : ℕ)) ∧
    runGic =
      (runSum • gamma 0) +
        ∑ j : Fin n,
          (∑ i : Fin m, r ^ (i : ℕ) * inputs i j) • gamma (Fin.succ j)

def verify_ppe_refinement_statement
    {F G1 G2 GT : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (e : G1 → G2 → GT) (alpha : G1) (beta gamma delta : G2)
    (gIC aggC : G1) (ipAb : GT) (rSum : F) (run : Bool) : Prop :=
  run = true ↔
    e (rSum • alpha) beta + e gIC gamma + e aggC delta = ipAb
```

```lean
def verify_tipp_mipp_refinement_statement
    {F G1 G2 GT : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT]
    {μ : ℕ} (stmt : FsStatement μ F G1 G2 GT)
    (proof : Proof μ F G1 G2 GT) (transcript : FsTranscript μ F)
    (run : Bool) : Prop :=
  run = true ↔ Ipp.LeafData stmt proof transcript

def verify_aggregate_refinement_statement
    {F G1 G2 GT : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT]
    {μ : ℕ} (stmt : FsStatement μ F G1 G2 GT)
    (proof : Proof μ F G1 G2 GT) (transcript : FsTranscript μ F)
    (run : Bool) : Prop :=
  run = true ↔ Ipp.FsAccepts stmt proof transcript
```

The profiled and traced orchestration rows use these exact boundaries plus
their existing profile/trace projections; all Groth16 verify/PPE ledger rows
remain `scaffolded`; no abstract-trace row promoted.

### Final verification and remaining S2

- Pinned Windows `LEAN_NUM_THREADS=1 lake build Ipp`: passed, 3,351 jobs,
  warnings only.
- `scripts/check-snarkpack-invariants.sh`: passed with `snarkpack invariants ok`.
- Focused builds, including `Ipp.Extracted.KzgVerifiers`, passed.
- No new `sorry`, project axiom declaration, or `native_decide`; no new
  semantic axiom was introduced.

All requested S2 Tier 1 targets remain scaffolded: the two GIPA targets, the
two TIPA polynomial targets, both KZG opening verifiers, the three isolated
Groth16 arithmetic helpers, and the Groth16 verify/PPE path. The previously
validated `gipa::fold_output` remains proved by `rfl`. No prover or
release-gated tests were run.

## S2/S3 adapt+continue

### Redesign and plan updates

The pairing blocker was split at a real external-arithmetic boundary instead
of waiting for a concrete S3 pairing. `PairingEquation<G1, G2>` exposes only
the two-pairing zero test needed by the KZG equations. The production
`ArkworksPairingEquation<P>` delegates to the existing
`cfg_multi_pairing::<P>` path and maps failure to `false`; the two generic
equation kernels construct all group operands themselves. Scoped hax/Aeneas
extraction completed for both kernels, and Lean interprets their pairing
dictionary with the existing bilinear map model. This proves the S2 equation
shape without claiming arkworks pairing conformance, which remains S3.

`verify_tipp_mipp` was behavior-preservingly changed to record the first
challenge/inversion error, make later loop iterations no-ops, and return that
error after the loop. The normal and hax-compilation Rust suites pass. A scoped
full-verifier extraction no longer reports hax's early-loop-return diagnostic;
it now stops only in the mixed arkworks field/group/pairing associated-type
graph.

The minimal Aeneas runtime's opaque `partial def loop` was also replaced by a
finite relational `LoopResult` semantics, a uniqueness theorem, an executable
fuel witness, and logical/executable correspondence lemmas. This enabled the
first exact generated-loop proof without replacing generated code.

The adapted status and next steps are recorded in `s2-tier1-plan.md`,
`s3-arithmetic-plan.md`, and `s2-s3-sessions.md`. The two generic kernels were
added to `hax-targets.txt` and `hax-extraction-boundary.md`; the latter also
records the single-exit verifier and proved loop target.

### S2 target status

| Target | Status | Exact result or remaining goal |
| --- | --- | --- |
| `gipa::fold_output` | proved=model (pre-existing) | `hax_translated_fold_output_eq_foldCom` |
| `inverse_powers_with_inverse` | proved=model | `hax_translated_inverse_powers_eq` and the nonzero-inverse specialization prove the extracted vector is `i ↦ rInv^i` |
| G2 generic KZG equation kernel | proved=model | `hax_translated_verify_g2_kzg_eq` and `_true_iff` prove exact operands, sign, order, and boolean equation |
| G1 generic KZG equation kernel | proved=model | `hax_translated_verify_g1_kzg_eq` and `_true_iff` prove exact operands, sign, order, and boolean equation |
| public G1/G2 KZG wrappers | scaffolded | compose extracted product-form evaluation with the proved equation kernels; arkworks pairing conformance is S3 |
| `rescale_fold_inner` | scaffolded | generated-loop/list result equals `Ipp.foldMsg` |
| final commitment keys | scaffolded | arkworks Field/MSM associated-type extraction, then equality with `foldKey`/`transcriptCoeffs` |
| polynomial coefficients | scaffolded | generated nested vector/interleave result has the exact length/even coefficient/odd-zero shape |
| polynomial product evaluation | scaffolded | generated product loop equals `transcript_prod_form_eval` |
| shifted commitment key | scaffolded | generated paired-slice loop is the pointwise scalar action |
| structured terminal scalar | scaffolded | generated squaring/product loop equals `Ipp.terminalR` |
| public-input fold | scaffolded | extracted nested folds equal the Groth16 `gIC` sum |
| prepared PPE | scaffolded | abstract prepared-pairing effect plus exact final equation |
| full `verify_tipp_mipp` | scaffolded | early-return blocker retired; abstract remaining arkworks trait groups and prove `run = true ↔ LeafData` |
| aggregate verifier | scaffolded | compose the verifier, public-input, PPE, and trace/profile projections to `FsAccepts` |

`formal-handoff.md` promotes only the inverse-power portion of
`tipp-mipp.power-sequence` and the G1/G2 accept-shape portions of
`tipp-mipp.kzg-equations`. Product evaluation, shifted-key composition, the
public wrappers, and arkworks arithmetic are explicitly not promoted.

### S3 foundations

`Ipp/Bls12377.lean` starts S3-F00/C01/C02/P00. It pins the exact BLS12-377 base
and scalar moduli and positive optimal-ate loop parameter; proves the parameter
identities and scalar bit/Montgomery-radix bounds; defines `Fq`, `Fr`, `Fq2`,
the G1 curve and exact G2 twist; proves both discriminant formulas; exposes
Mathlib Jacobian G1/G2 group availability from named arithmetic certificates;
defines a typed affine representation with the infinity theorem; and gives an
executable loop-bit Miller/final-exponent split.

The 377/253-bit primality certificates, `-5` nonresidue certificate,
ellipticity instances, exact line/Frobenius/final-exponentiation chain,
arkworks refinement, and published bilinearity/non-degeneracy connection
remain open named goals. The pseudocode is not labeled bilinear. Consequently
GAP-02/03/05/06/07/12 remain gated on the unfinished concrete representation,
decoder/subgroup, and pairing-conformance work.

### Verification

- `cargo test -p ark-ip-proofs --quiet`: 16 passed, 2 ignored, 0 failed after
  each Rust redesign section and again at final handoff.
- `RUSTFLAGS="--cfg hax_compilation" cargo test -p ark-ip-proofs --quiet`:
  16 passed, 2 ignored, 0 failed.
- Pinned Windows Lean with `LEAN_NUM_THREADS=1`: focused new-module builds and
  final `lake build Ipp` passed; the final build completed 3,378 jobs.
- Axiom audit for every new theorem: only `propext`, `Classical.choice`, and
  `Quot.sound` (some arithmetic theorems use a subset).
- No `sorry`, axiom declaration, `admit`, or `native_decide` in the new Lean.
- `scripts/check-snarkpack-invariants.sh`: `snarkpack invariants ok`.
- Temporary extraction/build logs were removed; the pre-existing untracked
  `hooks/` directory was left untouched.
- No prover, circuit, or release-gated tests were applicable or run.

Remaining S2 work is the scaffold list above, led by product evaluation into
the now-proved KZG kernels and the remaining generic arithmetic boundaries for
the full verifier/PPE. Remaining S3 starts with checked large-number
certificates and the exact Fq2/Fq12/curve representation, followed by the
pinned line functions and final-exponentiation chain. No commits were made.

### Serial continuation — extracted loops and S3 representation

This continuation preserved the abstract-pairing redesign and discharged four
more generated Aeneas boundaries. It also corrected the S2-07 scaffold: Rust
starts its factor power at `rShift * z²`, so the model is evaluated at `z²`,
not `z`. No Rust source changed in this continuation.

| Target | Status | Green theorem |
| --- | --- | --- |
| `gipa::rescale_fold_inner` | proved=model | `hax_translated_rescale_fold_eq` proves the exact upper/lower `Ipp.foldMsg` ordering |
| `tipa::polynomial_evaluation_product_form_from_transcript` | proved=model | `hax_translated_polynomial_evaluation_product_form_eq` proves both extracted loops at `z²`; `_eq_coefficients` composes with `transcript_prod_form_eval` |
| `build_shifted_ck_2_inner` | proved=model | `hax_translated_shifted_commitment_key_eq` proves pointwise scalar action and composes with the already-proved inverse powers |
| `structured_scalar_final_from_raw_transcript_inner` | proved=model | `hax_translated_structured_scalar_final_eq` proves arbitrary-round `terminalR` with reversed chronology |

`formal-handoff.md` now promotes these four rows, and
`hax-extraction-boundary.md` marks their generated targets `proved-model`.
The product evaluator and generic G1/G2 KZG equation kernels are individually
proved and ready to compose; the public wrappers themselves remain scaffolded
because their arkworks `Pairing` associated-type graph still does not extract.
The plan/session documents record this narrower remaining boundary.

S3-F00/C02/P00 also advanced without claiming pairing bilinearity:
`Bls12377.lean` proves the base-field 377-bit bounds, finite and infinity
affine-representation witnesses, representation functionality, and the exact
six set bits below the ate loop parameter's leading bit. The large primality
and nonresidue certificates, concrete Fq2/Fq12 representation, line functions,
Frobenius/final-exponentiation chain, and arkworks refinement remain open.
Accordingly GAP-02/03/05/06/07/12 remain gated and no GAP row was promoted.

Final gates:

- WSL `cargo test -p ark-ip-proofs --quiet`: 16 passed, 2 ignored.
- WSL `RUSTFLAGS="--cfg hax_compilation" cargo test -p ark-ip-proofs --quiet`:
  16 passed, 2 ignored; only the recorded cfg/unused-branch warnings.
- Pinned Windows `LEAN_NUM_THREADS=1 lake build Ipp`: passed, 3,378 jobs.
- New-theorem axiom audit: only `propext`, `Classical.choice`, and `Quot.sound`;
  the loop-bit count uses only `propext`.
- Changed Lean has no `sorry`, `admit`, axiom declaration, or `native_decide`.
- `scripts/check-snarkpack-invariants.sh`: `snarkpack invariants ok`.
- No prover, circuit, or release-gated tests were applicable or run. No commit
  was created; the pre-existing untracked `hooks/` directory was untouched.

Remaining S2 is led by coefficient-vector generation, final commitment keys,
public-input folding, prepared PPE, and the full `verify_tipp_mipp`/aggregate
composition. The early-return blocker stays retired; the remaining closed-graph
blocker is the arkworks field/group/pairing trait boundary.

## S3 foundations

Executed the serial S3-F00, S3-C01, S3-C02, and S3-P00 pure-Lean sessions.
The generic `AteOps` placeholder and caller-supplied `CurveFacts` path were
deleted. The result is split between `Ipp/Bls12377.lean` (field, curve, and
representation foundations) and `Ipp/Bls12377Pairing.lean` (the concrete
extension tower and executable optimal-ate specification).

### S3-F00 — scaffolded certificate boundary, proved ring foundations

Pinned the exact base/scalar moduli, family equations, bit bounds, Montgomery
radices, `ZMod` characteristics, cast-to-zero lemmas, and a functional
Montgomery decoding relation. The new proved statements are:

```lean
theorem fq_char : ringChar Fq = baseModulus
theorem fr_char : ringChar Fr = scalarModulus
theorem fq_natCast_eq_zero_iff (n : Nat) : (n : Fq) = 0 ↔ baseModulus ∣ n
theorem fr_natCast_eq_zero_iff (n : Nat) : (n : Fr) = 0 ↔ scalarModulus ∣ n
theorem fq_field_available (facts : ArithmeticFacts) : Nonempty (Field Fq)
theorem fr_field_available (facts : ArithmeticFacts) : Nonempty (Field Fr)
theorem fq2_field_available (facts : ArithmeticFacts) : Nonempty (Field Fq2)
theorem montgomeryRepresents_unique (modulus radix : Nat) (rep : MontgomeryRep)
    (x y : ZMod modulus) (hx : montgomeryRepresents modulus radix rep x)
    (hy : montgomeryRepresents modulus radix rep y) : x = y
```

The exact green named certificate proposition remains:

```lean
structure ArithmeticFacts : Prop where
  basePrime : baseModulus.Prime
  scalarPrime : scalarModulus.Prime
  fq2Nonresidue : ∀ x : ZMod baseModulus, x ^ 2 ≠ -5
```

`norm_num [baseModulus]` and `norm_num [scalarModulus]` each ran to an
unchanged exact goal (`baseModulus.Prime` and `scalarModulus.Prime`) and did not
construct certificates. No `native_decide`, `sorry`, or axiom declaration was
substituted. A future checked-certificate session must discharge those two
large-prime goals and the `-5` nonresidue goal.

### S3-C01 — proved conditional concrete curves/groups

The exact G1 curve `y² = x³ + 1` and the arkworks D-twist coefficient over Fq2
are instantiated in Mathlib. Both ellipticity facts are derived from
`ArithmeticFacts`; `CurveFacts` is gone. The reviewed G1/G2 cofactor constants
and the order-`r` predicate are pinned. Statements:

```lean
theorem g1_isElliptic (facts : ArithmeticFacts) : g1Curve.IsElliptic
theorem g2_isElliptic (facts : ArithmeticFacts) : g2Curve.IsElliptic
theorem g1_group_available (arithmetic : ArithmeticFacts) :
    Nonempty (AddCommGroup G1)
theorem g2_group_available (arithmetic : ArithmeticFacts) :
    Nonempty (AddCommGroup G2)
theorem g1Cofactor_eq_parameter :
    g1Cofactor = (ateLoopParameter - 1) ^ 2 / 3
def inPrimeSubgroup {G : Type} [AddCommGroup G] (point : G) : Prop :=
  scalarModulus • point = 0
```

The full reviewed group-order/cofactor factorization and generator-order proofs
were not fabricated; they remain the arithmetic inputs needed by GAP-05/06.

### S3-C02 — proved representation and normalization layer

Added typed affine, homogeneous projective, Jacobian, and Montgomery
representatives. Projective and Jacobian relations target Mathlib's canonical
affine point, so projective equivalence is inherited from Mathlib rather than
reimplemented. Statements:

```lean
def projectiveRepresents {F : Type} [Field F] (W : WeierstrassCurve F)
    (rep : ProjectiveRep F) (point : W.toAffine.Point) : Prop
def jacobianRepresents {F : Type} [Field F] (W : WeierstrassCurve F)
    (rep : JacobianRep F) (point : W.toAffine.Point) : Prop
theorem projective_zero_z_represents_infinity {F : Type} [Field F]
    (W : WeierstrassCurve F) (rep : ProjectiveRep F)
    (h : W.toProjective.Nonsingular (projectiveCoords rep)) (hz : rep.z = 0) :
    projectiveRepresents W rep 0
theorem jacobian_zero_z_represents_infinity {F : Type} [Field F]
    (W : WeierstrassCurve F) (rep : JacobianRep F)
    (h : W.toJacobian.Nonsingular (jacobianCoords rep)) (hz : rep.z = 0) :
    jacobianRepresents W rep 0
theorem normalizeProjective_represents {F : Type} [Field F] [DecidableEq F]
    (W : WeierstrassCurve F) (rep : ProjectiveRep F)
    (h : W.toProjective.Nonsingular (projectiveCoords rep)) :
    affineRepresents W (normalizeProjective rep)
      (WeierstrassCurve.Projective.Point.toAffine W (projectiveCoords rep))
theorem normalizeJacobian_represents {F : Type} [Field F] [DecidableEq F]
    (W : WeierstrassCurve F) (rep : JacobianRep F)
    (h : W.toJacobian.Nonsingular (jacobianCoords rep)) :
    affineRepresents W (normalizeJacobian rep)
      (WeierstrassCurve.Jacobian.Point.toAffine W (jacobianCoords rep))
```

Arkworks affine/projective/Montgomery decoding conformance is deliberately left
for the later hax extraction sessions. The pure relations and Mathlib
normalization targets are now available to GAP-02/03/05/06 and S2 adapters.

### S3-P00 — executable specification green

Pinned arkworks 0.5.0's positive `x = 0x8508c00000000001`, D-twist, Fq2
nonresidue `-5`, Fq6 polynomial `v³-u`, Fq12 polynomial `w²-v`, homogeneous
double/add line formulas, sparse `034` D-twist evaluation, and the 63-bit
Miller schedule. Final exponentiation is executable square-and-multiply at the
canonical exponent; arkworks' optimized Frobenius/cyclotomic chain is a later
S3-P04 implementation-refinement target. Statements:

```lean
def millerLoop (p : AffineRep Fq) (q : AffineRep Fq2) : Fq12Model
def finalExponentiate (f : Fq12Model) : Fq12Model := fq12Pow f finalExponent
def publishedAtePairing (p : AffineRep Fq) (q : AffineRep Fq2) : Fq12Model :=
  finalExponentiate (millerLoop p q)
theorem millerLoop_infinity_left (x y : Fq) (q : AffineRep Fq2) :
    millerLoop ⟨true, x, y⟩ q = fq12One
theorem millerLoop_infinity_right (p : AffineRep Fq) (x y : Fq2) :
    millerLoop p ⟨true, x, y⟩ = fq12One
theorem publishedAtePairing_split (p : AffineRep Fq) (q : AffineRep Fq2) :
    publishedAtePairing p q = finalExponentiate (millerLoop p q)
theorem finalExponentiate_eq_pow (f : Fq12Model) :
    finalExponentiate f = fq12Pow f ((baseModulus ^ 12 - 1) / scalarModulus)
```

The cited-assumption row is explicit and has no proof or axiom declaration:

```lean
def PublishedPairingBilinearNondegenerate (facts : ArithmeticFacts) : Prop
```

Its body states left bilinearity, right bilinearity, and existence of a
non-identity pairing value for `pairingOnMathlibPoints`. In substance: **the
pinned optimal-ate pseudocode, instantiated with the reviewed BLS12-377
parameters and prime-order subgroups, computes a non-degenerate bilinear
pairing into the order-`r` target subgroup.** The formula boundary follows
ePrint 2012/232 and 2013/722. Mathlib has no cryptographic pairing/divisor
development, so this proposition stays cited mathematics.

### Axiom audit and final gates

`#print axioms` results for every new theorem listed above:

- `fq_char`, `fr_char`, all three field-availability theorems,
  `g1_isElliptic`, `g2_isElliptic`, both zero-`Z` theorems, and both
  normalization theorems: `[propext, Classical.choice, Quot.sound]`.
- `g1Cofactor_eq_parameter`: `[propext]`.
- `montgomeryRepresents_unique`, both Miller infinity theorems,
  `publishedAtePairing_split`, and `finalExponentiate_eq_pow`: `[propext,
  Quot.sound]`.

Verification:

- pinned Windows Lean, `LEAN_NUM_THREADS=1`, one process at a time:
  `lake build Ipp` passed, 3,382 jobs;
- `scripts/check-snarkpack-invariants.sh`: `snarkpack invariants ok`;
- changed Lean contains no `sorry`, `admit`, `native_decide`, or axiom
  declaration; `git diff --check` passed;
- no prover, circuit, or release-gated tests were applicable or run;
- no commit was created, and the unrelated untracked `hooks/` directory was
  left untouched.

What remains for the S2 pairing path: checked F00 prime/nonresidue
certificates; Fq6/Fq12 field-law and reviewed factorization facts for GAP-07;
G1/G2 order/cofactor and subgroup-predicate equivalence for GAP-05/06;
arkworks representation, line, Miller, final-exponentiation, and multi-pairing
refinement through hax; and the cited bilinearity/nondegeneracy premise at the
mathematics boundary. S2-08/09 now have a concrete pairing specification to
target, but their public arkworks wrappers and GAP-02/03/05/06/07/12 are not
thereby proved.

### 2026-07-14 verification rerun

The S3 foundation changes above are present in existing commit `11879e2dc`;
this rerun made no Lean or plan change and created no commit. It independently
rechecked the landed result with the pinned Windows Lean executable,
`LEAN_NUM_THREADS=1`, and one Lean/Lake process at a time:

- focused `lake build Ipp.Bls12377 Ipp.Bls12377Pairing`: passed, 1,964 jobs;
- `scripts/check-snarkpack-invariants.sh`: `snarkpack invariants ok`;
- final `lake build Ipp`: passed, 3,382 jobs, with pre-existing linter warnings;
- all 23 S3 theorem surfaces were rerun through `#print axioms`.

The individual audit results were `[propext, Classical.choice, Quot.sound]`
for `fq_char`, `fr_char`, both cast-to-zero lemmas, all three field-availability
theorems, both ellipticity theorems, both group-availability theorems, both
ellipticity aliases, both zero-`Z` theorems, and both normalization theorems;
`[propext]` for `g1Cofactor_eq_parameter`; and `[propext, Quot.sound]` for
`montgomeryRepresents_unique`, both Miller infinity theorems,
`publishedAtePairing_split`, and `finalExponentiate_eq_pow`. The temporary
audit source was removed. The two S3 modules still contain no `sorry`,
`admit`, `native_decide`, or axiom declaration. Prover/release-gated tests were
not run; the zk-circuit and `tools/gnark/lean` lanes were not touched.
