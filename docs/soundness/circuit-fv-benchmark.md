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

**M2 — gadget extraction extended; both an elaboration wall and a composition
wall surface.** Four previously unextracted gadgets now have checked-in,
building Lean R1CS encodings under
[Extracted/](../../tools/gnark/lean/ShielddGnarkFormal/Extracted): `poseidon2`,
`poseidon-hash4`, `quad-path-1`, `quad-path-2`, all building under `lake build`.

**Extraction-scale wall (new, verdict-relevant).** `quad-path-4` and
`quad-path-16` extract to valid Lean source but **do not elaborate**: the flat
R1CS gate-chain is super-linear in memory. `quad-path-4` (depth-4, ~9k gates)
pins ~11 GB RSS without converging; `quad-path-16` (depth-16, ~37k gates) is
OOM-killed (`lean` exit 137), even built solo with the whole machine. Only
depth-1/2 fit. This is the sharpest M2 finding: the **depth-16 Merkle/IMT path
is exactly the whole-circuit composition target** (the ACL2 failure point), and
flat per-circuit extraction cannot even produce an elaborable term for it,
before any bridge proof is attempted. A scalable path must extract structurally
(per-level recursion reusing one depth-1 step) rather than as a flattened dump.
Both files are therefore left unextracted in-tree and excluded from the root
aggregator import.

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

### Extraction gap inventory (blocks whole-circuit consolidate2x1)

| Gadget / sub-circuit | Status | Gap |
| --- | --- | --- |
| `bool-select`, `iszero` | extracted + bridged | — |
| `nullifier` | extracted | bridge to `nullifierSpec` (same blowup wall as `poseidon2`) |
| `poseidon2`, `poseidon-hash4` | extracted | bridge to `hash2`/`hash4` blocked by exponential inlining (see above); needs structural proof (M4) |
| `quad-path-{1,2}` | extracted | not yet bridged to a path-membership spec |
| `quad-path-{4,16}` | **does not elaborate** | flat R1CS too large: depth-4 ~11 GB RSS no convergence, depth-16 OOM exit 137; needs structural per-level extraction (M3) |
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
