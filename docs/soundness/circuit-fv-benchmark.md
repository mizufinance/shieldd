# Circuit FV — First Benchmark: Lean-First Whole-Circuit Coverage

Decision and execution plan for the circuit verification track: keep both ACL2
and Lean, but commit Lean to the first attempt at full single-circuit coverage,
on consolidate2x1, as a real benchmark. Supersedes the "Lean as corroboration
only" stance in
[verification-strategy-decision.md](verification-strategy-decision.md) action
item 9. Context in [assessment-2026.md](assessment-2026.md).

## Decision

- **Keep both engines.** ACL2/Axe remains the current `proved` spine for gadgets
  ([circuit-gadget-proofs.md](../../crates/core/component/shielded-pool/formal/circuit-gadget-proofs.md)).
  It is not retired by this decision.
- **Lean drives the first whole-circuit push.** The benchmark tests whether
  `proven-zk` reaches full single-circuit coverage where ACL2 stalled.
- **Promotion rule unchanged.** A `proved` whole-circuit property still requires a
  stamped whole-circuit artifact, per the invariants gate. Lean reaching coverage
  does not relax the standard; it changes which engine is expected to meet it.

### Rationale

- **ACL2 hit a composition wall.** Six gadgets are `proved`, but whole-circuit
  composition failed: `quad-path` depth-2 control-stack overflow
  ([QUAD-PATH-HANDOFF.md](../../crates/core/component/shielded-pool/formal/QUAD-PATH-HANDOFF.md),
  Stage 3 = OPEN). The 16-deep Merkle/IMT path that whole-circuit soundness needs
  is exactly what did not compose.
- **`proven-zk` is built for this.** It is purpose-built for ZK circuit
  composition and Merkle-path reasoning — the structure ACL2 choked on.
- **Ecosystem momentum.** EF Verified-zkEVM, Succinct/Nethermind SP1, and Veridise
  tooling are consolidating circuit FV on Lean. Better shared libraries,
  longevity, and hiring than the comparatively isolated ACL2/Axe path.

## Benchmark definition

- **Target circuit.** consolidate2x1 — the smallest production circuit (Picus
  already times out on it as the smallest family), giving the best chance of
  actually reaching full coverage and a clear verdict before scaling up.
- **Success.** A single whole-circuit property for consolidate2x1, proved in Lean,
  covering all constituent gadgets plus Merkle/IMT path composition (depth-2 and
  beyond — the ACL2 failure point), with Poseidon377 no longer opaque in the Lean
  spec.
- **Verdict regardless of outcome.** Either Lean reaches full single-circuit
  coverage (record effort and promote the path), or it stalls (record where and
  why). A negative result is still the tool-selection answer the benchmark exists
  to produce.

## Next steps (ordered)

1. **De-opaque Poseidon377 in the Lean spec.** Poseidon is currently opaque in
   [Specs.lean](../../tools/gnark/lean/ShielddGnarkFormal/Specs.lean); no
   whole-circuit Lean claim is possible until it is concrete. This is the hard
   blocker and the first real test of the approach.
2. **Extend gnark-lean-extractor coverage** from the current three gadgets
   (bool-select, iszero, nullifier) to the full consolidate2x1 gadget set.
3. **Prove Merkle/IMT path composition in Lean** via `proven-zk` — the depth-2+
   composition ACL2 could not reach.
4. **Compose to a whole-circuit property** and define the artifact + sha256 stamp
   and CI gate, mirroring the existing ACL2 whole-circuit artifact convention the
   invariants script enforces.
5. **Record the benchmark verdict**: did Lean reach full single-circuit coverage,
   at what effort, versus ACL2's gadget-only ceiling — and whether to migrate the
   spine to Lean or keep ACL2 for gadgets and Lean for composition.

## Progress — M1/M2 (done)

**M1 — Poseidon377 de-opaqued.** The opaque `poseidon377Hash2/Hash3` in
[Specs.lean](../../tools/gnark/lean/ShielddGnarkFormal/Specs.lean) are replaced by
a concrete `ZMod P` permutation in
[Poseidon377/](../../tools/gnark/lean/ShielddGnarkFormal/Poseidon377), ported 1:1
from the ACL2 executable spec and cross-checked against the gnark/Go ground truth
(`tools/gnark/internal/primitives/poseidon377.go`). Round constants/MDS and pinned
test vectors are generated from `phase05_vectors.json` by a new
`gnarkctl export-poseidon-lean` subcommand (single source of truth). In-kernel
`#guard`s plus `scripts/check_poseidon377_parity.sh` prove Lean == gnark/Go on the
hash2/hash3/hash7 vectors. `nullifierSpec_unfold` is now a real `rfl` theorem, not
an axiom.

**M2 — gadget extraction extended to the full quad-path set, including depth-16.**
Six previously unextracted gadgets now have checked-in, building Lean R1CS
encodings under
[Extracted/](../../tools/gnark/lean/ShielddGnarkFormal/Extracted): `poseidon2`,
`poseidon-hash4`, and `quad-path-{1,2,4,16}`, all building under `lake build`.

