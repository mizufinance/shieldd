# Canon-Chain Cost Map (hole H9 groundwork)

**Status:** draft — pending frontier review
**Scope:** the canonical-Fq-bits chain modules of the deployed consolidate2x1
Lean forest (`tools/gnark/lean/ShielddGnarkFormal`).
**Purpose:** a ranked, evidence-backed worklist for the **Phase B** canon-chain
re-architecture (hole **H9**, `HIGH (velocity)` — blocks the optimize loop and
ics20). This says *which* modules carry the cost, *why*, *what depends on them*,
and *which lever* moves it — so the frontier can target the re-arch instead of
profiling from scratch. It designs nothing and touches no build.

This document makes **no** soundness claim and adds **no** ledger row. Sizes are
measured from the committed `.lake/build/lib` oleans; build-time RSS/wall figures
are cited from prior measurement (memory `dtk-generator-cumulative-blowup`,
`consolidate2x1-phase-e-capstone`), not re-run.

---

## 1. Headline

- **7 modules hold 22% of the entire consolidate2x1 deployed olean mass.**
  The 7 `*CanonNChain.olean` files are **769.09 MB each** = **5.38 GB**, out of
  **24.65 GB** total consolidate2x1 deployed olean (2209 modules). They are
  0.3% of the files.
- All canon-tagged modules together: **6.09 GB across 283 oleans** — so the 7
  Chain modules alone are **88% of the canon mass**; everything else canon
  (Rec ~33 MB, TrueDefs ~6.8 MB, per-chunk files) is comparatively cheap.
- Build-time (prior measurement): canon chains peak **~22 GB RSS**; a
  `Specs.lean` edit triggers a **~14 h** full adapter-forest rebuild. That is
  the velocity debt H9 names.

## 2. The 7 modules

All under `ShielddGnarkFormal/Deployed/Contracts/Consolidate2x1/`:

| Module | olean | Segment | Consumed by (fan-in = 1 each) |
| --- | --- | --- | --- |
| `DtkAdapterSeg16Canon1Chain` | 769 MB | 16 | `DtkAdapterSeg16Canon1` |
| `DtkAdapterSeg16Canon2Chain` | 769 MB | 16 | `DtkAdapterSeg16Canon2` |
| `DtkAdapterSeg34Canon1Chain` | 769 MB | 34 | `DtkAdapterSeg34Canon1` |
| `DtkAdapterSeg34Canon2Chain` | 769 MB | 34 | `DtkAdapterSeg34Canon2` |
| `DtkAdapterSeg45Canon1Chain` | 769 MB | 45 | `DtkAdapterSeg45Canon1` |
| `DtkAdapterSeg45Canon2Chain` | 769 MB | 45 | `DtkAdapterSeg45Canon2` |
| `NbAdapterSeg52CanonChain`   | 769 MB | 52 | `NbAdapterSeg52Canon` |

**Containment:** each Chain module is imported by **exactly one** consumer (its
own `Canon{1,2}` adapter). Re-architecting a Chain invalidates only that one
downstream module — there is no forest-wide fan-out. The 7 are near-identical
(each is 25 LOC, differing only in the `segNNCanonK*` symbol prefix), so a fix to
one is a fix to all seven via the generator.

## 3. Why 25 LOC becomes 769 MB

Each Chain file proves one theorem of the shape
(`DtkAdapterSeg16Canon1Chain.lean`):

```lean
theorem seg16Canon1_chain (rho) (h : Seg16.relation rho) (k) (hk : k (seg16Canon1Bits rho)) :
    chainK (seg16Canon1Bits rho) k 253 1 := by
  refine chainK_of_obligations (seg16Canon1Bits rho) k hk ?_
  ...
```

`chainK` is a **fuel-recursive `Prop` over 253**
([CanonicalFqBitsBridge.lean:122](../../../tools/gnark/lean/ShielddGnarkFormal/CanonicalFqBitsBridge.lean#L122)):

```lean
def chainK (bits : List.Vector F 253) (k : List.Vector F 253 → Prop) : ℕ → F → Prop
  | 0, _ => k bits
  | (n + 1), pe =>
      if pmBit n then chainK bits k n (pe * bits[n]!)
      else (pe * bits[n]! = 0) ∧ chainK bits k n (pe * (1 - bits[n]!))
```

The proof term for `chainK bits k 253 1` unfolds all 253 levels, and **every
level re-carries the 253-wide `bits` vector and the continuation `k`** (plus the
accumulated `pe` product). That is the O(253 × width) blowup that lands as
769 MB of persisted term per module. The builder that materializes it is
`chainK_of_obligations` → `chainK_acc`
([CanonicalFqBitsChainAcc.lean:207](../../../tools/gnark/lean/ShielddGnarkFormal/CanonicalFqBitsChainAcc.lean#L207)),
and Lemma B's `simp only […] ; rfl`
(`canonicalFqBitsGadget_eq_chainK`,
[CanonicalFqBitsBridge.lean:129](../../../tools/gnark/lean/ShielddGnarkFormal/CanonicalFqBitsBridge.lean#L129))
unfolds the gadget against it at the literal count 253.

This is the **exact anti-pattern the StructuredLC discipline already fixed on
the scalar side** (memory `dtk-scalar-accumulator-flat-lc-floor`,
`structuredlc-generator-part2-blocker`): a per-rung materialization instead of a
symbolic-peel + fuel-induction that stays O(1) per rung. The scalar accumulators
were reshaped and dropped from ~30→196 MB-class growth to 4.9 GB peak *chunked*;
the canon chains are the remaining side that was never reshaped.

## 4. The lever (for frontier Phase B — design is theirs, not scoped here)

The single reused step must relate rung `n+1` to `n` over a **symbolic** index
and instantiate at 253 for free, so the proof term is one peel, not 253 copies —
the same rule the Agents.md StructuredLC section states for `StrideRun.evalAux`.
Candidate directions, all local to `CanonicalFqBits*` + the Chain generator, all
containment-safe (fan-in 1):

1. **Seal the chain term.** If `chainK_of_obligations` can discharge
   `chainK … 253` through an induction whose *term* is O(1) (carrying `bits`/`k`
   as opaque atoms, never destructured per rung), the olean stores the induction
   witness, not 253 unfolded levels. `chainK_acc` already looks induction-shaped
   — the leak is likely the literal `253` forcing `Nat.rec` unfolding and the
   `bits[n]!` per-rung `getElem!` reductions; check whether `simp only […]; rfl`
   in Lemma B is what forces full normalization.
2. **Opaque-count wrapper.** Prove the chain at a symbolic `count` and expose the
   segment theorem as an instantiation, so the 253-materialization never lands in
   an olean at all (mirrors the scalar 11-rung chunking, but the goal here is
   *no* unrolled term rather than chunked).
3. **Generator change only.** Because each Chain is generator-emitted and 25 LOC,
   whatever shape wins is emitted once and regenerates all 7 identically.

**Exit target (from the plan):** full clean rebuild of the Consolidate2x1 tree
< 4 h wall, peak RSS < 8 GB per module — verify with
`scripts/lean-leaf-bench.sh` on one `*Chain` module first (leaf tier), before
regenerating all seven.

## 5. Boundary note

Read-only measurement + source diagnosis. No build was run; no generator, gate,
manifest, ledger, or Lean substrate was edited. The re-architecture itself is
frontier Phase B (`Not yours` for the executor). See
[full-verification-plan](../full-verification-plan.md) §Phase B, and memory
`dtk-generator-cumulative-blowup`, `canonical-fqbits-deployed-kernel`,
`structuredlc-framework`.
