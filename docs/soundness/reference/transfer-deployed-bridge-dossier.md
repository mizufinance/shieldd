# Transfer Deployed-Bridge Classification Dossier

**Status: groundwork — pre-proving substrate map.** This dossier front-loads the
discovery a future Lean session would otherwise redo cold. For each of the 8
`functional-assumption` classes in `transfer-coverage-manifest.json` (16
instances total) it records the extracted deployed-row shape, which *proven*
consolidate2x1 pattern it maps onto, the Lean substrate to reuse, and any
structural surprise that must be resolved before proving. It changes no manifest
status and wires nothing into a build target.

Extracted contracts live under
`tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts/Transfer/SegN.lean`
(one file per instance segment, emitted by the existing
`crates/crypto/constraint-coverage/src/contracts.rs` machinery against
`tools/gnark/artifacts/transfer/{transfer-manifest.json,transfer.sr1cs}`). They
import `Transfer.Specs` (not yet authored) and are **not** on any lakefile — a
`lake build` would fail until the per-class specs + adapters exist. That is the
expected groundwork state.

## How the shapes were read

Each contract renders its rows as `relationRowN` / `relationPartN` predicates
over `rho : Nat → F`. Three structural signals drove classification:

- **Boolean rows** `x·(1−x)=0` count the bits of scalar/comparison
  decompositions (251 = one decaf scalar; 256 = one 256-bit comparison).
- **StructuredLC stride runs** `⟨coeff, start, stride, count⟩` mark the
  compact fixed/variable-base ladder accumulators (the O(1)-per-rung form; see
  the StructuredLC framework note). Their strides and counts identify the ladder.
- **Non-power-of-two big literals** distinguish base geometry: a *few* mark a
  fixed base point's affine coordinates; *many* mark a windowed/multi-base table;
  *none* marks a pure comparison. (The 2^k literals are bit-recomposition
  weights, common to every bit-decomposed value, and were excluded.)

## Summary table

| Class (assumption_id) | Instances (seg) | Rows | Bool rows | StructuredLC runs (strides) | Non-2^k literals | Matched proven pattern | Reuse substrate | Risk |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `decaf.ack` (…-ACK) | 2 (10, 72) | 3610 | 251 | 1920 (13,14) | 3 | rvk fixed-base + literal binding | `RvkAdapterSeg13/31`, keystone + inline-`decide` const binding | low–med |
| `decaf.shared_secret` A (…-SHARED-SECRET) | 1 (104) | 9034 | 753 | 6804 (5,8,13,14) | 2060 | DTK variable-base ladder + canonical-Fq-bits | `DtkAdapterSeg16/34/45`, `canonicalFqBitsGadget_of_components` kernel | **HIGH (canon-chain)** |
| `decaf.shared_secret` B (…-SHARED-SECRET) | 3 (105, 106, 107) | 9033 | 753 | 6800 (5,8,13,14) | 2060 | same as A (distinct wiring/shape hash) | same as A | **HIGH (canon-chain)** |
| `gadget.dleq` (…-DLEQ) | 4 (125–128) | 17834 | 4073 | **0** | 392 | ladder family but **UNCOMPRESSED** | — see stop-and-flag | **BLOCKED (see §dleq)** |
| `gadget.poseidon_encryption.address` (…-POSEIDON-ENCRYPTION) | 2 (110, 112) | 2859 | 1017 | 22 (13,14) | 170 | Poseidon perm. chain + embedded DTK mini-ladder | note-commitment/nullifier Poseidon substrate + DTK ladder kernel | med |
| `gadget.poseidon_encryption.amount` (…-POSEIDON-ENCRYPTION) | 2 (109, 111) | 1313 | 511 | 22 (13,14) | 165 | same (smaller keystream) | same | med |
| `gadget.poseidon_encryption.detection` (…-POSEIDON-ENCRYPTION) | 1 (108) | 2384 | 511 | 24 (5,13,14) | 170 | same (extra stride-5 run) | same | med |
| `threshold.flag` (…-THRESHOLD-FLAG) | 1 (94) | 895 | 256 | 0 | 0 | lt-ladder / lt-chain | `stateTrace_to_ltcRec` + Tier-3 `recover_lt_chain` normalizer | **low (best first target)** |

