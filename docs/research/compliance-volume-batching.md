# User-side transfer batching

Status: research recommendation, not an implementation specification.

Related design: [Private volume accumulator](compliance-epoch-accumulator.md)

Issue: [bankd#311](https://github.com/mizufinance/bankd/issues/311)

## Decision

User-side batching is viable, including a mode in which the wallet replaces
many proof bytes with one SnarkPack aggregate. The batch must first become a
protocol-level state transition, however. SnarkPack proves that an ordered list
of Groth16 statements is valid; it does not prove that the statements share a
sender or asset, that their amounts were all counted, or that one hidden state
follows another.

The recommended relation is not `x` current Transfers and not a fixed 2x8
Transfer circuit. Split a batch into:

- one same-shaped `PaymentLeaf` proof per recipient; and
- one constant-shaped `BatchFundingVolume` proof for funding, change, and the
  private volume transition.

Every payment proof exposes a hiding commitment to its outbound amount, plus
fresh batch-scoped commitments to the hidden sender/asset scope and flag. The
validator sums the amount commitments for the exact payment list. The reducer
opens that sum, spends the settled value notes and current accumulator head,
proves value conservation, computes the new volume and flag, and creates one
change note and one accumulator successor. Every payment proof uses the same
hidden flag to select the existing issuer disclosure path.

This gives variable recipient count, parallel leaf proving, one input set, one
change output, and one accumulator transition without recursion or a large
fixed-width circuit. It also makes the useful part of user-side aggregation
clean: all `PaymentLeaf` proofs have one verifying key and can be SnarkPacked.

Do not require SnarkPack for ordinary bank-sized batches. Shieldd's current
The current SnarkPack implementation is substantially larger and slower than native Groth16 batch
verification through at least 64 proofs on the measured development machine.
Define the semantic batch independently of proof encoding. Start with direct
leaf proofs and retain a transaction authorization seam for a user aggregate
only if a real benchmark finds an economic crossover or a later encoding
changes it.

## Scope fixed by the product discussion

- Shieldd is used through Bankd.
- One KYC identity has one ACP address; this design does not assume unlinkable
  addresses for one identity.
- State is one private accumulator per user and asset.
- Only outbound volume is counted; transaction count is not tracked.
- Accumulator windows are strictly UTC-aligned days, with the final 30 minutes
  assigned to the following day and a 30-minute proof freshness limit.
- Exceeding the daily volume limit flags the transaction. The existing compliance
  ciphertext path encrypts the disclosed transfer facts directly to the issuer.
- Flagged transactions do not advance the private allowance. A later transaction
  remains unflagged when its candidate undisclosed volume fits within the limit.
- A wallet may voluntarily flag a transaction and bypass the accumulator head,
  allowing concurrent submissions.
- Key rotation and policy-version mechanics are out of scope here.

For a batch, the outer Shieldd transaction is the transaction that crosses the
limit. The simple and conservative rule is therefore to disclose every
real payment in a crossing batch. Identifying a private ordered suffix would
add prefix-sum and per-leaf flag machinery without matching the stated
transaction-level policy.

## Three different meanings of batching

These mechanisms solve different problems and should not be conflated:

1. **Semantic batching** makes several payments one atomic transaction with one
   funding decision, one fee, and one volume transition.
2. **Proof batching** verifies several ordinary Groth16 proofs together while
   still carrying every 192-byte proof. Shieldd already has this verifier.
3. **Proof aggregation** replaces the individual proofs with a larger
   logarithmic SnarkPack object. It changes transport and verification, not the
   underlying state relation.

The user-facing feature needs the first mechanism. The second is currently the
best small-batch proof encoding. The third is technically usable but does not
currently pay for itself at Shieldd transaction sizes.

## What the current protocol permits

`TransactionBody` already contains repeated actions, one transaction-level fee
funding field, one memo, and one shared transaction anchor. Each Transfer action
embeds one 192-byte Groth16 proof. The current wallet request accepts repeated
outputs at the protobuf boundary, but the view service rejects any count other
than one and the Transfer relation remains fixed at two inputs and two outputs.

The current proposer collects ordinary proofs and appends a final
`AggregateBundle` action. User transactions containing that action are rejected.
That is an application rule, not a cryptographic limitation. The current
aggregate statement already binds the family, verifying key, SRS, real and
padded counts, repeat-final padding, and ordered public-input rows.

A user aggregate cannot be aggregated again by the existing proposer path.
SnarkPack aggregation consumes constituent Groth16 `(A, B, C)` proofs, not a
prior aggregate proof. If the wallet omits those constituents, its aggregate is
a final verification unit. Many small wallet aggregates would therefore
fragment block verification and forfeit one large proposer aggregate.

Production SnarkPack is also not active yet. The repository intentionally has
no registered production SRS and fails closed pending ceremony material and
review. A wallet aggregate would require distributing that public aggregation
material to Bankd in addition to the circuit proving keys.

## Measured SnarkPack economics

The following single-sample release measurements were taken on 2026-09-02 from
Shieldd commit `87d2669ba`. They use valid synthetic Groth16 proofs, the local
SnarkPack backend, and its development SRS. They are useful for choosing a
prototype; they are not production capacity numbers.

| Proofs | Raw Groth16 bytes | SnarkPack bytes | Warm aggregate build | Direct batch verify | Aggregate verify |
| ---: | ---: | ---: | ---: | ---: | ---: |
| 2 | 384 | 7,649 | 11.7 ms | 3.7 ms | 16.8 ms |
| 4 | 768 | 12,385 | 21.7 ms | 4.4 ms | 18.7 ms |
| 8 | 1,536 | 17,121 | 37.0 ms | 5.6 ms | 20.6 ms |
| 64 | 12,288 | 31,329 | 186.1 ms | 24.5 ms | 26.0 ms |

The aggregate stays in the 40,801-byte power-of-two bucket at 129 through 256
proofs. Proof bytes alone first favor it at about 213 proofs. Payment bodies,
note payloads, routing data, compliance ciphertexts, signatures, and public
inputs remain linear, so the current 96 KiB transaction cap is likely reached
well before that crossover. The exact maximum must be measured from the new
wire type.

The original SnarkPack paper reported different crossovers on its own curves,
implementation, and hardware. Those results justify measuring; they do not
override the Shieldd measurements.

## External designs and what to reuse

| System | Relevant design | Reuse in Shieldd | Do not copy |
| --- | --- | --- | --- |
| Filecoin | Storage provider replaces ordered Groth16 proof bytes with one submitter-created SnarkPack aggregate; actor reconstructs public rows | Aggregate envelope, exclusive proof modes, canonical order, reconstructed statements, atomic validation, benchmarked minimum | Its 4-proof minimum or 819-proof maximum without Shieldd measurements |
| Zcash Sapling | Separate proof-bearing spends and outputs, glued by one transaction binding signature | Separate funding from recipient leaves and bind value at transaction level | Independent actions with no batch volume reducer |
| Zcash Orchard | Variable action bundle, one anchor, one binding signature, one Halo2 proof covering all actions | First-class bundle semantics and fixed per-payment shape | Treating its linearly growing Halo2 multi-proof as SnarkPack or recursion |
| Zcash Sprout | Later JoinSplits may use interstitial commitment roots from earlier actions | A fallback if same-transaction note spending is ever required | Persisting every intermediate note merely to carry a private batch balance |
| Aleo | User execution contains transitions, one execution proof, and ephemeral records | Transaction-local state and exact transition graph as a future model | A general zkVM for a specialized payment feature |
| Aztec | Client private kernel accumulates effects; pending notes may be consumed and transient notes squashed | Persist only final local state; explicit reducer and atomic effects | Chonk/HyperNova/Goblin recursion and its fee/revert semantics |
| Mina | Bounded AccountUpdate manifest and recursive proof merge tree | Explicit resource limits and continuity assertions | Protocol-worker recursion as if it were a wallet SnarkPack aggregate |
| Penumbra / Namada | Atomic variable action lists, individual proofs, binding signatures | Evidence that direct leaf proofs remain a reasonable design | Expecting their action lists to solve dependent private state |
| Anoma ARM/RISC0 | Experimental transaction proof replaces inner proofs | The aggregate-replaces-constituents UX | Its RISC0 proof stack; it currently excludes Groth16 inner proofs |
| Ethsystems PoC | Serial velocity head and constrained outbound amount | Its definition of outbound value | Its one-operation-at-a-time state model and public sequence choices |

The closest reusable combination is Zcash Sapling's spend/output separation plus
Filecoin's submitter-proof envelope. Aleo and Aztec show how far to go only if a
future requirement needs general same-transaction private state.

## Recommended protocol relation

### First-class batch

Represent the semantic operation as one effecting `TransferBatch`, not as an
aggregate-proof action appended to unrelated Transfers:

```text
TransferBatch {
  body {
    version
    batch_nonce
    payment_bodies[]
    funding_volume_body
  }
  spend_auth_sigs[]
  funding_volume_proof
  payment_authorization
}

PaymentAuthorization =
  Direct { proofs[] }
  | SnarkPack { srs_id, real_count, padded_count, aggregate_proof }
```

`payment_authorization` is authorizing data, not a state transition. The
effecting batch body is identical under either proof encoding. Unknown modes or
mixed direct-and-aggregate encodings fail closed.

The direct and aggregate variants are not compatibility paths. They are two
resource-priced authorization mechanisms for the same relation, like
Filecoin's current individual-or-aggregate method. It is also reasonable to
activate only `Direct` initially and reserve the enum until SnarkPack clears a
benchmark gate.

### Payment leaf

One `PaymentLeaf` circuit proves one real recipient payment. It does not spend a
settled value note. It proves that:

- its output note commits to the constrained amount, asset, and recipient;
- the recipient is not the sender and the asset matches the batch asset;
- the recipient satisfies the applicable ACP checks;
- the sender's ACP facts and the asset open the batch's fresh hiding scope
  commitment;
- its amount opens a domain-separated homomorphic amount commitment;
- the shared hiding flag commitment opens to the flag used by the compliance
  encryption path;
- when flagged, the existing disclosed facts are encrypted to the issuer;
- when unflagged, the ordinary private compliance path is selected;
- routing, note payload, compliance record, batch manifest, index, and count
  are proof-bound; and
- the amount is nonzero and range constrained.

All leaves have the same circuit shape and verifying key. Their count is public.
If hiding count becomes a requirement, the batch may add dummy payment leaves,
but that should not be paid for before the product requires it.

The reducer's spend authorization and the transaction binding signature
authorize the shared sender. A leaf must be accepted only inside the batch whose
scope and manifest it proves; it is never a standalone value-creating action.

### Funding and volume reducer

One `BatchFundingVolume` proof consumes at most two settled sender notes and one
accumulator predecessor or canonical window origin. It proves that:

- the funding notes belong to the same hidden sender and asset as the batch
  scope commitment;
- the validator-computed sum of every payment amount commitment opens to the
  exact batch outbound total;
- funding equals that total plus one sender-owned change note;
- the prior accumulator head is valid, or the origin is canonical for this
  user, asset, and UTC window;
- `next_volume = checked_add(previous_volume, batch_total)`;
- the shared hidden flag is true exactly when voluntary disclosure is selected,
  the previous head has reached the limit, or the new total exceeds it;
- the final successor commits to the same user, asset, window, and new volume;
  and
- all funding, change, accumulator, manifest, and flag fields are proof-bound.

The reducer's circuit size is independent of recipient count. The validator
does the linear public commitment addition and supplies exactly one sum point
as a reducer public input. The circuit must range-check the integer total and
prove overflow saturation; equality only modulo the group order is
insufficient.

If the existing value-commitment primitive has the right domain and can be
opened by this circuit, reuse it. Otherwise define a distinct amount-commitment
domain and add cross-language parity tests. Do not use an arbitrary wallet-
supplied total.

### Consensus validation

Validation reconstructs facts rather than accepting a wallet-provided list of
public inputs:

1. Decode one bounded batch and reject empty, oversized, unknown, or mixed
   proof modes before curve work.
2. Recompute a manifest over the ordered effecting payment and reducer bodies,
   excluding proof bytes and self-referential fields.
3. Require contiguous leaf indices, the exact count, and the same fresh scope
   and flag commitments, timestamp, and UTC window in every leaf and the
   reducer.
4. Reconstruct each leaf's public statement from its body in canonical order.
5. Add every leaf amount commitment exactly once and compare the result with
   the reducer's proof-bound sum.
6. Verify all leaf proofs directly or verify one SnarkPack aggregate over those
   exact rows.
7. Verify the reducer proof, spend authorization signatures, transaction
   binding signature, fee funding, nullifier uniqueness, and all existing
   stateless and stateful conditions.
8. Only after every check succeeds, insert recipient notes, change, the final
   accumulator head, and the real nullifiers atomically.

This prevents omission, duplication, reordering, cross-batch proof reuse, and
substitution between direct and aggregate encodings.

## Why commitments are enough

FHE is not needed. The wallet knows every amount, the previous private volume,
and the blinding factors. Pedersen-style commitments provide the additive
interface; Groth16 proves correct openings and arithmetic without revealing the
values.

Public observers learn that the outputs are in one batch and learn its padded
or unpadded size. They see fresh scope, flag, amount, and successor commitments,
but not the KYC address, asset, volume, individual amounts, or flag. The scope
commitment must include fresh batch randomness; a deterministic user/asset tag
would link the same pair across transactions.

Only the final accumulator successor enters persistent state. A later spend
reveals its nullifier, not a pointer to that commitment, preserving the same
cross-transaction unlinkability expected from a shielded note. There is no
additional accumulator nullifier tree and no public accumulator address.

## Funding and concurrent transfers

This split is what makes the batch materially better than `x` current
Transfers. Independent current Transfers require disjoint settled notes because
they cannot spend one another's same-transaction change. Payment leaves have no
settled inputs; the reducer spends the funding notes once and creates one final
change note.

All leaf witnesses and the reducer witness can be planned before proving. Once
amount commitments, the shared flag commitment, output notes, and manifest are
fixed, the expensive leaf proofs and reducer proof can run in parallel. The
wallet performs only the final SnarkPack aggregation after leaf proofs exist.
Bankd should use bounded proving parallelism because witness memory, rather than
the shared proving key, is likely to set the safe concurrency limit.

One tracked batch still serializes against another tracked batch for the same
user and asset because both require the current accumulator head. That is the
desired single-spend invariant. A voluntary-disclosure batch proves the shared
flag is true and uses the accumulator bypass, so several such batches may be
submitted concurrently.

## State and tree growth

For a nonzero-fee batch with up to two funding inputs and the current two-input,
two-output fee-funding Transfer:

| Shape | Nullifiers | SCT commitments |
| --- | ---: | ---: |
| One ordinary tracked Transfer plus fee funding | 5 | 5 |
| Recommended batch with `x` payments plus fee funding | 5 | `x + 4` |
| `x` independent current Transfers with one shared reducer plus fee funding | `2x + 3` | `2x + 3` |

At seven payments, the recommended shape remains at five nullifiers, a 0%
increase over one tracked payment, and grows from five to eleven commitments, a
120% increase. The six additional persistent commitments are the six additional
recipient outputs; they are not accumulator overhead.

The private accumulator itself adds one nullifier and one successor commitment
per tracked batch, regardless of `x`. The dominant linear costs are legitimate
recipient note commitments, encrypted payloads, compliance records, routing
selectors, signatures, scan work, and public statement bytes. Nullifier-tree
growth is not the main batching cost in the recommended relation.

## Alternatives

| Design | Strength | Weakness | Decision |
| --- | --- | --- | --- |
| `x` current Transfers plus wallet SnarkPack | Minimal proof-transport change | No shared funding, no accumulator relation, poor small-x size and verification | Reject |
| `PaymentLeaf` plus reducer with direct proofs | Variable `x`, parallel proving, constant funding/accumulator state, proposer can still aggregate leaves | Adds two circuit families and a batch envelope | Recommended first prototype |
| Same relation with wallet SnarkPack | Constituent proofs omitted; Filecoin-style UX | Worse through 64 locally; cannot join proposer aggregate; needs production SRS | Keep behind a measured activation gate |
| Fixed 2xN Transfer circuit | One 192-byte proof and minimal state | Fixed cap, large proving key and witness, no leaf parallelism | Benchmark only as a control |
| Publicly chained step proofs | Variable `x`, same step VK, exact per-step crossing | More transition modes and chaining invariants; still needs a funding-state design | Fallback if the reducer commitment relation fails |
| BLS12-377 leaves in BW6-761 outer proof | One 480-byte user proof; compatible curve pair | Fixed-cap outer circuit, large client proving cost, new ceremony and verifier | Consider only if one proof is a product requirement |
| Aleo/Aztec-style IVC | General local state, variable program, transient squashing | New proof stack and much larger protocol | Do not adopt for this feature |

Shieldd already has an unsafe interoperability implementation of the
BLS12-377-to-BW6-761 pattern for ten historical-nullifier proofs. That shows
one-layer composition is technically available, not that a Transfer outer
circuit is cheap or production-ready.

## Risks and mitigations

| Risk | Required response |
| --- | --- |
| A fake output leaf creates value without funding | Reducer opens the validator-computed sum of every leaf commitment; transaction binding and mutation tests cover omission, duplication, sign, and change |
| A leaf uses another sender or asset | Fresh scope commitment is constrained in every leaf and reducer; never accept a free tag |
| Flag differs between reducer and ciphertext | One hiding flag commitment is opened by every leaf and reducer; mutate every encryption and flag branch |
| Commitment arithmetic wraps modulo the field or group | Bound `x`, range-check each amount and the wider total, and prove saturating `u128` accumulator arithmetic |
| Aggregate omits, reorders, or substitutes a proof | Reconstruct exact rows from bodies; canonical order; contiguous indices; all-or-none coverage; current statement count and padding checks |
| Aggregate bytes are malleable or replayed under another batch | Bind manifest, chain/version, anchor, expiry, nonce, family, VK, SRS, count, and ordered rows; use canonical encodings |
| Small aggregates create block-level DoS | Default to direct proofs; set any aggregate minimum from measured bytes and CPU; meter each final verification unit |
| Wallet aggregate prevents proposer reaggregation | Treat it as a final unit and price that cost, or retain constituent proofs off-chain as an explicitly designed sidecar; do not pretend aggregates nest |
| Production SRS trust or distribution is incomplete | Keep fail-closed activation and complete the existing ceremony/review work before any aggregate mode |
| One stale input rejects all payments | Preflight recipients and state, reserve notes/head durably, use the common short freshness limit, and make atomic failure explicit |
| Batch leaks recipient count and grouping | Accept as the default; add fixed padding only if the product values count hiding enough to pay its proof and byte cost |
| Proving misses the timestamp window | Parallelize with a bounded worker pool and benchmark custody-to-inclusion p95 inside the 30-minute limit |
| Scanner and compact-block cost dominates | Measure full ciphertext/routing payloads and charge encoded bytes and effects, not proof count alone |
| One transaction memo is mistaken for per-payment metadata | Keep one memo explicit; design per-payment encrypted references separately if Bankd needs them |
| Unsafe outer-proof prototype is treated as deployable | Require new ceremony-backed keys, circuit review, and prover-gated tests; historical fixtures are not production artifacts |

## Prototype decision gates

The next work should be a circuit-and-wire spike, not a broad wallet refactor:

1. Implement disposable `PaymentLeaf` and `BatchFundingVolume` relations with
   deterministic fixtures at 2, 4, 8, and the largest plausible batch.
2. Prove exact amount-commitment addition, same hidden scope, shared hidden flag,
   value conservation, accumulator origin/predecessor, overflow, and voluntary
   bypass. Add negative fixtures before optimizing.
3. Measure constraints, proving-key bytes, witness bytes, warm/cold proof time,
   bounded parallel p50/p95, and peak Bankd RSS.
4. Encode maximum-size bodies with real compliance ciphertexts, routing data,
   fee funding, memo, and historical-nullifier proofs to derive the actual `x`
   cap under 96 KiB.
5. Compare direct leaf verification, proposer aggregation, user SnarkPack, and
   one BW6 outer proof at the same `x`. Include blocks containing many small
   user aggregates, not only one large batch.
6. Proceed with the batch relation only if every mutation test rejects and the
   reducer is materially smaller than the fixed 2xN control.

Prover/release-gated tests for the new circuits do not exist and therefore were
not run. The existing release SnarkPack size and verification diagnostics were
run for this research.

## Decisions still needed

The recommended defaults are one sender and asset, atomic delivery, public
unpadded recipient count, all-payment disclosure when the batch crosses, one
transaction memo, and direct leaf proofs for the first deployable version.

Before freezing a protocol, answer:

1. Is the product requirement one atomic Bankd transaction, or specifically one
   cryptographic proof on the wire? SnarkPack would leave one leaf aggregate
   plus the reducer and fee proof; a literal one-proof requirement points to a
   native batch circuit or recursive outer proof instead.
2. Is disclosing every payment in a crossing batch acceptable? It matches
   “flag the transaction” and keeps the reducer constant-shaped.
3. What maximum recipient count does Bankd actually need, and may that count be
   public?
4. Does each payment need its own encrypted reference or memo?
5. Should the first protocol activate only direct proofs and leave user
   SnarkPack behind a later measured feature gate?

## Sources

- Gailly, Maller, and Nitulescu, [*SnarkPack: Practical SNARK Aggregation*](https://eprint.iacr.org/2021/529), 2021.
- Filecoin, [FIP-0013: aggregated prove-commit](https://github.com/filecoin-project/FIPs/blob/9fbc58118435bcbbcbdc75959576f8bde0a908ae/FIPS/fip-0013.md) and [Lotus submitter pipeline](https://github.com/filecoin-project/lotus/blob/ecc2f390c78428fa8e2a60b3abe33daee1bcb277/storage/pipeline/commit_batch.go#L270-L428).
- Filecoin, [current actor reconstruction and aggregate verification](https://github.com/filecoin-project/builtin-actors/blob/d894a1a536b2080228769742b5889748cbe8a549/actors/miner/src/lib.rs#L1492-L1602), 2026.
- Zcash, [ZIP 224: Orchard](https://zips.z.cash/zip-0224), [ZIP 225: transaction format](https://zips.z.cash/zip-0225), and [protocol specification](https://zips.z.cash/protocol/protocol.pdf).
- Aleo/Provable, [Aleo VM specification](https://developer.aleo.org/specs/aleovm.pdf) and [transaction verification implementation](https://github.com/ProvableHQ/snarkVM/blob/staging/synthesizer/src/vm/verify.rs).
- Aztec, [private kernel](https://docs.aztec.network/developers/docs/foundational-topics/advanced/circuits/private_kernel) and [transaction phases](https://docs.aztec.network/developers/docs/foundational-topics/transactions).
- o1Labs/Mina, [recursive proof continuity](https://docs.o1labs.org/o1js/advanced-concepts/recursion) and [MIP-0009 proof-tree limits](https://github.com/MinaProtocol/MIPs/blob/main/MIPS/mip-0009-increase-zkapp-account-update-limit.md).
- Penumbra Labs, [transaction model](https://protocol.penumbra.zone/main/transactions.html) and [proving considerations](https://protocol.penumbra.zone/main/crypto/proofs.html).
- Namada, [MASP ledger integration](https://specs.namada.net/modules/masp/ledger-integration).
- Anoma, [ARM RISC0 transaction proof aggregation](https://github.com/anoma/arm-risc0).
- El Housni and Guillevic, [BLS12-377/BW6-761 one-layer composition](https://eprint.iacr.org/2020/351), 2020.
- Ethsystems, [private-payment compliance specification](https://github.com/ethsystems/pocs/blob/92ce83852d4a49a0ba9cf67c7f66adc686423e32/pocs/private-payment/shielded-pool-compliance/SPEC.md).
