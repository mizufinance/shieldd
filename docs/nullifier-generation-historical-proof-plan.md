# Nullifier generations and historical nonmembership proofs

Status: implementation design for protocol version 2. Unsafe development keys
exist for interoperability tests; activation remains blocked on the release
items listed below.

## Outcome

Bound validator nullifier state to two generation trees while allowing any
unspent note to remain spendable indefinitely.

The design intentionally reveals one bit for each real input:

- recent: the note is in the current or immediately previous generation; or
- old: the note predates the previous generation.

An old spend does not reveal which retired generation contains the note. Every
old spend proves nonmembership for the same complete retired prefix committed
by the current consensus window.

This design keeps the existing application epoch and groups 30 application
epochs into one nullifier generation. It does not introduce another clock.

## Fixed protocol choices

| Item | Choice |
| --- | --- |
| Generation length | 30 application epochs |
| Consensus-active trees | current and previous |
| Generation tree | fixed-depth quaternary Poseidon377 indexed Merkle tree |
| Tree depth | 20 quaternary levels |
| Capacity | `4^20 = 2^40` inserted nullifiers per generation, including one sentinel slot |
| Key order | canonical numeric order in the BLS12-377 scalar field |
| Retired commitment | ordered Poseidon377 history head |
| Base proof | Groth16 on BLS12-377 |
| Base proof shape | one fixed shape for every generation |
| Recursive compression | one Groth16 proof on BW6-761 verifies 10 base proofs |
| Chunk width | 10 generations |
| Base proof wire size | 192 bytes |
| Chunk proof wire size | 480 bytes |
| Wallet strategy | update one generation proof when a generation retires; compress every tenth proof |
| Retired-tree storage | immutable compressed generation pack retained by ordinary full nodes |
| Initial witness service | ordinary full-node SCT RPC; no dedicated archive-node role |

There is no SHA-256 nullifier tree, variable-depth proof, 32/256 split, proof
shape selector, or separate deep verifying key. SHA-256 is used only as a
non-consensus checksum for generation packs and by gnark's standard BSB22
commitment encoding for the outer proof.

The rejected global-root/block-proposer alternative is out of scope.

## Generation state machine

Let generation `N` be current and `N-1` be previous. The consensus state is:

```text
NullifierGenerationState {
    protocol_version,
    activation_epoch,
    current_generation,
    current_tree,
    current_root,
    current_start_position,
    previous_tree,
    previous_root,
    recent_position_floor,
    archived_generation_count,
    archived_history_head,
}
```

The public transaction projection is:

```text
NullifierWindow {
    protocol_version,
    current_generation,
    recent_position_floor,
    archived_generation_count,
    archived_history_head,
}
```

The fields mean:

- `current_generation`: index of the generation receiving new nullifiers.
- `recent_position_floor`: first SCT position covered by the previous tree.
  A real note with `position < recent_position_floor` is old.
- `archived_generation_count`: number of retired generations in the committed
  prefix. It is always `current_generation - 1`.
- `archived_history_head`: ordered commitment to every retired generation's
  index, root, and SCT position interval.

Generation zero is the first live Poseidon tree. At genesis there is no previous
tree and the retired prefix is empty. The first rollover retains generation zero
as previous but retires nothing; the second rollover retires generation zero and
creates the first historical proof obligation. This prototype requires genesis
activation or a full state replay; it does not support importing an existing
SHA/JMT root.

At a generation boundary:

1. Verify the current and previous durable trees match their committed roots.
2. Create the next empty Poseidon tree.
3. Append the previous generation to the retired history, if one exists.
4. Mark the current tree as previous.
5. Make the empty tree current.
6. Set `recent_position_floor` to the former current start position.
7. Emit typed frozen and archived generation events.
8. Remove the retired tree's three committed metadata keys in this consensus
   transition; retain its node-local tree records until its generation pack is
   durably written and root-verified.

Only this state transition changes consensus state. Export and physical pruning
are node-local operations.

## Indexed generation tree

### Leaf format

Each occupied slot commits to:

```text
IndexedNullifierLeaf {
    value,
    next_index,
    next_value,
    is_lower_sentinel,
    is_terminal,
}
```

The leaf commitment is:

```text
Poseidon377Hash5(
    leaf_domain,
    value,
    next_index,
    next_value,
    is_lower_sentinel,
    is_terminal,
)
```

