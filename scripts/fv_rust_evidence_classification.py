"""Explicit Rust test classifications for the four-circuit FV claim."""

from __future__ import annotations

import re
from collections.abc import Iterable


TestSpec = tuple[str, str, str]
ALLOWED_TEST_KINDS = frozenset(
    {
        "negative",
        "boundary_negative",
        "full_circuit_negative",
        "attack_reproduction",
        "parity",
        "invariant",
        "integration",
    }
)
RUST_SECURITY_ROOTS = (
    "crates/bin/pd/src",
    "crates/bin/shieldd/src",
    "crates/core/app-tests/tests",
    "crates/core/app/src",
    "crates/core/asset/src",
    "crates/core/component/compliance/src",
    "crates/core/component/ibc/src",
    "crates/core/component/sct/src",
    "crates/core/component/shielded-pool/src",
    "crates/core/keys/src",
    "crates/core/num/src",
    "crates/core/transaction/src",
    "crates/core/transaction/tests",
    "crates/custody/src",
    "crates/crypto/constraint-coverage/src",
    "crates/crypto/proof-aggregation/src",
    "crates/crypto/proof-params/src",
    "crates/crypto/tct/src",
    "crates/test/mock-client/src",
    "crates/view/src",
)


def _symbols(raw: str) -> tuple[str, ...]:
    symbols = tuple(raw.split())
    if not symbols or symbols != tuple(sorted(set(symbols))):
        raise ValueError("FV Rust test symbols must be non-empty, unique, and sorted")
    return symbols


def _specs(kind: str, path: str, raw: str) -> tuple[TestSpec, ...]:
    return tuple((kind, path, symbol) for symbol in _symbols(raw))


def evidence_test_id(prefix: str, symbol: str) -> str:
    words = re.sub(r"(.)([A-Z][a-z]+)", r"\1-\2", symbol)
    words = re.sub(r"([a-z0-9])([A-Z])", r"\1-\2", words)
    words = re.sub(r"[^A-Za-z0-9]+", "-", words).strip("-").upper()
    return f"{prefix}-{words}"


def validate_no_existing_id_collisions(existing_ids: Iterable[str]) -> None:
    existing = set(existing_ids)
    proposed = {
        evidence_test_id(prefix, symbol)
        for prefix, owners in (
            ("PROPERTY", PROPERTY_OWNER_SPECS),
            ("ARTIFACT", ARTIFACT_OWNER_SPECS),
        )
        for specs in owners.values()
        for _, _, symbol in specs
    }
    collisions = proposed & existing
    if collisions:
        raise ValueError(
            f"FV Rust evidence IDs collide with an existing ledger: {sorted(collisions)}"
        )


