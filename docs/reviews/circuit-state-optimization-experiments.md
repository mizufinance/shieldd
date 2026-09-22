# Circuit and state optimization experiments

Status: experiments complete; the four selected changes were subsequently
[implemented and verified](circuit-state-optimization-implementation.md).
The measurements and restoration statement below describe this experiment pass.

2026-09-21. Follow-up to [the research assessment](circuit-state-optimization-research.md),
using the existing working tree based on `1dc62a7a09480d966b29e7ecfbe8caa3c309c933`.
Three Sol agents investigated arithmetic, cryptography and storage; the parent
coordinated resource use, reviewed results and measured native proving.

**Implement application arithmetic first, add a properly integrated one-note
Disclosure family, and fix continuous retired-tree cleanup. Keep the current
quaternary tree and Commonware prover. Do not switch databases yet.**

These are experiments, not production changes. Temporary source variants were
restored. The evidence distinguishes complete circuit variants, extracted gadgets,
database lifecycle tests and synthetic workload models. A favorable gadget count
does not establish a deployable protocol change.

The four selected recommendations were subsequently implemented; see
[the implementation and verification report](circuit-state-optimization-implementation.md).

## Complete circuit measurements

The combined candidate retains one public statement digest, the note model,
private padding, all recovery capsules, and separation of audit/PET/seizure keys.
It changes Shieldd gadgets through Commonware's public circuit API. It does not
replace Commonware compilation, FFTs, MSMs, proving or verification.

| Family | Baseline rows | Candidate rows | Baseline domain → candidate domain |
| --- | ---: | ---: | ---: |
| Transfer | 212,174 | 204,511 | 262,144 → 262,144 |
| Reshape 1→8 | 157,049 | 153,460 | 262,144 → 262,144 |
| Reshape 8→1 | 185,925 | 179,676 | 262,144 → 262,144 |
| Withdrawal | 119,090 | 114,550 | 131,072 → 131,072 |
| Seizure | 16,604 | 16,224 | **32,768 → 16,384** |
| Disclosure, capacity 32 | 159,226 | 90,949 | **262,144 → 131,072** |
| History generation | 15,123 | 13,330 | 16,384 → 16,384 |
| History chunk, width 10 | 143,357 | 118,533 | **262,144 → 131,072** |

The domain is the next power of two of the larger of rows and allocated columns.
Seizure's candidate has 16,306 columns: only 78 below its new boundary. This win
is real for this relation, but a small subsequent addition can erase it.
Disclosure saves 42.9% of rows; history chunk saves 17.3%; Transfer saves 3.6%.
These percentages are not throughput claims.

### What is in the arithmetic candidate

| Change | Measurement and adoption condition |
| --- | --- |
| Bounded difference comparisons | Disclosure alone saves 50,160 rows and halves its domain. Both operands remain range constrained; the helper requires `2^(w+1) < p`. Never apply the single-field construction directly to 255-bit nullifiers. |
| Canonical two-limb comparisons | Keep canonical 255-bit decompositions, compare 128/127-bit limbs. Two comparisons plus high-limb equality save another 2,460 history-chunk rows over the three-comparison variant. Boundary/random canonical-field tests passed. |
| Disclosure decomposition reuse and packed controls | Reuse constrained amount/total bits; pack Boolean flags and bounded opcode injectively. Statement preimage falls from 491 to 328 fields, from 99 to 66 wide hash permutations. Native and circuit encodings agree. |
| Routing mask implications | Saves 961 rows per applicable action, replacing pairwise ordering with implications between already constrained masks. |
| IVK inverse nonzero check | Saves 500 rows per authorized family. Reduced-scalar constraints remain. |
| Quaternary child selection and position reuse | Selector saves eight rows per tree level. Position bits remain explicitly bound to the path position and drive age checks too. Tree roots and sibling order are unchanged. |
| Signed net balance | Replace two amount multiplications with one 129-bit signed-magnitude multiplication. Keep each input/output's 128-bit range checks and bind sign/magnitude to the exact integer difference. Extreme positive, negative and zero cases and a real proof passed. |
| Shared history target | Share the canonical nullifier decomposition while retaining each generation's explicit target equality, ordering and checked index arithmetic. |