Position zero is a canonical lower sentinel. It represents negative infinity,
not field element zero. The explicit flag allows nullifier zero to remain a
valid ordinary nullifier. A terminal leaf represents positive infinity, so the
maximum field element is also valid.

Required invariants are:

- only position zero is the lower sentinel;
- the lower sentinel has zero value; it is terminal only in an empty tree;
- a terminal leaf has successor index and successor value zero;
- a nonterminal leaf has a nonzero successor index below `2^40`;
- every ordinary value and successor value is a canonical field element;
- ordinary leaves form one strictly increasing linked list.

### Tree shape

The tree has 20 quaternary layers. Every authentication path therefore has
exactly 20 layers and three sibling hashes per layer. Internal nodes use
`Poseidon377Hash4(0, children)`.

The fixed shape has two consequences:

- all valid generation proofs use one circuit and one BLS12-377 verifying key;
- path length reveals nothing about a nullifier or a generation.

The capacity is approximately 1.1 trillion leaves per generation. Capacity
exhaustion is a deterministic consensus error; it cannot silently switch tree
or proof shape. Operational activation must demonstrate that the configured
generation interval remains far below this bound under the maximum accepted
transaction load.

### Insertion

Nullifiers are inserted in canonical block execution order.

For a new value `x`:

1. Reject an existing exact-value index entry.
2. Find the greatest ordinary value below `x`, or position-zero sentinel.
3. Verify `x` is below that leaf's successor unless it is terminal.
4. Append a new leaf at `leaf_count` with the old successor.
5. Rewrite the predecessor to point to the new leaf.
6. Update both quaternary authentication paths.
7. Commit the new root and increment the leaf count.

Direct value and descending-order indexes are node-local acceleration data.
The root, schema version, leaf count, and generation state are committed state.
Root and linked-list constraints make an incorrect acceleration index
detectable when it produces a witness or root.

### Nonmembership witness

A witness contains one committed predecessor leaf, its position, and its fixed
20-layer path. It proves:

```text
(is_lower_sentinel OR leaf.value < nullifier)
AND
(is_terminal OR nullifier < leaf.next_value)
AND
MerkleRoot(leaf, path, position) = generation_root
```

Comparisons use canonical numeric field order, not serialized byte order. The
strict inequalities reject a spent nullifier even if a pack reader returns the
wrong predecessor.

## Retired history commitment

The empty history head and append operation are:

```text
H_0 = Poseidon377Hash1(empty_history_domain, 0)

H_{i+1} = Poseidon377Hash5(
    history_node_domain,
    H_i,
    generation_index_i,
    generation_root_i,
    generation_start_position_i,
    generation_end_position_i,
)
```

The index prevents reordering. The root identifies the exact tree. The start
and end positions bind the generation to the same SCT interval used to classify
notes as recent or old.

All history heads and roots are canonical BLS12-377 scalar-field encodings.

## Base generation proof

The BLS12-377 Groth16 proof has eight public inputs:

```text
protocol_version
nullifier
generation_index
generation_root
generation_start_position
generation_end_position
start_history_head
end_history_head
```

Its private witness is the indexed nonmembership witness. The circuit proves:

1. protocol version is exactly version 2;
2. public and private nullifiers agree;
3. generation and SCT positions are in their canonical bit ranges;
4. the indexed leaf and sentinel flags are canonical;
5. the strict predecessor/successor gap contains the nullifier;
6. the fixed Poseidon authentication path reaches `generation_root`; and
7. appending this generation claim to `start_history_head` produces
   `end_history_head`.

The native historical witness is verified before proving, and the resulting
Groth16 proof is verified before it enters the wallet cache.

## Recursive chunk proof

One BW6-761 Groth16 circuit verifies exactly ten BLS12-377 generation proofs.
Its five public inputs are:

```text
protocol_version
nullifier
chunk_index
start_history_head
end_history_head
```

For inner proof `j` in chunk `c`, the circuit requires:

```text
inner.protocol_version = protocol_version
inner.nullifier = nullifier
inner.generation_index = 10*c + j
inner.start_history_head = running_head
running_head = inner.end_history_head
```

After proof ten, `running_head` must equal the public end head. Generation roots
and position intervals inside completed chunks are private to the outer proof.

The outer proof uses gnark's standard recursive Groth16 verifier and BSB22
commitment wire. The consensus encoding is the 288-byte BW6 Groth16 proof plus
one 96-byte commitment and one 96-byte commitment proof, for 480 bytes total.

