# Native gnark-crypto381 arithmetic control

**Retain prepared/combined blst for the final native candidate.** All 70 actual-operand results match the verified Transfer capture exactly. Three measured pairs per cell follow two warmups, with two workers and checked Go transport included.

| Combined operation | Prepared blst median | gnark381 boundary median |
|---|---:|---:|
| Commitment | 0.788045 s | 0.744418 s |
| Opening | 1.363612 s | 1.260663 s |

The sum saves 0.146576 s (6.81% of these operations). Applied to the earlier native 2.970778 s API median, this would be only about 4.9% overall; it is a projection, not a measured full proof. The tiny mask operation regresses through Go and remains native. Checked Go base initialization alone takes 23.167 s in this diagnostic. The extra runtime, base storage and integration are not justified by this modest projected gain for the selected comparison.

Three focused Go tests and the Rust scalar-encoding test pass. The guarded comparison exits successfully with zero swap or competing heavy jobs. Diagnostic memory includes captured operands plus separate and combined tables, so it is not isolated selected-worker memory. Full source and binary identities are frozen in `cache/gnark381-source`; raw samples, completion hashes and the resource summary are in `cache/gnark381-comparison/analysis.json`.

No circuit or key changed. The final compact comparison selects current Groth16 A, combined gnark377 ZK-Pari B, and prepared/combined blst native C. Affine/shared-square circuit changes, corrected hinted multiplication, alternative domains and Edwards MSM remain deferred research; none is represented as measured full-proving progress. Phone access remains a separate prerequisite.
