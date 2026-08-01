# SnarkPack Hax Extraction Boundary

Status: reviewed metadata for the current implementation-boundary extraction
set. This file bounds the hax semantic-preservation assumption by target.

Every target listed in `hax-targets.txt` must have exactly one row here.
Local `assume val` declarations are forbidden. Missing pinned-hax operations
must be supplied by executable F* models with kernel-checked lemmas.

## Extracted Targets

| target | Rust features used | precondition | arithmetic mode | control flow | panic/expect | unsafe | hax shims | status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `shieldd_sdk_proof_aggregation::statement::StatementFieldBytes` | owned `Vec<u8>` newtype | `requires true` | none | constructors/accessors only | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::statement::StatementPublicInputRow` | owned `Vec<StatementFieldBytes>` newtype | `requires true` | `usize` length observation only | iterator accessors | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::statement::StatementPaddedRows` | owned `Vec<StatementPublicInputRow>` newtype | `requires true` | `usize` length observation only | iterator accessors | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::statement::StatementEncodingInput` | plain owned fields and typed rows | `requires true` | fixed-width `u32` fields | data carrier | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::statement::statement_encoding_input_core` | exact production constructor for the canonical encoder input | family route is already typed and all counts/rows are supplied by the validated caller | fixed-width field moves only | one family-field projection followed by record construction | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::statement::encode_statement` | `Vec` allocation, slice appends, typed row iteration; `cfg(hax)` uses structurally equivalent private row/field traversal helpers because pinned hax leaves loop folds opaque in F* | every byte-field length fits `u32` | `u32` little-endian writes; length conversion checked | runtime bounded `for` loops over rows and fields; hax extraction structural recursion over slices | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::statement::statement_digest_preimage` | `Vec` allocation, fixed statement-digest domain append, canonical-statement byte append | domain length plus canonical-statement length fits `usize` | `usize` capacity addition under the stated bound | branch-free | none | none | none | reviewed |
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
| `shieldd_sdk_proof_aggregation::bundle::ProofFamilyId` | registered family enum with typed subfamily identifiers | `requires true` | fixed `u32` identifiers | data carrier | none | none | generated protobuf discriminants are supplied by the pinned narrow F* shim | reviewed |
| `shieldd_sdk_proof_aggregation::bundle::FamilyProtoFields` | exact three-field protobuf routing record | `requires true` | fixed `u32` fields | data carrier | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::bundle::family_proto_fields` | exhaustive typed-family to protobuf-field projection | input is one registered typed family | fixed `u32` constants and subfamily values | finite match | none | none | generated protobuf discriminants are supplied by the pinned narrow F* shim | reviewed |
| `shieldd_sdk_proof_aggregation::bundle::FamilyRouteKind` | four-variant route enum | `requires true` | none | data carrier | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::bundle::FamilyRoute` | primitive route record with family kind and subfamily id | `requires true` | fixed `u32` field | data carrier | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::bundle::FamilyRouteError` | four-variant validation error enum | `requires true` | none | data carrier | none | none | none | reviewed |
| `shieldd_sdk_proof_aggregation::bundle::family_route_from_proto_fields` | primitive `u32` family/subfamily decision table used before domain conversion | `requires true` | fixed `u32` equality/inequality | finite `match` plus branch guards | none | none | none | reviewed |
| `shieldd_sdk_shielded_pool::note_reshape::generated::NoteReshapeFamilyId` | generated typed newtype and bounded `TryFrom<u32>` family registry | `requires true` | fixed `u32` comparisons | finite registered-id decision table | none | none | extraction receives the checked accessor/`TryFrom` model appended by the pinned driver | reviewed |
| `shieldd_sdk_shielded_pool::shielded_ics20_withdrawal::generated::ShieldedIcs20WithdrawalFamilyId` | generated typed newtype for the registered withdrawal family | `requires true` | fixed `u32` value | constructor/accessor only | none | none | extraction receives the checked accessor model appended by the pinned driver | reviewed |
| `ark_ip_proofs::challenge::ChallengeContext` | private 32-byte array newtype | constructor input is a 32-byte statement digest | none | constructor/accessor only | none | none | none | reviewed |
| `ark_ip_proofs::challenge::challenge_context_preimage` | `Vec` allocation and slice appends | input is a 32-byte statement digest | none | branch-free | none | none | none | reviewed |
| `ark_ip_proofs::challenge::challenge_preimage` | `Vec` allocation and slice appends | stage label length fits `u32` | `u64` little-endian nonce; checked stage length | branch-free after length conversion | `expect` on static stage-label length; accepted because all labels are compile-time constants and invariant-reviewed | none | none | reviewed |
| `ark_ip_proofs::challenge::challenge_preimage_core` | production-used `Vec` allocation and six ordered slice appends | fixed 32-byte context, four-byte stage length, and eight-byte nonce encodings are supplied by the shipping wrapper | infallible `u8` cloning only | branch-free | none | none | scoped Aeneas graph is byte-pinned as `Ipp/Extracted/ChallengeFrameGenerated.lean`; `ChallengeFrame.challenge_preimage_core_exact` proves the exact domain/length/stage/context/nonce/message concatenation | proved-model |

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

## S3 Fq multiplication proof harness

The pinned BLS12-377 Fq implementation is six limbs, despite the work-order's
four-limb wording. On the Windows x86_64 production configuration, `bmi2` and
`adx` are absent from `rustc --print cfg`, so ark-ff 0.5.0 selects its safe-Rust
no-carry CIOS multiplication rather than the guarded assembly branch. Because
the external `MontConfig`/`Fp384` trait graph is not an associated-type-free
hax boundary, the proof harness uses a faithful local monomorphic copy and
requires Rust parity against the real operation. Production builds do not
expose the copy unless `hax_compilation` or the `mac-campaign` feature is set.

The successful scoped extraction command was
`cargo hax into -v --output-dir /root/shieldd-s3-07-fq aeneas-lean
--charon-args=--start-from=crate::s3_07_arkworks_fq_spike::mul --lakefile`.
Its closed graph was `mul`, `round`, `mac`, `subtract_modulus`, `geq_modulus`,
and `sbb`, plus executable bounded-integer and array runtime operations. The
installed hax frontend also warned that it expected Aeneas `e0a1596` but could
not identify the installed Aeneas revision. The graph is vendored in
`Ipp/Extracted/ArkworksFqMulGenerated.lean`; the axiom-clean theorem
`Ipp.Extracted.ArkworksFqMul.decode_extracted_mul` proves the successful
extracted execution decodes to Fq multiplication on canonical inputs. The
2026-07-16 F02 re-decision selects F01B and retains this copy, parity test,
generated graph, and proof as tooling for the one arkworks production route.
The scoped campaign extraction remains outside `hax-targets.txt`.

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
| `ark_ip_proofs::gipa::compute_final_commitment_keys_core` | paired scalar slices, `Vec` exponent construction, and two explicit group MSMs; the private public-path delegator supplies pointwise inverses and concrete MSM callbacks | nonempty equal-length power-of-two key vectors; raw/inverse transcript slices have equal length and are pointwise inverses of nonzero challenges; key length is `2^transcript.len()` | ordinary scalar `Copy`/`Mul` and group `Clone`/`Add`/`MulAssign`; production callbacks are `LMC::msm_keys`/`RMC::msm_keys`; `hax_compilation` uses the generated ordered fold | nested bounded coefficient loops followed by two ordered folds in the extracted view | core assertions enforce shape; inversion `unwrap` remains only in the thin delegator and is covered by the nonzero challenge precondition | none | the monomorphic MSM copy is proved through digit packaging, executed window collection/recombination, and ordered sum exchange. `OrderedMsmConformance` retains the explicit copy-to-production/Rayon postcondition consumed by the shipping theorem; delegator/core parity pins inverse/raw orientation; scoped Aeneas output is vendored as `Ipp/Extracted/FinalCommitmentKeysGenerated.lean` | proved-model |
| `ark_ip_proofs::gipa::BaseCommitmentResult` | two-constructor typed result image for a base-commitment effect | `requires true` | explicit value/error type parameters | data carrier | none | none | none | proved-model |
| `ark_ip_proofs::gipa::BaseCommitmentEffect` | four typed operations: inner product, left verify, right verify, and target verify | effect methods may return typed errors; Boolean false short-circuits are enforced by the core | ordinary generic operation parameters with explicit `E` | effect interface only | none | none | no associated-type or Arkworks adapter appears in the extracted record | proved-model |
| `ark_ip_proofs::gipa::BaseCommitmentCoreInput` | singleton keys/messages, target-key vector, and three commitments | `requires true` | explicit key, message, and output types | owned record | none | none | none | proved-model |
| `ark_ip_proofs::gipa::verify_base_commitment_core` | explicit singleton left/right keys and messages, target-key vector, three outputs, and one typed effect record; call order is inner product, left verify, right verify, target verify | each effect `Err(E)` is returned unchanged; left/right `Ok(false)` short-circuit later calls; target `Ok(false)` is returned; no feature branch or panic | `BaseCommitmentEffect` has four associated-type-free methods; declared Lean laws interpret the singleton inner product and each commitment Boolean; the production adapter is the only `InnerProduct`/`DoublyHomomorphicCommitment` boundary | proved-model |
| `ark_ip_proofs::tipa::polynomial_coefficients_from_transcript` | `Vec`, fixed-size array-to-slice initialization, field arithmetic, bounded nested loops; production interleave retained | transcript length `μ`; output shape `2^(μ+1)-1`; `usize::pow` receives the bounded `u32` exponent cast | abstract field operations | production iterator interleave; `hax_compilation` indexed coefficient/interleave loops | none | none | `hax_compilation` traversal is order/zero-position equivalent; S2-23a's vendored graph uses the shared executable `core.num.Usize.pow` support definition (integer-overflow failure, otherwise the exact natural power) plus compact Vec/array support | proved-model |
| `ark_ip_proofs::tipa::polynomial_evaluation_product_form_from_transcript` | `Vec`, owned field arithmetic, bounded factor/product loops | transcript length is finite; field operations are total | abstract field operations | production iterator product; `hax_compilation` explicit indexed product fold | none | none | hax-owned arithmetic and product folds preserve factor order and multiplication result | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::structured_scalar_final_from_raw_transcript_inner` | slice, field arithmetic, bounded transcript fold | transcript slice is the reversed raw chronology | abstract field operations | indexed loop over the reversed slice | none | none | named generic arithmetic helper is called directly by the production core and preserves result order | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::inverse_powers_with_inverse` | `Vec`, scalar multiplication, bounded loop | `r_inv` is the inverse of a nonzero randomizer; output length is bounded | abstract field operations | indexed loop from `0..len` | none | none | wrapper checks nonzero/inverts; extracted helper takes the resulting inverse explicitly | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::build_shifted_ck_2_inner` | paired slices, point scalar multiplication, bounded loop | equal key/power lengths | abstract group scalar action | hax indexed traversal; production Rayon/sequential branches retained | none | none | hax traversal preserves pointwise order and result; no performance branch is used in the extracted view | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::fold_public_inputs_core` | explicit `F`/`G1` slices, geometric scalar powers, and affine-to-projective group accumulation supplied by the delegator | public-input slice is nonempty; every row has the first row's arity; `gamma_abc_g1.len() = input_arity + 1` | ordinary `Clone`, `PartialEq`, `From<u64>`, `One`, `Zero`, `Add`, `Sub`, `Mul`, and `Div` for `F`; ordinary `Clone`, `Add`, and scalar `Mul` for `G1` | indexed bounded loops preserve row order, input order, and gamma slot order; `r = 1` uses the row count and `r != 1` uses the geometric-series quotient | nonempty/arity assertions and bounded slice/Vec indexing; no `expect` or `Pairing` effect | none | no semantic hax shim; scoped Aeneas output is vendored as `Ipp/Extracted/Groth16VerifierGenerated.lean`; installed CLI requires single-token `--charon-args=--start-from=...` forwarding | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::verify_tipp_mipp_core` | explicit challenge effect, reversed round traversal, five fold accumulators, transcript reversals, both KZG opening cores, and five terminal checks | decoded challenges/inversions may fail; all vector shapes match; failures reject | ordinary field/group operations plus typed challenge, base-commitment, and pairing effects | indexed reverse loop with a single post-loop error exit; sequential/Rayon branches call the same two KZG cores | challenge/inversion errors are stored through the round loop and the first reached error is returned after it; base-commitment false/error order is preserved | none | no result-bearing verifier shim and no Arkworks/associated-type graph; pinned Aeneas workaround is explicit reverse indexing because `.rev()` lacks the required builtin | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::arkworks_tipp_x0_adapter_core` | serializes `r`, `com_a`, `com_b`, `com_c`, `ip_ab`, and `agg_c` in that order, then requests the `X0` challenge | each serializer or challenge call may return its typed string error; the first failure is returned | one mutable `TippMippAdapterPrimitive` effect threads serialization and challenge state | straight-line delegation; no scheduling branch | no panic or unchecked indexing | none | scoped Aeneas graph is byte-pinned in `Ipp/Extracted/TippMippAdapterGenerated.lean`; `TippMippAdapter.x0Message` and the adapter refinement fix the exact payload and stage | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::arkworks_tipp_round_adapter_core` | serializes the prior raw challenge followed by all five left commitment components and all five right commitment components, then requests the `Round` challenge | each serializer or challenge call may return its typed string error; the first failure is returned | one mutable `TippMippAdapterPrimitive` effect preserves the complete ordered message | straight-line delegation; no scheduling branch | no panic or unchecked indexing | none | scoped Aeneas graph is byte-pinned in `Ipp/Extracted/TippMippAdapterGenerated.lean`; `TippMippAdapter.roundMessage` and the adapter refinement fix left-before-right order | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::arkworks_tipp_final_bridge_adapter_core` | serializes the last raw challenge, final G2/G1 key pair, and final G1/G2/G1 messages in that order, then requests the `FinalBridge` challenge | each serializer or challenge call may return its typed string error; the first failure is returned | one mutable `TippMippAdapterPrimitive` effect preserves the bridge message and state transition | straight-line delegation; no scheduling branch | no panic or unchecked indexing | none | scoped Aeneas graph is byte-pinned in `Ipp/Extracted/TippMippAdapterGenerated.lean`; `TippMippAdapter.bridgeMessage` and the adapter refinement fix the exact payload and stage | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::arkworks_tipp_kzg_adapter_core` | serializes the final-bridge challenge and final G2/G1 key pair in that order, then requests the `Kzg` challenge | each serializer or challenge call may return its typed string error; the first failure is returned | one mutable `TippMippAdapterPrimitive` effect preserves the KZG message and state transition | straight-line delegation; no scheduling branch | no panic or unchecked indexing | none | scoped Aeneas graph is byte-pinned in `Ipp/Extracted/TippMippAdapterGenerated.lean`; `TippMippAdapter.kzgMessage` and the adapter refinement fix the exact payload and stage | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::arkworks_tipp_inverse_adapter_core` | delegates one field value to the primitive inverse operation and returns its `Option` unchanged | zero or another noninvertible input remains `None`; no error remapping | immutable primitive effect call only | branch-free delegation | none | none | scoped Aeneas graph is byte-pinned in `Ipp/Extracted/TippMippAdapterGenerated.lean`; the exact mathematical inverse remains the named `ArkworksTippKernelContract` boundary | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::arkworks_tipp_inner_product_adapter_core` | delegates the complete G1/G2 slices to the primitive pairing inner product once | primitive `Ok` maps to `BaseCommitmentResult::Ok`; primitive string error maps unchanged to `BaseCommitmentResult::Err` | immutable primitive pairing call only | one result match; no scheduling branch | none | none | scoped Aeneas graph is byte-pinned in `Ipp/Extracted/TippMippAdapterGenerated.lean`; singleton pairing semantics remain the named `ArkworksTippKernelContract` boundary | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::arkworks_tipp_pairing_check_adapter_core` | computes one primitive pairing inner product over the supplied slices and compares the result to the supplied commitment | primitive string error propagates unchanged; otherwise equality produces the Boolean result | immutable primitive pairing call followed by pure equality | straight-line `?` propagation; no scheduling branch | none | none | scoped Aeneas graph is byte-pinned in `Ipp/Extracted/TippMippAdapterGenerated.lean`; the adapter proof preserves the result and error ordering | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::arkworks_tipp_target_check_adapter_core` | accepts exactly a singleton GT slice whose sole value equals the supplied commitment | empty and nonsingleton slices reject before element comparison | pure length and equality checks; no external effect | short-circuit conjunction | safe indexing is guarded by `len() == 1` | none | scoped Aeneas graph is byte-pinned in `Ipp/Extracted/TippMippAdapterGenerated.lean`; the target-check refinement proves the singleton predicate | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::arkworks_tipp_msm_check_adapter_core` | computes one primitive MSM inner product over the supplied G1 messages and scalars and compares it to the supplied commitment | primitive string error propagates unchanged; otherwise equality produces the Boolean result | immutable primitive MSM call followed by pure equality | straight-line `?` propagation; no scheduling branch | none | none | scoped Aeneas graph is byte-pinned in `Ipp/Extracted/TippMippAdapterGenerated.lean`; singleton MSM semantics remain the named `ArkworksTippKernelContract` boundary | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::CombinedChecksPpeInput` | explicit alpha-beta, aggregate commitment, prepared gamma/delta points, and inner product | `requires true` | none | owned record | none | none | none | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::CombinedChecksCoreInput` | TIPP/MIPP input, gamma-ABC vector, public-input rows, randomizer, and PPE operands | caller supplies the downstream shape preconditions; count/round checks are performed by the core | none beyond contained records | owned record | none | none | none | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::CombinedChecksError` | typed invalid-count, invalid-round, and TIPP/MIPP failure payload | returned only after nonzero power-of-two and exact round-count checks or a TIPP failure | `usize` counts plus optional downstream error | data carrier | none | none | no error erasure in the extracted graph; concrete wrapper maps the TIPP string back to its public I/O error | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::CombinedChecksCoreOutput` | conjunction of TIPP/MIPP and PPE booleans plus the effect state needed for trace replay | returned only after both delegated checks complete | boolean pair and explicit effect state | data carrier | none | none | none | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::verify_combined_ppe_core` | calls `fold_public_inputs_core`, constructs `PreparedPpeVerifierCoreInput`, then calls `verify_ppe_core` | contained fold shape preconditions; prepared pairing `None` returns `false` | ordinary field/group operations and prepared pairing effect | strict delegation order; no scheduling branch | inherited fold/indexing failures | none | no associated-type or pairing wrapper in the graph | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::verify_combined_checks_core` | validates proof count and GIPA round count, delegates TIPP/MIPP and PPE, propagates TIPP errors, and returns the effect state | rejects zero/non-power-of-two proof counts and mismatched `log2` round counts before downstream calls | explicit field/group/pairing effect parameters | sequential and Rayon branches reduce to the same two core calls; only scheduling differs | count/round failures are typed; TIPP failure is preserved in `CombinedChecksError`; PPE false remains a boolean result | none | `core::mem::take`, `usize::ilog2`, `Result::map_err`, and `rayon::join` are executable definitions in `AeneasRuntime.lean`; no timing semantics are extracted | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::AggregateRandomizerEffect` | one `derive_randomizer(nonce, message)` operation returning an optional decoded field element | effect error is preserved; `None`, zero, and one are retry candidates rather than accepted values | explicit mutable randomizer effect with fixed `u64` nonce and byte-message inputs | effect interface only | none | none | no serializer, digest, or Arkworks type is hidden in the extracted trait; deployed byte/hash semantics are the named challenge-trace boundary | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::AggregateAdapterCoreInput` | owns the exact randomizer message and one complete `CombinedChecksCoreInput` | caller supplies the downstream shape preconditions checked by the combined core | plain byte vector and typed combined input | data carrier | none | none | vendored in `Ipp/Extracted/AggregateAdapterGenerated.lean`; all fields are visible to the input-projection theorem | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::AggregateAdapterCoreError` | distinguishes randomizer effect failure, delegated combined-check failure, and nonce exhaustion | preserves the original typed randomizer or combined error; exhaustion occurs only after rejection at `u64::MAX` | typed sum over the public effect error | data carrier | none | none | vendored in `Ipp/Extracted/AggregateAdapterGenerated.lean`; no failure class is collapsed | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::AggregateAdapterCoreOutput` | records the accepted randomizer, TIPP/PPE bits, their conjunction, and both final effect states | constructed only after an admissible randomizer and completed combined check | Boolean conjunction plus owned effect states | data carrier | none | none | vendored in `Ipp/Extracted/AggregateAdapterGenerated.lean`; `AggregateAdapter.accepted_path` projects every field | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::aggregate_adapter_core_input_from_parts` | constructs the adapter input from the exact randomizer byte string and combined input without transformation | `requires true`; no validation is deferred or duplicated by the constructor | field moves only | branch-free constructor | none | none | scoped Aeneas root is byte-pinned in `Ipp/Extracted/AggregateAdapterGenerated.lean`; `AggregateAdapter.aggregate_adapter_core_input_from_parts_exact` proves both projections | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::verify_aggregate_adapter_core` | nonce-zero start, retry on decode failure/zero/one, installation of the same accepted randomizer into both combined consumers, direct combined-core execution, typed error mapping, and Boolean conjunction | accepted executions require no operational premise; TIPP/PPE semantic interpretation remains separate | `AggregateRandomizerEffect`, the extracted algebraic adapters, `TippMippEffect`, and concrete pairing-effect parameters | one extracted loop; the combined core is called exactly once after an accepted candidate | randomizer failures map to `RandomizerFailure`, combined failures to `CombinedFailure`, and rejection at `u64::MAX` fails closed | none | scoped Aeneas graph is byte-pinned as `Ipp/Extracted/AggregateAdapterGenerated.lean`; `AggregateAdapter.accepted_path` derives the exact randomizer call and accepted `CombinedChecks.run`; four Rust tests cover retries, final nonce, stable message bytes, conjunction, and error ordering | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::verify_aggregate_proof_with_trace` | shipping adapter for commitment serialization, randomizer hashing, exact combined-input projection, concrete effects, and buffered TIPP trace replay | serializer/hash semantics and TIPP/PPE semantic refinements are named separately | concrete Arkworks/serializer/hash adapter | delegates once to `verify_aggregate_adapter_core`; replays the buffered TIPP trace only after successful combined completion | adapter errors map through `aggregate_adapter_core_error` without changing failure order | none | normal/profiled trace and acceptance parity plus focused adapter tests pin the production boundary | proved-model |
| `ark_ip_proofs::applications::groth16_aggregation::verify_aggregate_proof_profiled_with_trace` | profiled aggregate orchestration and trace sink | same semantic sub-verifier boundaries as the traced verifier; timing is observational | abstract field/group/pairing operations | non-benchmark path retains the profiled callback core for observational comparison; baseline path retains its profiling branch | inherited downstream failures | none | `ProfiledOutput` copies the core `accepted` Boolean and five supplied timing observations; normal/profiled trace-parity tests cover the shared bytes and results | proved-model |

