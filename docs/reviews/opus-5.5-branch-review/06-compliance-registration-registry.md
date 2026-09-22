# Opus 5.5: 06-compliance-registration-registry

Artifact: `57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`. Read-only, bounded sector review.

# Sector 06: compliance registration and registry review (PARTIAL)

I found no validated vulnerabilities in the paths I reviewed. The coordinator's two questions are answered below: every admission path checks the asset audit keys before they reach the tree, and the sorted asset list is kept in order correctly. Some parts of the sector (listed at the end) were not reviewed, so the sector is **PARTIAL**.

## What I reviewed
- `registry.rs`:
  - admission types (L130–239)
  - value index and predecessor lookup (L534–558)
  - `put_asset_imt_leaf` (L867–877)
  - `authenticate_asset_leaf` and tree initialisation (L1001–1041)
  - `add_compliance_leaf` (L1078–1128)
  - `register_asset_in_imt` (L1234–1340)
  - `set_asset_policy` and `set_ibc_origin_asset` (L1357–1389)
  - `replace_asset_ibc_policy` (test-only)
  - the seizure lifecycle entry point (L1698–1725)
- `registration.rs`, all of it.
- `structs.rs`: `AssetPolicy` validation and storage encoding (L606–800), and `validate_authorization_keys` (L1126, L1560).
- `component/state.rs`: genesis callers (L67, L126) and the `MsgRegisterAsset` handler (L280–358).
- `crates/crypto/primitives/src/audit.rs`: `AuditKeys::validate` and `validate_registered`.

## Coordinator follow-up 1: are audit keys checked before a leaf is admitted?
Yes, on every path I found that writes a regulated policy or asset leaf.

- **Rule being enforced:** `validate_registered` (audit.rs:48–63) rejects:
  - epoch 0
  - an identity key
  - the unregulated placeholder key
  - reusing the same key for two audit roles

  `AssetPolicy::validate_regulated` (structs.rs:693) calls it first. It then also rejects:
  - identity keys for the detection key, ring key and both authorities
  - an audit key equal to the ring key or the detection key
  - missing or oversized text fields
  - a missing registration or seizure authority
- **Normal registration:** `AssetGrantAdmission::verify` → `policy_from_asset_grant` → `validate_regulated` (registration.rs:135).
- **Genesis assets:** `GenesisAssetAdmission::validate` → `validate_regulated` (registry.rs:226). An unregulated asset must use exactly the default policy (L229).
- **Final write:** `register_asset_in_imt` checks `validate_regulated` again (registry.rs:1245) immediately before the leaf and policy are written. Normal registration, genesis and the test helper all go through it.
- **User paths:** `GenesisUserAdmission::validate` (L141) and `validate_user_grant` (registration.rs:20) both check the asset policy with `validate_regulated`.
- **Storage encoding:** `AssetPolicy::to_bytes` only runs the weaker `validate_crypto_keys` (identity checks, no epoch or distinctness checks). That is fine because it only ever encodes policies that were already admitted. The other `validate_crypto_keys` callers (structs.rs:989 and 1065) are decode paths, which I did not trace to their callers. I saw no way for a policy that fails `validate_registered` to become a regulated tree leaf.
- **Policy changes after admission:** the only one is `replace_asset_ibc_policy`, which is `#[cfg(any(test, feature="test-helpers"))]`. It changes only the route list, so the audit keys stay valid. **Follow-up:** check that the `test-helpers` feature is never turned on in the production node build.

## Coordinator follow-up 2: sorted linked list for asset non-membership
The logic is correct.

