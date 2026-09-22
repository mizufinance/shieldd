# Opus 5.5: 10-host-lifecycle-persistence

Artifact: `57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`. Read-only, bounded sector review.

# Sector 10 (host lifecycle and persistence) review: PARTIAL

I found no blocking or high-severity defects in what I read. I did not re-examine the Sector 05 RNK hypothesis at the circuit level, but the host-side checks are complete. The review stopped at 18 tool calls because of the dollar budget, so several files are only partly covered (listed below).

## Scope and coverage

**Read the diff and traced the runtime path:**
- **Host seizure path:** `host.rs:700-890` (full `seize_note` path) and `host.rs:1019-1045` (the parse step).
- **Host state machine:** `host.rs:470-534` (`end_block`, `commit`, `rollback`, `release`).
- **Commit lifecycle:** `lifecycle.rs` (patch 009, full).
- **Service:** `service.rs` (patch 005, first 260 lines: open, new, rollback, historical witness, close).
- **C ABI:** `ffi.rs` (patch 003, full).
- **Pack maintenance:** `nullifier_generation_packs.rs:160-270` (`maintain_one_page`, `ensure_pack`) and the call sites at lines 98-152 and 323-327.
- **Packed-nullifier storage:** `generation_pack.rs:532-580` (`ready_receipt`, `forget_ready_receipt`, `quarantine`) and `nullifier_tree.rs:1095-1176` (`record_generation_pack_completion`, `prune_packed_generation_page`).
- **TCT identifiers:** `tct/commitment.rs` (patch 023), `tct/internal/hash.rs` (patch 029) and `tct/storage.rs` (patch 038, doc-only).
- **New tests:** `tct/tests/jubjub_path.rs` (patch 044, new).

**Related callers, read to trace the Sector 05 request:**
- `note_seizure.rs:597-701`
- `action_handler/transaction.rs:376-452`

## Coordinator follow-up: seizure RNK, history window and authorization commitment

At the host level, I found no gap that would let an unrelated RNK or a stale history get through. The chain of checks:

1. **Parsing validates everything.** `ParsedNoteSeizure::parse` → `NoteSeizure::try_from` calls `seizure.validate()` (`note_seizure.rs:699`). That enforces:
   - `recent_position_floor == nullifier_window.recent_position_floor`
   - `history_required` is true exactly when a historical proof is present
   - the historical proof's nullifier equals `authorization.nullifier` (`note_seizure.rs:614-636`)
2. **Authority and account.** The asset policy must be regulated and have a seizure authority, and the signature is checked against that authority (`host.rs:739-747`). The authorization carries the account (address and asset). The leaf must be registered and in Frozen or Seized status. It must match both `freeze_generation` and `frozen_since_height`. Finally, `leaf.rnk_commitment == seizure.rnk_commitment` (`host.rs:749-768`).
3. **The proof is bound to the same facts.** `proof_public` feeds `authorization`, `anchor`, `history_required`, `recent_position_floor`, `recovery_capsule`, `recovery_seed` and `rnk_commitment` into the proof (`note_seizure.rs:639-649`). The anchor is checked with `check_claimed_anchor` (`host.rs:777`).
   - What I could not confirm here: whether the circuit derives the note's nullifier and ownership from the RNK behind `rnk_commitment`. That is a circuit question (Sectors 05/circuits). The host passes a leaf-matched `rnk_commitment` into the proof, so the host side is closed.
4. **History window.**
   - The seizure's window must equal the current window (`host.rs:770-776`).
   - When a historical proof is present, `verify_historical_nullifier_proof` chains chunk and generation proofs from the empty head. It requires the final head to equal `window.archived_history_head` (`transaction.rs:447-450`).
   - When `history_required == false`, nothing old is checked on the host. The recent/old split then depends on the circuit enforcing `position >= recent_position_floor`, which is a circuit follow-up.
   - `check_nullifier_unspent` and `nullify` run before the receipt is stored (`host.rs:812-840`).
5. **Authorization commitment.** It is covered by the authority signature and bound into `CapsuleReleaseRequest.authority_instruction_commitment` (`host.rs:787-805`). The same value is recorded in the `NoteSeized` audit effect. Replays go through `source_key` and `request_digest` (`host.rs:705-726`).

## Findings

### F1 (Low, static observation; runtime impact not reproduced): error paths in service setup skip `storage.release()`
- **Where:** `service.rs`, `new_with_generation_packs` (diff lines 123-137).
- **Trigger:** `check_app_version`, `HostExecution::new` or `nullifier_generation_packs::prepare` fails.
- **What happens:** the function returns without calling `storage.release().await`. The earlier failures in `open_inner` (compatibility check and `registry_binding::check`) do call it.
- **Possible consequence:** when a C ABI host retries open on the same DB in the same process, RocksDB may still be locked. Whether it is depends on whether dropping `Storage` closes the DB.
- **Why it's from this branch:** these checks, and running `prepare` inside the constructor, are new here.
- **Suggested fix:** call `release()` on these error paths too, or run the checks in `open_inner`.
- **Reproduction for the coordinator:** force `prepare` to fail with a corrupt pack directory, then call `open` again in the same process.