## Checked Support Models

The statement target set has `cfg(hax)` helper branches for private
encoding-row, encoding-field, row-arity, and padding-suffix traversals. The
branches are byte/error-equivalent to the runtime loops and are covered by
statement tests run both normally and with `RUSTFLAGS=--cfg hax`.

| model or lemma | checked implementation | affected proof row | evidence | status |
| --- | --- | --- | --- | --- |
| `impl_u32__is_power_of_two` | executable enumeration of all 32 nonzero `u32` powers of two | `validate_counts` iff row | `SnarkpackMachineSupport.u32_is_power_of_two`; pinned full F* lane | proved |
| `impl__starts_with` | executable bounded prefix slice plus decidable sequence equality | wrapper malformed-domain rejection and round-trip rows | concrete definition installed into `Core_models.Slice`; pinned full F* lane | proved |
| `impl__starts_with_append` | prefix-of-append lemma with the required bounded-concatenation premise | wrapper round-trip row | concrete lemma installed into `Core_models.Slice`; pinned full F* lane | proved |
| `impl__get_middle_append3` | nonempty middle-range recovery using `FStar.Seq.Properties.append_slices` | wrapper round-trip and digest-mismatch rows | concrete lemma installed into `Core_models.Slice`; pinned full F* lane | proved |
| `impl__try_into_array_self_slice` | fixed-array reconstruction plus sequence extensionality | wrapper round-trip row | concrete lemma installed into `Core_models.Convert`; pinned full F* lane | proved |
| `impl_u32__to_le_bytes_injective` | little-endian encoding over `FStar.Endianness.n_to_le`, mapped to hax `u8` | statement encoding injectivity and frame recovery | `SnarkpackMachineSupport.u32_to_le_bytes_injective`; pinned full F* lane | proved |
| `impl_u32__from_to_le_bytes` | inverse map through `FStar.Endianness.le_to_n` | wrapper round-trip row | `SnarkpackMachineSupport.u32_from_to_le_bytes`; pinned full F* lane | proved |
| `impl_usize_u32_cast_roundtrip` | hax bounded-integer cast reduction | wrapper round-trip row | concrete lemma installed into `Core_models.Num`; pinned full F* lane | proved |
| `impl_usize__checked_add_ok` | reduction of the hax checked-add definition under its exact no-overflow premise | wrapper round-trip row | concrete lemma installed into `Core_models.Num`; pinned full F* lane | proved |
| `impl_u64__to_le_bytes_injective` | eight-byte little-endian encoding over `FStar.Endianness.n_to_le` | challenge-preimage nonce frame recovery | `SnarkpackMachineSupport.u64_to_le_bytes_injective`; pinned full F* lane | proved |

## Risk Rules

New extraction targets must declare their preconditions before proof work starts.
New `unsafe`, `while`, `loop`, unchecked arithmetic, panics, or support models in
extracted targets are blockers until this file records the exact semantics and
`scripts/check-snarkpack-invariants.sh` is updated when the pattern is
script-checkable.

A selected declaration digest may be re-recorded without per-graph planning
approval only when the graph has an intentionally changed recorded input, the
pinned extraction reproduces byte-identical normalized output, and the batch
manifest audit finds no other change. Normalized drift always requires proof
review.

`NORMALIZER_REVISION` records tool behavior, while
`NORMALIZED_ARTIFACT_REVISION` changes only during an explicitly authorized
normalized-artifact migration.
