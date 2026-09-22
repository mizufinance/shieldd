# Opus 5.5: 03b-catalogue-encryption-tests-followup

Artifact: `57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`. Read-only, bounded sector review.

# Sector 03b follow-up review (catalogue, encryption, tests): no findings, PARTIAL

I found no bugs that can be triggered in the current code in the parts I read. Some test and fixture files were only partly read, so the sector is **PARTIAL**. This was a read-only static review; I didn't build or run anything.

## Scope and coverage
From the remaining list in the previous report, I read these in current source:
- **`hash.rs` 40–269:** loading the Poseidon recipe, the permutation, the sponge, choosing between the 3-wide and 6-wide permutation, and the tests.
- **`catalogue.rs` 260–404:** the template bodies.
- **`encryption.rs` 1–255:** the `Published::fields` ordering and the fixture-side `encrypt`.
- **`map/tests.rs`:** read in full.
- **`range.rs` 217–260:** tests.
- **`lib.rs`:** read in full.
- **`fixtures.rs` 240–279:** where the effective ring and issuer keys are chosen.
- **`tests/pari.rs`:** skimmed its assertions only.

I also checked `crates/crypto/primitives/src/audit.rs:10-13` and `map.rs:150-167` for the unregulated-ring constants.

## Findings
None confirmed.

### How the hash chooses its width (`hash.rs:149-155`)
- Calls with at most 2 inputs use the 3-wide permutation; anything larger uses the 6-wide one.
- The starting value is `arity·256 + domain`, with an overflow check (`hash.rs:108-114`). Because the input count is part of that value, the same inputs padded with an extra zero hash differently, and the test at `hash.rs:227-230` checks this.
- An empty input list still runs one permutation.
- Rounds 0–3 and 61–64 apply the S-box to every element, and rounds 4–60 only to the first. That gives 8 full rounds and 57 partial rounds, matching the `full_rounds == 8` and `partial_rounds == 57` checks.
- The native hash and the circuit hash run the same code with a different `lift`, so they can't drift apart.
- `native_and_circuit_match_pinned_arkworks_vectors` tests each width only against vectors of its own size. That matches how the width is chosen, so nothing untested hides there.

### Unregulated-ring constants
Both sides follow the same recipe:
- **Primitives:** `map::to_subgroup(poseidon::hash(UNREGULATED_RING, &[]))` (`audit.rs:10-11`).
- **Circuits:** `to_prime(params.native(UNREGULATED_RING, &[]))` (`map.rs:153-166`).

Both use domain 29 with no inputs. `map/tests.rs:73-74` checks that `native_point(to_subgroup(x)) == to_prime(x)` for zero, ±1, a 128-bit value and 32 hash outputs. Combined with your confirmation that all existing Poseidon vectors match, the two constants agree by construction. The detection key (`UNREGULATED_DETECTION`, domain 28) follows the same pattern.

There is no direct test comparing `Generators::unregulated_ring` with `sdk::audit::UNREGULATED_RING`. That would be a cheap regression pin, but it isn't a bug.

### Independent Elligator check (`map/tests.rs:47-96`)
The previous report asked for this; it already exists:
- It builds an Arkworks `Elligator2Map` with `Z=5`, calls `check_parameters()`, and compares native, runtime (`shieldd_sdk_crypto::map::to_subgroup`) and circuit outputs against Arkworks `map_to_curve().clear_cofactor()`.
- Inputs are 0, 1, −1, 2¹²⁸−1 and 32 Poseidon outputs spread across the whole field.
- It checks that the result is on the curve and in the prime-order subgroup.
- A negative case checks that a wrong x-coordinate is rejected.
- It also checks the square/non-square choice both ways and that the three fixed generators are all distinct.

It doesn't test the exceptional Elligator inputs. For example, it never feeds a u where 1 + 5u² = 0; −1/5 is a non-square, so that case can't happen with these parameters. It also has no input chosen to hit an 8-torsion result directly. Given the cofactor clearing and the full comparison against Arkworks, that is adequate.

### Catalogue template bodies (`catalogue.rs:314-404`)
They are all-zero placeholders with fixed-length arrays. The Transfer template sets `regulated: false` and both precisions to `0`.

- **Possible issue:** if any Transfer gadget changes its constraint structure based on the native `regulated` bool, a template built with `regulated: false` could produce a different circuit shape than a regulated proof, and the verifying keys would stop matching.
- **Evidence it's handled:** in the code I read, `regulated` is only used through `select`, which produces the same structure either way (`transfer.rs:229-346`, `self_action.rs:51`).
- **Not proven:** I didn't read the part of `transfer.rs` that turns `regulated` into a `BoolVar`, so I can't rule this out statically. **Reproduction for the coordinator:** build a regulated and an unregulated Transfer fixture and assert that their constraint counts and verifying keys are identical. The `catalogue_shapes` example may already print these shapes.

### Fixture-side `encrypt` (`encryption.rs:147-247`)
- Ephemeral scalars must be nonzero and canonical.
- Salts come from `SALT(nonce_root, i)`, with index 0 reserved for the detection plaintext.
- The sender-core and output-core ciphertexts carry the amount. The sender-extended ciphertext carries the *receiver's* address and the output-extended ciphertext carries the *sender's* address, so each tier holds the counterparty's address.
- The key is the payload key, or the detection key if the transaction is flagged.
- `Published::fields` covers every published field. Its order (detection, both cores, both extended tiers, policy, salts, epoch, ownership) differs from the struct's declaration order. That only matters if `constrain` hashes a different order, and sector 03 reviewed `constrain` and found it consistent.

This code is fixture-only and never runs on a prover or verifier path, so nothing here is a security issue.

### Other files
- **`range.rs` tests:** they exhaustively compare small widths against all values in both directions, check that a width of 254 (which would allow the field to wrap around) panics, and check the inclusive boundary. They are distinct and useful.
- **`lib.rs`:** `fixtures` is compiled only under `#[cfg(test)]`, so it doesn't leak into the library.

## Test weaknesses (minor, actionable)
- `hash.rs:243-268` checks for singular minors only on the 3-wide MDS matrix, not the 6-wide one. You've already confirmed the MDS values against the recipe, so this is minor. A cheap improvement is to assert the 6×6 determinant is nonzero, or to drop the test and rely on the recipe regeneration.
- `hash.rs:160-161`: `let output = …; output` is redundant; it could just return the expression.

## Cross-sector follow-ups
1. The Transfer shape-invariance reproduction described above.
2. Optionally, a test pinning the circuit's unregulated-ring constant to the SDK constant.

## Not reviewed
- `encryption/tests.rs` (whole file)
- `fixtures.rs` apart from lines 240–279
- `tests/pari.rs` bodies (assertions skimmed only)
- `examples/catalogue_shapes.rs` and `examples/export_poseidon.rs`
- `Cargo.toml`

**Status: PARTIAL.** Hash width selection, catalogue templates, fixture-side encryption, the Elligator parity tests, range tests, `lib.rs` and the unregulated-ring constants are covered with no findings. The files listed above remain.