The combined candidate passed **57/57 circuit library tests**, including real
native Pari prove/verify tests and existing adversarial statement-binding cases.
Tests ran serially in the optimized `ci` profile. Full application/workspace
feature-gated prover and release suites were **not** run. Implementation still
needs those integration checks, regenerated relation keys and current circuit IDs.
In particular, Disclosure's packed digest changes its current `v1.32` contract.

The residual combined savings are not attributed separately: packing, signed
balance, comparison call sites and reuse interact. The independently measured
deltas above must not be blindly added to other variants.

### Capacity and history width

A one-note Disclosure relation with the candidate arithmetic costs **5,172 rows,
5,123 columns and domain 8,192**. This is a strong second implementation step.
It must be a distinct public family, key and circuit ID selected from the
request's public note count, with verifier dispatch bound to the same signed
request and statement. Changing the global capacity constant is only the
experiment; it is not the production integration. Keep the 32-slot family.

| History width | Rows | Columns | Domain |
| ---: | ---: | ---: | ---: |
| 8 | 95,077 | 95,365 | 131,072 |
| 9 | 106,805 | 107,129 | 131,072 |
| 10 | 118,533 | 118,893 | 131,072 |
| 11 | 130,261 | 130,657 | 131,072 |
| 12 | 141,989 | 142,421 | 262,144 |

Keep width 10 for the initial implementation. Arithmetic already crosses the
important boundary without changing coverage semantics. Width 11 leaves only
415 columns of headroom and saves about 9.1% of envelopes for long, full prefixes.
It also requires coordinated changes in wallet coverage, storage chunk width,
gas, indices and version guardrails. Its focused ordering/overflow test passed;
that is not an application lifecycle test. Width 12 loses the domain benefit.

### Native proof timings

Three fresh proofs per variant; table entries are medians in milliseconds. Setup
and relation compilation are excluded. The same one-note witness was used in both
Disclosure capacities. Transfer used the existing flagged-transaction fixture.
History used ordered sentinel generation fixtures. All 27 native proofs verified;
each also rejected a changed public digest.

| Variant | Native `pari::prove` | Assignment + claim + prove + framing | Native proving key, decimal MB |
| --- | ---: | ---: | ---: |
| Disclosure 32, baseline | 3,890 | 5,589 | 58.55 |
| Disclosure 32, candidate | 2,076 | 3,455 | 29.84 |
| Disclosure 1, candidate | 147 | 214 | 1.84 |
| History 10, baseline | 3,942 | 6,169 | 57.81 |
| History 10, candidate | 2,181 | 4,357 | 31.35 |
| History 11, candidate | 2,208 | 4,606 | 31.96 |
| Transfer, baseline | 4,114 | 6,091 | 61.36 |
| Transfer, candidate | 4,106 | 6,064 | 60.96 |
| Transfer, candidate + 3-bit windows | 4,081 | 6,063 | 60.72 |

Witness circuit construction adds approximately 1 ms for Disclosure 1, 25–42 ms
for other Disclosure/history variants and 54–60 ms for Transfer. It and the
harness satisfaction assertion are outside the pipeline column. Verification took
roughly 0.72–0.77 ms and every envelope was 244 bytes. Setup took roughly 1 second
for Disclosure 1, 15–16 seconds for the half-domain candidates and 31–32 seconds
for the large baseline domains; it is not a per-proof cost.

Disclosure 32 improves native proving by 46.6% and the measured pipeline by 38.2%.
History 10 improves them by 44.7% and 29.4%. Disclosure 1 takes 214 ms in the
pipeline versus 3,455 ms in optimized Disclosure 32 for the same one-note request,
with only a 1.84 MB additional native proving key. This supports adding the family;
we did not measure request frequencies or claim an aggregate workload speedup.

Transfer stays in the same domain: the arithmetic candidate changes its pipeline
from 6,091 to 6,064 ms. Adding three-bit windows changes it to 6,063 ms, while the
native kernel changes from 4,106 to 4,081 ms. These sub-percent differences on a
shared machine do not establish a useful speedup. Defer the fixed-window change.

