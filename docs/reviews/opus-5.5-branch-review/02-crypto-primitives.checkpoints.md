# Opus 5.5: 02-crypto-primitives

Artifact: `57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`. Read-only, bounded sector review.

Read the core source files directly.

I've finished the review of this sector: it found **no security or correctness defects**, only two low-severity test weaknesses and some unverified assumptions. I couldn't build or run anything, so the reproductions below are for you to run.

## Sector 02-crypto-primitives: final report

### Scope and coverage
I read the current code in full for `crates/crypto/primitives/src/{encoding,ka,map,generators,poseidon,domains,audit,lib}.rs` and the Orbis README diff (`011.patch`). For the Poseidon parameter JSONs I checked only which top-level fields they have, not the constants. I also read the generator `crates/crypto/circuits/examples/export_poseidon.rs`, how `circuits/src/hash.rs` loads the parameters, and the `ka::` callers found by grep. `Cargo.toml` (000.patch) was not opened. All these files are new on the branch; the retired backends were not reviewed.

### What holds (checked by reading the code)
- **Subgroup and canonical encoding:** `encoding::point` (`encoding.rs:25-30`) decodes through `SubgroupPoint::from_bytes` and requires the bytes to re-encode identically. This rejects small-order points and noncanonical encodings. `field` and `scalar` use the library's canonical `from_bytes`. `pack` splits bytes into 31-byte chunks, so each chunk always fits in the field. It adds no length itself, but `policy_identifier` puts the length first (`poseidon.rs:118-124`).
- **Diffie–Hellman (DH):** `Public` rejects the identity point and `Secret` rejects zero. So `key_agreement_with` can never produce the identity (prime-order group, nonzero scalar, non-identity point). The shared secret is raw point bytes, and `symmetric::derive` hashes it together with the ephemeral key. The DKG and disclosure callers go through the checked `try_from`.
- **Hash-to-curve (`map.rs`):**
  - The constants are correct for Jubjub's Montgomery form (A=40962, B=-40964, from a=-1, d=-10240/10241).
  - The code's claim that "-1/5 is nonsquare" holds: r ≡ 1 mod 4, and r ≡ 3 mod 5 makes 5 a nonsquare. So the `unwrap` on line 14 cannot panic.
  - The Edwards map x=u/v, y=(u-1)/(u+1) is correct, and its exceptional points go to the identity. Cofactor clearing puts the result in the prime-order subgroup.
- **Generators:** `SPEND_AUTH` and `VALUE_BLINDING` come from the RedJubjub bases in `reddsa`, and a test checks them against native multiplication. The sink points (`UNREGULATED_RING` and `UNREGULATED_DETECTION`) are hashed to the curve with no known discrete log.
- **Domain separation:** the sponge's initial state is `len*256 + domain` with `domain: u8`, which is injective, so both arity and domain are bound. The domain registry has no duplicates; 27 is simply unused.
- **Poseidon:** both widths use 8 full rounds, 57 partial rounds and alpha=5. The round order (constants, S-box on the full/partial pattern, then MDS) and the absorb/squeeze behaviour match Arkworks `PoseidonSponge` with capacity 1 and output `state[1]`, including zero inputs and exact multiples of the rate. The native code and the circuit load the same JSON.
- **Audit keys:** there is a single `payload` key, as intended for the one Orbis key covering amount, sender and recipient, plus a separate `checking` key. `validate_registered` requires a nonzero epoch, distinct keys and no sink key. The commitment binds the epoch and both points.
- **Orbis README:** it now documents BLS12-381 for PRE delivery and Jubjub openings as opaque bytes. That is consistent with the code.

### Findings (by severity)
None at Medium or above.

**L1 – Poseidon parameter provenance is not pinned by any test (static finding, test weakness).**
- **Where:** `poseidon.rs:131-157` and `circuits/src/hash.rs:184+`.
- **Problem:** The vectors in the JSON are produced by `export_poseidon.rs` from the same constants they sit next to. The native and circuit tests only confirm the permutation matches those vectors. If the constants were edited and the vectors regenerated from the edited values, every test would still pass, and native and circuit would still agree. Nothing ties the JSON back to `find_poseidon_ark_and_mds::<Fr>(255, rate, 8, 57, 0)`, and there is no pinned hash. The loader (`poseidon.rs:44-48`) checks the parameter values but not the constants themselves. The test name "independent_parameter_vectors" overstates what it checks.
- **Fix:** add a test in the circuits crate (which already depends on Arkworks) that regenerates constants and MDS for widths 3 and 6 and requires them to equal the JSON. Alternatively, pin SHA-256 hashes of both files, or both.

**L2 – No fixed test vectors for `map::to_subgroup` or the derived generators (hypothesis about interoperability, not a defect).**
- **Where:** `map.rs:25`.
- **Problem:** The sign rule, `sgn0(y) XOR is_square`, is not RFC 9380 Elligator 2 (which compares `sgn0(y)` with `sgn0(u)`). Because the map only uses u², `u` and `-u` map to the same point. That is harmless when inputs are Poseidon outputs. However, the circuit gadget and any external party (Orbis or auditor tooling) must copy this exact non-standard rule, and no fixed expected points are pinned for `UNREGULATED_RING`, `UNREGULATED_DETECTION` or the ownership fingerprint.
- **Fix:** add hard-coded expected encodings for these points and for a few `to_subgroup(u)` inputs, including u=0, and assert them in both the native and circuit tests.

**Info:**
- `AuditKeys::from_bytes` and its serde path accept epoch 0 with any non-identity keys; only `validate_registered` enforces the registered-key rules. That is fine only if every registry and statement caller calls `validate_registered`. This is a cross-sector follow-up, not verified here.
- `ka::Secret::public` uses the `SPEND_AUTH` base, which is also the ElGamal base for `OwnershipCiphertext`. That is safe as long as no scalar is reused across these roles; I saw no such reuse in the callers I grepped.

### Unnecessary complexity
Minor: the Poseidon artifact loader (`Artifact` struct and recipe check) is duplicated between `primitives/src/poseidon.rs` and `circuits/src/hash.rs`. Keeping one exported loader would give both a single recipe check.

### Needed reproductions
1. Regenerate the Poseidon constants with `export_poseidon` for widths 3 and 6 and compare them field by field with the committed JSONs (this settles L1 now).
2. Optionally, confirm that 57 partial rounds meets 128-bit security for width 6 over the 255-bit field, using the Poseidon reference round-number script. The MDS matrices generated by Arkworks' Grain LFSR also skip the reference implementation's checks for insecure matrices. I believe both are fine, but this is unverified.
3. Compare the circuit's hash-to-curve gadget output with `map::to_subgroup` on edge inputs: u=0 and inputs where `gx1` is and isn't a square.

### Cross-sector follow-ups
- Circuits: equivalence of the Elligator gadget and the in-circuit check that points are not the identity or small-order.
- Registry and compliance: that `validate_registered` is called wherever audit keys are registered.
- Keys: that the `symmetric::derive` key derivation binds the domain.

### Unreviewed
The Poseidon constants themselves (only the loader checks and generator were reviewed), `Cargo.toml` (000.patch), and the `jubjub`, `reddsa` and Orbis source code upstream.

**Status: COMPLETE** for this sector's runtime code, with the provenance and interoperability checks above left for the coordinator to run.