The chunk width is not a security threshold. Ten is the chosen storage and
verification tradeoff: it bounds the uncompressed tail to nine base proofs and
amortizes ten generations into one pairing verification. Changing it changes
the circuit, keys, protobuf contract, fee model, and protocol version.

## Wallet lifecycle

The wallet stores one cache per unspent nullifier:

```text
HistoricalProofCache {
    protocol_version,
    nullifier,
    covered_generation_count,
    terminal_history_head,
    completed_chunks,
    tail,
    state,
    last_error,
}
```

Legal states are pending backfill, updating, ready, blocked on history, blocked
on prover, and invalid. Failures are persisted and bounded to 1,024 bytes.

When one generation retires, the wallet:

1. requests that generation's typed nonmembership witness from an ordinary
   full node;
2. verifies the witness against the archived root;
3. proves one BLS12-377 generation proof;
4. verifies that proof locally;
5. appends it to the tail and durably stores the cache;
6. when the tail reaches ten, proves and verifies one BW6-761 chunk;
7. replaces those ten base proofs with the chunk and durably stores the cache.

The wallet therefore does not rebuild all historical proofs when an epoch or
generation changes. In the common case it computes one approximately 42 ms
base proof once per nullifier per 30 application epochs. Every tenth generation
it additionally computes one approximately 2.4 second recursive proof on the
development benchmark machine. These measurements use unsafe local setup and
are not release performance guarantees.

If a wallet was offline or lost its cache, it can rebuild from retained
generation packs. Rebuild cost is linear in retired generations but does not
affect chain liveness. A prover service is optional; the typed provider boundary
also permits local proving.

## Spend construction and privacy

The action circuit authenticates each real input's SCT position and outputs a
history-required bit:

```text
history_required = real_input AND position < recent_position_floor
```

Equality with the floor is recent. Existing fixed-slot dummy inputs are gated
out by their existing `is_dummy` bit; the generation design adds no dummy audit,
dummy tree, or dummy proof protocol.

Transaction construction gathers nullifiers whose authenticated
`history_required` bit is one and attaches one historical bundle per nullifier
in canonical input order.

For a window covering `N` retired generations, every old nullifier carries:

```text
floor(N / 10) chunk proofs
N mod 10 base generation proofs
```

This shape depends only on the current chain window. It does not depend on the
note's creation generation. The base tail indices and roots are the same public
retired tail for every old spend; completed chunks reveal only their common
start and end history heads. The nullifier is already public as part of a spend.
Consequently the bundle reveals old versus recent, but not which retired
generation created the old note.

## Consensus verification

Stateless validation:

1. Enforce transaction action, nullifier, vector, and proof-byte limits.
2. Require no nullifier window for a spend-free transaction.
3. Require one historical bundle for each input classified old by its action
   proof, and no bundle for a recent input.
4. Require canonical chunk and tail counts for the claimed window.
5. Verify completed chunks in order from the empty history head.
6. Verify the remaining base proofs in order.
7. Require the resulting head to equal `archived_history_head`.
8. Bind the verified historical capability to the transaction authorization
   hash so it cannot be reused after transaction mutation.

Stateful validation requires the transaction window to equal current consensus
state, then checks each public nullifier against the current and previous
generation trees. Validators never load retired trees during transaction
verification.

Proof verification occurs before state mutation. Parsed proof lengths are exact:
192 bytes for base proofs and 480 bytes for chunks.

## Cost model

Let `N` be retired generation count, `q = floor(N/10)`, `r = N mod 10`, and `m`
the old input count.

Per old input:

- proof bytes grow as `480q + 192r`, plus fixed protobuf fields;
- verifier work is `q` BW6 verifications plus `r` BLS verifications;
- wallet steady-state update work is one BLS proof per generation and one BW6
  proof every ten generations.

The transaction gas model charges proof bytes and pairing verification by this
exact canonical shape. Placeholder values currently distinguish one BLS verify
from the more expensive BW6 verify; release activation requires calibrated
benchmarks on validator hardware and corresponding parameter review.

The design is optimized for the first 50 retired generations while remaining
valid indefinitely. At generation 50 an old input carries five chunk proofs and
no base tail. Generation 51 carries five chunks and one base proof. There is no
hard 50-generation cutoff.

## Compressed generation packs and pruning

### Purpose and proof compatibility

