# SnarkPack runtime verification

Shieldd validates aggregation through production tests, an independent
reference crate, interoperability fixtures, fuzzing, and byte locks. Formal
specifications and evidence live in `mizufinance/shieldd-formal`.

## Algebra

The production and reference implementations must agree on:

- aggregate proof creation and verification;
- inner-product reductions and pairing equations;
- malformed proof rejection; and
- Rust/gnark proof interoperability.

The reference crate depends only on the public proof-aggregation API. Runtime
checks reject unchecked deserialization, invalid ranges, empty batches,
statement mismatches, and malformed curve points.

## Transcript binding

Every challenge binds the protocol label, SRS identifier, statement digest,
round index, vector length, commitments, and claimed values. Typed encoders own
all transcript and statement serialization. Preflight decoding recomputes the
statement digest before verification.

Repeat-final padding is part of the statement and wrapper. The original batch
length remains bound, so distinct unpadded batches cannot share a claim.

## Fuzzing

The committed corpus covers wrapper ranges, aggregate preflight, and proof
deserialization. Corpus sizes and clean-run measurements are recorded in
[`fuzz-corpus-baseline.md`](../../crates/crypto/proof-aggregation-fuzz/fuzz-corpus-baseline.md).
CI uses the curated seeds without mutating them.

## Performance

Benchmarks track aggregation, verification, prepared G2 reuse, parsing, and
attacker-controlled rejection paths. Limits must bound allocation and expensive
curve work before untrusted sizes are accepted.

## X3 — Optimization byte lock

Optimizations must preserve aggregate-proof and transcript bytes. If a protocol
change intentionally changes bytes, update the version, domain separation,
fixtures, and both implementations together.

The committed baselines cover:

- aggregate proof bytes;
- challenge transcript bytes;
- statement digests; and
- wrapper framing.

## CI

`scripts/check-snarkpack-runtime-invariants.sh` checks crate boundaries,
canonical codecs, challenge construction, preflight use, SRS registration, and
fuzz corpus presence. Rust tests cover the algebra, rejection cases,
interoperability, and byte locks.

Production SRS loading fails closed until the compile-time registry contains a
reviewed artifact and identifier. Runtime configuration may locate registered
bytes but cannot register replacements.
