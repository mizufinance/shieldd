# DRAFT/SPIKE — Formally verifying proof aggregation (SnarkPack)

*Status: draft outline, not published. ~5 min read target.*

## The pitch

We aggregate Groth16 proofs with SnarkPack. Aggregation multiplies risk: one
bad aggregate can smuggle N bad proofs. But "verify SnarkPack" is not one
problem — it's five, and pretending otherwise is how gaps hide. Our layer
table (mirroring the circuit side):

- **SL0 — pairing/KZG assumptions:** named ledger rows.
- **SL1 — statement parity:** does the aggregate bind exactly the per-circuit
  statements? Proved by conformance tests: every family VK has arity 1 (a
  single statement hash), VK hashes are pinned.
- **SL2 — aggregation soundness:** does an accepted aggregate imply each
  Groth16 check? Today: accepted on Filecoin lineage (the audited, deployed
  original) + paper review, as an explicit assumption row. Removal path is
  scoped and bounded: mechanize in Lean that the aggregated verification
  *equation* implies the per-proof equations — not re-prove the whole IPP
  paper.
- **SL3 — the Rust computes the algorithm:** F* proofs over hax-extracted
  Rust, with completion rules: change the statement encoding and every
  dependent row reopens automatically.
- **SL4 — artifact identity:** the deployed SRS/VKs are the ones the rows
  were stamped against; joins the release checklist.

The honest headline: SL2 is an assumption, written down, with a removal plan.
That sentence is worth more than a vague "audited".

## Comparison to state of the art

- **Filecoin's SnarkPack:** audited + battle-tested, no mechanized soundness;
  our lineage acceptance leans on exactly that, and we track our diffs from
  their code in a divergence-findings doc.
- **Nova/folding & modern IVC stacks:** richer aggregation, essentially no
  machine-checked soundness of deployed implementations.
- **hax/F* on production Rust:** rare outside libcrux-style crypto kernels;
  applying it to an aggregation library, with row-reopening completion rules,
  is (to our knowledge) new territory.

## The AI angle

The layer decomposition and the accept-vs-mechanize decision framing were
frontier-model work presented to a human for the call (accept on lineage,
plan the equation-level mechanization). Executor models wrote the conformance
tests, the ledger rows, and keep the assurance-case edges current. The
pattern: models propose and maintain; humans decide what "verified enough to
ship" means; gates keep the two honest.

## Skeleton

1. Why aggregation concentrates risk (one aggregate, N proofs).
2. The five SL layers, with today's status per layer.
3. The SL2 decision: lineage acceptance as an *explicit, removable* assumption.
4. SOA comparison.
5. AI workflow: costed options to a human decision point.
6. CTA: the removal path as a bounded, statement-shaped Lean target.
