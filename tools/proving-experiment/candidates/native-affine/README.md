# Native affine Transfer candidate

Isolated full native Transfer module with its own package identity and lockfile. `upstream.json` records the initial source copy. The original selected desktop archive remains immutable.

Circuit scalar multiplication uses affine Jubjub addition/doubling with shared square expressions. The formulas rely on the existing checked point boundaries, Boolean windows and complete Jubjub addition; generic division alone would not rule out 0/0. Ownership/subgroup/nonidentity and canonical scalar/encoding checks remain in the enclosing circuit. Independent group, torsion and complete Transfer tests cover those boundaries.

The compiled relation has 220,009 rows and 220,029 columns on the unchanged 262,144-point domain. All six original/converted assignments and newly keyed full proofs pass. The affine construction/solve cost rises by about 10 milliseconds in the bounded witness comparison; the complete API must earn that back.

The accompanying Commonware patch prepares the exact public A/B columns and coset powers once, bound to the relation digest and public layout. Each optimized proof checks all on-domain rows before coset quotient computation. Shared mask expansion retains the B mask; the public coefficient-only quotient helper still checks its remainder. Six matched-randomness full Transfer pairs produce identical complete proof bytes. The native release library suite passes 41 tests, including wrong prepared-relation rejection.

`polynomial_gate` measures the same complete witness API with ordinary blst MSM on both paths. It is an attribution diagnostic; `prepared_msm_full serve` combines these polynomial changes with resident combined MSM for the final matrix. New keys, proofs, raw samples and binaries stay in ignored cache paths. No phone or protocol-throughput result follows.
