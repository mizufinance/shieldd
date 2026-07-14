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

## S2 Tier 1 serial additions

| target | Rust features used | precondition | arithmetic mode | control flow | panic/expect | unsafe | hax shims | status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `ark_ip_proofs::gipa::rescale_fold_inner` | slices, `Vec`, indexed hax traversal; production Rayon threshold branch retained | equal slice lengths; bounded index range | abstract `MulAssign` and `Add` | production sequential/Rayon selection; `hax_compilation` indexed traversal preserves order | none in helper; caller owns length invariant | none | `hax_compilation` indexed traversal has the same elementwise result and ordering as the production iterator branches | scaffolded |
| `ark_ip_proofs::gipa::compute_final_commitment_keys` | `Vec` exponent construction, field inversion, commitment-key MSM | nonempty power-of-two key vector; nonzero transcript challenges; matching final exponent length | abstract field operations; production `msm_keys`; hax sequential MSM view | nested bounded loops | `unwrap` on inverse is covered by nonzero challenge precondition; assertions enforce shape | none | hax sequential MSM branch; Aeneas still rejects the Field/associated-type closure before Lean output | scaffolded |
| `ark_ip_proofs::tipa::polynomial_coefficients_from_transcript` | `Vec`, field arithmetic, bounded nested loops; production interleave retained | transcript length `μ`; output shape `2^(μ+1)-1` | abstract field operations | production iterator interleave; `hax_compilation` indexed coefficient/interleave loops | none | none | `hax_compilation` traversal is order/zero-position equivalent; generated Vec/array support remains to be integrated | scaffolded |

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
