# ZK Circuit Verification Strategy — Decision

Converged decision (Claude + Codex review, 2026-06-07) on how to shape the
circuit soundness effort: keep the compiled-`R1CS ⟹ spec` ACL2/Axe path as the
release-grade spine, but narrow the proof surface and unblock the comparator
keystone via the cheapest non-invasive lever first.

2026-06-08 outcome: the STP/full-field comparator route below is superseded.
`gadget-imt-gap` now ships the 5568-constraint `AssetRegistryGap` export, with a
stamped ACL2/Axe gadget proof in
[`circuit-gadget-proofs.md`](../../crates/core/component/shielded-pool/formal/circuit-gadget-proofs.md).
The whole-circuit property rows remain gated on whole-circuit artifacts.

## Context

- The bottleneck is `FieldLessThan`: two full-field comparators embedded in the
  6,074-constraint `gadget-imt-gap` ([indexed_tree.go:305](../../tools/gnark/internal/compliance/indexed_tree.go#L305)).
- The comparator is blocked on gnark's optimized reducedness encoding plus a
  missing STP binary, **not** on a known counterexample
  ([circuit-gadget-proofs.md](../../crates/core/component/shielded-pool/formal/circuit-gadget-proofs.md)).
- The verification effort has already paid for itself: it found the High-severity
  `ZK-FIND-GO-UNREGULATED-NONMEMBERSHIP` bug (vacuous unregulated branch). That
  and all other findings came from differential / metamorphic / review work, not
  from the ACL2 theorems — which matches public zk practice (≈96% of bugs are
  under-constraint; Picus/fuzzing/audits dominate). The ACL2 proofs' value is
  permanent regression prevention on the spine, not discovery.
- The 248-bit asset-ID bound would delete the reducedness obligation entirely,
  but asset IDs are canonical `Fq` identifiers with a state-breaking `Display`
  ([id.rs:98](../../crates/core/asset/src/asset/id.rs#L98)). It is an RFC, not a
  circuit cleanup.

## Action list

1. **Keep the proof standard unchanged**
   - `proved` property rows require stamped whole-circuit artifacts.
   - Picus, differential tests, and gadget proofs remain *evidence* unless
     composed into the full property theorem.

2. **Install and gate STP**
   - Add STP to the local/prover CI environment.
   - Wire `STP_BIN` / `ACL2_STP`.
   - Add a preflight check in `scripts/circuit-gadget-proof-check.sh`.
   - Exit gate: ACL2 can invoke Axe `:stp` reliably in the prover job.

3. **Retry current `FieldLessThan` reducedness with `:stp`**
   - No circuit changes.
   - Target only the two gnark reducedness slices already identified.
   - Exit gate: both `packbv <= p-1` obligations close over the current
     252-constraint slices.

4. **If STP succeeds, finish the existing M3/M5 path**
   - Compose reducedness + pack + ladder into the public theorem:
     `OUT = (if (< A B) 1 0)`.
   - Stamp and promote `gadget-field-less-than`.
   - Substitute comparator theorem into `gadget-imt-gap`.
   - Compose Merkle path + `imt-gap` for `REGULATED-STATUS-SOUNDNESS`.

5. **If STP stalls, prototype proof-friendly `AssetRegistryGap`**
   - Fuse exact-match, two comparisons, gap multiplication, and select into one
     proof target.
   - Emit Kestrel-shaped range-check constraints directly, even if it costs extra
     constraints.
   - Goal is not avoiding reducedness; goal is avoiding the gnark-vs-Kestrel
     encoding-equivalence proof (gnark's 252-constraint slice vs Kestrel's
     339-constraint constructor).
   - Exit gate: `make-range-check-constraints-correct` instantiates directly.

6. **Measure the custom-gadget tradeoff**
   - Constraint delta versus current `gadget-imt-gap`.
   - Proof artifacts required versus current `FieldLessThan` route.
   - Gnark/Rust parity tests.
   - Picus result.
   - Decision gate: adopt only if it materially reduces proof work.

7. **Generate composition manifests**
   - Export block boundaries, primitive calls, wire bindings, domains, and
     constraint ranges.
   - Use the manifest to drive append-composition proofs.
   - This removes hand-maintained block maps from the long-term proof path.

8. **Expand cheap bug-finding**
   - Add more Rust↔Go differential tests.
   - Add metamorphic tests around regulated/unregulated branch routing.
   - Add public-input mutation tests.
   - Keep Picus/under-constraint checks on every decomposed gadget.

9. **Keep Lean as corroboration for now**
   - Use gnark→Lean extraction where it works.
   - Do not make Lean a release gate until Poseidon and comparator extraction are
     stable.
   - Treat Lean/R1CS disagreement as a finding.

10. **Defer 248-bit asset IDs to an RFC**
    - Analyze state break, existing asset compatibility, commitments, value
      generators, IMT ordering, proto/bech32, wallets, indexers, and security
      margin.
    - Do not use it as a proof unblock unless the STP and custom-gadget paths
      both fail badly.

## Status update (2026-06-07) — STP installed, but the `:stp` route is closed in this toolchain

Steps 2–3 were executed. Result: **STP cannot discharge the reducedness bound via
`verify-r1cs` in the current ACL2 bottle**, for two independent reasons.

- **STP binary: installed and working.** `brew install stp` (2.3.3); Kestrel's
  `kestrel/axe/teststp.bash` reports `Valid.`, so the solver and Axe's shell
  wiring are correct. Real env vars are `STP` (binary) and `ACL2_STP_VARIETY=2`
  (STP 2.3.x option syntax) — not the `STP_BIN`/`ACL2_STP` names this doc
  originally guessed.
- **Blocker 1 — the R1CS prover has no STP tactic.** `verify-r1cs` →
  `prove-implication-with-r1cs-prover` (via `make-prover-simple`) accepts only
  `:rewrite/:rewrite-top/:subst/:elim/:seq/:rep`. Header: *"these provers do not
  use STP"*, *"TODO: Add a :stp tactic"* (`make-prover-simple.lisp:19,33`). So
  `:tactic '(:rewrite :stp)` fails a guard check before any solving.
- **Blocker 2 — the STP-capable prover does not load.** `:stp` exists only in the
  general `prove-with-tactics` (`tactic-prover.lisp`), which is **uncertified** in
  the homebrew bottle (serial `acl2`: "no certificate on file"; under `acl2p` its
  `coi/records` dep raises a raw-lisp "Package LIST does not exist"). Different
  harness, and unavailable without a books-complete ACL2 build.

**Consequence for the plan.** Step 3's literal form ("retry `verify-r1cs` with
`:stp`") is dead, so Step 4 ("if STP succeeds") cannot trigger as written. The
live options are now:

- **3′ — books-complete ACL2 image (toolchain investment).** Build/obtain an ACL2
  where `kestrel/axe/tactic-prover` + `coi/records` certify, then drive STP via
  `prove-with-tactics` on a hand-assembled `constraints ⇒ (packbv ≤ p−1)`
  implication (NOT `verify-r1cs`). Unblocks the existing M3/M5 route if it lands.
- **5 — proof-friendly `AssetRegistryGap` (no STP).** Now the front-runner:
  emitting Kestrel-shaped range-check constraints lets
  `make-range-check-constraints-correct` instantiate directly, closing
  reducedness with the rewriter alone — no STP, no encoding-equivalence proof.

The STP preflight added to `scripts/circuit-gadget-proof-check.sh` is therefore
**advisory and non-gating**: it reports solver readiness for route 3′ but no
checked-in proof depends on STP.

Recommended next move: pursue **Step 5** (custom gadget) as primary, and treat
route 3′ (books-complete image) as a parallel toolchain task only if the custom
gadget hits a wall.

## Sequencing

Step 2 (install STP) is an environment fix worth doing first, before any further
proof-script or circuit work — the comparator has been blocked on a missing
binary. Steps 5–6 run only if Step 3 stalls. Step 10 is last resort. Steps 1, 7,
8, 9 are standing policy throughout.
