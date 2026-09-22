# Opus 5.5: 05-audit-history-circuits

Artifact: `57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`. Read-only, bounded sector review.

I found no confirmed exploitable bugs in the circuits for this sector. There is one soundness gap that depends on the calling code I didn't review, plus a few smaller correctness and design notes. This was a static read only: I built and ran nothing.

## Scope and coverage
I read all of the current runtime code in the packet:
- `audit.rs`, `disclosure.rs`, `history.rs`, `recovery.rs` and `seizure.rs` under `crates/crypto/circuits/src/`.
- Where these circuits are called from: `catalogue.rs:65-73` and the key-derivation lines in `transfer.rs`.

Every file is newly added, so there was no base version to compare against. I did not read the test files in full; I only looked at the history-test proof setup, which shows the second returned value goes into a private (committed) input slot, not a public one.

## Findings

### 1. Medium, a gap that depends on the caller: the seizure proof doesn't show its key belongs to the note's owner
**Where:** `seizure.rs:109-117`, together with the owner's spend key at `transfer.rs:263-272`.

The seizure circuit proves three things:
- The prover knows some key `rnk` whose hash equals the public field `rnk_commitment`.
- The published nullifier is computed from that `rnk`, the note, and its position.
- The note is in the state tree.

It does not prove that this `rnk` is the key registered for the owner of `s.address`. The owner's normal spend instead uses `effective_nk`, which comes from `sender.rnk_commitment`, a key registered per account, and only applies to regulated assets.

**How it fails:** suppose the code that verifies seizures only checks that `rnk_commitment` belongs to some RNK seizure authority. An authority could then seize a note using an unrelated key. That produces a different nullifier from the one the owner's spend produces. The note gets taken, and the owner can still spend it afterwards. The same thing happens if a seizure is accepted for an unregulated asset, where the owner's key is their private `nk`.

**Status:** hypothesis, not validated. The circuit alone doesn't enforce the link, and I didn't read the seizure verifier.

**Fix:** either
- have the verifier require that `rnk_commitment` equals the registered commitment for the account behind `s.address`, and that the asset is regulated; or
- add a check inside the circuit that ties the key to the account's registration.

Seizure's `authorization` field (`seizure.rs:30,51`) has the same property. It's included in the proof's statement hash but never checked inside the circuit, so the caller has to verify it.

### 2. Low, correctness: honest disclosures of large totals are rejected
**Where:** `disclosure.rs:290-291`.

Each note amount can use up to 128 bits, and the circuit sums up to 32 of them. The sum is then forced to fit in 128 bits (`decompose(ctx, &sum, 128)`), even when the total isn't being revealed. Any honest disclosure whose total overflows 128 bits therefore can't be proven. This is not a soundness problem.

**Fix:** allow 133 bits for the sum, or document a limit on amounts.

### 3. Low, correctness: zero-amount notes can't be disclosed
**Where:** `disclosure.rs:270` rejects any active slot whose amount is zero. The recovery tests (`recovery.rs:187-190`) treat zero-amount notes as valid. If real zero-amount notes exist on-chain, a selective or audit disclosure that includes one can't be proven.

**Status:** hypothesis. Whether this matters depends on whether wallets ever create zero-amount notes that aren't padding.

### 4. Informational: `total_asset` is unconstrained when the total is disabled
When `total_enabled = 0`, `total_asset` isn't checked (only `disclosure.rs:284` uses it, and only when enabled). It is still included in the statement hash, so a prover can put any value there. Verifiers must ignore it when the total is disabled, or the circuit should force it to zero.

## Checked and found sound
- **Disclosure:**
  - Slots are filled in order, starting with the first.
  - Inactive slots are zeroed out.
  - Revealed fields must match the note; hidden ones are forced to zero.
  - The predicate operation is exactly one of six, and the result is checked exactly.
  - `lower` and `upper` are zero when unused, and `lower <= upper` holds for range checks.
  - The note commitment and the context hash are both checked.
  - All public facts are included in the statement hash.
  - The circuit doesn't prove the note is in the state tree. The comment at `disclosure.rs:271` says the consuming application does that, which is a cross-sector follow-up.
- **History:**
  - The non-membership check uses strict before/after comparisons, with the start and end markers handled correctly.
  - The start marker is tied to position 0; the end marker forces its "next" fields to zero.
  - The ten entries in a chunk are linked by their indices and a hash chain, and the positions are hashed into each link.
- **Recovery:** the full recovery ciphertext commitment, the confirmation value (including the salt), and the key exchange are all bound. The randomizer is checked to be in range and nonzero.
- **Audit:** the registered keys can't be the identity, the unregulated sink key, or equal to each other. The ownership encryption uses an in-range randomizer and a non-identity key. The single payload key matches the intended design.

## Cross-sector follow-ups
1. **Seizure verifier:** check that `rnk_commitment` matches the owner account's registered RNK, that the asset is regulated, that `authorization` is checked, and that `history_required` and `recent_floor` are enforced (Finding 1).
2. **Disclosure consumer:** check that `commitment` is in the state tree, and that `total_asset` is ignored when the total is disabled.
3. **History consumer:** check that the chain of positions and history heads actually matches what's on-chain.
4. **Tests to request from the coordinator:** a seizure with a non-registered RNK (expected to be rejected at the verifier level), and a disclosure of 32 slots each holding the maximum amount (to confirm Finding 2).

## Not reviewed
- The test files in full, and how well they catch distinct failures.
- The seizure, disclosure and history verifiers outside this sector.

**Status: COMPLETE** for the runtime circuits in this sector. The limits are that Finding 1 needs the verifier checked and nothing was run.
