# BLS12-377 strict comparator screen

Retain the comparator improvement for both A and B before their next fresh-key comparison. The real Transfer circuit saves898 original R1CS constraints (0.58%) and1,800 converted Square-R1CS rows (0.79%). This is compile/solve evidence, not a proving speedup.

| Count | Selected DH baseline | Polynomial comparator |
| --- | ---: | ---: |
| Original R1CS constraints | 155,122 | 154,224 |
| Original wires | 142,630 | 141,728 |
| Converted square rows | 226,578 | 224,778 |
| Converted witness wires | 214,084 | 212,280 |
| FFT size | 262,144 | 262,144 |

The two strict comparison helpers keep the 128-bit amount decomposition, caller-constrained scalar bits and final Boolean assertion. A least-significant-bit recurrence starts at false, so equality never becomes strict less-than. Constant comparisons specialize that recurrence; invalid negative or oversized constants are rejected instead of truncated. These helpers occur four times in Transfer, explaining the smaller reduction than the native circuit's generic comparison implementation.

Both focused Go tests pass: exhaustive small correct/wrong comparisons, equality, zero, maximum amounts, overflow rejection, actual Decaf order and IVK-reduction constant boundaries, and invalid constants. All six existing statements and witness hashes match. The saved invalid witness is rejected. The exact canonical BLS12-377 R1CS and full solved assignments pass original, lowered and actual ZK-Pari Square-R1CS checks; altered constant, public statement and constrained witness wires are rejected in every scenario. All four job guards exit0 with zero swap and no competing heavy job.

No development keys or proofs were generated for this relation. Its circuit hash is `94a894fdd2ae5cc993d7e96a4fb3e1c0461745be6da73d1d11acbc6443717d79`. A must receive these helpers on its selected subset Groth16 implementation; B must regenerate its relation-bound prepared key. Production dependencies, circuits, artifacts and acceptance paths are unchanged. Production release-gated prover tests and formal certification were not run.

[Raw checkpoint](../../tools/proving-experiment/checkpoints/2026-09-14-comparator377/README.md) · [Typed counts](comparator377-screen.json) · [Go preparation runner](../../tools/proving-experiment/comparator377_compile.py) · [Actual conversion gate](../../tools/proving-experiment/examples/comparator_compile.rs).
