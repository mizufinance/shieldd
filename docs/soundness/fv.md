# Circuit formal verification

## What the NoteReshape proof claims

NoteReshape has three deliberately separate assurance layers:

1. `Protocol.NoteReshape.Semantics` is handwritten and imports only general
   mathematics. It defines the accepted action relation over one canonical
   address/asset context and distinct real and dummy input types.
2. Generated `Deployed.Contracts.NoteReshape*/CircuitFacts.lean` modules prove
   typed facts about every row of the exact deployed R1CS. Generated code does
   not define protocol correctness.
3. `Deployed.NoteReshapeRefinement` dispatches exact deployed rows to their
   generated typed facts. Handwritten adapters must then construct each
   `Protocol.NoteReshape.CircuitFacts` field from those exact facts. The former
   caller-supplied `Projection` is forbidden because it assumed the obligations
   that the refinement was supposed to derive.

The obligation ledger is
`crates/core/component/shielded-pool/formal/note-reshape-obligation-ledger.md`.

The four exact-circuit capstones cover `note_reshape2x1`,
`note_reshape1x8`, `note_reshape4x1`, and `note_reshape8x1`. The circuit facts
partition every exact gadget fact by protocol role. Generated compiler-LC
bindings and permutation-certified seams now prove that the one DTK output is
the point consumed by transmission compression in all four families. The
`note_reshape2x1` handwritten adapter now derives commitments,
membership/nullifiers, randomized keys, conservation, balance and RK
compression, and exact statement binding, and its final deployed-relation
refinement theorem compiles. The corresponding complete adapters for
`note_reshape1x8`, `note_reshape4x1`, and `note_reshape8x1` are still open.
External signature verification and state transition checks remain outside
Groth16 and are explicit inputs to the final refinement.

## Why the dummy-input bug passed

The previous Lean path proved that the deployed circuit satisfied facts derived
from that same circuit. Its generated semantic-looking `Statement` interface
was not an independent protocol specification. If the circuit and generated
interface omitted the same dummy obligation, Lean could prove both perfectly.
The missing piece was the handwritten join from exact circuit behavior to an
independently reviewed accepted-language relation.

Whole-family Picus did not close that gap. Its export classified every secret
wire as an input, so the solver checked satisfiability after the prover had
already chosen all secret values. That is useful for finding some algebraic
gadget counterexamples, but it does not establish that an externally meaningful
dummy field is functionally constrained or joined to the protocol relation.

Picus remains useful for:

- leaf-gadget counterexamples and small underconstraint probes;
- rapid checks before an exact Lean adapter exists;
- adversarial tests of a proposed local relation.

It is not part of the whole-family NoteReshape soundness claim. Family exports
that assign every secret wire as an input are rejected.

## Specification independence

The CI boundary enforces:

- protocol semantics cannot import generated contracts, manifests, traces,
  artifacts, or wire indices;
- generators cannot write protocol-semantic modules;
- a circuit-only change must preserve
  `tools/gnark/lean/note-reshape-semantics.sha256`;
- every witness field must have a reviewed role and supporting obligation;
- removed per-note address representations and dummy authorization-key fields
  are forbidden by the role manifest and structural regression tests.

The V2 witness contains one private shared asset ID, diversified generator, and
clue key. The circuit derives one DTK and one canonical transmission encoding
from that context and uses them in every input and output commitment. There is
no ABI location for a per-note affine transmission, encoded transmission, clue
key, generator, or asset to disagree with it.

## Exact deployed chain

```text
handwritten protocol semantics + obligation ledger
                         |
Go Define -> SR1CS -> typed slice IR -> exact generated row contracts
                         |                    |
                 coverage capstone      typed CircuitFacts
                         \                    /
                handwritten semantic adapters
                              |
          external signatures + state preconditions
                              |
                 Protocol.NoteReshape.Valid
```

Until every adapter is constructed and the final theorem compiles, the
NoteReshape end-to-end Lean claim remains open. The exact-circuit branch
additionally pins the semantic segment manifest,
template equivalence witnesses, generated ownership digests, SR1CS bytes,
PK/VK bytes, and deployed-key prove/verify round trips. Template reuse is
permitted only with a checked wire/row permutation, optional L/R swap, and
valid nonzero R1CS scaling.

## Trust boundary

The result still trusts the gnark compiler/backend and Groth16 implementation,
the extraction and coverage tools, Lean's kernel and standard axiom baseline,
and the documented cryptographic assumptions. Protocol handlers own signature
verification, nullifier freshness, and state transitions.

The Lean gate permits one Lake build at a time with `LEAN_NUM_THREADS=1`.
Generated Lean is never edited directly; generator output and template
ownership are byte-checked.

## Release commands

```sh
scripts/check-note-reshape-spec-independence.sh
scripts/check-manifest-pin.sh all
scripts/check-constraint-coverage.sh --require-full-deployed --check-typed-bindings --circuit all
LEAN_NUM_THREADS=1 bash scripts/check-lean-circuit-fv.sh drift all
LEAN_NUM_THREADS=1 bash scripts/check-lean-circuit-fv.sh typed all
LEAN_NUM_THREADS=1 bash scripts/check-lean-circuit-fv.sh release all
bash scripts/check-soundness-invariants.sh
```
