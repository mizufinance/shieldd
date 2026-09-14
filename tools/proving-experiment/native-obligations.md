# Native Commonware Transfer implementation map

Candidate C now passes all six complete native Transfer proofs, the original
and converted constraints, and negative cross-component/proof gates. See
`cache/native-full-transfer-checkpoint.json`. Complete API timing remains pending. The authoritative current
obligations remain the [Transfer checklist](../../docs/transfer-circuit/constraint-checklist.md)
and [compliance checklist](../../docs/compliance/constraint-checklist.md).

## Available native components

Pinned Commonware PR #4523 supplies arithmetic `Var`/`BoolVar` circuits, their
compiler and valued-witness construction, sparse PARI relations, committed-input
keys/openings, blst BLS12-381 groups and polynomial machinery. Its payment example
proves two 64-bit ranges and an aggregate commitment, without Shieldd's trees,
authorization, note commitments or compliance relation. No Jubjub or Poseidon
circuit implementation was found in that pinned tree. Those gadgets must be local
additions, exercised through the actual Commonware compiler and prover.

## Native primitive design

- Use the prime-order Jubjub subgroup over BLS12-381's scalar field for in-circuit
  group operations. Constrain curve membership and subgroup membership at point
  inputs; reject identity at every ownership/EPK boundary that currently rejects
  Decaf identity. Point equality is subgroup equality, not an unconstrained
  compressed-coordinate comparison. Native fixture construction must agree.
- Keep 128-bit amounts and 129-bit sums. Jubjub's subgroup is large enough for
  those integer values, but scalar reductions and canonical encodings require new
  explicit bounds; do not carry Decaf377 quotient constants into this circuit.
- Use the documented native BLS12-381 Poseidon recipe: width three/rate two
  for arities up to two, width six/rate five otherwise; alpha five, eight full
  and 57 partial rounds, field-specific Grain constants and screened MDS matrices. Use Commonware scalar/Var arithmetic for both native and circuit paths.
  Parameter generation is offline and its artifact hash is pinned. This is a
  distinct hash design from Poseidon377 and requires test-vector agreement.
- A Jubjub compressed point's sign bit is not generally representable as one
  canonical BLS12-381 scalar. Bind both coordinates or explicitly bounded limbs
  in hashes and statement construction; never reduce compressed bytes modulo the
  field. Address encryption must reconstruct the exact canonical bytes, including
  sign and padding. Resolve the final representation before generating fixtures.
- Commonware requires at least one nonempty committed-input block, disjoint from
  public selections. Commit the existing private action-balance blinding with a
  fresh independent opening. It is already constrained in value conservation;
  this adds a hiding commitment to a meaningful existing witness, rather than an
  unconstrained placeholder. Include commitment and opening construction in the
  proving API and proof package. Use ordinary `pari::prove`/matching verification
  so the single public statement and every commitment enter the transcript.

The Jubjub parameter reference is the installed Arkworks curve implementation
(`ark-ed-on-bls12-381`), used as a native cross-check, not as C's circuit compiler.
The Poseidon recipe is pinned in `vendor/zkpari/src/circuits/hasher.rs`.
These choices have native/circuit and negative test coverage; they are not a
security certification or production adoption decision.

## Obligation map

