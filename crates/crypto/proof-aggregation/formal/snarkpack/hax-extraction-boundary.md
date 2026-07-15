# SnarkPack Hax Extraction Boundary

Status: reviewed metadata for the current implementation-boundary extraction
set. This file bounds the hax semantic-preservation assumption by target.

Every target listed in `hax-targets.txt` must have exactly one row here.
Every compatibility `assume val` introduced by `scripts/snarkpack-formal.sh`
must have a shim row with a semantic postcondition and removal path.

## Extracted Targets

| target | Rust features used | precondition | arithmetic mode | control flow | panic/expect | unsafe | hax shims | status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `shieldd_sdk_proof_aggregation::statement::StatementFieldBytes` | owned `Vec<u8>` newtype | `requires true` | none | constructors/accessors only | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::statement::StatementPublicInputRow` | owned `Vec<StatementFieldBytes>` newtype | `requires true` | `usize` length observation only | iterator accessors | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::statement::StatementPaddedRows` | owned `Vec<StatementPublicInputRow>` newtype | `requires true` | `usize` length observation only | iterator accessors | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::statement::StatementEncodingInput` | plain owned fields and typed rows | `requires true` | fixed-width `u32` fields | data carrier | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::statement::encode_statement` | `Vec` allocation, slice appends, typed row iteration; `cfg(hax)` uses structurally equivalent private row/field traversal helpers because pinned hax leaves loop folds opaque in F* | every byte-field length fits `u32` | `u32` little-endian writes; length conversion checked | runtime bounded `for` loops over rows and fields; hax extraction structural recursion over slices | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::statement::vk_digest_preimage` | `Vec` allocation, fixed domain append, length-prefixed VK byte append | serialized VK length fits `u32` | checked `u32` length conversion | branch-only after length conversion | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::statement::validate_counts` | slice length observation | `requires true` | checked `usize`/`u32` comparison via conversion | branch-only | none | none | `impl_u32__is_power_of_two` | reviewed |
| `shieldd_sdk_proof_aggregation::statement::validate_row_arity` | nested `Vec` row length observation; `cfg(hax)` uses structurally equivalent private traversal helper because pinned hax leaves loop returns opaque in F* | `requires true` | `usize` equality | runtime bounded loop over rows; hax extraction structural recursion over slices | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::statement::validate_repeat_final_padding` | nested `Vec` row equality and suffix iteration; `cfg(hax)` uses structurally equivalent private suffix traversal helper because pinned hax leaves loop returns opaque in F* | `requires true` | checked `u32`/`usize` conversion | runtime bounded loop over padded suffix; hax extraction structural recursion over slices | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::srs::dev_srs_supports_count` | primitive `u32`/`usize` comparison used by `DevSrs::ensure_supported_count` | `requires true` | `u32` to `usize` cast and `usize` comparison | branch-free | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::srs::default_dev_srs_id_preimage` | `Vec` allocation, fixed default-SRS identity prefix append, serialized SRS byte append | prefix length plus serialized SRS length fits `usize` | `usize` capacity addition | branch-free | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::aggregate_proof_wrapper::encode_wrapped_aggregate_proof` | `Vec` allocation and slice appends | inner proof length fits `u32` | checked `u32` length conversion | branch-only | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::aggregate_proof_wrapper::decode_wrapped_aggregate_proof` | delegates to inner-range decoder, then slice range exposure | `requires true` | inherited checked addition from inner-range decoder | branch-only | none | none | inherited `impl__starts_with` from inner-range decoder | reviewed |
| `shieldd_sdk_proof_aggregation::aggregate_proof_wrapper::decode_wrapped_aggregate_proof_inner_range` | slice indexing, length checks, `Range<usize>` | `requires true` | checked addition for proof end | branch-only | none | none | `impl__starts_with` | reviewed |
| `shieldd_sdk_proof_aggregation::preflight::PreflightCheapChecks` | plain boolean record | `requires true` | none | data carrier | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::preflight::PreflightWorkGate` | two-variant enum | `requires true` | none | data carrier | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::preflight::preflight_work_gate` | boolean conjunction over preflight flags | `requires true` | none | branch-only | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::bundle::FamilyRouteKind` | four-variant route enum | `requires true` | none | data carrier | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::bundle::FamilyRoute` | primitive route record with family kind and subfamily id | `requires true` | fixed `u32` field | data carrier | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::bundle::FamilyRouteError` | four-variant validation error enum | `requires true` | none | data carrier | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::bundle::family_route_from_proto_fields` | primitive `u32` family/subfamily decision table used before domain conversion | `requires true` | fixed `u32` equality/inequality | finite `match` plus branch guards | none | none | none | reviewed |
| `ark_ip_proofs::challenge::ChallengeContext` | private 32-byte array newtype | constructor input is a 32-byte statement digest | none | constructor/accessor only | none | none | none | reviewed |
| `ark_ip_proofs::challenge::challenge_context_preimage` | `Vec` allocation and slice appends | input is a 32-byte statement digest | none | branch-free | none | none | none | reviewed |
| `ark_ip_proofs::challenge::challenge_preimage` | `Vec` allocation and slice appends | stage label length fits `u32` | `u64` little-endian nonce; checked stage length | branch-free after length conversion | `expect` on static stage-label length; accepted because all labels are compile-time constants and invariant-reviewed | none | none | reviewed |

## S2-19 explicit verifier-core boundary

S2-19 established the typed equation cores and kept product-form evaluation in
the public KZG wrappers as a deliberately bounded intermediate. S2-20 moves
that evaluation into the opening cores. The records below are the single
proof-relevant cores used by the wrappers. Their effect interfaces have only
ordinary type parameters: `GT` is explicit and no pairing associated type is
visible in an extracted core.

| target | field projections and operation order | failure cases and feature branches | effect postcondition | status |
| --- | --- | --- | --- | --- |
| `ark_ip_proofs::tipa::PairingEffect` | `multi_pairing(left, right)` consumes equal-length projective G1/G2 slices and returns `Option<GT>` | unavailable pairing is mapped to verifier `false`; no feature branch | `Some` is the multi-pairing output; `None` is failure; the core assigns no cryptographic meaning to `GT` | proved-model |
| `ark_ip_proofs::tipa::KzgG2VerifierCoreInput` | carries `g`, `g_beta`, `h`, `ck_final`, `ck_opening`, `eval`, `z`, and a plain `GT` marker (`PhantomData<GT>` for Aeneas compatibility); core projects `right_0 = ck_final - h * eval`, `left_1 = -(g_beta - g * z)`, then pairs `([g, left_1], [right_0, ck_opening])` | owned record; no branches or panics | record construction has no effect; all fields are consumed once by the core in the listed order | proved-model |
| `ark_ip_proofs::tipa::KzgG1VerifierCoreInput` | carries `g`, `h_alpha`, `h`, `ck_final`, `ck_opening`, `eval`, `z`, and a plain `GT` marker (`PhantomData<GT>` for Aeneas compatibility); core projects `left_0 = ck_final - g * eval`, `right_1 = h_alpha - h * z`, then pairs `([left_0, -ck_opening], [h, right_1])` | owned record; no branches or panics | record construction has no effect; operand signs and pair order are fixed by the projections | proved-model |
| `ark_ip_proofs::tipa::verify_commitment_key_g2_kzg_equation_core` | consumes `KzgG2VerifierCoreInput`; maps successful `GT::is_zero()` to `true` and preserves the two-pairing operand order | `Result::Err` and unavailable pairing both return `false`; no feature branch | one pairing effect call; no serialization or trace effect | proved-model |
| `ark_ip_proofs::tipa::verify_commitment_key_g1_kzg_equation_core` | consumes `KzgG1VerifierCoreInput`; maps successful `GT::is_zero()` to `true` and preserves the two-pairing operand order | `Result::Err` and unavailable pairing both return `false`; no feature branch | one pairing effect call; no serialization or trace effect | proved-model |
| `ark_ip_proofs::tipa::verify_commitment_key_g2_kzg_opening_core` | computes product-form `eval`, constructs `KzgG2VerifierCoreInput` from `g`, `g_beta`, `h`, final/opening G2 points, `eval`, and `z`, then calls the existing G2 equation core once | finite transcript and total field/group operations; unavailable pairing remains `false`; no feature branch | one product evaluation followed by one `PairingEffect::multi_pairing` call through the equation core; no serialization or trace effect | proved-model |
| `ark_ip_proofs::tipa::verify_commitment_key_g1_kzg_opening_core` | computes product-form `eval`, constructs `KzgG1VerifierCoreInput` from `g`, `h_alpha`, `h`, final/opening G1 points, `eval`, and `z`, then calls the existing G1 equation core once | finite transcript and total field/group operations; unavailable pairing remains `false`; no feature branch | one product evaluation followed by one `PairingEffect::multi_pairing` call through the equation core; no serialization or trace effect | proved-model |
| `ark_ip_proofs::tipa::verify_commitment_key_g2_kzg_opening` | projects `VerifierSRS.{g,g_beta,h}` and clones the supplied final/opening G2 points; passes transcript, `r_shift`, and `kzg_challenge` to the opening core once | existing caller `parallel`/sequential branches remain unchanged; pairing failure remains `Ok(false)` rather than an error | installs `ArkworksPairingEffect<P>` at the concrete boundary; outer `Result<bool, Error>` shape is unchanged | proved-model |
| `ark_ip_proofs::tipa::verify_commitment_key_g1_kzg_opening` | projects `VerifierSRS.{g,h_alpha,h}` and clones the supplied final/opening G1 points; passes transcript, `r_shift`, and `kzg_challenge` to the opening core once | existing caller `parallel`/sequential branches remain unchanged; pairing failure remains `Ok(false)` rather than an error | installs `ArkworksPairingEffect<P>` at the concrete boundary; outer `Result<bool, Error>` shape is unchanged | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::PreparedPairingEffect` | `multi_pairing_prepared(left, right)` consumes explicit G1 and prepared-G2 slices and returns `Option<GT>` | `None` maps to PPE `false`; optimized interface exists only under `not(feature = "bench-baseline")` | adapter may normalize the supplied G1 slice before the prepared pairing; it does not reorder or alter the two operands | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::PreparedPpeVerifierCoreInput` | carries `alpha_beta`, `r_sum`, `g_ic`, `agg_c`, `gamma_g2_neg_pc`, `delta_g2_neg_pc`, and `ip_ab`; core computes `alpha_beta * r_sum`, forms exact `[-g_ic, -agg_c]`, and pairs against `[gamma_g2_neg_pc, delta_g2_neg_pc]` | owned record; optimized interface exists only under `not(feature = "bench-baseline")` | record construction has no effect; prepared-point order is gamma then delta | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::verify_ppe_core` | consumes the PPE record, computes `alpha_beta_rsum`, forms exact `[-g_ic, -agg_c]`, calls the prepared effect with `[gamma_g2_neg_pc, delta_g2_neg_pc]`, then compares the sum with `ip_ab` | prepared-pairing `None`/unavailable result returns `false`; no trace or serialization branch | exactly one prepared-pairing effect call; G1 negation and prepared-point order are fixed by the two array literals; no `Pairing` associated types occur in the extracted graph | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::verify_ppe` | projects `pvk.alpha_g1_beta_g2`, `pvk.gamma_g2_neg_pc`, `pvk.delta_g2_neg_pc`, and proof `agg_c`/`ip_ab`; constructs the record and delegates once | compiled only under `not(feature = "bench-baseline")`; the existing baseline branch remains selected by `verify_public_inputs_ppe_profiled` | `ArkworksPreparedPairingEffect<P>` normalizes the exact two core operands and calls unchanged `cfg_multi_pairing_g1_affine_g2_prepared::<P>`; Boolean/result behavior is unchanged | proved-model |

The two adapter-parity test families cover BLS12-381 (the existing test
pairing) and BLS12-377. Each checks delegator/core equality for both KZG
directions or the optimized PPE path, and injects an effect error to pin
failure-as-`false`; no test changes public proof serialization or challenge
trace output.

S2-28 extraction is scoped at
`crate::applications::groth16_aggregation::verify_ppe_core` with the pinned
WSL command shape:
`cargo hax into -v --output-dir /root/shieldd-s2-ppe-core-s2-28-scoped-option
aeneas-lean --charon-args=--start-from=crate::applications::groth16_aggregation::verify_ppe_core
--lakefile`.
The installed hax CLI requires the single-token `--charon-args=--start-from=...`
form; the spaced form is not forwarded to Charon. Aeneas also rejected the
`Result<GT, Error>` effect boundary, so the Boolean-only core uses the same
`Option<GT>` failure boundary as the KZG pairing core. The successful closed
output is vendored in
`formal/lean-ipp/Ipp/Extracted/Groth16VerifierGenerated.lean` with generated
definitions `ark_ip_proofs.applications.groth16_aggregation.PreparedPairingEffect`,
`ark_ip_proofs.applications.groth16_aggregation.PreparedPpeVerifierCoreInput`,
and `ark_ip_proofs.applications.groth16_aggregation.verify_ppe_core`.

S2-20's closed extraction starts at the two `*_kzg_opening_core` functions;
the public `Pairing` wrappers remain concrete one-call delegators and are not
part of the extracted graph.

S2-25 extracts from `crate::gipa::verify_base_commitment_core` with
`--charon-args=--start-from=crate::gipa::verify_base_commitment_core`. The
closed graph contains only explicit `KA`, `KB`, `KT`, `MA`, `MB`, `MT`, `OA`,
`OB`, `OT`, and `E` types. `BaseCommitmentResult<T, E>` is the extraction-safe
two-constructor image of Rust `Result<T, E>`; the thin production adapter maps
each `InnerProduct`/`DoublyHomomorphicCommitment::verify` result into it and the
delegator maps the final value back without changing the error. The vendored
output is `Ipp/Extracted/BaseCommitmentGenerated.lean`. For S2-30, the closed
verifier graph must call this core with the same ordered effect state: singleton
inner product, left commitment, right commitment, then target commitment, with
`false` short-circuiting and the first reached error terminal.

S2-30 extracts from
`crate::applications::groth16_aggregation::verify_tipp_mipp_core` with
`--charon-args=--start-from=crate::applications::groth16_aggregation::verify_tipp_mipp_core`.
The closed graph contains the explicit `TippMippCoreInput`/
`TippMippCoreProof` records and the `TippMippEffect` challenge interface; the
concrete `ArkworksTippMippEffect` and `PairingEffect` adapters are not in the
graph. The indexed reverse loop preserves the reversed round order while
avoiding the pinned Aeneas missing-builtin path for iterator `.rev()`. The
graph keeps the single post-loop round error exit, reverses both transcripts,
calls the two existing KZG opening cores in both production branches, and
routes the first three terminal lanes through `verify_base_commitment_core`
in its S2-25 order. The output is vendored as
`Ipp/Extracted/VerifyTippMippGenerated.lean`; no extraction split was needed.
The vendored graph uses the shared executable `core.mem.take` support
definition, which returns the old value together with `Default::default()`.

## S2 Tier 1 serial additions

| target | Rust features used | precondition | arithmetic mode | control flow | panic/expect | unsafe | hax shims | status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `ark_ip_proofs::gipa::rescale_fold_inner` | slices, `Vec`, indexed hax traversal; production Rayon threshold branch retained | equal slice lengths; bounded index range | abstract `MulAssign` and `Add` | production sequential/Rayon selection; `hax_compilation` indexed traversal preserves order | none in helper; caller owns length invariant | none | `hax_compilation` indexed traversal has the same elementwise result and ordering as the production iterator branches | proved-model |
| `ark_ip_proofs::gipa::compute_final_commitment_keys_core` | paired scalar slices, `Vec` exponent construction, and two explicit group MSMs; the private public-path delegator supplies pointwise inverses and concrete MSM callbacks | nonempty equal-length power-of-two key vectors; raw/inverse transcript slices have equal length and are pointwise inverses of nonzero challenges; key length is `2^transcript.len()` | ordinary scalar `Copy`/`Mul` and group `Clone`/`Add`/`MulAssign`; production callbacks are `LMC::msm_keys`/`RMC::msm_keys`; `hax_compilation` uses the generated ordered fold | nested bounded coefficient loops followed by two ordered folds in the extracted view | core assertions enforce shape; inversion `unwrap` remains only in the thin delegator and is covered by the nonzero challenge precondition | none | production/extraction MSM selection is the named `OrderedMsmConformance` boundary; delegator/core parity pins inverse/raw orientation; scoped Aeneas output is vendored as `Ipp/Extracted/FinalCommitmentKeysGenerated.lean` | proved-model |
| `ark_ip_proofs::gipa::BaseCommitmentResult` | two-constructor typed result image for a base-commitment effect | `requires true` | explicit value/error type parameters | data carrier | none | none | none | proved-model |
| `ark_ip_proofs::gipa::BaseCommitmentEffect` | four typed operations: inner product, left verify, right verify, and target verify | effect methods may return typed errors; Boolean false short-circuits are enforced by the core | ordinary generic operation parameters with explicit `E` | effect interface only | none | none | no associated-type or Arkworks adapter appears in the extracted record | proved-model |
| `ark_ip_proofs::gipa::BaseCommitmentCoreInput` | singleton keys/messages, target-key vector, and three commitments | `requires true` | explicit key, message, and output types | owned record | none | none | none | proved-model |
| `ark_ip_proofs::gipa::verify_base_commitment_core` | explicit singleton left/right keys and messages, target-key vector, three outputs, and one typed effect record; call order is inner product, left verify, right verify, target verify | each effect `Err(E)` is returned unchanged; left/right `Ok(false)` short-circuit later calls; target `Ok(false)` is returned; no feature branch or panic | `BaseCommitmentEffect` has four associated-type-free methods; declared Lean laws interpret the singleton inner product and each commitment Boolean; the production adapter is the only `InnerProduct`/`DoublyHomomorphicCommitment` boundary | proved-model |
| `ark_ip_proofs::tipa::polynomial_coefficients_from_transcript` | `Vec`, fixed-size array-to-slice initialization, field arithmetic, bounded nested loops; production interleave retained | transcript length `μ`; output shape `2^(μ+1)-1`; `usize::pow` receives the bounded `u32` exponent cast | abstract field operations | production iterator interleave; `hax_compilation` indexed coefficient/interleave loops | none | none | `hax_compilation` traversal is order/zero-position equivalent; S2-23a's vendored graph uses the shared executable `core.num.Usize.pow` support definition (integer-overflow failure, otherwise the exact natural power) plus compact Vec/array support | proved-model |
| `ark_ip_proofs::tipa::polynomial_evaluation_product_form_from_transcript` | `Vec`, owned field arithmetic, bounded factor/product loops | transcript length is finite; field operations are total | abstract field operations | production iterator product; `hax_compilation` explicit indexed product fold | none | none | hax-owned arithmetic and product folds preserve factor order and multiplication result | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::structured_scalar_final_from_raw_transcript_inner` | slice, field arithmetic, bounded transcript fold | transcript slice is the reversed raw chronology | abstract field operations | indexed loop over the reversed slice | none | none | named generic arithmetic helper retains the production wrapper and result order | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::inverse_powers_with_inverse` | `Vec`, scalar multiplication, bounded loop | `r_inv` is the inverse of a nonzero randomizer; output length is bounded | abstract field operations | indexed loop from `0..len` | none | none | wrapper checks nonzero/inverts; extracted helper takes the resulting inverse explicitly | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::build_shifted_ck_2_inner` | paired slices, point scalar multiplication, bounded loop | equal key/power lengths | abstract group scalar action | hax indexed traversal; production Rayon/sequential branches retained | none | none | hax traversal preserves pointwise order and result; no performance branch is used in the extracted view | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::fold_public_inputs_core` | explicit `F`/`G1` slices, geometric scalar powers, and affine-to-projective group accumulation supplied by the delegator | public-input slice is nonempty; every row has the first row's arity; `gamma_abc_g1.len() = input_arity + 1` | ordinary `Clone`, `PartialEq`, `From<u64>`, `One`, `Zero`, `Add`, `Sub`, `Mul`, and `Div` for `F`; ordinary `Clone`, `Add`, and scalar `Mul` for `G1` | indexed bounded loops preserve row order, input order, and gamma slot order; `r = 1` uses the row count and `r != 1` uses the geometric-series quotient | nonempty/arity assertions and bounded slice/Vec indexing; no `expect` or `Pairing` effect | none | no semantic hax shim; scoped Aeneas output is vendored as `Ipp/Extracted/Groth16VerifierGenerated.lean`; installed CLI requires single-token `--charon-args=--start-from=...` forwarding | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::verify_tipp_mipp_core` | explicit challenge effect, reversed round traversal, five fold accumulators, transcript reversals, both KZG opening cores, and five terminal checks | decoded challenges/inversions may fail; all vector shapes match; failures reject | ordinary field/group operations plus typed challenge, base-commitment, and pairing effects | indexed reverse loop with a single post-loop error exit; sequential/Rayon branches call the same two KZG cores | challenge/inversion errors are stored through the round loop and the first reached error is returned after it; base-commitment false/error order is preserved | none | no result-bearing verifier shim and no Arkworks/associated-type graph; pinned Aeneas workaround is explicit reverse indexing because `.rev()` lacks the required builtin | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::CombinedChecksPpeInput` | explicit alpha-beta, aggregate commitment, prepared gamma/delta points, and inner product | `requires true` | none | owned record | none | none | none | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::CombinedChecksCoreInput` | TIPP/MIPP input, gamma-ABC vector, public-input rows, randomizer, and PPE operands | caller supplies the downstream shape preconditions; count/round checks are performed by the core | none beyond contained records | owned record | none | none | none | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::CombinedChecksError` | typed invalid-count, invalid-round, and TIPP/MIPP failure payload | returned only after nonzero power-of-two and exact round-count checks or a TIPP failure | `usize` counts plus optional downstream error | data carrier | none | none | no error erasure in the extracted graph; concrete wrapper maps the TIPP string back to its public I/O error | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::CombinedChecksCoreOutput` | conjunction of TIPP/MIPP and PPE booleans plus the effect state needed for trace replay | returned only after both delegated checks complete | boolean pair and explicit effect state | data carrier | none | none | none | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::verify_combined_ppe_core` | calls `fold_public_inputs_core`, constructs `PreparedPpeVerifierCoreInput`, then calls `verify_ppe_core` | contained fold shape preconditions; prepared pairing `None` returns `false` | ordinary field/group operations and prepared pairing effect | strict delegation order; no scheduling branch | inherited fold/indexing failures | none | no associated-type or pairing wrapper in the graph | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::verify_combined_checks_core` | validates proof count and GIPA round count, delegates TIPP/MIPP and PPE, propagates TIPP errors, and returns the effect state | rejects zero/non-power-of-two proof counts and mismatched `log2` round counts before downstream calls | explicit field/group/pairing effect parameters | sequential and Rayon branches reduce to the same two core calls; only scheduling differs | count/round failures are typed; TIPP failure is preserved in `CombinedChecksError`; PPE false remains a boolean result | none | `core::mem::take`, `usize::ilog2`, `Result::map_err`, and `rayon::join` are executable definitions in `AeneasRuntime.lean`; no timing semantics are extracted | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::AggregateVerifierEffect` | decoded randomizer attempt at a supplied nonce and one combined-verifier call | the production adapter serializes the three commitments and calls `challenge_digest`; Rust-byte/digest-to-decoded-challenge equality is the named trace-correspondence boundary | explicit decoded-challenge and combined-result effects | mutable effect state fixes randomizer attempts before the combined call and preserves trace order | either effect may return the public error unchanged | none | no serializer, digest, Arkworks, or associated-type graph is hidden in the extracted core | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::AggregateVerifierCoreOutput` | accepted randomizer, both check bits, their conjunction, and final effect state | returned only after a decoded value outside `{0,1}` | ordinary Boolean conjunction | data carrier preserving the final trace state | none | none | vendored in `Ipp/Extracted/AggregateVerifierGenerated.lean` | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::verify_aggregate_proof_core` | nonce-zero start, retry on decode failure/zero/one, combined call, exact error propagation, and Boolean conjunction | the named `RandomizerTrace`/`RandomizerErrorTrace` correspondence fixes decoded challenges and chronological effect states; S2-35 shape/effect premises apply to the combined call | `AggregateVerifierEffect`, `PartialEq`, `Zero`, and `One` | one extracted loop; the combined call occurs only after the accepted randomizer and receives its final retry state | challenge errors after any retry and combined errors are returned unchanged | none | production `verify_aggregate_proof_with_trace` delegates to this core outside the benchmark-only baseline; `verify_aggregate_proof_refinement_statement` proves the `Ipp.FsAccepts` iff; byte/digest parity remains named | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::verify_aggregate_proof_with_trace` | production adapter for serialization/digest effects plus the extracted core | named Rust-byte/digest-to-typed-challenge trace correspondence and declared combined-effect delegation | concrete Arkworks/serializer/hash adapter only | delegates once to `verify_aggregate_proof_core`; drops the returned effect after trace emission | exact core errors map through unchanged | none | covered orchestration is proved; serializer/hash parity is not promoted | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::verify_aggregate_proof_profiled_with_trace` | profiled aggregate orchestration and trace sink | same as traced verifier; timing is observational | abstract field/group/pairing operations | non-benchmark path delegates through `verify_aggregate_proof_core` with a timing-recording effect; baseline path retains its profiling branch | inherited downstream failures | none | `ProfiledOutput` copies the core `accepted` Boolean and five supplied timing observations; `profiledOutput_observational` and `verify_aggregate_proof_profiled_with_trace_refinement_statement` prove the projection; normal/baseline trace-parity tests cover both cfgs | proved-model |

## Support Shims

The statement target set has `cfg(hax)` helper branches for private
encoding-row, encoding-field, row-arity, and padding-suffix traversals. The
branches are byte/error-equivalent to the runtime loops and are covered by
statement tests run both normally and with `RUSTFLAGS=--cfg hax`.

| shim | semantic postcondition | affected proof row | owner | reviewer | removal path | status |
| --- | --- | --- | --- | --- | --- | --- |
| `impl_u32__is_power_of_two` | returns true iff the `u32` input is a nonzero power of two under Rust `u32::is_power_of_two` semantics | `validate_counts` iff row | proof-aggregation maintainers | pending security/crypto review | remove when hax/F* support library exposes a compatible definition accepted by pinned F* | assumed |
| `impl__starts_with` | returns true iff the first slice begins with the second slice element-wise | wrapper malformed-domain rejection and round-trip rows | proof-aggregation maintainers | pending security/crypto review | remove when hax/F* support library exposes a compatible definition accepted by pinned F* | assumed |
| `impl__starts_with_append` | if a slice is constructed as `prefix || rest`, `starts_with(prefix || rest, prefix)` returns true | wrapper round-trip row | proof-aggregation maintainers | pending security/crypto review | remove when hax/F* support library exposes a compatible definition accepted by pinned F* | assumed |
| `impl__get_middle_append3` | for `prefix || field || suffix`, range-getting `[len(prefix), len(prefix) + len(field))` returns `field` when the total length fits `usize` | wrapper round-trip and digest-mismatch rows | proof-aggregation maintainers | pending security/crypto review | remove when hax/F* support library exposes range-get slice lemmas accepted by pinned F* | assumed |
| `impl__try_into_array_self_slice` | converting a fixed-size array viewed as an equal-length slice back to that array succeeds unchanged | wrapper round-trip row | proof-aggregation maintainers | pending security/crypto review | remove when hax/F* support library exposes slice-to-array round-trip lemmas accepted by pinned F* | assumed |
| `impl_u32__to_le_bytes_injective` | the 4-byte little-endian encoding of a `u32` is injective (distinct values give distinct byte arrays); `to_le_bytes` itself is an opaque hax model with no roundtrip, so injectivity is recorded as an axiom | statement encoding injectivity, frame-lemma value/length-prefix recovery | proof-aggregation maintainers | pending security/crypto review | remove when the hax/F* support library exposes a `from_le_bytes ∘ to_le_bytes = id` roundtrip accepted by pinned F* | assumed |
| `impl_u32__from_to_le_bytes` | `u32::from_le_bytes(u32::to_le_bytes(x)) == x` under Rust little-endian integer encoding semantics | wrapper round-trip row | proof-aggregation maintainers | pending security/crypto review | remove when the hax/F* support library exposes the roundtrip accepted by pinned F* | assumed |
| `impl_usize_u32_cast_roundtrip` | if a `usize` value fits in `u32`, casting to `u32` and back to `usize` preserves the value | wrapper round-trip row | proof-aggregation maintainers | pending security/crypto review | remove when hax/F* exposes machine-integer cast lemmas accepted by pinned F* | assumed |
| `impl_usize__checked_add_ok` | `usize::checked_add(x, y)` returns `Some(x + y)` whenever `x + y` fits in `usize` | wrapper round-trip row | proof-aggregation maintainers | pending security/crypto review | remove when hax/F* exposes checked-arithmetic lemmas accepted by pinned F* | assumed |
| `impl_u64__to_le_bytes_injective` | the 8-byte little-endian encoding of a `u64` is injective (distinct values give distinct byte arrays); same opaque-model rationale as the `u32` axiom | challenge-preimage nonce frame recovery | proof-aggregation maintainers | pending security/crypto review | remove when the hax/F* support library exposes a `from_le_bytes ∘ to_le_bytes = id` roundtrip accepted by pinned F* | assumed |

## Risk Rules

New extraction targets must declare their preconditions before proof work starts.
New `unsafe`, `while`, `loop`, unchecked arithmetic, panics, or support shims in
extracted targets are blockers until this file records the exact semantics and
`scripts/check-snarkpack-invariants.sh` is updated when the pattern is
script-checkable.
