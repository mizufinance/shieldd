# Disclosure and audit interfaces

Disclosure is an off-chain wallet operation. It never reserves notes or modifies
payment proofs, commitments, consensus, or spendable balances. PET-gated compliance collection is unavailable; local evidence review is separate.

| Evidence | What the recipient obtains |
| --- | --- |
| Payload keys | Selected note plaintext, including its seed, and transaction-wide memo decryption capability |
| Full openings | Amount, asset, recipient and commitment blinding/recovery values, without note seeds or payload keys |
| Pari | Selected public fields and explicit true/false predicate results |

Full openings require all three field selectors. Memo revelation uses payload-key
exports. There is no structured metadata framework. An asset identifier and a
recipient address do not themselves establish legal identity; KYC linkage belongs
to the recipient's trusted records.

## Requests and claims

`DisclosureRequest` selects canonical transaction ID, accepted height, action,
and output index, with a chain ID and optional audience (`recipient`) and
challenge. Action references are `{"Body": 0}` or `"FeeFunding"`.
Each selection specifies `amount`, `asset`, `recipient`, `memo`,
`spending_control`, and optional `predicate`.

Predicates are `GreaterThan`, `LessThan`, `AtLeast`, `AtMost`, and
`InclusiveRange`. Thresholds and amounts are canonical unsigned decimal strings
in asset base units. Predicate outputs always include their asset and a boolean
result. Invalid proofs or unavailable inputs never mean false.

An optional `total: {"reveal": false, "predicate": {"AtLeast": "500"}}`
operates over every explicitly selected output, including selections from multiple
transactions. All selected outputs must have one asset. These are **selected-output
totals**, not complete wallet or account activity. Duplicate references and u128
overflow are rejected. A one-output request uses the one-note Pari family. Requests with 2–32 outputs
use the general 32-slot family. The family, circuit identity, and verifier key are
selected from the validated public request count; the proof cannot choose them.
A single proof supports at most 32 outputs; larger hidden totals are rejected,
never silently split.

## SDK and acceptance

The SDK provides `prepare`, `inspect`, `verify`, `prove`, `export_openings`, and
`export_payload_keys`. Wallet storage, custody, node access and processes stay
outside commitment evaluation. `inspect` describes unverified claims.

`verify` checks cryptography only. `confirm_acceptance` additionally compares
selected public data with the chosen node's committed `CommittedTransaction`
records and chain identity. A cryptographically valid disclosure without that
check is not fully verified. `verify_candidates` checks encrypted transaction
bytes obtained from Shinzo without treating indexer records as execution evidence.

`pcli disclosure verify-machine --node URL` accepts one bounded JSON request on
private stdin: `version: 2`, `package`, optional expected `request`, and optional
base64 canonical `transactions` retrieved through Shinzo. It returns the verified
statement, method, circuit identity and acceptance result in one response.
`rejected` means invalid evidence or a definitive accepted-data mismatch;
`unresolved` means acceptance data could not be obtained; `unavailable` means the
local verifier could not run reliably. Only `verified` establishes both checks.
The SDK exposes `VerificationUnavailable` for local artifact/backend failures.

The query selects one canonical transaction ID at its accepted height. Responses are bounded to 96 KiB of transaction data plus 16 bytes of framing, independently of the block size. An absent transaction differs from an unavailable query.

Bankd exposes `mizufinance.shieldd.v1.Query/CommittedTransaction` through the
embedded Shieldd adapter. An indexed success code, database CID, or indexer
signature alone does not authenticate successful Shieldd execution.

## CLI

```sh
pcli disclosure capabilities
pcli disclosure audit-ciphertext selection.json --node http://localhost:9090
pcli disclosure export --wallet wallet.sqlite --request request.json --output disclosure.json --openings
pcli disclosure export --wallet wallet.sqlite --request request.json --output disclosure.json --payload-keys
pcli disclosure export --wallet wallet.sqlite --request request.json --output disclosure.json
pcli disclosure inspect disclosure.json
pcli disclosure verify disclosure.json --node http://localhost:9090
pcli disclosure import disclosure.json --node http://localhost:9090 --output receipt.json
```

