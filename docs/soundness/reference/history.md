# History ledger — resolved incidents, closed scoping memos, point-in-time audits

The single place for backward-looking soundness records. Forward-looking state
lives in `docs/soundness/README.md` (summary), `full-verification-plan.md`
(plan), `assurance-case.md` (claim tree), and the assumption ledgers. When an
investigation, scoping memo, or one-off audit closes, its durable lesson moves
here (one entry) and the standalone doc is deleted.

Entry format: date · what happened · the reusable lesson · pointers.

---

## 2026-07-07 — Optimize-safely loop mechanized; assurance-case gaps closed
The §5 loop moved from prose to `scripts/fv-opt-loop.sh` (diff-phase flip
containment against an allowlist with generator-family dispatch; gates-phase
battery + measurement record). Red path verified with a tampered report.
Playbook gained the leeway map (§2b — filecoin-lineage removal is the top
hole-closing priority for SnarkPack leeway), the SnarkPack config-only
boundary (§3), and the results ledger (§5). Assurance-case evidence gaps
closed: R2.2 repeated-nullifier handler test, R3.2 `ZK-ASSUME-SPEND-AUTH-RDSA`
row. **Lesson (Picus):** run the leaf battery on an idle machine — a
concurrent Lean build starved 8 leaves (incl. a byte-identical one) into the
120 s watchdog.

## 2026-07-06 — Canon-chain 769MB/22GB blowup: root cause was one simp line
*(absorbs `canon-chain-cost-map.md`)*

The 7 `*CanonNChain` modules cost 769MB olean each and ~22GB RSS, blocking
iteration (~14h rebuilds) and the ics20 extension. An executor cost map
hypothesized chainK 253-level materialization; a frontier probe disproved that:
the entire cost was `simp [segXXFlag]` proving `flag 253 = 1` against a 254-arm
Nat-match — simp generates the match-splitter equations. The catch-all arm is
`_ => 1`, so `rfl` (kernel defeq) closes it. Fix: one line in
`gen_dtk_slice.py` `emit_canon_chain` (commit 5d939968d). Forest rebuild
proof: 40.5 min wall (was ~14h), 5.8GB peak (was ~22GB), oleans 0.07MB
(commit d49eb9995).

**Lessons:** measure before re-architecting — the plausible structural
hypothesis was wrong and one probe settled it. Generated proofs touching a
wide Nat-match def must use `exact`/`rfl` kernel defeq, never `simp`/`unfold`
(lint rule candidate). Historical per-module numbers: see commit 33f67af5d.

## 2026-07-05 — SnarkPack S5 statement-parity scoping: closed by conformance tests
*(absorbs `snarkpack-statement-parity-scoping.md`)*

S5 asked whether accepting an aggregate implies each per-circuit statement —
specifically whether the Lean-side and F*-side statement models are the same
statement. Scoping found the load-bearing facts are (a) every family VK has
arity 1 (single `ClaimedStatementHash` public input) and (b) artifact identity.
Both are now pinned by conformance tests (commits 497811113, de6f7198e,
2d932e40f: VK-arity/statement-parity test + VK-hash hardening). The residual
axis lives on as SL1 in the plan's SnarkPack layer table.

## 2026-06-18 — Assumption/axiom/conclusion review (point-in-time audit)
*(absorbs `assumption-axiom-review.md`)*

Tier-3 manual audit binding every mechanized conclusion to its exact theorem
name, kernel-axiom status, and model-vs-deployed gap. Headline results, all
still true and now tracked in the living ledgers rather than the memo:
`transfer_circuit_sound` and `consolidate2x1_circuit_sound` axiom-clean
(`{propext, Classical.choice, Quot.sound}`, stamped whole-circuit artifacts);
`dleq_fs_knowledge_soundness(_strong)` with the single declared axiom
`q_prime`; source-level enumeration found no other `axiom`/`sorry`/`admit`.
Cross-checks live in: assumption ledgers, `circuit-soundness-properties.md`,
and the stamped `#print axioms` artifacts. Method lesson: the audit is a grep +
stamp read — never rebuild the heavy proofs to audit them.

## 2026-06 → 2026-07 — fv-hardening-roadmap.md absorbed
The 2026-06 threat-review roadmap document was split: still-open items and the
canonical promotion rules moved to `full-verification-plan.md` §8; landed-item
status was already tracked in the ledgers. Reference failures that motivated
P0 ranking: Zcash June-2026 Orchard turnstile incident (supply accounting),
gnark backend CVE GHSA-q3hw-3gm4-w5cr (proving-stack trust).

## 2026-07-06 — T1-a optimization pilot: false premise caught by the loop
The optimization playbook's original T1-a ("specialize net-balance 2-in-2-out
to 2-in-1-out") was factually wrong — consolidate2x1 was already 2-in-1-out;
the playbook mis-read a wiring-naming note. The executor stopped before
touching Go, exactly as the optimize-safely loop intends (fail closed on
premise, not just on gates). T1-a was redefined to the confirmed inefficiency
(constant seed ladder `ScalarMulLE(…, 0, 128)` in the shared net-balance
helper) with a widened, inventoried containment rule. **Lesson:** every
optimization candidate starts with a read-only blast-radius inventory; verdict
tables (T1-b VOID, T1-c no-dead-output) live in the playbook.

## 2026-06-23 / 2026-06-29 — machine OOM reboots from concurrent lake builds
Two full OS crashes from parallel unbounded `lake` builds. Produced the
standing resource discipline in `tools/gnark/lean/AGENTS.md` (one lake, `LEAN_NUM_THREADS=1`,
narrowest target, bounded heartbeats, monitored background builds). Kept here
as the incident record; the rules live in `tools/gnark/lean/AGENTS.md` and plan §7.
