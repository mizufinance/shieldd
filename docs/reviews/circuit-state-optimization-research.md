# Circuit cost and state growth research

Research date: 2026-09-21. Assessment of the working tree based on `1dc62a7`,
including the implemented shared audit key and restored constant outlining.
Source fingerprints and arithmetic checks are in
[the evidence file](circuit-state-optimization-evidence.json).

The subsequent [experiment report](circuit-state-optimization-experiments.md)
contains compiled relations, native proofs, database lifecycle measurements and
adoption decisions. The research-only verification statement below describes
this initial assessment, not that later experiment pass.

**Recommendation:** improve Shieldd's arithmetic gadgets and disclosure circuit
now; make retired-tree pruning work during continuous operation; then benchmark
hash alternatives and storage engines. Keep the note model, private padding,
compliance/RNK separation, recovery capsules, and one public statement digest.
These improvements do not require an alternative prover.

This is a research assessment, not an applied optimization or security audit.
No production source changed. Counts explicitly described as estimates are
derived from source and the current compiler, not measured compiled relations.
No new Rust build, setup, proof generation, release-gated test, or database
lifecycle benchmark was run. Another substantial Docker workload was active;
the workspace also had approximately 10 GiB of free disk. Existing proof results
are reused only as baselines, not as verification of the proposals.

## What to optimize

Constraint count, proving cost, and disk growth require different measurements.
The current compiler folds constant multiplication and linear arithmetic;
squares generally cost one square row and general products two. The domain is
the next power of two of the larger of row count and allocated column count.
Consequently, saving rows alone does not guarantee a smaller FFT domain or
proving key. Sparse matrix entries, witness generation, compilation, key loading,
and working memory also matter. See the
[compiler](../../third_party/commonware/cryptography/src/zk/pari/circuit.rs).

The existing, verified registry has these domains. They are padded domain sizes,
**not exact constraint counts**. All families retain one public application
scalar and one committed witness value.

| Family | Current domain | Main source-level cost drivers |
| --- | ---: | --- |
| Transfer | 262,144 | 120 tree levels; audit/DH encryption; authorization; balance; address encoding |
| Reshape 1→8 | 262,144 | Eight independently encrypted recovery capsules; 56 tree levels |
| Reshape 8→1 | 262,144 | Eight spend paths and randomized keys; 224 tree levels |
| Withdrawal | 131,072 | Spend/volume paths; ownership; change capsule; encryption |
| Seizure | 32,768 | Note path, recovery opening and nullifier binding |
| Disclosure | 262,144 | Always 32 slots; 132 bounded comparisons; 491-field statement |
| History generation | 16,384 | 20-level indexed path; full-field gap comparisons |
| History chunk | 262,144 | Ten generation relations, including repeated target decomposition |

These are structural drivers, not a measured percentage breakdown. The Transfer
tree count is `16 + 2*16 + 2*24 + 24`: asset registry, two compliance users,
two spends, and volume continuation. Conditional checks still construct their
hash paths when the branch is disabled. Existing measurements and exact registry
identities are in [constant-outline validation](constant-outline-validation.md).

## Ranked circuit work

| Priority | Change | Benefit supported by current evidence | Scope |
| --- | --- | --- | --- |
| 1 | Bounded difference comparisons | Estimated ~50,000 fewer square rows in the 32-slot disclosure relation | Arithmetic gadget; preserve all integer bounds |
| 1 | Reuse amount/position/nullifier decompositions | Removes repeated Boolean witnesses and modulus checks | Typed values passed between application gadgets |
| 1 | Pack disclosure flags/opcodes in the statement preimage | 491→328 fields; 99→66 wide Poseidon permutations | Statement hashing and host/circuit parity |
| 1 | Replace quadratic routing ordering | 528 pair products→32 mask implications | Same routing semantics and public data |
| 1 | Use a scalar nonzero check for IVK | Avoids a 252-bit OR chain | Preserve the reduced scalar and its bounds |
| 2 | One signed net-value scalar multiplication | Two 129-bit variable-base multiplications→one | Balance gadget and integer correctness |
| 2 | Cheaper quaternary child selection | 10→6 nonlinear products per level | Same tree roots, domains and sibling order |
| 2 | Small disclosure family | Avoids paying for 32 slots for a one-note disclosure | One additional public-size family initially |
| 2 | History chunk size experiment | Potentially cross a power-of-two domain boundary | Compare widths around 8–10 before choosing |
| 3 | Field-coordinate audit plaintext | Removes eight full-field decompositions per Transfer; adds ciphertext words | Encryption format and Orbis decoding |
| 3 | One amount audit ciphertext | Removes one redundant amount-encryption tier | Review field/role authorization first |
| 3 | Better fixed-base windows; shared base preparation | Potential group-arithmetic savings | Application Jubjub gadgets, not native prover MSM |
| 3 | Poseidon2 / tree compression experiments | Potential native hashing and matrix-density savings | Parameter review and new protocol commitments |

