# Circuit optimization

## Decision rule

At the current `note_reshape2x1` baseline, a standalone change must remove at
least 1% of constraints to be worth landing. A smaller change is considered
only when it is a necessary step toward a measured larger reduction. Count
reduction is a filter, not proof of a speedup: release evidence also records
compile, witness, prove, verify, and key-size effects.

Every accepted optimization preserves or strengthens the protocol statement,
regenerates the deployed proof path, and passes the same drift/key gates as any
other circuit change. A new relation shape needs its proof design before it is
used in production.

## Baseline and landed results

The checked-in baseline is 36,553 constraints. The detailed history is in git;
the durable measured summary is:

| Change | Constraints | Delta | Result |
| --- | ---: | ---: | --- |
| Starting measured baseline | 57,969 | — | baseline |
| Remove constant zero seed ladder | 57,329 | −640 (−1.1%) | landed |
| Hoist the shared DTK | 44,665 | −12,664 (−22.1%) | landed |
| Shared `div_gen` compression, reused IVK bits, conservation NB | 36,553 | −8,112 (−18.2%) | landed |

Total measured reduction is 21,416 constraints (36.9%). The latest batch
includes: one shared `div_gen` compression (−2,092), IVK bit reuse (−252), and
the conservation net-balance relation (−5,768). These are constraint counts;
the current baseline still needs a fresh end-to-end prover benchmark before a
runtime claim is made.

## Current census

| Area | Rows | Share | Assessment |
| --- | ---: | ---: | --- |
| Two state-commitment paths | 18,030 | 49.3% | Near the current hash/path floor; meaningful reduction requires a protocol/tree change or multiproof. |
| DTK | 6,077 | 16.6% | Main local scalar-multiplication candidate. |
| Two RVKs | 3,624 | 9.9% | Same scalar family; fixed-base methods may help. |
| Conservation net balance | 2,193 | 6.0% | Mostly a 251-bit blinding ladder plus explicit amount ranges. |
| Four Decaf compressions | 4,184 | 11.4% | Dominated by canonical bit decompositions; sharing is valid only with an exact bit-use proof. |

The signed-coefficient census reports only 15 exact duplicate rows, 19
same-product CSE misses, and 10 write-only wires. That cleanup is far below the
366-row 1% threshold and is rejected as a standalone project.

## Candidate policy

- The current qualifying prototype is a hint-free two-bit window for the one
  variable-base 251-bit DTK ladder: 3,612 → 3,012 ladder rows, projecting the
  whole circuit to 35,953 constraints (−600, −1.64%). It preserves the existing
  little-endian bits and range checks. It is not landed: proving its MSB radix-4
  recurrence equal to the current LSB ladder requires an on-curve Edwards
  associativity certificate that the present proof substrate does not contain.
  Production stays on the proved ladder until that bridge and the regenerated
  deployed adapters are green.
- The pinned gnark fake-GLV scalar multiplication is rejected even though its
  isolated count is lower: an adversarial hint test accepts a false `[2]G = G`
  assignment. It must not enter a proof-bearing circuit.
- Measure scalar-multiplication alternatives in isolated gadgets first. The
  pinned gnark implementation offers lookup/window and fake-GLV shapes, but
  they introduce hints and a new proof relation; upstream code is not a proof
  substitute.
- Do not land a ladder replacement until witness parity, scalar range and
  canonicity, exceptional-point behavior, exact constraint count, hint trust,
  and a compact Lean recurrence have been reviewed.
- Do not micro-optimize the Merkle path. A tree arity or multiproof change is a
  protocol/state migration, not a circuit-local cleanup.
- Do not merge a sub-1% compression/CSE tweak merely because it is easy.
- Reject forecasts that do not include a compiled before/after count.

Use `scripts/fv-census.py` for row-level triage and `scripts/fv-opt-loop.sh` for
the guarded circuit loop. Final performance numbers must come from the deployed
key/witness path described in [release.md](release.md).
