# Opus 5.5: 19-docs-guidance-evidence

Artifact: `57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`. Read-only, bounded sector review.

# Sector 19: docs, agent guidance and evidence review, `57eb44e8..c4b8b6d2`

**Verdict: PARTIAL.** I found no blocking defects. The current docs I checked match the code, and the test cleanup looks careful. Several changed current docs were only spot-checked, and the large historical reports were only checked for how they are indexed and sourced.

## Scope and coverage

This was a read-only review of the committed artifact. The uncommitted working-tree edits under `docs/reviews/` are outside it.

**Read the diff and checked it against code or the justfile:**
- **The four skills in `.agents/skills/` (investigate, plan, review, test):** They agree with each other and with AGENTS.md. None adds a new approval step or automatic delegation.
- **`docs/development.md`:** Every `just` recipe it names exists in `justfile:14-107`. The package list it gives for `pari-proof-tests` matches `justfile:48`, and the `SHIELDD_PARI_KEYS` default matches `justfile:6`.
- **`docs/README.md`:** Every code and doc link resolves, including `crates/bench`.
- **`docs/testing.md`:** All five example-test links resolve.
- **`docs/compliance/enforcement-and-seizure.md`:** Capsule release uses the asset payload key, which matches `host.rs:797` (`policy.ring.audit_keys.payload`). The registration and seizure verification keys are separate `AssetPolicy` fields (`structs.rs:614-615`).
- **`docs/compliance/reference.md:92-101`:** "Both audit keys with their epoch" matches `AuditKeys { epoch, payload, checking }` (`crypto/primitives/src/audit.rs:17-21`).
- **`docs/disclosure.md:135`:** It says there is one payload key for amount, sender and receiver, plus a separate checking key. That matches `audit_field.rs:12` and your stated intent.
- **`docs/proof-system.md`:** Nine relations matches `proof.rs:33` (`ALL: [Self; 9]`). Application version 19 matches `app_version.rs:3`, and history format version 3 matches `nullifier_generation.rs:8`.
- **`docs/jubjub-external-contract.md:105-109`:** "The locked Decaf377 image is rejected before startup" is true in code. `scripts/lib/common.sh:241-249` does the check, `scripts/orbis-stack.sh:18` calls it, and `scripts/tests/test_orbis_runtime.py` tests it.
- **Deleted files (`CLAUDE.md`, `docs/snarkpack/*`):** No current doc, skill or README still refers to them. The only mentions are in the historical reports.

**Checked how the evidence is indexed and sourced:**
- **`docs/reviews/README.md` (as committed):** All successor and evidence links resolve, including `agent-test-quality/results.json`, `full-test-suite-cleanup/{audit,fault-results}.json` and the constant-outline successor.
- **`full-test-suite-cleanup.md`:** Read in full. Its identity file (`verification-identity.json`) records the baseline head, manifest hashes, `ci` profile and thread limits. The one runtime API it removed, `Storage::release_volume_reservation`, has no remaining callers outside the reports.
- **`constant-outline-validation.md`:** "Four-patch queue" matches the four patches in `third_party/commonware-patches/series/` (0001, 0002, 0004, 0005).
- **`documentation-agent-setup-implementation.md`:** Read lines 1–40.

**Only spot-checked with targeted searches, not read diff by diff:** `README.md`, `docs/architecture.md`, `benchmarks.md`, `compliance/flow.md`, `compliance/constraint-checklist.md`, `embedded-artifacts.md`, `nullifier-history.md`, `protocol.md`, `state.md`, `transfer-circuit/constraint-checklist.md`, `wallet.md`.

**Only the review index was checked, not the contents:** the large historical reports (023, 024–032, 033 beyond its header, 034–046) and the archived logs and scripts. As instructed, I did not read the logs wholesale.

## Findings

### Low: repository policy and skills are not wired for Claude Code sessions (design note, not a regression to undo)
- **Where:** `CLAUDE.md` is deleted (patch 005). The skills live only in `.agents/skills/`. The only remaining routing is two local `.claude/commands/*` shortcuts, which are gitignored.
- **Trigger:** A fresh checkout opened in Claude Code. It loads `CLAUDE.md` and `.claude/skills/`, and neither exists.
- **Consequence:** AGENTS.md and the four skills are not loaded automatically. The resource limits (one heavy job at a time) and the review workflow then depend on the agent finding them by chance.
- **Why it's from this branch:** The branch removed the `CLAUDE.md` import. `documentation-agent-setup-implementation.md:16-18` itself says the local shortcuts "are not part of a fresh checkout".
- **Caveat:** You chose to remove `CLAUDE.md`, so I'm not asking to reverse that. The question is only whether Claude Code is a harness you intend to support. `development.md` asks for "fresh-session discovery and behavior when available" for skill changes, and the reports don't record that for Claude Code.
- **Status:** A static observation, not tested.
- **Smallest fix, if Claude Code is supported:** a tracked `.claude/skills` symlink to `.agents/skills`, or record that only Codex-style harnesses are supported.

### Low, cross-sector (scripts): Orbis CI cleanup can't run with the locked image
- **Where:** `scripts/orbis-ci-cleanup.sh:13` calls `ensure_orbis_images`, which now fails on the locked Decaf377 image (`common.sh:241-243`).
- **Consequence:** The cleanup script exits before tearing anything down. That matters wherever containers already exist, such as CI runners that started stacks before this migration.
- **Status:** An untested hypothesis. Please have the cleanup path run against the current lock to confirm. The docs themselves are accurate here.

No other contradictions between the docs and the code turned up in the areas checked.

## Unnecessary complexity and test cleanup

- **Test-cleanup decisions look sound.**
  - The report lists where each removed case's coverage now lives.
  - It keeps similar-looking fixtures that test different failure points.
  - It includes three injected faults, each with a control that passes and a rewritten test that fails on the specific assertion.
  - It explains the two assertion corrections: a fixed-key fixture, and the 30-minute drift limit.
  - It states which checks it did not run (the signing-vector writer). It also says plainly that the gate ran under the `ci` profile, not `--release`.
- **Remaining provenance gap:** The verified tree is identified as "`1dc62a7` plus the dirty tree" with manifest hashes. That evidence does not by itself cover the later commit `c4b8b6d`. Anyone relying on it for the final head needs a check that the tree did not change afterwards.
- **Terminology nit:** `docs/disclosure.md:8` uses "Payload keys" for per-note disclosure keys, while line 135 uses "payload key" for the asset's Orbis audit key. A different name for one of them would avoid confusion.
- **Historical staleness, expected:** `documentation-agent-setup-implementation.md:12` says "Three … skills". The fourth, `shieldd-test`, came from the later test cleanup. Since this is a dated report, no fix is needed.

## Followups for the coordinator
1. Run `just docs-check` on the head, to confirm link and casing checks rather than rely on my static resolution.
2. Run a fresh Claude Code session in a clean checkout and see whether AGENTS.md and the skills are found.
3. Run `scripts/orbis-ci-cleanup.sh` against the current `images.lock.json`.
4. Cross-check the 244-byte envelope, the batch fallback limit of 32 and the historical tail of ten generations (`proof-system.md:54-66`). These belong to the proof and verifier sectors.

## Not reviewed
- The contents of the historical reports and plans (patches 023, 025–032, 034–046). I did not verify their numbers against the logs.
- Line-by-line diffs of the spot-checked docs listed above.
- The CI workflow files. I did not check the claim that PR CI runs `pari-proof-tests`.
