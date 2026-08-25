# Asset seizure proof and certificate plan

Status: implementation in progress. Shieldd now has the staged certificate
state machine, terminal `Seized` transition, withdrawal sender ciphertext,
native PRE/issuer evidence verification, typed gnark public inputs, and base
scan/classification/finalization relations. Proof admission remains disabled
until the canonical Comet/Bankd decoder is in `SeizureScan`, ordinary Orbis
returns transferable threshold evidence for trial derivations, and
ceremony-backed verifying keys are generated and registered.

This implementation is based on Shieldd `dev` at
`16df0f6a31c2827b9fdb71f9c140d74410062e4e`, Bankd `main` at
`e1aea38a33a9d8b1222b09d2d6c9d3e2c8ccabaa`, and Shieldd's Orbis pin
`b5d229aaadef4c0127203c2fccafb6771f38eaca`. The ACP boundary check also
inspected SourceHub `dev` at `492448c44a8b83c24eb18edb359bb76a1035fe56`.
ACP and its Orbis integration are still changing. References to their current
fields describe those snapshots, not a frozen API; the authorization invariants
below survive the final ACP representation.

## Decision

Do not make arbitrary recursion, a new zkVM, or a Bankd audit accumulator a
prerequisite for seizure.

The first implementation uses fixed BLS12-377 Groth16 progress proofs and a
small pending certificate record. All proof generation happens off-chain and
may take days. The on-chain record is created only after every chunk has been
built and locally verified. The completed proofs are then admitted in bounded
batches; the pending record enforces their exact order and carries only opaque
commitments and the next sequence. The final proof opens the accumulated result
and permits one terminal transition:

```text
Frozen(address, asset) -> Seized(address, asset)
```

Bankd then releases exactly the certified amount from its existing per-denom
Shieldd module escrow to the certificate-bound destination.

SnarkPack may aggregate same-family progress proofs in each proposal using the
existing aggregation pipeline. It is an optimization, not a soundness
requirement and not the mechanism enforcing progress continuity. Individual
192-byte Groth16 proofs remain the fallback until a production SnarkPack SRS is
registered.

This is not a hot-path accumulator. Normal Bankd and Shieldd blocks gain no
audit state. The auditor first finishes every proof off-chain. Only then does
the authority create an opaque on-chain job for an already-frozen address and
submit the completed proof batches.

The pending record lives in Shieldd's compliance state, keyed by a random
`job_id`, because Shieldd owns proof verification and the `Frozen -> Seized`
leaf transition. It stores only commitments, phase, next sequence, and the
latest opaque state commitment. Target, asset, range, cursor, freeze generation,
totals, authorization, and destination remain inside those commitments during
scanning. Classification currently reveals the target asset, full address
components, and stable address-derived scalar so historical ring rotations can
be bound to ordinary PRE without implementing Orbis's SHA-512 derivation inside
gnark. Candidate records, counterparties, amounts, and evidence remain private.
Bankd stores its ordinary authorization/audit record and final
settlement receipt, not a duplicate progress record. The auditor's unfinished
proving work stays in its local durable database; on-chain progress records only
proofs that validators have already accepted.

This opacity applies to the pending certificate record, not necessarily to the
ordinary Orbis requests used as proof inputs. The audited target may be public;
that disclosure is accepted and is still recorded below as operational metadata
leakage.

```text
compliance/seizure/jobs/{random_job_id}
    immutable_statement_commitment
    phase
    next_sequence
    accepted_state_commitment
```

Observers can still see that an authority is ingesting a seizure-proof job and
can infer its size from the number of advances. They learn the target when the
first classification proof is admitted. Hiding it until finalization requires
an in-circuit SHA-512 derivation, another statement-bound private derivation
design, or one self-contained recursively compressed proof.

## Certificate statement

The completed certificate proves:

1. the target `(address, asset_id)` was `Active` from the declared start source
   until the freeze source and is `Frozen` at the certificate root;
2. every canonical Bankd transaction and deterministic execution result in the
   range was consumed exactly once;
3. `X` is the total number of canonical transactions in that range, including
   failed and irrelevant transactions;
4. every transaction whose public routing tag cannot match the target was
   excluded without Orbis;
5. every remaining balance-affecting candidate was classified using either a
   derivation-bound Orbis PRE proof or a proved issuer-key opening;
6. `Z` is the number of canonical transactions with at least one exact
   target-address balance effect;
7. `W` is the target's resulting value of the regulated asset at the freeze
   point; and
8. the certificate is bound to one authorization record, destination, freeze
   generation, protocol version, and chain range.

