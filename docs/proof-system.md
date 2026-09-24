# Proof system

Shieldd uses a pinned Commonware zk-Pari implementation with isolated build, relation-inspection and
compiler-correctness repairs, constant outlining, and its native prover and batch
verifier over BLS12-381. Each relation exposes one public statement digest,
constrained to the hash of its statement fields inside the circuit. Constant
coefficients use a private witness constrained to one so the implicit public
constant column stays sparse.
Application commitments, key agreement and RedJubjub
signatures use Jubjub. Poseidon operates over the BLS12-381 scalar field, which
is Jubjub's base field. The suite is `shieldd-jubjub-pari-v1`.

The [circuit specification](circuits.md) defines the nine relations and their
constraint boundaries.
Shieldd owns those relations, compliance semantics, witness construction and
canonical encoding. Commonware owns the shared cryptographic implementation;
[the source policy](../third_party/commonware-patches/README.md) describes its
pin, patch queue and update checks.

## Key registry

`just pari-setup` creates fresh demo keys in `target/dev-pari-keys`. It refuses
to replace an existing directory. This local setup is not a multiparty ceremony.
Copy the same registry to all participants. Independent setup runs create
incompatible identities even when the source is identical.

Set `SHIELDD_PARI_KEYS` (or pcli's `--pari-keys`) to that directory. SDK entry
points receive an explicit `Arc<Registry>`. Manifest loading checks the exact
suite, complete family set, relation layout, canonical key encoding and file
digests. Generation enforces the same key/domain bounds and loads the staged
registry before publication, then loads the destination. Verifiers need the manifest and all nine `.vk` files. Provers also
need the corresponding `.pk` files. The registry retains one proving key at a
time with its compiled relation and serializes proving within a registry. Native
Commonware decoding enforces canonical subgroup encodings. Immutable Poseidon
parameters and derived generators are shared. The cached key and relation are
discarded before another family loads. Witness values and proof randomness are
fresh for each request; circuit values are released before polynomial proving.
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

[Nullifier history](nullifier-history.md) owns generation/chunk coverage and
archival proofs; [Wallet](wallet.md) owns durable proving and cancellation.
Historical proof verification and receipt attachment run on blocking workers.
Pool application version 19 rejects stale data.

Run `just ci-test` and `just pari-proof-tests` with the same explicit registry.
The latter runs ignored expensive real proofs. Circuit satisfaction, codec,
mutation, cross-key and runtime bridge checks complement end-to-end proofs.
A passing ordinary test run alone does not establish that expensive proofs ran.
