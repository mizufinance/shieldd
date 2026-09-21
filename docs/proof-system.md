# Proof system

Shieldd uses Commonware's native zk-Pari circuit compiler, prover and batch
verifier over BLS12-381. Application commitments, key agreement and RedJubjub
signatures use Jubjub. Poseidon operates over the BLS12-381 scalar field, which
is Jubjub's base field. The suite is `shieldd-jubjub-pari-v1`.

The [catalogue](../crates/crypto/circuits/src/catalogue.rs) fixes eight relations:
transfer, reshape 1-to-8, reshape 8-to-1, withdrawal, seizure, disclosure with
32 slots, historical generation and historical chunk with ten raw witnesses.
Shieldd owns those relations, compliance semantics, witness construction and
canonical encoding. Commonware owns the shared cryptographic implementation;
[the source policy](../third_party/commonware-patches/README.md) describes its
pin, small patch queue and update checks.

## Key registry

`just pari-setup` creates fresh demo keys in `target/dev-pari-keys`. It refuses
to replace an existing directory. This local setup is not a multiparty ceremony.
Copy the same registry to all participants. Independent setup runs create
incompatible identities even when the source is identical.

Set `SHIELDD_PARI_KEYS` (or pcli's `--pari-keys`) to that directory. SDK entry
points receive an explicit `Arc<Registry>`. Manifest loading checks the exact
suite, complete family set, relation layout, canonical key encoding and file
digests. Verifiers need the manifest and all eight `.vk` files. Provers also
need the corresponding `.pk` files. The registry retains one proving key at a
time, together with its source-bound witness mapping, public polynomials, FFT
tables and affine MSM bases, and serializes proving within a registry. Preparation
consumes the decoded key so projective bases are not retained alongside affine
bases. Point decoding uses the same bounded strategy and canonical subgroup
checks. Immutable Poseidon parameters and derived generators are shared. Preparation
is discarded before another family loads. Witness values and proof randomness
are fresh for each request; circuit values are released before polynomial proving.
Native provers
share Commonware's two-worker Rayon strategy; whole-proof callers remain outside
that pool. Wasm proving and verification use Sequential. Paths are operator
configuration, never transaction input.

The registry ID hashes the suite and ordered family/verification-key identities.
Genesis commits it into verifiable pool state. Opening populated state or
rolling back to a snapshot rejects a different or missing ID. Wallets bind
local history and successful witness construction to the same ID; failed
witness construction does not persist a first binding. Stale state is rejected;
there is no migration or automatic key replacement.

## Verification and history

A 244-byte proof envelope binds suite, family, relation claim and canonical
Pari proof. Same-family actions batch through Commonware. There is no aggregate
transaction action or sidecar. Private verified receipts bind the registry and
exact action statement/proof bytes; they never bypass current state checks.
Proposal preparation verifies at most 32 candidates per batch and falls back to
one individual check per candidate when a batch fails. Canonical ordered
execution admits candidates independently, counting only accepted bytes and
spend/volume nullifiers. Validation rejects the whole proposed batch on failure.

Historical generation proofs cover up to nine trailing generations. At ten,
the wallet proves a chunk directly from ten retained raw nonmembership paths.
It persists pending paths before proving, recovers after restart, and publishes
only self-verified results. Catch-up stages complete raw chunks directly and
proves individual generations only for the final incomplete tail. Historical
proof verification and receipt attachment run on blocking workers. Spent notes
cannot regain history cache rows.
History format version 3 and pool application version 17 reject stale data.

Run `just ci-test` and `just pari-proof-tests` with the same explicit registry.
The latter runs ignored expensive real proofs. Circuit satisfaction, codec,
mutation, cross-key and runtime bridge checks complement end-to-end proofs.
A passing ordinary test run alone does not establish that expensive proofs ran.
