# Enforcement and planned seizure

This document separates the implemented freeze mechanism from the planned
Bankd seizure workflow. Seizure is not exposed by the current Shieldd API.

## Implemented status model

Each registered `(address, asset_id)` user leaf commits one status:

```text
Active = 1
Frozen = 2
Seized = 3
```

The ordinary host actions implement `Active -> Frozen` and `Frozen -> Active`.
The seizure state-machine boundary additionally implements the terminal
`Frozen -> Seized` transition, but no public Shieldd message admits it until the
production proof verifier and Bankd settlement contract are complete. `Seized`
has no outgoing transition. Status belongs in the user leaf rather than a
second tree: address, asset, registration metadata, and authorization state then
have one authenticated position and one proof. A separate freeze tree would
require cross-tree non-membership semantics and make atomic updates and wallet
proof refresh more complex without adding a distinct ownership boundary.

For a regulated asset, Transfer proves both sender and receiver `Active`;
withdrawal proves the sender `Active`; NoteReshape proves its owner `Active`.
Deposits check the recipient's current leaf before minting. Frozen users
therefore cannot move the affected asset or reshape its notes. Fees are accepted
only in the unregulated base asset and do not change a regulated-asset balance.
Other assets remain authorization-independent.

## Bankd authorization boundary

Shieldd must not decide whether an issuer, court, regulator, or governance body
may seize. Bankd owns that authorization and must pass Shieldd a typed action at
a canonical, replay-safe host source. Shieldd will enforce only the mechanical
preconditions committed by the future protocol.

A bare authority signature is not enough for the planned production path. It
provides no amount correctness, completeness, or independent auditability.
Bankd requires both a durable legal/governance authorization record and the
proof-backed balance certificate; the authorization decides whether seizure is
permitted, while the proof constrains what can be seized.

### Comparison with public regulated-asset systems

Public balance systems commonly authorize control actions by a privileged key,
without a cryptographic proof of the legal basis. Algorand gives each asset
separate freeze and clawback addresses; freezing is per account and asset, while
clawback directly transfers a specified amount from the target. Stellar lets an
issuer burn a specified amount from a clawback-enabled balance. ERC-3643 exposes
wallet freeze, partial freeze, and forced transfer functions through token-agent
authority. Circle's FiatToken similarly gives a `blacklister` role reversible
address blocking and a separate token-wide emergency pause.