`Z` counts attributable transactions, not Orbis requests or tiers. A
self-transfer can match two roles but increments `Z` once and has net delta
zero.

The public final statement is:

```text
certificate_id
chain_id
projection_version
asset_id
target_address
active_start_source
freeze_source
terminal_header_hash
terminal_shieldd_root
freeze_generation
terminal_cursor
opening_balance
X
Z
W
authorization_record_hash
bankd_destination
```

The proof does not decide whether the legal authorization is valid. Bankd's
authority/governance layer decides that; the proof constrains the factual
amount and range.

## Address path: no slots or indexes

There is one deterministic compliance derivation per full canonical address,
using the exact ordinary Orbis derivation function:

```text
d   = Fr::from_le_bytes_mod_order(
        SHA512("elgamal-derivation-v1\\0\\0" || canonical_address_bytes)
      )
ACK        = d * ring_pk
```

The canonical bytes include both address components, not only a short routing
prefix. Registration derives `d` and consensus validates the cached leaf value;
transfer proving authenticates `(address, d)` through that leaf. Classification
reveals the validated `d` and computes `d * ring_pk` for each proof-bound
historical ring key. The wire format does not accept a caller-selected
derivation. No slot ID, slot derivation, routing slot, or address index exists.

Routing tags remain short public prefixes used only to avoid unnecessary work.
They are not derivation paths and do not identify an address. A tag hit creates
a candidate; only the cryptographic tier opening proves match or non-match.

## Candidate classification

### Tag miss

For each proof-bound transfer or withdrawal routing tag, the scan circuit
derives the target selector from the target address and the active routing
parameters. If no tag matches, the record has zero target delta and consumes no
Orbis or issuer witness.

### Transfer tag hit

The issuer-key detection tier is opened first. This proves the asset ID and the
flag bit for the exact accepted ciphertext.

If the detected asset is not the target asset, the delta is zero. Otherwise the
proof takes one of two branches.

#### Flagged transfer: issuer path, no Orbis

Flagged transfers already encrypt all four tiers to `DK_pub`. The issuer gives
the auditor, for each required EPK, the DH shared point and a Chaum-Pedersen
proof:

```text
S = dk * EPK
log_G(DK_pub) = log_EPK(S)
```

The seizure circuit verifies that relation against the asset policy active at
the transaction height, derives each seed from `c2` and `S`, checks the existing
core key confirmations, decrypts the equal sender/output amounts, and opens the
extension tiers to recover the exact sender and receiver addresses. It then
computes `-amount`, `+amount`, zero, or a self-transfer net zero.

The issuer secret key is never disclosed. An issuer can alternatively construct
the proof itself with `dk` as a private witness and prove `DK_pub = dk * G`.

No Orbis result is required in this branch.

#### Unflagged transfer: Orbis path

Only the core role tiers are needed. For each candidate role, the auditor
stores or reuses the ordinary Orbis bulletin object for the exact accepted tier
EPK and calls the ordinary `StartPre` flow using the path deterministically
derived from the full target address. The supplied derivation is a trial value,
not a claim that Orbis must prove was the key used at encryption time. Orbis
performs PRE for that value even when it is not the original derivation.

The auditor proves:

- a derivation-bound PRE relation for the exact tier and reader key;
- knowledge of the private reader key;
- reconstruction of the exact PRE shared point; and
- match or non-match of the existing core key confirmation.

A core confirmation match proves both the amount and that the tier used the
target address's exact ACK. Extension tiers are unnecessary unless separate
counterparty disclosure is desired.

Trying both core roles is intentional. No public routing-role permutation,
slot, action index, or output index is needed.

### Mathematical proof of the Orbis result

An Orbis attestation is insufficient. The seizure circuit verifies that the
returned data is the mathematical PRE result for the target derivation.

Let:

```text
P = sG        ring public key
d = H(path)   target-address derivation scalar
A = dP        target effective public key
X = xG        auditor reader public key
R = rG        exact tier EPK
B = X + R
```

For threshold share `i`, current Orbis already computes an effective public
commitment `C_i = d*s_i*G`, a re-encrypted share
`U_i = d*s_i*B`, and a Chaum-Pedersen proof:

```text
log_G(C_i) = log_B(U_i)
```

Shieldd's native auditor verifies the exact existing SHA-512 Fiat-Shamir proof
for the threshold number of distinct shares and both Lagrange interpolations:

```text
sum(lambda_i * C_i) = A
sum(lambda_i * U_i) = U
```

The ordinary `StartPre` response must additionally contain one
threshold-generated, Poseidon-transcript aggregate Chaum-Pedersen proof:

```text
log_G(A) = log_B(U)
```

