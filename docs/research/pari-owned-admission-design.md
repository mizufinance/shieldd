# Pari377 owned arithmetic admission

Status: implemented, checked and retained in [the measured experiment](pari-owned-admission.md). The frozen prepared-key worker spends about16.8 seconds checking the Rust key and16.1 seconds initializing Go arithmetic. Both validate the same1,131,596 G1 query/mask points. Rust also retains roughly103.6MiB of query points already resident in Go. Removing only redundant serialization or file hashing cannot recover the dominant cost.

## Trust and admission boundary

The ordinary prover API remains the only external ingestion boundary. Rust reads the complete prepared key, performs bounded canonical decoding, curve and deterministic subgroup validation of every query/mask point, checks the verifying key, and associates the domain/index with the actual Transfer matrices. An opaque checked-key record is created only by that decoder; a raw constructed proving key cannot enter delegated admission.

Rust creates a separate anonymous stdin bootstrap pipe and inherited Unix socket for later commands when spawning an isolated private Go arithmetic child. The parent owns its only write handle. The external witness/proof API never forwards caller bytes, file paths, cache manifests or an “already validated” flag into bootstrap. This is trust in a checked in-process value across an owned child channel, not cryptographic authentication of arbitrary local processes. The original general Go file loader and its full subgroup checks remain unchanged.

The private child receives a bounded typed bootstrap describing the fixed curve/protocol, retained/FFT domain, relation index, complete verifying-key digest, exact source-key digest, and ordered query lengths. Query frames carry canonical point bytes directly from the admitted Rust key. Go checks schema, field/point canonicality and curve membership, class/count/order, exact byte lengths and per-query content digests. Those digests bind framing and order; they are not evidence of subgroup membership. That evidence is the earlier Rust decoder and exclusive typed path into the child pipe. The child sends a bound readiness record only after the whole bootstrap completes at EOF. Rust verifies it before serving any proof request.

## Ownership and failure states

The prover explicitly transitions from local checked storage through streaming to delegated readiness. Rust moves each query vector into streaming ownership, sends it in bounded chunks, and frees it before the next vector. The two mask points remain local. The child retains combined witness/quotient and opening-A/opening-R arrays with immutable slices, as in the existing arithmetic worker.

Proving uses typed query identifiers and recorded lengths instead of borrowed Rust point slices or pointer identities. A fallible MSM callback propagates child/protocol failure directly; no provisional proof may be admitted after a failed operation. Bootstrap truncation, reordered/missing classes, wrong bindings, unexpected data, child death and acknowledgement failure terminate initialization. A half-transferred key is never reused. A new attempt reloads and checks the key.

This design does not remove duplicate circuit matrices, change masks or the proof protocol, trust arbitrary cached points, or disable checks on the existing general helper. A manually launched private helper is not a key validator or a supported standalone proving API.

## Evidence required before selection

1. Focused Rust tests enforce checked-key construction, legal storage transitions, query mapping/bounds and canonical/torsion key rejection. Private Go bootstrap tests reject malformed metadata, field/point encodings, counts/order, truncation, trailing frames and mismatched digests. Existing general-loader negative tests remain applicable and unchanged.
2. Use the exact existing prepared Transfer key. Compare complete MSM outputs and seeded proof bytes against the frozen prepared-key Rust protocol for all six real solved assignments. Ordinary timed proving retains fresh randomness. Exercise failed/truncated child admission before proof requests.
3. Pass all six complete logical-witness API gates and existing statement/domain/proof/witness negatives. Revalidate every generated measured proof and compare under the original prepared-key verifier.
4. Run one short paired diagnostic: three warmups, five warm requests and three fresh-process first proofs per variant, two workers and one active heavy job. Charge streaming, checked loading and all preparation to startup; report RSS, encoded key/storage and exact first observations. Keep the saved selected A/B/C matrix immutable.

If this boundary cannot be implemented with these checks, reject or narrow the experiment rather than substituting a caller assertion or unchecked cache. Production acceptance paths and artifacts remain unchanged; no formal or phone certification follows.
