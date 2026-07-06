# DRAFT/SPIKE — What does it mean to "formally verify" a ZK circuit?

*Status: draft outline, not published. ~5 min read target.*

## The pitch

"Our circuit is formally verified" usually means one narrow thing was proved.
We split the claim into six layers, because a soundness bug can live in any of
them — and most published verification efforts cover one or two:

- **L0 — crypto assumptions.** Poseidon is a good hash, decaf377 is a
  prime-order group. Never provable; the goal is that every assumption is
  *named*, in a ledger, with an exact statement.
- **L1 — the statement is the right statement.** Does "this proof verifies"
  actually imply "no double spend"? We model the ledger in Alloy and let an
  adversary forge any proof whose *statement* holds; if no inflation or double
  spend appears, the statement is sufficient.
- **L2/L3 — the circuit computes the statement.** A Lean theorem per circuit:
  any assignment satisfying all ~58k R1CS constraints satisfies the
  human-readable spec. Axiom-clean (`#print axioms` is part of the gate).
- **L4 — the compiled artifact is the verified artifact.** Proofs are pinned
  to the SHA of the compiled constraint system; CI recompiles and fails if the
  circuit outran its proof.
- **L5 — the proving stack.** Groth16, aggregation, the compiler itself:
  explicit trust rows with removal paths, not silence.

Plus one cross-cutting rule: every seam between two tools (Alloy model ↔ real
circuit, Rust ↔ Go re-implementations) is either mechanically pinned by a
parity test or a named assumption. The danger is never the assumption you
wrote down; it's the one you didn't.

## Comparison to state of the art

- **Circomspect / Picus / static analyzers:** find under-constrained wires
  (one failure class at L2). We run Picus per-gadget too — as *evidence*, not
  as the proof.
- **Leo / Cairo verification efforts, academic Coq/Lean circuit proofs:**
  usually verify a hand-written model of the circuit, not the compiled
  artifact (misses L4), and rarely ask the L1 question at all.
- **Audits:** cover L1 informally, nothing mechanically, no regression story.
- We haven't seen a production system publish the full L0–L5 stack with a
  claim tree (`assurance-case.md`) where every edge is a stamped artifact, a
  ledger row, or an explicit TODO. That composition argument is the actual
  contribution.

## The AI angle

The stack is only affordable because of a frontier/executor split: a frontier
model does the judgment work (which layers exist, what each proof must say,
the first exemplar of every proof pattern), then executor models fan the
pattern out across 49 circuit segments. Everything lands behind fail-closed
gates — hash-pinned manifests, invariant checkers, axiom checks — so a model
mistake surfaces as a red gate, never as silent unsoundness. Roughly 75% of
the proof volume was machine-written under these gates.

## Skeleton

1. Anecdote: a circuit bug that type-checks, proves, verifies — and mints money.
2. The six layers, one paragraph each, with the shieldd artifact for each.
3. The seam rule (model fidelity) — the part everyone skips.
4. SOA comparison table.
5. AI workflow: frontier designs, executors fan out, gates catch.
6. CTA: assurance-case.md as the public artifact.