- [Algorand asset freeze and clawback](https://dev.algorand.co/concepts/assets/asset-operations/)
- [Stellar issuer clawback](https://developers.stellar.org/docs/build/guides/transactions/clawbacks)
- [ERC-3643 regulated-token controls](https://eips.ethereum.org/EIPS/eip-3643)
- [Circle FiatToken roles](https://github.com/circlefin/stablecoin-evm/blob/master/doc/tokendesign.md)

Those systems can read the target balance directly in consensus state. Shieldd
cannot: notes are private and the issuer must reconstruct a complete balance
from compliance data. The balance certificate is therefore not an attempt to
prove that the authority has a valid court order; Bankd governance decides that.
It prevents the authority from silently choosing an unauditable amount and
creates a deterministic object that independent auditors can reproduce. A
token-wide pause is common as an incident-response control, but it is deliberately
outside this design: Bankd can add one later as a separate asset-policy action if
there is a concrete operational requirement.

## Complete balance audit projection

An external auditor reconstructs the target's regulated-asset balance outside
Shieldd by replaying the canonical Bankd/Shieldd history from registration or a
verified opening-balance checkpoint. For every block it validates CometBFT
parent continuity, `data_hash`, and the next header's `last_results_hash`. Public
routing tags skip definite non-candidates. For each remaining candidate, it
opens the issuer-key detection tier. A flagged transfer uses proved issuer DH
openings and needs no Orbis result. For an unflagged transfer, the auditor
stores or reuses the ordinary Orbis bulletin object for the exact tier EPK and
calls ordinary `StartPre` with the target-derived address path as an untrusted
trial value. Orbis does not reject a different encryption-time derivation. The
auditor verifies the ordinary SHA-512 threshold-share DLEQs and interpolation,
then the circuit verifies a compact aggregate DLEQ produced by that same
ordinary PRE operation, proves knowledge of the reader key, and proves
key-confirmation match or non-match before projecting debits and credits. The
proof is checked against the exact EPK in the accepted Shieldd ciphertext, so no separate
bulletin-to-transaction attestation is required. Withdrawals use the
proof-bound sender compliance ciphertext; the routing tag alone is not exact
attribution. The minimal ciphertext carries an ephemeral public
key, masked seed, key confirmation, and encrypted canonical sender address.
Asset and amount remain public. Unflagged tag hits use the same ordinary
bulletin and PRE trial-decryption relation; flagged withdrawals use an issuer
DH/DLEQ opening and decrypt the sender address without Orbis. Withdrawals
created before this format activates require a separate authenticated opening
checkpoint or must be outside the certified range.

The bulletin path must not republish the retired encryption-time DLEQ payload
that exposed the actual seed-opening DH point. PRE share evidence is delivered
privately to the auditor. Allowing false trial derivations must preserve the
ordinary ACP authorization boundary: the authority-controlled ring setup fixes
who may obtain PRE/DLEQ evidence, and a bulletin caller cannot substitute a
different or weaker scope for the same ring. The final ACP representation is
still in development, so this is an integration invariant rather than a
prescribed field layout. The current inspected Orbis/SourceHub snapshots do not
enforce it end to end and require a negative same-ring, alternate-scope test in
Phase 1. This authorization rule is separate from transaction binding: the PRE
DLEQ against the exact accepted EPK remains sufficient, with no additional
bulletin-to-Shieldd attestation.

The auditor constructs a canonical private audit transcript containing at least:

- Bankd chain ID, asset ID, target address, projection version, and policy IDs;
- start checkpoint, inclusive height range, terminal block hash, and terminal
  Shieldd root;
- an ordered entry for every examined execution projection and accepted balance
  delta, including explicit unsupported/unavailable failures;
- the resulting amount, auditor identity, and timestamp;
- the authenticated status-event sequence proving the target remained `Active`
  throughout the claimed interval and is `Frozen` at the terminal root.

The final certificate exposes only a freshly blinded commitment to canonical
ordered entries `(height, tx_index, msg_index, record_hash, classification,
signed_delta)`. `msg_index` is the public Bankd message position used by
`HostSource`, not an address, derivation, action, or output index. It is not a
new Bankd consensus accumulator: the proof
authenticates the complete ordered raw transaction and deterministic result
lists through the existing CometBFT commitments. An auditor can selectively
disclose the private transcript and blinding for an authorized independent
replay without making match locations public by default.

This commitment creates accountability and reproducibility; by itself it does
not prove that the auditor scanned every canonical block or classified records
correctly. Fixed Groth16 progress proofs therefore authenticate the ordered
execution projections through CometBFT commitments, use proof-bound routing tags
to exclude definite non-candidates, and classify the remaining candidates. A
small pending certificate record enforces exact progress continuity. Bankd
governance still decides legal authorization, but it does not replace the
balance proof.

## Planned balance certificate and once-only seizure

The future `BalanceCertificate` should bind:

```text
chain_id
asset_id
target_address
frozen_user_leaf_commitment
active_from_source
freeze_source
terminal_header_hash
chain_transaction_count
matched_transaction_count
total_value
blinded_audit_commitment
authorization_record_hash
bankd_destination
certificate_nonce
```

The result list for terminal block `y` is authenticated by finalized header
`y + 1`. Bankd attaches that canonical header hash once to the exact freeze
generation; this is a 32-byte per-freeze anchor, not a block-history
accumulator. The certificate binds that anchor directly. The proof implementation
adds terminal `Seized`. Bankd checks an exact durable receipt replay before the
current status, then, for a fresh action, validates its authorization policy and
the completed certificate. One composite transition:

1. requires the exact frozen leaf, freeze generation/source, and terminal
   header;
2. stages the same-position `Frozen -> Seized` leaf and immutable terminal
   receipt;
3. returns a typed settlement for exactly the certified amount;
4. checked-releases that amount from Bankd's existing per-denom Shieldd module
   escrow to the certificate-bound destination; and
5. uses Bankd's existing Shieldd rollback, fatal EndBlock, ordered commit, and
   fail-closed recovery lifecycle.

Exact replay returns the stored result and changes no state; a conflicting or
new delivery sees terminal `Seized` and fails. Unsupported asset settlement,
including an unknown denomination mapping, fails closed. Shieldd now has the
terminal status, typed fixed-size certificate state machine, proof-verifier
boundary, frozen-leaf transition, receipt, and typed settlement response. The
scan, classification, and final Groth16 relations are implemented and tested,
but they are not production-admissible yet: canonical CometBFT/Bankd byte
decoding is not constrained inside the scan circuit, ordinary Orbis `StartPre`
does not yet return the compact aggregate DLEQ, Bankd does not yet consume the
settlement atomically, and no production proving or verification keys have been
generated. The complete proof relation and release gates are in the [asset
seizure proof plan](asset-seizure-proof-plan.md).