# These tests directly exercise semantic properties relied upon by the six
# deployed relations or by their construction and state-transition boundary.
# The selector lists are deliberately static: a new test remains unclassified
# until a reviewer explicitly promotes or excludes it.
PROPERTY_OWNER_SPECS: dict[str, tuple[TestSpec, ...]] = {
    "ACTION-ANCHOR-CONSISTENCY": (
        *_specs(
            "boundary_negative",
            "crates/core/component/sct/src/component/tree.rs",
            "sct_capacity_is_checked_before_block_mutation",
        ),
        *_specs(
            "parity",
            "crates/crypto/tct/src/commitment.rs",
            "roundtrip_json_zero",
        ),
        *_specs(
            "parity",
            "crates/crypto/tct/src/index.rs",
            """
            u16_convert_block_inverse
            u32_convert_epoch_inverse
            u64_convert_eternity_inverse
            """,
        ),
        *_specs(
            "invariant",
            "crates/crypto/tct/src/internal/frontier/tier.rs",
            "position_advances_by_one",
        ),
        *_specs(
            "invariant",
            "crates/crypto/tct/src/internal/frontier/top.rs",
            "top_position_advances_by_one",
        ),
        *_specs(
            "invariant",
            "crates/crypto/tct/src/internal/hash.rs",
            "forgotten_increments",
        ),
        *_specs(
            "invariant",
            "crates/crypto/tct/src/internal/path.rs",
            """
            directions_of_index_check
            which_way_direction_correct
            which_way_indices_correct
            """,
        ),
        *_specs(
            "parity",
            "crates/crypto/tct/src/storage/deserialize.rs",
            "uninitialized_produces_correct_position_and_forgotten",
        ),
        *_specs(
            "invariant",
            "crates/crypto/tct/src/structure.rs",
            """
            height_correct
            indexing_correct
            place_correct
            """,
        ),
    ),
    "BALANCE-CONSERVATION": (
        *_specs(
            "invariant",
            "crates/core/asset/src/balance.rs",
            "all_expressions_correct_commitment",
        ),
        *_specs(
            "invariant",
            "crates/core/asset/src/value.rs",
            "sum_balance_commitments",
        ),
    ),
    "ANCHOR-FRESHNESS": (
        *_specs(
            "invariant",
            "crates/core/app/src/action_handler/transaction.rs",
            """
            anchor_validation_cache_counts_shared_pair_once
            claimed_anchor_validation_cache_counts_shared_anchor_once
            """,
        ),
        *_specs(
            "invariant",
            "crates/core/component/compliance/src/component/rpc.rs",
            "current_anchors_returns_both_mutable_roots",
        ),
    ),
    "CIPHERTEXT-CORRECTNESS": (
        *_specs(
            "integration",
            "crates/core/app-tests/tests/compliance_diversifier_fix.rs",
            "compliance_enrichment_preserves_sender_diversifier_on_supported_transfer",
        ),
        *_specs(
            "parity",
            "crates/core/component/compliance/src/crypto.rs",
            """
            test_derive_compliance_scalar_deterministic
            test_point_encoding_equivalence
            """,
        ),
        *_specs(
            "invariant",
            "crates/core/component/compliance/src/crypto.rs",
            """
            test_unregulated_sink_keys_are_hash_to_curve_points
            test_unregulated_sink_keys_are_stable_and_non_identity
            """,
        ),
        *_specs(
            "invariant",
            "crates/core/component/shielded-pool/src/transfer/compliance.rs",
            """
            unregulated_compliance_ignores_authenticated_predecessor_policy
            unregulated_maximum_amount_is_never_flagged
            """,
        ),
    ),
    "DETECTION-CORRECTNESS": (
        *_specs(
            "invariant",
            "crates/core/component/compliance/src/audit_records.rs",
            """
            subject_filter_applies_asset_before_each_registered_address_selector
            subject_filter_finds_receiver_and_both_regulated_parties
            subject_filter_finds_sender_with_or_without_change_and_after_permutation
            """,
        ),
        *_specs(
            "invariant",
            "crates/core/component/shielded-pool/src/discovery.rs",
            """
            full_tags_vary_while_prefixes_stay_stable
            parameters_reject_inverted_precisions
            selectors_are_nested_and_match_honest_tags
            transfer_shape_hides_roles_and_no_change_branch
            """,
        ),
        *_specs(
            "boundary_negative",
            "crates/core/component/shielded-pool/src/discovery.rs",
            "decoding_rejects_non_canonical_unused_bits",
        ),
        *_specs(
            "invariant",
            "crates/core/component/compliance/src/issuer_keys.rs",
            """
            detection_sender_word_is_injective_and_canonical
            test_dk_per_asset_isolation
            test_mck_and_dk_are_independent
            test_no_false_positive_flag_for_asset_with_high_byte
            """,
        ),
        *_specs(
            "boundary_negative",
            "crates/core/component/compliance/src/issuer_keys.rs",
            """
            legacy_asset_flag_alias_is_rejected
            test_wrong_dk_cannot_decrypt
            """,
        ),
        *_specs(
            "parity",
            "crates/core/component/compliance/src/issuer_keys.rs",
            """
            test_detection_key_public_roundtrip
            test_detection_tier_flagged
            test_detection_tier_roundtrip
            test_dk_basic
            test_encrypt_to_dk_pub_without_dk
            test_flag_roundtrip_variety_of_asset_ids
            test_flag_survives_encrypt_decrypt_realistic_asset_id
            test_mck_basic
            test_mck_public_roundtrip
            """,
        ),
        *_specs(
            "integration",
            "crates/core/component/compliance/src/lib.rs",
            "test_end_to_end_detection_and_decryption",
        ),
    ),
    "FIXED-ARITY-PRIVACY": (
        *_specs(
            "integration",
            (
                "crates/core/app-tests/tests/"
                "app_can_sweep_a_collection_of_small_notes.rs"
            ),
            "app_can_sweep_a_collection_of_small_notes",
        ),
        *_specs(
            "invariant",
            "crates/core/component/shielded-pool/src/note_reshape/generated.rs",
            "registry_declares_the_two_padded_directions",
        ),
        *_specs(
            "invariant",
            "crates/core/transaction/src/is_action.rs",
            "withdrawal_view_ignores_private_padding_and_hides_synthetic_change",
        ),
        *_specs(
            "invariant",
            "crates/view/src/note_manager.rs",
            """
            explicit_many_to_one_returns_single_note_reshape_transaction
            many_to_one_uses_padded_canonical_family
            one_to_many_pads_requested_outputs_to_family_capacity
            """,
        ),
    ),
    "ISSUED-ADDRESS-RECOVERY": _specs(
        "parity",
        "crates/view/src/storage.rs",
        "restore_recovers_standard_and_randomized_issued_addresses",
    )
    + _specs(
        "negative",
        "crates/view/src/storage.rs",
        "issued_address_birth_height_is_write_once_and_purpose_cannot_change",
    ),
    "NATIVE-KEY-AND-ADDRESS-PARITY": (
        *_specs(
            "boundary_negative",
            "crates/core/keys/src/address/r1cs.rs",
            """
            address_var_enforces_diversified_generator_nonidentity
            address_var_enforces_transmission_key_nonidentity
            """,
        ),
        *_specs(
            "boundary_negative",
            "crates/core/keys/src/address.rs",
            """
            address_components_reject_identity_diversified_generator
            address_components_reject_identity_or_invalid_transmission_key
            rejects_legacy_80_byte_address
            """,
        ),
        *_specs(
            "parity",
            "crates/core/keys/src/address.rs",
            """
            test_address_encoding
            test_bytes_roundtrip
            """,
        ),
        *_specs(
            "invariant",
            "crates/core/keys/src/address.rs",
            "test_address_keys_are_diversified",
        ),
        *_specs(
            "boundary_negative",
            "crates/core/keys/src/keys/fvk/r1cs.rs",
            "authorization_key_var_enforces_nonidentity",
        ),
        *_specs(
            "boundary_negative",
            "crates/core/keys/src/keys/fvk.rs",
            """
            full_viewing_key_rejects_identity_authorization_key
            full_viewing_key_rejects_zero_reduced_incoming_viewing_key
            """,
        ),
        *_specs(
            "parity",
            "crates/core/keys/src/keys/fvk.rs",
            "full_viewing_key_accepts_valid_components",
        ),
        *_specs(
            "invariant",
            "crates/core/keys/src/keys/ivk.rs",
            "enforce_field_assumptions",
        ),
        *_specs(
            "boundary_negative",
            "crates/core/keys/src/keys/ivk.rs",
            "incoming_viewing_key_var_enforces_nonzero_reduction",
        ),
        *_specs(
            "negative",
            "crates/core/keys/src/keys/ivk.rs",
            "views_address_fails_on_other_address",
        ),
        *_specs(
            "parity",
            "crates/core/keys/src/keys/ivk.rs",
            """
            views_address_succeeds_on_own_address
            views_address_succeeds_on_own_ephemeral_address
            """,
        ),
        *_specs(
            "parity",
            "crates/core/keys/src/test_keys.rs",
            """
            test_addresses_match_viewing_key
            test_fvk_matches
            """,
        ),
    ),
    "OUTPUT-WELL-FORMEDNESS": (
        *_specs(
            "integration",
            (
                "crates/core/app-tests/tests/"
                "app_can_transfer_notes_and_detect_new_notes.rs"
            ),
            "app_can_transfer_notes_and_detect_new_notes",
        ),
        *_specs(
            "integration",
            "crates/core/component/shielded-pool/src/component/note_manager.rs",
            """
            mint_note_stages_position_derived_payloads
            position_derived_mint_matches_immediate_mint_payload
            """,
        ),
    ),
    "NOTE-OWNERSHIP-SPEND-AUTH": (
        *_specs(
            "integration",
            "crates/custody/src/threshold.rs",
            "test_transaction_signing",
        ),
    ),
    "PLAN-BOUNDARY-CANONICALITY": (
        *_specs(
            "attack_reproduction",
            "crates/core/app/src/app/mod.rs",
            "artifact_extraction_cannot_bypass_action_stateless_checks",
        ),
        *_specs(
            "integration",
            "crates/core/app/src/app/host.rs",
            "host_execution_accepts_withdrawals_for_registered_assets",
        ),
        *_specs(
            "boundary_negative",
            "crates/core/app/src/app/host.rs",
            "standalone_execution_rejects_host_withdrawals",
        ),
        *_specs(
            "invariant",
            "crates/custody/src/policy.rs",
            "only_ibc_relay_accepts_self_funded_transfer",
        ),
        *_specs(
            "negative",
            "crates/custody/src/policy.rs",
            "only_ibc_relay_rejects_external_transfer_outputs",
        ),
        *_specs(
            "invariant",
            "crates/test/mock-client/src/lib.rs",
            """
            witness_plan_includes_fee_funding_transfer_spend_proof
            witness_plan_includes_hidden_arity_transfer_spend_proof
            """,
        ),
        *_specs(
            "integration",
            (
                "crates/core/transaction/tests/"
                "generate_transaction_signing_test_vectors.rs"
            ),
            "effect_hash_test_vectors",
        ),
        *_specs(
            "boundary_negative",
            "crates/core/component/compliance/src/ibc.rs",
            """
            extract_user_memo_no_memo_field
            is_compliance_memo_rejects_plain_text
            missing_asset_id_rejected
            non_compliance_memo_returns_none
            regulated_memo_allows_empty_or_exact_compliance_wrapper
            regulated_memo_rejects_forwarding_and_user_memo_shapes
            wrong_ciphertext_size_rejected
            """,
        ),
        *_specs(
            "parity",
            "crates/core/component/compliance/src/ibc.rs",
            """
            preserves_user_memo
            roundtrip_encode_decode
            roundtrip_with_existing_memo
            """,
        ),
        *_specs(
            "invariant",
            "crates/core/component/shielded-pool/src/note_reshape/generated.rs",
            "canonical_selection_is_directional_and_unique",
        ),
        *_specs(
            "boundary_negative",
            "crates/core/component/shielded-pool/src/shielded_host_withdrawal/action.rs",
            "unknown_family_id_is_rejected_at_wire_boundary",
        ),
        *_specs(
            "boundary_negative",
            "crates/core/component/shielded-pool/src/note_reshape/generated.rs",
            "serde_rejects_unknown_and_retired_family_ids",
        ),
        *_specs(
            "integration",
            "crates/view/src/note_manager.rs",
            """
            exact_fee_generic_funding_builds_zero_value_fee_change
            fragmented_ics20_withdrawal_requests_note_reshape_then_resume_builds_action
            fragmented_transfer_requests_note_reshape_then_resume_builds_transfer
            ics20_withdrawal_ready_produces_wallet_facing_action_only
            transfer_ready_produces_wallet_facing_transfer_only
            """,
        ),
    ),
    "REGULATED-STATUS-SOUNDNESS": (
        *_specs(
            "negative",
            "crates/core/component/compliance/src/event.rs",
            """
            user_registration_rejects_mismatched_commitment
            user_status_event_requires_legal_bound_transition
            """,
        ),
        *_specs(
            "negative",
            "crates/view/src/storage.rs",
            "compliance_block_failure_rolls_back_leaf_tree_and_anchor_writes",
        ),
        *_specs(
            "negative",
            "crates/view/src/worker.rs",
            """
            empty_compliance_delta_still_requires_exact_block_anchors
            status_projection_authenticates_the_previous_leaf_and_event_order
            """,
        ),
        *_specs(
            "invariant",
            "crates/core/component/compliance/src/registry.rs",
            "user_leaf_record_is_compact_and_authenticated",
        ),
        *_specs(
            "invariant",
            "crates/core/component/compliance/src/action_check.rs",
            "ensure_assets_not_regulated_all_unregulated",
        ),
        *_specs(
            "negative",
            "crates/core/component/compliance/src/action_check.rs",
            """
            ensure_assets_not_regulated_batch_with_one_regulated
            ensure_not_regulated_rejects_regulated
            ensure_not_regulated_unknown_asset
            """,
        ),
        *_specs(
            "integration",
            "crates/core/component/compliance/src/component/state.rs",
            """
            test_init_chain
            test_init_chain_with_custom_genesis
            test_init_chain_without_genesis
            test_msg_register_asset
            test_msg_register_unregulated_asset_is_noop
            test_msg_register_user_for_regulated_asset
            """,
        ),
        *_specs(
            "negative",
            "crates/core/component/compliance/src/component/state.rs",
            """
            test_asset_registration_rejects_expired_grant
            test_asset_registration_rejects_forged_grant
            test_asset_registration_rejects_unauthorized_registrar
            test_msg_register_regulated_without_dk_pub_fails
            test_msg_register_user_for_absent_asset_fails_without_mutating_state
            test_msg_register_user_for_unregulated_asset_fails_without_mutating_state
            test_msg_register_user_rejects_invalid_slot_id
            test_user_registration_rejects_missing_wrong_and_expired_grants
            """,
        ),
        *_specs(
            "invariant",
            "crates/core/component/compliance/src/indexed_tree.rs",
            """
            insertion_and_policy_update_preserve_all_invariants
            test_fq_max_is_field_modulus_minus_one
            test_fq_ord_key_numeric_order
            test_imt_find_low_leaf_edge_cases
            test_imt_insert_multiple_maintains_order
            test_imt_insert_single
            test_imt_membership_proof
            test_imt_new_has_sentinel
            test_imt_non_membership_empty_tree
            test_imt_non_membership_proof
            test_imt_predecessor_index_matches_linear_scan
            test_imt_root_changes_on_insert
            test_imt_with_custom_depth
            test_insert_result_contains_correct_data
            test_leaf_commit_includes_policy
            test_leaf_from_policy
            test_route_policy_to_fq_order_independent
            test_sentinel_covers_full_range
            test_string_to_fq_deterministic
            """,
        ),
        *_specs(
            "parity",
            "crates/core/component/compliance/src/indexed_tree.rs",
            """
            test_imt_serialization_bincode
            test_imt_serialization_json
            test_indexed_leaf_bincode_roundtrip
            test_indexed_leaf_proto_roundtrip
            """,
        ),
        *_specs(
            "negative",
            "crates/core/component/compliance/src/indexed_tree.rs",
            """
            indexed_leaf_proto_rejects_omitted_policy_facts_and_invalid_points
            sparse_reconstruction_and_deserialization_reject_corruption
            test_fq_max_no_non_membership_proof
            test_imt_cannot_insert_duplicate
            test_imt_cannot_insert_zero
            test_imt_membership_fails_for_missing
            test_imt_non_membership_fails_for_existing
            test_non_membership_near_fq_max
            well_formedness_rejects_count_and_position_corruption
            well_formedness_rejects_depth_and_capacity_corruption
            well_formedness_rejects_derived_index_and_merkle_corruption
            well_formedness_rejects_duplicate_values_and_noncanonical_sentinel
            well_formedness_rejects_incomplete_and_inconsistent_successor_chains
            """,
        ),
        *_specs(
            "invariant",
            "crates/core/component/compliance/src/lib.rs",
            """
            test_compliance_path_generation
            test_different_positions
            test_multiple_users_path
            test_transfer_compliance_path_generation
            """,
        ),
        *_specs(
            "invariant",
            "crates/core/component/compliance/src/tree.rs",
            """
            test_auth_path_length
            test_multiple_updates
            test_quad_tree_basic
            test_serialization
            test_sparse_storage
            test_verify_auth_path
            test_zero_hashes_precomputed
            """,
        ),
        *_specs(
            "negative",
            "crates/core/component/compliance/src/tree.rs",
            """
            test_auth_path_invalid_position_returns_error
            test_update_invalid_position_returns_error
            """,
        ),
        *_specs(
            "integration",
            "crates/view/src/compliance_tree.rs",
            """
            asset_tree_basics
            asset_tree_persist_writes_only_dirty_positions_and_reloads_root
            asset_tree_sync_preserves_policy
            fresh_asset_tree_persists_sentinel_before_advancing_leaf_count
            user_tree_insert_and_witness
            """,
        ),
    ),
    "SECRECY": (
        *_specs(
            "negative",
            "crates/core/component/shielded-pool/src/note.rs",
            "note_decryption_fails_with_incorrect_epk",
        ),
        *_specs(
            "parity",
            "crates/core/component/shielded-pool/src/note.rs",
            """
            note_encryption_and_decryption
            note_encryption_and_sender_decryption
            """,
        ),
    ),
    "WITNESS-ABI-CANONICALITY": (
        *_specs(
            "boundary_negative",
            "crates/core/component/shielded-pool/src/compliance_helpers.rs",
            "transaction_blinding_nonce_is_required_and_canonical",
        ),
    ),
    "ZK-PROP-AMOUNT-RANGE-128": (
        *_specs(
            "invariant",
            "crates/core/num/src/amount.rs",
            """
            amount_is_structurally_below_2_pow_128
            scalar_embedding_of_max_amount_does_not_wrap
            """,
        ),
    ),
}


