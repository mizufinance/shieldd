# Circuit optimization

## Decision rule

An optimization lands only when an affected compiled deployed family loses at
least 1% of its constraints. Security fixes are exempt. Counts are a filter;
release evidence must still include witness, prove, verify, memory, and key
effects. Hints are rejected unless their result is fully constrained.

## Landed NoteReshape result

The canonical V2 witness and circuit remove per-note address representations,
derive the DTK once, and remove the dummy-RK derivation after extending the
accepted language to require an external signature for every public RK.

| Family | Previous | Current | Delta |
| --- | ---: | ---: | ---: |
| `note_reshape2x1` | 36,553 | 37,559 | +1,006 (+2.75%) |
| `note_reshape1x8` | 28,256 | 29,196 | +940 (+3.33%) |
| `note_reshape4x1` | 102,620 | 64,784 | −37,836 (−36.87%) |
| `note_reshape8x1` | 194,226 | 117,526 | −76,700 (−39.49%) |

The fixed families grow because the old witness supplied the field encoding of
the transmission key independently from the affine DTK output. Closing that
join adds one 1,046-row `CompressToField(computed DTK)`. Removing each old
per-note affine transmission/generator/asset representation saves 11 rows
(4 on-curve + 3 transmission equivalence + 3 generator equivalence + 1 asset
equality), and removing the old shared affine transmission witness saves 7
more (4 on-curve + 3 equivalence). Therefore `2x1` is
`+1,046 - 3×11 - 7 = +1,006`, while `1x8` is
`+1,046 - 9×11 - 7 = +940`. This is the exact cost of replacing an
under-specified representation join with one canonical encoding.

The padded families also remove one full DTK and dummy-RK derivation per
redundant slot, so the family-wide batch is substantially smaller while
removing the same ambiguous witness representation.

The reviewed operation-level attribution is:

| Change | `2x1` | `1x8` | `4x1` | `8x1` |
| --- | ---: | ---: | ---: | ---: |
| Hoist padded-spend DTKs into one shared DTK | — | — | −24,308 | −48,616 |
| Delete in-circuit dummy-RK derivations | — | — | −14,472 | −28,944 |
| Canonical-context binding and other row movement | +1,006 | +940 | +944 | +860 |
| **Compiled family delta** | **+1,006** | **+940** | **−37,836** | **−76,700** |

The component rows reconcile exactly to each compiled family delta. The
positive row is security hardening, not optimization overhead hidden from the
threshold calculation.

## Transfer follow-up

Transfer now derives one shared-sender DTK, binds each spend to its canonical
transmission encoding, and uses canonical created-note transmission encodings.
The compiled circuit falls from 251,469 to 245,389 constraints: −6,080
(−2.42%).

## Scalar multiplication audit

The hint-free two-bit variable-base window prototype measured:

| Scalar width | Variable base | Fixed base |
| --- | ---: | ---: |
| 128 bits | −255 | +501 |
| 251 bits | −600 | +691 |

The 251-bit variable-base reduction would exceed 1% on `note_reshape1x8`
(2.05% of the current family) and `note_reshape2x1` (1.60%). It is not deployed:
the reusable radix-4/Edwards correctness theorem is not yet closed. Production
keeps the current proven ladder.

The fixed-base width-2 candidate is worse, so wider fixed-base tables were not
promoted without evidence they could recover a full-family 1%. Fake GLV and
unconstrained scalar-product hints are rejected; an adversarial probe accepts a
false product for the pinned fake-GLV shape.

## Audited candidates

- Merkle multiproofs may qualify for the padded input families, but change the
  state proof format and require a protocol/state design.
- Quotient-invariant statement encodings may reduce canonical decomposition
  work, but need an isolated proof that the public accepted language is
  unchanged.
- Poseidon2 changes, tree arity changes, shared-address prehashes, and
  exact-arity families are deferred because they require protocol, state, or
  privacy decisions.
- Micro-CSE, conditional branch skipping, current-backend lookup ranges, and
  compression cleanups measured below 1% are rejected as standalone changes.

Use `scripts/fv-census.py` for row-level triage and `scripts/fv-opt-loop.sh` for
the guarded compile loop. Final evidence comes from the deployed key/witness
path in [release.md](release.md).