| Current entry point or obligation | Required native implementation and checks | State |
| --- | --- | --- |
| `TransferCircuit.Define` | Fixed 2-input/2-output shape; one statement hash; boolean regulated branch | Complete six-scenario gate passed |
| `verifySharedTransferContext` | Nonzero asset ID, non-identity AK/diversifier/transmission, canonical IVK reduction, ownership DTK, regulated NK derivation and commitment | Ownership/IVK/RNK and complete Transfer selection passed |
| `verifyTransferAssetRegistry` | Exact asset membership or authenticated predecessor gap, same index bounds and depths, selected DK/ring/policy fields, fixed unregulated sinks | Membership/gap, fixed sinks and complete selection passed |
| Sender/receiver compliance leaves | Hash all address, asset, capability, RNK and lifecycle facts; exact accepted anchor and active-status gating | Leaf/path/lifecycle component passed; complete Transfer gate passed |
| `verifyRequiredTransferSpend` / `verifyOptionalTransferSpend` | Required real spend, boolean optional presence, dummy NF/RK, complete original dummy constraints | Required/optional spend component passed; complete Transfer gate passed |
| `verifyTransferSpend` | Native note commitment, 24-level quaternary SCT path, position, NK-derived nullifier, authorization randomization, history/floor binding | Note/spend component passed, including strict history boundary and gated dummy cases |
| `verifyTransferReceiverOutput` | Nonzero receiver amount, non-identity diversified generator, matching asset, full recipient compliance leaf and output commitment | Output/recovery and compliance-leaf components passed; complete Transfer gate passed |
| `verifyTransferChangeOutput` | Sender-owned change including zero amount, matching asset, commitment and full recovery capsule equations | Output/recovery component passed; complete Transfer gate passed |
| `verifyTransferRouting` | Exact roles, parameter-set binding, authenticated route policy and routing-tag equations | Routing component passed; complete Transfer gate passed |
| `verifyVolumeAccumulatorTransition` | Canonical origin or predecessor, SCT membership, day/timestamp decomposition, u128 addition and limit, successor/nullifier/context equations, exact disclosure branch | Ported; mutations and real PARI component proof passed; complete Transfer gate passed |
| `verifyTransferComplianceCiphertexts` | Unconditional detection and four audit tiers, independent nonzero EPKs, ACK/DK selection, shared-secret binding, every ciphertext word, salts/seeds and key confirmations | All four tiers/detection/metadata component passed, including a real PARI proof; complete Transfer gate passed |
| Canonical address encryption | Full canonical point bytes reconstructed from constrained coordinates/signs, fixed ordered 31-byte packing, no field reduction of arbitrary bytes | Packing/canonicality and tier integration component passed |
| `computeTransferBalanceCommitmentFq` | Four u128 ranges, u129 input/output sums, native asset generator, net balance and action blinding; no modular-integer ambiguity | Native map/net-balance component and real PARI proof passed; complete Transfer gate passed |
| `buildTransferStatementFields` | Every existing semantic field, including floor/history flags, routing, accumulator, anchors, detection/tiers, timestamp and metadata; explicit expansion of point representations | All 60 fields bound in original semantic order; full proofs passed |
| Logical fixture builder | Six equivalent scenarios, deterministic application fixture seeds, fresh proof/commitment randomness, branch and shape parity | Checked decoded-source facts and six full native proofs passed |
| Negative/boundary corpus | Each original mutation family plus wrong subgroup, identity, sign/encoding, scalar overflow, wrong key/statement/opening and malformed proof | Component and cross-component mutations plus six full proof rejection gates passed; source mutation-family coverage audit remains |

External acceptance requirements (signatures, anchor freshness, global nullifier
insertion and durable lifecycle admission) remain external. The spike must retain
their statement bindings and must not describe their omission from a proving
benchmark as removing their protocol cost.

## Checked components

`native/src/hash.rs` matches 24 Arkworks 0.6 reference vectors across empty,
partial and multi-block inputs. Every MDS minor is nonsingular. The pinned
reference's matrix screening conditions pass the checks documented in
[native/poseidon-screening.md](native/poseidon-screening.md), including a stronger
sufficient Algorithm 1 condition. These tests do not certify the hash parameters.

`encoding.rs` binds canonical y plus x parity, packs both address points into
three 31-byte field words, and rejects a modulus-valued bit representation of zero.
`scalar.rs` bounds the subgroup remainder and the quotient-8 case, preventing a
field-wrapped reduction equation. `group.rs` uses an on-curve cofactor preimage
for subgroup membership and projective scalar multiplication; both native and
circuit results agree with independent Arkworks Jubjub calculations.

`tree.rs` checks all quaternary slots and rejects out-of-range position bits at
24 levels. `volume.rs` preserves the accumulator origin, continuation, padding,
fee context, UTC-day, u128 arithmetic, limit and commitment/nullifier constraints.
Its tests include a genuine native PARI component proof and invalid-relation
rejection. All six full native Transfer proofs now pass.


`authorization.rs` binds AK/NK, canonical nonzero IVK, sender transmission and
address/asset/ring-scoped RNK selection. `compliance.rs` binds the full 16-level
leaf, capability/RNK DH points and 131-bit lifecycle. `registry.rs` authenticates
all indexed-leaf fields and strict canonical field gaps; fixed unregulated sink points are derived by `map.rs`; the complete Transfer selects them and rejects encryption under predecessor DK.

