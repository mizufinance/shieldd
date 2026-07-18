# S3-21 part 1 report

STATUS: DONE

## Scope pin

Pinned against arkworks 0.5.0 in
`C:\Users\acyrn\.cargo\registry\src\index.crates.io-1949cf8c6b5b557f\`.

- BLS12-377 fixes `X = 0x8508c00000000001`, `X_IS_NEGATIVE = false`, and
  `TWIST_TYPE = D` (`ark-bls12-377-0.5.0/src/curves/mod.rs:20-23`).
- Miller accumulation squares Fq12, applies every reached line, and multiplies
  chunk results (`ark-ec-0.5.0/src/models/bls12/mod.rs:65-84`). The D-twist
  `ell` branch calls `mul_by_034`; `mul_by_014` is M-twist-only and is excluded
  (`mod.rs:174-190`). `mul_by_034` is the exact Fq6/Fq2 sparse chain in
  `ark-ff-0.5.0/src/fields/models/fp12_2over3over2.rs:70-91`.
- Full multiplication, square, inverse, conjugation, and Frobenius are the
  quadratic-extension routines at
  `ark-ff-0.5.0/src/fields/models/quadratic_extension.rs:122-124,271-340,353-356,651-673`.
- Final exponentiation reaches unitary inverse/conjugation, full inverse and
  multiplication, Frobenius powers exactly 2 in the easy part and 1/2 in the
  hard part, cyclotomic square, and repeated `exp_by_x`
  (`ark-ec-0.5.0/src/models/bls12/mod.rs:89-155`). `exp_by_x` invokes
  `cyclotomic_exp(X)` and skips the negative-X inverse for BLS12-377
  (`mod.rs:194-200`). No other Fq12 Frobenius power is executed.
- Cyclotomic inverse is the nonzero check followed by conjugation, and the
  Granger-Scott square is the `q^2 = 1 mod 6` branch
  (`ark-ff-0.5.0/src/fields/models/fp12_2over3over2.rs:130-213`).
- Arkworks `cyclotomic_exp` computes NAF, reverses it, and runs the
  square/multiply/inverse loop
  (`ark-ff-0.5.0/src/fields/cyclotomic.rs:65-122`). The spike pins the exact
  64 big-endian NAF digits for positive `X` as a literal and uses a simple
  indexed `while index < 64` loop. This loop shape follows the already
  extracted Fq pow/sqrt loops; Aeneas accepted it without restructuring and
  emitted finite loop definitions.
- The Frobenius table is pinned in full from
  `ark-bls12-377-0.5.0/src/fields/fq12.rs:15-73`; executed selection is limited
  to rows 1 and 2.
- No Fq12-level add, sub, neg, or double routine is reached. Their Fq6/Fq2
  counterparts occur inside the reached Fq12 algorithms and are already in
  the lower extracted graphs. They were not added as speculative Fq12 APIs.

### Canonical-byte verdict

The byte path is reached. SnarkPack transcript derivation serializes the GT
`ip_ab` uncompressed at
`src/ipp/ip_proofs/src/applications/groth16_aggregation.rs:1128`; aggregate
proof serialization also writes the PairingOutput commitment lanes. Arkworks
quadratic/cubic canonical serialization and deserialization are componentwise
in c0/c1 and c0/c1/c2 order
(`ark-ff-0.5.0/src/fields/models/quadratic_extension.rs:708-753` and
`cubic_extension.rs:609-654`). `Ipp/CanonicalGtDecode.lean` consumes the same
componentwise `Fq12Wire` shape. Therefore `fq12_to_bytes` and
`fq12_from_bytes` are in the spike and vendored graph; their refinement proofs
remain for a later S3-21 part. PairingOutput subgroup validity remains a
separate GAP-10 check.

## Spike and parity

`s3_07_arkworks_fq_spike.rs` now contains `Fq12Mont`, typed nested byte
records, the full 12-row Frobenius table, exact X NAF schedule, and:

- `fq12_mul_base_field_by_nonresidue`
- `fq12_mul`, `fq12_square`, `fq12_mul_by_034`
- `fq12_conjugate`, `fq12_cyclotomic_inverse`, `fq12_inv`
- `fq12_frobenius`
- `fq12_cyclotomic_square`, `fq12_cyclotomic_exp`
- `fq12_to_bytes`, `fq12_from_bytes`
- root `extract_s3_21`

`fq12_edges_and_512_random_vectors_match_arkworks` compares every routine
against `ark_bls12_377::Fq12`, including Frobenius powers 1/2, the same-element
cyclotomic exponent, canonical 576-byte round trips, a noncanonical component,
and zero returning `None` for both full and cyclotomic inverse.

- Focused parity: PASS, 7 tests.
- Required `cargo test -p ark-ip-proofs --features mac-campaign`: PASS: 37
  library tests passed/2 ignored, 7 Fq spike tests passed, 2 Fr tests passed,
  and doc tests passed.

## Extraction

WSL command:

```text
cargo hax into -v --output-dir /root/shieldd-s3-21-part1 aeneas-lean \
  --charon-args=--start-from=crate::s3_07_arkworks_fq_spike::extract_s3_21 \
  --lakefile
```

Extraction succeeded on the first attempt. Hax repeated the known warning
that it expected Aeneas `e0a1596` but could not identify the installed
revision. The vendored `Ipp/Extracted/ArkworksFq12Generated.lean` imports
`ArkworksFq6Generated` and contains only the new Fq12/byte graph; lower graphs
are not duplicated. Its accurate header records the MacCampaign dialect
adaptation. It has finite `maxHeartbeats = 1000000` and `maxRecDepth = 2048`.

The raw current-Aeneas output used current `Std.U8`/`Std.I8`, loop attributes,
and array operations not present in the repository's older scoped runtime.
Vendoring translated these mechanically to the established MacCampaign
`UInt8`/`Int`, array, and finite-loop dialect. The first narrow build exposed
those dialect mismatches; after the translation the generated target passed.
No Rust control-flow change or parity rerun was required because extraction
itself accepted the original indexed loop.

## Easy laws

New `Ipp/Extracted/ArkworksFq12.lean` defines:

- `Fq12LimbPair`
- `decodeFq12`, componentwise through `decodeFq6`
- `Canonical12`, componentwise through `Canonical6`
- `decode_fq12_conjugate`: successful executed conjugation preserves the c0
  Fq6 value and negates each of the three Fq2 lanes in c1.

There are no reached Fq12-level add/sub/neg/double laws to prove. Mul, square,
sparse multiplication, inverse, Frobenius, cyclotomic operations, and bytes
are deliberately left for later parts.

`#print axioms decode_fq12_conjugate` output:

```text
'Ipp.Extracted.ArkworksFq12.decode_fq12_conjugate' depends on axioms:
[propext, Classical.choice, Quot.sound]
```

## Gates

- `git diff --check`: PASS.
- Modified new Lean files `sorry`/`admit`/new-axiom scan: PASS; no matches.
- Pinned single-threaded focused generated build
  `lake build Ipp.Extracted.ArkworksFq12Generated`: PASS, 9 jobs.
- Pinned single-threaded focused law build
  `lake build Ipp.Extracted.ArkworksFq12`: PASS, 3,002 jobs.
- Pinned single-threaded full `lake build Ipp`: PASS, 3,426 jobs.
- Prover, release, and release-gated tests: NOT RUN; this part adds the formal
  spike, parity test, extraction, and easy Lean law only.

No commit was made. The pre-existing untracked `hooks/` directory was not
touched.
