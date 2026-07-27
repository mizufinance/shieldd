# S3-28 closer report

## STATUS

GREEN PARTIAL at the task's explicitly permitted item-(1) boundary.

The extracted fixed-width scalar decomposition is proved congruent to the input
modulo the BLS12-377 scalar modulus, and both extracted magnitudes are proved
strictly below `2^255`. Items (2) base refinement and (3) the final executed
`k • P` corollary remain. No partial final corollary was introduced.

No generated file, Rust source, `ArkworksScalarMulInvariant.lean`, or landed
part-2c/2d/2e proof was edited. No commit was made.

## Public congruence and bounds

`ArkworksScalarMulGlvDecomposition.lean` defines

```lean
def signed (positive : Bool) (magnitude : Nat) : Int :=
  if positive then Int.ofNat magnitude else -Int.ofNat magnitude
```

and proves, for a successful execution of the extracted
`g1_glv_scalar_decomposition`, the statement

```lean
Int.ModEq (Int.ofNat r)
  (signed output.k1_positive (scalarToNat output.k1) +
    signed output.k2_positive (scalarToNat output.k2) * Int.ofNat lambda)
  (Int.ofNat (scalarToNat input)) ∧
scalarToNat output.k1 < 2 ^ 255 ∧
scalarToNat output.k2 < 2 ^ 255
```

The proof first obtains a reduced representative `s` with `s < r` and
`s ≡ input (mod r)`, then proves the exact integer identity

```text
signed(k1) + signed(k2) * lambda = s - beta * r.
```

Here `beta` is the rounded quotient and the extracted second sign is explicitly
`false`, so `signed(k2) = -beta`.

## Rounding and sign interpretation

The 384-bit long-division proof is split into bounded modules. Its public
`RoundedSpec` supplies natural numbers `q` and `remainder` such that

```text
numerator = q * r + remainder
remainder < r
quotient = if r < 2 * remainder then q + 1 else q.
```

This is the extracted strict half-up comparison. Since `r` is odd, an exact
half tie cannot occur. From `s < r` and `numerator = s * a`, the proof derives
`q < a`, hence the selected quotient satisfies `beta ≤ a`.

The LLL basis product is proved to decode as `beta * (a + 1)`. The extracted
comparison makes `k1_positive` true exactly when
`beta * (a + 1) < s`; the two executed subtraction branches therefore decode
to the absolute difference:

```text
if k1_positive
then k1 = s - beta * (a + 1)
else k1 = beta * (a + 1) - s.
```

Using `r = a * (a + 1) + 1` and `lambda = r - a - 1`, both sign branches reduce
to `s - beta * r` over `Int`.

## Magnitude bounds

- `beta ≤ a`, and `a + 1 < 2^255`, so decoded `k2 = beta < 2^255`.
- Both `s` and `beta * (a + 1)` are `< r`; their absolute difference is `< r`.
  The numeric modulus fact `r < 2^255` therefore gives decoded `k1 < 2^255`.
- The low-four-limb projections are justified only after proving the
  corresponding six-limb values are below `2^256`; no truncation assumption is
  used.
- The rounded-division entry premise `numerator < 2^384` is derived from
  `s < r` and `numerator = s * a`.

## Final corollary premises

The final corollary is not present yet. Its intended exact external premise
shape is recorded here so the remaining work cannot hide either boundary:

```lean
(base output : G1ProjLimbTriple)
(scalar : ScalarArray)
(P : G1AffinePoint)
(inPrimeSubgroup : G1AffinePoint → Prop)
(phi : G1AffinePoint → G1AffinePoint)
(hbase : ValidG1LoopState base P)
(hsubgroup : inPrimeSubgroup P)
(heigen : GlvEigenPrecondition inPrimeSubgroup phi lambda)
(hexec :
  ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_mul_projective base scalar =
    .ok output)
```

with conclusion

```lean
ValidG1LoopState output (scalarToNat scalar • P)
```

(`extract_s3_28_glv` is definitionally the same executed root.) Item (2) must
first prove that the extracted endomorphism represents `phi P`, that each
sign-conditional negation represents the corresponding signed base, and that
the executed precomputation represents their sum. The only eigenspace use must
then be `heigen P hsubgroup`; neither `hsubgroup` nor `heigen` is to be
discharged in S3-28.

## Guarded standalone checks and peak memory

Every command was run from `formal/lean-ipp` with `LEAN_NUM_THREADS=1` as
`lake env lean <FILE>`. Peaks are working set in MiB. Files were checked
serially; no `lake build Ipp` was run.

