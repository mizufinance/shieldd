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
