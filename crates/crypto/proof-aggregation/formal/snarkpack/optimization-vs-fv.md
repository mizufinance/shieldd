# SnarkPack Optimization and Formal Verification

The conditional shipping Rust → SnarkPack v1 → `Ipp.Goal` theorem is complete.
An optimization does not need a new cryptographic proof when the affected Rust
refinement establishes the same statement, proof, challenge stream, acceptance
equations, and failure behavior.

## Change classes

| Change | Verification obligation |
| --- | --- |
| Scheduling, allocation, layout, caching, or exact algebraic regrouping | Prove or test the affected production path still refines the same model; preserve proof and transcript bytes. |
| Wire encoding | Version the protocol, regenerate both byte fixtures, and rerun interoperability and affected formal lanes. |
| Transcript input, order, label, nonce rule, or field conversion | Treat as a protocol change and update the Fiat-Shamir model and soundness composition. |
| Field, curve, MSM, pairing, serialization, or subgroup kernel | Supply a new concrete refinement theorem or keep the exact affected Arkworks postcondition explicit. |
| SRS artifact or ceremony | Update the authenticated registry and deployment evidence; close or re-open `DEPLOYED-SRS-SOUNDNESS` as appropriate. |

## Stable semantic targets

The reusable targets are:

- `Ipp.foldMsg`, `Ipp.foldCom`, and `Ipp.terminalFold` for GIPA folds;
- `Ipp.transcriptCoeffs` and the product-form theorem for KZG coefficients;
- `Ipp.msm` for exact multiscalar multiplication results;
- the v1 KZG equations and final PPE;
- the five typed, ordered challenge preimages; and
- the canonical statement, caller-order real prefix, and repeat-final padding.

Exact fold fusion, deferred verifier folds, coefficient streaming, prepared-SRS
reuse, and exact pairing regrouping can reuse the final soundness theorem once
their implementation refinement is re-established. Randomized batch checks,
subgroup-validation batching, or any other acceptance-strength change need an
additional error term and proof.

## Exact reductions in `optimize/snarkpack`

The current branch adds four reusable equivalence results:

| Shipping reduction | Lean root |
| --- | --- |
| Coalesce a repeat-final G1 or G2 suffix before pairing | `Ipp.repeated_left_pairing_exact`, `Ipp.repeated_right_pairing_exact` |
| Omit the KZG quotient's known trailing-zero MSM term | `Ipp.omit_trailing_zero_msm_exact` |
| Flatten four chronological GT folds onto one scalar schedule | `Ipp.shared_gt_fold_exact` |
| Replace BLS12-377 `x^r = 1` decoding with the curve-specific Frobenius/seed relation | `Ipp.fastGtUnitMembership_iff` |

`Ipp.Cost` separately proves the exact padding and KZG operation deltas. The
Rust paths retain the previous implementation behind the compile-time
`bench-baseline` feature only as an A/B and equivalence oracle; it is not a
runtime protocol branch.

Committed proof bytes, challenge traces, statement encoding, caller-order real
prefixes, repeat-final padding, and verifier acceptance remain the v1 semantic
targets. Modular extraction and the operation register track whether the
shipping Rust boundary has been re-established for each changed source path.

## What the theorem does not optimize

Formal closure does not establish that a candidate is faster. Use the measured
workflow and thresholds in
[`optimization-playbook.md`](../../optimization-playbook.md). Symbolic operation
counts and open optimization candidates live in
[`operation-reduction-register.md`](operation-reduction-register.md); they are
performance research, not gaps in the semantic FV capstone.

The production SRS ceremony is also separate from optimization. It may remain a
visible assumption until deployment evidence exists, but it must not be treated
as a performance opportunity or a numerical security result.
