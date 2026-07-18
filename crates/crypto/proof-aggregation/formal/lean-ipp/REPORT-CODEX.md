# S3-19 part 1 report

STATUS: DONE

## Scope pin

Pinned against arkworks 0.5.0.

- BLS12-377 selects `TwistType::D` (`ark-bls12-377-0.5.0/src/curves/mod.rs:23-27`). Its Miller loop squares Fq12 and evaluates lines (`ark-ec-0.5.0/src/models/bls12/mod.rs:65-81`); D-twist `ell` calls `mul_by_034` (`mod.rs:173-190`).
- `mul_by_034` reaches Fq6 `mul_by_01` twice and Fq6 add/sub plus multiply-by-v (`ark-ff-0.5.0/src/fields/models/fp12_2over3over2.rs:70-91`). It does not reach Fq6 `mul_by_1`; that helper occurs only under M-twist `mul_by_014` (`fp12_2over3over2.rs:93-112`) and is excluded from this spike.
- Fq12 full multiplication, squaring, inverse, conjugation/cyclotomic inverse, and Frobenius transitively reach Fq6 add, sub, neg, double, full multiplication, square, inverse, Frobenius, and multiply-by-v/nonresidue. The pairing path uses these from Miller accumulation and final exponentiation (`ark-ec-0.5.0/src/models/bls12/mod.rs:83-155`). The Fq12 quadratic implementation supplies the componentwise/additive and field calls (`ark-ff-0.5.0/src/fields/models/quadratic_extension.rs:191-205,271-345,353-357,632-677`).
- The reached Fq6 implementation list is therefore: add, sub, neg, double, full `mul_assign`, `square_in_place`, inverse, Frobenius (pairing uses powers 1 and 2), sparse `mul_by_01`, and `mul_base_field_by_nonresidue`. Cubic full multiply/square/inverse/Frobenius are in `ark-ff-0.5.0/src/fields/models/cubic_extension.rs`; `mul_by_01` is `fp6_3over2.rs:111-152`.
- BLS12-377 pins `NONRESIDUE = u`, both six-entry Frobenius tables, and `mul_fp2_by_nonresidue_in_place (c0,c1) = (-5*c1,c0)` in `ark-bls12-377-0.5.0/src/fields/fq6.rs:8-82`.

## Spike and parity

`Fq6Mont` and the reached `fq6_*` routines were appended to `s3_07_arkworks_fq_spike.rs`. Full multiplication follows arkworks' three-product Karatsuba chain; square follows CH-SQR2; inverse follows the norm/Algorithm-17 route; Frobenius uses pinned Montgomery-limb coefficient tables. `extract_s3_19` closes over every reached routine and no M-twist-only helper.

`fq6_edges_and_512_random_vectors_match_arkworks` covers zero, one, the two v lanes, u/negation lanes, and `-1`, followed by 512 deterministic random `(Fq6,Fq6,Fq2,Fq2)` vectors. Each vector checks add, sub, neg, double, full multiply, square, inverse, Frobenius powers 1 and 2, `mul_by_01`, and multiplication by u. Zero inverse is checked as `None`.

## Extraction

The WSL extraction command succeeded without an aeneas rejection or Rust restructure:

`cargo hax into -v --output-dir /root/shieldd-s3-19-fq6 aeneas-lean --charon-args=--start-from=crate::s3_07_arkworks_fq_spike::extract_s3_19 --lakefile`

Aeneas emitted its existing version-mismatch warning (`expected e0a1596, found unknown`). The graph was vendored as `Ipp/Extracted/ArkworksFq6Generated.lean`, imports `ArkworksFq2Generated`, and does not duplicate the Fq/Fq2 graph. Repository-dialect vendoring normalized raw aeneas array operations/attributes, the two fixed nonzero `Usize` remainders, and derived Fq2 equality to existing MacCampaign runtime definitions.

## Componentwise laws

`Ipp/Extracted/ArkworksFq6.lean` defines `decodeFq6` and `Canonical6` and proves:

- `decode_fq6_add`
- `decode_fq6_sub`
- `decode_fq6_neg`
- `decode_fq6_double`
- `decode_fq6_mul_base_field_by_nonresidue`

Full multiply, square, sparse multiply, inverse, and Frobenius proofs were not started; they remain S3-19 part 2.

The five `#print axioms` results are identical:

`[propext, Classical.choice, Quot.sound]`

No `sorry`, `admit`, or new axiom occurs in either new Lean file.

## Files touched

- `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/s3_07_arkworks_fq_spike.rs`
- `crates/crypto/proof-aggregation/src/ipp/ip_proofs/tests/bls12_377_arkworks_fq_spike.rs`
- `Ipp/Extracted/ArkworksFq6Generated.lean`
- `Ipp/Extracted/ArkworksFq6.lean`
- `REPORT-CODEX.md`

## Gates

- Focused parity integration test: PASS, 6 tests; Fq6 includes 512 deterministic random vectors plus edge cases.
- `cargo test -p ark-ip-proofs --features mac-campaign`: PASS; 37 unit tests passed, 2 ignored; Fq integration 6 passed; Fr integration 2 passed; doc tests passed.
- `lake build Ipp.Extracted.ArkworksFq6Generated`: PASS, 8 jobs.
- `lake build Ipp.Extracted.ArkworksFq6`: PASS, 2995 jobs.
- `lake build Ipp`: PASS, 3423 jobs.
- Axiom audit: PASS; only `propext`, `Classical.choice`, `Quot.sound`.
- Prover/release-gated tests: not run; part 1 did not request them.