# Constraint extraction/coverage is part of the trusted FV toolchain. The
# aggregation rows are only redundant proposal-liveness and encoding evidence:
# they never authorize a Groth16 proof or satisfy a verifier-capability claim.
ARTIFACT_OWNER_SPECS: dict[str, tuple[TestSpec, ...]] = {
    "FV-FORMAL-TOOLCHAIN-INTEGRITY": (
        *_specs(
            "integration",
            "crates/crypto/proof-params/src/gnark_artifact_validation.rs",
            "exact_roster_and_all_four_repository_artifacts_validate",
        ),
        *_specs(
            "boundary_negative",
            "crates/crypto/proof-params/src/gnark_artifact_validation.rs",
            """
            artifact_directory_rejects_extra_entries_and_hardlink_aliases
            every_metadata_pinned_artifact_hash_is_enforced
            metadata_rejects_schema_circuit_and_manifest_shape_mutations
            roster_rejects_family_id_and_shape_mutations
            setup_provenance_rejects_status_and_duplicate_self_test_mutations
            """,
        ),
        *_specs(
            "invariant",
            "crates/crypto/constraint-coverage/src/contracts.rs",
            """
            chunks_large_contract_relations
            chunks_medium_contract_relations_by_poseidon_rung
            distinct_coeff_geometric_sum_is_not_compressed
            factors_large_linear_combinations
            factors_structured_lc_behind_named_opaque_definition
            forced_structure_exposes_short_rvk_accumulator_run
            generated_template_facade_requires_a_separate_semantic_provider
            keeps_configured_irregular_linear_combinations_inline
            keeps_parallel_runs_with_allocation_transition_aligned
            normalized_medium_relation_factors_structured_lcs
            rendered_structured_lc_is_compact
            renders_every_family_through_the_normalized_template_facade
            renders_repeated_assert_eq_through_the_registry_facade
            renders_structured_lc_exactly
            shards_contract_definitions_only_at_top_level_boundaries
            short_run_is_not_compressed
            statement_hash_large_relations_keep_five_row_parts
            structures_interleaved_stride_runs
            structures_stride_run_and_expands_to_original
            structures_transfer_ack_stride13_parallel_offset_one
            structures_transfer_shared_secret_mixed_strides
            unprofitable_runs_are_not_compressed
            """,
        ),
        *_specs(
            "parity",
            "crates/crypto/constraint-coverage/src/field.rs",
            """
            inverse_roundtrips
            parse_and_reduce_negative
            """,
        ),
        *_specs(
            "invariant",
            "crates/crypto/constraint-coverage/src/ir.rs",
            """
            builds_ir_with_classes_and_wire_roles
            normalization_preserves_cross_row_connectivity_and_coefficients
            normalizes_once_across_rows_and_reconstructs_exact_rows
            parses_and_round_trips_a_constraint
            """,
        ),
        *_specs(
            "negative",
            "crates/crypto/constraint-coverage/src/ir.rs",
            """
            round_trip_check_bites_on_garbled_row
            seating_and_relation_mutations_fail_closed
            """,
        ),
        *_specs(
            "invariant",
            "crates/crypto/constraint-coverage/src/leangen.rs",
            """
            boundary_threads_single_accumulator
            folds_multiple_groups_on_output_side
            generates_relation_with_binders
            linearizes_distinct_coeff_geometric
            remat_preserves_residuals_over_gf_p
            rematerializes_growing_accumulator
            rung_cuts_keep_step_state_bounded
            threaded_accumulator_emits_stepstate_args
            threaded_emits_per_row_certs_no_global_state
            """,
        ),
        *_specs(
            "boundary_negative",
            "crates/crypto/constraint-coverage/src/leangen.rs",
            "boundary_rejects_wide_step_state",
        ),
        *_specs(
            "parity",
            "crates/crypto/constraint-coverage/src/ltchain.rs",
            """
            production_gate_recovers_both_ladders
            recovers_q4_ladder_from_real_sr1cs
            recovers_r_ladder_from_real_sr1cs_and_gate_holds
            """,
        ),
        *_specs(
            "negative",
            "crates/crypto/constraint-coverage/src/ltchain.rs",
            "gate_fails_closed_on_wrong_bound",
        ),
        *_specs(
            "invariant",
            "crates/crypto/constraint-coverage/src/lib.rs",
            """
            coverage_passes_for_exact_partition
            parses_sr1cs
            """,
        ),
        *_specs(
            "negative",
            "crates/crypto/constraint-coverage/src/lib.rs",
            """
            coverage_rejects_adapter_constraints
            coverage_rejects_gap
            coverage_rejects_marker_constraints
            coverage_rejects_unclassified_constraints
            """,
        ),
        *_specs(
            "negative",
            "crates/crypto/constraint-coverage/src/main.rs",
            """
            reused_ir_rejects_mutated_derived_content
            reused_ir_rejects_stale_manifest_segment_projection
            """,
        ),
        *_specs(
            "invariant",
            "crates/crypto/constraint-coverage/src/obligations.rs",
            """
            functional_assumption_is_tiered_not_fully_discharged
            manifest_is_consistent_with_ir
            obligations_partition_all_instances
            """,
        ),
        *_specs(
            "negative",
            "crates/crypto/constraint-coverage/src/obligations.rs",
            """
            forgotten_class_is_unmapped
            functional_assumption_requires_closed_allowlist
            proven_class_constant_drift_is_caught
            proven_class_missing_instance_is_unpinned
            proven_instance_missing_contract_is_caught
            proven_instance_missing_theorem_is_caught
            proven_instance_relation_drift_is_caught
            proven_instance_wire_role_drift_is_caught
            """,
        ),
        *_specs(
            "invariant",
            "crates/crypto/constraint-coverage/src/rowmap.rs",
            """
            classifies_every_bucket_by_wire_role
            real_rvk_slice_is_exhaustive_and_bit_exact
            """,
        ),
        *_specs(
            "invariant",
            "crates/crypto/constraint-coverage/src/template_registry.rs",
            """
            exact_digest_authenticates_registry_payload
            exact_digest_precedes_equivalent_sibling_search
            indexed_row_search_handles_large_same_shape_permutation
            presentation_mutations_preserve_template_id
            """,
        ),
        *_specs(
            "negative",
            "crates/crypto/constraint-coverage/src/template_registry.rs",
            """
            duplicate_exact_templates_fail_ambiguous
            local_match_uses_one_fail_closed_search_budget
            semantic_mutations_fail_closed
            """,
        ),
        *_specs(
            "invariant",
            "crates/crypto/constraint-coverage/src/wiring.rs",
            "acyclic_chain_certifies_with_topo_order",
        ),
        *_specs(
            "negative",
            "crates/crypto/constraint-coverage/src/wiring.rs",
            "cycle_fails_closed",
        ),
    ),
    "FV-PROVER-TRANSPORT-INTEGRITY": (
        *_specs(
            "boundary_negative",
            "crates/core/component/shielded-pool/src/gnark/runtime.rs",
            """
            read_frame_rejects_oversized_response_before_payload_allocation
            write_frame_rejects_oversized_request
            """,
        ),
        *_specs(
            "boundary_negative",
            "crates/core/component/shielded-pool/src/gnark/transport.rs",
            """
            take_returned_bytes_rejects_null_pointer_with_nonzero_length
            take_returned_bytes_rejects_oversized_result_before_copying
            validate_prove_request_len_rejects_oversized_request
            """,
        ),
        *_specs(
            "parity",
            "crates/core/component/shielded-pool/src/gnark/transport.rs",
            "take_returned_bytes_copies_bounded_bytes",
        ),
    ),
    "FV-REDUNDANT-AGGREGATION-INTEGRITY": (
        *_specs(
            "negative",
            "crates/core/app/src/app/preconsensus.rs",
            """
            decode_artifact_do_not_panic
            decode_batch_item_do_not_panic
            """,
        ),
        *_specs(
            "boundary_negative",
            (
                "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/"
                "applications/groth16_aggregation.rs"
            ),
            """
            aggregate_adapter_core_preserves_error_order_and_kind
            aggregate_adapter_core_queries_last_nonce_and_fails_closed
            arkworks_tipp_adapter_core_stops_at_first_serialization_error
            malformed_identity_outputs_reject_before_transcript_or_folding
            prover_randomizer_core_rebuilds_exact_message_and_fails_closed
            shipping_nonce_exhaustion_maps_exact_public_error
            validated_aggregate_proof_is_scalar_and_cannot_be_bypassed
            """,
        ),
        *_specs(
            "boundary_negative",
            (
                "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/"
                "applications/groth16_aggregation.rs"
            ),
            """
            fold_public_inputs_core_preserves_shape_rejections
            shared_prover_round_pairing_preparation_preserves_shape_failure_order
            """,
        ),
        *_specs(
            "invariant",
            (
                "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/"
                "applications/groth16_aggregation.rs"
            ),
            """
            aggregate_adapter_core_accepts_success_at_last_nonce
            aggregate_adapter_core_retries_and_installs_one_randomizer
            aggregate_adapter_core_shipping_semantic_execution_retains_exact_output
            aggregate_adapter_input_constructors_preserve_every_field
            aggregate_prover_initial_commitment_projection_preserves_tuple_and_error_order
            aggregate_prover_profiled_preserves_proof_bytes_and_trace
            aggregate_randomizer_message_is_exact_commitment_order
            arkworks_tipp_adapter_core_routes_exact_stage_messages
            combined_input_projection_preserves_shipping_inputs
            padding_pairing_coalescing_is_exact_on_bls12_377
            padding_pairing_coalescing_is_exact_on_bls12_381
            post_gipa_challenge_cores_preserve_stage_bytes_and_error_order
            prover_and_verifier_share_randomizer_admissibility
            prover_gipa_core_owns_round_order_and_all_terminal_folds
            prover_gipa_semantic_execution_owns_call_and_round_effect_chronology
            prover_round_commitment_core_exposes_exact_operands_and_error_order
            prover_structural_cores_preserve_fold_and_round_field_order
            scalar_identity_serialization_matches_arkworks_singleton_vector
            shared_gt_fold_matches_sequential_bls12_377
            shared_gt_fold_matches_sequential_bls12_381
            shipping_aggregate_prover_projection_retains_prelude_and_wire_execution
            shipping_verifier_observation_core_preserves_empty_phase_boundaries
            shipping_verifier_observed_backend_result_core_correlates_before_arc
            shipping_verifier_semantic_execution_with_traces_core_preserves_exact_states
            tipp_mipp_challenge_prefix_exposes_exact_shipping_values
            """,
        ),
        *_specs(
            "parity",
            (
                "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/"
                "applications/groth16_aggregation.rs"
            ),
            """
            fold_public_inputs_core_matches_baseline_across_shapes
            shared_prover_round_pairing_preparation_preserves_outputs_and_counts_unique_operands
            """,
        ),
        *_specs(
            "invariant",
            "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/gipa.rs",
            """
            fold_output_matches_direct_expression
            rescale_fold_matches_elementwise_expression
            """,
        ),
        *_specs(
            "invariant",
            "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/tipa/mod.rs",
            """
            affine_kzg_profiled_projects_exact_quotient_msm
            kzg_opening_core_owns_construction_order_and_projection
            kzg_opening_msm_core_forwards_exact_vectors_and_error
            polynomial_coefficients_match_direct_expansion
            polynomial_evaluation_product_form_matches_coefficients
            synthetic_division_constructs_exact_monic_linear_quotient
            """,
        ),
        *_specs(
            "boundary_negative",
            "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/app_verifier.rs",
            """
            accepted_join_projection_is_exact_and_fail_closed
            plan_compares_concrete_family_and_count_values_in_failure_order
            preflight_checks_every_header_before_segment_planning
            reduction_rejects_missing_duplicate_and_unexpected_tags
            repeat_final_rows_accepts_only_the_empty_zero_target
            repeat_final_rows_rejects_a_smaller_target
            shipping_input_rejects_cross_record_substitution
            shipping_projection_accepts_exact_input_and_preserves_failure_order
            """,
        ),
        *_specs(
            "invariant",
            "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/app_verifier.rs",
            """
            ids_are_exact_and_reduction_is_permutation_invariant
            repeat_final_rows_preserves_prefix_and_fills_suffix
            shipping_call_constructor_preserves_every_checked_field
            shipping_input_and_result_preserve_every_authenticated_field
            shipping_preflight_projection_cores_preserve_exact_parts
            shipping_protocol_version_root_is_current
            shipping_statement_preflight_retains_exact_padding_provenance
            shipping_wrapper_projection_preserves_exact_parts
            """,
        ),
        *_specs(
            "boundary_negative",
            "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/challenge.rs",
            """
            bounded_challenge_sampler_preserves_attempt_error_before_exhaustion
            bounded_challenge_sampler_rejection_at_max_fails_closed
            """,
        ),
        *_specs(
            "invariant",
            "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/challenge.rs",
            """
            bounded_challenge_sampler_accepts_success_at_max_nonce
            bounded_challenge_sampler_immediate_success_queries_nonce_zero_once
            bounded_challenge_sampler_nonce_helpers_match_core_boundaries
            bounded_challenge_sampler_queries_before_incrementing
            bounded_challenge_sampler_retries_rejections_in_nonce_order
            challenge_preimage_core_is_the_shipping_frame
            """,
        ),
        *_specs(
            "boundary_negative",
            "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/statement_binding.rs",
            """
            statement_hash_core_stops_at_every_failing_stage
            wrapper_decode_and_binding_are_exact_and_fail_closed
            """,
        ),
        *_specs(
            "invariant",
            "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/statement_binding.rs",
            "statement_hash_core_retains_exact_order_and_values",
        ),
        *_specs(
            "negative",
            "crates/crypto/proof-aggregation/src/aggregate_proof_wrapper.rs",
            """
            wrapper_decode_core_returns_inner_proof_range
            wrapper_decode_inner_range_do_not_panic
            wrapper_decode_rejects_oversize_before_inner_exposure
            wrapper_rejects_malformed_length
            wrapper_rejects_oversize_before_parsing
            wrapper_rejects_statement_mismatch
            """,
        ),
        *_specs(
            "parity",
            "crates/crypto/proof-aggregation/src/aggregate_proof_wrapper.rs",
            """
            arbitrary_external_wrapper_decode_is_retained_exactly
            wrapper_round_trips_inner_proof
            """,
        ),
        *_specs(
            "parity",
            "crates/crypto/proof-aggregation/src/backend.rs",
            """
            aggregation_is_deterministic_for_fixed_inputs
            arkworks_g1_g2_compressed_round_trip_and_identity
            arkworks_msm_boundary_zero_scalar_identity_and_random_parity
            arkworks_pairing_identity_and_generator_consistency
            bls12_377_fr_from_random_bytes_documents_shipping_reduction_boundary
            decaf377_vk_digest_round_trips_after_serialization
            fast_bls12_377_gt_validation_matches_arkworks_on_structured_inputs
            note_reshape_shipping_and_profiled_aggregation_bytes_match
            ppe_optimized_matches_baseline_gt_value
            prover_verifier_acceptance_parity
            shipping_and_ordinary_profiled_routes_match_all_registered_families
            snarkpack_matches_legacy_batch_across_families_and_counts
            snarkpack_matches_single_and_batch_groth16_oracles
            snarkpack_property_matches_legacy_batch_oracle
            v1_bytes_and_transcript_match_committed_baselines
            """,
        ),
        *_specs(
            "parity",
            "crates/crypto/proof-aggregation/src/backend.rs",
            """
            fast_bls12_377_g1_g2_validation_matches_arkworks
            torus_v2_round_trips_real_aggregate_and_halves_target_wire
            """,
        ),
        *_specs(
            "invariant",
            "crates/crypto/proof-aggregation/src/backend.rs",
            "shipping_backend_result_materializes_the_exact_authenticated_input",
        ),
        *_specs(
            "negative",
            "crates/crypto/proof-aggregation/src/backend.rs",
            """
            arkworks_g1_g2_malformed_compressed_bytes_reject
            arkworks_g1_g2_subgroup_and_torsion_rejection
            deserialize_aggregate_proof_do_not_panic
            malformed_aggregate_proof_oversize_rejected_before_deserialization
            preflight_aggregate_verify_do_not_panic
            preflight_rejects_oversize_before_inner_deserialization
            shipping_preflight_preserves_srs_wrapper_and_vk_failure_order
            shipping_preflight_rejects_cross_call_substitution_after_wire_checks
            snarkpack_backend_rejects_malformed_aggregate_bytes
            snarkpack_backend_rejects_mutated_public_inputs
            snarkpack_backend_rejects_wrong_family_id
            statement_mismatch_rejects_vk_digest_mutation_before_backend
            statement_rejects_mutated_srs_id
            strict_boundary_rejects_nested_component_aliases_and_malformed_bytes
            """,
        ),
        *_specs(
            "boundary_negative",
            "crates/crypto/proof-aggregation/src/backend.rs",
            "torus_v2_preflight_translation_is_bounded_and_disjoint",
        ),
        *_specs(
            "integration",
            "crates/crypto/proof-aggregation/src/backend.rs",
            """
            snarkpack_backend_accepts_valid_aggregate
            snarkpack_backend_accepts_valid_shielded_ics20_withdrawal_aggregate
            """,
        ),
        *_specs(
            "boundary_negative",
            "crates/crypto/proof-aggregation/src/bundle.rs",
            """
            aggregate_bundle_decode_rejects_unspecified_family
            family_router_rejects_unknown_missing_and_cross_family_fields
            """,
        ),
        *_specs(
            "parity",
            "crates/crypto/proof-aggregation/src/bundle.rs",
            """
            aggregate_bundle_proto_round_trip
            canonical_family_fields_round_trip_through_router
            """,
        ),
        *_specs(
            "invariant",
            "crates/crypto/proof-aggregation/src/padding.rs",
            """
            empty_input_stays_empty
            pads_by_repeating_last_item
            prepare_verify_inputs_matches_full_padding
            row_projection_preserves_caller_order_before_repeat_final_suffix
            """,
        ),
        *_specs(
            "boundary_negative",
            "crates/crypto/proof-aggregation/src/padding.rs",
            "rejects_oversized_padding",
        ),
        *_specs(
            "invariant",
            "crates/crypto/proof-aggregation/src/srs.rs",
            """
            default_srs_id_prefix_matches_declared_fields
            development_srs_is_never_registered
            production_registry_fails_closed_until_ceremony_entry_is_pinned
            srs_id_changes_with_parameters
            srs_id_is_stable
            """,
        ),
        *_specs(
            "boundary_negative",
            "crates/crypto/proof-aggregation/src/srs.rs",
            """
            matching_digest_still_requires_strict_canonical_srs_decoding
            production_artifact_hash_is_checked_before_decoding
            production_artifact_read_is_bounded_by_actual_bytes
            production_registry_rejects_noncanonical_identifier_length
            """,
        ),
        *_specs(
            "invariant",
            "crates/crypto/proof-aggregation/src/statement.rs",
            """
            challenge_preimage_changes_on_stage_context_nonce_or_messages
            challenge_preimage_layout_golden
            statement_accepts_canonical_repeat_final_padding
            statement_accepts_single_real_proof
            statement_accepts_valid_padded_inputs
            statement_canonical_encoding_layout
            statement_digest_binds_inputs
            statement_digest_binds_real_count_even_with_repeated_rows
            statement_encoding_binds_all_top_level_fields
            statement_encoding_length_prefixes_public_input_fields
            statement_encoding_length_prefixes_public_input_rows
            statement_encoding_length_prefixes_top_level_byte_fields
            statement_validation_helpers_cover_count_cases
            """,
        ),
        *_specs(
            "negative",
            "crates/crypto/proof-aggregation/src/statement.rs",
            """
            statement_fuzz_constructor_helpers_and_encoder_do_not_panic
            statement_rejects_bad_counts
            statement_rejects_bad_padding
            statement_rejects_noncanonical_repeat_final_padding
            statement_rejects_row_arity_mismatch
            """,
        ),
        *_specs(
            "negative",
            "crates/crypto/proof-aggregation/src/strict_deserialize.rs",
            """
            arkworks_accepts_but_strict_rejects_g1_infinity_alias
            arkworks_accepts_but_strict_rejects_g2_infinity_alias_in_each_coordinate
            trailing_and_malformed_bytes_reject
            """,
        ),
        *_specs(
            "parity",
            "crates/crypto/proof-aggregation/src/strict_deserialize.rs",
            "canonical_points_and_zero_coordinates_succeed",
        ),
        *_specs(
            "invariant",
            "crates/crypto/proof-aggregation/src/transcript.rs",
            """
            every_registered_digest_hashes_family_domain_then_challenge_frame
            transcript_family_domains_are_exact_and_unique
            """,
        ),
        *_specs(
            "boundary_negative",
            "crates/crypto/proof-aggregation/src/torus_v2.rs",
            """
            identity_uses_zero_and_minus_one_is_rejected
            wrapper_versions_are_disjoint
            """,
        ),
        *_specs(
            "parity",
            "crates/crypto/proof-aggregation/src/torus_v2.rs",
            """
            every_torus_coordinate_round_trips
            target_torus_round_trip_including_identity
            """,
        ),
    ),
}