| File | Peak MiB |
|---|---:|
| `ArkworksScalarMulGlvArithmetic.lean` | 1848.9 |
| `ArkworksScalarMulGlvReduceCoreStep.lean` | 1842.4 |
| `ArkworksScalarMulGlvReduceCore.lean` | 1837.1 |
| `ArkworksScalarMulGlvReduce.lean` | 1830.5 |
| `ArkworksScalarMulGlvMulCore.lean` | 1887.2 |
| `ArkworksScalarMulGlvShiftCore.lean` | 1850.7 |
| `ArkworksScalarMulGlvClearBelow.lean` | 1863.9 |
| `ArkworksScalarMulGlvSetBitCore.lean` | 1850.2 |
| `ArkworksScalarMulGlvWideUpdateCore.lean` | 1842.7 |
| `ArkworksScalarMulGlvWideBitCore.lean` | 1851.7 |
| `ArkworksScalarMulGlvDivBodyCore.lean` | 1890.8 |
| `ArkworksScalarMulGlvDivAdapter.lean` | 1866.5 |
| `ArkworksScalarMulGlvDivLoopCore.lean` | 1845.7 |
| `ArkworksScalarMulGlvDivLoopAdapter.lean` | 1857.7 |
| `ArkworksScalarMulGlvIncrementCore.lean` | 1866.8 |
| `ArkworksScalarMulGlvRoundedExec.lean` | 1822.3 |
| `ArkworksScalarMulGlvRoundedCompare.lean` | 1833.9 |
| `ArkworksScalarMulGlvRoundedNormalize.lean` | 1832.1 |
| `ArkworksScalarMulGlvRoundedNormalizeBound.lean` | 1833.2 |
| `ArkworksScalarMulGlvRoundedRewrite.lean` | 1830.3 |
| `ArkworksScalarMulGlvRoundedValue.lean` | 1851.1 |
| `ArkworksScalarMulGlvRoundedQuotient.lean` | 1832.0 |
| `ArkworksScalarMulGlvRoundedWitness.lean` | 1833.4 |
| `ArkworksScalarMulGlvRoundedDiv.lean` | 1824.3 |
| `ArkworksScalarMulGlvNumericBridges.lean` | 1820.8 |
| `ArkworksScalarMulGlvArrayCore.lean` | 1856.9 |
| `ArkworksScalarMulGlvMul.lean` | 1825.1 |
| `ArkworksScalarMulGlvDecompTails.lean` | 1836.1 |
| `ArkworksScalarMulGlvDecompModel.lean` | 1836.1 |
| `ArkworksScalarMulGlvDecompExecPrefix.lean` | 1836.2 |
| `ArkworksScalarMulGlvDecompExecBeta.lean` | 1837.3 |
| `ArkworksScalarMulGlvDecompFinishAfter.lean` | 1833.7 |
| `ArkworksScalarMulGlvDecompExecFinish.lean` | 1838.0 |
| `ArkworksScalarMulGlvDecompExec.lean` | 1825.0 |
| `ArkworksScalarMulGlvDecompBoundsCore.lean` | 1865.8 |
| `ArkworksScalarMulGlvDecompFacts.lean` | 1866.5 |
| `ArkworksScalarMulGlvDecomposition.lean` | 1845.4 |

Observed range: 1820.8–1890.8 MiB. No process approached the approximately
6 GiB guardian threshold.

## Axiom audit

There are zero `sorry`, `admit`, or new `axiom` declarations in the new
modules. `#print axioms` is included on new public theorems throughout the
chain. The final public output was:

```text
signed_reconstruction:
  [propext, Quot.sound]
extracted_decomposition_spec:
  [propext, Classical.choice, Quot.sound]
extracted_k1_lt_two_pow_255:
  [propext, Classical.choice, Quot.sound]
extracted_k2_lt_two_pow_255:
  [propext, Classical.choice, Quot.sound]
```

All other printed theorem audits were subsets of the same permitted set.

## Remaining

1. Base refinement from one `ValidG1LoopState base P`: extracted endomorphism,
   both sign-conditional negations, and the executed `b1b2` addition.
2. Compose that refinement, `extracted_decomposition_spec`,
   `valid_g1_glv_joint_loop_value`, and `runJoint_eigenvalue` into the final
   executed `scalarToNat scalar • P` theorem with explicit `hsubgroup` and
   `heigen` premises above.

Prover/release-gated tests and the full `lake build Ipp` were not run. No Rust
tests were rerun; this session changed only Lean proof modules and this report.