The seizure circuit verifies that compact proof, proves `X = xG`, and computes:

```text
K = U - xA = r*d*s*G
```

Therefore `K` is the exact target-derivation shared point for `R`, not random
auditor data. The circuit derives the candidate seed from `c2` and `K` and
recomputes the tier key confirmation. Equality is a match. Inequality is a
non-match, proved with an inverse witness for the nonzero field difference.

Ordinary Orbis verifies the share proofs internally but currently drops their
transferable evidence. The same ordinary response must privately return the
verified share evidence and compact threshold proof to the auditor:

```text
PreEvidenceV1 {
    protocol_version,
    ring_id,
    release_scope_commitment,
    trial_derivation,
    ring_pk,
    reader_public_key,
    tier_epk,
    threshold,
    shares[] { index, effective_commitment, U_i, challenge, response }
}

CompactPreEvidenceV1 {
    capability_A,
    reader_public_key,
    tier_epk,
    aggregate_U,
    commitments,
    response
}
```

The Shieldd integration does not need a second audit-specific PRE operation.
It uses the existing bulletin, ACP, `StoreSecret`, `StartPre`, share generation,
verification, and interpolation path. When a candidate is stored or requested
with derivation `d`, that value is an untrusted trial value. The ordinary PRE
path must not compare it with an encryption-time `derived_pk` or otherwise
reject it as a mismatch before producing the normal result.

Authorization to produce the PRE DLEQ evidence is fixed by the
authority-controlled ring/enforcement setup. A bulletin caller may supply the
candidate derivation and ciphertext inputs, but cannot select a different
effective ACP scope for the same ring. This is a semantic requirement, not a
commitment to the current `policy_id`, `resource`, and `permission` fields: the
final ACP design may represent the capability as a relation, grant, or another
typed policy object.

The inspected snapshots do not yet enforce that invariant end to end. In
Shieldd's pinned Orbis revision, the ring carries a policy ID, while
`StoreSecret` accepts caller-supplied document policy fields and only checks
that the self-authenticated request repeats them. SourceHub `StoreDocument`
requires a finalized ring but stores those document fields without comparing
them to the ring policy. `StartPre` then authorizes against the stored document
policy. This is evidence about the current implementation, not a constraint on
the in-progress ACP redesign. Phase 1 must close the semantic gap and include a
negative test proving that the same ring cannot be registered or served under a
different or weaker evidence-release scope.

The currently shipped Shieldd tree has the former Orbis v0 audit bridge
disabled. The last active bridge already used bulletin storage followed by
ordinary `StartPre`, but it compared the package derivation with the target
before the PRE call. The pinned Orbis implementation also verifies the
requested derivation against the encryption proof before re-encryption. Phase 1
restores the ordinary Shieldd bridge while removing those equality prefilters;
it does not add an audit-specific endpoint or a second cryptographic protocol.

For a wrong `d`, Orbis still returns the mathematically valid PRE result for
that requested derivation. Applying it to `c2` produces a pseudorandom candidate
seed relative to the accepted ciphertext, and the proof-bound key confirmation
fails. The seizure circuit, not Orbis or the bulletin, decides match or
non-match.

The PRE DLEQ binds each returned share to the exact `tier_epk`, candidate
derivation, reader key, ring share, and request transcript. The seizure circuit
compares that `tier_epk` and `c2` with the accepted Shieldd ciphertext. This
DLEQ-to-EPK binding is sufficient for certificate soundness; no separate
bulletin-to-transaction attestation is added. The aggregate proof is the same
mathematical relation as the shares, not a signature, endpoint, or attestation.
The exact SHA-512 share transcript remains natively verified before witness
construction. The ACP invariant controls who may obtain that evidence; it is
not another binding between the bulletin object and a Shieldd transaction.

Do not restore the retired v0 upload package unchanged. Its public encryption
proof carried the actual seed-opening DH point. The reusable relation here is
the ordinary PRE share DLEQ returned privately after authorization, not a
public encryption-time shared point.

The circuit also requires the reader secret `x`; someone who did not receive a
usable Orbis result cannot construct either classification.

### Withdrawal tag hit

Current host and ICS-20 withdrawals reveal the asset, amount, and a proof-bound
sender routing tag, but the exact sender is a private witness and there is no
decryptable sender compliance tier. A regulated tag currently has only 12 bits,
so a hit is a candidate, not exact attribution.

Add one proof-bound withdrawal compliance ciphertext:

```text
WithdrawalComplianceCiphertext {
    epk,
    c2,
    key_confirmation,
    encrypted_sender_address,
}
```

