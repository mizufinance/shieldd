# Plan: Filecoin Divergence Review (Codex)

Detailed execution plan for systematically establishing what Filecoin changed
relative to the code lineage we forked, and classifying each change against the
Penumbra implementation. Output is a divergence findings document plus adaptation
register rows — no protocol or code change unless a finding mandates a fix.

## Objective

Determine, with source evidence, every security-relevant change Filecoin made on
its branch of the SnarkPack lineage, and for each one record whether Penumbra
mirrors it, is exempt (curve / replaced-FS), or is missing a fix it needs.

## Background: the lineage is a fork, not a chain

`crates/crypto/proof-aggregation/src/ipp/PROVENANCE.md` records that our RIPP is a
fork of `arkworks-rs/ripp` at Penumbra baseline `523837547`, **upstream commit
unknown**. Filecoin's Bellperson aggregate module is a *separate* port of the same
`arkworks-rs/ripp` research code to the `blstrs`/BLS12-381 stack. So:

```
arkworks-rs/ripp  (research impl — the COMMON ANCESTOR)
      ├──►  bellperson aggregate (BLS12-381) ──► v1 ──► v2 (Frozen-Heart-class FS fix)
      └──►  Penumbra src/ipp (BLS12-377, Fiat-Shamir replaced)
```

Two independent descendants. This produces **two diffs that matter**:

- **Diff A — `arkworks-rs/ripp` → bellperson (port-time + v1).** Fixes Filecoin
  made while productionizing the research code that never flowed back to
  `arkworks-rs/ripp` (effectively unmaintained). We forked the *unfixed* ancestor,
  so we can be missing these independently of the Fiat-Shamir bug.
- **Diff B — bellperson v1 → v2.** The audited Fiat-Shamir / transcript hardening.
  We addressed the FS *class* by replacing the transcript; this confirms whether we
  matched every binding the fix added, not just the headline omission.

A pre-existing blocker: "upstream commit: unknown" must be resolved before Diff A
can be produced cleanly.

## Why it matters

The current repo scopes Filecoin narrowly — `ripp-spec.md` and
`adaptation-register.md` reference Filecoin v2 only as the "Fiat-Shamir
omission/reordering bug class and transcript discipline" source. No artifact
enumerates Filecoin's other changes. `fs.filecoin-bug-class` in the adaptation
register is still `open`. This plan closes that gap with evidence.

## Pinned sources (already used by `scripts/check-snarkpack-filecoin-shape.sh`)

- bellperson **v2**: tag `v0.21.0`, commit `62c362fd46ca2139747b8770bae53ce6f1e42bb1`
- rust-fil-proofs: tag `filecoin-proofs-v11.1.0`, commit `004d7b4244c469e0d9aeebf15f9a81ef60308ba3`
- bellperson **v1**: *to be pinned by Task 1* (a pre-transcript-fix tag/commit)
- `arkworks-rs/ripp`: fork point *to be resolved by Task 2*

## Scope

In scope: `src/groth16/aggregate/{transcript,prove,verify,mod}.rs` in bellperson;
the analogous `arkworks-rs/ripp` modules; the Penumbra `src/ipp` and
`src/{statement,backend,preflight,srs,aggregate_proof_wrapper}.rs` counterparts.

Out of scope: byte-level equivalence (impossible cross-curve — BLS12-381 vs
BLS12-377); reimplementing or importing any Filecoin code; performance.

## Tasks

### Task 1 — Pin the v1 reference and the v2 fix boundary (Diff B, authoritative)

1. Identify the bellperson PR/commit that introduced the SnarkPack v2 transcript
   hardening (the Frozen-Heart-class fix) and the last pre-fix commit. Record both
   as immutable commits with dates.
2. Read the audit material and the fix PR description directly; transcribe the
   enumerated changes (every binding added, every reordering corrected, version
   tagging / downgrade prevention) into a findings table. Cite file+line.
3. Produce a mechanical diff of `aggregate/{transcript,prove,verify,mod}.rs`
   between the v1 pin and `v0.21.0`. Reconcile it against the audit-derived list so
   nothing is missed that the prose did not mention.

### Task 2 — Resolve the arkworks fork point (unblocks Diff A)

1. Determine which `arkworks-rs/ripp` commit Penumbra baseline `523837547`
   imported (tree matching against ripp history; the Arkworks 0.5 dependency family
   narrows the window).
2. Update `crates/crypto/proof-aggregation/src/ipp/PROVENANCE.md` `upstream commit`
   from `unknown` to the resolved commit, with the matching method noted. If it
   cannot be resolved to a single commit, record the narrowest candidate range and
   say so explicitly — do not guess a single commit.

### Task 3 — Diff A: arkworks → bellperson port-time review (the unexamined part)

1. Diff `arkworks-rs/ripp` aggregate/IPP modules against bellperson `v0.21.0` for
   the same logical functions, ignoring pure curve/stack mechanics.
2. Flag every change that is **not** explained by curve swap, serialization stack,
   or the v1→v2 FS fix — these are candidate port-time correctness/security fixes.
3. For each, locate the corresponding Penumbra `src/ipp` function and determine
   whether our fork already has the equivalent behavior.

### Task 4 — Classify every finding against Penumbra

For each change from Tasks 1 and 3, assign exactly one disposition with evidence:

- `mirrored` — Penumbra already has the equivalent behavior (cite our file+line).
- `exempt-curve` — only relevant to BLS12-381 / blstrs encoding.
- `exempt-fs-replaced` — subsumed by our own statement-bound Fiat-Shamir (cite the
  `challenge.rs` construction and the relevant `fs.*` spec rows).
- `missing-fix` — a security-relevant behavior we lack. Escalate; do not fix
  silently. Open a separate tracked item and stop for human review.

### Task 5 — Record as governance

1. Write findings to `docs/snarkpack/filecoin-divergence-findings.md`: the two
   diffs, the disposition table, and the reviewer/date.
2. Add or update `adaptation-register.md` rows for any non-FS Filecoin change worth
   tracking; move `fs.filecoin-bug-class` toward closure if Diff B is fully
   reconciled and dispositioned. Respect the register rule: a `security-binding`
   row cannot leave `open` on tests alone.
3. If `check-snarkpack-filecoin-shape.sh` can cheaply assert any newly confirmed
   binding still exists in the pinned v2 source, add that assertion.

## Deliverables

- `docs/snarkpack/filecoin-divergence-findings.md` (new): two-diff analysis +
  dispositioned findings table + reviewer/date.
- `PROVENANCE.md` updated with the resolved (or narrowed) arkworks fork point.
- `adaptation-register.md` rows added/updated; `fs.filecoin-bug-class` advanced.
- Any `missing-fix` finding raised as a separate item, **not** silently patched.

## Acceptance criteria

- Diff B is reconciled two ways (audit prose + mechanical source diff) with no
  unexplained delta.
- Every Diff A change is classified with one disposition and file+line evidence.
- No `missing-fix` is closed by code change inside this task; each is escalated.
- The findings doc lets a reviewer reproduce every diff from the pinned commits.

## Constraints

- Per `CLAUDE.md`: no compatibility shims, no importing Filecoin code, no
  speculative abstractions. This is a review-and-record task.
- No byte-equivalence claims to Filecoin. Comparison is behavioral/structural only.
- Stop and surface, rather than push through, any `missing-fix` — it may change the
  protocol and needs an explicit decision.
