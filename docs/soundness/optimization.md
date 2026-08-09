# Circuit optimization

## Decision rule

An optimization lands only when an affected compiled deployed family loses at
least 1% of its constraints. Security fixes are exempt. Counts are a filter;
release evidence must still include witness, prove, verify, memory, and key
effects. Hints are rejected unless their result is fully constrained.

## Retained NoteReshape result

Only the two fixed-padded directions remain deployed: `note_reshape1x8` and
`note_reshape8x1`. The canonical version-3 witness removes per-note address
representations, derives the DTK once, and removes dummy-RK derivations after
extending the accepted language to require an external signature for every
public RK.

| Family | Previous | Canonical v3 | Delta |
| --- | ---: | ---: | ---: |
| `note_reshape1x8` | 28,256 | 29,196 | +940 (+3.33%) |
| `note_reshape8x1` | 194,226 | 117,526 | −76,700 (−39.49%) |

The fixed families grow because the old witness supplied the field encoding of
the transmission key independently from the affine DTK output. Closing that
join adds one 1,046-row `CompressToField(computed DTK)`. Removing each old
per-note affine transmission/generator/asset representation saves 11 rows
(4 on-curve + 3 transmission equivalence + 3 generator equivalence + 1 asset
equality), and removing the old shared affine transmission witness saves 7
more (4 on-curve + 3 equivalence). For 1x8 this is
`+1,046 - 9×11 - 7 = +940`, the exact cost of replacing an under-specified
representation join with one canonical encoding.

The padded families also remove one full DTK and dummy-RK derivation per
redundant slot, so the family-wide batch is substantially smaller while
removing the same ambiguous witness representation.

The reviewed operation-level attribution is:

| Change | `1x8` | `8x1` |
| --- | ---: | ---: |
| Hoist padded-spend DTKs into one shared DTK | — | −48,616 |
| Delete in-circuit dummy-RK derivations | — | −28,944 |
| Canonical-context binding and other row movement | +940 | +860 |
| **Compiled family delta** | **+940** | **−76,700** |

The component rows reconcile exactly to each compiled family delta. The
positive row is security hardening, not optimization overhead hidden from the
threshold calculation.

## Transfer follow-up

Transfer now derives one shared-sender DTK, binds each spend to its canonical
transmission encoding, and uses canonical created-note transmission encodings.
That canonical-context pass reduced the then-current circuit from 251,469 to
245,389 constraints: −6,080 (−2.42%). Later soundness hardening and ABI cleanup
changed the relation again. Transfer V13 deletes a redundant prover-chosen
affine balance point: the statement already compressed the independently
computed net-balance point, so the duplicate could not affect the accepted
body. Removing its four on-curve rows and three cross-ratio rows reduces the
historical V13 circuit from 227,192 to 227,185 constraints and removes 64
witness bytes. V16 changes the relation again; its committed manifest and
circuit metadata are authoritative. The intervening mixed-purpose changes are
not presented as one optimization delta.

Transfer V13 also deletes the required-spend, optional-spend, and change-note
clue-key copies in favor of one sender clue key; the receiver alone retains an
independent key. Transfer V16 then deletes the upload bundle, public shared
points, and all four DLEQ packages. Detection, amount, and address encryption
remain unconditional in the circuit, while the regulation bit gates only the
threshold result and shared-secret selection. This is a security simplification
of the accepted language, not an optimization claim over the historical V13
count. Transfer V16 further separates the exact asset from the flag, constrains
both detection slots to 32 bits, adopts clue-key-bearing compliance leaves,
rejects the asset-tree sentinel, and rejection-samples nonzero tier scalars.
Those are mixed security changes, so no optimization percentage is claimed
until the final V16 artifact census is pinned.

## Withdrawal follow-up

Withdrawal V7 removed duplicated per-note sender clue keys, derived the
fixed-family public body from canonical plan facts, and used the
conservation-specific balance construction. Withdrawal V8 replaces repeated
full policy openings with the canonical compact asset leaf
`(value, nextIndex, nextValue, paramsHash, ringHash)`, adopts the shared
clue-key-bearing compliance leaf, rejects the zero sentinel, and removes
cross-spend transaction-nonce coupling. The fixed 2x1 relation moves from
59,579 to 56,788 constraints: −2,791 (−4.68%). Because this combines
simplification with security hardening, the number is a deployed relation
delta, not a pure optimization attribution.

## Current compiled result

Against the previously committed setup metadata, the four-circuit design now
compiles to:

| Family | Committed baseline | Current | Delta |
| --- | ---: | ---: | ---: |
| `transfer` | 227,176 | 124,428 | −102,748 (−45.23%) |
| `shielded_ics20_withdrawal` | 67,014 | 54,440 | −12,574 (−18.76%) |

These are whole-relation deltas. Transfer combines deletion of the old DLEQ
and public shared-point surface, exact amount-pair aggregation, and radix-4
variable-base multiplication. Withdrawal combines its conservation-specific
balance relation and radix-4 DTK path with the V8 security changes above.
Neither row is presented as a scalar-multiplication-only attribution. Transfer
retains its optional second spend unchanged.

## Scalar multiplication audit

The hint-free two-bit variable-base window measured:

| Scalar width | Variable base | Fixed base |
| --- | ---: | ---: |
| 128 bits | −255 | +501 |
| 251 bits | −600 | +691 |

The 251-bit variable-base path is now deployed. On the two retained
NoteReshape relations its compiled effect is:

| Family | Before | Current | Delta |
| --- | ---: | ---: | ---: |
| `note_reshape1x8` | 29,196 | 28,596 | −600 (−2.05%) |
| `note_reshape8x1` | 117,526 | 116,929 | −597 (−0.51%) |

The reusable radix-4/Edwards correctness theorem and regenerated exact-row
contracts remain release requirements; constraint counts alone are not
certification.

The fixed-base width-2 candidate is worse, so wider fixed-base tables were not
promoted without evidence they could recover a full-family 1%. Fake GLV and
unconstrained scalar-product hints are rejected; an adversarial probe accepts a
false product for the pinned fake-GLV shape.

## Audited candidates

- Transfer and Withdrawal plans still carry per-spend copies of the shared
  sender-compliance and asset-registry witnesses. Admission now requires the
  copies to be identical; a later plan-model refactor can store each shared
  witness once, but must update the generic Transfer construction boundary.
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