It is bound by the existing withdrawal proof to the same private sender leaf
used for status validation. The amount and asset remain the already-public
withdrawal fields. The circuit selects the sender ACK for an unflagged
withdrawal and `DK_pub` when the public amount triggers the policy's flagged
path. A tag miss skips the ciphertext. An unflagged tag hit uses the same
ordinary bulletin plus `StartPre` trial-decryption flow and PRE DLEQ evidence.
In the flagged case it verifies an issuer DH/DLEQ opening and decrypts the exact
sender address without Orbis.

No receiver tier, role permutation, detection tier, or encrypted amount is
needed. The address plaintext is required for the flagged branch because every
flagged sender uses the same issuer key; a DK key-confirmation alone would not
identify which sender made the withdrawal.

Historical withdrawals before this format activates cannot be exactly
attributed from current public data. A certificate must either start after that
activation or use a separately authenticated opening-balance checkpoint.

## Fees

Consensus currently accepts fees only in `BASE_ASSET_ID`. The base asset is
configured as unregulated, so fee spending cannot change `W` for another
regulated asset.

Make this a protocol invariant rather than a configuration assumption: every
asset-admission path must reject registering `BASE_ASSET_ID` as regulated. Add
genesis, grant/governance, and direct-admission regression tests.

Fee-funding remains present in the complete transaction stream and contributes
to `X`, but its target-asset delta is zero. A future protocol version that
allows regulated fee assets must add an explicit projector rule or make old
seizure projection versions fail closed.

## Complete range binding

No Bankd audit accumulator is added. The proof uses canonical CometBFT data
that already commits the ordered block contents:

- each header's `data_hash` commits the ordered transaction byte strings;
- the next header's `last_results_hash` commits the ordered deterministic
  transaction results; and
- parent block hashes establish continuous height order.

For each block in the range, the scan witness supplies the full ordered
transaction list and result list. The circuit recomputes their canonical Merkle
roots, checks the header chain, parses every Bankd transaction and every
embedded `MsgDeliverTx.transaction`, and increments `X` exactly once per outer
Bankd transaction.

The range requires the header after the terminal block so the terminal result
list is authenticated. The final endpoint is therefore a trusted finalized
header, not merely a wall-clock date. Dates are resolved to explicit canonical
sources before proof generation.

The application needs one minimal bridge to that consensus fact. If the freeze
is accepted in block `y`, Bankd attaches the canonical current header hash from
block `y + 1` to that exact freeze generation when `y + 1` is finalized. This
single 32-byte per-freeze result anchor is immutable. It is not a block-history
or audit accumulator, and it does not run for addresses that were not frozen.
The scan proof must end at exactly this hash.

DefraDB's ciphertext backup is useful witness storage but is not consensus
evidence. Every backed-up record used by the prover is checked back to its
Comet header. At least one archive source must retain block bodies and results,
or retain each record with its header inclusion path.

### Supported projection rules

| Accepted effect | Target delta |
| --- | ---: |
| exact host deposit to target and target asset | `+amount` |
| classified transfer sender role | `-amount` |
| classified transfer receiver role | `+amount` |
| classified self-transfer | `0` |
| classified host or ICS-20 withdrawal | `-amount` |
| NoteReshape | `0` |
| base-asset fee funding | `0` |
| failed transaction | `0` |
| unrelated asset or tag miss | `0` |

The scan also applies every successful registration/status action for the
target leaf. It starts from an authenticated `Active` leaf, proves no accepted
transition makes the target non-active before the terminal freeze, and ends at
the exact `Frozen` leaf/generation used by the certificate.

Every application version has a closed set of balance- and status-affecting
effects. Encountering an unknown version or unknown relevant effect rejects the
certificate; it is never treated as zero.

The start source must have a proved opening balance. The normal case is zero at
the first valid registration/issuance point. If the asset or address could own
notes before the selected start, a certificate needs an authenticated opening
checkpoint and cannot assume zero.

## Proof relations

### `SeizureScan`

A fixed-size scan proof processes up to `K_scan` canonical transaction/result
rows. Public inputs contain:

```text
job_id
sequence
immutable_statement_commitment
start_state_commitment
end_state_commitment
```

The private state contains the running transaction count, exact public-effect
delta, target status, block/header cursor, candidate count, and a candidate
hash-chain prefix. Every candidate is appended in canonical order:

```text
candidate_digest_next = H(candidate_digest, canonical_candidate_record)
```

Boundary commitments are domain-separated Poseidon commitments with fresh
high-entropy blinds. They do not reveal intermediate balances, counters, status
events, or candidate positions.

### `SeizureClassify`