Per-instance fingerprints (relation / wire-role / constant-vector sha256, first
12 hex) are in `transfer-coverage-manifest.json`; the deployed bridge for each
instance must pin its own `relation_sha256_hex` (the two `ack` instances and the
four `dleq` instances have *distinct* relation hashes despite identical shape —
they sit at different wire offsets, so each needs its own seated theorem, exactly
as consolidate2x1's paired segments did).

## Per-class dossier

### 1. `decaf.ack` — segments 10, 72 → rvk fixed-base + literal binding

One 251-bit decaf scalar decomposition feeding a single stride-13/14 StructuredLC
accumulator, with only **3** non-2^k literals (the fixed base point's affine
coordinates and one derived constant) and a shared constant-vector hash across
both instances (`db99fca7933e`). This is the fixed-base scalar-mul shape.

- **Reuse:** the rvk deployed-bridge substrate (`RvkAdapterSeg13/31`): keystone
  `depLadderRaw → …K` + 251-constant literal binding via `show`+inline-`decide`
  (no `native_decide`), and the relation-bridge reconciliation sub-patterns
  (v2 / addX / selX / accumulator-rung / Bool-extract) that are already locked.
- **Confirm at proving time:** whether the base is the fixed spend-auth
  generator (→ rvk literal binding as-is) or a witness point (→ fall back to the
  DTK variable-base kernel). The scarcity of literals says fixed; the wire roles
  will settle it. The two ack instances are one shape at two offsets — prove the
  symbolic bridge once, seat twice.

### 2. `decaf.shared_secret` — segments 104 / 105–107 → DTK variable-base ladder + canonical-Fq-bits

The heaviest class. **753 = 3×251** boolean rows (three coordinate/scalar
decompositions), strides `{5,8,13,14}` (interleaved coordinate accumulators plus
canonical bit reconstruction), ~2060 non-2^k literals (windowed/multi-base
table), 113 relation parts, ~36k contract lines per instance. This is
Diffie-Hellman `sk · P` in-circuit — variable-base scalar mul with a full
canonical-Fq-bits reduction.

- **Reuse:** the DTK deployed-bridge (`DtkAdapterSeg16/34/45`) keystone
  `depLadderRaw → dtkLadderK` + step-cert substrates, and the
  `canonicalFqBitsGadget_of_components` kernel with the `ladder → chainK`
  fuel-recursive feeder. Type the canonical bit vectors at `CanonicalFqBits.F`
  (not `Seg.F`) or `compare`/`HSub` breaks.
- **RISK — canon-chain blowup:** the canonical-Fq-bits chains are the
  consolidate2x1 modules that peak **>34 GB** RSS and drove the cumulative
  olean growth (see the generator-blowup and heavy-build notes). A transfer
  shared-secret instance is at least as wide. **Do not attempt this class until
  the canon-chain re-architecture lands** (that design is explicitly out of
  executor scope). Emit the scalar side with StructuredLC 11-rung chunks; the
  canonical side is the blocker. Class B (105–107) is a second wiring of the
  same shape (distinct shape hash `6bb0efcd…` vs `4fc14e66…`) — one symbolic
  bridge, seated at four offsets total.

### 3. `gadget.dleq` — segments 125–128 → **STOP AND FLAG (uncompressed ladder)**

**Structural surprise, flagged per rule 4.** DLEQ (Chaum–Pedersen
discrete-log-equality) is the largest class (17834 rows, 223 parts, 4073 boolean
rows, quadratic `rho·rho = rho²` mult rows) yet the extractor produced **zero**
StructuredLC stride runs. Its scalar-mul accumulators did **not** form the
equal-coefficient arithmetic-progression wire runs that `structure_lc` compresses,
so the rows are rendered flat.

- **Why this is a blocker, not a substrate pick:** a flat per-rung ladder bakes
  the O(k²) extraction/elaboration floor that the StructuredLC reshape exists to
  remove. Proving these four instances as flat monolithic relations would
  reproduce exactly the blowup consolidate2x1's Tier-3 work eliminated.
- **Required before proving:** determine *why* dleq's ladder wiring escapes
  `structure_lc` — either (a) its accumulators use a genuinely non-AP wire layout
  (windowed/NAF) that needs a new compact representation, or (b) the extractor's
  `MIN_RUN` / stride detection needs extending to cover dleq's layout (sanctioned
  extractor work, parity-gated). This is discovery + possible extractor change,
  not pattern reuse. **Stopping this class here** rather than inventing a proof
  shape. Note DLEQ's *abstract* soundness is already carried by the Lean/VCVio
  DLEQ development; it is only the deployed in-circuit bridge that is open, and it
  is open on the compression question above.

### 4. `gadget.poseidon_encryption.{address,amount,detection}` — segments 108–112 → Poseidon chain + DTK mini-ladder

Hybrid shape: a small stride-13/14 StructuredLC ladder (counts 101/150 — the
ephemeral/shared key point) feeding flat Poseidon-permutation rows that expand
the keystream and add it to the plaintext lane. `address` (110/112) is the widest
(1017 bool rows), `amount` (109/111) the narrowest (511), `detection` (108) adds
one stride-5 run.

- **Reuse:** the Poseidon-permutation-chain substrate used by the consolidate2x1
  note-commitment / nullifier segments (`Specs.NoteCommitment` / `Specs.Nullifier`
  endpoints) for the permutation half, plus the DTK ladder kernel for the small
  key-point half. Two composable sub-bridges per instance; prove the shared
  Poseidon chain lemma once (rate matches the encryption width) and the mini-
  ladder once.
- **Confirm at proving time:** the exact Poseidon rate/width per sub-class and
  whether address/amount/detection share one permutation lemma at different
  input arities (likely — same domain family, different message length).

### 5. `threshold.flag` — segment 94 → lt-ladder (best first target)

Smallest and most tractable: 256 boolean rows (a 256-bit comparison
decomposition), **no** StructuredLC and **no** non-2^k literals, 895 rows. This
is `amount ≥ threshold → flag`, a less-than ladder.

- **Reuse:** the DTK LT-ladder substrate — `stateTrace_to_ltcRec` + the `_span_`
  substrate — and the Tier-3 `recover_lt_chain` + `verify_parity` normalizer that
  already seats consolidate2x1's R/Q4 lt-ladders. Per-rung `linear_combination`
  is cheap here; never materialize the wide OR-accumulator.
- **Recommendation:** prove this class first. It exercises the lt-ladder
  substrate end-to-end on transfer with the least risk and produces the first
  discharged `ZK-ASSUME-TRANSFER-DEPLOYED-*` row.

## Recommended proving order

1. `threshold.flag` (seg 94) — smallest, lt-ladder substrate, one instance.
2. `decaf.ack` (seg 10, 72) — fixed-base rvk substrate, one shape / two seats.
3. `gadget.poseidon_encryption.*` (seg 108–112) — Poseidon chain + mini-ladder.
4. `decaf.shared_secret` (seg 104–107) — **gated on canon-chain re-architecture.**
5. `gadget.dleq` (seg 125–128) — **gated on resolving the StructuredLC-compression
   question** (extractor discovery first).

Items 4 and 5 are the two blocked frontiers; 1–3 are pattern reuse that a Lean
session can start immediately from the seated contracts and the substrates named
above.