### 1. Bounded comparisons

[`range::less_or_equal`](../../crates/crypto/circuits/src/range.rs) scans bits
using two variable products per bit, followed by a Boolean check. For variable
128-bit operands the current lowering suggests approximately 511 square rows,
excluding the operands' existing range checks.

When `a` and `b` are already constrained to `[0, 2^w)`, witness a bounded
difference `d` and a Boolean borrow `q`:

```text
b - a = d - q * 2^w
0 <= d < 2^w
a <= b  iff  q = 0
```

For `2^(w+1) < p`, the field equation cannot hide an alternative integer result
through modular wraparound. With `w=128`, the estimated comparison cost is 128
Boolean rows, one borrow row and one reconstruction equality: about 130 rows.
The 32 note predicates plus total predicate each perform four comparisons,
giving a source-derived estimate of `(511-130)*132 = 50,292` fewer rows.
This is an implementation hypothesis pending native compiler measurements.

Preserve true **and false** predicate results, inclusive endpoints, amount
overflow rejection, inactive-slot zeroing, and all operand bounds. Do not apply
this single-field equation to 255-bit nullifiers: use canonical limb comparison
or the existing comparator there. Constant-bound comparisons may already fold
cheaply and need separate measurement.

Arithmetic checks covered all operand pairs for widths 1–8 and boundary cases
for widths 48, 64, 128 and 129: 87,444 pairs. This checks the integer construction,
not a Rust gadget or proof implementation.

### 2. Reuse constrained values

Several callers allocate fresh decompositions of values already range-checked:

- Spend/output amounts are checked in `note`, then again in `balance`.
- A spend position is decomposed in `tree::root` and again for its age check.
- The recent-position floor is decomposed independently for every input.
- Disclosure decomposes each amount before calling `predicate`, which repeats it;
  the total has the same duplication. Removing these 33 repeated 128-bit
  decompositions would remove 4,224 Boolean checks plus reconstruction equalities.
- History chunks independently allocate and canonically decompose the same
  nullifier ten times, then assert the copies equal. Sharing it removes nine
  canonical decompositions, including at least 2,295 Boolean checks.

Use small application-owned records such as a bounded amount plus its bits, and
pass the same variables into consumers. Do not introduce a global expression
cache or mirror Commonware's private compiler mapping. A supplied host integer
is not a substitute for a constrained integer.

