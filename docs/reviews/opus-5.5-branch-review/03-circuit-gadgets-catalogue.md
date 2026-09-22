# Opus 5.5: 03-circuit-gadgets-catalogue

Artifact: `57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`. Read-only, bounded sector review.

# Sector 03 (circuit gadgets and catalogue) review: 57eb44e8ca..c4b8b6d28e

I found no confirmed soundness or security bugs in the parts I reviewed. The sector is **PARTIAL**: about a dozen files, mostly tests and fixtures, remain unread (listed below). This was a read-only static review. Nothing was built or run, and I did not check the test results.

## Scope and coverage
Every file in this sector is new on the branch, so there was no base version to compare against. I read these in full or near full, in current source:
- `range.rs` (lines 1–216), `scalar.rs`, `tree.rs`, `encoding.rs`, `group.rs`, `map.rs`, `proof.rs`, `registry.rs`
- `catalogue.rs` (lines 1–266 and 400–500)
- `hash.rs` (lines 1–150)
- `encryption.rs::constrain` (lines 255–375)

I also checked the Commonware `Var::inv`, `Div`, `BoolVar::witness/assert/select` behaviour in `third_party/commonware/cryptography/src/zk/circuit.rs:594-782`. Inversion and division both add a `q·d = n` or `inv·x = 1` constraint, and `BoolVar::witness` enforces that the value is 0 or 1.

## Findings
No confirmed findings. What I checked in each area:

**Range and decomposition** (`range.rs`)
- `decompose` limits width to 254 or less. Any such sum is below r (about 2^254.86), so it can't wrap and the decomposition is one-to-one.
- `less_or_equal` computes `le = (a<b) + le·(a==b)` from the least to the most significant bit, which is correct.
- `less_or_equal_bounded`: a prover who lies about `borrow` needs `difference` to be at least 2^w or to wrap around the field. Both fail the w-bit decomposition because w ≤ 253.
- `less_or_equal_limbs` splits the comparison into a high part (127 bits) and a low part (128 bits) and combines them correctly.

**Field and Jubjub scalar encoding**
- `encoding::canonical_bits` requires the 255 bits to be at most r−1, so the value has exactly one encoding.
- `scalar::canonical_bits` requires the value to be at most the Jubjub order minus 1.
- `constrain_reduction` limits the quotient to at most 8. When the quotient is 8, the remainder must be at most `r−1−8·order`, so `q·order + rem` can't wrap around the field.

**Group operations** (`group.rs`)
- `witness_subgroup` computes `p = 8·q` from an on-curve `q`, which puts `p` in the prime-order subgroup.
- `assert_non_identity` requires x ≠ 0. That rules out both the identity and the order-2 point (0, −1).
- Affine addition and doubling are only complete for points already known to be on the curve: a zero denominator paired with a zero numerator would leave the quotient unconstrained. I grepped every `multiply_bits` caller (authorization, balance, withdrawal, audit, encryption, recovery). Each variable base comes from `witness_subgroup`, from `Generators` constants, or from a selection between those two, so the requirement holds today.

**Map** (`map.rs`)
- Choosing the square root is sound. `root² = square ? gx1 : 5·gx1` can only be satisfied one way because 5 is a non-square.
- The sign of y follows RFC 9380: its parity must equal the `square` flag.
- The zero-denominator case gives the identity point, and the prover can't force it for a nonzero denominator (`den·zero = 0`, `inv·zero = 0`). The native and in-circuit versions agree.

**Tree** (`tree.rs`)
- The position is decomposed into exactly 2·D bits. `root_with_position_bits` re-checks that those bits add back up to the position.
- I traced all four selections of the high/low bits. Each one matches the slot order in `native_root`.
- The level number is hashed as input 0 and the tree kind is used as the hash domain.

**Hash** (`hash.rs`)
- The starting state is `arity·256 + domain`, so different input counts are hashed differently.
- Rounds 0–3 and 61–64 apply the S-box to every element and the 57 rounds between apply it to element 0 only, for 65 rounds in total. The output is taken from `state[1]`.

**Proof envelope and catalogue**
- The envelope must be exactly 244 bytes, and the suite byte and family byte are checked.
- The family is committed into the transcript.
- On verification, the relation digest must equal the one in the locally selected key. There must be exactly one public input, equal to the statement, and exactly one commitment.
- The catalogue test checks that relation digests are distinct for all nine families and match real witness shapes.

**Registry** (`registry.rs`)
- If `regulated=1`, the asset must equal the leaf value. If `regulated=0`, the asset must lie strictly between the leaf value and the next value, using the canonical 255-bit comparison.
- Keys are witnessed through `witness_subgroup`.

## Unverified ideas and weak spots
1. **Unconstrained division in point addition** (`group.rs:318-342`). `quotients` uses `n / d`, which leaves the result free when both `n` and `d` are 0. It is safe only because every caller passes validated points. No function type enforces this; the only guard is a doc comment. A future caller that passes an unchecked `Point { x: var, y: var }` to `multiply_bits` would open a soundness hole. Suggested fix: make the `Point<Var>` constructor private and only create validated points through `witness_subgroup` or constants. At minimum, add a debug assertion that the point is on the curve inside `multiply_bits`.
2. **Circuit shape covers only one witness variant per family.** `catalogue.rs:460` compiles the relation for a single set of fixture flags per family. I found no Rust `if` statements on witness flags in the circuit code (grep for `if w.<flag>` returned nothing outside tests), so this looks fine. Still, a test that varies `is_dummy`, `history_required`, `use_real`, `regulated` and `flagged` and checks the relation digest stays the same would catch future shape drift.
3. **Two different "unregulated ring" constants.** `audit.rs:54` compares against `shieldd_sdk_crypto::audit::UNREGULATED_RING` (an SDK constant). `withdrawal.rs:202-209` and `self_action.rs:50` instead use `map::Generators.unregulated_ring`, which is derived from a hash of the `UNREGULATED_RING` domain. I haven't confirmed whether the two are the same point, or whether it is intended that withdrawal uses a ring point as the fallback *payload* key. **Coordinator repro:** assert `Generators::derive(p).unregulated_ring == native_point(&audit::UNREGULATED_RING)`.

## Cross-sector follow-ups
- For each family, confirm that `constrain` recomputes the statement digest in-circuit from the constrained values and asserts it equals the public input (transfer, reshape, withdrawal, seizure, disclosure, history). This is where the "statement fully bound" requirement actually lives, and it is outside this sector.
- For the registry, confirm that the out-of-circuit tree maintenance keeps the leaves as a sorted linked list. That ordering is what makes the gap check prove an asset is unregulated.
- In `encryption.rs:342` and `withdrawal.rs:238`, the `flagged` flag switches the whole payload key between the detection/issuer key and the audit payload key. Check that this matches the intended split: one Orbis payload key, with issuer screening and RNK seizure authority kept separate.

## Not reviewed
- `hash.rs` from line 150 on (choosing the 3-wide or 6-wide permutation)
- `range.rs` from line 217 on (tests)
- `catalogue.rs` lines 267–399 (template bodies)
- the rest of `encryption.rs`, and `encryption/tests.rs`
- `fixtures.rs`, `map/tests.rs`, `tests/pari.rs`
- `examples/catalogue_shapes.rs`, `examples/export_poseidon.rs`
- `Cargo.toml`, `lib.rs`

I also didn't check the Poseidon parameter JSON files against an independent reference.

**Status: PARTIAL.** The core gadgets (range, scalar, tree, encoding, group, map, proof envelope, registry) are covered with no findings. The files listed above remain.
