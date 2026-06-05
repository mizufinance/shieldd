# Compliance Ciphertext Soundness

Compliance ciphertext soundness depends on three layers working together:

1. The transfer encryption code creates tier ciphertexts, `c2` masks, EPKs, and
   DLEQ proofs with one randomizer per tier.
2. The circuit enforces encryption and DLEQ consistency for regulated assets.
3. The action handler accepts only recent consensus-backed compliance and asset
   anchors.

The formal fixtures are in `crates/core/component/compliance/formal/`.

## What Must Hold

Regulated transfers must provide issuer-decryptable detection data, with the
flag tied to the amount threshold, and ACK/DK tier material must remain
separated. The DLEQ proof binds `EPK = r*G` and `S = r*ACK` to metadata that
includes tier, salt, and target timestamp. Anchor freshness is an external
state obligation: a circuit proof against an old root is not enough.

Unregulated transfers are explicitly different. The Rust and Go circuits gate
encryption/DLEQ checks on `is_regulated`; sink keys preserve ciphertext shape
but do not create issuer decryptability. The docs and property catalogue avoid
claiming regulated detection semantics for that branch.

## Adversary Findings

The main compliance findings are scoped, not blanket claims:

- `c2` is included in the transaction statement hash, so post-hoc mutation of an
  accepted transaction breaks verification. The real malleability risk is at
  standalone upload/decode surfaces or from a prover that generates a consistent
  altered proof.
- `COMPLIANCE_STREAM_CIPHER_DOMAIN` exists but the current tier stream uses
  `hash_2(&seed, (counter, seed))`.
- Designated-decryptability is implemented behavior, but not yet a formal
  designated-verifier claim.

## Mechanization Boundary

The planned symbolic model should start in Tamarin, with ProVerif as a lighter
alternative. The model must idealize DLEQ, Poseidon, IMT membership, compressed
Decaf377 masking, and `is_regulated` conditioning; those idealizations are
tracked in the assumption ledger rather than treated as native Tamarin facts.