Inspection, verification and capabilities require no wallet configuration.
Verification accepts `-` to read a bounded package from stdin. `--request` checks
an expected request and is required when spending control is claimed.
`--transactions` takes a JSON array of base64 canonical transaction bytes for
candidate-content checks, before the chosen-node acceptance check.

Export previews fields and capabilities. The prover runs in a separate local
process with private stdin and a restrictive temporary result file. Cancellation
kills its process group. A package is published atomically only after verification;
existing files are never overwritten. Import stores the original verified receipt
without adding spendable notes.

## PET-ready audit selection

`audit-ciphertext` resolves an ordinary Transfer from the chosen node using
selection version 3. General scope selects `amount`, `sender` or `receiver`.
Named-person scope selects an explicit tier and canonical address. The result
contains accepted ciphertext bytes, policy metadata, the selected payload EPK/C2,
the ring key reference, the selected ownership ciphertext and the requested
fingerprint. It does not claim an ownership match, authorization or PET success.
Indexed candidate bytes, when supplied, must exactly match accepted node bytes.

`audit-decode` decodes a locally supplied shared point. It does not verify PRE,
PET or authorization. Voluntary and issuer verification remain separate supported
local operations. Issuer evidence retains its additional amount/detection
capability; flagged payload fields remain issuer-only.