The [Bonsai receive circuit](https://github.com/guruvamsi-policharla/zk-pari/blob/031a1c0478739b4be8c8176b23f51106fc00dd79/src/circuits/recv.rs)
uses this pattern: one position-bit allocation drives both receipt membership and
nullifier-tree insertion. We can adopt the pattern without adopting its accounts.

History index sharing must retain the `chunk_index * width + offset` overflow
bound. Sharing variables is safe; deleting their range obligations is not.

### 3. Pack public facts before hashing

[`disclosure::Statement::fields`](../../crates/crypto/circuits/src/disclosure.rs)
currently emits 491 fields: three context fields, 32 slots of 15, and eight total
fields. A slot contains five Boolean values—active, three reveal flags and
predicate result—and an opcode in `0..5`. They can be packed injectively as:

```text
active + 2*reveal_amount + 4*reveal_asset + 8*reveal_recipient
       + 16*predicate_result + 32*opcode
```

Keep the existing Boolean/opcode constraints. This replaces six fields with one,
reducing a slot to ten fields. Packing the four corresponding total-control
fields into one reduces the total section from eight to five. The resulting
statement has `3 + 32*10 + 5 = 328` fields. With the current rate-five sponge,
that is 66 permutations instead of 99. The 192 possible slot encodings were
checked for uniqueness.

The external disclosure can retain readable fields. Only its canonical hash
preimage needs packing, with identical native/circuit encoders and fresh relation
keys. This **preserves one public statement hash** and binds every original fact.
Do not pack two arbitrary 128-bit values into the 255-bit field.

### 4. Routing and IVK checks

[`routing::constrain_parameters`](../../crates/crypto/circuits/src/routing.rs)
already constructs unary masks: bit `k` is set when `k < precision`. Instead of
checking all 528 forbidden pairs of one-hot values, require each regulated mask
bit to imply the corresponding unregulated bit. This takes 32 products and
preserves the existing parameter digest. All 1,089 precision pairs were checked.
Retain the one-hot domain restrictions; implication alone does not establish
canonical precisions.

[`authorization::constrain`](../../crates/crypto/circuits/src/authorization.rs)
proves IVK nonzero through a 252-bit OR chain. Retaining the constrained reduced
remainder permits an inverse-based nonzero check instead. Check the remainder,
not its pre-reduction hash: a nonzero hash can reduce to zero.

### 5. Balance and group arithmetic

[`balance::constrain`](../../crates/crypto/circuits/src/balance.rs) computes
`[sum(inputs)]G - [sum(outputs)]G`, then adds the blinding commitment. Witness
`m = abs(sum(inputs)-sum(outputs))` and a Boolean sign, constrain their exact
integer relation, perform one 129-bit multiplication, and conditionally negate
the Jubjub x coordinate. Retain each constituent's u128 bound. The maximum
magnitude is `2^129-2`, safely below both relevant moduli.

This preserves nonzero action net values and transaction-level balance binding;
requiring every transfer action to balance to zero would change the architecture.
Boundary arithmetic covered 256 input/output combinations. Curve correctness,
malformed sign/magnitude rejection, and real proofs still need testing.

The existing group gadget already uses affine formulas, two-bit windows,
preweighted fixed bases and a cofactor-preimage subgroup check. Do not propose
these as missing optimizations. Next experiments should compare three/four-bit
fixed-base selections through Commonware's public `Selector`, and share a
variable base's small multiples when several encryptions use it. Keep complete
formulas and subgroup/nonidentity guarantees.

[Orchard's fixed-base design](https://zcash.github.io/halo2/design/gadgets/ecc/fixed-base-scalar-mul.html)
is useful algorithmic reference material, but its custom high-degree gates and
lookups do not have the same cost in Pari square constraints. We should measure
our selection/addition tradeoff, not import its gate counts.

### 6. Tree selectors and proof sizes

The current quaternary selector constructs four one-hot flags and uses six
conditional selects: ten variable products per level. A construction with two
pair swaps and four high-bit selections needs six products. With node `n` and
ordered siblings `a,b,c`, let `t=l*(a-n)` and `u=l*(c-n)`; the two candidate pairs
are `(n+t,a-t)` and `(n+u,c-u)`. Select the left pair versus `(a,b)` and `(b,c)`
versus the right pair using high bit `h`. This preserves all four child orders.
It passed 1,024 field-valued sanity cases. Position bits must remain Boolean.

The source-level reduction is 480 variable products over Transfer's 120 levels,
roughly 960 square rows before whole-circuit effects. It changes no roots.

Disclosure is different from private spend padding: its request already exposes
the selected output references and count. A small public-capacity relation can
therefore avoid 32-slot work without revealing an additional hidden note count.
Start by evaluating one-note versus existing 32-note families, not dozens of
combinations of count and predicate. Preserve exact request binding and unsplit
hidden totals. The registry and family framing must select the correct relation.

For history, benchmark chunk widths 8, 9 and 10 first. Current width ten uses a
262,144 domain despite single generations using 16,384. Width eight may fit a
131,072 domain, but exact row/column counts must establish that. The tradeoff is
25% more chunk proofs asymptotically (`G/8` versus `G/10`), fewer pending raw
witnesses and potentially much smaller per-chunk keys/work. This does not change
the need to cover the entire retired prefix.

## Larger circuit-format changes to evaluate

### Audit payloads

Current audit address plaintext packs two compressed Jubjub points into three
field words. [`encoding::address_words`](../../crates/crypto/circuits/src/encoding.rs)
fully decomposes both x and y for each point, even though only x parity is used.
For both addresses that is eight canonical 255-bit decompositions.

Encrypting the four affine coordinates directly would remove those decompositions
and add one field word per address: 64 raw ciphertext bytes per Transfer. It also
adds stream hashes and statement fields, so measure the net effect. Native
decoding must validate canonical coordinates/subgroup membership and produce the
same canonical address. This changes the compliance payload contract with Orbis,
not the wallet address format. Keep each independently authorized field's seed
and release scope separate.

Both sender core and output core currently encrypt the **same amount**, to the
same selected payload/issuer key, under independent randomness. A single amount
ciphertext plus two ownership ciphertexts could serve both authorized roles.
Deleting one core removes an EPK, C2, confirmation, amount ciphertext and salt:
160 raw bytes, plus one fixed-base multiplication, one variable-base
multiplication, scalar checks and hashes. Retaining sender core preserves the
existing detection EPK dependency. Combining this with coordinate plaintexts
would save 96 raw compliance bytes before any other framing changes.

This is a design candidate, not an approved deletion: confirm issuer evidence,
sender/receiver field entitlements, PET matching, ACP rules, anti-replay context,
and decoder behavior. Authorization must bind the shared amount ciphertext and
requested role explicitly. Do not share recovery or address decryption seeds
merely because their encryption public key is shared. See the current
[compliance reference](../compliance/reference.md).

### Commitment preimages

Factoring a shared address digest out of note commitments could turn each
eight-field note hash (two wide permutations) into a five-field hash (one), at
the cost of one address hash per distinct owner. It is more attractive for an
eight-output reshape than a two-output transfer. It changes note commitments,
nullifiers and all note-creation/acceptance paths. Treat it as a later experiment,
not a prerequisite for the smaller arithmetic improvements.

## Hashes and tree kinds

Our hash already absorbs field elements directly and puts domain plus arity in
the capacity word. [Bonsai's hasher](https://github.com/guruvamsi-policharla/zk-pari/blob/031a1c0478739b4be8c8176b23f51106fc00dd79/src/circuits/hasher.rs)
uses the same broad techniques. We already have these savings. Its prototype
receipt tree is fixed-depth binary, standing in for the paper's MMR; it is not
evidence that its storage code is a production MMR implementation.

Our depth-24 state tree supports 48-bit positions; compliance is depth 16
(32-bit positions), history depth 20 (40-bit positions). Each quaternary node
hashes a level and four children in one width-six permutation. Copying Bonsai's
binary structure doubles the path depth at equal capacity.

For orientation only, with the current 8 full/57 partial rounds and alpha five:
width three has 81 S-boxes; width six has 105. In current square arithmetization
an unfused variable `x^5` uses two squares and one general product, about four
rows. A binary node containing its level and two children has three inputs,
so our current hasher selects width six, just as for the quaternary node.
Ignoring constant folding and selectors, the equal-capacity cost model is
`48*105*4 = 20,160` S-box rows versus `24*105*4 = 10,080` for quaternary.
The follow-up compiled experiment measured 19,396 versus 9,892 total rows.
These figures do not constitute a parameter-security assessment of a new hash.

An eight-way tree using our existing width-six sponge needs two permutations
per level. Fewer levels alone therefore does not guarantee savings. Benchmark
arity and the exact secure hash construction together, with equal capacity,
proof bytes, tree-update work, matrix density and wallet witness costs.

| Research | What applies to Shieldd | Decision |
| --- | --- | --- |
| [Poseidon2](https://eprint.iacr.org/2023/323) | Cheaper linear layers and compression constructions can help native tree hashing and sparse coefficients | Benchmark after arithmetic cleanup; do not claim its Plonk percentage as Pari row savings |
| [Anemoi/Jive](https://eprint.iacr.org/2022/840), [Griffin](https://eprint.iacr.org/2022/403) | Potential multiplicative-complexity savings and dedicated tree compression | Research only with updated parameter security; do not copy original low round counts |
| [Resultant attacks, CRYPTO 2025](https://eprint.iacr.org/2025/259) | Improved attacks affect the security estimates of several AO hash parameter sets | Recompute the comparison using current secure parameters |
| [Poseidon/Neptune analysis, ToSC 2025](https://eprint.iacr.org/2025/954) | Security depends on mode and concrete instantiation | Review exact field, width, rounds, matrices and mode; this paper does not establish that our hash is broken |
| [Polocolo, EUROCRYPT 2025](https://eprint.iacr.org/2025/926) | Lookup-oriented hash design | Defer: current native Pari exposes no comparable lookup/custom-gate mechanism |
| [HyperNova, revised February 2026](https://eprint.iacr.org/2023/573) | Folding suggests a way to make long history evidence succinct | Defer production integration: this introduces another proof stack and is not a circuit-only Pari optimization |

Poseidon2's main linear-layer savings are not free constraint savings here:
constant multiplications already fold. Measure native hashing, synthesis time,
matrix nonzeros, witness/prover time and memory alongside rows. Before any hash
change, pin independently reproducible BLS12-381 parameters and evaluate the
complete compression/domain construction. Keep protocol hash encodings defined
once and verify native/circuit parity across every tree and external consumer.

Merkle multiproofs are worth a bounded experiment for reshape inputs, but private
indices and fixed circuit size complicate the apparent savings. Sharing paths
because notes have a common block/epoch either needs that fact constrained or a
new family whose selection may reveal clustering. Gating a generic path does not
remove its hash constraints. Existing batched host tree materialization already
shares update work; that is a separate optimization.

## State growth: distinguish four stores

| Store | Current behavior | Useful next work |
| --- | --- | --- |
| Consensus live nullifier trees | Current and previous generation; each generation spans 30 application epochs | Keep indexed trees; ensure retired expanded copies are physically pruned during uptime |
| Retired history archive | Packed nullifier streams plus generation metadata | Retain compact packs; bound reconstruction memory; archive payloads deliberately |
| Authenticated application database | Cnidarium 0.83/RocksDB with versioned JMT nodes and values | Measure and address historical-version retention before choosing a new engine |
| Wallet SQLite | Owned notes/history, full compliance projections, bounded pending history witnesses but growing completed history bundles | Retention by purpose; optional authenticated proof fetching; targeted schema benchmarks |

### Highest-priority storage change: prune while running

[`nullifier_generation_packs::spawn_worker`](../../crates/core/app/src/nullifier_generation_packs.rs)
creates packs while the service runs, but explicitly defers pruning to startup
`prepare`. Thus a continuously running node can accumulate expanded retired
trees **and** their packs. It also scans all retired generation indices after
each notification, including already packed generations.

Use a durable, replayable local maintenance cursor and verified pack receipts.
Have the existing storage writer coordinate bounded deletion batches after
durable pack publication and root verification. Do not let a second worker race
application commits. Keep current/previous trees protected, resume partial work
after a crash, and make maintenance leave the consensus root unchanged.
[`prune_packed_generation`](../../crates/core/component/sct/src/nullifier_tree.rs)
currently collects all relevant keys into a vector; pagination would bound
maintenance memory as generations grow.

The pack already stores `108 + 32*N` bytes for N ordinary nullifiers, reconstructing
the linked leaves rather than serializing all nodes. Random-looking nullifiers
will not compress substantially below this information content. Bigger savings
come from deleting duplicate expanded state and key/index overhead, not putting
another compressor over the existing pack.

A cache limit of one reconstructed generation is a **count** limit, not a byte
limit. Cold proof requests reconstruct its leaves, ordered index and tree levels.
Measure peak memory and cold latency; consider a verified, disposable on-disk
search/path index for large packs. Keep the compact pack canonical and derive the
index from it. Do not make every validator permanently retain a second expanded
archive to accelerate rare queries.

### Database history may outlive logical deletion

The pinned [Cnidarium commit path](https://github.com/penumbra-zone/cnidarium/blob/dd1a08c81d8b3f27083e8a8c47a4e9403786e88e/src/store/substore.rs)
writes JMT nodes and values with versioned keys. It deletes current key indexes
when a logical key is deleted, but this path does not consume stale-node indexes
to garbage-collect old versions. No such collector was found in the installed
0.83 source. Its bounded snapshot cache is not a disk-history collector.

Consequently, pruning application anchors or daily-volume markers does not by
itself establish bounded on-disk JMT history. This is source evidence of retention,
not a measured attribution of our database size. RocksDB compaction alone cannot
recognize distinct versioned keys as obsolete protocol history.

First measure bytes and entries by column family, live key prefix, historical
version, WAL/SST and archive. Then compare safe retained-root garbage collection
or latest-state snapshot rebuild against a backend change. Never remove all old
nodes by age: unchanged current subtrees can still reference old nodes. Retained
roots, readers and proof queries determine liveness.

### QMDB is a credible experiment, not a drop-in DB switch

[Commonware QMDB](https://commonware.xyz/blogs/qmdb) authenticates append-only
operation logs and provides variants with different proof capabilities. Its
[current-state implementation](https://github.com/commonwarexyz/monorepo/blob/bd0f7eb33af26c4aa9831d98d53621ba3cb4b14e/storage/src/qmdb/current/mod.rs)
adds authenticated activity information and pruning machinery. The
[QMDB paper](https://arxiv.org/abs/2501.05262) provides the underlying design.

Evaluate its ordered/current variant against the actual Shieldd workload. We
need prefix/range iteration for predecessor queries, speculative proposal state,
atomic commits, crash recovery, stable reader behavior, canonical state roots,
and nonverifiable local records. In inspected main, Current batches are valid
only on their winning ancestor branch; they are not interchangeable with all
Cnidarium snapshot usages.

Changing the application authentication tree also affects app hashes and
[`key_value` ICS23 proofs](../../crates/bin/shieldd/src/service.rs). That is a
real external proof boundary. Identify consumers and update or deliberately
preserve their verified contract. Do not silently replace its proof bytes.
Our ZK Poseidon trees can remain unchanged while the outer storage engine changes;
this means a DB improvement can preserve note/compliance architecture but will
not directly reduce circuit constraints.

Do not build a permanent multi-backend framework in anticipation. Compare one
contained prototype with current Cnidarium using the same typed operation trace.
Choose one implementation if the measured benefit justifies the integration.

### Archive and wallet retention

Compact blocks are retained in nonverifiable storage; no bounded compact-block
deletion path was found in the inspected component. Their history supports wallet
catch-up and rebuilding missing packs. Moving older blocks to an archive can
bound validator hot storage, but total archive growth remains. Preserve a
verifiable, available route to historical ciphertexts, recovery capsules and
accepted transactions used by audits, disclosures and seizure. Local file
checksums establish integrity against a known checksum, not consensus acceptance.

SQLite itself is not yet an evidenced bottleneck. Compare composite primary keys
and `WITHOUT ROWID` for tree tables, transaction batch sizes and checkpointing
before replacing it. Separate user-retained payment history from reconstructible
caches. Spent-note history proof caches already get deleted, expired reservations
already get cleaned, and validator anchors/volume markers already have pruning;
do not count these as missing features. Older confirmed volume accumulator rows
and payment history need an explicit retention requirement before deletion.

Wallets currently project compliance trees globally. Maintaining only owned and
needed recipient witnesses could reduce wallet storage. The service already has
a batch compliance-proof endpoint. Responses must match the exact current roots,
and targeted witness requests can disclose interest in recipients. Compare full
local projection with padded/batched authenticated fetching rather than silently
changing the wallet's privacy model.

## What Bonsai does not let us remove

[Bonsai](https://eprint.iacr.org/2026/1987) places nullifier history inside account
commitments and uses privately proved receipt positions. Shieldd publishes
nullifiers while hiding the spent note position. Replacing our nullifier with its
position would expose the spend linkage and disrupt RNK-based seizure. Its
account model also changes the privacy and concurrency properties of transfers.
Keep the current note/nullifier architecture for this work.

The useful architectural lesson is separating the small online working set from
large recoverable history, with explicit data-availability responsibilities.
Shieldd already follows part of that model through tiered SCT forgetting and
retired nullifier packs; completing its lifecycle is more valuable than renaming
its trees.

After G retired generations, a ready per-note bundle contains
`floor(G/10) + G%10` proof envelopes, or
`244 * (floor(G/10) + G%10)` proof bytes, plus metadata and pending witnesses.
This grows with time for every unspent old note. A smaller database cannot make
that cryptographic evidence constant-size. Chunk width changes constants;
recursive aggregation/folding changes the proof architecture.

Increasing generation length can reduce proof count at the expense of larger
live trees and cold reconstruction. Test epoch lengths such as 30, 60 and 120
against expected traffic; these are epochs, not necessarily days. Optional wallet
refresh/consolidation can reduce old-note burden but costs transactions, archives
and fees. Neither policy makes total history disappear. Do not expire otherwise
valid offline funds or skip retired-prefix coverage to achieve a smaller state.

## Execution sequence and acceptance criteria

1. **Establish cost instrumentation.** Record exact square rows, allocated columns,
   matrix entries, padded domain, compilation time and witness time per family and
   major gadget. The public API currently exposes domain size, not a full cost
   breakdown. Use temporary read-only compiler instrumentation or propose a small
   upstream diagnostic API; do not create a second compiler. Include regulated,
   unregulated, real-volume, padding, dummy-input and boundary witnesses.
2. **Implement arithmetic reuse and comparisons.** Typed constrained integers,
   shared bits, routing implications, IVK nonzero and tree selectors. For each,
   write rejection tests before replacing the old gadget and compare actual
   relation costs. Preserve native semantics. This is the first implementation
   package I recommend.
3. **Improve disclosure and balance.** Packed statement controls, signed net-value
   commitment, then a small disclosure family if workload frequency warrants it.
   Regenerate all changed keys and registry identities; verify every affected
   proof family and native/circuit statement parity.
4. **Finish storage lifecycle.** Online pack pruning, bounded durable maintenance,
   restart/root-parity checks, cold archive witness serving, and physical-byte
   measurements across repeated rollovers without restarting the node.
5. **Run isolated design experiments.** History chunk width, payload coordinates,
   deduplicated amount, hash/arity pairs, and QMDB. Promote only measured gains
   after reviewing their protocol and privacy implications.

Circuit acceptance requires valid and deliberately malformed witnesses, canonical
field/subgroup encodings, overflow and equality boundaries, both flags/roles,
zero/dummy paths, current freeze/registry bindings, real native proofs and batch
verification. One public statement digest and exact committed-value binding remain
mandatory. For hash/encoding changes, trace circuits → native primitives → domain
records → storage → wallet/CLI → Orbis contracts → docs and fixtures.

Storage benchmarks must include durable commit, restart, corruption recovery,
retained proof queries, maintenance backlog and peak memory. The existing
`nullifier_storage` microbenchmark never commits its populated StateDelta before
timing lookups, so its `dedicated_jmt_hit` label is not evidence of disk lookup or
database lifecycle performance. Extend realistic benchmarks rather than choosing
a DB from that comparison. Use pseudorandom canonical nullifiers, not only small
sequential field elements, and include daily-volume and compliance updates.

Avoid aggregate speedup promises until those measurements exist. Do not sum the
estimates above as independent gains: transformations can change compiler folding,
share the same work, or cross different domain boundaries. The prior native
eight-proof verification result of 1.72 ms also means circuit optimization mainly
targets proving; the much larger complete application timings need separate host
and storage profiling.

The retained Commonware boundary remains unchanged: native compiler/prover/
verifier/kernels, with the documented narrow patch queue. No custom prover,
lookup protocol, recursion backend or formal-verification tooling is introduced
by this research.