A fixed-size classification proof processes up to `K_classify` candidate
records. It replays the same candidate hash chain in the same order while
performing detection, issuer, Orbis, key-confirmation, and delta checks. Its
private state carries the running candidate digest/count, `Z`, classified
delta, and prior-transaction match bit needed to count one transaction once.
Its public inputs have the same opaque job, statement, sequence, and boundary
commitment shape as `SeizureScan`, plus the target asset, full address
components, and exact address-derived scalar. No candidate record or evidence
is public. This is the accepted target-disclosure tradeoff described above.

At the end, the classification digest and count must equal the terminal scan
digest and count. Collision resistance then prevents omission, duplication, or
reordering without exposing the candidates.

### `SeizureFinalize`

The small final proof opens both terminal state commitments and proves:

- scan cursor equals the authorized terminal cursor;
- the full candidate queue was consumed;
- scan and classification candidate digest/count agree;
- activity ended in the exact frozen leaf/generation;
- the revealed `X` and `Z` equal the committed counters; and
- `W = opening_balance + exact_public_delta + classified_delta`, with checked
  non-negative amount arithmetic.

Proof generation can still be parallelized. A native prepass computes all
boundary states; independent workers then prove fixed chunks. Durable auditor
state stores fetched blocks, private Orbis PRE evidence, issuer openings, chunk
witnesses, proofs, and restart progress.

## Why staged Groth16 is the first backend

SnarkPack aggregates same-VK Groth16 verification equations. It does not prove
`end_i = start_(i+1)` by itself, and its verifier still consumes the ordered
public-input rows. A one-shot aggregate therefore retains a linear sidecar and
eventually meets transaction/block limits.

The pending certificate state solves that directly: each accepted progress
proof must begin at the exact stored sequence and state commitment, and
atomically replaces them with its end values. The private cursor is opened only
inside the proof and carried through that commitment. Omission, duplication,
reordering, stale freeze generation, and a changed statement fail before
advancement.

Existing SnarkPack can reduce verification work for several progress proofs in
one proposal. Its current production SRS registry is empty and the development
SRS exposes its trapdoor, so production aggregation requires a real ceremony
and registered artifact. This is an existing chain-wide SnarkPack deployment
gap, not a new seizure cryptographic dependency.

Ranked backend choices are:

1. staged Groth16 plus optional existing SnarkPack aggregation;
2. staged individual Groth16 only;
3. a zkVM only if measured Comet parsing/SHA constraints dominate;
4. native Nova/SuperNova/HyperNova only if a future requirement demands one
   standalone constant-size proof; and
5. direct Groth16 folding research only after it has a maintained,
   audited BLS12-377-compatible implementation.

SP1 and RISC Zero would import a second proof stack, program-image trust,
BN254/on-chain verification, and generic big-integer Decaf377 work because they
do not provide Shieldd's Decaf377 path as a native precompile. Nova's maintained
implementations do not support the current BLS12-377/Decaf377/gnark circuit
stack. The existing BLS12-377-to-BW6-761 spike is useful depth-one aggregation,
not arbitrary recursion. None is justified before measuring the staged design.

Primary references:

