# Experiment 3 (phase 3b) — payment circuits (BLS12-381)

Machine: Apple M5 Pro, 18 cores
Date: 2026-09-10 (previous runs 2026-08-26/27/31, 2026-09-02; this run
      measures the position-nullifier construction — no PRF, no per-account
      key, sparse Merkle tree instead of the indexed tree — under both the
      Pedersen and the Poseidon hash instantiation)
Commit: d493c38 (+ uncommitted circuit changes described below)
Profile: `cargo bench` (release)
Threads: **single-threaded** (the default). Set `ZKPARI_BENCH_THREADS=0`
         for all cores, or `=N` for N.
Sampling: prove = median of 5; verify = mean over a >=100 ms budget loop;
          keygen = a single sample.

## Circuits

The paper's private-transfer relations, in `src/circuits/` behind the
`circuits` feature:

- **Private transfer** (the paper's R_send / R_recv): unlinkable payments.
  An account's entire public state is **one hash commitment**
  `Com_acct(b, rootnull; r)` — two data slots: balance and the root of the
  owner's nullifier tree — opened in-circuit as a public input. **Zero**
  committed-input blocks, so the proof is 2 G1 + 1 F (128 B) and
  verification is 3 pairings regardless of relation.

  **The nullifier is the receipt's position** in the receipt log:
  `null = pid`. There is no PRF and no per-account key `kappa`. Nullifiers
  are never published — they live only inside the receiver's committed
  tree and inside proofs — so pseudorandomness would buy nothing; soundness
  relies only on positions being unique, which the MMR opening already
  binds.
  - R_send: three commitment openings — `com -> (b, rootnull)`,
    `com' -> (b - v, rootnull)` with the *same* root witness (a send never
    touches the tree), `rho = Com_rec(v, Sen, Rec; r'')` — plus the
    `0 <= v <= b` range checks. **No tree, no depth parameter.** Statement
    (paper order): `(Sen, com, com', rho)`.
  - R_recv: the same two account openings (old root in `com`, post-insertion
    root in `com'`) and the receipt opening, the MMR opening of `rho` at
    witnessed position `pos` under a revealed anchor (fixed at depth 40 —
    2^40 receipts of capacity, ~4 months of history at 100K TPS; the path's
    left/right ordering is driven by the bits of `pos`, so the proof binds
    the position), **and the in-circuit SMT insertion of that same
    position** into the receiver's nullifier tree. Both tree roots are
    witnesses — nothing tree-related ever appears on the wire. Statement
    (paper order): `(Rec, com, com', rootrho)`.

  Both statements are 4 public values (|x| = 5 with the constant-one
  input). Position-derived nullifiers are the Faerie-Gold hedge: distinct
  receipts always carry distinct nullifiers, so no send can block another
  pending payment.

- **Operation hiding** (the paper's R_op, §"Hiding the operation type"):
  one circuit for both operations over the shared statement
  `(A, com, com', rho, rootrho)` (|x| = 6), with a witness bit selecting
  the branch. The selector muxes the balance delta, the committed
  nullifier roots, and the published receipt's preimage, and gates the
  receive-only equalities (the MMR root check and the SMT insertion's two
  root checks). Receipts gain a trailing *type* slot: sends publish their
  real receipt with type 1, receives publish a dummy fixed to type 0, and
  the in-circuit consumed receipt pins type = 1 — so dummies are
  unspendable and the MMR grows by exactly one leaf per operation either
  way. Both branches synthesize the **identical** constraint count
  (asserted in the bench gate and unit tests), so neither the wire format
  nor the proving cost leaks the operation type.

### Hash instantiations

Every hash in the scheme (`src/circuits/hasher.rs`) is a single
collision-resistant hash used for Merkle nodes and both commitments,
routed by a domain tag. Two interchangeable instantiations are benchmarked;
a deployment picks one:

- **Pedersen over Jubjub** (Sapling-style): preimage = 1-byte domain tag +
  canonical 32-byte LE encoding of each field element (the in-circuit
  `to_bytes_le` enforces canonical decomposition); digest = x-coordinate of
  a fixed-base MSM with one 8-bit window of doubling powers per byte,
  sliced to the exact preimage length (~5.6 R1CS/bit). Measured per call:
  node hash (2 slots) 3,181 R1CS; Com_acct (3 slots) 4,773; Com_rec 6,365
  (4 slots) / 7,957 (5 slots). Deployment notes as before: fixed-seed
  generators would be nothing-up-my-sleeve; commitment randomness would
  use a single-base doubling chain (Sapling's windowed Pedersen).
- **Poseidon** over the BLS12-381 scalar field: width 3 (rate 2, capacity
  1), alpha = 5, 8 full + 57 partial rounds (the Poseidon-128 parameter
  set for a 255-bit prime at t = 3). Inputs are absorbed as field elements
  directly, no byte decomposition; the domain tag and input arity sit in
  the capacity slot as the initial value, so domain separation costs no
  rate. Measured per call: node hash **240 R1CS** (one permutation);
  Com_acct 483 (two permutations); Com_rec 483 / 726. Round constants and
  MDS come from the reference Grain LFSR (`skip_matrices = 0`; a deployment
  would run the reference matrix checks).

Since there is no PRF call site any more, the Sapling *split* (Pedersen
for structure, SHA-256 for the nullifier) is gone with it: the SHA-256
gadget (~79k R1CS in the previous R_recv) is simply deleted.

### In-circuit `SMT.VerifyInsert` (R_recv only)

The per-account nullifier tree is a *user-maintained* **sparse Merkle
tree** (Dahlberg–Pulls–Peeters) over the whole position space: depth
`l` = bits of `pid`, leaf `pid` is `1` iff that receipt has been claimed,
and empty subtrees of height `h` have a fixed default digest
`defaults[h]` (`defaults[0] = 0`, `defaults[h+1] = H(defaults[h],
defaults[h])`), so only claimed paths are ever stored. Its root lives
*inside* the account commitment, so the ledger stores nothing about it.

- The insertion proof is the `l` siblings on `pid`'s path. The gadget
  recomputes the root twice along the same siblings: with leaf `0` (must
  equal `rootnull` — the position was unclaimed) and with leaf `1`
  (yields `rootnull'`). **`2l` node hashes, no comparisons, no leaf
  encoding, no predecessor logic** — the leaf-`0` chain *is* the
  non-membership argument, so a double-receive is unsatisfiable.
- The depth is fixed by the **position space**, not by per-account
  activity: `l = 48` here (2^48 positions is ~89 years at 100K TPS). This
  replaces the previous `d in {10, 20}` sweep. The receipt-tree opening
  witnesses 40 position bits; the SMT path is selected by those same bits
  zero-padded to 48, which pins the high bits and makes the position the
  MMR binds and the position the tree records the same integer (tested:
  claiming `pos + 2^40` with the same opening is unsatisfiable). At
  `l = 64` the Pedersen R_recv/R_op would add 32 more node hashes (~102k
  R1CS) and cross into the 2^21 SR1CS domain; Poseidon would add ~7.7k.
- Epoch pruning is gone from the protocol. Whatever a wallet drops from
  its local tree is a client-side policy invisible to the ledger and the
  circuit; the formal protocol keeps the whole SMT.
- What the ledger does per transaction: verify the proof and
  compare-and-swap the account's **single 32-byte commitment**. No
  hashing, no `pi_mt` (l x 32 B) on the wire, no nullifier, and no tree
  root either. Since ZK-Pari batch verification is independent of circuit
  size (experiment 2), the added constraints cost the ledger nothing at the
  margin — only the prover pays.
- Ledger state stays O(accounts): **32 B per account** (one commitment) +
  the receipt-MMR frontier and bounded root history.

What stays native: the ledger's root-history check on the revealed receipt
anchor (`rootrho in T`, the W most recently recorded roots — a set lookup;
hence `rootrho` is a public input to R_recv), receiver registration, and
R_reg (which now opens `Com_acct(Init[A], root_empty; r_A)` and proves
knowledge of the signing key; no `kappa`).

The gadget circuits are plain R1CS (ark-r1cs-std) fed through the
R1CS-to-SR1CS adapter: `r1cs` is what the gadgets emit, `sr1cs` is what the
prover pays for (~2x), and the FFT domain rounds `sr1cs` up to a power of
two. `prove` includes circuit synthesis, as everywhere in these benches.

Before the table, the bench runs an end-to-end flow per backend (receipts
depth 40, SMT depth 48) as a correctness gate: Alice sends 300 to Bob with
a real R_send prove/verify, the ledger compare-and-swaps her single
commitment, appends `rho` to the receipt MMR, and records the new root in
its history; Bob locates `rho`'s position in the public log, marks it
claimed in his local SMT, recommits `(b + v, rootnull')`, and proves
R_recv against the recorded anchor — the submission is
`(Rec, com', rootrho, proof)`, with no nullifier and no tree root on the
wire. The gate then checks that tampering with *any* of the 8 public-input
slots (4 recv + 4 send) is rejected, that a claim of the same receipt at a
wrong position is both unwitnessable and rejected as a forged proof, that
replaying the receive against Bob's updated commitment is rejected, and
that a second claim of the same position against Bob's *current*
commitment (forged with the true siblings) is unsatisfiable.

## Results (2026-09-10, `cargo bench --bench circuits`)

```
  circuit                  │    r1cs │    sr1cs │   domain │ |x| │ keygen ms │ prove ms │ verify us │ proof B
  ─────────────────────────┼─────────┼──────────┼──────────┼─────┼───────────┼──────────┼───────────┼────────
  R_send pedersen          │   16109 │    32227 │    32768 │   5 │    1208.3 │    936.7 │     827.0 │    128
  R_recv pedersen          │  449007 │   898023 │  1048576 │   5 │   32545.4 │  22612.0 │     776.1 │    128
  R_op pedersen            │  457356 │   914723 │  1048576 │   6 │   31273.8 │  23452.1 │     784.1 │    128
  R_send poseidon          │    1647 │     3303 │     4096 │   5 │     179.1 │    143.5 │     880.0 │    128
  R_recv poseidon          │   34569 │    69147 │   131072 │   5 │    4166.4 │   3194.2 │     793.8 │    128
  R_op poseidon            │   35546 │    71103 │   131072 │   6 │    4240.1 │   3257.3 │     880.9 │    128

  Receipt tree depth 40; nullifier SMT depth 48. |x| counts the leading constant 1. Proofs are 2 G1 + 1 F.
```

Where the constraints go (R_recv; R_op adds one more 5-slot receipt hash
plus muxes, ~8.3k Pedersen / ~1k Poseidon):

| component                      | hashes | Pedersen R1CS | Poseidon R1CS |
|--------------------------------|-------:|--------------:|--------------:|
| receipt-MMR opening (depth 40) |     40 |       127,240 |         9,600 |
| SMT insertion (2 x 48)         |     96 |       305,376 |        23,040 |
| Com_acct x2 + Com_rec          |      3 |        15,911 |         1,449 |
| range checks, bits, selects    |      — |          ~480 |          ~480 |
| **total**                      |    139 |   **449,007** |    **34,569** |

R_send is exactly its three commitment openings plus range checks: 16.1k
R1CS under Pedersen — dropping the `kappa` slot from both account openings
(-3.2k vs. phase 3a) pulls it back under the 2^15 SR1CS boundary, halving
the FFT domain and the prove time (1,577 ms -> 937 ms). Under Poseidon it
is 1.6k R1CS in a 2^12 domain, 144 ms.

## Construction history

Earlier variants of these relations were measured on the same machine.

**2026-09-02 (phase 3a) — CRPRF nullifiers, indexed Merkle tree.**
`Com_acct(b, kappa, rootnull; r)` with a per-account PRF key; the
nullifier `CRPRF_kappa(recv, pos)` was a SHA-256 call (~79k R1CS) inside
R_recv, and the nullifier tree was an indexed Merkle tree (sorted linked
list in the leaves) whose insertion cost four hash chains of `depth`
(~12.7k R1CS per level) plus three leaf hashes and two 128-bit
comparisons; depth swept over {10, 20}. Pedersen/Jubjub for everything
structural, SHA-256 for the PRF:

```
  R_send                   │   19293 │    38595 │    65536 │   5 │    1896.8 │   1577.1 │     747.5 │    128
  R_recv d10               │  370020 │   740049 │  1048576 │   5 │   28672.8 │  20867.5 │     760.3 │    128
  R_recv d20               │  497360 │   994729 │  1048576 │   5 │   31594.8 │  21896.1 │     750.0 │    128
  R_op d10                 │  378369 │   756749 │  1048576 │   6 │   30677.4 │  21022.7 │     742.5 │    128
  R_op d20                 │  505709 │  1011429 │  1048576 │   6 │   30553.9 │  21558.5 │     756.2 │    128
```

Relative to 3a under the same Pedersen hash, phase 3b removes the SHA-256
gadget (-79k), the `kappa` slot in both account openings (-3.2k), and the
indexed-tree machinery (-128k at d10 / -255k at d20 for the four chains,
plus leaf hashes and comparisons), and adds the 2 x 48 = 96 SMT node
hashes (+305k). Net: R_recv lands between the old d10 and d20 rows
(449k), in the same 2^20 domain, with prove time within noise. The trade
is a *fixed, activity-independent* depth covering the system's lifetime
in place of a per-account capacity choice — and a much simpler gadget
(two hash chains; no orderings, no leaf encoding, no predecessor
witness). Under Poseidon the same relation is 13x smaller and 7x faster
to prove.

**2026-08-27 — position-derived nullifiers, tree roots as public inputs.**
Account state was a pair `(com, rootnull)` with `Com_acct(b, kappa; r)`
two-slot commitments; R_recv's statement carried both roots
(`|x| = 7`) and R_send's openings had no root slot:

```
  R_send (public-root)     │   16110 │    32229 │    32768 │   5 │    1112.8 keygen │    876.0 prove
  R_recv d10 (public-root) │  366837 │   733687 │  1048576 │   7 │   30195.5        │  20897.7
  R_recv d20 (public-root) │  494177 │   988367 │  1048576 │   7 │   31885.2        │  22607.0
```

**2026-08-26 — sender-derived nullifiers (tag-tree variant).** The
nullifier came from sender-chosen material, which forced a tag-tree
insertion and *two* SHA-256 PRF calls into R_send and kept the nullifier
in R_recv's statement:

```
  R_send d10 (old)         │  324584 │   649183 │  1048576 │   8 │   30382.1 keygen │  20826.8 prove
  R_send d20 (old)         │  451924 │   903863 │  1048576 │   8 │   32871.3        │  22193.2
  R_recv d10 (old)         │  287811 │   575637 │  1048576 │   8 │   29915.6        │  21899.9
  R_recv d20 (old)         │  415151 │   830317 │  1048576 │   8 │   31702.1        │  23012.9
```

## Hash ablation history

Before the Sapling split (now retired along with the PRF), the *tag-tree*
variant's relations were measured under uniform single-hash
instantiations (same statements, tree shapes, and proof sizes; only the
hash differs). Poseidon rows are from a clean run; SHA-256 rows carry a
~5-10% error bar (a duplicate process ran concurrently for part of that
measurement); Pedersen-only rows were constraint-counted but not timed:

```
  R_send poseidon d10      │   15682 │    31379 │    32768 │  1240.9 keygen │   1018.9 prove
  R_send poseidon d20      │   27422 │    54859 │    65536 │  2279.1        │   1880.8
  R_recv poseidon d10      │   26853 │    53721 │    65536 │  2263.0        │   1937.2
  R_recv poseidon d20      │   38593 │    77201 │   131072 │  4403.1        │   3391.8
  R_send pedersen d10      │  169998 │       (constraint-counted only)
  R_recv pedersen d10      │  287811 │       (= tag-tree hybrid R_recv: no PRF call)
  R_send sha256 d10        │ 3924651 │  7849317 │  8388608 │ 256622.8       │ 204336.4
  R_recv sha256 d10        │ 6985358 │ 13970731 │ 16777216 │ 476294.1       │ 392335.9
```

Per unit: one Poseidon permutation is 240 R1CS in the current
instantiation (~294 in that older one), one Pedersen tree level ~3.2k, one
SHA-256 compression ~40.4k (a SHA tree level needs two). Verification and
proof size are identical across all instantiations (~0.75-0.9 ms, 128 B)
— hash and construction choices live entirely on the prover side of the
ledger boundary.

## Reading the numbers

- A private *send* is ~0.94 s single-threaded under Pedersen (2^15
  domain) and ~0.14 s under Poseidon (2^12) — interactive either way. The
  receive carries all the heavy machinery (the depth-40 receipt opening
  and the 2 x 48 SMT insertion): ~22.6 s under Pedersen (2^20 domain),
  ~3.2 s under Poseidon (2^17). It is asynchronous by design: Bob can
  claim whenever he likes, against any anchor in the ledger's retained
  history. These are client-side costs and parallelize.
- Hiding the operation type costs a receive almost nothing (+1.9-2.8%
  R1CS, prove within noise) — but it costs a *send* the full receive
  machinery, since every operation proves R_op (~23 s / ~3.3 s instead of
  ~0.9 s / ~0.14 s). That is the real price of operation hiding, and it is
  a deployment choice: run R_send/R_recv for cheap sends and visible
  operation types, or R_op for full uniformity.
- Pedersen vs. Poseidon is a 13x gap in R1CS on the receive side and 7x in
  prove time (the FFT domain is 8x smaller; the fixed per-proof MSM work
  does not shrink with it). The Pedersen rows are the conservative
  discrete-log-only instantiation; the Poseidon rows are what a deployment
  willing to rely on an algebraic hash would pay.
- Verification is flat (~0.78-0.88 ms) and *independent of everything*:
  3 pairings + a 5- or 6-element public-input evaluation.
  The wire format per operation matches the paper's submit lines —
  `(Sen, com', rho)` for a send, `(Rec, com', rootrho)` for a receive,
  `(A, com', rho, rootrho)` under operation hiding (`com` comes from
  ledger state; no nullifier and no tree root ever appear) — three or four
  field elements plus the 128 B proof. No insertion proof, no receipt
  path.
- Trade summary for moving `VerifyInsert` in-circuit: the prover carries
  the 2l-hash insertion; the ledger sheds l hashes per transaction and
  l x 32 B per transaction on the wire, while its per-proof batch-verify
  cost is unchanged and its per-account state is a single 32-byte
  commitment.
