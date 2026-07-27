# Lean Circuit Proof Rules

Read this before touching anything under `tools/gnark/lean/`. The resource
limits at the bottom are load-bearing, not polish. Process and trust boundary:
`docs/soundness/fv.md`.

## Proof structure

- Never prove semantics of an extracted constraint chain in one monolithic
  tactic walk. Elaboration cost is quadratic in chain length: each
  `obtain`/destructuring step re-substitutes the entire remaining term.
- Slice long circuits into segment predicates ending in an opaque continuation
  (`k : Prop` or `k : Vector F n → Prop`), prove each segment's semantics
  separately, and compose. Repeated rung patterns (ladders, lt-chains) get a
  fuel-recursive definition plus one induction lemma, never an unrolled walk.
- Generated proofs touching a wide Nat-match def must close goals with
  `exact`/`rfl` kernel defeq, never `simp`/`unfold` — simp generates the
  match-splitter equations (this alone once cost 769 MB oleans / 22 GB RSS).
- Never hand-edit a `.lean` file with a GENERATED header — fix the generator
  in `tools/gnark/lean/gen/` and regenerate. In the NoteReshape deployed path,
  `Bounds.lean`, `Capstone.lean`, `CircuitFacts.lean`, `RoleBindings.lean`,
  `SemanticBindings.lean`, `SemanticSeams.lean`, segment contracts, and
  normalized template providers are generated. Legacy family-local
  `Wiring.lean`, `Specs/`, and adapter stacks are obsolete; small generic proof
  substrates are hand-authored unless their header says otherwise.
- After a regeneration that changes constraint counts, grep the hand-authored
  layer for stale wire indices — deleted rows shift every downstream wire.
- Monitor Lean compiles actively. A lot of them blow up in time or just hang.

## StructuredLC — the compact extracted-row representation

Wide extracted LCs (fixed-base scalar-ladder accumulators, `≥ MIN_RUN`
equal-coefficient wires in arithmetic progression) are NOT rendered as flat
`k`-term sums. The extractor (`crates/crypto/constraint-coverage/src/contracts.rs`,
`structure_lc`) emits them as `StructuredLC.eval rho { const, runs, residual }`,
where each `runs` entry is a `StrideRun{coeff,start,stride,count}`. The evaluator
lives in `ShielddGnarkFormal/StructuredLC.lean` (field-generic; DTK stride-13 is
one instantiation). Rationale: a flat per-rung LC bakes O(k²) into extraction;
the compact form makes each rung O(1).

Rules:
- **The extractor is the parity gate.** `structure_lc` asserts the compact form
  expands to the exact raw `(coeff,wire)` multiset at generation time (fails
  closed). Do NOT write a Lean lemma bridging a flat `relationLc*` to
  `StructuredLC.eval` (that reintroduces the O(k²) expansion). If you need
  parity, add/extend a Rust `contracts::tests` case.
- **Prove recurrences symbolically, then instantiate.** Relate rung `n+1` to `n`
  with the single reused step lemma `StrideRun.evalAux_succ` (one peel) over a
  SYMBOLIC index, then instantiate at the concrete rung. NEVER `simp`/`unfold`
  `StrideRun.eval`/`evalAux` at a literal `count` — that expands all `k` terms
  and hits max recursion depth (verified blowup).
- **Adapters consume StructuredLC-form rows opaquely.** `linear_combination`/
  `ring` treat `StructuredLC.eval rho lc` as one atom. Never unfold
  `relationLc*Part*`.
- **Manifest-neutral.** `relation_sha256_hex` hashes the raw `.sr1cs` constraint
  strings, not the Lean text, so regenerating contracts does not move the
  coverage pin.

## Leaf benchmark — the fast inner loop

Never debug a tactic by rebuilding a full adapter. Use
`scripts/lean-leaf-bench.sh <FILE.lean|Module> [leaf|aggregator|import]`: it
compiles ONE module into an isolated temp dir with a FRESH olean, samples RSS
over the compile's own process GROUP, and actively KILLS on time/RSS breach (a
bad cert diagnoses in ~1s, never grinds all night). Budgets: leaf
`<60s/<2GB/<10MB`, aggregator `<120s/<4GB/<50MB`. Run the `import` tier once
for the upstream-olean RSS floor, then pass `BENCH_IMPORT_FLOOR_MB=<n>` so
leaf RSS is judged on marginal cost. Gate the full adapter build on
first/mid/high/final leaves + all aggregators green BEFORE building the whole
segment.

## Build resource limits — follow these every time

> **INCIDENT LOG:** Unbounded, concurrent `lake build` invocations have
> force-rebooted this 48GB macOS machine **twice** (2025-06-23, 2025-06-29) by
> exhausting RAM and disk. These rules bind on the local machine; ephemeral CI
> runners run the full nightly tier (`soundness-formal.yml`) — never add Lean
> to per-PR jobs.

Heavyweight adapter elaborations (Rvk/Dtk/Nb/Compress adapters, `Bounds`, Seg
files) each hold hundreds of GF(p) witnesses; a single one can consume many GB
of RSS. The crashes came from *fan-out* — many builds at once, and
whole-package builds spawning one heavy Lean worker per core.

1. **One lake at a time.** Never two `lake` builds concurrently — not in
   parallel tool calls, not in the background, not across subagents.
2. **Single-threaded.** Export `LEAN_NUM_THREADS=1`. (macOS rejects
   `setrlimit(RLIMIT_AS)`, so `ulimit -v` does nothing; serial +
   single-threaded is what actually bounds memory.)
3. **Build the narrowest target.** Name the specific module, never a bare
   `lake build` of the whole package.
4. **Bound elaboration.** Generated Lean files set a finite `maxHeartbeats`
   (never `0`) so a runaway elaboration aborts with a diagnostic.
5. **Monitor actively.** Run builds detached in the background and watch the
   log; if one hangs or balloons, kill it (`pkill -f 'lean --'`).

**Canonical invocation:**
```
LEAN_NUM_THREADS=1 lake build <SPECIFIC.MODULE>     # build one module
LEAN_NUM_THREADS=1 lake env lean <FILE>             # type-check a file
```
