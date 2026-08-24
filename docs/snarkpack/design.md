# SnarkPack Design

Shieldd aggregates same-verifying-key Groth16 proofs with a local SnarkPack v1
implementation. This document describes the production protocol and its
intentional differences from the Arkworks/Filecoin lineage. See
[verification.md](verification.md) for the proof boundary and current status.

The formal manifest and generated handoff in `shieldd-formal` are authoritative.
The pinned
[Filecoin divergence review](https://github.com/mizufinance/shieldd-formal/blob/main/crates/crypto/proof-aggregation/formal/snarkpack/filecoin-divergence-findings.md)
is historical provenance, not a live security specification.

## Protocol

For `N` proofs `(Aᵢ, Bᵢ, Cᵢ)` under one VK, the prover:

1. commits to the proof vectors with pairing-based inner-product commitments;
2. randomizes each position with a Fiat-Shamir scalar;
3. folds the vectors through a logarithmic GIPA recursion;
4. opens the final folded commitment keys with KZG; and
5. emits one aggregate checked by a final Groth16 pairing-product equation.

GIPA is the halving recursion. TIPA specializes it to the pairing inner product
and KZG key openings. The combined TIPP/MIPP proof folds the AB pairing and C
multiexponentiation relations with one challenge stream.

The production stages are `aggregate.randomizer`, `tipp-mipp.x0`,
`tipp-mipp.gipa.round`, `tipp-mipp.final-bridge`, and `tipp-mipp.kzg`. Their
ordered inputs are listed in [verification.md](verification.md#transcript).

## Provenance

The code under
[`src/ipp/ip_proofs`](../../crates/crypto/proof-aggregation/src/ipp/ip_proofs)
descends from the Arkworks SnarkPack v1 lineage. Upstream code is a comparison
aid, not the production-security baseline. The independent `Ipp.Goal` and
`Ipp.SnarkPackV1` models define the local target.

The conditional shipping Rust → SnarkPack v1 → `Ipp.Goal` adaptive theorem is
proved. Exact external assumptions remain visible in the formal handoff, and
the production SRS ceremony is the sole open claim.

## Local protocol choices

### BLS12-377

Shieldd uses BLS12-377 to match the proving stack; the upstream lineage uses
BLS12-381. No cross-curve byte equality is claimed.

### Domain-separated transcript

Blake2b derives the five Fiat-Shamir stages from a length-prefixed, stage- and
nonce-bound preimage. SHA-256 separately binds the VK, canonical statement, and
challenge context. Changing a stage label, field order, encoding, or dependency
is a protocol change.

### Canonical statement binding

The statement binds protocol version, curve/backend identity, SRS identifier,
proof family, VK digest, real and padded counts, repeat-final padding, and the
ordered padded public inputs. The production preflight and Rust-call
construction are connected to this formal projection. Encoding injectivity is
proved; collision resistance remains the explicit SHA-256 assumption.

### Repeat-final padding

GIPA requires a power-of-two length. Inputs are padded by repeating the final
real proof and public-input row. The verifier recomputes and checks the exact
padding and preserves the caller-order real prefix.

### Wrapper and preflight

The versioned wrapper stores the statement digest and a bounded inner proof.
Preflight validates size, framing, family, counts, VK/SRS facts, rows, padding,
and strict proof decoding before expensive verification.

### Family and bundle routing

The closed proof-family registry selects the compiled VK. Aggregate bundles are
accepted only through the proposal aggregation pipeline and must be the unique
final bundle in a proposal. They are not generic user actions.

## Deployment SRS boundary

Production fails closed unless an authenticated SRS artifact matches the
compiled registry. The formal theorem assumes well-formed proving material and
keeps `DEPLOYED-SRS-SOUNDNESS` open until a ceremony and its verification
evidence are registered. No numerical production-security claim is made before
that work.

## Optimization byte-lock

Internal compute changes must preserve semantics and the committed v1 proof and
transcript bytes. Wire changes require a protocol-version bump. Transcript
changes require a new protocol proof. The full workflow is in
[optimization-playbook.md](../../crates/crypto/proof-aggregation/optimization-playbook.md).
