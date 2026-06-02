# Plan: Boundary Formal-Verification Expansion (Codex)

Detailed execution plan for extending the existing hax → F* boundary proofs to
non-Fiat-Shamir properties Penumbra owns. This reuses the Layer 1 machinery
already in place; it does not attempt cryptographic soundness (that stays
assumed).

## Objective

Mechanically prove a set of Tier-1 implementation-boundary properties outside the
Fiat-Shamir transcript — SRS-id binding, VK-digest binding, preflight ordering,
wrapper size-cap completeness, and family routing — each as an F* lemma over the
executed Rust, recorded in the evidence ledger.

## Background: what already exists

The Layer 1 pipeline extracts executed Rust via hax 0.3.7 into F* and proves
implementation-boundary properties. Current artifacts under
`crates/crypto/proof-aggregation/formal/snarkpack/fstar/`:

- `StatementEncodingProofs.fst` — statement-encoding injectivity, digest reduction
- `ChallengePreimageProofs.fst` — challenge-preimage layout + injectivity
- `ValidationProofs.fst` — count / row-arity / padding validation iff lemmas
- `WrapperProofs.fst` — wrapper decode oversize-reject + round-trip range
- `FrameLemmas.fst` — shared framing/append lemmas

Supporting controls (must be respected by every new target):

- `hax-targets.txt` — the extraction target list
- `hax-extraction-boundary.md` — boundary rows; any `cfg(hax)` traversal twin must
  be recorded and parity-tested (see the `statement.rs` precedent)
- `formal-handoff.md` — the typed evidence ledger (`proved/refined/composed/
  assumed/open`) and the SHA-256 proof-artifact stamp
- gates: `just snarkpack-formal`, `just snarkpack-invariants`
- `toolchain.toml` — pinned hax / F* / Z3 versions

The `statement.rs` encoder is the reference pattern for a clean extraction target:
runtime `for`-loop under `cfg(not(hax))`, structural-recursion twin under
`cfg(hax)`, byte/error-equivalent, parity-tested with `RUSTFLAGS=--cfg hax`.

## Why it matters

These properties are currently only tested or assumed. The DoS-asymmetry ordering
(cheap checks before expensive work) is only *benchmarked* (Layer 10); SRS-id and
VK-digest binding rely on mutation tests; family routing relies on app tests. Each
is a binding/soundness-adjacent property we own and can prove with the same effort
profile as the existing statement proofs.

## Explicitly out of scope

- Cryptographic soundness of GIPA/TIPA/KZG/PPE in the ROM — this is the standing
  assumption (Tier 3); do not attempt.
- arkworks field/group/pairing/MSM internals — we can only prove our *use* of
  them, never their internals.
- Tier-2 equation-role identities (folded-input linear combinations, shifted-ck₁) —
  out of scope for this plan; behavioral parity tests already cover them.

## Tasks

Each target follows the same six-step shape. Land one target per commit; all gates
green before the next.

### Common per-target procedure

1. Identify the exact `src/*.rs` function(s) producing the bytes/decision.
2. If extraction needs a loop, add a `cfg(hax)` structural-recursion twin matching
   the `statement.rs` precedent; record it in `hax-extraction-boundary.md` and add
   `RUSTFLAGS=--cfg hax` parity coverage.
3. Add the symbol(s) to `hax-targets.txt`.
4. Write the F* lemma in a new or existing `*.fst` file under `fstar/`.
5. Add a typed row to `formal-handoff.md` and refresh the proof-artifact stamp.
6. Run the full gate set (see Verification); commit atomically.

### Target A — SRS-id determinism and injectivity

- Site: `src/srs.rs` (`srs_id` computation over backend, curve, max count,
  serialized SRS).
- Prove: distinct canonical SRS inputs ⇒ distinct `srs_id` (reduces to SHA-256
  collision, same shape as statement digest reduction); `srs_id` is a deterministic
  function of its declared inputs only.
- Evidence row class: `proved`. Adaptation rows `srs.identity`, `srs.dev-shape`.

### Target B — VK-digest binding

- Site: VK digest over `PreparedVerifyingKey` compressed serialization.
- Prove: distinct VK material ⇒ distinct digest (collision reduction); the digest
  depends only on the serialized VK.
- Evidence row class: `proved`. Adaptation row `serialization.vk-digest`.

### Target C — Preflight ordering (DoS-asymmetry as a typed property)

- Site: `src/preflight.rs` and the typed `Verified*` capability wrappers.
- Prove: no expensive operation (deserialize / pairing) is reachable before the
  cheap shape checks (size cap, statement-digest match, family match) — i.e. the
  capability type for "backend work allowed" can only be constructed after those
  checks. This is a typestate/control-flow lemma, not an arithmetic one.
- Evidence row class: `proved` or `composed`. Cross-reference Layer 10 (the gate
  becomes a proof, not only a benchmark). Adaptation rows `backend.preflight`,
  `backend.digest-dispatch`.

### Target D — Wrapper size-cap completeness

- Site: `src/aggregate_proof_wrapper.rs` (extends existing `WrapperProofs.fst`).
- Prove: the full cap path — every input over `MAX_AGGREGATE_PROOF_BYTES` rejects
  before any parse or inner-range exposure, for all wrapper shapes (the current
  proof covers the decode-oversize case; close the remaining shapes).
- Evidence row class: `proved`. Adaptation rows `serialization.aggregate-proof`,
  `statement.wrapper`.

### Target E — Family routing totality and injectivity

- Site: family → VK dispatch (`ProofFamilyId`, backend digest dispatch).
- Prove: the family-to-key map is total over the defined families and injective
  (one family cannot resolve to another's VK / transcript domain).
- Evidence row class: `proved` or `composed`. Adaptation rows `family.identifiers`,
  `hash.family-transcript`, `backend.digest-dispatch`.

### Task F — Ledger and plan reconciliation

1. Update `formal-handoff.md` counts and `verification-plan.md` Part A Layer 1 /
   Source 4 to list the new proved rows.
2. Confirm `just snarkpack-invariants` still passes (no unrecorded admits/assumes,
   stamp matches).

## Deliverables

- New/extended `*.fst` lemmas for Targets A–E under `fstar/`.
- `hax-targets.txt`, `hax-extraction-boundary.md` updated per target.
- `formal-handoff.md` ledger rows + refreshed proof-artifact stamp.
- `verification-plan.md` Source 4 updated to reflect the newly proved properties.
- Any `cfg(hax)` twin parity-tested under `RUSTFLAGS=--cfg hax`.

## Acceptance criteria

- Each target is a genuine F* lemma over extracted executed Rust — no `assume`,
  `admit`, or `--admit_smt_queries`; the only standing axiom remains SHA-256
  collision resistance.
- `just snarkpack-formal` and `just snarkpack-invariants` pass; the stamp matches.
- Every new `cfg(hax)` traversal twin is byte/error-equivalent to its runtime path
  and has explicit parity coverage.
- The evidence ledger counts in `formal-handoff.md` and `verification-plan.md`
  agree.
- One target per commit, each independently green.

## Constraints

- Per `CLAUDE.md`: extraction stays over executed Rust; no duplicate formal-only
  encoders beyond recorded, parity-tested `cfg(hax)` twins. No protocol/byte
  change — these proofs are about existing behavior.
- Do not weaken any validation to make extraction succeed. If a property cannot be
  proved without changing semantics, stop and report rather than adapt the code to
  the prover.
- A category-1 *byte* result is necessary but not sufficient for any change that
  touches a validation/soundness check — but this plan proves existing behavior, so
  no such change should arise; flag it if one does.
