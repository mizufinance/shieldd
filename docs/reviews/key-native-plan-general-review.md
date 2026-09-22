# General implementation review of the key/native-prover plan

Reviewed 2026-09-21. Scope: implementation completeness, sequencing, codecs,
callers, source reproduction, and verification feasibility. Planning only.
The parent verified this reviewer's runtime configuration from local Codex
thread metadata as `gpt-6-astra`, reasoning `high`; that identifier is not
directly exposed inside this agent's tool context. No other independent
reviewer's report was consulted.

Verdict: revise the two bounded items below before implementation. The overall
cross-layer scope and native-API direction are coherent. Neither finding calls
for a compatibility path or another proving implementation.

## Findings

### P2 — Make CAPK removal and the seizure release conversion one buildable change

The plan removes CAPK from compliance leaves and requires no executable CAPK
path at the end of [milestone C](key-and-native-prover-implementation-plan.md#milestone-c--capk-free-capsules-and-all-note-creation-paths),
but schedules the release-request and host conversion in milestone D.
[HostExecution::seize_note](../../crates/core/app/src/app/host.rs#L784)
still constructs the release request from `leaf.capk`, while
[CapsuleReleaseRequest](../../crates/core/component/shielded-pool/src/note_seizure.rs#L193)
stores and verifies that key. Host test fixtures also call the derivation
scheduled for deletion. Consequently C cannot meet its compile/test and
no-CAPK exit criteria independently as written. Leaving the field until D
would contradict C's stated deletion contract.

Minimal remedy: move the host/release request, codec, identifier, DLEQ key
selection and fixture conversion into C, and leave D as the comprehensive
seizure boundary test milestone; alternatively merge C and D. Include a
workspace compile check at this combined boundary. Do not retain a temporary
CAPK field to make the split compile.

Verification: traced the production host construction, release type, conversion
and evidence verification, plus direct derivation callers. This is a source
dependency and milestone-order issue; no build was needed to establish it.

### P2 — Check restored-native key sizes against loader limits before publishing setup

Milestone A says to preserve file bounds, while E measures new VK sizes after
generating the full registry. Removing constant outlining changes the VK from
the currently tiny sparse-public-column shape. Native
[public_columns](../../third_party/commonware/cryptography/src/zk/pari/setup.rs#L186)
copies every public-column coefficient, including constant column zero, into
the VK; [PublicColumn encoding](../../third_party/commonware/cryptography/src/zk/pari/types.rs#L308)
serializes those maps. The Shieldd loader caps a VK at
[1 MiB](../../crates/crypto/proof-params/src/pari.rs#L25), but
[generate_development](../../crates/crypto/proof-params/src/pari.rs#L392)
checks only the PK byte limit before publishing the directory. A restored
native VK exceeding that bound can therefore produce a successfully published
registry which `Registry::load` immediately rejects. Setup also does not
explicitly check its domain against the loader's `2^21` admission bound.

This review did not compile the proposed relations or establish their final
sizes; the missing generation/admission contract is directly visible in the
source. The plan's changes remove the optimization responsible for today's
539-byte VKs, so preserving existing numeric limits without a census is not an
adequate acceptance criterion.

Minimal remedy: retain bounded reads but explicitly reassess their numeric
limits using the final relation/public-column census before full setup. Make
generation enforce VK, PK and domain admission limits before publication,
and require an immediate successful `Registry::load` of the generated registry.
Add a focused generation/loader-limit regression, using small fixtures where
possible. Keep one full final registry generation; this requires neither a
baseline regeneration nor a replacement compiler optimization.

## Coverage and implementation notes

- CAPK consumers were traced through Transfer receiver/change, reshape,
  withdrawal sender encryption/change, recovery gadgets, native note builders,
  genesis/host minting, seizure release, wallet rows and generated protobufs.
  The plan names these functional routes. Deposits must retain registration and
  active-status admission while fetching the authenticated asset payload key.
- Unregulated asset proofs authenticate a predecessor leaf, not that asset's
  policy. Existing Transfer code selects `AuditKeys::unregulated()` explicitly.
  Apply the same effective-key selection to the changed withdrawal and capsule
  paths, with a nonempty registry/predecessor fixture. This fits the plan's
  existing sink-semantics and regulated/unregulated parity requirements.
- Removing the wallet CAPK column changes its schema hash automatically;
  application state also has `APP_VERSION`, and history/registry bindings have
  distinct guards. The plan's explicit stale-state rejection work is appropriate;
  determine guards from changed representations rather than indiscriminately
  incrementing every version.
- The retained 0001 build fixes, 0002 key introspection, and rebased 0004 compiler
  regression are accounted for. `just commonware-test` currently names prepared
  math/MSM tests, and the plan correctly requires updating it and source
  provenance together. Preserve the upstream test lockfile and source
  reproduction check when removing 0003-only files.
- Deferring full setup until final circuit shape, serial heavy jobs, and explicit
  eight-family proof coverage are appropriate. The recorded native performance
  measurements still include constant outlining, so they cannot predict the
  final restored-native VK load/verification cost. The requested final
  measurement should report that distinction.

No source implementation or plan edits were made. No builds, test suites,
setup, benchmarks, prover tests, or release-gated tests were run. The review is
static source verification and does not claim runtime acceptance of the
proposed design.

## Final revision confirmation

Re-read the revised implementation plan on 2026-09-21 without consulting the
other independent review reports. Both general-review findings are resolved
at the planning level: C.6 includes host/release types, codecs, identifier,
evidence verification and fixture callers in the CAPK deletion cutover, with a
workspace compile exit; E requires the final domain/public-column census,
bounded VK/PK/domain admission agreement, and successful staging and destination
registry loads. Deterministic public minting and fixed unregulated sink
selection, including a populated predecessor fixture, are now explicit.

Final verdict: ready for implementation from the general correctness and
completeness perspective; no new blocker found in the reconciliation. This
supersedes the initial revise verdict above. It approves the implementation
plan, not an implemented protocol or measured resource envelope. No heavy
jobs, builds, proofs or release-gated tests were run for this confirmation.
