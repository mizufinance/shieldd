# Key and native prover plan — independent security review

Reviewed 2026-09-21. Planning only; no implementation changes or heavy checks.
Scope: `key-and-native-prover-implementation-plan.md`, repository instructions,
and the relevant implementation. No other independent reviewer report was read.
The parent verified this agent's runtime metadata as `gpt-6-astra`, high reasoning;
the agent's own tools do not expose its configured model.

Verdict: **revise before implementation**. The native-prover restoration and
seizure authorization shape are sound in the inspected source. Resolve the
release-confidentiality contract and preserve the complete key-separation checks.

## P1 — Resolve owner authorization before treating shared-key capsule release as equivalent

Plan references: design contract 4–5 (lines 40–51), milestone C.3 (131–135),
milestone D (155–171).

Replacing address-derived CAPK with one payload key removes the cryptographic
owner distinction at capsule opening. A release request can name address A and
the exact capsule of address B; a payload-key DLEQ can be valid for that request
because DLEQ proves the shared point uses the specified key, not that the hidden
note owner equals A. Binding the supplied address into the request prevents
later substitution but does not establish its truth.

The current seizure circuit does establish the note's actual address through
the note commitment and membership proof, so this is **not** a finding that the
proposed host would accept unauthorized seizure. That check happens after the
opening is released: host admission derives the capsule seed before verifying
the seizure proof. A rejected seizure cannot undo disclosure of capsule amount
and blinding. Adding an ownership ciphertext provides the missing authenticated
input for owner checking, but does not itself perform or authorize that check.

Sources: [release verification](../../crates/core/component/shielded-pool/src/note_seizure.rs#L335),
[host release before proof](../../crates/core/app/src/app/host.rs#L775),
[note/address relation](../../crates/crypto/circuits/src/seizure.rs#L114),
[current capsule plaintext](../../crates/core/component/shielded-pool/src/recovery_capsule.rs#L177).

Minimal remedy: make the decision explicit before milestone C. If address-scoped
capsule disclosure is required, retain proved per-capsule ownership and require
the external release service to check accepted-note provenance, the scoped grant
and owner equality before releasing any shared point; leave that integration
unavailable until supported. If scope is exclusively authority-approved public
disclosure of an exact note, say that authority authorization permits opening
that exact note independently of a claimed-owner match, defer capsule PET, and
keep private/address-scoped capsule release unavailable. The latter does not
need a new ownership gadget for seizure soundness. Do not claim existing
Transfer PET covers change, reshape, withdrawal or mint capsules.

Acceptance: distinguish wrong-address **pre-release rejection** from wrong-address
**host seizure rejection**. Only claim the former when its external prerequisite
exists. Include a fixture demonstrating that a valid shared-key opening alone
does not attest ownership; never label a synthetic DLEQ fixture an ACP/PET grant.

## P2 — Preserve both audit roles' separation from issuer DK and the RNK ring key

Plan references: design contract 1–2 (26–36), milestone B.1–2 (99–105).

The draft explicitly requires payload/checking inequality and payload independence
from the RNK ring secret, but omits the existing complete admission invariant.
`AssetPolicy::validate_regulated` rejects every audit role equal to either
`ring_pk` or `dk_pub`. Losing those comparisons during the shape change would
allow an issuer DK to open unflagged payloads, or collapse the checking authority
into an issuer/ring authority. The intended separate roles warrant preserving
the concrete check, not relying on the phrase “distinct authorities.”

Source: [regulated policy admission](../../crates/core/component/compliance/src/structs.rs#L758).

Minimal remedy: explicitly retain `payload != checking` and require each of
`payload` and `checking` to differ from both `ring_pk` and `dk_pub`. State that
all intended role secrets are independently provisioned; point inequality does
not prove independence or forbid a known scalar relationship. Keep distributed
provenance verification external rather than adding speculative local proofs.
Test each forbidden equality at actual asset registration/admission, alongside
honest independent keys and the unregulated sink exception.

## Nonblocking clarifications and verified boundaries

- **Public mints are an explicit randomness exception.** C.3 calls the existing
  per-note seed fresh; [mint construction](../../crates/core/component/shielded-pool/src/component/note_manager.rs#L133)
  derives it from the public SCT position. If capsule ownership is retained,
  derived checking randomness for those notes is public and cannot hide an
  ownership fingerprint. These mints are already explicitly public. Document
  that exception and preserve deterministic consensus construction; do not add
  local random mint entropy or promise PET privacy for public mint notes.
- **RNK and seizure gates remain necessary.** The RNK derivation uses wallet DH,
  address, asset and ring binding independently of CAPK
  ([derivation](../../crates/core/component/compliance/src/structs.rs#L171)).
  The host checks authority signature, current freeze, RNK commitment, window,
  history, proof and unspent state before atomic effects
  ([admission](../../crates/core/app/src/app/host.rs#L684)). D.2–3 correctly retain
  these gates; no reason was found to redesign RNK as part of this work.
- **Old-data guards must cover admission, not just local files.** E already
  requires rejection. Its concrete checklist should cover the application
  version, wallet SQL schema hash, complete registry relation/key identities,
  detached capsule/request codecs and changed protobuf fields. Reserve removed
  CAPK field numbers and reject absent required payload/epoch fields. A protobuf
  decoder ignoring an old field is not a format rejection. Existing guards are
  [application version](../../crates/core/app/src/app_version/component.rs#L31),
  [wallet schema](../../crates/view/src/storage.rs#L1517), and
  [registry validation](../../crates/crypto/proof-params/src/pari.rs#L199).
- **Native correctness checks have a clear restoration path.** A retains the
  two-sided-square repair and relation/public-column checks. Removal of 0003
  restores native quotient division with a nonzero-remainder rejection, alongside
  both opening-remainder checks and claim/witness binding
  ([current ordinary prover branch](../../third_party/commonware/cryptography/src/zk/pari/prover.rs#L184)).
  Preserve ordinary decoder tests for subgroup/canonical points, truncation,
  sparse index ordering/duplicates, length bounds and trailing bytes. Retest
  unsatisfied witnesses and tampered public inputs/committed blocks through the
  resulting native API. Do not retain prepared-only algebra to accomplish this.

No prover/release-gated tests, builds, source changes or external release-system
validation were performed. These are design-review findings, not claims that an
unimplemented change has been exploited or verified.

## Final revision confirmation — 2026-09-21

Verdict: **security findings resolved in the revised plan; no remaining planning
blocker identified**. This supersedes the initial revise-before-implementation
verdict. No other independent review report was consulted.

Design 4–5 now expressly authorizes public opening of the exact accepted note,
requires external provenance and grant checks before release, and leaves
production integration plus private/address-scoped capsule release unavailable.
It makes no owner-attestation claim from DLEQ or post-release seizure admission.
That scope resolves P1 without adding capsule ownership ciphertexts. Milestone D
tests the distinction while preserving all seizure gates.

Design 1 and B.1 preserve both audit roles' inequality with issuer DK and RNK
ring keys, independent provisioning, and real admission regressions, resolving
P2. C preserves public deterministic mint semantics and converts release/host
consumers with the capsule cutover. E specifies the owning stale-data guards,
required new request fields, retained native negative checks, bounded registry
admission and validation before publication. These revisions introduce no new
security blocker in the inspected design.

Confirmation is of the written plan only. Implementation, prover/release-gated
tests and external authorization behavior remain unverified; no heavy jobs ran.
