# FV Playbook — read this before doing formal-verification work

The low-level, hard-won operational knowledge needed to *do* FV work here without
rediscovering it. Read [../README.md](../README.md) first for what's verified and
the reading order. State-of-the-art lessons live **here** — keep them here.

## Tooling: where everything is (and how to find it)

Most FV tools are installed **off the default PATH** behind env vars. A naive
`command -v picus` says "missing" when the tool is present. The login shell
(`~/.zprofile`) now puts them on PATH and sets the env vars the scripts read.

| Tool | Role | Location | Env var / pin |
| --- | --- | --- | --- |
| Lean 4 + Mathlib + proven-zk | whole-circuit semantic soundness | `~/.elan/bin` (via elan) | toolchain pin in each `lakefile`/`lean-toolchain`; gnark circuits use v4.15.0, compliance DLEQ uses v4.30.0 |
| Picus | R1CS under-constraint / determinacy | `~/.local/opt/picus/run-picus` | `PICUS_BIN` |
| cvc5 (finite-field build) | Picus solver backend | `~/.local/opt/picus/solvers/cvc5` | `PICUS_SOLVER=cvc5` |
| z3 | aux solver | `/opt/homebrew/bin/z3` | — |
| Tamarin + maude | symbolic protocol model | `~/.local/opt/{tamarin,maude}` (relocated arm64_tahoe brew bottles) | `TAMARIN_BIN` / `MAUDE_BIN`; pin tamarin 1.12.0 / maude 3.5.1 in `compliance/formal/toolchain.toml` |
| Alloy 6.2.0 | bounded state-machine search | `~/.local/opt/alloy/alloy6` (no-sudo JDK at `~/.local/opt/jdk`) | `ALLOY_BIN`; pin in `toolchain.toml` |

The DLEQ Fiat-Shamir knowledge-soundness proof is mechanized in **Lean/VCVio**
(`crates/core/component/compliance/formal/lean-dleq`), one declared axiom
`q_prime`.

Rules:
- **Before claiming a tool is missing**, check `~/.local/opt`, `~/.opam`,
  `~/.elan`, and the `*_BIN` env vars — not just PATH. The scripts read
  `PICUS_BIN`, `PICUS_SOLVER`, `TAMARIN_BIN`, `ALLOY_BIN`, `MAUDE_BIN`.
- **If a tool is genuinely absent and the task needs it, install it.** Don't
  silently drop the check — an authored-but-unrun symbolic model is *not*
  coverage. Install recipes are recorded in memory (`fv-tools-install-state`).
- **Alloy** is installed (no-sudo Temurin JDK + jar wrapper); `compliance-alloy.sh`
  passes all four models. **Tamarin + maude** are installed via relocated
  `arm64_tahoe` brew bottles (the from-source build dies on an autoconf 2.73 bug,
  *not* a CLT problem — brew's "newer CLT" message is boilerplate; the prebuilt
  tahoe binaries run on Sequoia once their dylib paths are rewritten with
  `install_name_tool` and ad-hoc re-signed). `compliance-symbolic.sh` passes (both
  `.spthy` models verify). No sudo, no Nix.

## Lean whole-circuit proofs — the cost model that dictates structure

Elaboration cost is **quadratic in extracted-chain length**: each
`obtain`/destructuring step re-substitutes the entire remaining term. Therefore:

- **Never** prove the semantics of an extracted constraint chain in one monolithic
  tactic walk.
- **Hard limit ≤60 gates** per definition/lemma/tactic block. Slice longer
  circuits into segment predicates ending in an opaque continuation
  (`k : Prop` or `k : Vector F n → Prop`); prove each segment separately; compose.
- **Repeated rungs** (ladders, lt-chains) get a **fuel-recursive definition + one
  induction lemma** — never an unrolled walk. Generalize the base point as a
  parameter when the same ladder serves multiple gadgets (e.g. ACK reused the
  scalar-mul ladder with an arbitrary base).
- If a single Lean compile exceeds **~10 minutes, kill it and restructure** — do
  not wait it out.

### Application-memory / OOM (learned the hard way)

