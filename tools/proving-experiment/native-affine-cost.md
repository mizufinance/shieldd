# Native affine gadget cost probe

The bounded compile/correctness probe is complete. It generates no proving keys
or proofs and changes no selected Transfer circuit. `native/examples/affine_cost.rs`
compares the current extended-coordinate ladders with specialized affine addition,
doubling and shared squares under the same scalar and subgroup boundaries.

| Gadget | Current rows | Affine with explicit inverse checks | Affine using completeness |
|---|---:|---:|---:|
| Variable base, 252 bits | 6,566 | 7,423 | **5,537** |
| Variable base, 129 bits | 3,390 | 3,820 | **2,849** |
| Fixed base, 252 bits | 2,515 | 2,882 | **2,256** |

Gadget column counts equal row counts in this probe. The explicit-check variant
loses: quotient relations plus per-addition denominator-product inversion cost
more square rows than the current extended formulas. The completeness-based
variant saves 15.7%, 16.0% and 10.3% respectively.

Commonware `Var::div` constrains `q * denominator = numerator`; it does **not**
itself reject `0/0`. The second variant explicitly constrains denominator-product
invertibility. The third discharges this obligation through the restricted point
domain: variable inputs pass `witness_subgroup`, fixed bases are valid constants,
Boolean windows select valid points, and complete additions preserve that invariant.
It is not a division helper for arbitrary unconstrained points.

For the exact Jubjub field, the executable independently checks that `a = -1`
is a square and `d = -10240/10241` is a nonsquare. Scaling x by a square root of a
maps to Edwards parameter d/a, which is still nonsquare. Bernstein and Lange's
[completeness result](https://www.hyperelliptic.org/tanja/newelliptic/newelliptic.html)
then excludes zero addition denominators. The specialized doubling denominators
follow from the constrained curve equation; see the
[affine formulas](https://www.hyperelliptic.org/EFD/g1p/auto-twisted.html).

The release probe checks 162 valid cases against both original and converted
constraints: zero, one, small scalars and canonical width boundaries, using G,
−G and identity. Nine wrong-output and six off-curve-input cases reject. Direct
inverse-point addition accepts identity; explicit zero-denominator division rejects.
Existing scalar canonicality and cofactor-preimage checks are retained. These are
gadget checks, not six complete Transfer proofs or a soundness certification.

Using C's exact call inventory (nine 252-bit variable, two 129-bit variable and
nine fixed calls) projects **12,674 fewer rows and columns**: approximately
220,009 rows / 220,029 columns, still domain 262,144. Full-relation outlining can
change those totals. This removes only 5.45% of full rows, leaves another 23,421
columns above the research-only 196,608 target, and does not establish faster
proving. Per-proof affine inversions may increase witness-generation cost.

Disposition: retain the completeness-based formula as a circuit candidate; reject
the explicit-inversion variant. No new full key is justified by this cost result
alone. Obtain a full relation/witness-cost inventory before adoption, and do not
add these savings to overlapping hinted-multiplication estimates. Prepared and
combined blst arithmetic is the next independent opportunity.

Evidence: `cache/native-affine-cost/{results.json,analysis.json,manifest.json}`
contains typed results, parameter calculations, source hashes and copied binary.
The original explicit-check snapshot is `cache/native-affine-checked`. Guard
`native-affine-boundary-run` exited zero, peak RSS 116,375,552 bytes, no swap or
competing heavy job. Initial builds required a trait import and scalar clone;
the first execution needed a nonempty committed-input layout. Those incomplete
invocations remain recorded and are excluded from the successful result.

Reproduce with Rust 1.95, Cargo jobs two, Rayon two and one resource-guarded job:

```sh
cargo +1.95.0 build --release --locked --offline --manifest-path tools/proving-experiment/native/Cargo.toml --example affine_cost
tools/proving-experiment/native/target/release/examples/affine_cost
```
