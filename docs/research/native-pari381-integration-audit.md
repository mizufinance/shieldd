# Native C integration audit

**The five-minute batch result is a real measurement of our current integration,
not evidence that native Pari or BLS12-381 is intrinsically slow.** The experiment
combined the pinned Commonware draft's generic compiler with Shieldd's large
Transfer circuit. Its constant column remained dense. The pinned payment
benchmark exercises a much smaller, structurally different range relation.

## Exact upstream and local flows

The upstream comparison here is the recorded draft revision
`1a56762927a8ad3300e0594886c28c59d9801769`, read directly using `git show`, not the
modified cache working tree or a claim about later upstream revisions.

1. Upstream `privacy/examples/payments_bench.rs` sets up the payment backend,
   builds 100 distinct range proofs, cycles them to batches, and measures both
   already-decoded verification and checked wire decoding plus verification.
   The backend defaults to `Sequential`.
2. `privacy/src/zkpari/range.rs` builds two 64-bit range checks, reconstruction
   equalities and `v_theta = v1 + theta*v2`. It calls the generic
   `Relation::compile` with theta public and two committed blocks. It does not
   contain Shieldd's hash, authorization, recovery or compliance circuit.
3. The pinned generic compiler maps a literal constant into column zero.
   Compilation runs nodes, assertions, selected-input links and finish.
   Selected ordinary public inputs receive binding rows; the leading constant
   does not receive a private copy. There is no later constant-outlining pass.
4. Setup copies all ordinary public columns, including column zero, into the
   verifier key. The verifier evaluates the touched rows for every proof.
   Both ordinary `batch_verify` and the payment wrapper's `batch_verify_prebound`
   reach this same public-evaluation path.
5. Our final C follows the same build/layout/compile API, selecting one statement
   hash and one committed blinding value. It additionally uses recorded native
   Transfer gadget/compiler optimizations, the local three-quarter subset
   domain, prepared prover arithmetic and prepared proving-key storage. The
   generic compiler's constant-column policy remains unchanged.

The upstream range circuit's scalar weights are multiplicative coefficients.
Its booleans enforce `b² = b`; these operations need no nonzero additive constant
in each row. Shieldd's Poseidon rounds explicitly add round constants, and other
Transfer constraints also contain additive constants. Our key therefore has:

| Column | A entries | B entries |
| --- | ---: | ---: |
| Constant one | 110,078 | 30 |
| Single statement hash | 1 | 0 |

There are 110,079 distinct touched rows in total. The statement hash is already
linked through one row; **the constant is the principal layout problem**.
The historical Arkworks Pari377 adapter outlines both public instances,
including the constant, into two trailing rows. It is a different compiler flow.

## What the audit ruled out

- **Stale key/proofs:** the checked VK hash matches the final prepared-key
  conversion receipt, and its relation digest is the final C digest. All 14
  cached proofs verified individually and the full 4,096-entry batch accepted.
- **Missing upstream preparation API:** no prepared-verifier or constant-outlining
  API exists in the pinned Pari source. The key digest is already cached. Key
  loading was outside the batch timer and took 32.545 ms.
- **Decoding dominating:** checked preparation took 0.386 s; the verifier took
  302.549 s. Canonical and subgroup checks were retained.
- **Wrong public versus prebound API:** our prover binds the ordinary claim, so
  ordinary `batch_verify` is the matching entry point. The payment wrapper uses
  a custom ledger transcript and folds derived commitment terms. Its prebound
  entry point does not remove public-column evaluation.
- **Debug build or accidental concurrency:** release binary, one `Sequential`
  runtime worker, two build jobs. Observed CPU usage was about one full core;
  resource records show no swap or competing heavy work.
- **Fixed or omitted batch weights:** the runner uses upstream fresh
  verifier-owned 128-bit random coefficients. All 4,096 entries participate.
- **Duplicate shortcut:** none exists in the runner. Repeated inputs can affect
  cache/MSM behavior, but public-column evaluation is still performed per entry.

The local subset-domain change adds its own root/vanishing/derivative arithmetic.
It does not introduce the dense constant policy, but the measured result is not
an unmodified upstream result. No inner-operation profile was run, so we do not
attribute every millisecond to one cause.

## Smallest proposed correction

Add **constant outlining** to the experimental generic compiler, after existing
rows are built and before the relation is finalized:

1. After node/assertion/input-link compilation, allocate one fresh private
   assignment column `w_one` with value one, outside the committed-input prefix.
2. Replace column-zero coefficients in every existing A and B row with that
   private column, preserving their values and every other coefficient.
3. Append the square constraint `(1 - w_one)² = 0` using the real public constant
   column zero. The existing statement binding row stays intact.

Over the field, the new equality forces `w_one = 1`. Every old satisfying
assignment extends to a new one, and every new satisfying assignment projects
to an old one. Merely supplying one in the witness mapper without the equality
would be unsound and is not the proposal. Public values, logical Transfer facts
and the commitment layout need not change.

Keeping this pass after existing compilation matters: constant folding and the
affine-product optimizations identify constants through column zero. Redirecting
constants earlier could disable those optimizations. Rewrite both A and B before
appending the new equality, so that equality retains its genuine public one.

For the current relation, the intended count change is 191,516→191,517 rows and
191,501→191,502 columns. These counts remain inside M=196,608/N=262,144. The
constant and statement should then touch two verifier rows. This is a design
prediction, **not yet compiled or measured**.

The transformation changes matrices, relation digest, public/witness query
polynomials, keys and proofs. It needs fresh development setup, updated mapping,
all-six-scenario original/transformed assignment checks in both directions,
altered-copy rejection, exact public sparsity and commitment-column independence,
new real proofs and matching verifier checks. A larger domain is not predicted,
but proving time, key generation, memory and first-use costs are not free or
established by that observation. Old keys cannot be reused.

Precomputing row roots and index maps could reduce repeated work without changing
the relation, but leaves evaluation proportional to 110,079 rows per proof. It
is not evidence that the unchanged integration attains the intended fast path.
No correction, new setup, proof generation or further benchmark was run in this
audit. The next faithful experiment is the constrained-copy transformation and
cheap relation checks first, then separately authorized expensive regeneration.

## Source references

- [Pinned compiler: constant mapping and finalization](https://github.com/commonwarexyz/monorepo/blob/1a56762927a8ad3300e0594886c28c59d9801769/cryptography/src/zk/pari/circuit.rs)
  (`LinearCombination::constant`, `Compiler::compile`, `link_inputs`, `finish`).
- [Pinned verifier](https://github.com/commonwarexyz/monorepo/blob/1a56762927a8ad3300e0594886c28c59d9801769/cryptography/src/zk/pari/verifier.rs)
  (`batch_verify_prebound`, `evaluate_public_columns`).
- [Pinned range relation](https://github.com/commonwarexyz/monorepo/blob/1a56762927a8ad3300e0594886c28c59d9801769/privacy/src/zkpari/range.rs)
  and [payment benchmark](https://github.com/commonwarexyz/monorepo/blob/1a56762927a8ad3300e0594886c28c59d9801769/privacy/examples/payments_bench.rs).
- [Our C initialization and checked verifier](../../tools/proving-experiment/candidates/native-prepared-key381/src/api.rs),
  [hash constants](../../tools/proving-experiment/candidates/native-prepared-key381/src/hash.rs),
  [measured integration diagnostic](native-pari381-batch-screen.md), and
  [key-column inspection](../../tools/proving-experiment/checkpoints/2026-09-14-native-batch381/inspect_key.py).