**Extraction-scale wall — diagnosed and fixed.** The first extraction of the
deep paths flattened the entire circuit into one monolithic `∃gate_i …` chain:
`quad-path-4` (~9k gates) pinned ~11 GB RSS without converging and `quad-path-16`
(~37k gates) was OOM-killed (`lean` exit 137). Root cause: `gnarkctl export-lean`
called `Poseidon377Hash4` and the per-layer logic as plain Go inside a `for`
loop, so the extractor inlined every layer — the depth-16 path expanded to a
single ~37k-gate term Lean cannot elaborate.

The fix matches how Reilabs' own extractor handles Semaphore's Merkle path: make
the repeated sub-circuit an **extractor gadget** (`quadPathRound`,
[gadgets_constraint.go](../../tools/gnark/internal/circuits/gadgets_constraint.go))
called via `abstractor.Call` in the loop. The extractor then emits **one
reusable Lean `def quadPathRound` and one call per depth** instead of inlining.
During proving the call runs `DefineGadget` inline, so the constraint system is
byte-for-byte identical — no proving-path change. Result: every quad-path is now
~2.3k lines *regardless of depth* (depth only adds call lines), and `quad-path-16`
elaborates in seconds at ~3.8 GB peak RSS where the flat form OOM-killed. The
"flat extraction doesn't scale" reading was a usage bug in our extractor, not a
limit of Lean/`proven-zk` — Reilabs ships whole-circuit Semaphore (Merkle +
Poseidon) on this exact stack. This unblocks the M3 Merkle-path composition: the
deep path is now a tractable, structurally-factored term.

The first composition bridge — proving the extracted rate-2 Poseidon circuit
computes the concrete `hash2` spec — was attempted and **does not close under
naive tactics**, a verdict-relevant finding. The extracted circuit is a flat chain
of 971 `∃ gate_i, gate_i = expr ∧ …` clauses; eliminating it with `exists_eq_left`
inlines each gate, and because gates are referenced multiple times (e.g.
`gate_7 = gate_6 * gate_0` cites both `gate_6` and the round input `gate_0`),
inline substitution loses sharing and blows up exponentially in circuit depth.
Kernel `rfl`/defeq against the structured spec faces the same blowup (the `#guard`
parity vectors evaluate fine only because concrete numbers collapse; symbolic
terms do not). A scalable bridge therefore needs a **sharing-preserving,
per-round structural proof** that keeps gates as hypotheses rather than inlining
them — promoted to M4 (composition). The spec's MDS `dot` already uses gnark's
left-fold association to make that future proof definitional per round.

The path for that proof is now identified, not open-ended: Reilabs' demo proves
the same shape with a per-gadget `_uncps` lemma
(`Poseidon2 a b k ↔ k (poseidon₂ vec![a,b])`) discharged by `simp` against a
`poseidon_N_correct` lemma proved once, per round, in its `Poseidon/Correctness`
module; whole-circuit proofs then chain the `_uncps` lemmas. Applying the same
gadget structuring used for `quadPathRound` to the Poseidon rounds (extract
`sbox`/`fullRound`/`partialRound` as gadgets) gives the round-structured
extracted term that pattern needs. M4 is therefore a port of an existing
technique onto the concrete M1 spec, not new research.

## Progress — M3/M4 (done)