Retired-tree compression is a storage change, not a circuit or consensus-proof
change. A pack reader reconstructs the same `IndexedNullifierWitness`: one
predecessor leaf, its leaf position, and exactly 20 quaternary Poseidon layers.
The existing native witness checks and BLS12-377 Groth16 circuit verify it
against the same retired generation root. Base proofs, recursive chunks,
verifying keys, public inputs, transaction encoding, privacy, and gas shape are
unchanged.

### Canonical pack contents

One immutable pack contains:

```text
NullifierGenerationPack {
    format_version,
    protocol_version,
    generation_index,
    generation_root,
    generation_start_position,
    generation_end_position,
    leaf_count,
    insertion_order_nullifiers,
    checksum,
}
```

`insertion_order_nullifiers[i]` is the ordinary nullifier inserted at leaf
position `i + 1`; position zero is the implicit lower sentinel. The pack does
not serialize Merkle nodes, indexed leaves, exact-value indexes, ordered-value
indexes, or database keys. The binary format uses fixed-width canonical
field-element encodings and bounded lengths. A checksum detects damaged or
partial files but is not a consensus commitment; the reconstructed Poseidon
root provides the authoritative integrity check.

The nullifier stream is intentionally expected to be incompressible. The
storage win comes from removing redundant nodes, indexes, keys, and record
metadata. The implementation target is at least 85% less storage than the
expanded node-local representation, with approximately 90% used for capacity
planning. This target must be measured on a generation containing at least one
million nullifiers before activation.

### Deterministic reconstruction

Opening a pack performs these steps before it can serve a proof:

1. Validate format and protocol versions, fixed field encodings, exact file
   length, checksum, count, and generation metadata.
2. Reject duplicate nullifiers and values outside the canonical scalar field.
3. Assign leaf positions from the recorded insertion order.
4. Sort `(nullifier, position)` pairs and derive the sentinel and each ordinary
   leaf's exact successor position and value.
5. Commit every leaf and build all 20 Poseidon levels, filling absent positions
   with the protocol's fixed zero hashes.
6. Require the reconstructed root to equal `generation_root` and the retired
   generation record before marking the pack ready.

The ready in-memory representation contains a sorted predecessor index, leaf
records by position, and packed Merkle levels. These are disposable derived
caches and must never be trusted without the root check. Startup may build them
eagerly for small packs and lazily with a bounded cache for large histories.
Only one reconstruction per generation may run concurrently, and query
concurrency and cache memory remain bounded.

### Full-node lifecycle

Ordinary full nodes are the initial pack producers and witness providers:

1. At rollover, retain the expanded retired tree long enough to package it.
2. Stream ordinary leaf values in position order into a temporary binary pack;
   do not materialize the full generation twice in memory.
3. Flush and sync the temporary file, reopen it through the production pack
   reader, reconstruct the tree, and verify its root and metadata.
4. Atomically rename it to a deterministic path under the node home and sync
   the parent directory.
5. Record a node-local completion receipt bound to generation, root, positions,
   leaf count, byte length, format version, and checksum.
6. Delete the expanded nodes, leaves, and exact/ordered indexes only after the
   receipt, pack, and retired record all agree and the generation is neither
   current nor previous.
7. Serve `ArchivedNullifierProof` from current/previous expanded trees when
   applicable and from the verified pack for retired generations.

Packing runs outside consensus block execution. A failed or interrupted pack
job leaves the expanded tree intact and is safely retryable. A `.partial` file
is never queryable. Full-node startup scans receipts and packs, rejects or
quarantines incomplete files, and resumes missing work. Pruning is automated
but never precedes durable pack verification.

The initial deployment keeps all completed generation packs on every ordinary
full node. This makes historical witness support part of the existing SCT RPC
and avoids an immediate archive-node deployment, archive discovery protocol,
remote object-store dependency, and restore workflow. It does not make history
constant-size: full-node disk grows by approximately 32 bytes per retired
nullifier plus pack metadata.

### Recovery source and deferred archive tier

Compact blocks already publish nullifiers in the same execution/insertion
order used by the generation tree, and generation-boundary compact blocks carry
the nullifier window. Retained compact-block history is therefore the canonical
slow recovery input for rebuilding a missing pack. A rebuild must replay the
exact generation interval, apply each block's nullifiers before applying that
block's end-of-epoch generation transition, and accept the result only if it
reaches the retired root.

Initial activation requires at least one of the following to be true for every
retired generation on a node claiming historical-proof support:

- its verified generation pack is present; or
- the node retains the complete compact-block interval needed to regenerate it.