`lake build` replays the **entire ~5,900-module graph (Mathlib included) into
memory**. The IDE Lean server already holds that graph. Running multiple builds,
or backgrounding a whole-graph build "to keep working," **doubles resident memory
and OOMs the machine.**

- **One Lean build at a time, foreground.** Never run parallel `lake build`s.
- **Build the single target**, not the world: `lake build ShielddGnarkFormal.Transfer`,
  not `lake build`.
- **Close the IDE Lean server** (or use the CLI exclusively) during heavy CLI
  builds, so you don't hold two Mathlib copies.
- Cap runaway elaboration with `maxHeartbeats` and the 10-minute kill rule.
- Lightweight gates (stamps, `go test`, invariant scripts) are safe to background.
  **Only the `full` clean-room `lake build` tier is memory-dangerous** — skip it
  unless you specifically need a from-scratch rebuild, and never background it.

## Picus (under-constraint) — decomposition over monoliths

- The finite-field cvc5 solver **times out on whole circuits**; monolithic
  ladders/composites don't scale.
- Every gadget reaches a `safe` verdict via **leaf probes + composition**: probe
  each leaf gadget and each two-step seam, then record composites as
  `safe-by-composition` with a Lean citation for the composition argument.
- The FF cvc5 build (`--cocoa`) was the root cause fix for previously-undischarged
  gadgets — the stock cvc5 lacks the FF solver. Recipe is in memory
  (`cvc5-ff-build-recipe`).

## Stamping / artifact workflow

Whole-circuit artifacts (`*-whole-circuit-lean-artifact.txt`) stamp the SHA-256 of
**every source file the proof depends on** plus a self-referential
`lean_check_script_sha256`. When you change a stamped source:

1. Recompute hashes for changed files; add stamp lines for any new files (and the
   matching `require_artifact_line` in `check-lean-circuit-fv.sh`).
2. Re-stamp `lean_check_script_sha256` **last** (editing the script changes its
   own hash).
3. Regenerate the `.sha256` sidecar from the final artifact content.
4. Update the `*-decaf-fv-inventory.txt` if gadget coverage changed, and re-stamp
   its hash in the artifact.
5. Gate with `bash scripts/check-lean-circuit-fv.sh stamps --circuit <c>` (cheap)
   and `bash scripts/check-soundness-invariants.sh`. The `full` tier is the
   memory-heavy clean-room build — state explicitly whether it actually ran.

The wiring transcript byte-compare guards extraction fidelity but **does not**
catch DefineModel/spec abstraction gaps — those are caught only by a manual
faithfulness audit of the Lean model vs the Go circuit (how the three transfer
model-fidelity gaps were found).

## Trust boundary (what we do *not* prove)

1. R1CS well-formed / no under-constraint — ✅ Picus.
2. Extracted R1CS computes the spec — ✅ Lean `*_circuit_sound`.
3. gnark **frontend** compiles Go to the R1CS we think — ⚠️ partially for
   `consolidate2x1` and `transfer`: the Lean wiring transcript and independent
   Rust `.sr1cs` partition/hash/VK gate pin the shipped bytes, but gadget-segment
   identity is still trusted.
4. gnark **backend** (Groth16/Plonk, KZG, pairing, prover FS) — ❌ named crypto
   trust assumption. The halo2/Zcash bug lived in layer 3-ish; that is the layer
   the partition gate narrows and deploy-segment proof work must close.

## Two SHA derivations — keep them separate in any review

- **Capability/compliance scalar** (`crypto.rs::derive_compliance_scalar`,
  `upload_package.rs::derive_capability_scalar`): `Fr::from_le_bytes_mod_order(
  SHA512(DOMAIN || material))` — **host-side, not in circuit, zero constraints.**
  SHA-512 is required for **Orbis byte-parity** (PRE re-encryption math must
  cancel); the wide 512-bit reduction also gives negligible mod-`Fr` bias (~2^-260
  vs ~2^-4 for SHA-256). **Reduction**, not truncation.
- **DLEQ Fiat-Shamir challenge**: **250-bit truncation** (≈2^-249.9 soundness),
  uniform regardless of source width. **Truncation**, not reduction. Do not
  "fix" it to reduce-mod-`Fr`.
