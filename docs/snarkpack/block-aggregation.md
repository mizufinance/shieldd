# Block Aggregation: How Penumbra Uses SnarkPack

Status: **exploratory ideas, not implemented.** Block building is not settled;
this records the design space so we can return to it. It is about *how we use*
the aggregation primitive at the block level — not how the primitive works
(that is [design.md](design.md)) and not how we verify it
([verification.md](verification.md)).

## The constraints we're designing around

SnarkPack is a leaf operation with three hard properties:

1. **One verifying key per aggregate.** All proofs in an aggregate share a VK, so
   a heterogeneous set must first be bucketed by VK.
2. **Power-of-two count.** GIPA folds in halves; off-power counts must be padded
   (repeat-final, [padding.rs](../../crates/crypto/proof-aggregation/src/padding.rs))
   or decomposed.
3. **Big fixed overhead + logarithmic marginal.** Each aggregate pays a constant
   cost (commitments, KZG openings, final PPE) once; adding proofs is only
   `log₂ n` more. So aggregation pays off across *many* proofs and loses on a
   handful.

## What Filecoin does (reference, not a template)

Filecoin is the production SnarkPack deployment, but its model differs from ours:
an individual **miner** aggregates **their own** sector proofs **off-chain** and
submits one `ProveCommitAggregate` *message*. The batch is naturally homogeneous
(same circuit/VK, hundreds of proofs) and padded to a power of two exactly like
us. There is **no block-level aggregation** — the chain just verifies a submitted
aggregate message. Filecoin gives us the primitive and the transcript discipline,
not block orchestration. (They also added a batch-balancer fee to price the
fixed overhead — an economic question we will eventually face too.)

## Why Penumbra needs something Filecoin doesn't

- **Heterogeneous proofs.** A block mixes families — `Transfer`, `Consolidate`
  (`*_BY_ONE`), `Split` (`ONE_BY_*`), `ShieldedIcs20Withdrawal`
  ([bundle.rs](../../crates/crypto/proof-aggregation/src/bundle.rs)) — each a
  distinct VK. You cannot "aggregate the block"; you aggregate per `(family,
  subfamily)` bucket.
- **Per-transaction is too small.** One transaction carries a few proofs — the
  overhead-dominated regime where aggregation loses. The savings only appear when
  proofs are pooled across many transactions, which only a block-level aggregator
  (the proposer) sees.

So block-level aggregation is a layer we build on top of the primitive, with
Filecoin informing only the leaf.

## Ideas

1. **Bucket by VK.** Group a block's proofs by `(family, subfamily)`; each bucket
   is one independent aggregation problem.
2. **Binary tiling instead of padding the whole bucket.** Decompose a bucket's
   count into power-of-two pieces (one per set bit): `76 = 64 + 8 + 4` → three
   exact aggregates, zero padding, versus padding `76 → 128` (68% waste). This
   bounds waste while avoiding the singleton regime that makes small decomposition
   lose. The `_BY_FOUR`/`_BY_EIGHT` subfamily ids already hint at fixed bucket
   sizes.
3. **Min-bucket fall-through to native batch verify.** Below a worthwhile
   aggregate size, don't aggregate — verify natively with the existing batch path
   (the `ALG-I1` oracle). Only the small remainder of a tiling ever pads.
4. **A small fixed set of allowed bucket shapes.** e.g. 8 / 64 / 512 / 4096. Fewer
   shapes = simpler SRS and verifier surface; more shapes = tighter tiling. A knob
   to tune, not a fixed answer.
5. **Canonical, bound partition.** Validators re-verify, so the bucketing must be
   a deterministic function of the ordered block proofs, and the partition itself
   must be bound into the statement and recomputed by the verifier — the existing
   "bind counts, verifier recomputes" discipline lifted from per-batch to
   per-block. This is the part with the most security surface.

## Open questions (for when we return)

- Who aggregates — block proposer, or a separate aggregator role? Who pays for the
  compute, and how to avoid incentivizing wasteful padding (Filecoin's
  batch-balancer question)?
- Where is the aggregate/native crossover for each family's proof size?
- How does the canonical partition interact with proposer freedom over tx
  ordering and inclusion?
- Bucket-shape set and min-aggregate threshold: pick by measured cost.

When this is picked up, the canonical-partition binding (idea 5) is the piece that
flows into [verification.md](verification.md) as new model + implementation
obligations; the rest is orchestration.