Native `Relation::witness` recompiles and validates the assigned relation in the
current Commonware integration; assignment alone costs about 1.4–2.4 seconds for
these large relations. That overhead belongs in the measurement, but removing
its validation or creating a private compiler/template fork is not recommended.
Upstream template/prover changes may improve it later. These are optimized `ci`
profile, two-worker measurements with debug assertions and background load—not
release-throughput estimates or comparisons with a different circuit/proof design.

## Cryptography and tree alternatives

| Experiment | Actual result | Decision |
| --- | --- | --- |
| Three-bit fixed-base windows | Transfer saves 4,620 rows; each reshape 4,200; Withdrawal 2,100. Domains unchanged; squared matrix entries increase slightly. Independent group boundary checks passed. | Defer: the full proof pipeline did not improve measurably. |
| Four-bit fixed-base windows | No rows saved; more matrix entries. | Reject this variant. |
| Shared audit-key preparation | Only 81 Transfer rows saved; no domain change. Five encryption tests, including the four-tier native proof, and Transfer branch binding passed. | Defer the extra public abstraction. |
| Shared amount/position decompositions | Extracted 128-bit double allocation: 261→132 rows; eight 48-bit allocations: 395→52. | Use constrained-value reuse where already integrated above. Defer broader note/balance and multi-spend floor threading until a complete family benchmark; the small gadget result is not its net gain. |
| Shared address digest in note hashes | Eight same-owner note hashes: 7,528→4,580 rows; eight distinct owners: 7,464. Both keep domain 8,192. | Defer commitment/nullifier redesign; extracted savings omit ownership/reuse binding and depend strongly on owner distribution. |
| Affine audit plaintext | One address plus stream gadget: 4,424→1,680 rows; adds 32 raw bytes/address. | Promising follow-up prototype, not an implementation recommendation yet. New decoding, canonicality, subgroup and identity checks are not implemented. |
| One amount audit core | Two cores 20,036 rows versus one 10,010; removes 128 ciphertext bytes plus a 32-byte salt in separate metadata. Removing both and using two affine addresses gives a raw net of −96 bytes/Transfer across those artifacts. | Defer until full Transfer, issuer evidence and Orbis release-scope authorization are implemented/tested. Sharing an audit key does not by itself merge field/role permissions. |

The two compliance-format experiments preserve separate PET and RNK/seizure
authority conceptually, but did not implement that entire authorization flow.
Do not merge independently authorized address/recovery seeds or remove capsules.
The isolated savings cannot be advertised as net Transfer savings.

### Hash and arity measurements

These are compiled extracted paths with equal 48-bit position capacity, explicit
level binding and the current compiler. They are not full transaction proofs or
independent security assessments of new hash constructions.

| Path construction | Rows | Domain |
| --- | ---: | ---: |
| Current Poseidon, binary depth 48 | 19,396 | 32,768 |
| **Current Poseidon, quaternary depth 24** | **9,892** | **16,384** |
| Current Poseidon, octary depth 16 | 13,316 | 16,384 |
| Reference Poseidon2 width 3, binary | 30,724 | 32,768 |
| Reference Poseidon2 width 8, binary | 23,236 | 32,768 |
| Reference Poseidon2 width 8, quaternary | 11,620 | 16,384 |
| Reference Poseidon2 width 8, octary | 15,492 | 16,384 |