- [SnarkPack paper](https://eprint.iacr.org/2021/529.pdf)
- [Nova implementation and papers](https://github.com/microsoft/Nova)
- [SP1 repository](https://github.com/succinctlabs/sp1)
- [RISC Zero repository](https://github.com/risc0/risc0)
- [SnarkFold paper](https://eprint.iacr.org/2023/1946.pdf)

## On-chain certificate state machine

```text
Absent
  -> Scanning { sequence, state_commitment }
  -> Classifying { sequence, state_commitment, scan_terminal_commitment }
  -> Ready { terminal_commitment }
  -> Seized { receipt }
```

Only the authority that opened the random `job_id` can advance the record. Each
advance verifies one proof or a bounded same-family batch, requires the exact
stored start commitment and next sequence, and writes the end state in the same
Shieldd batch. Progress does not reveal the target, range, cursor, counters, or
amount. `SeizureFinalize` opens those fields and publishes the final certificate
only when seizure is ready to execute.

`Ready` does not move value and the target remains `Frozen`. Finalization checks
the authorization/destination binding and current frozen leaf one final time,
verifies `SeizureFinalize`, changes the same leaf to terminal `Seized`, and
returns:

```text
SeizureSettlement {
    certificate_id,
    denom,
    amount: W,
    destination,
    freeze_generation,
}
```

There is no `Seized -> *` transition and no second certificate for the same
`(address, asset)`. Exact replay returns the existing receipt or fails without
changing state; a conflicting replay fails.

## Bankd integration

Bankd already embeds Shieldd through cgo, stages Shieldd through EndBlock,
settles host withdrawals from the per-denom `shieldd` module account, rolls back
pending Shieldd state on a post-Shieldd failure, and commits BaseApp before
Shieldd with fail-closed recovery for the remaining crash window.

Reuse that lifecycle:

1. update Bankd's Shieldd pin and ABI to include the freeze/compliance action
   merged in Shieldd PR #129;
2. attach the `y + 1` result-header hash once to each new freeze generation;
3. add authority-gated `x/shieldd` progress messages carrying only an opaque job
   ID, committed statement, and completed proof batch; the final message opens
   the legal record hash, target, range, destination, and final proof;
4. call embedded Shieldd to advance or finalize the certificate;
5. on finalization, treat `SeizureSettlement` as the authoritative result;
6. validate the response shape, denom, destination, certificate ID, and amount;
7. run the existing per-denom `ensureWithdrawable` turnstile and transfer `W`
   from the Shieldd module account to the destination; and
8. use the existing block-abort, EndBlock, commit, and recovery paths on any
   mismatch or failure.

Do not add a new custody ledger, liability accumulator, cross-database WAL, or
physical two-store transaction. Bankd issue #288 tracks automation of the
existing narrow manual rollback case. Issue #290's authoritative Shieldd result
direction is the right contract for `SeizureSettlement`.

Bankd's transparent `x/compliance MsgSeize` is useful as an authority and audit
record pattern, but it cannot be reused for settlement because it rejects module
accounts and does not require prior freeze.

Relevant Bankd work:

- [atomic host-withdrawal settlement](https://github.com/mizufinance/bankd/blob/e1aea38a33a9d8b1222b09d2d6c9d3e2c8ccabaa/x/shieldd/keeper/withdrawals.go#L65-L190)
- [per-denom escrow turnstile](https://github.com/mizufinance/bankd/blob/e1aea38a33a9d8b1222b09d2d6c9d3e2c8ccabaa/x/shieldd/keeper/turnstile.go#L12-L68)
- [ordered Bankd/Shieldd commit](https://github.com/mizufinance/bankd/blob/e1aea38a33a9d8b1222b09d2d6c9d3e2c8ccabaa/app/app.go#L1366-L1385)
- [rollback automation issue #288](https://github.com/mizufinance/bankd/issues/288)
- [authoritative Shieldd result issue #290](https://github.com/mizufinance/bankd/issues/290)
- [ciphertext backup PR #301](https://github.com/mizufinance/bankd/pull/301)
- [routing-prefix issue #307](https://github.com/mizufinance/bankd/issues/307)

## Implementation order

Current repository status:

- Phase 0 is implemented, including slot removal, one address derivation,
  withdrawal ciphertext binding, and regulated-base-asset rejection.
- Shieldd's Phase 1 native evidence, compact proof relation, ACP-neutral release
  scope seam, and negative scope-substitution tests are implemented. The
  ordinary Orbis server changes remain external and incomplete.
- The fixed-size Phase 2 state machine, freeze generation/anchor, replay rules,
  1,000-chunk bound, and atomic terminal leaf transition are implemented.
  Production cost sweeps are not complete.
- Phase 3 base fold/evidence circuits and typed Rust public inputs are
  implemented. The canonical Comet/Bankd decoder, resumable million-record
  auditor, and production native replay are incomplete.
- Phases 4 through 6 remain blocked on complete circuit semantics, production
  ceremony artifacts, and the external Bankd/Orbis integrations.

### Phase 0 — finish protocol cleanup

- Remove slot IDs, slot derivations, routing-role permutation plaintext, and all
  remaining legacy schema/comments/tests.
- Derive the one compliance path from the full canonical address and add
  Rust/Go/Orbis parity vectors.
- Ensure no transfer metadata reintroduces a path, index, DH shared point, or
  seed-opening material.
- Make regulated `BASE_ASSET_ID` admission impossible.

Exit: one address has one derivation, and base-asset fees are provably outside
regulated seizure accounting.

### Phase 1 — close evidence and authorization gaps

- Add the proof-bound `WithdrawalComplianceCiphertext`.
- Restore Shieldd's ordinary bulletin storage plus `StartPre` integration for
  transfer and withdrawal candidates. A supplied derivation is an untrusted
  trial value; storage and PRE must not reject solely because it differs from
  the encryption-time derivation. Do not add an audit-specific endpoint.
- Add Orbis `PreEvidenceV1`, verified-share export, private reader delivery, and
  cross-repository vectors to the ordinary PRE response. A compact threshold
  DLEQ may replace the share vector later without changing the relation.
- Reuse the PRE DLEQ binding to the exact accepted tier EPK; do not add a second
  bulletin-to-transaction attestation and do not restore the retired public
  seed-opening DH point.
- Integrate the final ACP design so the authority-controlled ring setup fixes
  the capability for releasing PRE/DLEQ evidence. The bulletin writer must not
  be able to substitute a different or weaker scope for the same ring. Keep this
  gate representation-neutral until ACP stabilizes, and test same-ring
  alternate-scope registration and PRE as negative cases.
- Add native verification for issuer DH/DLEQ openings and Orbis PRE evidence
  before writing circuit gadgets.

Exit: every routing candidate can produce a cryptographically verified match or
non-match through ordinary PRE only under the ring's authority-selected
evidence-release scope; tag misses need no evidence.

### Phase 2 — state-machine and cost spike

- Implement the pending certificate state machine with synthetic commitments
  and no ZK.
- Advance 1,000 synthetic chunks; mutation-test omission, duplication,
  reordering, stale freeze generation, changed target/range, and changed `W`.
- Benchmark exact Comet header/RFC6962 hashing, transaction decoding, Poseidon,
  Decaf DH/DLEQ, PRE-share verification/interpolation, and key confirmation.
- Sweep `K_scan = {16, 32, 64, 128}` and
  `K_classify = {1, 2, 4, 8}` by prover time, peak RAM, witness size, and
  validator verification envelope.

Exit: measured chunk sizes and bounded certificate-state growth.

### Phase 3 — base circuits and auditor

- Implement `SeizureScan`, `SeizureClassify`, and `SeizureFinalize` in gnark.
- Add typed Rust witness/statement records and canonical encodings.
- Build a resumable auditor with canonical block/result and private
  Orbis/issuer providers.
- Add native replay parity against every circuit output.

Exit: a local 1-million-transaction fixture produces `X`, `Z`, and `W`; every
single-field mutation fails.

### Phase 4 — on-chain proof admission

- Register the three proof families and release verifying keys.
- Admit bounded individual proof batches first.
- Add per-proposal SnarkPack aggregation only after production SRS registration.
- Bound proofs, public inputs, computation, pending jobs per authority, and
  persisted failure data.

Exit: restart-safe progress and terminal readiness under block limits.

### Phase 5 — Bankd settlement

- Sync Bankd to the freeze ABI.
- Persist the one-block-later result-header hash on the exact freeze generation.
- Add the authority-gated certificate messages and typed settlement response.
- Reuse the module escrow turnstile and block abort/commit lifecycle.
- Add crash tests at every Bankd/Shieldd staging and commit boundary, including
  the manual-recovery window tracked by Bankd #288.

Exit: failure releases nothing and leaves the address frozen; success releases
exactly `W` once and leaves the address terminally seized.

### Phase 6 — production evidence

- Add circuit soundness specifications, extraction coverage, statement-field
  maps, formal applicability rules, and mutation suites.
- Generate ceremony-backed Groth16 keys for the new families.
- Register a production SnarkPack SRS if aggregation is enabled.
- Pin Shieldd, Bankd, Orbis, gnark, and auditor versions in the certificate
  projection version.
- Run release prover tests and the million-transaction benchmark at candidate
  rates `0%`, `0.01%`, `1%`, and adversarial `100%`.

## Principal risks

**Release blocker — canonical row authentication is not implemented.** The
current `SeizureScan` folds a closed normalized row and commits its digest, but
it does not yet prove the Comet header chain, transaction/result Merkle roots,
Bankd decoding, embedded Shieldd decoding, or policy lookup that produced that
row. No verifying key may be registered and no seizure proof may be admitted
until that decoder binds every normalized effect and candidate to canonical
consensus bytes and rejects unknown versions.

1. **Historical completeness cost.** Comet SHA/Merkle work and transaction
   parsing may dominate. Measure it before importing a zkVM; increase chunking
   or use a zkVM only if the measured circuit is unacceptable.
2. **Historical data availability.** Pruned block bodies/results make a proof
   impossible even when the cryptography is sound. Archive retention and
   inclusion-proof backup are release requirements.
3. **Missing transferable Orbis proof.** Current `PreResponse` drops the share
   DLEQs after internal verification. Shieldd now verifies the exact share
   transcript natively and its circuit verifies a cross-language-vector-tested
   compact aggregate DLEQ, but ordinary Orbis does not yet return that proof.
   It must be threshold-generated through the ordinary response; an
   attestation or auditor-generated substitute is insufficient.
4. **Ordinary PRE currently rejects the trial case.** The pinned Orbis path and
   the last active Shieldd bridge compare the requested derivation with an
   encryption-time value before PRE. Removing that equality prefilter must not
   also remove malformed-point checks, ring-share verification, request
   authentication, or ACP authorization. Match and non-match responses must be
   indistinguishable until local key confirmation.
5. **Evidence-release scope substitution.** The PRE DLEQ binds the final
   certificate to the exact EPK and ring computation, but it does not decide who
   may obtain that evidence. The current inspected Orbis/SourceHub snapshots
   permit document policy fields to be supplied independently of the ring and
   later authorize PRE against those fields. ACP is being redesigned, so do not
   freeze a repair around today's field layout. The release gate is semantic:
   the authority-controlled ring setup fixes the effective PRE/DLEQ permission,
   and same-ring registration or PRE under any different or weaker scope must
   fail. This strengthens the ordinary authorization boundary without adding a
   second PRE protocol or bulletin-to-transaction attestation.
6. **Encryption-time DH disclosure.** The retired Shieldd upload package put
   the actual seed-opening shared point in a public Orbis proof. Reusing that
   package would make `c2` immediately openable. Only PRE share DLEQs and the
   reconstructed result may reach the auditor, and they remain private proof
   witnesses.
7. **Pre-activation withdrawals.** They cannot be exactly attributed from the
   current format. Use an activation boundary or authenticated opening
   checkpoint; never silently treat them as zero.
8. **Opening-balance ambiguity.** Starting after value may already exist
   produces a false `W`. Require a zero-balance issuance invariant or proved
   opening checkpoint.
9. **Projection drift.** A new Bankd/Shieldd action could affect balance without
   an audit rule. Closed versioned action coverage must fail unknown effects.
10. **Formal coverage is not current.** `mizufinance/shieldd-formal` has not yet
    been updated for the five-field leaf, minimal detection plaintext, or
    withdrawal sender ciphertext. Formal specifications, generated evidence,
    and their CI gates remain exclusively in that repository; this prototype
    carries only runtime circuits and typed inputs.
11. **Withdrawal proof cost.** The withdrawal circuit currently recompresses
    the selected shared point so the new seed/key-confirmation checks and the
    already-certified address-encryption relation have separate exact trace
    boundaries. This adds 1,046 constraints. Remove the duplicate only after a
    dedicated combined relation is specified, extracted, and proved.
12. **Setup security.** New Groth16 circuits require production ceremonies;
   SnarkPack additionally needs the currently missing production SRS.
13. **Issuer privacy power.** The issuer can already decrypt all flagged tiers.
   The proof does not expand that policy, but compromise of `dk` exposes all
   flagged history.
14. **Manual atomic recovery.** Bankd's remaining crash window is fail-closed but
   operationally manual until #288 is completed. Seizure must use the same
   tested recovery path.
15. **Public leakage.** While an opaque job is being admitted, observers learn
    the authority, proof family/count, timing, and random job ID and may
    correlate that signal with recent freezes. The first classification proof
    explicitly reveals the target asset, address components, and stable
    derivation scalar; ordinary bulletin writes and one-object-per-hit timing
    add candidate-position correlation surfaces. Target identity is allowed to
    be public in this design. Candidate positions and request timing remain
    metadata leakage; padding, batching, or private bulletin fields are
    optional hardening. Finalization additionally opens the range, `X`, `Z`,
    `W`, opening balance, freeze, and destination. Match bits, individual
    amounts, counterparties, PRE evidence, and issuer openings remain private.

## Release invariants

- A tag miss never requires Orbis and can never change the target delta.
- A tag hit uses ordinary bulletin storage and ordinary PRE; no audit-specific
  PRE endpoint exists.
- Ordinary PRE does not reject solely because the requested trial derivation is
  not the encryption-time derivation.
- A candidate non-match is accepted only after verifying a DLEQ relation for
  the exact ciphertext, path, role, key epoch, and reader.
- No public bulletin payload or proof contains the actual seed-opening DH point.
- The authority-controlled ring setup fixes the effective ACP permission for
  PRE/DLEQ evidence; bulletin registration and PRE cannot substitute a different
  or weaker scope for that ring, regardless of the final ACP representation.
- Flagged classification never requires Orbis.
- Every canonical transaction contributes exactly one unit to `X`.
- Every candidate appended by scanning is consumed exactly once by
  classification.
- `Z` counts matched transactions once and `W` uses checked signed arithmetic.
- Base-asset fees never change a regulated-asset `W`.
- Freeze generation, range, target, asset, authorization, and destination cannot
  change after certificate creation.
- No settlement occurs before the final proof and `Frozen -> Seized` transition.
- Successful settlement releases exactly `W` once from existing Bankd escrow.
- `Seized` is terminal.