PROPERTY_SOURCE_CENSUS = tuple(
    sorted(
        {
            path
            for specs in PROPERTY_OWNER_SPECS.values()
            for _, path, _ in specs
        }
    )
)
ARTIFACT_SOURCE_CENSUS = tuple(
    sorted(
        {
            path
            for specs in ARTIFACT_OWNER_SPECS.values()
            for _, path, _ in specs
        }
    )
)


# Reviewed selectors that do not carry normative claim evidence. Supporting
# cryptographic subroutine and diagnostic tests remain ordinary CI tests; they
# cannot satisfy a four-circuit evidence owner.
EXCLUSION_SYMBOLS: dict[str, tuple[str, ...]] = {
    "crates/bin/orbis-integration/src/demo_config.rs": _symbols(
        """
        runtime_endpoints_are_typed_and_complete
        runtime_endpoints_reject_missing_schemes
        """
    ),
    "crates/core/app-tests/tests/app_blocktimes_increment.rs": _symbols(
        "mock_tendermint_block_times_correct"
    ),
    "crates/core/app/src/action_handler/transaction.rs": _symbols(
        """
        nonzero_timestamps_still_enforce_timestamp_freshness
        zero_timestamp_is_allowed_when_benchmark_override_is_set
        zero_timestamp_requires_benchmark_override
        """
    ),
    "crates/core/app/src/app/host.rs": _symbols(
        """
        accepted_host_tx_response_accepts_empty_withdrawals
        host_execution_reports_only_the_latest_committed_state
        host_withdrawals_preserve_withdrawal_order
        host_withdrawals_resolve_registered_asset_to_base_denom
        """
    ),
    (
        "crates/core/app-tests/tests/mock_consensus_block_proving.rs"
    ): _symbols("verify_storage_proof_simple"),
    (
        "crates/core/app-tests/tests/"
        "mock_consensus_can_send_a_sequence_of_empty_blocks.rs"
    ): _symbols("mock_consensus_can_send_a_sequence_of_empty_blocks"),
    (
        "crates/core/app-tests/tests/"
        "view_server_can_be_served_on_localhost.rs"
    ): _symbols("view_server_can_be_served_on_localhost"),
    "crates/bin/pd/src/network/generate.rs": _symbols(
        """
        generate_devnet_config
        generate_network_config
        parse_allocations_from_bad_csv
        parse_allocations_from_good_csv
        """
    ),
    "crates/bin/pd/src/network/join.rs": _symbols(
        """
        external_address_detection
        parse_tendermint_address_from_listener
        parse_tendermint_address_listener
        parse_tendermint_address_tcp
        """
    ),
    "crates/core/app/src/app_version/component.rs": _symbols(
        "ensure_app_version_is_current_in_checks"
    ),
    "crates/core/app/src/genesis.rs": _symbols(
        """
        missing_compliance_content_uses_default
        """
    ),
    "crates/core/asset/src/asset/denom_metadata.rs": _symbols(
        """
        can_parse_metadata_from_chain_registry
        changing_asset_id_without_changing_denom_fails_decoding
        cw20_filtered_out
        encoding_round_trip_succeeds
        factory_shitmos
        gamm_pool
        multihop_wasm_evm_hex
        single_hop_uusdc
        """
    ),
    "crates/core/asset/src/asset/id.rs": _symbols(
        """
        asset_id_encoding
        denom_trace_to_asset_id_is_injective
        hex_to_bech32
        """
    ),
    "crates/core/asset/src/asset.rs": _symbols(
        """
        best_unit_for
        displaydenom_parsing_formatting_roundtrip
        test_displaydenom_format_value
        test_displaydenom_parse_value
        test_get_unit
        test_registry_native_token
        """
    ),
    "crates/core/asset/src/balance/imbalance.rs": _symbols(
        """
        add_provided_provided
        add_provided_required_equal
        add_provided_required_greater
        add_provided_required_less
        add_required_provided_equal
        add_required_provided_greater
        add_required_provided_less
        add_required_required
        sub_provided_provided_equal
        sub_provided_provided_greater
        sub_provided_provided_less
        sub_provided_required_equal
        sub_provided_required_greater
        sub_provided_required_less
        sub_required_provided_equal
        sub_required_provided_greater
        sub_required_provided_less
        sub_required_required_equal
        sub_required_required_greater
        sub_required_required_less
        """
    ),
    "crates/core/asset/src/balance.rs": _symbols(
        """
        from_infallible_conversion
        provide_then_require
        provide_then_require_negative_zero
        require_then_provide
        require_then_provide_negative_zero
        test_balance_serialization_roundtripping
        try_from_fallible_conversion_different_asset_id
        try_from_fallible_conversion_failure
        try_from_fallible_conversion_same_asset_id
        """
    ),
    "crates/core/asset/src/value.rs": _symbols(
        """
        format_picks_best_unit
        value_parsing_errors
        value_parsing_happy
        """
    ),
    "crates/core/component/compliance/src/audit.rs": _symbols(
        """
        alias_records_transmission_key_for_shieldd_address
        empty_store_exports_stable_scan_shape
        evidence_object_is_persisted_by_hash
        evidence_object_rejects_mismatched_persisted_ciphertext
        flagged_decrypt_requires_valid_evidence
        orbis_v0_export_remains_disabled_after_valid_evidence
        orbis_v0_import_remains_disabled_after_valid_evidence
        persisted_audit_failure_reasons_are_bounded
        rollback_removes_evidence_objects_and_failures
        """
    ),
    "crates/core/component/compliance/src/audit_records.rs": _symbols(
        """
        detected_ref_projection_preserves_fields_and_hex_encodes_tx_hash
        flagged_or_invalid_orbis_rows_are_ineligible_with_status_reason
        missing_orbis_row_is_ineligible_with_missing_reason
        orbis_audit_entries_accept_orbis_pre_decryption_label
        unflagged_valid_orbis_statuses_are_eligible
        """
    ),
    "crates/core/component/compliance/src/audit_status.rs": _symbols(
        """
        audit_status_transition_table_is_explicit
        detection_status_transition_table_is_explicit
        screen_status_transition_table_is_explicit
        """
    ),
    "crates/core/component/compliance/src/audit_validation.rs": _symbols(
        """
        payload_tampering_is_rejected
        valid_metadata_only_evidence_is_accepted
        """
    ),
    "crates/core/component/compliance/src/evidence.rs": _symbols(
        """
        evidence_hash_commits_to_every_metadata_field
        evidence_rejects_trailing_bytes_and_noncanonical_boolean
        evidence_round_trip_preserves_payload_hash_and_metadata
        """
    ),
    "crates/core/component/compliance/src/genesis.rs": _symbols(
        """
        test_default_genesis
        test_serde_roundtrip
        """
    ),
    "crates/core/component/compliance/src/scanner/screener.rs": _symbols(
        """
        screener_detects_matching_asset
        screener_ignores_wrong_asset_or_key
        screener_reports_invalid_ciphertext
        """
    ),
    "crates/core/component/compliance/src/scanner/storage.rs": _symbols(
        """
        sqlite_store_allows_concurrent_readers_during_writes
        sqlite_store_bounds_invalid_ciphertext_reasons
        sqlite_store_caps_invalid_ciphertexts_per_block
        sqlite_store_commits_block_and_detection_atomically
        sqlite_store_commits_empty_block_advances_cursor
        sqlite_store_enables_wal_and_bounded_checkpointing
        sqlite_store_initializes_current_schema_and_rejects_stale_versions
        sqlite_store_persists_raw_ciphertext_screening_status
        sqlite_store_projects_clear_shield_and_withdraw_to_audit_rows
        sqlite_store_records_runtime_started_heartbeat_and_error
        sqlite_store_rejects_illegal_screen_status_transition
        sqlite_store_rejects_unversioned_db
        sqlite_store_rolls_back_later_scanner_state
        sqlite_store_status_constraints_reject_invalid_values
        """
    ),
    "crates/core/component/compliance/src/scanner/sync.rs": _symbols(
        """
        extract_ciphertexts_includes_action_and_output_indices
        extract_empty_transaction
        """
    ),
    "crates/core/component/compliance/src/scanner/worker.rs": _symbols(
        """
        parse_block_ref_rejects_malformed_hash
        reorg_decision_accepts_matching_parent
        reorg_decision_walks_back_to_common_ancestor
        worker_creation_uses_stored_height
        worker_validates_detected_metadata_only_evidence
        """
    ),
    "crates/core/component/compliance/src/scanning.rs": _symbols(
        """
        test_decrypt_full_flagged_rejects_unflagged_transfer
        test_decrypt_full_flagged_transfer
        """
    ),
    "crates/core/component/ibc/src/component/client.rs": _symbols(
        """
        test_create_and_update_light_client
        test_disabled_ibc_component
        """
    ),
    "crates/core/component/ibc/src/component/rpc/utils.rs": _symbols(
        """
        determine_ibc_height_from_metadata
        parse_ibc_height
        """
    ),
    "crates/core/component/ibc/src/ibc_token.rs": _symbols(
        "test_derive_ibc_denom"
    ),
    "crates/core/component/shielded-pool/src/backref.rs": _symbols(
        """
        encrypted_backref_round_trip
        encrypted_backref_zero_length
        """
    ),
    "crates/core/component/shielded-pool/src/component/rpc/bank_query.rs": _symbols(
        "bank_query_stream_errors_propagate"
    ),
    "crates/core/component/shielded-pool/src/component/rpc/transfer_query.rs": _symbols(
        "transfer_query_stream_errors_propagate"
    ),
    "crates/core/component/shielded-pool/src/host_withdrawal.rs": _symbols(
        """
        execution_effect_hash_binds_refund_and_calls
        execution_roundtrips_through_proto
        rejects_invalid_destinations
        rejects_non_evm_contract_address
        validates_transfer_and_execution
        """
    ),
    "crates/core/component/shielded-pool/src/gnark/mod.rs": _symbols(
        "repo_local_demo_gnark_libraries_are_loadable"
    ),
    "crates/core/component/sct/src/component/tree.rs": _symbols(
        """
        sct_delete_range_deletes_only_materialized_rows
        sct_nv_storage_skips_recalculable_hashes
        """
    ),
    "crates/core/component/sct/src/component/rpc.rs": _symbols(
        "archived_rpc_uses_pack_after_expanded_tree_is_pruned"
    ),
    "crates/core/app/src/nullifier_generation_packs.rs": _symbols(
        """
        compact_blocks_rebuild_the_exact_retired_root
        invalid_pack_with_a_stored_receipt_is_rebuilt_before_pruning
        startup_preparation_packs_and_prunes_multiple_generations
        valid_receipt_allows_restart_after_expanded_state_is_pruned
        """
    ),
    "crates/core/component/sct/src/generation_pack.rs": _symbols(
        """
        codec_is_canonical_and_rejects_corruption
        inspection_is_cheap_but_full_verification_still_checks_the_root
        reconstruction_proves_every_gap_and_rejects_membership
        repository_reloads_verified_pack_and_quarantines_damage
        """
    ),
    "crates/core/component/sct/src/indexed_nullifier_tree.rs": _symbols(
        "sentinel_gap_includes_field_boundaries"
    ),
    "crates/core/component/sct/src/nullifier_tree.rs": _symbols(
        """
        already_spent_nullifier_is_rejected_before_mutation
        committed_root_verification_accepts_only_empty_pregenesis_state
        field_boundaries_are_ordinary_nullifiers
        indexed_tree_handles_membership_and_boundary_gaps
        packed_generation_is_provable_until_pruned
        reconstructed_pack_matches_live_witnesses
        rollover_archives_poseidon_generation
        """
    ),
    "crates/core/transaction/src/plan.rs": _symbols(
        "shielded_host_withdrawal_uses_current_routing_parameters"
    ),
    "crates/crypto/proof-params/src/gnark_artifact_validation.rs": _symbols(
        "runtime_validation_requires_only_the_proving_key"
    ),
    "crates/view/src/storage.rs": _symbols(
        """
        fresh_storage_distinguishes_an_uninitialized_nullifier_window
        historical_proof_cache_round_trips_and_deletes
        """
    ),
    "crates/core/component/sct/src/nullifier.rs": _symbols(
        "malformed_field_encoding_is_rejected_without_panicking"
    ),
    "crates/core/component/sct/src/nullifier_generation.rs": _symbols(
        """
        activation_and_rollover_preserve_generation_arithmetic
        bundle_shape_depends_only_on_global_history_count
        canonical_historical_bundles_cover_the_complete_prefix
        historical_bundle_structure_rejects_omission_reordering_and_bad_encoding
        history_binds_index_root_and_end_position
        old_boundary_is_strict
        protobuf_round_trip_is_exact
        public_history_records_reject_noncanonical_field_encodings
        """
    ),
    "crates/core/component/shielded-pool/src/shielded_host_withdrawal/plan.rs": _symbols(
        """
        host_withdrawal_binds_routing_parameters
        new_plan_builds_padded_host_withdrawal_body
        padded_host_withdrawal_proof_roundtrip
        padded_spend_uses_shared_withdrawal_circuit_nullifier_domain
        """
    ),
    "crates/core/transaction/src/gas.rs": _symbols(
        "host_execution_charges_requested_execution_gas"
    ),
    "crates/crypto/proof-params/src/historical.rs": _symbols(
        """
        canonical_proof_lengths_match_wire_contract
        generated_sample_proofs_verify
        verifier_rejects_noncanonical_public_field_encodings
        """
    ),
    "crates/view/src/historical_proof_cache.rs": _symbols(
        """
        cache_state_machine_and_chunk_closure_are_explicit
        updater_verifies_archive_and_groth16_proof_before_ready
        """
    ),
    "crates/core/keys/src/address/view.rs": _symbols("address_view_basic"),
    "crates/core/keys/src/address.rs": _symbols("test_compat_encoding"),
    "crates/core/keys/src/keys/bip44.rs": _symbols(
        """
        test_bip44_path_account_level
        test_bip44_path_full
        """
    ),
    "crates/core/keys/src/keys/diversifier.rs": _symbols(
        """
        diversifier_encryption_null_ciphertext
        diversifier_encryption_roundtrip
        """
    ),
    "crates/core/keys/src/keys/ivk.rs": _symbols(
        "transparent_address_generation_and_parsing"
    ),
    "crates/core/keys/src/keys/seed_phrase.rs": _symbols(
        """
        bip39_mnemonic_derivation
        seed_phrase_from_str
        """
    ),
    "crates/core/keys/src/keys/spend.rs": _symbols("bip44_test_ledger"),
    "crates/core/num/src/amount.rs": _symbols(
        """
        encode_decode_left_border_bit
        encode_decode_max
        encode_decode_random
        encode_decode_random_higher_order_bytes
        encode_decode_random_lower_order_bytes
        encode_decode_right_border_bit
        encode_decode_u64_max
        encode_decode_zero
        """
    ),
    "crates/core/num/src/fixpoint/div.rs": _symbols(
        "stub_div_rem_works"
    ),
    "crates/core/num/src/fixpoint/tests.rs": _symbols(
        """
        encoding_respects_ordering
        multiply_large_failure
        """
    ),
    "crates/core/num/src/fixpoint.rs": _symbols(
        """
        add
        compare
        division
        invalid_greater_compare
        invalid_less_compare
        max_division
        max_u64_addition
        multiply_and_round
        regression_invalid_less_compare
        round_down_to_amount
        """
    ),
    "crates/core/num/src/percentage/mod.rs": _symbols(
        "test_percentage_operations"
    ),
    "crates/core/transaction/src/memo.rs": _symbols(
        """
        test_memo_encryption_and_decryption
        test_memo_encryption_and_sender_decryption
        test_memo_size_limit
        """
    ),
    "crates/core/transaction/src/view.rs": _symbols(
        "summary_includes_visible_shielded_ics20_withdrawal_note_flow"
    ),
    "crates/custody/src/encrypted.rs": _symbols(
        """
        test_encryption_decryption_roundtrip
        test_encryption_fails_with_different_password
        """
    ),
    "crates/custody/src/soft_kms/config.rs": _symbols(
        "toml_config_round_trip"
    ),
    "crates/custody/src/threshold.rs": _symbols(
        "test_dkg_produces_identical_fvks"
    ),
    "crates/custody/src/threshold/config.rs": _symbols(
        "test_config_serialization_roundtrip"
    ),
    "crates/custody/src/threshold/dkg/encryption.rs": _symbols(
        "test_encryption_roundtrip"
    ),
    "crates/crypto/proof-aggregation/src/backend.rs": _symbols(
        """
        snarkpack_build_profile_exposes_tipp_mipp_subbuckets
        snarkpack_profile_accepts_valid_aggregate
        """
    ),
    "crates/crypto/proof-aggregation/src/ipp/dh_commitments/src/afgho16/mod.rs": _symbols(
        """
        afgho_g1_test
        afgho_g2_test
        msm_keys_equals_sequential_fold
        """
    ),
    "crates/crypto/proof-aggregation/src/ipp/dh_commitments/src/pedersen/mod.rs": _symbols(
        "pedersen_test"
    ),
    "crates/crypto/proof-aggregation/src/ipp/inner_products/src/lib.rs": _symbols(
        """
        cfg_multi_pairing_g1_affine_g2_prepared_matches_projective_path
        cfg_multi_pairing_matches_reference_across_threshold_boundary
        cfg_multi_pairing_records_stage_profile
        pairing_profile_survives_cross_thread_collection
        """
    ),
    "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs": _symbols(
        """
        aggregate_profiled_baseline_matches_normal_acceptance
        aggregate_profiled_matches_normal_acceptance
        combined_checks_rejects_malformed_counts_before_downstream_calls
        combined_checks_schedule_branch_preserves_core_acceptance
        fold_public_inputs_core_parity_r_not_one_multiple_rows
        fold_public_inputs_core_parity_r_not_one_one_row
        fold_public_inputs_core_parity_r_one_multiple_rows
        fold_public_inputs_core_parity_r_one_one_row
        inverse_powers_match_structured_inverses
        prepared_ppe_adapter_parity_bls12_377_including_pairing_failure
        prepared_ppe_adapter_parity_bls12_381_including_pairing_failure
        prepared_ppe_matches_three_pair_baseline_operands_and_gt
        shifted_ck_2_matches_per_element_inversion
        verify_tipp_mipp_delegator_core_parity_base_commitment_failure
        verify_tipp_mipp_delegator_core_parity_randomizer_failure
        verify_tipp_mipp_delegator_core_parity_success
        """
    ),
    "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/poly_commit/mod.rs": _symbols(
        "bivariate_poly_commit_test"
    ),
    "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/poly_commit/transparent.rs": _symbols(
        "transparent_bivariate_poly_commit_test"
    ),
    "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/gipa.rs": _symbols(
        """
        base_commitment_core_preserves_failures_and_short_circuit_order
        final_commitment_key_delegator_matches_core_and_transcript_orientation
        multiexponentiation_inner_product_test
        pairing_inner_product_test
        scalar_inner_product_test
        """
    ),
    "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/s3_07_arkworks_fq_spike.rs": _symbols(
        """
        edge_and_512_random_vectors_match_arkworks_fq_inverse
        msm_window_selection_matches_boundary_rule
        sign_magnitude_digits_match_literal_i64_arkworks_reference
        """
    ),
    "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/tipa/mod.rs": _symbols(
        """
        affine_kzg_opening_matches_projective_path
        kzg_adapter_parity_bls12_377_including_pairing_failure
        kzg_adapter_parity_bls12_381_including_pairing_failure
        multiexponentiation_inner_product_test
        pairing_inner_product_test
        pairing_inner_product_with_srs_shift_test
        prepared_proving_srs_matches_commitment_keys
        scalar_inner_product_test
        specialized_pairing_prepared_g2_path_matches_generic_proof_bytes
        """
    ),
    "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/tipa/structured_scalar_message.rs": _symbols(
        """
        gipa_ssm_scalar_inner_product_test
        tipa_ssm_multiexponentiation_inner_product_test
        """
    ),
    "crates/crypto/proof-aggregation/src/ipp/ip_proofs/tests/bls12_377_arkworks_fq_spike.rs": _symbols(
        """
        canonical_bytes_reject_noncanonical_and_spare_bit_values
        edge_and_512_random_vectors_match_arkworks_fq_arithmetic
        final_exponentiation_easy_matches_arkworks_and_bignum_power
        final_exponentiation_hard_matches_arkworks_miller_outputs_and_edges
        finite_g1_ell_d_twist_matches_arkworks_wiring
        fq12_edges_and_512_random_vectors_match_arkworks
        fq2_edge_and_512_random_vectors_match_arkworks
        fq6_edges_and_512_random_vectors_match_arkworks
        g1_edges_and_512_random_vectors_match_arkworks_projective_classes
        g2_edges_and_512_random_vectors_match_arkworks_projective_classes
        multi_miller_schedule_matches_arkworks_filtered_and_chunked_batches
        multi_pairing_matches_arkworks_edges_and_random_batches
        normalization_single_and_batch_matches_arkworks_for_g1_and_g2
        prepared_g2_coefficients_match_arkworks_generator_random_and_infinity
        scalar_mul_edges_and_512_deterministic_random_vectors_match_arkworks
        single_pair_miller_schedule_matches_arkworks_generator_and_random_pairs
        sqrt_edges_residue_pairs_and_512_random_vectors_match_arkworks
        wnaf_bucket_msm_matches_arkworks_g1_and_g2_edges_mismatches_and_512_random
        """
    ),
    "crates/crypto/proof-aggregation/src/ipp/ip_proofs/tests/bls12_377_arkworks_fr_spike.rs": _symbols(
        """
        edge_and_512_random_vectors_match_arkworks_fr
        fr_zero_inverse_and_noncanonical_bytes_reject
        """
    ),
    "crates/crypto/tct/src/block.rs": _symbols("insert_error_sync_send"),
    "crates/crypto/tct/src/error.rs": _symbols("insert_errors_sync_send"),
    "crates/crypto/tct/src/internal/hash/cache.rs": _symbols(
        "cached_hash_size"
    ),
    "crates/view/src/note_manager.rs": _symbols(
        """
        historical_fee_funding_prices_complete_final_plan
        zero_fee_compliance_register_user_plans_without_funding_transfer
        zero_fee_ibc_action_plans_without_funding_transfer
        """
    ),
    "crates/view/src/service.rs": _symbols(
        """
        only_known_not_submitted_or_non_unavailable_status_skips_reconciliation
        unavailable_with_matching_transaction_recovers_height
        unavailable_without_matching_transaction_remains_unavailable
        """
    ),
    "crates/view/src/storage/compliance.rs": _symbols(
        "compliance_store_spot_check"
    ),
    "crates/view/src/storage/sct.rs": _symbols("tree_store_spot_check"),
}