Keep quaternary Poseidon. Pari's treatment of linear expressions means generic
Poseidon2 multiplication-count claims do not transfer directly. Published BLS12-381
width-3/8 parameters were used; width-3 matched its published vector, width-8
matched an independent Python reference port, and native/circuit width-8 output
and wrong-output rejection passed. This does not establish that every possible
Poseidon2 construction is worse. No new width-6/9 parameters were invented.
See the [Poseidon2 paper](https://eprint.iacr.org/2023/323) and
[reference implementation](https://github.com/HorizenLabs/poseidon2).

Bonsai's useful pattern is reuse of constrained position bits, which we tested.
Its account/history architecture and binary tree are not necessary for that
optimization. In Shieldd a binary node containing a level and two children has
three inputs, so the current hasher selects width six; a width-three binary cost
estimate omitting the level is not a fair comparison. See
[Bonsai's receive circuit](https://github.com/guruvamsi-policharla/zk-pari/blob/031a1c0478739b4be8c8176b23f51106fc00dd79/src/circuits/recv.rs).

Host multiproof modeling used 1,000 seeded eight-position samples: random
positions average 178.446 unique hashes versus 192 independent hashes; eight
contiguous positions require 25. The latter pattern was constructed, not observed
in wallet traffic. A generic private fixed-shape circuit must still constrain
worst-case positions; a specialized family reveals clustering. Defer adoption.
Lookup-specific hashes, folding, or Bonsai's account migration require a different
proof/architecture boundary and were excluded rather than given invented timings.

## State growth and databases

### Implement bounded continuous cleanup

The live pack worker publishes missing packs, but receipt/pruning currently runs
at startup. That leaves expanded retired trees on continuously running nodes.
Implement receipt-checked, crash-replayable deletion pages through the existing
application writer, preserving the retired/current/previous-generation guards.
Do not introduce a second writer.

Actual Cnidarium tests inserted canonical random nullifiers, retired a generation,
built its pack, compared eight cold nonmembership proofs, published a receipt,
deleted 256 keys/page and interrupted/reopened after the first page. Every page's
commit root matched; final reopen passed committed-root verification.

| Nullifiers | Pack bytes | Pack build | Cold reconstruction, separate process | Expanded records / deletion pages |
| ---: | ---: | ---: | ---: | ---: |
| 100 | 3,308 | 6 ms | 7 ms | 454 / 4 |
| 1,000 | 32,108 | 56 ms | 58 ms | 4,352 / 18 |
| 10,000 | 320,108 | 561 ms | 549 ms | 43,353 / 173 |

At 10,000 leaves, bounded deletion took 159 ms versus 115 ms unbounded, using
different commit paths: ordinary version-advancing commits versus one in-place commit.
Bounded work controls per-commit allocation/latency; it does not promise faster
total deletion. Standalone peak process RSS grew from 2.00 MB at 100 leaves to
5.88 MB at 10,000. Use a byte budget and bounded reconstruction concurrency;
a generation-count limit alone cannot bound memory. Header, payload, checksum
and truncation corruption cases were all rejected.

The scratch coordinator re-put an unchanged verifiable sentinel to advance a
normal Cnidarium snapshot between pages. This is a harness device. In production,
maintenance must join ordinary writer commits. Repeated `commit_in_place` plus
`latest_snapshot` did not provide that advancement; an early scratch run failed
to make progress and was stopped. The prototype established retirement via rollover,
recorded a receipt before bypassing the production prune helper, and checked the
receipt after the first-page reopen. Adoption must check retirement and receipt
on every page and atomically persist cursor progress with its deletes.

### Retained JMT versions need an explicit policy

After 32 versions overwriting 512 keys with 64-byte values, Cnidarium used
**2,403,529 bytes after close/reopen**. Rebuilding the identical latest state
with an asserted identical root used **379,473 bytes**, a 6.33× difference.
Deleting all logical keys and reopening left 2,625,466 bytes. Initial open/WAL
figures are excluded from this comparison.

This confirms retained versioned state, not a safe deletion algorithm. RocksDB
compaction cannot discard distinct versioned keys on its own. Defer JMT garbage
collection/rebuild adoption until retained roots, snapshot readers and proof
availability are explicitly bounded. A latest-only scratch rebuild is not a
tested replacement for Shieldd's entire multistore.

### QMDB is worth further integration work, not a backend switch now

We built real current Commonware ordered-variable QMDB at
`bd0f7eb33af26c4aa9831d98d53621ba3cb4b14e`, separately from Shieldd's pinned
native prover. The same 32×512-key trace, in both hashed and ordered-key modes,
used 7,158,728 bytes before pruning and **206,080 bytes after safe pruning and
reopen**; each mode preserved its own root and all 512 values. After deletion/pruning/reopen it used
95,122 bytes. Ordered predecessor/successor and all 512 range results matched.

Pruning uses the permitted sync boundary (31,744), not the later inactivity floor
(31,777); the latter was correctly rejected. Ordered point reads were slower
because the scratch `OneCap` translator put all `hist/…` keys in the same first-byte
bucket: 31.25 ms versus 2.24 ms for hashed keys. This is not a tuned engine comparison.
Commits were generally 50–70 ms per batch versus roughly 5 ms in the Cnidarium
trace, with different durability internals/caches and background load.

The space result is promising, but historical proof availability is not equivalent.
QMDB is not a drop-in replacement for Cnidarium's ICS23 proof interface, immutable
snapshots, speculative execution, prefix/predecessor queries, nonverifiable state
and atomic application commits. Keep this as a bounded backend integration project
after cleanup, not a claim that changing the dependency solves state growth.
See [Commonware's QMDB design](https://commonware.xyz/blogs/qmdb).

### Implement the small wallet schema improvement

For 20,000 synthetic tree-hash rows, composite-primary-key `WITHOUT ROWID` SQLite
used **962,560 bytes versus 1,167,360 bytes**, a 17.5% reduction. Reopened point
reads remained comparable. Apply this to suitable hash tables with explicit
uniqueness semantics and wallet/reorg tests; the SCT table currently has only a
position index, so do not silently assume its new key semantics.

Deleting half the rows plus a WAL checkpoint did not shrink the main file;
VACUUM plus checkpoint did. Production already batches block writes, so the
large synthetic one-row versus 500-row transaction contrast is not a new win.
Do not replace SQLite on this evidence.

### Defer policy changes without a workload

| Model/experiment | Result | Why defer |
| --- | --- | --- |
| 30/60/120-epoch generations | At fixed total traffic, archive payload stays about 115.2 MB; old-note envelope counts halve as generation length doubles, while two active generations hold 60k/120k/240k nullifiers. | Traffic, memory and cold-proof tradeoff; no observed workload supports a new constant. |
| Targeted wallet compliance paths | Can replace global hash projection with requested paths; raw payload scales with recipients rather than global updates. | Reveals recipient interest; needs exact-root verification and actual sync/query traces. |
| Confirmed daily volume rows | Synthetic 100 subjects use 557,056 B for 30 days versus 6,881,280 B for 365 days. | Establish reconstruction/retention policy before deleting user-relevant data. |
| Cold archives | Can reduce hot-node state placement. | Does not reduce total retained bytes; accepted ciphertexts, capsules and proofs must remain authenticated and available for catch-up, disclosure and seizure. |

## Implementation order and verification boundary

1. Land the arithmetic candidate in coherent gadget changes, regenerate keys,
   update digest/circuit identifiers and run application acceptance, disclosure,
   wallet history and prover/release checks. Preserve all integer bounds and
   malicious-witness rejection, including signed-balance sign/magnitude boundaries.
2. Add the one-note Disclosure family with request-bound dispatch and package/CLI
   tests. Keep general disclosure and private transaction padding intact.
3. Integrate bounded retired-tree maintenance with the single writer, durable
   cursor and verified receipt; test restart during every phase. Add pack cache
   byte budgeting and bounded reconstruction concurrency.
4. Change suitable wallet hash tables to `WITHOUT ROWID`, checking uniqueness,
   replay, rollback and reorg behavior. Prototype resets/version guardrails apply;
   do not add compatibility shims without an external contract.
5. Revisit deferred variants only when upstream prover changes or real workloads
   change the tradeoff. Keep fixed-window, hash, audit-format, tree-arity and QMDB
   changes outside this first implementation.

Commonware retains ownership of prover internals. Our circuit-level changes
survive an upstream prover improvement without an optimization port; relations
and keys still need validation/regeneration when compiler behavior changes.
No experimental compiler optimization or new vendor patch is proposed.

## Evidence and reproducibility

The [evidence directory](circuit-state-experiments/README.md) contains source
fingerprints, patches, harnesses, raw logs, structured measurements and each
agent's report. Measurements used at most two build/Rayon workers, one heavy job
at a time, with serial expensive tests. Another Docker workload was active;
latencies are local samples, not isolated-machine capacity estimates.

After all experiments, all 1,163 baseline files were checked by SHA-256: the only
changed preexisting file is the research document, updated to link these results
and correct the binary-hash estimate. No baseline files are missing. All production
source bytes were restored, Commonware source inventory verification passed, and
`git diff --check` passed. Fresh benchmark keys stayed in memory; the configured
registry was not replaced. Full application/workspace release-gated tests were
not run because this pass retains only research artifacts, not production changes.
