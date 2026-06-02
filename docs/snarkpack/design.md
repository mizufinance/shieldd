# SnarkPack: Fork & Modifications

What Penumbra's proof-aggregation backend is, what upstream it descends from, and
every deliberate change we made to that upstream, with rationale. Start here.

The companion doc is [verification.md](verification.md): how we check that this
design is faithfully and securely implemented.

The authoritative, machine-checked detail lives next to the formal artifacts and
is linked where relevant:

- [ripp-spec.md](../../crates/crypto/proof-aggregation/formal/snarkpack/ripp-spec.md) — row-by-row local algorithm spec.
- [adaptation-register.md](../../crates/crypto/proof-aggregation/formal/snarkpack/adaptation-register.md) — every Filecoin→Penumbra difference, coverage-checked against `adaptation-scope.txt`.
- [filecoin-divergence-findings.md](../../crates/crypto/proof-aggregation/formal/snarkpack/filecoin-divergence-findings.md) — the behavioral review behind those differences.

## 1. What SnarkPack/RIPP is

SnarkPack aggregates `N` already-valid Groth16 proofs for the **same** verifying
key into one short proof that a verifier checks faster than `N` separate Groth16
verifications. It is the RIPP (Rust Inner-Pairing-Product) construction from the
SnarkPack paper.

### High level

Given `N` Groth16 proofs `(Aᵢ, Bᵢ, Cᵢ)`:

1. **Commit** to the vectors `A = [Aᵢ]`, `B = [Bᵢ]`, `C = [Cᵢ]` with pairing-based
   inner-product commitments, using a structured reference string (SRS) of two
   random generator ladders.
2. **Randomize** each proof's contribution by a Fiat-Shamir scalar `r` so proofs
   cannot be mixed across positions (inter-proof malleability).
3. **Fold** the committed vectors down to a constant size with a logarithmic
   recursion (GIPA), producing `log₂ N` round messages.
4. **Open** the folded commitment keys at a Fiat-Shamir point with KZG.
5. The verifier replays the folding from the round messages, checks the KZG
   openings, and checks one final **pairing-product equation** (PPE) that stands
   in for all `N` Groth16 checks at once.

### Low level

- **GIPA** — the generalized inner-product argument: the `log₂ N`-round halving
  recursion. Each round emits a left/right half-commitment `(L, R)` and consumes a
  Fiat-Shamir fold challenge.
- **TIPA** — GIPA specialized to the pairing inner product, plus KZG openings of
  the two final folded commitment keys (`ck_a_final`, `ck_b_final`), tying the
  folding the verifier recomputed to the SRS.
- **Combined TIPP/MIPP** — one GIPA instance folds both the randomized AB pairing
  relation and the C multiexponentiation relation with shared per-round
  challenges, seeded by `x0 = Hash(r, hcom, Z_AB, Z_C)` and linked to KZG by a
  final bridge challenge.
- **Groth16 aggregation adapter** — derives `r`, drives the AB-path (TIPA) and the
  C-path (SSM), folds the public inputs, and assembles the final PPE.