### F2 (Low, possible hardening; not a demonstrated vulnerability): TCT leaves have no domain separation and can collide with padding values
- **Where:** `tct/internal/hash.rs`: `Hash::of(item) = Self::new(item.0)`.
- **What changed:** the old leaf hash used `hash_1(DOMAIN_SEPARATOR, c)`. Now:
  - a leaf is the commitment itself
  - `Hash::zero()` pads the frontier
  - `Hash::one()` pads complete nodes
- **Consequence:** a leaf with commitment 0 or 1 hashes the same as padding. A membership proof for commitment 0 at an empty position would therefore verify against the current root.
- **Why it's intentional:**
  - `jubjub_path.rs` checks that this matches the Pari State relation.
  - The test also checks that 0 and 1 leaves survive storage.
- **Why it isn't exploitable today:** each spend or seizure opens a note commitment that the circuit computes as a Poseidon output. Producing 0 or 1 would require a hash preimage.
- **Cross-sector check:** confirm that every circuit and every host append path computes the commitment rather than accepting it. If any takes a raw commitment, this becomes a real issue.

## Things that checked out (not findings)
- **Commit failure handling:** the phase is set to `CommitInterrupted` before `App::commit`, and `commit` only accepts `InitializedGenesis` or `EndedBlock`. So after any failure, `rollback` is the only way forward, and it rebuilds `App` from `latest_snapshot`.
  - A partial maintenance write is restored into `self.state` at `lifecycle.rs` but is always discarded by that rollback. Dropping that restore would be a small simplification.
- **Pack maintenance can't split consensus:**
  - Receipt, cursor and prune writes are all non-verifiable, so local pack state can't change the app hash.
  - Maintenance only records readiness taken from committed snapshots (`nullifier_generation_packs.rs:101-152`), so a rolled-back block can't leave a mismatched ready receipt behind.
  - Pruning refuses the current and previous generations (`nullifier_tree.rs:1149-1152`).
- **Liveness caveat (inherent design, not a bug):** a receipt/archived mismatch at `nullifier_generation_packs.rs:203-209` makes commit fail every time until the process restarts, since the ready cache lives in memory. It only arises from on-disk tampering or corruption. It could be downgraded to forgetting the receipt, but that is optional.
- **Historical witness query (`service.rs` diff):** it keeps "archived nullifier already spent" distinct from "pack unavailable", and repairs only after the expanded-state lookup fails.
- **C ABI:** `out_handle` is cleared before any input validation, and there is a test for it. The Pari registry comes from `SHIELDD_PARI_KEYS`, is bound at genesis (`registry_binding::initialize`) and is checked on open.
- **Commitment codec:** both `StateCommitment` and `Hash` reject non-canonical field bytes. `Hash` and `Ord` are defined over canonical bytes. `Hash(None)` replaces the old out-of-range sentinel, and an uninitialized hash now panics on `Fq::from` instead of being used silently.

## Simplicity and test notes
- `#[cfg(test)]` code inside `App::commit` (`commit_extracted` plus `pending()`) puts a test hook in the production function. That's acceptable, but it could be replaced by a fault-injecting storage wrapper.
- `jubjub_path.rs` is a useful parity test between the native tree and the circuit relation, covering tier boundaries.

## Cross-sector follow-ups
1. **Circuits:** check that the seizure circuit ties the note's nullifier and ownership to the RNK behind the public `rnk_commitment`, and enforces `position >= recent_position_floor` when `history_required == false`.
2. **Circuits and shielded pool:** check that no path appends a caller-supplied commitment that isn't hash-derived (see F2).

## Not reviewed (why this is PARTIAL)
- **Partly read:**
  - `host.rs` diff outside the seizure and commit sections (deposit, withdrawal and other host actions)
  - the rest of the `service.rs` diff after line 260
  - `generation_pack.rs` beyond lines 532-580
- **Not opened:**
  - **`sct` crate:** `nullifier_generation.rs`, `indexed_nullifier_tree.rs`, `nullifier.rs`, `component/tree.rs`, `state_key.rs`, `tests/pari_hashes.rs`, `Cargo.toml`
  - **`tct` crate:**
    - `block.rs`, `epoch.rs`, `error.rs`, `index.rs`, `internal.rs`
    - `frontier/tier.rs`, `hash/cache.rs`, `hash/option.rs` (deleted), `interface.rs`
    - `internal/path.rs`, `internal/proof.rs`, `lib.rs`, `proof.rs`, `random.rs`
    - `serialize.rs`, `serialize/fq.rs`, `structure.rs`, `tree.rs`, `witness.rs`
    - `Cargo.toml`, `tct-property-test/tests/witness.rs`
  - **`shieldd` binary crate:** `Cargo.toml`, `examples/state_persistence.rs`, `include/shieldd.h`, `lib.rs`, `service_contract_tests.rs`, `tests/c_abi_smoke.c`
  - **`app` crate:** `app_version.rs`
