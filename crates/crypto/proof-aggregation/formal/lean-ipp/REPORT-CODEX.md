# S3-27 part 2b — G2 branch theorems

## Result

Implemented in `Ipp/Extracted/ArkworksG2.lean`:

- `decode_g2_add_equal_delegates`
- `decode_g2_add_opposite`
- `decode_g2_add_mixed_generic`
- `decode_g2_add_mixed_equal_delegates`
- `decode_g2_add_mixed_opposite`

The public theorems share `g2_add_branch_of_same_x` and
`g2_add_mixed_branch_of_same_x`. Both routers peel the arithmetic binds once,
derive canonical decoded value equalities, and keep Fq2 limb comparisons opaque.
`fq2_eq_components` is the single bounded bridge from the executed comparison
to component equality.

The executed U/X comparison bind is peeled before the y-branch split. Its tiny
result equation selects the true branch, after which `change` kernel-reduces the
discarded generic chain. The S/Y comparison bind is also peeled once and its
result equation selects doubling or zero inside each branch.

## Memory diagnosis

The literal final router step

```lean
simpa only [huExec, hsExec] using hexec
```

still traversed the discarded generic else-chain. The equal-y isolation was
killed at a sampled peak of 6,223.5 MiB. Replacing that simplifier traversal
with structural comparison-bind peeling reduced the complete projective router
isolation to 1,934.8 MiB.

Other successful isolation peaks:

- mixed same-x router: 1,939.8 MiB
- mixed generic theorem: 1,969.7 MiB

All temporary isolation files were deleted.

## Verification

Command (single-threaded, installed v4.30 toolchain placed before offline Elan
shims in `PATH`):

```text
LEAN_NUM_THREADS=1 lake env lean Ipp/Extracted/ArkworksG2.lean
```

Result:

```text
exit: 0
elapsed: 42.771 s
peak Lean RSS: 2,008.9 MiB
```

The five requested `#print axioms` results were:

```text
'Ipp.Extracted.ArkworksG2.decode_g2_add_equal_delegates' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Extracted.ArkworksG2.decode_g2_add_opposite' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Extracted.ArkworksG2.decode_g2_add_mixed_generic' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Extracted.ArkworksG2.decode_g2_add_mixed_equal_delegates' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Extracted.ArkworksG2.decode_g2_add_mixed_opposite' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Additional checks:

- `git diff --check`: passed
- no `sorry`, `admit`, or new axioms in `ArkworksG2.lean`
- no edits to generated files, the Rust spike, or `ArkworksG1.lean`
- no commit created

No prover/release-gated test suite was run; the requested guarded full-file Lean
check was run and passed.