The Fiat-Shamir challenge stages on the Penumbra Groth16 path are
`aggregate.randomizer`, `tipp-mipp.x0`, `tipp-mipp.gipa.round`,
`tipp-mipp.final-bridge`, and `tipp-mipp.kzg` — enumerated input-by-input in
[verification.md](verification.md#transcript--model).

## 2. What we forked

The local stack under
[`crates/crypto/proof-aggregation/src/ipp/ip_proofs`](../../crates/crypto/proof-aggregation/src/ipp/ip_proofs)
is vendored from the arkworks `ark-ip-proofs` lineage (the SnarkPack v1 lineage).
That lineage is **provenance and a comparison aid, not a production-security
baseline** — audit scope is the full local implementation, not a diff against
arkworks.

Algebraic soundness of SnarkPack/RIPP/Groth16 is a **standing assumption** taken
from the published paper and the audited Filecoin (Bellperson v0.21.0)
implementation. We do not re-prove it; we check that our code faithfully refines
it (see [verification.md](verification.md)).

## 3. Modifications we made (and why)

Each is an intentional divergence from the arkworks/Filecoin upstream, tracked
row-by-row in [adaptation-register.md](../../crates/crypto/proof-aggregation/formal/snarkpack/adaptation-register.md).

### BLS12-377 curve swap
Upstream targets BLS12-381; Penumbra runs on BLS12-377 to match the rest of the
proving stack. **Consequence:** no cross-curve byte equivalence to Filecoin is
possible or claimed; Filecoin is a *discipline* reference, not a byte oracle.

### Hand-rolled SHA-256 Fiat-Shamir
We replaced the upstream transcript with our own SHA-256 challenge construction
([`src/ipp/ip_proofs/src/challenge.rs`](../../crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/challenge.rs)).
Every challenge preimage is domain-separated, length-prefixed, stage-labeled, and
nonce-bound. **Why:** we own these bytes outright, so they carry the heaviest
verification weight; the construction follows the Filecoin v2 transcript
discipline (bind everything, fixed order, domain-separated) that fixed the
SnarkPack v1 / Frozen-Heart omission bugs.

### Statement binding
A canonical aggregate-statement encoding
([`src/statement.rs`](../../crates/crypto/proof-aggregation/src/statement.rs))
binds protocol version, curve id, backend id, SRS id, proof family/variant, VK
digest, real and padded counts, the canonical padding rule, and the ordered
padded public inputs into the Fiat-Shamir context. **Why:** a malicious proposer
must not be able to replace, reorder, omit, or mismatch any public statement
material and still produce an accepted aggregate. Distinct statements must not
share a transcript preimage (proved injective — see verification.md).

### Repeat-final padding
Inputs are padded to the next power of two by **repeating the final real proof**
and its public inputs ([`src/padding.rs`](../../crates/crypto/proof-aggregation/src/padding.rs)).
The verifier recomputes the padded inputs and checks both counts before
verifying. **Why:** GIPA needs a power-of-two length; the padding rule is part of
the statement, so changing it requires a new aggregate version.

### Wrapper framing + size cap
The aggregate proof ships in a versioned wrapper that stores only a recomputed
statement digest (no second digest field) with a hard byte cap
([`src/aggregate_proof_wrapper.rs`](../../crates/crypto/proof-aggregation/src/aggregate_proof_wrapper.rs)).
**Why:** cheap shape/size rejection before any expensive work, and a single
canonical digest source.

### Typed preflight gate
[`src/preflight.rs`](../../crates/crypto/proof-aggregation/src/preflight.rs)
recomputes SRS/VK facts and decodes the wrapper before SnarkPack verification.
**Why:** validate prerequisites before doing downstream cryptographic work; keep
adversarial rejection cheap.

### Family routing + app-bundle integration
Aggregates are accepted only through the proposal aggregation pipeline as
`AggregateBundle` transactions — never through generic action handling, and only
as the last, unique bundle in a proposal. **Why:** aggregation is a
consensus-pipeline operation, not a user-facing action.

### Deleted: legacy prover/verifier phase-domain API
Removed as a bug-class reduction. It *looked* like phase domain separation, but
the backend digest path never consumed it, creating a false sense of transcript
binding. Per the prototype contract policy we deleted it rather than keep a dead
shim; the next transcript builder must add real statement binding, not
reintroduce unused phase labels.

### Optimization byte-lock
Optimizations must preserve the Penumbra byte trace or explicitly version the
protocol — never silently change transcript bytes. The rule:

| Category | Touches bytes? | How to land |
|---|---|---|
| 1 — internal compute | No | Default; golden baselines pass unchanged |
| 2 — output/wire encoding | Wire bytes only | Version-bump path |
| 3 — transcript / Fiat-Shamir input | Transcript bytes | **Forbidden** — that's a protocol change |

The full search-to-land process and candidate backlog is the contributor
playbook in the crate:
[optimization-playbook.md](../../crates/crypto/proof-aggregation/optimization-playbook.md).

### Adopted: combined TIPP/MIPP proof shape
Penumbra now follows the SnarkPack paper/Bellperson v2 proof shape for the
aggregate AB/C argument: one proof object, one shared GIPA challenge stream,
paper-style `x0` seed, final bridge, and one KZG challenge. **Why:** this matches
the soundness theorem's combined argument instead of relying on a local split
TIPA/SSM obligation.