`note.rs` preserves required/optional input membership, nullifier, randomized
key, 48-bit history classification, fixed dummy slot and exact existing dummy
gating. Receiver outputs must be nonzero; zero-valued change still has a complete
note commitment and recovery capsule. `recovery.rs` binds EPK/DH, seed, salt,
confirmation, amount, blinding and all capsule commitment fields.

`encryption.rs` constrains unconditional issuer detection and all four audit
tiers, with the correct opposing address in each extended tier, selected ACK/DK
shared secret, canonical nonzero ephemeral scalars, core confirmations and all
metadata. Shared-secret field values hash both coordinates. EPKs in confirmation
and detection preimages also bind both coordinates. The private scalar/seed
sampler remains a caller obligation, as in the current encryption construction.
Tests mutate every one of the 35 public payload fields in both disclosure
branches and check selected-party decryption and changed commitments. The real
PARI component proof is not a complete Transfer proof or benchmark candidate.

## Native hash-domain allocation

Domains also bind arity through the pinned hash recipe. Do not reuse a domain
for a new semantic preimage. These values describe experimental encodings only.

| Values | Preimages |
| --- | --- |
| 1–3 | State, asset and compliance tree nodes, including level |
| 4–9 | Accumulator subject/state/origin nullifier, note nullifier, padding commitment/nullifier |
| 10–14 | Stream block, shared-secret coordinates, detection seed, core confirmation, tier salt |
| 15–19 | Note, IVK, regulated NK, RNK commitment, compliance leaf |
| 20–22 | Recovery commitment, recovery confirmation, fixed-slot dummy nullifier |
| 23–25 | Asset parameters, ring parameters, indexed asset leaf |
| 26–29 | Asset/blinding generators and unregulated DK/ring sinks |
| 30–33 | Routing word, random tag word, permutation and parameter set |
| 34 | Complete Transfer statement, fixed 60-field order |
| 255 | Component-test statements only |

`map.rs` uses Elligator 2 with Jubjub's Montgomery J=40962, K=-40964 and Z=5,
then the Edwards rational map and cofactor 8. It agrees with Arkworks 0.6 across
36 full-field inputs, including zero and p−1. QR choice and canonical root sign
are constrained. The denominator exception is impossible in this field; rational
map exceptions still produce identity. This is a nonuniform encoding, not a
standardized hash-to-curve suite. See [RFC 9380 §6.7.1](https://www.rfc-editor.org/rfc/rfc9380.html#section-6.7.1)
and [Appendix D](https://www.rfc-editor.org/rfc/rfc9380.html#appendix-D).

Separate Poseidon domains derive the asset, blinding and fixed sink points without
publishing their discrete logarithms to G. `balance.rs` binds four u128 amounts,
both u129 sums, signed net value and canonical blinding. A genuine PARI proof with
that blinding committed passed, including altered claim/commitment rejection.
This component does not assert net value is zero; Transfer binds the action's net
commitment for external transaction conservation.

`routing.rs` preserves the 0–32 ordered precisions, parameter-set hash, nonce
permutation, sender relevance, two exact 32-bit tags and random suffixes. Its
native/circuit tests cover both permutations, precision endpoints, regulated and
unregulated cases, change presence and mutated tags/parameters/nonce. The full
Transfer passes one bound nonce to encryption, routing and the accumulator.

`transfer.rs` composes the complete relation with shared constrained variables.
Forty relevant native release checks passed across focused invocations. Every
native scenario passed a full randomized PARI proof and changed-statement/
commitment/key/malformed-proof checks under the tuned relation. A changed nonce
rejects under the ordinary release prover. See `cache/native-tuned-full-gate-checkpoint.json`
and the final API gate for exact source, proof, key and log hashes.

Composition preserves raw `Auth.NK` for the volume accumulator and selected
effective NK for note nullifiers. External/self status uses all four address
coordinates; fee context rejects external transfers. Fixed unregulated sinks and
empty policy values are selected in the same constrained context. The 60-field
statement expands the balance, two RK and four EPK encodings into coordinate
pairs while retaining the existing semantic ordering. The committed-input block
contains the same constrained action blinding with a fresh independent opening.

Complete measured witness APIs, component-guided optimization and the compact
desktop comparison are complete; see `docs/research/transfer-proving-results.md`.
Physical-phone measurements remain pending.