Existing node backup/export and bootstrap-snapshot flows include the immutable
pack directory and verify every included pack during restore. A state-synced
node that receives neither packs nor the necessary compact-block intervals must
start with historical-proof serving disabled and advertise that state through
health/readiness; it must not return an unverified or incomplete witness. For
the initial deployment, supported validator/full-node bootstrap artifacts
include all retired packs, avoiding any separate archive-node protocol.

The following are explicitly deferred, not required for initial activation:

- a dedicated archive-node binary or operational role;
- archive-provider discovery and wallet failover across provider classes;
- remote pack replication, object storage, or content-addressed distribution;
- partial-pack range queries or peer-to-peer pack transfer.

Before operators are allowed to prune both a generation pack and its compact
block recovery interval, a later availability design must ensure another
durable source. The pack format and reader should remain reusable by that tier.

### Implementation sequence

Implementation status: the binary codec, deterministic reconstruction,
pack-backed SCT RPC, automatic post-commit packing, startup receipt/pruning,
compact-block recovery, backup/bootstrap inclusion, diagnostics, and focused
restart tests are implemented on `codex/nullifier-generations`. Large-scale
storage/latency benchmarks and application end-to-end validation are downstream
integration work, not work for this Shieldd PR.

The pack work is divided so that no step changes the ZK proof contract and no
step can delete the only usable copy of a generation:

1. **Specify and test the pack codec.** Add typed header and receipt records,
   fixed-width binary encode/decode helpers, exact-length and allocation bounds,
   corruption tests, deterministic byte vectors, and a format-version guard.
   Replace the current canonical JSON export format; no compatibility reader is
   required for this prototype.
2. **Extract the pure reconstruction engine.** Build indexed leaves, the sorted
   predecessor table, and all Poseidon levels from insertion-order nullifiers.
   Test parity with the live tree after every insertion for empty, boundary,
   random-order, duplicate, zero, maximum-field, and large synthetic cases.
3. **Add pack-backed witness lookup.** Resolve the predecessor, assemble the
   exact existing `IndexedNullifierWitness`, and run `verify_nonmembership`
   before returning it. Feed that witness to the existing gnark base prover and
   require byte-valid Groth16 verification in an interoperability test.
4. **Replace manual JSON export.** Make the node command write the binary pack
   via temporary file, flush, sync, production-reader reopen, root verification,
   atomic rename, directory sync, and receipt commit. Keep a diagnostic command
   to inspect and verify a pack without mutating node state.
5. **Automate retirement packing.** Persist a typed pending-pack job when a
   generation retires. A node-local worker processes jobs after committed state
   exposes them, with single-flight per generation, bounded resources, retries,
   and metrics. Consensus execution only records the retired generation; it
   never performs filesystem I/O.
6. **Serve packs through the existing RPC.** Give the SCT query server a pack
   repository rooted in the node home. For retired generations, resolve and
   root-validate the pack, then return the unchanged
   `ArchivedNullifierProofResponse`. Rename internal wallet/provider concepts
   from `Archive` to `HistoricalWitnessSource`; the protobuf RPC name may remain
   initially because its wire semantics do not expose the backing store.
7. **Automate safe expanded-tree pruning.** Prune only after a matching verified
   pack and local receipt exist. Make restart and crash-point tests cover every
   write/sync/rename/receipt/prune boundary. Never prune the pack automatically.
8. **Add compact-block recovery.** Replay nullifiers between the retired
   generation's boundaries using consensus execution ordering, rebuild the
   pack, and require the committed root. Exercise recovery after deleting a test
   pack while retaining compact blocks.
9. **Integrate node bootstrap.** Include packs in full-node backup/export and
   supported bootstrap snapshots, validate them on restore, and expose
   historical-proof readiness when state sync lacks the required local data.
10. **Verify the Shieldd boundary.** Run focused codec, reconstruction, RPC,
    restart, proof interoperability, and circuit checks. Keep benchmark and
    application end-to-end harnesses out of this repository change.

The cutover is complete when the old JSON archive type, all-record export path,
manual archive-provider assumption, and obsolete tests/docs are deleted. There
is one pack format and one historical witness path.

## Repository integration

This PR is intentionally limited to Shieldd. It does not integrate bankd, add a
bankd end-to-end suite, or redesign Shieldd's service/storage architecture.
Existing typed state and provider boundaries are extended only where the
generation, pack, wallet-proof, transaction, or circuit flow requires it. The
public Shieldd types and proof artifacts remain usable by a later bankd
integration, where whole-system performance should be measured.