OUT_OF_SCOPE_EXCLUSION_PATHS = frozenset(
    {
        "crates/core/app-tests/tests/mock_consensus_block_proving.rs",
        (
            "crates/core/app-tests/tests/"
            "mock_consensus_can_send_a_sequence_of_empty_blocks.rs"
        ),
        (
            "crates/core/app-tests/tests/"
            "view_server_can_be_served_on_localhost.rs"
        ),
        "crates/bin/pd/src/network/generate.rs",
        "crates/bin/pd/src/network/join.rs",
        "crates/core/app/src/app/host.rs",
        "crates/core/app/src/genesis.rs",
        "crates/core/asset/src/asset/denom_metadata.rs",
        "crates/core/asset/src/asset/id.rs",
        "crates/core/asset/src/asset.rs",
        "crates/core/component/compliance/src/audit.rs",
        "crates/core/component/compliance/src/audit_records.rs",
        "crates/core/component/compliance/src/audit_status.rs",
        "crates/core/component/compliance/src/audit_validation.rs",
        "crates/core/component/compliance/src/evidence.rs",
        "crates/core/component/compliance/src/genesis.rs",
        "crates/core/component/compliance/src/scanner/screener.rs",
        "crates/core/component/compliance/src/scanner/storage.rs",
        "crates/core/component/compliance/src/scanner/sync.rs",
        "crates/core/component/compliance/src/scanner/worker.rs",
        "crates/core/component/compliance/src/scanning.rs",
        "crates/core/component/ibc/src/component/client.rs",
        "crates/core/component/ibc/src/component/rpc/utils.rs",
        "crates/core/component/ibc/src/ibc_token.rs",
        "crates/core/component/shielded-pool/src/backref.rs",
        "crates/core/component/shielded-pool/src/component/rpc/bank_query.rs",
        "crates/core/component/shielded-pool/src/component/rpc/transfer_query.rs",
        "crates/core/component/shielded-pool/src/host_withdrawal.rs",
        "crates/core/keys/src/address/view.rs",
        "crates/core/keys/src/keys/bip44.rs",
        "crates/core/keys/src/keys/diversifier.rs",
        "crates/core/keys/src/keys/ivk.rs",
        "crates/core/keys/src/keys/seed_phrase.rs",
        "crates/core/keys/src/keys/spend.rs",
        "crates/core/num/src/fixpoint/div.rs",
        "crates/core/num/src/fixpoint/tests.rs",
        "crates/core/num/src/fixpoint.rs",
        "crates/core/num/src/percentage/mod.rs",
        "crates/core/transaction/src/memo.rs",
        "crates/core/transaction/src/view.rs",
        "crates/custody/src/encrypted.rs",
        "crates/custody/src/soft_kms/config.rs",
        "crates/custody/src/threshold/config.rs",
        "crates/custody/src/threshold/dkg/encryption.rs",
        "crates/view/src/note_manager.rs",
        "crates/view/src/service.rs",
        "crates/view/src/storage/compliance.rs",
        "crates/view/src/storage/sct.rs",
    }
)