- **Finding the predecessor:** a descending-key range scan (registry.rs:541–557) returns the largest stored value at or below the new value. Duplicates are rejected earlier (L1254), so this is the largest value strictly below it.
- **Gap check:** L1269–1276 requires `low.value < value < low.next_value`, comparing canonical field order (`FqOrdKey`).
- **Pointer update:** the new leaf takes over `(low.next_index, low.next_value)`. The predecessor is rewritten to point at the new leaf (`next_index = new_position`, `next_value = value`) and keeps its own policy fields (L1287–1295).
- **Tree consistency:** both touched positions are checked against the committed root before writing (L1303–1306), and the new position must still be empty. The value index is updated together with each leaf (L872–875). Both leaves are recomputed in one overlay (L1313–1318). Before any insert, the stored root is checked against the root node (L1019–1023).
- **Sentinel and edge cases:** the sentinel leaf `(0 → FQ_MAX)` is always present, and value 0 is rejected. An asset id equal to `FQ_MAX` can never be inserted because the strict gap check blocks it. That fails safe and is only a theoretical edge.
- **Leftover code:** the fallback `None && count<=1 → Some(0)` (L550–552) can't be reached once the tree is initialised, because the sentinel is always in the index. It is harmless.

## Findings

**No High, Medium or Low vulnerabilities validated.**

**Observation (design question, not new on this branch): the registration and seizure authorities may be the same key.**
- **Where:** `AssetPolicy::validate_regulated` (structs.rs:693–722) and both `validate_authorization_keys` functions (structs.rs:1126, 1560). They require both authorities to be present and non-identity, but never check `registration_authority_vk != seizure_authority_vk`.
- **Trigger:** a registrar signs a grant that names one key for both roles. It is accepted.
- **Consequence:** one key can both screen/admit users and perform RNK seizure. That goes against the stated goal of keeping issuer screening and RNK seizure authority separate, if that goal means different keys.
- **Branch status:** not introduced by this branch. The base version has the same fields and no distinctness check (a search of the base `structs.rs` found none). The test helper `AssetPolicy::for_test` (structs.rs:750–751) uses the same key for both roles, so tests would not catch the problem.
- **Minimal fix, if intended:** add `ensure!(reg != seize)` to `validate_regulated` and to `MsgRegisterAsset::validate_authorization_keys`. Give `for_test` two different keys, and add a rejection test.
- **Status:** static observation. Whether separate keys are required is a policy decision for the coordinator.

**Minor points, no action required:**
- **Silent re-registration:** registering an already-registered regulated asset succeeds without changing anything (state.rs:341–354; registry.rs:1254–1261). The second registration's policy is never compared with the stored one. This is safe because policies can't be changed, but a client can't tell its registration was ignored. Optionally, fail when the policy differs from the stored one.
- **Genesis panics:** genesis admission uses `.expect` (state.rs:73, 134), so an invalid genesis file panics the node at startup. That fails closed, which is acceptable.
- **User leaf re-checks:** `add_compliance_leaf` re-checks leaf validity, active status, a non-zero asset id, no duplicate, capacity, and that the target position is empty against the root (registry.rs:1081–1115). This is sound defence at the storage boundary.

## Cross-sector follow-ups
- Circuit sector: confirm the asset-leaf commitment (`IndexedLeaf::from_policy`) covers the audit-key commitment and epoch, so the circuit relies on exactly what `validate_registered` checked.
- Build sector: confirm `test-helpers` is off in production builds.
- Seizure/lifecycle sector: `admit_note_seizure` and the status-change and freeze-generation logic (registry.rs:1698+) were only skimmed.

## Not reviewed
- `indexed_tree.rs` and the tree-hashing and path code in `tree.rs`: I relied on root authentication, not a full diff review.
- `crypto.rs`, `issuer_keys.rs`, `transfer.rs`, `withdrawal.rs`, `event.rs` (except the validation call site at L209), `decode_object.rs`, `query.rs`, `genesis.rs` beyond L257.
- The timestamp boundaries inside grant `verify` and capability-certificate `verify`. Only `current_unix <= valid_until_unix` (inclusive) was checked.
- All test files (`registry_tests.rs`, `indexed_tree_tests.rs`, `tests/*.rs`), so test weaknesses are not assessed.

No reproduction runs were done (the review was read-only).

**Sector status: PARTIAL.** The registration, admission and registry-insertion invariants the coordinator asked about are covered. The files listed above are not.