**M3 — quad-path circuit proved sound against an abstract recover spec.**
[QuadPathSpec.lean](../../tools/gnark/lean/ShielddGnarkFormal/QuadPathSpec.lean)
bridges the extracted depth-2 `QuadPath2.circuit` to a quaternary recover spec
(proven-zk's `Merkle.recover` at arity 4, per-node hash `H4` left abstract):

- `quadPathRound_sound` — one extracted layer forces `k (recoverStep …)`,
  discharged structurally from the `Gates.select` value equations alone (the
  `is_bool` flags are not needed for forward soundness).
- `circuit_sound` — any satisfying `QuadPath2.circuit` assignment forces
  `Root = recover2` of the leaf along the position bits, composing the round
  lemma over both layers and pinning the root with the final `Gates.eq`.

The hash is abstract so the path composition is proved independently of the
Poseidon bridge; M4 supplies the concrete `H4` and discharges `Perm4Computes`.

**M4 — extracted Poseidon (rate-2) proved to compute the de-opaqued M1 spec.**
The flat-inlining wall is resolved exactly as predicted. First the extraction was
round-structured: each Poseidon round is now an `abstractor.Call1` gadget
(`poseidonFullRound` / `poseidonPartialRound`, returning the state vector),
mirroring the `quadPathRound` structuring and Reilabs' `fullRound`/`halfRound`
demo. `poseidonPerm2` dropped from a ~1000-line flat chain to a 39-round chain;
the constraint system is byte-identical (`TestAxeExportFidelityPoseidon2/Hash4`
and the hash parity tests pass).
[Poseidon2Bridge.lean](../../tools/gnark/lean/ShielddGnarkFormal/Poseidon2Bridge.lean)
then ports the `_uncps` technique onto that term. Because each extracted round is
a flat `∃g,g=e∧…` chain with **no** side-conditions (unlike `Gates.select`), every
round is an honest `↔`:

- `fullRound_3_3_uncps` / `partialRound_3_3_uncps` — `round st cs k ↔ k (spec st cs)`,
  closed by `simp [Gates, exists_eq_left]`. This is the sharing-preserving,
  per-round structural proof the flat attempt could not reach: the simp keeps each
  gate as a local equation and rewrites the continuation, so there is no
  exponential inline blowup.
- `perm2_uncps` — `poseidonPerm2 D a b k ↔ k (permSpec2 D a b)`, chaining the 39
  round iffs to collapse the whole permutation to a closed computable spec. No
  gate-level reasoning remains for downstream proofs.
- `#guard` — `permSpec2` on the rate-2 ground-truth vector equals the M1 `hash2`
  value, computational evidence that `permSpec2 = hash2` (the de-opaqued
  Poseidon).

**Verdict (so far).** Lean reaches the composition ACL2 could not: whole-permutation
Poseidon soundness against a concrete spec, plus quad-path membership against an
abstract recover — both as honest `↔`/implications, no `sorry`. The "flat
extraction doesn't scale" finding was a usage artifact, not a tool limit; the
round/layer gadget structuring + per-round `_uncps` is the scalable pattern.
The rate-3 (width-4) and rate-4 (width-5) bridges are now done by the same
`_uncps` technique (`Poseidon3Bridge`/`Poseidon4Bridge`): the nullifier circuit
is bridged to `nullifierSpec`, the `poseidon-hash4` gadget to `permSpec4`/`hash4`,
and M3's `Perm4Computes` is discharged symbolically — `quadPath_circuit_sound`
now states depth-2 quad-path soundness against the *concrete* Poseidon hash with
no abstract `H4` remaining. Remaining to a stamped whole-circuit consolidate2x1
property: deepen the quad path beyond depth-2, extract/​bridge the still-unlabelled
sub-circuits below, and compose.

### Extraction gap inventory (blocks whole-circuit consolidate2x1)

| Gadget / sub-circuit | Status | Gap |
| --- | --- | --- |
| `bool-select`, `iszero` | extracted + bridged | — |
| `nullifier` | extracted (round-structured) + **bridged** | `Poseidon3Bridge.circuit_sound`: `Nullifier = permSpec3 nullifierDomain …`; rate-3 `perm3_uncps`; `permSpec3 = hash3 = nullifierSpec` by parity `#guard` |
| `poseidon2` | extracted (round-structured) + **bridged** | `perm2_uncps`: `poseidonPerm2 D a b k ↔ k (permSpec2 …)`, `permSpec2 = hash2` by parity `#guard` (M4) |
| `poseidon-hash4` | extracted (round-structured) + **bridged** | `Poseidon4Bridge`: `perm4_uncps` + `circuit_sound` (`Out = permSpec4 …`), `permSpec4 = hash4` by parity `#guard`; `perm4Computes` discharges M3's `Perm4Computes` |
| `quad-path-{1,2,4,16}` | extracted (structured) + **bridged (depth-2, concrete hash)** | `circuit_sound` against abstract `H4` (M3); `Poseidon4Bridge.quadPath_circuit_sound` specialises it to the concrete `permSpec4` via `perm4Computes` — no abstract hash remains at depth-2 |
| `imt-gap` | **not extractable** | gnark-lean-extractor panics `implement me` (bit-decomp / range-check ops unsupported) |
| `canonical-fq-bits` | **not extractable** | same extractor limitation (binary decomposition) |
| `VerifyStateCommitmentPath` (anchor Merkle) | no gadget label | needs a `gadget-*` label or whole-circuit extraction (M3) |
| Poseidon **rate-6** note commitment | no gadget label | add label or handle in whole-circuit (M4) |
| decaf377 EC ops (RVK / DTK / balance commitment) | no gadget label | research-grade; model group ops in Lean (M4) |
| final statement hash | no gadget label | whole-circuit extraction (M4) |

Two distinct blockers emerge: (a) the **extractor itself** cannot handle bit
decomposition / range checks (`imt-gap`, `canonical-fq-bits`) — these need either
an upstream extractor fix or a hand-modelled spec; (b) several sub-circuits have
**no gadget label** and must be labelled or reached via whole-circuit extraction
(M3–M4).

## Out of scope

- gnark→LLZK ingestion: no path exists today; watch only.
- Retiring ACL2: not until Lean demonstrably reaches coverage.
- The other three circuits: scale up only after a consolidate2x1 verdict.