ALTERNATE_FIXTURE_EXCLUSION_PATHS = frozenset(
    {
        "crates/bin/orbis-integration/src/demo_config.rs",
        "crates/core/component/shielded-pool/src/gnark/mod.rs",
        "crates/core/keys/src/address.rs",
    }
)
SUPPORTING_EXCLUSION_PATHS = frozenset(
    {
        "crates/core/app-tests/tests/app_blocktimes_increment.rs",
        "crates/core/app/src/action_handler/transaction.rs",
        "crates/core/app/src/nullifier_generation_packs.rs",
        "crates/core/app/src/app_version/component.rs",
        "crates/core/asset/src/balance/imbalance.rs",
        "crates/core/asset/src/balance.rs",
        "crates/core/asset/src/value.rs",
        "crates/core/component/sct/src/component/tree.rs",
        "crates/core/component/sct/src/component/rpc.rs",
        "crates/core/component/sct/src/generation_pack.rs",
        "crates/core/component/sct/src/indexed_nullifier_tree.rs",
        "crates/core/component/sct/src/nullifier.rs",
        "crates/core/component/sct/src/nullifier_generation.rs",
        "crates/core/component/sct/src/nullifier_tree.rs",
        "crates/core/component/shielded-pool/src/shielded_host_withdrawal/plan.rs",
        "crates/core/transaction/src/gas.rs",
        "crates/core/transaction/src/plan.rs",
        "crates/crypto/proof-params/src/gnark_artifact_validation.rs",
        "crates/crypto/proof-params/src/historical.rs",
        "crates/view/src/historical_proof_cache.rs",
        "crates/view/src/storage.rs",
        "crates/core/num/src/amount.rs",
        "crates/custody/src/threshold.rs",
        "crates/crypto/proof-aggregation/src/backend.rs",
        (
            "crates/crypto/proof-aggregation/src/ipp/dh_commitments/"
            "src/afgho16/mod.rs"
        ),
        (
            "crates/crypto/proof-aggregation/src/ipp/dh_commitments/"
            "src/pedersen/mod.rs"
        ),
        "crates/crypto/proof-aggregation/src/ipp/inner_products/src/lib.rs",
        (
            "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/"
            "applications/groth16_aggregation.rs"
        ),
        (
            "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/"
            "applications/poly_commit/mod.rs"
        ),
        (
            "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/"
            "applications/poly_commit/transparent.rs"
        ),
        (
            "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/"
            "gipa.rs"
        ),
        (
            "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/"
            "s3_07_arkworks_fq_spike.rs"
        ),
        (
            "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/"
            "tipa/mod.rs"
        ),
        (
            "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/"
            "tipa/structured_scalar_message.rs"
        ),
        (
            "crates/crypto/proof-aggregation/src/ipp/ip_proofs/tests/"
            "bls12_377_arkworks_fq_spike.rs"
        ),
        (
            "crates/crypto/proof-aggregation/src/ipp/ip_proofs/tests/"
            "bls12_377_arkworks_fr_spike.rs"
        ),
        "crates/crypto/tct/src/block.rs",
        "crates/crypto/tct/src/error.rs",
        "crates/crypto/tct/src/internal/hash/cache.rs",
    }
)


