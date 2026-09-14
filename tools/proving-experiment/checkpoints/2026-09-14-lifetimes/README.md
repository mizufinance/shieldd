# Native allocation lifetime evidence

The [report](../../../../docs/research/native-pari-lifetimes.md) describes the retained same-key change and its limits. This checkpoint binds the diagnostic sources, exact binary/key identities, raw allocation and normal full-API samples, correctness records and guarded release-test logs. Generated keys, witnesses, proofs and binaries stay in the ignored experiment cache; their hashes are preserved here.

Requested Rust allocation instrumentation is separate from the ordinary-build timing comparison. Six normal Transfer scenarios and negatives pass;42 native release tests pass;16 unique normal benchmark proofs verify. Old A/B/C matrices remain immutable. No physical-phone, production release-gated, formal or validator-throughput result is claimed.