The [compliance tier table](compliance/flow.md#transfer-visibility) defines the
owner and payload for each selection. The [external contract](jubjub-external-contract.md#orbis)
defines fingerprinting, ownership ciphertexts and request-bound PET/release.

The Shieldd adapter has no live distributed PET or direct participant-share
delivery. It does not simulate collection or fall back to generic PRE.
Development keys are synthetic. External authorization, share delivery and
storage integration belong to Bankd and Orbis.

See [Circuits](circuits.md) for relation coverage, [Proof system](proof-system.md)
for proof envelopes, and [Benchmarks](benchmarks.md) for measurement commands.
Transaction size depends on its actions and payloads.

Pool, wallet and scanner stores reject incompatible prototype schemas. Start
with fresh local stores and the shared [Pari registry](proof-system.md); there
is no data migration.

## Spending-authority control

Software and encrypted custody sign a domain-separated request under the ordinary
Transfer's mandatory real first input authorization key. The wallet retains its
randomizer before returning a built outgoing transaction for submission. The
spending key remains in custody. External signatures can be supplied through the
SDK. Historical payments without retained randomizers report an unavailable witness.

Verification checks this signature separately from ZK and compares the key with
the accepted transaction. It proves current control of that spending authority,
not legal identity or who initiated the historical payment. Requesters must issue
fresh challenges; replaying a stored proof does not demonstrate fresh control.

## Local proving artifacts

The selected native disclosure circuit constrains selectors, inactive padding, field
revelation, 128-bit amounts, totals, predicates and a statement-context hash.
The verifier reconstructs public inputs and requires the configured registry's
exact relation and verification-key identity. See [Proof system](proof-system.md).

```sh
just pari-setup
export SHIELDD_PARI_KEYS="$PWD/target/dev-pari-keys"
cargo build --profile ci -p pcli --features disclosure-prover
```

Full openings and payload-key verification do not need proving keys. Pari
verification needs the configured registry's verification keys; proving also
needs the matching proving key. Submitted packages cannot select key files.

## Verification fixtures

Run the ignored `real_proofs` test in `crates/disclosure/tests/claims.rs`
with the `prover` feature and `SHIELDD_PARI_KEYS`. It exercises one, eight and
32 selected outputs, revealed fields, predicates and statement mutations.
`just pari-proof-tests` also runs the runtime bridge proof test. These are real
proof-generation checks and must run serially under the local resource bounds.

The wallet fixtures use the same configured registry. Canonical handoff vectors
use synthetic accepted transactions and do not demonstrate distributed PET.

## Issuer submissions

`pcli disclosure issuer-create --node URL --output issuer.json` reads private JSON
from stdin: `{"request": ISSUER_REQUEST, "issuer_secret": [32 bytes]}`. The key
must match the independently fetched registered asset policy. The output is
published atomically after checking both decryption proofs. The secret stays on
the issuer's computer.

An issuer request has `kind: "issuer"`, `version: 1`, optional `recipient` and
`challenge`, canonical `asset`, and the same `selection` used by general audits.
Its selection chooses amount, sender components, or receiver components. Both
DLEQ proofs bind the complete typed request, including its audience and challenge.
The issuer request can fulfill a Bankd request or accompany an allowed unsolicited
submission. It proves control of the issuer decryption key, not legal identity.

`pcli disclosure issuer-verify issuer.json --node URL` checks the accepted
transaction, registered issuer key, detection proof, flagged bit, and selected
field proof before returning facts. Current-policy key lookup fails closed after
a key change; historical issuer-key lookup remains required for those records.

Evidence also grants asset/flag/salt detection access and amount decryption access,
because detection reuses sender CORE's ephemeral key. This capability is reported
in the preview and verified result. Address output contains components, never an
asserted canonical address. Issuer predicate proofs are not supported.

## Browser primitives

The `shieldd-sdk-disclosure` default feature set provides request preparation,
openings/payload-key export, inspection and local verification. `proof` enables
the native Pari verifier; `prover` additionally enables proving. Without that
backend, Pari verification returns `VerificationUnavailable`.

The WASM API keeps witnesses local and does not change wallet balances or note
reservations. Payload-key previews report transaction-wide memo access. Node
acceptance must be checked using independently fetched committed transactions.
Browser spending-control signatures and browser ZK proving are not implemented.

Issuer verification currently relies on immutable registered asset policies.
Historical key epochs and execution-order lookup are required before adding
issuer-key rotation.
## Cross-client fixtures

`crates/disclosure/tests/handoff.rs` generates the canonical handoff vectors in
`crates/disclosure/tests/fixtures/handoff_vectors.json`; Rust checks the
sender/receiver, self-transfer, alternate-owner, field and epoch bindings. The
fixture uses synthetic acceptance and local checking keys, not distributed PET.
Changed policy, chain, height, output and unregulated selections are rejected.
`accepted_fixture` exports openings, payload keys and true/false development
proofs for independently fetched live transactions; acceptance still requires
verification against the chosen node.

## Orbis demo delivery

With the `orbis` feature, `orbis::prepare_packages` reconstructs the completed
transfer's compliance ciphertext and seals three field openings with pinned
upstream Orbis crypto. Amount uses `output_core`, sender uses `output_ext`, and
receiver uses `sender_ext`. Only encrypted packages leave the wallet.

`pcli disclosure orbis-register` and `orbis-audit` accept sealed packages and
accepted heights on stdin. They validate the chosen node's transaction and asset
policy, the actual delivery DKG key, and canonical Orbis document IDs. Audit
requests use authenticated PRE with a reader-key proof of possession. Decryption
checks the sealed binding and accepted ephemeral key before decoding a field.

The delivery DKG ring is independent of the synthetic registration fixture's
ring, shared payload key and separate checking key. This demo does not implement PET or Orbis issuance
of registration capabilities. Restricted subject filtering happens on the demo
server; it does not provide cryptographic subject isolation. No fixture secret
substitutes for PRE. The [build adapter](../third_party/orbis-crypto/README.md)
keeps upstream Rust source unchanged. BLS12-381 PRE delivers opaque openings;
the audit opening itself uses Jubjub and the shared payload key.