def _validate() -> None:
    selected: set[tuple[str, str]] = set()
    ids: set[str] = set()
    for prefix, owner_specs in (
        ("PROPERTY", PROPERTY_OWNER_SPECS),
        ("ARTIFACT", ARTIFACT_OWNER_SPECS),
    ):
        for owner_id, specs in owner_specs.items():
            if not specs:
                raise ValueError(f"{owner_id}: empty FV Rust evidence owner")
            for kind, path, symbol in specs:
                if kind not in ALLOWED_TEST_KINDS:
                    raise ValueError(
                        f"{owner_id}/{symbol}: unsupported evidence kind {kind}"
                    )
                if not path.endswith(".rs") or not any(
                    path == root or path.startswith(f"{root}/")
                    for root in RUST_SECURITY_ROOTS
                ):
                    raise ValueError(
                        f"{owner_id}/{symbol}: outside the Rust security roots"
                    )
                pair = (path, symbol)
                if pair in selected:
                    raise ValueError(f"duplicate FV Rust evidence selector: {pair}")
                selected.add(pair)
                test_id = evidence_test_id(prefix, symbol)
                if test_id in ids:
                    raise ValueError(f"duplicate FV Rust evidence ID: {test_id}")
                ids.add(test_id)
    excluded = {
        (path, symbol)
        for path, symbols in EXCLUSION_SYMBOLS.items()
        for symbol in symbols
    }
    overlap = selected & excluded
    if overlap:
        raise ValueError(f"selected/excluded FV Rust overlap: {sorted(overlap)}")
    reason_groups = (
        OUT_OF_SCOPE_EXCLUSION_PATHS,
        ALTERNATE_FIXTURE_EXCLUSION_PATHS,
        SUPPORTING_EXCLUSION_PATHS,
    )
    for index, left in enumerate(reason_groups):
        for right in reason_groups[index + 1 :]:
            overlap = left & right
            if overlap:
                raise ValueError(
                    f"FV Rust exclusion paths have multiple reasons: {sorted(overlap)}"
                )
    reason_paths = frozenset().union(*reason_groups)
    exclusion_paths = set(EXCLUSION_SYMBOLS)
    if reason_paths != exclusion_paths:
        raise ValueError(
            "FV Rust exclusion reason coverage drifted: "
            f"unreasoned={sorted(exclusion_paths-reason_paths)}, "
            f"stale={sorted(reason_paths-exclusion_paths)}"
        )


_validate()