The implementation follows these boundaries:

- `crates/core/component/sct`: generation state machine, native indexed tree,
  history commitment, pack codec/reconstruction, RPC witness types, and safe
  prune logic.
- `tools/gnark/cmd/historicalproofspike`: fixed base circuit, ten-proof recursive
  circuit, unsafe interoperability artifact generator, and focused timing
  output used to validate the construction.
- `crates/crypto/proof-params`: strict gnark JSON decoding, canonical proof
  encodings, embedded verifying keys, and Arkworks verification.
- `crates/view`: durable per-nullifier cache, full-node historical-witness
  client, update worker, and local/provided prover interface.
- `crates/core/transaction`: canonical history bundle shape, authorization
  binding, serialization, and gas accounting.
- `crates/core/app`: stateless cryptographic verification, current-window
  binding, and two-tree stateful nullifier checks.
- shielded action circuits: authenticated old/recent classification using the
  public recent position floor.

## Formal verification scope

The changed action circuits use the existing exact-row workflow: the 48-bit
old/recent classifier, dummy gating, public floor, history-required bits, and
statement hash projection are extracted from the deployed R1CS and refined into
independent Lean protocol semantics for every fixed action shape.

The historical base/chunk circuit has an independent Lean relation and security
consequences for indexed-gap nonmembership, metadata/head chaining, consecutive
generation indices, common-nullifier binding, and the public disclosure
boundary. Those theorems are conditional on the global indexed-tree invariant
and Groth16 verification soundness. The recursive Groth16 verifier implementation
and cryptographic zero knowledge remain explicit trusted cryptographic
boundaries; the current extractor does not translate that verifier gadget into
an exact Lean R1CS refinement.

## Downstream activation work

The protocol must not activate using the checked-in unsafe test setup. The work
in this section is outside this Shieldd PR and belongs with release/integration
work.

### Remaining activation work

- Implement and configure a production historical prover behind
  `HistoricalProofProvider`, or ship a supported local proving runtime.
- Produce canonical release artifacts for both circuits, including constraint
  systems, proving keys, verifying keys, manifests, setup provenance, and
  deterministic interoperability vectors.
- Calibrate gas and operational limits in the downstream application where the
  complete transaction verifier and workload can be measured together.

### Cryptographic release gates

- Ceremony-backed BLS12-377 and BW6-761 keys.
- Independent review of the indexed-leaf constraints, sentinel rules, numeric
  comparison, path ordering, history transition, recursive public-input
  binding, and BSB22 encoding.
- Cross-language vectors covering membership rejection, lower and upper gaps,
  nullifier zero, maximum field element, nonzero path positions, malformed
  flags, wrong roots, wrong indices, wrong position intervals, wrong history
  heads, reordered proofs, and trailing bytes.
- Formal evidence for the newly deployed circuit/gadget surface in
  `shieldd-formal`, pinned to the exact activating Shieldd commit. The current
  spike tests do not substitute for that evidence.

Whole-system end-to-end coverage and performance calibration should be done in
the downstream application integration so Shieldd and bankd are measured
together. This PR keeps the focused Shieldd correctness and interoperability
tests needed to make that integration possible.

## Shieldd PR acceptance criteria

This Shieldd PR is complete when all of the following hold. Production
activation additionally requires the remaining release work above.

1. Consensus stores and checks only current and previous generation roots for
   live nullifier validation.
2. Every retired root is bound once, in order, to its exact SCT interval.
3. One fixed-depth Poseidon witness proves every valid generation gap.
4. No valid field nullifier is consumed as a sentinel value.
5. Every old input proves the full current retired prefix, independent of note
   origin generation.
6. A wallet can persistently advance one generation at a time and compress each
   complete ten-proof tail without rebuilding prior chunks.
7. Validators accept canonical Rust encodings of gnark-produced base and chunk
   proofs and reject mutated claims and encodings.
8. A generation pack is durably written and root-verified before node-local
   expanded-tree pruning, and an ordinary full node can serve the same witness
   after restart from that pack.
9. The chain continues past 50 generations without a format or verifier-key
   transition.
10. Focused Shieldd circuit, proof-interoperability, pack, RPC, and restart tests
    pass; the formal evidence and its cryptographic trust boundary are explicit;
    unsafe development keys remain visibly non-activatable.
