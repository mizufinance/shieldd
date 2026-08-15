#!/usr/bin/env python3
"""Render the reviewed v2 fixed-circuit specification evidence matrix."""

from __future__ import annotations

import argparse
from functools import lru_cache
import json
import re
import sys
from pathlib import Path, PurePosixPath

FORMAL_JSON_DIR = (
    Path(__file__).resolve().parents[1] / "tools/gnark/lean/gen"
)
sys.path.insert(0, str(FORMAL_JSON_DIR))
import formal_json

try:
    from . import fv_rust_evidence_classification as rust_evidence
except ImportError:
    import fv_rust_evidence_classification as rust_evidence


ROOT = Path(__file__).resolve().parents[1]
OUT = (
    ROOT
    / "crates/core/component/shielded-pool/formal"
    / "fv-specification-predicate-matrix.json"
)
FORMAL = ROOT / "crates/core/component/shielded-pool/formal"
CONSEQUENCE_ROSTER = FORMAL / "fv-predicate-consequence-roster.json"

PROFILES = {
    "note_reshape8x1": {
        "family": "note_reshape",
        "input_slots": 8,
        "output_slots": 1,
        "circuit_source": "tools/gnark/internal/circuits/note_reshape_circuit.go",
        "runtime_source": (
            "crates/core/component/shielded-pool/src/component/action_handler/"
            "note_reshape.rs"
        ),
    },
    "note_reshape1x8": {
        "family": "note_reshape",
        "input_slots": 1,
        "output_slots": 8,
        "circuit_source": "tools/gnark/internal/circuits/note_reshape_circuit.go",
        "runtime_source": (
            "crates/core/component/shielded-pool/src/component/action_handler/"
            "note_reshape.rs"
        ),
    },
    "transfer": {
        "family": "transfer",
        "input_slots": 2,
        "output_slots": 2,
        "circuit_source": "tools/gnark/internal/circuits/transfer_circuit.go",
        "runtime_source": (
            "crates/core/component/shielded-pool/src/component/action_handler/"
            "transfer.rs"
        ),
    },
    "shielded_ics20_withdrawal": {
        "family": "shielded_ics20_withdrawal",
        "input_slots": 2,
        "output_slots": 1,
        "circuit_source": (
            "tools/gnark/internal/circuits/"
            "shielded_ics20_withdrawal_circuit.go"
        ),
        "runtime_source": (
            "crates/core/component/shielded-pool/src/component/action_handler/"
            "shielded_ics20_withdrawal.rs"
        ),
    },
}
ALL = frozenset(PROFILES)
NR = frozenset(label for label in PROFILES if label.startswith("note_reshape"))
NR_SYNTHETIC = frozenset({"note_reshape8x1"})
TRANSFER = frozenset({"transfer"})
WITHDRAWAL = frozenset({"shielded_ics20_withdrawal"})


def load_generated_consequence_pairs() -> dict[
    tuple[str, str], tuple[str, str]
]:
    value = formal_json.read_known_formal_object(CONSEQUENCE_ROSTER)
    if (
        set(value) != {"schema", "profiles"}
        or value["schema"]
        != "shieldd.gnark.predicate_consequence_roster.v1"
    ):
        raise ValueError("unsupported predicate consequence roster")
    result: dict[tuple[str, str], tuple[str, str]] = {}
    for profile_row in value["profiles"]:
        if set(profile_row) != {"profile", "path", "consequences"}:
            raise ValueError("malformed predicate consequence profile")
        profile = profile_row["profile"]
        path = profile_row["path"]
        if profile not in PROFILES:
            raise ValueError(f"unknown consequence profile {profile!r}")
        for consequence in profile_row["consequences"]:
            if not isinstance(consequence, list) or len(consequence) != 2:
                raise ValueError("malformed predicate consequence pair")
            predicate_id, symbol = consequence
            expected_symbol = (
                "theorem specification_"
                + predicate_id.lower().replace("-", "_")
            )
            if symbol != expected_symbol:
                raise ValueError(
                    f"{profile}/{predicate_id}: consequence symbol drifted"
                )
            key = (profile, predicate_id)
            if key in result:
                raise ValueError(
                    f"duplicate consequence {profile}/{predicate_id}"
                )
            result[key] = (path, symbol)
    return result


GENERATED_CONSEQUENCE_PAIRS = load_generated_consequence_pairs()

_APP = "crates/core/app/src/app/mod.rs"
_APP_PROOF_TESTS = (
    "crates/core/app/src/app/tests/proof_acceptance_tests.rs"
)
_ACTIONS = "crates/core/app/src/action_handler/actions.rs"
_BATCH = "crates/crypto/proof-params/src/batch.rs"
_CACHE = "crates/core/app/src/stateless_cache.rs"
_CONSENSUS = "crates/core/app/src/server/consensus.rs"
_FFI = "crates/bin/shieldd/src/ffi.rs"
_GRPC = "crates/bin/shieldd/src/grpc.rs"
_HOST = "crates/core/app/src/app/host.rs"
_MEMPOOL = "crates/core/app/src/server/mempool.rs"
_SERVICE = "crates/bin/shieldd/src/service.rs"
_TRANSACTION = "crates/core/app/src/action_handler/transaction.rs"


def exact_app_guards() -> list[dict[str, object]]:
    return [
        {
            "path": _APP,
            "symbols": [
                "collect_consensus_proof_items_with_artifacts",
                "independently_verify_proof_families",
                "attach_verified_capabilities",
            ],
        },
        {
            "path": _CACHE,
            "symbols": [
                "VerifiedTxArtifact",
                "VerifiedBatchItem",
                "ensure_binds",
            ],
        },
        {
            "path": _BATCH,
            "symbols": [
                "pub fn verify_each_with_capabilities",
                "verify_with_processed_vk",
            ],
        },
    ]


def aggregate_app_guards() -> list[dict[str, object]]:
    return [
        {
            "path": _APP,
            "symbols": [
                "ensure_aggregate_bundle_tx_shape",
                "validate_aggregate_verify_plan_inputs",
                "plan_aggregate_bundle_verification",
                "execute_aggregate_verify_call",
                "app_verify_accepted_join_projection_core",
                "reduce_aggregate_verify_outcomes",
                "verified_statement_capabilities",
                "attach_verified_capabilities",
            ],
        },
        {
            "path": _CACHE,
            "symbols": [
                "VerifiedTxArtifact",
                "VerifiedBatchItem",
                "ensure_binds",
            ],
        },
        {
            "path": "crates/crypto/proof-aggregation/src/app_verifier.rs",
            "symbols": [
                "app_verify_preflight_core",
                "app_verify_plan_identity_core",
                "app_verify_plan_padding_core",
                "app_verify_accepted_join_projection_core",
            ],
        },
    ]


PROOF_ACCEPTANCE_SURFACE = {
    "production_sinks": [
        {
            "id": "SINK-ABCI-CHECK-TX",
            "profiles": sorted(ALL),
            "entrypoint": {
                "path": _MEMPOOL,
                "symbols": ["pub async fn run"],
            },
            "terminal_effects": ["stateless_accept"],
            "required_guards": [
                {
                    "path": _MEMPOOL,
                    "symbols": [
                        "oversized_checktx_response",
                        "MAX_TRANSACTION_SIZE_BYTES",
                        "deliver_tx_bytes_v2_profiled",
                    ],
                },
                *exact_app_guards(),
            ],
        },
        {
            "id": "SINK-ABCI-DELIVER-TX",
            "profiles": sorted(ALL),
            "entrypoint": {
                "path": "crates/core/app/src/server/consensus.rs",
                "symbols": ["async fn deliver_tx"],
            },
            "terminal_effects": ["state_mutation", "transaction_accept"],
            "required_guards": [
                {
                    "path": _APP,
                    "symbols": [
                        "deliver_tx_bytes",
                        "deliver_tx_bytes_impl_profiled",
                        "execute_tx_checked_historical_profiled",
                    ],
                },
                *exact_app_guards(),
            ],
        },
        {
            "id": "SINK-ABCI-PREPARE-PROPOSAL",
            "profiles": sorted(ALL),
            "entrypoint": {
                "path": "crates/core/app/src/server/consensus.rs",
                "symbols": ["async fn prepare_proposal"],
            },
            "terminal_effects": ["cache_promotion", "proposal_inclusion"],
            "required_guards": [
                {
                    "path": _APP,
                    "symbols": [
                        "prepare_proposal_v2_profiled",
                        "prepare_proposal_batched_profiled",
                        "build_tx_artifacts_for_stage",
                        "verify_tx_artifacts_for_stage",
                    ],
                },
                *exact_app_guards(),
            ],
        },
        {
            "id": "SINK-ABCI-PROCESS-PROPOSAL",
            "profiles": sorted(ALL),
            "entrypoint": {
                "path": "crates/core/app/src/server/consensus.rs",
                "symbols": ["async fn process_proposal"],
            },
            "terminal_effects": [
                "cache_promotion",
                "consensus_accept",
                "stateful_replay",
            ],
            "required_guards": [
                {
                    "path": _APP,
                    "symbols": [
                        "process_proposal_v2_profiled",
                        "ensure_aggregate_bundle_tx_shape",
                        "verify_aggregate_bundle_for_artifacts",
                        "deliver_tx_with_verified_stateless_profiled",
                    ],
                },
                *aggregate_app_guards(),
            ],
        },
        {
            "id": "SINK-ACTION-ENUM-CHECK-STATELESS",
            "profiles": sorted(ALL),
            "entrypoint": {
                "path": _ACTIONS,
                "symbols": [
                    "impl AppActionHandler for Action",
                    "async fn check_stateless",
                ],
            },
            "terminal_effects": ["stateless_accept"],
            "required_guards": [
                {
                    "path": _ACTIONS,
                    "symbols": [
                        "Action::Transfer(action)",
                        "Action::NoteReshape(action)",
                        "Action::ShieldedIcs20Withdrawal(action)",
                        "Action::ShieldedHostWithdrawal(action)",
                        "action.check_stateless(context).await",
                    ],
                },
                {
                    "path": _TRANSACTION,
                    "symbols": [
                        "validate_transaction_envelope(self)",
                        "action.check_stateless(context2).await",
                        "drain_joinset_results",
                        "Action::Transfer(fee_funding.transfer.clone())",
                    ],
                },
                {
                    "path": _BATCH,
                    "symbols": ["pub fn verify_each", "verify_with_processed_vk"],
                },
            ],
        },
        {
            "id": "SINK-ACTION-HOST-WITHDRAWAL-CHECK-STATELESS",
            "profiles": sorted(WITHDRAWAL),
            "entrypoint": {
                "path": (
                    "crates/core/component/shielded-pool/src/component/"
                    "action_handler/shielded_host_withdrawal.rs"
                ),
                "symbols": ["async fn check_stateless"],
            },
            "terminal_effects": ["stateless_accept"],
            "required_guards": [
                {
                    "path": (
                        "crates/core/component/shielded-pool/src/component/"
                        "action_handler/shielded_host_withdrawal.rs"
                    ),
                    "symbols": [
                        "shielded_host_withdrawal_check_stateless_and_extract",
                        "batch::verify_each",
                        "proof_verification_key",
                    ],
                },
                {
                    "path": _BATCH,
                    "symbols": ["pub fn verify_each", "verify_with_processed_vk"],
                },
            ],
        },
        {
            "id": "SINK-ACTION-NOTE-RESHAPE-CHECK-STATELESS",
            "profiles": sorted(NR),
            "entrypoint": {
                "path": (
                    "crates/core/component/shielded-pool/src/component/"
                    "action_handler/note_reshape_action.rs"
                ),
                "symbols": ["async fn check_stateless"],
            },
            "terminal_effects": ["stateless_accept"],
            "required_guards": [
                {
                    "path": (
                        "crates/core/component/shielded-pool/src/component/"
                        "action_handler/note_reshape_action.rs"
                    ),
                    "symbols": [
                        "note_reshape_check_stateless_and_extract",
                        "batch::verify_each",
                        "proof_verification_key",
                    ],
                },
                {
                    "path": _BATCH,
                    "symbols": ["pub fn verify_each", "verify_with_processed_vk"],
                },
            ],
        },
        {
            "id": "SINK-ACTION-TRANSFER-CHECK-STATELESS",
            "profiles": sorted(TRANSFER),
            "entrypoint": {
                "path": (
                    "crates/core/component/shielded-pool/src/component/"
                    "action_handler/transfer.rs"
                ),
                "symbols": ["async fn check_stateless"],
            },
            "terminal_effects": ["stateless_accept"],
            "required_guards": [
                {
                    "path": (
                        "crates/core/component/shielded-pool/src/component/"
                        "action_handler/transfer.rs"
                    ),
                    "symbols": [
                        "transfer_check_stateless_and_extract",
                        "batch::verify_each",
                        "transfer_proof_verification_key",
                    ],
                },
                {
                    "path": _BATCH,
                    "symbols": ["pub fn verify_each", "verify_with_processed_vk"],
                },
            ],
        },
        {
            "id": "SINK-ACTION-WITHDRAWAL-CHECK-STATELESS",
            "profiles": sorted(WITHDRAWAL),
            "entrypoint": {
                "path": (
                    "crates/core/component/shielded-pool/src/component/"
                    "action_handler/shielded_ics20_withdrawal.rs"
                ),
                "symbols": ["async fn check_stateless"],
            },
            "terminal_effects": ["stateless_accept"],
            "required_guards": [
                {
                    "path": (
                        "crates/core/component/shielded-pool/src/component/"
                        "action_handler/shielded_ics20_withdrawal.rs"
                    ),
                    "symbols": [
                        "shielded_ics20_withdrawal_check_stateless_and_extract",
                        "batch::verify_each",
                        "proof_verification_key",
                    ],
                },
                {
                    "path": _BATCH,
                    "symbols": ["pub fn verify_each", "verify_with_processed_vk"],
                },
            ],
        },
        {
            "id": "SINK-APP-DELIVER-TX",
            "profiles": sorted(ALL),
            "entrypoint": {
                "path": _APP,
                "symbols": [
                    "deliver_tx_bytes",
                    "deliver_tx_bytes_impl_profiled",
                    "deliver_tx_with_stateless_extraction_caching_profiled",
                    "execute_tx_checked_historical_profiled",
                ],
            },
            "terminal_effects": [
                "cache_promotion",
                "state_mutation",
                "transaction_accept",
            ],
            "required_guards": exact_app_guards(),
        },
        {
            "id": "SINK-APP-PREPARE-PROPOSAL",
            "profiles": sorted(ALL),
            "entrypoint": {
                "path": _APP,
                "symbols": [
                    "prepare_proposal_batched_profiled",
                    "prepare_proposal_v2_profiled",
                ],
            },
            "terminal_effects": ["cache_promotion", "proposal_inclusion"],
            "required_guards": exact_app_guards(),
        },
        {
            "id": "SINK-APP-PROCESS-PROPOSAL",
            "profiles": sorted(ALL),
            "entrypoint": {
                "path": _APP,
                "symbols": [
                    "process_proposal",
                    "process_proposal_impl_profiled",
                    "process_proposal_v2_profiled",
                ],
            },
            "terminal_effects": [
                "cache_promotion",
                "consensus_accept",
                "stateful_replay",
            ],
            "required_guards": [
                {
                    "path": _APP,
                    "symbols": [
                        "ensure_aggregate_bundle_tx_shape",
                        "verify_aggregate_bundle_for_artifacts",
                        "deliver_tx_with_verified_stateless_profiled",
                        "response::ProcessProposal::Accept",
                    ],
                },
                *aggregate_app_guards(),
            ],
        },
        {
            "id": "SINK-FFI-HOST-CHECK-TX",
            "profiles": sorted(ALL),
            "entrypoint": {
                "path": _FFI,
                "symbols": ["METHOD_CHECK_TX", "async fn dispatch"],
            },
            "terminal_effects": ["stateless_accept"],
            "required_guards": [
                {
                    "path": _FFI,
                    "symbols": [
                        "METHOD_CHECK_TX => service",
                        ".check_tx(decode(request)?)",
                        ".map_err(FfiError::service)",
                    ],
                },
                {
                    "path": _SERVICE,
                    "symbols": [
                        "pub async fn check_tx",
                        ".check_tx(&request.tx)",
                    ],
                },
                {
                    "path": _HOST,
                    "symbols": [
                        "pub async fn check_tx",
                        ".deliver_tx_bytes(tx_bytes, Some(self.stateless_cache.as_ref()))",
                    ],
                },
                *exact_app_guards(),
            ],
        },
        {
            "id": "SINK-FFI-HOST-DELIVER-TX",
            "profiles": sorted(ALL),
            "entrypoint": {
                "path": _FFI,
                "symbols": ["METHOD_DELIVER_TX", "async fn dispatch"],
            },
            "terminal_effects": ["state_mutation", "transaction_accept"],
            "required_guards": [
                {
                    "path": _FFI,
                    "symbols": [
                        "METHOD_DELIVER_TX => service",
                        ".deliver_tx(decode(request)?)",
                        ".map_err(FfiError::service)",
                    ],
                },
                {
                    "path": _SERVICE,
                    "symbols": [
                        "pub async fn deliver_tx",
                        ".deliver_tx(&request.tx)",
                    ],
                },
                {
                    "path": _HOST,
                    "symbols": [
                        "pub async fn deliver_tx",
                        ".deliver_tx_bytes(tx_bytes, Some(self.stateless_cache.as_ref()))",
                    ],
                },
                *exact_app_guards(),
            ],
        },
        {
            "id": "SINK-GRPC-HOST-CHECK-TX",
            "profiles": sorted(ALL),
            "entrypoint": {
                "path": _GRPC,
                "symbols": ["async fn check_tx"],
            },
            "terminal_effects": ["stateless_accept"],
            "required_guards": [
                {
                    "path": _GRPC,
                    "symbols": [
                        ".check_tx(request.into_inner())",
                        ".map_err(status)",
                    ],
                },
                {
                    "path": _SERVICE,
                    "symbols": [
                        "pub async fn check_tx",
                        ".check_tx(&request.tx)",
                    ],
                },
                {
                    "path": _HOST,
                    "symbols": [
                        "pub async fn check_tx",
                        ".deliver_tx_bytes(tx_bytes, Some(self.stateless_cache.as_ref()))",
                    ],
                },
                *exact_app_guards(),
            ],
        },
        {
            "id": "SINK-GRPC-HOST-DELIVER-TX",
            "profiles": sorted(ALL),
            "entrypoint": {
                "path": _GRPC,
                "symbols": ["async fn deliver_tx"],
            },
            "terminal_effects": ["state_mutation", "transaction_accept"],
            "required_guards": [
                {
                    "path": _GRPC,
                    "symbols": [
                        ".deliver_tx(request.into_inner())",
                        ".map_err(status)",
                    ],
                },
                {
                    "path": _SERVICE,
                    "symbols": [
                        "pub async fn deliver_tx",
                        ".deliver_tx(&request.tx)",
                    ],
                },
                {
                    "path": _HOST,
                    "symbols": [
                        "pub async fn deliver_tx",
                        ".deliver_tx_bytes(tx_bytes, Some(self.stateless_cache.as_ref()))",
                    ],
                },
                *exact_app_guards(),
            ],
        },
        {
            "id": "SINK-HOST-CHECK-TX",
            "profiles": sorted(ALL),
            "entrypoint": {
                "path": _HOST,
                "symbols": ["pub async fn check_tx"],
            },
            "terminal_effects": ["stateless_accept"],
            "required_guards": [
                {
                    "path": _HOST,
                    "symbols": [
                        ".deliver_tx_bytes(tx_bytes, Some(self.stateless_cache.as_ref()))"
                    ],
                },
                *exact_app_guards(),
            ],
        },
        {
            "id": "SINK-HOST-DELIVER-TX",
            "profiles": sorted(ALL),
            "entrypoint": {
                "path": _HOST,
                "symbols": ["pub async fn deliver_tx"],
            },
            "terminal_effects": ["state_mutation", "transaction_accept"],
            "required_guards": [
                {
                    "path": _HOST,
                    "symbols": [
                        ".deliver_tx_bytes(tx_bytes, Some(self.stateless_cache.as_ref()))"
                    ],
                },
                *exact_app_guards(),
            ],
        },
        {
            "id": "SINK-TRANSACTION-CHECK-STATELESS",
            "profiles": sorted(ALL),
            "entrypoint": {
                "path": _TRANSACTION,
                "symbols": [
                    "impl AppActionHandler for Transaction",
                    "async fn check_stateless",
                ],
            },
            "terminal_effects": ["stateless_accept"],
            "required_guards": [
                {
                    "path": _TRANSACTION,
                    "symbols": [
                        "validate_transaction_envelope(self)",
                        "action.check_stateless(context2).await",
                        "drain_joinset_results",
                        "Action::Transfer(fee_funding.transfer.clone())",
                    ],
                },
                {
                    "path": _ACTIONS,
                    "symbols": [
                        "Action::Transfer(action)",
                        "Action::NoteReshape(action)",
                        "Action::ShieldedIcs20Withdrawal(action)",
                        "Action::ShieldedHostWithdrawal(action)",
                    ],
                },
                {
                    "path": _BATCH,
                    "symbols": ["pub fn verify_each", "verify_with_processed_vk"],
                },
            ],
        },
        {
            "id": "SINK-VERIFIED-CACHE-PROMOTION",
            "profiles": sorted(ALL),
            "entrypoint": {
                "path": _CACHE,
                "symbols": [
                    "CacheEntry::FullyVerified",
                    "pub fn insert_fully_verified",
                ],
            },
            "terminal_effects": ["cache_promotion"],
            "required_guards": [
                {
                    "path": _CACHE,
                    "symbols": [
                        "ensure_artifact_matches_raw",
                        "VerifiedTxArtifact",
                        "VerifiedBatchItem",
                        "ensure_binds",
                    ],
                },
                *exact_app_guards(),
            ],
        },
    ],
    "nonproduction_exclusions": [
        {
            "id": "EXCLUSION-FUZZ-AGGREGATE-SHAPE",
            "source": {
                "path": _APP,
                "symbols": ["ensure_aggregate_bundle_tx_shape_for_fuzz"],
            },
            "guard": {
                "path": _APP,
                "symbols": ['#[cfg(feature = "fuzzing")]'],
            },
            "reason": (
                "the panic-resistance wrapper is compiled only for fuzzing; "
                "production uses the checked internal shape validator"
            ),
        },
        {
            "id": "EXCLUSION-TEST-PROOF-HELPERS",
            "source": {
                "path": (
                    "crates/core/component/shielded-pool/src/"
                    "test_proof_helpers.rs"
                ),
                "symbols": ["batch::batch_verify"],
            },
            "guard": {
                "path": "crates/core/component/shielded-pool/src/lib.rs",
                "symbols": [
                    '#[cfg(any(test, feature = "benchmark-helpers"))]',
                    "pub mod test_proof_helpers",
                ],
            },
            "reason": "proof helper module is unavailable in production",
        },
        {
            "id": "EXCLUSION-TEST-TRANSFER-BATCH-ORACLE",
            "source": {
                "path": (
                    "crates/core/component/shielded-pool/src/transfer/proof.rs"
                ),
                "symbols": ["batch::batch_verify"],
            },
            "guard": {
                "path": (
                    "crates/core/component/shielded-pool/src/transfer/proof.rs"
                ),
                "symbols": ["#[cfg(all(test, any(unix, windows)))]", "mod tests"],
            },
            "reason": "legacy batch call is confined to a projection test",
        },
    ],
}

PROOF_ACCEPTANCE_SINK_TEST_IDS = {
    "SINK-ABCI-CHECK-TX": (
        "APP-COLD-DELIVER-REJECTS-INVALID-PROOF",
    ),
    "SINK-ABCI-DELIVER-TX": (
        "APP-COLD-DELIVER-REJECTS-INVALID-PROOF",
    ),
    "SINK-ABCI-PREPARE-PROPOSAL": (
        "APP-PREPARE-EXCLUDES-INVALID-PROOF",
    ),
    "SINK-ABCI-PROCESS-PROPOSAL": (
        "APP-PROCESS-REJECTS-INVALID-PROOF",
        "FEE-FUNDING-PROCESS-REJECTS-INVALID-PROOF",
    ),
    "SINK-ACTION-ENUM-CHECK-STATELESS": (
        "ACTION-TRANSACTION-STATELESS-REJECTS-INVALID-PROOF",
    ),
    "SINK-ACTION-HOST-WITHDRAWAL-CHECK-STATELESS": (
        "ACTION-TRANSACTION-STATELESS-REJECTS-INVALID-PROOF",
        "WITHDRAWAL-RAW-EXECUTION-REQUIRES-CAPABILITY",
    ),
    "SINK-ACTION-NOTE-RESHAPE-CHECK-STATELESS": (
        "ACTION-TRANSACTION-STATELESS-REJECTS-INVALID-PROOF",
        "NOTE-RESHAPE-PROJECTION-AND-CAPABILITY-GATE",
    ),
    "SINK-ACTION-TRANSFER-CHECK-STATELESS": (
        "ACTION-TRANSACTION-STATELESS-REJECTS-INVALID-PROOF",
        "TRANSFER-RAW-EXECUTION-REQUIRES-CAPABILITY",
    ),
    "SINK-ACTION-WITHDRAWAL-CHECK-STATELESS": (
        "ACTION-TRANSACTION-STATELESS-REJECTS-INVALID-PROOF",
        "WITHDRAWAL-RAW-EXECUTION-REQUIRES-CAPABILITY",
    ),
    "SINK-APP-DELIVER-TX": (
        "APP-COLD-DELIVER-REJECTS-INVALID-PROOF",
        "APP-EXTRACTED-CACHE-CANNOT-BYPASS-PROOF",
    ),
    "SINK-APP-PREPARE-PROPOSAL": (
        "APP-PREPARE-EXCLUDES-INVALID-PROOF",
    ),
    "SINK-APP-PROCESS-PROPOSAL": (
        "APP-PROCESS-REJECTS-INVALID-PROOF",
        "FEE-FUNDING-PROCESS-REJECTS-INVALID-PROOF",
    ),
    "SINK-FFI-HOST-CHECK-TX": (
        "HOST-DELIVERY-REJECTS-INVALID-PROOF",
        "RUNTIME-FFI-CHECKTX-PROOF-FRONTDOOR",
    ),
    "SINK-FFI-HOST-DELIVER-TX": (
        "HOST-DELIVERY-REJECTS-INVALID-PROOF",
        "RUNTIME-FFI-DELIVERTX-PROOF-FRONTDOOR",
    ),
    "SINK-GRPC-HOST-CHECK-TX": (
        "HOST-DELIVERY-REJECTS-INVALID-PROOF",
        "RUNTIME-GRPC-CHECKTX-PROOF-FRONTDOOR",
    ),
    "SINK-GRPC-HOST-DELIVER-TX": (
        "HOST-DELIVERY-REJECTS-INVALID-PROOF",
        "RUNTIME-GRPC-DELIVERTX-PROOF-FRONTDOOR",
    ),
    "SINK-HOST-CHECK-TX": (
        "HOST-DELIVERY-REJECTS-INVALID-PROOF",
        "RUNTIME-HOST-CHECKTX-PROOF-FRONTDOOR",
    ),
    "SINK-HOST-DELIVER-TX": (
        "HOST-DELIVERY-REJECTS-INVALID-PROOF",
        "RUNTIME-HOST-DELIVERTX-PROOF-FRONTDOOR",
    ),
    "SINK-TRANSACTION-CHECK-STATELESS": (
        "ACTION-TRANSACTION-STATELESS-REJECTS-INVALID-PROOF",
    ),
    "SINK-VERIFIED-CACHE-PROMOTION": (
        "APP-CACHE-PROMOTION-REQUIRES-EXACT-PROOF",
        "APP-EXTRACTED-CACHE-CANNOT-BYPASS-PROOF",
    ),
}
if {
    sink["id"] for sink in PROOF_ACCEPTANCE_SURFACE["production_sinks"]
} != set(PROOF_ACCEPTANCE_SINK_TEST_IDS):
    raise ValueError("proof-acceptance sink test ownership is incomplete")
for sink in PROOF_ACCEPTANCE_SURFACE["production_sinks"]:
    sink["test_ids"] = sorted(
        PROOF_ACCEPTANCE_SINK_TEST_IDS[sink["id"]]
    )
TX = TRANSFER | WITHDRAWAL


def reviewed_predicates() -> dict[str, tuple[str, frozenset[str]]]:
    """Independent matrix-side registry; the checker owns a separate oracle."""

    rows: dict[str, tuple[str, frozenset[str]]] = {}

    def add(
        placement: str, profiles: frozenset[str], ids: tuple[str, ...]
    ) -> None:
        for predicate_id in ids:
            if predicate_id in rows:
                raise ValueError(f"duplicate reviewed predicate {predicate_id}")
            rows[predicate_id] = placement, profiles

    add(
        "circuit",
        ALL,
        (
            "CIR-SHAPE-FIXED",
            "DEC-AUTHORIZATION-KEY-ENCODING",
            "DEC-AUTHORIZATION-KEY-NONIDENTITY",
            "DEC-DIVERSIFIED-GENERATOR-NONIDENTITY",
            "DEC-DIVERSIFIED-GENERATOR-ENCODING",
            "DEC-INCOMING-VIEWING-KEY-DERIVATION",
            "DEC-INCOMING-VIEWING-KEY-NONZERO",
            "DEC-TRANSMISSION-KEY-DERIVATION",
            "DEC-TRANSMISSION-KEY-ENCODING",
            "DEC-TRANSMISSION-KEY-NONIDENTITY",
            "FIELD-AUTH-RANDOMIZER-RANGE",
            "NOTE-SPEND-OWNER-BINDING",
            "NOTE-SPEND-ASSET-BINDING",
            "ROUTING-TAG-DERIVATION",
            "NOTE-SPEND-COMMITMENT",
            "SCT-SPEND-MEMBERSHIP",
            "NOTE-SPEND-NULLIFIER-DERIVATION",
            "DEC-SPEND-RK-DERIVATION",
            "DEC-SPEND-RK-ENCODING",
            "NOTE-OUTPUT-OWNER-BINDING",
            "NOTE-OUTPUT-ASSET-BINDING",
            "ROUTING-PARAMETERS",
            "NOTE-OUTPUT-COMMITMENT",
            "VALUE-AMOUNT-128-RANGE",
            "FIELD-BALANCE-BLINDING-RANGE",
            "VALUE-CONSERVATION",
            "DEC-BALANCE-COMMITMENT-DERIVATION",
            "DEC-BALANCE-COMMITMENT-ENCODING",
            "PUBLIC-STATEMENT-BINDING",
        ),
    )
    add(
        "circuit",
        NR_SYNTHETIC | TX,
        (
            "CIR-SELECTOR-BOOLEAN",
            "DUMMY-AMOUNT-ZERO",
            "DUMMY-NULLIFIER-DOMAIN-BINDING",
            "DUMMY-SLOT-POSITION-BINDING",
        ),
    )
    add(
        "circuit",
        NR_SYNTHETIC,
        ("CIR-DUMMY-ORDER-COUNT",),
    )
    add("circuit", TRANSFER, ("NOTE-RECEIVER-AMOUNT-NONZERO",))
    add(
        "circuit",
        ALL,
        (
            "ASSET-REGULATED-BOOLEAN",
            "ASSET-LEAF-HASH",
            "ASSET-REGISTRY-MEMBERSHIP",
            "ASSET-REGISTRY-GAP-ORDERING",
        ),
    )
    add(
        "circuit",
        NR | TRANSFER,
        (
            "ASSET-POLICY-KEY-ENCODING",
            "ASSET-PARAMETERS-HASH",
            "ASSET-RING-HASH",
        ),
    )
    add(
        "circuit",
        TX,
        (
            "ASSET-ID-NONZERO",
            "USER-LEAF-ADDRESS-BINDING",
            "USER-LEAF-ASSET-BINDING",
            "USER-LEAF-POLICY-SLOT-BINDING",
            "FIELD-USER-POSITION-RANGE",
            "USER-COMPLIANCE-LEAF-HASH",
            "USER-COMPLIANCE-MEMBERSHIP-GATE",
        ),
    )
    add("circuit", TRANSFER, ("FIELD-USER-DERIVATION-RANGE",))
    add(
        "circuit",
        TRANSFER,
        (
            "VALUE-THRESHOLD-128-RANGE",
            "COMPLIANCE-FLAG-BOOLEAN",
            "COMPLIANCE-THRESHOLD-FLAG",
            "COMPLIANCE-POLICY-SELECTION",
            "COMPLIANCE-SALT-DERIVATION",
            "FIELD-EPHEMERAL-SCALAR-RANGE",
            "DEC-EPHEMERAL-PUBLIC-KEY-DERIVATION",
            "DEC-EPHEMERAL-PUBLIC-KEY-ENCODING",
            "DEC-ACK-DERIVATION",
            "DEC-SHARED-SECRET-DERIVATION",
            "COMPLIANCE-SHARED-SECRET-SELECTION",
            "FIELD-DETECTION-SLOT-RANGE",
            "COMPLIANCE-DETECTION-ENCRYPTION",
            "COMPLIANCE-AMOUNT-ENCRYPTION",
            "ADDRESS-CANONICAL-PACKING",
            "COMPLIANCE-ADDRESS-ENCRYPTION",
            "COMPLIANCE-METADATA-BINDING",
        ),
    )
    add("circuit", WITHDRAWAL, ("WITHDRAWAL-INTENT-FIELD-BINDING",))
    add(
        "external_acceptance",
        ALL,
        (
            "DEC-RANDOMIZED-VERIFICATION-KEY-NONIDENTITY",
            "EXT-SPEND-AUTH-SIGNATURE",
            "EXT-TRANSACTION-BINDING-SIGNATURE",
            "EXT-FIXED-SHAPE-DECODE",
            "EXT-ANCHOR-CONTEXT-BINDING",
            "EXT-PUBLIC-INPUT-PROJECTION",
            "EXT-PROOF-CANONICAL-ENCODING",
            "EXT-PROOF-FAMILY-KEY-SELECTION",
            "EXT-PROOF-VERIFICATION",
            "EXT-ANCHOR-LIVENESS",
            "EXT-NULLIFIER-FRESHNESS",
            "EXT-NULLIFIER-TX-UNIQUENESS",
            "EXT-NULLIFIER-ATOMIC-TRANSITION",
            "EXT-OUTPUT-PERSISTENCE",
            "EXT-TRANSACTION-EFFECTS-ATOMICITY",
            "EXT-BODY-PROJECTION-CANONICALITY",
        ),
    )
    add(
        "external_acceptance",
        TX,
        (
            "EXT-NULLIFIER-DISTINCTNESS",
            "EXT-ASSET-ANCHOR-CURRENT",
            "EXT-COMPLIANCE-ANCHOR-LIVE",
            "EXT-REGISTRY-WELL-FORMED",
            "EXT-ASSET-REGISTRY-AUTHORIZED",
            "EXT-USER-REGISTRY-AUTHORIZED",
            "EXT-TIMESTAMP-FRESHNESS",
            "EXT-INPUT-COMPLIANCE-EMPTY",
        ),
    )
    add(
        "external_acceptance",
        TRANSFER,
        (
            "EXT-ASSET-REGISTRY-KEY-VALIDITY",
            "EXT-OUTPUT-COMPLIANCE-ENCODING",
            "EXT-TRANSFER-EFFECT-HASH-COMPLIANCE-BINDING",
        ),
    )
    add(
        "external_acceptance",
        WITHDRAWAL,
        (
            "EXT-WITHDRAWAL-EFFECT-HASH-BINDING",
            "EXT-WITHDRAWAL-ROUTE-AUTHORIZED",
            "EXT-WITHDRAWALS-ENABLED",
            "EXT-WITHDRAWAL-PAYLOAD-VALID",
            "EXT-WITHDRAWAL-CHANNEL-CONNECTION-VALID",
            "EXT-WITHDRAWAL-CLIENT-ACTIVE-UNEXPIRED",
            "EXT-WITHDRAWAL-TIMEOUTS-FUTURE",
            "EXT-WITHDRAWAL-CHECKED-TOKEN-FRESH",
            "EXT-WITHDRAWAL-PAYLOAD-PROJECTION",
            "EXT-WITHDRAWAL-STATE-TRANSITION",
            "EXT-WITHDRAWAL-ACTION-ATOMICITY",
        ),
    )
    add(
        "construction",
        ALL,
        (
            "EXT-OUTGOING-VIEW-BINDING",
            "EXT-PLAN-BOUNDARY-CANONICALITY",
        ),
    )
    add(
        "construction",
        TRANSFER,
        (
            "EXT-HONEST-COMPLIANCE-NONCE",
            "EXT-HONEST-COMPLIANCE-TIER-SCALAR-NONZERO",
        ),
    )
    if len(rows) != 110:
        raise ValueError(f"reviewed predicate count drifted: {len(rows)}")
    return rows


PREDICATES = reviewed_predicates()
CIRCUIT_IDS = frozenset(
    predicate_id
    for predicate_id, (placement, _) in PREDICATES.items()
    if placement == "circuit"
)
EXTERNAL_IDS = frozenset(PREDICATES) - CIRCUIT_IDS

_REAL_SPEND_BRANCH = frozenset(
    {
        "DEC-SPEND-RK-DERIVATION",
        "NOTE-SPEND-ASSET-BINDING",
        "NOTE-SPEND-COMMITMENT",
        "NOTE-SPEND-NULLIFIER-DERIVATION",
        "NOTE-SPEND-OWNER-BINDING",
        "SCT-SPEND-MEMBERSHIP",
    }
)
_DUMMY_BRANCH = frozenset(
    {
        "DUMMY-AMOUNT-ZERO",
        "DUMMY-NULLIFIER-DOMAIN-BINDING",
        "DUMMY-SLOT-POSITION-BINDING",
    }
)
_REGULATED_BRANCH = frozenset(
    {
        "USER-COMPLIANCE-MEMBERSHIP-GATE",
    }
)
_REGULATION_SPLIT_BRANCH = frozenset(
    {
        "ASSET-REGISTRY-GAP-ORDERING",
        "COMPLIANCE-POLICY-SELECTION",
        "COMPLIANCE-THRESHOLD-FLAG",
        "DEC-ACK-DERIVATION",
        "DEC-SHARED-SECRET-DERIVATION",
    }
)
_FLAG_SPLIT_BRANCH = frozenset(
    {
        "COMPLIANCE-SHARED-SECRET-SELECTION",
    }
)

_ANCHOR_OR_NULLIFIER_BINDING = frozenset(
    {
        "ASSET-LEAF-HASH",
        "ASSET-REGISTRY-GAP-ORDERING",
        "ASSET-REGISTRY-MEMBERSHIP",
        "NOTE-SPEND-ASSET-BINDING",
        "NOTE-SPEND-COMMITMENT",
        "NOTE-SPEND-NULLIFIER-DERIVATION",
        "NOTE-SPEND-OWNER-BINDING",
        "SCT-SPEND-MEMBERSHIP",
        "USER-COMPLIANCE-LEAF-HASH",
        "USER-COMPLIANCE-MEMBERSHIP-GATE",
        "USER-LEAF-ADDRESS-BINDING",
        "USER-LEAF-ASSET-BINDING",
        "USER-LEAF-POLICY-SLOT-BINDING",
    }
)
_DIRECT_STATEMENT_BINDING = frozenset(
    {
        "PUBLIC-STATEMENT-BINDING",
        "WITHDRAWAL-INTENT-FIELD-BINDING",
    }
)
_DERIVED_STATEMENT_BINDING = frozenset(
    {
        "ASSET-ID-NONZERO",
        "ASSET-REGULATED-BOOLEAN",
        "COMPLIANCE-ADDRESS-ENCRYPTION",
        "COMPLIANCE-AMOUNT-ENCRYPTION",
        "COMPLIANCE-DETECTION-ENCRYPTION",
        "COMPLIANCE-METADATA-BINDING",
        "DEC-BALANCE-COMMITMENT-DERIVATION",
        "DEC-BALANCE-COMMITMENT-ENCODING",
        "DEC-EPHEMERAL-PUBLIC-KEY-ENCODING",
        "DEC-SPEND-RK-ENCODING",
        "DUMMY-NULLIFIER-DOMAIN-BINDING",
        "DUMMY-SLOT-POSITION-BINDING",
        "NOTE-OUTPUT-ASSET-BINDING",
        "NOTE-OUTPUT-COMMITMENT",
        "NOTE-OUTPUT-OWNER-BINDING",
        "NOTE-SPEND-NULLIFIER-DERIVATION",
        "ROUTING-PARAMETERS",
        "ROUTING-TAG-DERIVATION",
        "VALUE-CONSERVATION",
    }
)


def branch_condition_for(predicate_id: str) -> str:
    if predicate_id in _REAL_SPEND_BRANCH:
        return "is_dummy == 0"
    if predicate_id in _DUMMY_BRANCH:
        return "is_dummy == 1"
    if predicate_id in _REGULATED_BRANCH:
        return "is_regulated == 1"
    if predicate_id in _REGULATION_SPLIT_BRANCH:
        return "is_regulated in {0,1}"
    if predicate_id in _FLAG_SPLIT_BRANCH:
        return "is_flagged in {0,1}"
    return "always"


def binding_mode_for(predicate_id: str, placement: str) -> str:
    if placement == "external_acceptance":
        return "external_acceptance"
    if placement == "construction":
        return "construction_only"
    if predicate_id in _ANCHOR_OR_NULLIFIER_BINDING:
        return "derived_anchor_or_nullifier"
    if predicate_id in _DIRECT_STATEMENT_BINDING:
        return "direct_statement_field"
    if predicate_id in _DERIVED_STATEMENT_BINDING:
        return "derived_statement_field"
    return "private_intermediate"


def disclosure_for(predicate_id: str, placement: str) -> str:
    mode = binding_mode_for(predicate_id, placement)
    return {
        "external_acceptance": "consensus_state",
        "construction_only": "wallet_private",
        "direct_statement_field": "action_visible",
        "derived_statement_field": "action_visible",
        "derived_anchor_or_nullifier": "private_witness",
        "private_intermediate": "private_witness",
    }[mode]


def variable_source_for(placement: str) -> str:
    return "trace_arguments" if placement == "circuit" else "formal_facts"


def property_scope_for(predicate_ids: frozenset[str]) -> str:
    placements = {
        PREDICATES[predicate_id][0]
        for predicate_id in predicate_ids
        if predicate_id in PREDICATES
    }
    if "construction" not in placements:
        return "acceptance"
    if placements == {"construction"}:
        return "construction"
    return "composition"

_OWNERSHIP = frozenset(
    {
        "DEC-AUTHORIZATION-KEY-ENCODING",
        "DEC-AUTHORIZATION-KEY-NONIDENTITY",
        "DEC-DIVERSIFIED-GENERATOR-NONIDENTITY",
        "DEC-DIVERSIFIED-GENERATOR-ENCODING",
        "DEC-INCOMING-VIEWING-KEY-DERIVATION",
        "DEC-INCOMING-VIEWING-KEY-NONZERO",
        "DEC-TRANSMISSION-KEY-DERIVATION",
        "DEC-TRANSMISSION-KEY-ENCODING",
        "DEC-TRANSMISSION-KEY-NONIDENTITY",
        "FIELD-AUTH-RANDOMIZER-RANGE",
        "NOTE-SPEND-OWNER-BINDING",
        "NOTE-SPEND-ASSET-BINDING",
        "ROUTING-TAG-DERIVATION",
        "NOTE-SPEND-COMMITMENT",
        "DEC-SPEND-RK-DERIVATION",
        "DEC-SPEND-RK-ENCODING",
        "DEC-RANDOMIZED-VERIFICATION-KEY-NONIDENTITY",
        "EXT-SPEND-AUTH-SIGNATURE",
        "EXT-TRANSFER-EFFECT-HASH-COMPLIANCE-BINDING",
    }
)
_NO_DOUBLE_SPEND = frozenset(
    {
        "NOTE-SPEND-COMMITMENT",
        "SCT-SPEND-MEMBERSHIP",
        "NOTE-SPEND-NULLIFIER-DERIVATION",
        "DUMMY-NULLIFIER-DOMAIN-BINDING",
        "DUMMY-SLOT-POSITION-BINDING",
        "EXT-NULLIFIER-FRESHNESS",
        "EXT-NULLIFIER-TX-UNIQUENESS",
        "EXT-NULLIFIER-DISTINCTNESS",
        "EXT-NULLIFIER-ATOMIC-TRANSITION",
        "EXT-TRANSACTION-EFFECTS-ATOMICITY",
    }
)
_BALANCE = frozenset(
    {
        "VALUE-AMOUNT-128-RANGE",
        "FIELD-BALANCE-BLINDING-RANGE",
        "VALUE-CONSERVATION",
        "DEC-BALANCE-COMMITMENT-DERIVATION",
        "DEC-BALANCE-COMMITMENT-ENCODING",
        "WITHDRAWAL-INTENT-FIELD-BINDING",
        "EXT-TRANSACTION-BINDING-SIGNATURE",
    }
)
_OUTPUTS = frozenset(
    {
        "DEC-DIVERSIFIED-GENERATOR-NONIDENTITY",
        "DEC-DIVERSIFIED-GENERATOR-ENCODING",
        "DEC-TRANSMISSION-KEY-DERIVATION",
        "DEC-TRANSMISSION-KEY-ENCODING",
        "DEC-TRANSMISSION-KEY-NONIDENTITY",
        "NOTE-OUTPUT-OWNER-BINDING",
        "NOTE-OUTPUT-ASSET-BINDING",
        "ROUTING-PARAMETERS",
        "NOTE-OUTPUT-COMMITMENT",
        "NOTE-RECEIVER-AMOUNT-NONZERO",
        "EXT-OUTPUT-PERSISTENCE",
    }
)
_REGISTRY = frozenset(
    {
        "ASSET-ID-NONZERO",
        "ASSET-REGULATED-BOOLEAN",
        "ASSET-LEAF-HASH",
        "ASSET-REGISTRY-MEMBERSHIP",
        "ASSET-REGISTRY-GAP-ORDERING",
        "USER-LEAF-ADDRESS-BINDING",
        "USER-LEAF-ASSET-BINDING",
        "USER-LEAF-POLICY-SLOT-BINDING",
        "FIELD-USER-POSITION-RANGE",
        "FIELD-USER-DERIVATION-RANGE",
        "USER-COMPLIANCE-LEAF-HASH",
        "USER-COMPLIANCE-MEMBERSHIP-GATE",
        "EXT-ASSET-ANCHOR-CURRENT",
        "EXT-COMPLIANCE-ANCHOR-LIVE",
        "EXT-REGISTRY-WELL-FORMED",
        "EXT-ASSET-REGISTRY-AUTHORIZED",
        "EXT-USER-REGISTRY-AUTHORIZED",
        "EXT-ASSET-REGISTRY-KEY-VALIDITY",
        "EXT-WITHDRAWAL-ROUTE-AUTHORIZED",
    }
)
_CIPHERTEXT = frozenset(
    {
        "ASSET-POLICY-KEY-ENCODING",
        "ASSET-PARAMETERS-HASH",
        "ASSET-RING-HASH",
        "VALUE-THRESHOLD-128-RANGE",
        "COMPLIANCE-FLAG-BOOLEAN",
        "COMPLIANCE-THRESHOLD-FLAG",
        "COMPLIANCE-POLICY-SELECTION",
        "COMPLIANCE-SALT-DERIVATION",
        "FIELD-EPHEMERAL-SCALAR-RANGE",
        "DEC-EPHEMERAL-PUBLIC-KEY-DERIVATION",
        "DEC-EPHEMERAL-PUBLIC-KEY-ENCODING",
        "DEC-ACK-DERIVATION",
        "DEC-SHARED-SECRET-DERIVATION",
        "COMPLIANCE-SHARED-SECRET-SELECTION",
        "FIELD-DETECTION-SLOT-RANGE",
        "COMPLIANCE-DETECTION-ENCRYPTION",
        "COMPLIANCE-AMOUNT-ENCRYPTION",
        "ADDRESS-CANONICAL-PACKING",
        "COMPLIANCE-ADDRESS-ENCRYPTION",
        "COMPLIANCE-METADATA-BINDING",
        "EXT-INPUT-COMPLIANCE-EMPTY",
        "EXT-OUTPUT-COMPLIANCE-ENCODING",
        "EXT-HONEST-COMPLIANCE-NONCE",
        "EXT-HONEST-COMPLIANCE-TIER-SCALAR-NONZERO",
        "EXT-TRANSFER-EFFECT-HASH-COMPLIANCE-BINDING",
    }
)
_WITNESS_ABI = frozenset(
    {
        "CIR-SHAPE-FIXED",
        "CIR-SELECTOR-BOOLEAN",
        "FIELD-AUTH-RANDOMIZER-RANGE",
        "FIELD-BALANCE-BLINDING-RANGE",
        "FIELD-USER-POSITION-RANGE",
        "FIELD-USER-DERIVATION-RANGE",
        "FIELD-EPHEMERAL-SCALAR-RANGE",
        "FIELD-DETECTION-SLOT-RANGE",
        "VALUE-AMOUNT-128-RANGE",
        "VALUE-THRESHOLD-128-RANGE",
        "DEC-AUTHORIZATION-KEY-ENCODING",
        "DEC-DIVERSIFIED-GENERATOR-ENCODING",
        "DEC-TRANSMISSION-KEY-ENCODING",
        "DEC-SPEND-RK-ENCODING",
        "DEC-BALANCE-COMMITMENT-ENCODING",
        "DEC-EPHEMERAL-PUBLIC-KEY-ENCODING",
        "ADDRESS-CANONICAL-PACKING",
        "EXT-BODY-PROJECTION-CANONICALITY",
        "EXT-FIXED-SHAPE-DECODE",
        "EXT-PROOF-CANONICAL-ENCODING",
    }
)
_FIXED_ARITY = frozenset(
    {
        "CIR-SHAPE-FIXED",
        "ROUTING-PARAMETERS",
        "ROUTING-TAG-DERIVATION",
        "CIR-SELECTOR-BOOLEAN",
        "DUMMY-AMOUNT-ZERO",
        "DUMMY-NULLIFIER-DOMAIN-BINDING",
        "DUMMY-SLOT-POSITION-BINDING",
        "CIR-DUMMY-ORDER-COUNT",
        "EXT-FIXED-SHAPE-DECODE",
        "EXT-INPUT-COMPLIANCE-EMPTY",
    }
)
_PROOF_COMPOSITION = frozenset(
    {
        "CIR-SHAPE-FIXED",
        "PUBLIC-STATEMENT-BINDING",
        "DEC-RANDOMIZED-VERIFICATION-KEY-NONIDENTITY",
        "EXT-SPEND-AUTH-SIGNATURE",
        "EXT-BODY-PROJECTION-CANONICALITY",
        "EXT-FIXED-SHAPE-DECODE",
        "EXT-ANCHOR-CONTEXT-BINDING",
        "EXT-PUBLIC-INPUT-PROJECTION",
        "EXT-PROOF-CANONICAL-ENCODING",
        "EXT-PROOF-FAMILY-KEY-SELECTION",
        "EXT-PROOF-VERIFICATION",
    }
)
_PLAN_BOUNDARY = frozenset(
    {
        "CIR-SHAPE-FIXED",
        "EXT-BODY-PROJECTION-CANONICALITY",
        "EXT-FIXED-SHAPE-DECODE",
        "EXT-PLAN-BOUNDARY-CANONICALITY",
        "EXT-WITHDRAWAL-PAYLOAD-VALID",
        "EXT-WITHDRAWAL-PAYLOAD-PROJECTION",
        "EXT-WITHDRAWAL-CHANNEL-CONNECTION-VALID",
        "EXT-WITHDRAWAL-CLIENT-ACTIVE-UNEXPIRED",
        "EXT-WITHDRAWAL-TIMEOUTS-FUTURE",
        "EXT-WITHDRAWAL-CHECKED-TOKEN-FRESH",
        "EXT-WITHDRAWALS-ENABLED",
        "EXT-WITHDRAWAL-STATE-TRANSITION",
        "EXT-WITHDRAWAL-ACTION-ATOMICITY",
    }
)

PROPERTY_CONTRACT = {
    "NO-DOUBLE-SPEND": (ALL, _NO_DOUBLE_SPEND),
    "BALANCE-CONSERVATION": (ALL, _BALANCE),
    "NOTE-OWNERSHIP-SPEND-AUTH": (ALL, _OWNERSHIP),
    "OUTPUT-WELL-FORMEDNESS": (ALL, _OUTPUTS),
    "REGULATED-STATUS-SOUNDNESS": (TX, _REGISTRY),
    "CIPHERTEXT-CORRECTNESS": (TRANSFER, _CIPHERTEXT),
    "STATEMENT-INTEGRITY": (
        ALL,
        frozenset(
            {
                "PUBLIC-STATEMENT-BINDING",
                "EXT-PUBLIC-INPUT-PROJECTION",
                "EXT-WITHDRAWAL-EFFECT-HASH-BINDING",
            }
        ),
    ),
    "WITNESS-ABI-CANONICALITY": (ALL, _WITNESS_ABI),
    "FIXED-ARITY-PRIVACY": (ALL, _FIXED_ARITY),
    "ACTION-ANCHOR-CONSISTENCY": (
        ALL,
        frozenset(
            {
                "SCT-SPEND-MEMBERSHIP",
                "PUBLIC-STATEMENT-BINDING",
                "EXT-ANCHOR-CONTEXT-BINDING",
                "EXT-ANCHOR-LIVENESS",
            }
        ),
    ),
    "CONSENSUS-PROOF-EXTRACTION-COMPOSITION": (
        ALL,
        _PROOF_COMPOSITION,
    ),
    "OUTGOING-VIEW-BINDING": (
        ALL,
        frozenset(
            {
                "DEC-BALANCE-COMMITMENT-DERIVATION",
                "DEC-BALANCE-COMMITMENT-ENCODING",
                "EXT-OUTGOING-VIEW-BINDING",
            }
        ),
    ),
    "PLAN-BOUNDARY-CANONICALITY": (ALL, _PLAN_BOUNDARY),
    "ZK-PROP-AMOUNT-RANGE-128": (
        ALL,
        frozenset({"VALUE-AMOUNT-128-RANGE"}),
    ),
    "ZK-PROP-NOTE-RESHAPE-STATEMENT-SEAM": (
        NR,
        frozenset(
            {
                "PUBLIC-STATEMENT-BINDING",
                "EXT-PUBLIC-INPUT-PROJECTION",
            }
        ),
    ),
    "SECRECY": (
        TRANSFER,
        frozenset(
            {
                "COMPLIANCE-SALT-DERIVATION",
                "FIELD-EPHEMERAL-SCALAR-RANGE",
                "DEC-EPHEMERAL-PUBLIC-KEY-DERIVATION",
                "DEC-SHARED-SECRET-DERIVATION",
                "COMPLIANCE-DETECTION-ENCRYPTION",
                "COMPLIANCE-AMOUNT-ENCRYPTION",
                "COMPLIANCE-ADDRESS-ENCRYPTION",
                "EXT-HONEST-COMPLIANCE-NONCE",
                "EXT-HONEST-COMPLIANCE-TIER-SCALAR-NONZERO",
            }
        ),
    ),
    "DETECTION-CORRECTNESS": (
        TRANSFER,
        frozenset(
            {
                "ASSET-REGULATED-BOOLEAN",
                "VALUE-THRESHOLD-128-RANGE",
                "COMPLIANCE-FLAG-BOOLEAN",
                "COMPLIANCE-THRESHOLD-FLAG",
                "COMPLIANCE-SALT-DERIVATION",
                "FIELD-DETECTION-SLOT-RANGE",
                "COMPLIANCE-DETECTION-ENCRYPTION",
                "COMPLIANCE-METADATA-BINDING",
                "EXT-OUTPUT-COMPLIANCE-ENCODING",
                "EXT-TRANSFER-EFFECT-HASH-COMPLIANCE-BINDING",
            }
        ),
    ),
    "DESIGNATED-DECRYPTABILITY": (
        TRANSFER,
        frozenset(
            {
                "COMPLIANCE-POLICY-SELECTION",
                "DEC-ACK-DERIVATION",
                "DEC-SHARED-SECRET-DERIVATION",
                "COMPLIANCE-SHARED-SECRET-SELECTION",
            }
        ),
    ),
    "REPLAY-RESISTANCE": (
        TRANSFER,
        frozenset(
            {
                "PUBLIC-STATEMENT-BINDING",
                "COMPLIANCE-SALT-DERIVATION",
                "COMPLIANCE-METADATA-BINDING",
                "EXT-ASSET-ANCHOR-CURRENT",
                "EXT-COMPLIANCE-ANCHOR-LIVE",
                "EXT-TIMESTAMP-FRESHNESS",
            }
        ),
    ),
    "NO-KEY-CONFUSION": (
        TRANSFER,
        frozenset(
            {
                "COMPLIANCE-POLICY-SELECTION",
                "DEC-ACK-DERIVATION",
                "DEC-SHARED-SECRET-DERIVATION",
                "COMPLIANCE-SHARED-SECRET-SELECTION",
                "COMPLIANCE-METADATA-BINDING",
            }
        ),
    ),
    "ANCHOR-FRESHNESS": (
        TX,
        frozenset(
            {
                "ASSET-REGISTRY-MEMBERSHIP",
                "USER-COMPLIANCE-MEMBERSHIP-GATE",
                "EXT-ASSET-ANCHOR-CURRENT",
                "EXT-COMPLIANCE-ANCHOR-LIVE",
            }
        ),
    ),
    "IMT-NULLIFIER-STATE": (
        ALL,
        _NO_DOUBLE_SPEND
        | frozenset(
            {
                "ASSET-REGISTRY-MEMBERSHIP",
                "ASSET-REGISTRY-GAP-ORDERING",
                "EXT-REGISTRY-WELL-FORMED",
            }
        ),
    ),
    "TX-VALUE-CONSERVATION": (ALL, _BALANCE),
}
PROPERTY_CONTRACT["ZK-PROP-NOTE-RESHAPE-STATEMENT-SUFFICIENT"] = (
    NR,
    _OWNERSHIP
    | _NO_DOUBLE_SPEND
    | _BALANCE
    | _OUTPUTS
    | _PROOF_COMPOSITION,
)
PROPERTY_CONTRACT["ZK-PROP-TRANSFER-STATEMENT-SUFFICIENT"] = (
    TRANSFER,
    _OWNERSHIP
    | _NO_DOUBLE_SPEND
    | _BALANCE
    | _OUTPUTS
    | _REGISTRY
    | _CIPHERTEXT
    | _PROOF_COMPOSITION
    | _PLAN_BOUNDARY,
)


def security_objectives_for(predicate_id: str) -> list[str]:
    objectives = sorted(
        property_id
        for property_id, (profiles, predicates) in PROPERTY_CONTRACT.items()
        if predicate_id in predicates
        and profiles & PREDICATES[predicate_id][1]
    )
    if not objectives:
        raise ValueError(f"{predicate_id}: no real security property objective")
    return objectives


@lru_cache(maxsize=None)
def manifest_for(profile: str) -> dict:
    path = (
        ROOT
        / "tools/gnark/artifacts"
        / profile
        / f"{profile}-manifest.json"
    )
    value = formal_json.read_constraint_manifest(path)
    if (
        value.get("schema") != "shieldd.gnark.constraint_manifest.v1"
        or value.get("circuit") != profile
    ):
        raise ValueError(f"{profile}: bad constraint manifest identity")
    return value


def slug(value: str) -> str:
    result = re.sub(r"[^a-z0-9]+", ".", value.lower()).strip(".")
    return re.sub(r"\.+", ".", result)


def trace_role(segment: dict) -> str:
    args = segment["args"]
    preferred = (
        "out=",
        "lhs=",
        "point=",
        "in=",
        "value=",
        "var=",
        "field=",
        "fields=",
        "tier=",
        "label=",
        "block=",
        "shape=",
        "family=",
        "flag=",
        "seed=",
        "inputs=",
    )
    subject = ""
    for prefix in preferred:
        match = next((arg for arg in args if arg.startswith(prefix)), None)
        if match is not None:
            subject = match[len(prefix) :]
            break
    if not subject:
        subject = args[0] if args else segment["op"]
    return (
        f"{slug(subject)}.{slug(segment['op'])}.row{segment['index']}"
    )


def has(args: str, *needles: str) -> bool:
    return all(needle in args for needle in needles)


def trace_predicates(profile: str, segment: dict) -> set[str]:
    """Map one exact trace row to every atomic obligation it witnesses."""

    op = segment["op"]
    args = "|".join(segment["args"])
    result: set[str] = set()

    if op == "assert.decaf_non_identity":
        if "auth.ak" in args:
            result.add("DEC-AUTHORIZATION-KEY-NONIDENTITY")
        elif "transmission" in args:
            result.add("DEC-TRANSMISSION-KEY-NONIDENTITY")
        else:
            result.add("DEC-DIVERSIFIED-GENERATOR-NONIDENTITY")
    elif op == "assert.boolean":
        if "is_regulated" in args:
            result.add("ASSET-REGULATED-BOOLEAN")
        else:
            result.add("CIR-SELECTOR-BOOLEAN")
    elif op in {"assert.dummy_suffix", "assert.active_range"}:
        result.update({"CIR-DUMMY-ORDER-COUNT", "CIR-SHAPE-FIXED"})
    elif op == "decaf.assert_on_curve":
        if "balance_commitment" in args:
            result.add("DEC-BALANCE-COMMITMENT-ENCODING")
        else:
            result.add("DEC-DIVERSIFIED-GENERATOR-ENCODING")
    elif op == "decaf.diversified_transmission_key":
        result.update(
            {
                "DEC-AUTHORIZATION-KEY-ENCODING",
                "DEC-INCOMING-VIEWING-KEY-DERIVATION",
                "DEC-TRANSMISSION-KEY-DERIVATION",
            }
        )
    elif op == "decaf.compress_to_field":
        if ".rk." in args:
            result.add("DEC-SPEND-RK-ENCODING")
        elif "balance_commitment" in args:
            result.add("DEC-BALANCE-COMMITMENT-ENCODING")
        elif "epk" in args:
            result.add("DEC-EPHEMERAL-PUBLIC-KEY-ENCODING")
        elif "asset.leaf.dk_pub" in args or "asset.leaf.ring_pk" in args:
            result.add("ASSET-POLICY-KEY-ENCODING")
        elif "transmission" in args:
            result.add("DEC-TRANSMISSION-KEY-ENCODING")
        elif "div_gen" in args:
            result.add("DEC-DIVERSIFIED-GENERATOR-ENCODING")
    elif op == "gadget.note_commitment":
        if "spend" in args:
            result.update(
                {
                    "NOTE-SPEND-OWNER-BINDING",
                    "NOTE-SPEND-ASSET-BINDING",
                    "NOTE-SPEND-COMMITMENT",
                }
            )
        else:
            result.update(
                {
                    "NOTE-OUTPUT-OWNER-BINDING",
                    "NOTE-OUTPUT-ASSET-BINDING",
                    "NOTE-OUTPUT-COMMITMENT",
                }
            )
    elif op in {
        "routing.precision.select",
        "routing.parameters.hash",
        "routing.parameters.bind",
    }:
        result.add("ROUTING-PARAMETERS")
    elif op.startswith("routing."):
        result.add("ROUTING-TAG-DERIVATION")
    elif op == "gadget.nullifier":
        result.add("NOTE-SPEND-NULLIFIER-DERIVATION")
    elif op == "gadget.state_commitment_path":
        result.add("SCT-SPEND-MEMBERSHIP")
    elif op == "history.classify":
        # The row derives the action-visible history_required field from the
        # authenticated note position, the public window floor, and the dummy
        # selector. The state path row separately certifies authentication of
        # the position itself.
        result.add("PUBLIC-STATEMENT-BINDING")
    elif op == "decaf.randomized_verification_key":
        result.update(
            {
                "DEC-AUTHORIZATION-KEY-ENCODING",
                "FIELD-AUTH-RANDOMIZER-RANGE",
                "DEC-SPEND-RK-DERIVATION",
            }
        )
    elif op in {
        "decaf.conservation_net_balance_commitment",
        "decaf.conservation_net_balance_commitment2",
        "decaf.net_balance_commitment",
    }:
        result.update(
            {
                "VALUE-AMOUNT-128-RANGE",
                "FIELD-BALANCE-BLINDING-RANGE",
                "VALUE-CONSERVATION",
                "DEC-BALANCE-COMMITMENT-DERIVATION",
            }
        )
    elif op in {"statement.hash", "statement.assemble"}:
        result.update({"CIR-SHAPE-FIXED", "PUBLIC-STATEMENT-BINDING"})
        if profile == "shielded_ics20_withdrawal":
            result.add("WITHDRAWAL-INTENT-FIELD-BINDING")
    elif op == "gadget.synthetic_dummy_nullifier":
        result.update(
            {
                "DUMMY-NULLIFIER-DOMAIN-BINDING",
                "DUMMY-SLOT-POSITION-BINDING",
            }
        )
    elif op == "dummy.mux":
        result.add("DUMMY-NULLIFIER-DOMAIN-BINDING")
    elif op == "gadget.asset_registry_leaf_hash":
        result.add("ASSET-LEAF-HASH")
    elif op == "gadget.asset_registry_path":
        result.add("ASSET-REGISTRY-MEMBERSHIP")
    elif op == "gadget.asset_registry_gap":
        result.add("ASSET-REGISTRY-GAP-ORDERING")
    elif op == "gadget.asset_registry_params_hash":
        result.update({"ASSET-POLICY-KEY-ENCODING", "ASSET-PARAMETERS-HASH"})
    elif op == "gadget.asset_registry_ring_hash":
        result.update({"ASSET-POLICY-KEY-ENCODING", "ASSET-RING-HASH"})
    elif op == "gadget.compliance_leaf":
        result.update(
            {
                "USER-LEAF-ADDRESS-BINDING",
                "USER-LEAF-ASSET-BINDING",
                "USER-LEAF-POLICY-SLOT-BINDING",
                "USER-COMPLIANCE-LEAF-HASH",
            }
        )
    elif op == "gadget.compliance_path":
        result.update(
            {
                "FIELD-USER-POSITION-RANGE",
                "USER-COMPLIANCE-MEMBERSHIP-GATE",
            }
        )
    elif op == "gadget.is_zero":
        result.add("NOTE-RECEIVER-AMOUNT-NONZERO")
    elif op == "threshold.flag":
        result.update(
            {
                "VALUE-THRESHOLD-128-RANGE",
                "COMPLIANCE-FLAG-BOOLEAN",
                "COMPLIANCE-THRESHOLD-FLAG",
                "COMPLIANCE-POLICY-SELECTION",
            }
        )
    elif op == "gadget.transfer_salt":
        result.add("COMPLIANCE-SALT-DERIVATION")
    elif op == "decaf.ack":
        result.update(
            {"DEC-ACK-DERIVATION", "FIELD-USER-DERIVATION-RANGE"}
        )
    elif op == "decaf.shared_secret":
        result.update(
            {
                "FIELD-EPHEMERAL-SCALAR-RANGE",
                "DEC-EPHEMERAL-PUBLIC-KEY-DERIVATION",
                "DEC-SHARED-SECRET-DERIVATION",
                "COMPLIANCE-SHARED-SECRET-SELECTION",
            }
        )
    elif op == "gadget.poseidon_encryption.detection":
        result.update(
            {
                "FIELD-DETECTION-SLOT-RANGE",
                "COMPLIANCE-DETECTION-ENCRYPTION",
            }
        )
    elif op == "gadget.poseidon_encryption.amount":
        result.add("COMPLIANCE-AMOUNT-ENCRYPTION")
    elif op == "gadget.poseidon_encryption.address":
        result.update(
            {"ADDRESS-CANONICAL-PACKING", "COMPLIANCE-ADDRESS-ENCRYPTION"}
        )
    elif op in {"select.field", "select.point"}:
        result.add("COMPLIANCE-POLICY-SELECTION")

    if op in {"decaf.assert_equivalent", "decaf.assert_equivalent_if"}:
        if ".rk." in args:
            result.add("DEC-SPEND-RK-DERIVATION")
        elif "transmission" in args:
            result.add("DEC-TRANSMISSION-KEY-DERIVATION")
        elif "balance_commitment" in args:
            result.add("DEC-BALANCE-COMMITMENT-DERIVATION")

    if op == "assert.ne":
        if has(args, "ivk_reduced", "0"):
            result.add("DEC-INCOMING-VIEWING-KEY-NONZERO")
        elif has(args, "asset_id", "0"):
            result.add("ASSET-ID-NONZERO")

    if op in {"assert.eq", "assert.eq_if"}:
        if "note.commitment" in args:
            result.add(
                "NOTE-SPEND-COMMITMENT"
                if "spend" in args
                else "NOTE-OUTPUT-COMMITMENT"
            )
        elif "nullifier" in args:
            result.add(
                "DUMMY-NULLIFIER-DOMAIN-BINDING"
                if "selected" in args
                else "NOTE-SPEND-NULLIFIER-DERIVATION"
            )
        elif "anchor" in args and "asset" not in args and "compliance" not in args:
            result.add("SCT-SPEND-MEMBERSHIP")
        elif "asset.root" in args:
            result.add("ASSET-REGISTRY-MEMBERSHIP")
        elif "asset.gap" in args:
            result.add("ASSET-REGISTRY-GAP-ORDERING")
        elif "compliance_root" in args:
            result.add("USER-COMPLIANCE-MEMBERSHIP-GATE")
        elif "metadata" in args:
            result.add("COMPLIANCE-METADATA-BINDING")
        elif "statement" in args:
            result.add("PUBLIC-STATEMENT-BINDING")
            if profile == "shielded_ics20_withdrawal":
                result.add("WITHDRAWAL-INTENT-FIELD-BINDING")
        elif "output0.is_dummy" in args and "|rhs=0" in args:
            result.add("NOTE-RECEIVER-AMOUNT-NONZERO")
        elif "amount" in args and "|rhs=0" in args:
            result.add("DUMMY-AMOUNT-ZERO")

    return result


def formal_fields(path: str, structure: str, prefix: str) -> list[str]:
    source = (ROOT / path).read_text(encoding="utf-8")
    marker = re.search(rf"^structure {re.escape(structure)}\b", source, re.M)
    if marker is None:
        raise ValueError(f"{path}: missing structure {structure}")
    tail = source[marker.end() :]
    boundary = re.search(
        r"^(?:structure|def|theorem|lemma|inductive|namespace|section|end)\b",
        tail,
        re.M,
    )
    body = tail[: boundary.start()] if boundary else tail
    fields = re.findall(r"^  ([A-Za-z][A-Za-z0-9_]*)\s*:", body, re.M)
    if not fields:
        raise ValueError(f"{path}: no fields in {structure}")
    return [f"{prefix}.{field}" for field in fields]


NR_CIRCUIT_FACTS = formal_fields(
    "tools/gnark/lean/ShielddGnarkFormal/Protocol/NoteReshape/CircuitFacts.lean",
    "CircuitFacts",
    "NoteReshape.CircuitFacts",
)
NR_EXTERNAL_FACTS = [
    *formal_fields(
        "tools/gnark/lean/ShielddGnarkFormal/Protocol/NoteReshape/Semantics.lean",
        "ConsensusSignatureFacts",
        "NoteReshape.ConsensusSignatureFacts",
    ),
    *formal_fields(
        "tools/gnark/lean/ShielddGnarkFormal/Protocol/NoteReshape/Semantics.lean",
        "ConsensusStateFacts",
        "NoteReshape.ConsensusStateFacts",
    ),
    *formal_fields(
        "tools/gnark/lean/ShielddGnarkFormal/Protocol/NoteReshape/Semantics.lean",
        "TransactionAccepted",
        "NoteReshape.TransactionAccepted",
    ),
]
NR_CONSTRUCTION_FACTS = formal_fields(
    "tools/gnark/lean/ShielddGnarkFormal/Protocol/NoteReshape/Semantics.lean",
    "HonestConstructionFacts",
    "NoteReshape.HonestConstructionFacts",
)
TRANSFER_CIRCUIT_FACTS = formal_fields(
    "tools/gnark/lean/ShielddGnarkFormal/Protocol/Transfer/CircuitFacts.lean",
    "CircuitFacts",
    "Transfer.CircuitFacts",
)
TRANSFER_EXTERNAL_FACTS = [
    *formal_fields(
        "tools/gnark/lean/ShielddGnarkFormal/Protocol/Transfer/Semantics.lean",
        "ConsensusExternalFacts",
        "Transfer.ConsensusExternalFacts",
    ),
    *formal_fields(
        "tools/gnark/lean/ShielddGnarkFormal/Protocol/Transfer/Semantics.lean",
        "TransactionAccepted",
        "Transfer.TransactionAccepted",
    ),
]
TRANSFER_CONSTRUCTION_FACTS = formal_fields(
    "tools/gnark/lean/ShielddGnarkFormal/Protocol/Transfer/Semantics.lean",
    "HonestConstructionFacts",
    "Transfer.HonestConstructionFacts",
)
WITHDRAWAL_CIRCUIT_FACTS = formal_fields(
    (
        "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
        "ShieldedIcs20Withdrawal/CircuitFacts.lean"
    ),
    "CircuitFacts",
    "Withdrawal.CircuitFacts",
)
WITHDRAWAL_EXTERNAL_FACTS = [
    *formal_fields(
        (
            "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
            "ShieldedIcs20Withdrawal/Semantics.lean"
        ),
        "ConsensusExternalFacts",
        "Withdrawal.ConsensusExternalFacts",
    ),
    *formal_fields(
        (
            "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
            "ShieldedIcs20Withdrawal/Semantics.lean"
        ),
        "TransactionAccepted",
        "Withdrawal.TransactionAccepted",
    ),
]
WITHDRAWAL_CONSTRUCTION_FACTS = formal_fields(
    (
        "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
        "ShieldedIcs20Withdrawal/Semantics.lean"
    ),
    "HonestConstructionFacts",
    "Withdrawal.HonestConstructionFacts",
)


def ledger(prefix: str) -> list[str]:
    source = (FORMAL / "certified-circuit-obligation-ledger.md").read_text(
        encoding="utf-8"
    )
    ids = re.findall(r"^\| `([A-Z0-9-]+)` \|", source, re.M)
    return [row for row in ids if row.startswith(prefix)]


def trace_inventory(profile: str) -> list[dict]:
    result = []
    seen_roles: set[str] = set()
    for segment in manifest_for(profile)["segments"]:
        count = segment["constraint_count"]
        if not isinstance(count, int) or isinstance(count, bool) or count < 0:
            raise ValueError(f"{profile}: invalid segment constraint count")
        if count == 0:
            continue
        role = trace_role(segment)
        if role in seen_roles:
            raise ValueError(f"{profile}: duplicate semantic trace role {role}")
        seen_roles.add(role)
        result.append(
            {
                "id": f"{slug(profile).replace('.', '-').upper()}-TRACE-{segment['index']}",
                "profile": profile,
                "role": role,
                "op": segment["op"],
                "args": segment["args"],
                "kind": segment["kind"],
                "constraint_count": count,
            }
        )
    return result


TRACE_BY_PROFILE = {profile: trace_inventory(profile) for profile in PROFILES}


def source(path: str, *symbols: str) -> dict:
    return {"path": path, "symbols": list(symbols)}


def evidence_sets(test_rows: list[dict]) -> list[dict]:
    specs = (
        (
            "NR-CIRCUIT",
            "circuit",
            NR,
            NR_CIRCUIT_FACTS,
            ledger("NR-"),
            "NoteReshape",
        ),
        (
            "TRANSFER-CIRCUIT",
            "circuit",
            TRANSFER,
            TRANSFER_CIRCUIT_FACTS,
            ledger("T-"),
            "Transfer",
        ),
        (
            "WITHDRAWAL-CIRCUIT",
            "circuit",
            WITHDRAWAL,
            WITHDRAWAL_CIRCUIT_FACTS,
            ledger("W-"),
            "ShieldedIcs20Withdrawal",
        ),
        (
            "NR-EXTERNAL",
            "external_acceptance",
            NR,
            NR_EXTERNAL_FACTS,
            ledger("CERT-"),
            "NoteReshape",
        ),
        (
            "TRANSFER-EXTERNAL",
            "external_acceptance",
            TRANSFER,
            TRANSFER_EXTERNAL_FACTS,
            [],
            "Transfer",
        ),
        (
            "WITHDRAWAL-EXTERNAL",
            "external_acceptance",
            WITHDRAWAL,
            WITHDRAWAL_EXTERNAL_FACTS,
            [],
            "ShieldedIcs20Withdrawal",
        ),
        (
            "NR-CONSTRUCTION",
            "construction",
            NR,
            NR_CONSTRUCTION_FACTS,
            ledger("CONSTRUCTION-"),
            "NoteReshape",
        ),
        (
            "TRANSFER-CONSTRUCTION",
            "construction",
            TRANSFER,
            TRANSFER_CONSTRUCTION_FACTS,
            [],
            "Transfer",
        ),
        (
            "WITHDRAWAL-CONSTRUCTION",
            "construction",
            WITHDRAWAL,
            WITHDRAWAL_CONSTRUCTION_FACTS,
            [],
            "ShieldedIcs20Withdrawal",
        ),
    )
    result = []
    for (
        evidence_id,
        placement,
        profiles,
        fact_ids,
        ledger_ids,
        protocol,
    ) in specs:
        protocol_dir = (
            "tools/gnark/lean/ShielddGnarkFormal/Protocol/" + protocol
        )
        if placement == "circuit":
            trace_instances = [
                trace
                for profile in sorted(profiles)
                for trace in TRACE_BY_PROFILE[profile]
            ]
            trace_ops = sorted({trace["op"] for trace in trace_instances})
            source_evidence = [
                source(PROFILES[next(iter(profiles))]["circuit_source"], "Define")
            ]
            source_evidence.append(
                source(
                    "tools/gnark/internal/circuits/routing.go",
                    "verifyRoutingAssetRegistry",
                )
            )
            fact_path = f"{protocol_dir}/CircuitFacts.lean"
            fact_symbols = ("structure CircuitFacts",)
        elif placement == "external_acceptance":
            trace_instances = []
            trace_ops = []
            source_evidence = [
                source(
                    PROFILES[next(iter(profiles))]["runtime_source"],
                    (
                        "validate_action_anchor"
                        if protocol == "NoteReshape"
                        else "check_stateless"
                    ),
                )
            ]
            fact_path = f"{protocol_dir}/Semantics.lean"
            fact_symbols = (
                (
                    "structure ConsensusSignatureFacts",
                    "structure ConsensusStateFacts",
                )
                if protocol == "NoteReshape"
                else ("structure ConsensusExternalFacts",)
            )
        else:
            trace_instances = []
            trace_ops = []
            construction_source, construction_symbol = {
                "NoteReshape": (
                    "crates/core/component/shielded-pool/src/"
                    "note_reshape/plan.rs",
                    "pub fn note_reshape_body",
                ),
                "Transfer": (
                    "crates/core/component/shielded-pool/src/"
                    "transfer/plan.rs",
                    "pub fn transfer_body",
                ),
                "ShieldedIcs20Withdrawal": (
                    "crates/core/component/shielded-pool/src/"
                    "shielded_ics20_withdrawal/plan.rs",
                    "pub fn action_body",
                ),
            }[protocol]
            source_evidence = [
                source(construction_source, construction_symbol)
            ]
            fact_path = f"{protocol_dir}/Semantics.lean"
            fact_symbols = ("structure HonestConstructionFacts",)
        if placement == "construction":
            formal_evidence = source(
                f"{protocol_dir}/Semantics.lean",
                "structure ConstructionChecks",
            )
            consequence_evidence = source(
                f"{protocol_dir}/Semantics.lean",
                "structure ConstructedAndAccepted",
            )
        else:
            formal_evidence = source(
                f"{protocol_dir}/Concrete.lean", "def circuitPrimitives"
            )
            consequence_evidence = source(
                f"{protocol_dir}/Refinement.lean",
                "theorem consensusAccepted_of_circuitFacts",
            )
        result.append(
            {
                "id": evidence_id,
                "placement": placement,
                "source_evidence": source_evidence,
                "trace_ops": trace_ops,
                "trace_instances": trace_instances,
                "formal_evidence": formal_evidence,
                "fact_evidence": source(fact_path, *fact_symbols),
                "consequence_evidence": consequence_evidence,
                "formal_fact_ids": sorted(fact_ids),
                "ledger_ids": sorted(ledger_ids),
                "test_ids": sorted(
                    test["id"]
                    for test in test_rows
                    if {
                        PREDICATES[predicate_id][0]
                        for predicate_id in test["predicate_ids"]
                    }
                    == {placement}
                    and set(test["profiles"]) & set(profiles)
                ),
            }
        )
    return result


RUST_TEST_PACKAGES = (
    ("crates/bin/pd/src/network/", "pd", "lib"),
    ("crates/bin/pd/", "pd", "bin:pd"),
    ("crates/core/asset/", "shieldd-sdk-asset", "lib"),
    (
        "crates/core/component/shielded-pool/",
        "shieldd-sdk-shielded-pool",
        "lib",
    ),
    ("crates/core/component/compliance/", "shieldd-sdk-compliance", "lib"),
    (
        "crates/core/component/governance/",
        "shieldd-sdk-governance",
        "lib",
    ),
    ("crates/core/component/ibc/", "shieldd-sdk-ibc", "lib"),
    ("crates/core/component/sct/", "shieldd-sdk-sct", "lib"),
    ("crates/core/component/stake/", "shieldd-sdk-validator", "lib"),
    ("crates/core/keys/", "shieldd-sdk-keys", "lib"),
    ("crates/core/num/", "shieldd-sdk-num", "lib"),
    (
        "crates/core/transaction/tests/generate_transaction_signing_test_vectors.rs",
        "shieldd-sdk-transaction",
        "generate_transaction_signing_test_vectors",
    ),
    ("crates/core/transaction/", "shieldd-sdk-transaction", "lib"),
    ("crates/custody/", "shieldd-sdk-custody", "lib"),
    ("crates/test/mock-client/", "shieldd-sdk-mock-client", "lib"),
    ("crates/view/", "shieldd-sdk-view", "lib"),
    ("crates/core/app/", "shieldd-sdk-app", "lib"),
    ("crates/bin/shieldd/src/main.rs", "shieldd", "bin:shieldd"),
    ("crates/bin/shieldd/src/", "shieldd", "lib"),
    ("crates/bin/shieldd/", "shieldd", "bin:shieldd"),
    (
        "crates/crypto/constraint-coverage/src/main.rs",
        "shieldd-constraint-coverage",
        "bin:shieldd-constraint-coverage",
    ),
    (
        "crates/crypto/constraint-coverage/",
        "shieldd-constraint-coverage",
        "lib",
    ),
    (
        "crates/crypto/proof-aggregation/src/ipp/dh_commitments/",
        "ark-dh-commitments",
        "lib",
    ),
    (
        "crates/crypto/proof-aggregation/src/ipp/inner_products/",
        "ark-inner-products",
        "lib",
    ),
    (
        "crates/crypto/proof-aggregation/src/ipp/ip_proofs/",
        "ark-ip-proofs",
        "lib",
    ),
    (
        "crates/crypto/proof-aggregation/",
        "shieldd-sdk-proof-aggregation",
        "lib",
    ),
    ("crates/crypto/proof-params/", "shieldd-sdk-proof-params", "lib"),
    ("crates/crypto/tct/", "shieldd-sdk-tct", "lib"),
)
PROVER_TEST_IDS = frozenset(
    {
        "NOTE-RESHAPE-PROOF-ROUNDTRIP",
        "TRANSFER-PUBLIC-PROJECTION",
        "TRANSFER-RUNTIME-INTEGRATION",
        "WITHDRAWAL-RUNTIME-INTEGRATION",
        "WITHDRAWAL-END-TO-END-STATE-TRANSITION",
    }
)
PROVER_TEST_PATHS = frozenset(
    {_APP_PROOF_TESTS}
)


def execution_for(test: dict) -> dict:
    test_id = test["id"]
    path = test["path"]
    symbol = test["symbol"]
    if path.startswith("tools/gnark/") and path.endswith("_test.go"):
        nested_module = PurePosixPath(
            "tools/gnark/third_party/gnark-lean-extractor"
        )
        source_path = PurePosixPath(path)
        if source_path.is_relative_to(nested_module):
            relative = source_path.relative_to(nested_module)
            working_directory = nested_module.as_posix()
        else:
            relative = source_path.relative_to("tools/gnark")
            working_directory = "tools/gnark"
        package_parent = relative.parent.as_posix()
        package = "." if package_parent == "." else f"./{package_parent}"
        return {
            "runner": "go_test",
            "working_directory": working_directory,
            "package": package,
            "cargo_target": None,
            "selector": symbol,
            "build_profile": "default",
            "features": [],
            "prover_required": False,
        }
    app_tests_prefix = "crates/core/app-tests/tests/"
    if path.startswith(app_tests_prefix) and path.endswith(".rs"):
        prover_required = (
            test_id in PROVER_TEST_IDS or path in PROVER_TEST_PATHS
        )
        return {
            "runner": "cargo_test",
            "working_directory": ".",
            "package": "shieldd-sdk-app-tests",
            "cargo_target": PurePosixPath(path).stem,
            "selector": symbol,
            "build_profile": "release" if prover_required else "default",
            "features": [],
            "prover_required": prover_required,
        }
    for prefix, package, cargo_target in RUST_TEST_PACKAGES:
        if path.startswith(prefix) and path.endswith(".rs"):
            prover_required = (
                test_id in PROVER_TEST_IDS or path in PROVER_TEST_PATHS
            )
            features = (
                ["bundled-proving-keys"]
                if prover_required
                and package == "shieldd-sdk-shielded-pool"
                else []
            )
            return {
                "runner": "cargo_test",
                "working_directory": ".",
                "package": package,
                "cargo_target": cargo_target,
                "selector": symbol,
                "build_profile": (
                    "release" if prover_required else "default"
                ),
                "features": features,
                "prover_required": prover_required,
            }
    raise ValueError(
        f"{test_id}: no code-owned execution command for {path}"
    )


def tests() -> list[dict]:
    circuit_all = sorted(
        predicate_id
        for predicate_id in CIRCUIT_IDS
        if PREDICATES[predicate_id][1] == ALL
    )
    rows = [
        {
            "id": "CIRCUIT-FAMILY-VALID",
            "kind": "integration",
            "path": "tools/gnark/internal/circuits/family_test.go",
            "symbol": "TestCircuitFamiliesAcceptValidAssignment",
            "predicate_ids": circuit_all,
            "profiles": sorted(ALL),
        },
        {
            "id": "NOTE-RESHAPE-PADDED-FAMILIES-VALID",
            "kind": "integration",
            "path": "tools/gnark/internal/circuits/family_test.go",
            "symbol": "TestCircuitFamiliesAcceptValidAssignment",
            "predicate_ids": sorted(
                predicate_id
                for predicate_id in CIRCUIT_IDS
                if NR_SYNTHETIC <= PREDICATES[predicate_id][1]
                and PREDICATES[predicate_id][1] != ALL
            ),
            "profiles": sorted(NR_SYNTHETIC),
        },
        {
            "id": "NOTE-RESHAPE-ROUTING-FAMILIES-VALID",
            "kind": "integration",
            "path": "tools/gnark/internal/circuits/family_test.go",
            "symbol": "TestCircuitFamiliesAcceptValidAssignment",
            "predicate_ids": sorted(
                predicate_id
                for predicate_id in CIRCUIT_IDS
                if NR <= PREDICATES[predicate_id][1]
                and PREDICATES[predicate_id][1] != ALL
            ),
            "profiles": sorted(NR),
        },
        {
            "id": "TRANSFER-FAMILY-VALID",
            "kind": "integration",
            "path": "tools/gnark/internal/circuits/family_test.go",
            "symbol": "TestCircuitFamiliesAcceptValidAssignment",
            "predicate_ids": sorted(
                predicate_id
                for predicate_id in CIRCUIT_IDS
                if "transfer" in PREDICATES[predicate_id][1]
                and PREDICATES[predicate_id][1] != ALL
            ),
            "profiles": ["transfer"],
        },
        {
            "id": "WITHDRAWAL-FAMILY-VALID",
            "kind": "integration",
            "path": "tools/gnark/internal/circuits/family_test.go",
            "symbol": "TestCircuitFamiliesAcceptValidAssignment",
            "predicate_ids": sorted(
                predicate_id
                for predicate_id in CIRCUIT_IDS
                if "shielded_ics20_withdrawal"
                in PREDICATES[predicate_id][1]
                and PREDICATES[predicate_id][1] != ALL
            ),
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "CIRCUIT-FAMILY-NEGATIVE",
            "kind": "negative",
            "path": "tools/gnark/internal/circuits/family_test.go",
            "symbol": "TestCircuitFamiliesRejectWrongStatementHash",
            "predicate_ids": ["PUBLIC-STATEMENT-BINDING"],
            "profiles": sorted(ALL),
        },
        {
            "id": "TRANSFER-CIRCUIT-NEGATIVE",
            "kind": "negative",
            "path": "tools/gnark/internal/circuits/transfer_metamorphic_test.go",
            "symbol": "TestTransferCircuitRejectsTransferOwnedMutations",
            "predicate_ids": [
                "DEC-SPEND-RK-DERIVATION",
                "DEC-SPEND-RK-ENCODING",
                "NOTE-OUTPUT-COMMITMENT",
                "NOTE-SPEND-NULLIFIER-DERIVATION",
                "PUBLIC-STATEMENT-BINDING",
                "ROUTING-PARAMETERS",
                "ROUTING-TAG-DERIVATION",
                "SCT-SPEND-MEMBERSHIP",
            ],
            "profiles": ["transfer"],
        },
        {
            "id": "WITHDRAWAL-CIRCUIT-NEGATIVE",
            "kind": "negative",
            "path": "tools/gnark/internal/circuits/transfer_metamorphic_test.go",
            "symbol": "TestShieldedIcs20WithdrawalRejectsUnbalancedAmounts",
            "predicate_ids": ["VALUE-CONSERVATION"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "DECAF-IDENTITY-CLASS-BOUNDARY",
            "kind": "boundary_negative",
            "path": (
                "tools/gnark/internal/circuits/"
                "shielded_ics20_withdrawal_identity_test.go"
            ),
            "symbol": "TestAssertDecafNonIdentityRejectsBothIdentityRepresentatives",
            "predicate_ids": [
                "DEC-AUTHORIZATION-KEY-NONIDENTITY",
                "DEC-DIVERSIFIED-GENERATOR-NONIDENTITY",
                "DEC-TRANSMISSION-KEY-NONIDENTITY",
            ],
            "profiles": sorted(ALL),
        },
        {
            "id": "IVK-NONZERO-BOUNDARY",
            "kind": "boundary_negative",
            "path": (
                "tools/gnark/internal/circuits/"
                "shielded_ics20_withdrawal_identity_test.go"
            ),
            "symbol": "TestIncomingViewingKeyNonzeroRejectsZero",
            "predicate_ids": ["DEC-INCOMING-VIEWING-KEY-NONZERO"],
            "profiles": sorted(ALL),
        },
        {
            "id": "NOTE-RESHAPE-IDENTITY-OWNERSHIP-ATTACK",
            "kind": "attack_reproduction",
            "path": "tools/gnark/internal/circuits/note_reshape_identity_test.go",
            "symbol": (
                "TestNoteReshapeIdentityDiversifierEnablesSameCommitment"
                "DifferentNullifiersWithoutGuard"
            ),
            "predicate_ids": ["DEC-DIVERSIFIED-GENERATOR-NONIDENTITY"],
            "profiles": sorted(NR),
        },
        {
            "id": "NOTE-RESHAPE-IDENTITY-FULL-CIRCUIT",
            "kind": "full_circuit_negative",
            "path": "tools/gnark/internal/circuits/note_reshape_identity_test.go",
            "symbol": (
                "TestNoteReshapeCircuitRejectsIdentityAuthorizationAnd"
                "DiversifiedGenerator"
            ),
            "predicate_ids": [
                "DEC-AUTHORIZATION-KEY-NONIDENTITY",
                "DEC-DIVERSIFIED-GENERATOR-NONIDENTITY",
                "DEC-INCOMING-VIEWING-KEY-NONZERO",
            ],
            "profiles": sorted(NR),
        },
        {
            "id": "TRANSFER-IDENTITY-OWNERSHIP-ATTACK",
            "kind": "attack_reproduction",
            "path": "tools/gnark/internal/circuits/transfer_identity_test.go",
            "symbol": (
                "TestTransferIdentityDiversifierEnablesSameCommitment"
                "DifferentNullifiersWithoutGuard"
            ),
            "predicate_ids": ["DEC-DIVERSIFIED-GENERATOR-NONIDENTITY"],
            "profiles": ["transfer"],
        },
        {
            "id": "TRANSFER-IDENTITY-FULL-CIRCUIT",
            "kind": "full_circuit_negative",
            "path": "tools/gnark/internal/circuits/transfer_identity_test.go",
            "symbol": (
                "TestTransferCircuitRejectsIdentityAuthorizationAnd"
                "DiversifiedGenerators"
            ),
            "predicate_ids": [
                "DEC-AUTHORIZATION-KEY-NONIDENTITY",
                "DEC-DIVERSIFIED-GENERATOR-NONIDENTITY",
                "DEC-INCOMING-VIEWING-KEY-NONZERO",
                "DEC-TRANSMISSION-KEY-NONIDENTITY",
            ],
            "profiles": ["transfer"],
        },
        {
            "id": "WITHDRAWAL-IDENTITY-OWNERSHIP-ATTACK",
            "kind": "attack_reproduction",
            "path": (
                "tools/gnark/internal/circuits/"
                "shielded_ics20_withdrawal_identity_test.go"
            ),
            "symbol": (
                "TestWithdrawalPreFixIdentitySenderAllowsOneAnchoredCommitment"
                "MultipleNullifiers"
            ),
            "predicate_ids": ["DEC-DIVERSIFIED-GENERATOR-NONIDENTITY"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-IDENTITY-FULL-CIRCUIT",
            "kind": "full_circuit_negative",
            "path": (
                "tools/gnark/internal/circuits/"
                "shielded_ics20_withdrawal_identity_full_test.go"
            ),
            "symbol": (
                "TestWithdrawalCircuitRejectsIdentityAuthorizationAnd"
                "DiversifiedGenerator"
            ),
            "predicate_ids": [
                "DEC-AUTHORIZATION-KEY-NONIDENTITY",
                "DEC-DIVERSIFIED-GENERATOR-NONIDENTITY",
                "DEC-INCOMING-VIEWING-KEY-NONZERO",
            ],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "GROTH16-PROOF-CANONICAL-ACCEPT",
            "kind": "parity",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "groth16_proof.rs"
            ),
            "symbol": "all_domain_decoders_accept_the_canonical_encoding",
            "predicate_ids": ["EXT-PROOF-CANONICAL-ENCODING"],
            "profiles": sorted(ALL),
        },
        {
            "id": "GROTH16-PROOF-LENGTH-REJECT",
            "kind": "boundary_negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "groth16_proof.rs"
            ),
            "symbol": (
                "all_domain_decoders_reject_short_and_trailing_encodings"
            ),
            "predicate_ids": ["EXT-PROOF-CANONICAL-ENCODING"],
            "profiles": sorted(ALL),
        },
        {
            "id": "GROTH16-PROOF-ALIAS-REJECT",
            "kind": "boundary_negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "groth16_proof.rs"
            ),
            "symbol": (
                "all_domain_decoders_reject_arkworks_infinity_alias"
            ),
            "predicate_ids": ["EXT-PROOF-CANONICAL-ENCODING"],
            "profiles": sorted(ALL),
        },
        {
            "id": "NOTE-RESHAPE-PROOF-ROUNDTRIP",
            "kind": "integration",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "note_reshape/proof.rs"
            ),
            "symbol": (
                "note_reshape_fresh_fixture_proof_roundtrip_rejects_"
                "cross_family_vks"
            ),
            "predicate_ids": [
                "EXT-PROOF-FAMILY-KEY-SELECTION",
                "EXT-PROOF-VERIFICATION",
            ],
            "profiles": sorted(NR),
        },
        {
            "id": "NOTE-RESHAPE-STATE-INVARIANTS",
            "kind": "invariant",
            "path": (
                "crates/core/component/shielded-pool/src/component/"
                "action_handler/note_reshape.rs"
            ),
            "symbol": "execute_rejects_duplicate_nullifiers_before_mutation",
            "predicate_ids": ["EXT-NULLIFIER-ATOMIC-TRANSITION"],
            "profiles": sorted(ALL),
        },
        {
            "id": "TRANSFER-RUNTIME-INTEGRATION",
            "kind": "integration",
            "path": "crates/core/component/shielded-pool/src/transfer/proof.rs",
            "symbol": "transfer_proof_roundtrip_regulated",
            "predicate_ids": ["EXT-PROOF-VERIFICATION"],
            "profiles": ["transfer"],
        },
        {
            "id": "WITHDRAWAL-RUNTIME-INTEGRATION",
            "kind": "integration",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "shielded_ics20_withdrawal/proof.rs"
            ),
            "symbol": "shielded_ics20_withdrawal_proof_roundtrip",
            "predicate_ids": ["EXT-PROOF-VERIFICATION"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "TRANSACTION-BINDING-SIGNATURE-REJECT",
            "kind": "negative",
            "path": (
                "crates/core/app/src/action_handler/transaction/"
                "stateless.rs"
            ),
            "symbol": "binding_signature_rejects_wrong_authorization_hash",
            "predicate_ids": ["EXT-TRANSACTION-BINDING-SIGNATURE"],
            "profiles": sorted(ALL),
        },
        {
            "id": "TRANSACTION-IDENTITY-BINDING-MODE",
            "kind": "invariant",
            "path": (
                "crates/core/app/src/action_handler/transaction/"
                "stateless.rs"
            ),
            "symbol": (
                "identity_binding_key_requires_canonical_no_binding_signature"
            ),
            "predicate_ids": ["EXT-TRANSACTION-BINDING-SIGNATURE"],
            "profiles": sorted(ALL),
        },
        {
            "id": "TRANSACTION-PROOF-BEARING-IDENTITY-BINDING-ATTACK",
            "kind": "attack_reproduction",
            "path": (
                "crates/core/app/src/action_handler/transaction/"
                "stateless.rs"
            ),
            "symbol": (
                "proof_bearing_transaction_rejects_identity_binding_"
                "key_signature_permutation"
            ),
            "predicate_ids": ["EXT-TRANSACTION-BINDING-SIGNATURE"],
            "profiles": sorted(ALL),
        },
        {
            "id": "ACTION-ANCHOR-CONTEXT",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/component/"
                "action_handler/note_reshape.rs"
            ),
            "symbol": "action_anchor_must_match_transaction_context",
            "predicate_ids": ["EXT-ANCHOR-CONTEXT-BINDING"],
            "profiles": sorted(ALL),
        },
        {
            "id": "SCT-ANCHOR-LIVENESS-BOUNDARY",
            "kind": "boundary_negative",
            "path": "crates/core/component/sct/src/component/tree.rs",
            "symbol": "claimed_anchor_liveness_matches_retention_boundary",
            "predicate_ids": ["EXT-ANCHOR-LIVENESS"],
            "profiles": sorted(ALL),
        },
        {
            "id": "NULLIFIER-REPEATED-SPEND-REJECT",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/component/"
                "action_handler/note_reshape.rs"
            ),
            "symbol": "execute_rejects_repeated_nullifier",
            "predicate_ids": ["EXT-NULLIFIER-FRESHNESS"],
            "profiles": sorted(ALL),
        },
        {
            "id": "PROOF-BOUND-NULLIFIER-PERSISTENCE",
            "kind": "invariant",
            "path": (
                "crates/core/component/shielded-pool/src/component/"
                "action_handler/note_reshape.rs"
            ),
            "symbol": "note_reshape_persists_every_proof_bound_nullifier",
            "predicate_ids": ["EXT-NULLIFIER-ATOMIC-TRANSITION"],
            "profiles": sorted(ALL),
        },
        {
            "id": "NULLIFIER-BATCH-DUPLICATE-REJECT",
            "kind": "negative",
            "path": "crates/core/component/sct/src/nullifier_tree.rs",
            "symbol": "duplicate_batch_insert_is_rejected_before_mutation",
            "predicate_ids": ["EXT-NULLIFIER-TX-UNIQUENESS"],
            "profiles": sorted(ALL),
        },
        {
            "id": "TX-NULLIFIER-DISTINCTNESS",
            "kind": "negative",
            "path": "crates/core/component/sct/src/nullifier_tree.rs",
            "symbol": "duplicate_batch_insert_is_rejected_before_mutation",
            "predicate_ids": ["EXT-NULLIFIER-DISTINCTNESS"],
            "profiles": sorted(TX),
        },
        {
            "id": "PROOF-BOUND-OUTPUT-PERSISTENCE",
            "kind": "invariant",
            "path": (
                "crates/core/component/shielded-pool/src/component/"
                "action_handler/note_reshape.rs"
            ),
            "symbol": "proof_bound_output_is_persisted",
            "predicate_ids": ["EXT-OUTPUT-PERSISTENCE"],
            "profiles": sorted(ALL),
        },
        {
            "id": "TRANSACTION-STAGED-EFFECTS-ROLLBACK",
            "kind": "invariant",
            "path": "crates/core/app/src/app/mod.rs",
            "symbol": "failed_transaction_drops_all_staged_effects",
            "predicate_ids": ["EXT-TRANSACTION-EFFECTS-ATOMICITY"],
            "profiles": sorted(ALL),
        },
        {
            "id": "TRANSACTION-DEFERRED-INDEX-ROLLBACK",
            "kind": "integration",
            "path": _APP_PROOF_TESTS,
            "symbol": (
                "deferred_index_records_only_transactions_that_commit"
            ),
            "predicate_ids": ["EXT-TRANSACTION-EFFECTS-ATOMICITY"],
            "profiles": sorted(ALL),
        },
        {
            "id": "COMMON-PLAN-CANONICAL-DECODE",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "shielded_note_plan.rs"
            ),
            "symbol": (
                "plan_proto_rejects_missing_nonce_and_noncanonical_scalars"
            ),
            "predicate_ids": ["EXT-PLAN-BOUNDARY-CANONICALITY"],
            "profiles": sorted(ALL),
        },
        {
            "id": "COMMON-PLAN-AUTHORITATIVE-MEMBERSHIP",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "shielded_note_plan.rs"
            ),
            "symbol": "plan_proto_requires_authoritative_membership_facts",
            "predicate_ids": ["EXT-PLAN-BOUNDARY-CANONICALITY"],
            "profiles": sorted(ALL),
        },
        {
            "id": "TRANSACTION-NOTE-RESHAPE-DUMMY-SIGNATURE-REBIND",
            "kind": "negative",
            "path": "crates/core/transaction/src/plan.rs",
            "symbol": (
                "apply_auth_data_rebinds_note_reshape_dummy_signatures_"
                "to_transaction_hash"
            ),
            "predicate_ids": ["EXT-SPEND-AUTH-SIGNATURE"],
            "profiles": sorted(NR),
        },
        {
            "id": "TRANSACTION-ZERO-BLINDING-BUILD",
            "kind": "invariant",
            "path": "crates/core/transaction/src/plan.rs",
            "symbol": (
                "apply_auth_data_emits_canonical_no_binding_signature_"
                "for_zero_blinding"
            ),
            "predicate_ids": ["EXT-TRANSACTION-BINDING-SIGNATURE"],
            "profiles": sorted(ALL),
        },
        {
            "id": "TRANSACTION-PROOF-BEARING-ZERO-BLINDING-BUILD-REJECT",
            "kind": "negative",
            "path": "crates/core/transaction/src/plan.rs",
            "symbol": (
                "apply_auth_data_rejects_zero_blinding_for_proof_"
                "bearing_transaction"
            ),
            "predicate_ids": ["EXT-TRANSACTION-BINDING-SIGNATURE"],
            "profiles": sorted(ALL),
        },
        {
            "id": "VIEW-COMPLIANCE-PATH-CANONICAL-SHAPE",
            "kind": "boundary_negative",
            "path": "crates/view/src/client_compliance.rs",
            "symbol": "rpc_merkle_path_parser_requires_canonical_fixed_shape",
            "predicate_ids": ["EXT-PLAN-BOUNDARY-CANONICALITY"],
            "profiles": sorted(TX),
        },
        {
            "id": "VIEW-TRANSFER-NONCE-CROSS-ACTION-REUSE-REJECT",
            "kind": "negative",
            "path": "crates/view/src/client_compliance.rs",
            "symbol": (
                "transfer_compliance_nonce_allocator_rejects_cross_"
                "action_reuse"
            ),
            "predicate_ids": ["EXT-HONEST-COMPLIANCE-NONCE"],
            "profiles": ["transfer"],
        },
        {
            "id": "VIEW-TRANSFER-NONCE-PER-ACTION-FRESHNESS",
            "kind": "invariant",
            "path": "crates/view/src/client_compliance.rs",
            "symbol": (
                "compliance_enrichment_uses_one_fresh_nonce_per_"
                "transfer_action"
            ),
            "predicate_ids": ["EXT-HONEST-COMPLIANCE-NONCE"],
            "profiles": ["transfer"],
        },
        {
            "id": "NOTE-RESHAPE-PLAN-BOUNDARY",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "note_reshape/plan.rs"
            ),
            "symbol": "plan_proto_rejects_missing_or_unknown_family",
            "predicate_ids": ["EXT-PLAN-BOUNDARY-CANONICALITY"],
            "profiles": sorted(NR),
        },
        {
            "id": "NOTE-RESHAPE-PLAN-VALIDATION-CENSUS",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "note_reshape/plan.rs"
            ),
            "symbol": (
                "validation_rejects_every_cross_record_invariant_mutation"
            ),
            "predicate_ids": ["EXT-PLAN-BOUNDARY-CANONICALITY"],
            "profiles": sorted(NR),
        },
        {
            "id": "NOTE-RESHAPE-PLAN-MATERIALIZER-COUNTS",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "note_reshape/plan.rs"
            ),
            "symbol": (
                "materializers_reject_proof_and_auth_count_mismatches"
            ),
            "predicate_ids": ["EXT-PLAN-BOUNDARY-CANONICALITY"],
            "profiles": sorted(NR),
        },
        {
            "id": "NOTE-RESHAPE-OUTGOING-VIEW",
            "kind": "invariant",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "note_reshape/plan.rs"
            ),
            "symbol": (
                "all_note_reshape_outputs_wrap_under_serialized_action_"
                "commitment"
            ),
            "predicate_ids": ["EXT-OUTGOING-VIEW-BINDING"],
            "profiles": sorted(NR),
        },
        {
            "id": "NOTE-RESHAPE-SPEND-AUTH-REJECT",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/component/"
                "action_handler/note_reshape.rs"
            ),
            "symbol": "auth_verification_rejects_invalid_dummy_slot_signature",
            "predicate_ids": ["EXT-SPEND-AUTH-SIGNATURE"],
            "profiles": sorted(NR),
        },
        {
            "id": "NOTE-RESHAPE-IDENTITY-RK-REJECT",
            "kind": "attack_reproduction",
            "path": (
                "crates/core/component/shielded-pool/src/component/"
                "action_handler/note_reshape.rs"
            ),
            "symbol": (
                "note_reshape_auth_verification_rejects_identity_"
                "randomized_key"
            ),
            "predicate_ids": [
                "DEC-RANDOMIZED-VERIFICATION-KEY-NONIDENTITY",
                "EXT-SPEND-AUTH-SIGNATURE",
            ],
            "profiles": sorted(NR),
        },
        {
            "id": "NOTE-RESHAPE-FIXED-SHAPE-DECODE",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "note_reshape/proof.rs"
            ),
            "symbol": (
                "note_reshape_proof_public_shape_rejects_wrong_input_"
                "and_output_shapes"
            ),
            "predicate_ids": [
                "EXT-BODY-PROJECTION-CANONICALITY",
                "EXT-FIXED-SHAPE-DECODE",
            ],
            "profiles": sorted(NR),
        },
        {
            "id": "NOTE-RESHAPE-WIRE-FAMILY-REJECT",
            "kind": "boundary_negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "note_reshape/action.rs"
            ),
            "symbol": "unknown_family_id_is_rejected_at_wire_boundary",
            "predicate_ids": [
                "EXT-BODY-PROJECTION-CANONICALITY",
                "EXT-FIXED-SHAPE-DECODE",
                "EXT-PROOF-FAMILY-KEY-SELECTION",
            ],
            "profiles": sorted(NR),
        },
        {
            "id": "NOTE-RESHAPE-WIRE-BACKREF-REJECT",
            "kind": "boundary_negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "note_reshape/action.rs"
            ),
            "symbol": "empty_input_backref_is_rejected_at_wire_boundary",
            "predicate_ids": ["EXT-BODY-PROJECTION-CANONICALITY"],
            "profiles": sorted(NR),
        },
        {
            "id": "NOTE-RESHAPE-PROJECTION-AND-CAPABILITY-GATE",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/component/"
                "action_handler/note_reshape_action.rs"
            ),
            "symbol": (
                "note_reshape_projection_matches_and_raw_execution_fails_"
                "closed_for_every_family"
            ),
            "predicate_ids": [
                "EXT-PROOF-VERIFICATION",
                "EXT-PUBLIC-INPUT-PROJECTION",
            ],
            "profiles": sorted(NR),
        },
        {
            "id": "TRANSFER-SPEND-AUTH-REJECT",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/component/"
                "action_handler/transfer.rs"
            ),
            "symbol": "auth_verification_rejects_invalid_fixed_slot_signature",
            "predicate_ids": ["EXT-SPEND-AUTH-SIGNATURE"],
            "profiles": ["transfer"],
        },
        {
            "id": "TRANSFER-IDENTITY-RK-REJECT",
            "kind": "attack_reproduction",
            "path": (
                "crates/core/component/shielded-pool/src/component/"
                "action_handler/transfer.rs"
            ),
            "symbol": (
                "transfer_auth_verification_rejects_identity_randomized_key"
            ),
            "predicate_ids": [
                "DEC-RANDOMIZED-VERIFICATION-KEY-NONIDENTITY",
                "EXT-SPEND-AUTH-SIGNATURE",
            ],
            "profiles": ["transfer"],
        },
        {
            "id": "FEE-FUNDING-IDENTITY-RK-REJECT",
            "kind": "attack_reproduction",
            "path": _APP,
            "symbol": (
                "fee_funding_extraction_rejects_identity_randomized_key"
            ),
            "predicate_ids": [
                "DEC-RANDOMIZED-VERIFICATION-KEY-NONIDENTITY",
                "EXT-SPEND-AUTH-SIGNATURE",
            ],
            "profiles": ["transfer"],
        },
        {
            "id": "TRANSFER-FIXED-SHAPE-DECODE",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "transfer/generated.rs"
            ),
            "symbol": "transfer_shape_is_fixed",
            "predicate_ids": [
                "EXT-BODY-PROJECTION-CANONICALITY",
                "EXT-FIXED-SHAPE-DECODE",
            ],
            "profiles": ["transfer"],
        },
        {
            "id": "TRANSFER-WIRE-COMPLIANCE-METADATA-BOUNDED",
            "kind": "boundary_negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "transfer/action.rs"
            ),
            "symbol": (
                "transfer_output_public_metadata_is_one_bounded_"
                "protobuf_field"
            ),
            "predicate_ids": ["EXT-OUTPUT-COMPLIANCE-ENCODING"],
            "profiles": ["transfer"],
        },
        {
            "id": "TRANSFER-PUBLIC-PROJECTION",
            "kind": "parity",
            "path": "crates/core/component/shielded-pool/src/transfer/proof.rs",
            "symbol": "transfer_action_public_matches_proving_public_regulated",
            "predicate_ids": ["EXT-PUBLIC-INPUT-PROJECTION"],
            "profiles": ["transfer"],
        },
        {
            "id": "TRANSFER-PLAN-BOUNDARY",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/transfer/plan.rs"
            ),
            "symbol": "new_and_decode_reject_multi_spend_sender_mismatch",
            "predicate_ids": ["EXT-PLAN-BOUNDARY-CANONICALITY"],
            "profiles": ["transfer"],
        },
        {
            "id": "TRANSFER-PLAN-OUTPUT-CONTEXT-JOIN",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "transfer/plan.rs"
            ),
            "symbol": "new_rejects_mismatched_transfer_public_inputs",
            "predicate_ids": ["EXT-PLAN-BOUNDARY-CANONICALITY"],
            "profiles": ["transfer"],
        },
        {
            "id": "TRANSFER-PLAN-VALIDATION-CENSUS",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "transfer/plan.rs"
            ),
            "symbol": (
                "validation_rejects_every_remaining_cross_record_"
                "invariant_mutation"
            ),
            "predicate_ids": ["EXT-PLAN-BOUNDARY-CANONICALITY"],
            "profiles": ["transfer"],
        },
        {
            "id": "TRANSFER-PLAN-MATERIALIZER-BOUNDARIES",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "transfer/plan.rs"
            ),
            "symbol": (
                "materializers_reject_missing_compliance_inputs_and_"
                "count_mismatches"
            ),
            "predicate_ids": ["EXT-PLAN-BOUNDARY-CANONICALITY"],
            "profiles": ["transfer"],
        },
        {
            "id": "TRANSFER-PLAN-SHARED-COMPLIANCE-WITNESS",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "transfer/plan.rs"
            ),
            "symbol": (
                "new_and_decode_reject_multi_spend_compliance_"
                "witness_mismatch"
            ),
            "predicate_ids": ["EXT-PLAN-BOUNDARY-CANONICALITY"],
            "profiles": ["transfer"],
        },
        {
            "id": "TRANSFER-PLAN-SHARED-SPEND-WITNESS-CENSUS",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "transfer/plan.rs"
            ),
            "symbol": (
                "validation_rejects_every_redundant_multi_spend_"
                "witness_mutation"
            ),
            "predicate_ids": ["EXT-PLAN-BOUNDARY-CANONICALITY"],
            "profiles": ["transfer"],
        },
        {
            "id": "TRANSFER-PLAN-OUTPUT-ASSET-WITNESS-CENSUS",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "transfer/plan.rs"
            ),
            "symbol": (
                "validation_rejects_every_redundant_output_asset_"
                "witness_mutation"
            ),
            "predicate_ids": ["EXT-PLAN-BOUNDARY-CANONICALITY"],
            "profiles": ["transfer"],
        },
        {
            "id": "TRANSFER-PLAN-CHANGE-SENDER-WITNESS-CENSUS",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "transfer/plan.rs"
            ),
            "symbol": (
                "validation_rejects_every_redundant_change_sender_"
                "witness_mutation"
            ),
            "predicate_ids": ["EXT-PLAN-BOUNDARY-CANONICALITY"],
            "profiles": ["transfer"],
        },
        {
            "id": "TRANSFER-PLAN-MAX-SPEND-ARITY",
            "kind": "boundary_negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "transfer/plan.rs"
            ),
            "symbol": "plan_proto_rejects_too_many_spends",
            "predicate_ids": ["EXT-PLAN-BOUNDARY-CANONICALITY"],
            "profiles": ["transfer"],
        },
        {
            "id": "TRANSFER-PLAN-AUTHORITATIVE-BODY-PROJECTION",
            "kind": "parity",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "transfer/plan.rs"
            ),
            "symbol": "enriched_metadata_materializes_directly_into_the_body",
            "predicate_ids": ["EXT-BODY-PROJECTION-CANONICALITY"],
            "profiles": ["transfer"],
        },
        {
            "id": "TRANSFER-OUTPUT-ROLE-PROJECTION",
            "kind": "parity",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "transfer/plan.rs"
            ),
            "symbol": "receiver_and_change_output_indices_preserve_plan_order",
            "predicate_ids": ["EXT-PUBLIC-INPUT-PROJECTION"],
            "profiles": ["transfer"],
        },
        {
            "id": "TRANSFER-OUTGOING-VIEW",
            "kind": "invariant",
            "path": (
                "crates/core/component/shielded-pool/src/transfer/plan.rs"
            ),
            "symbol": (
                "transfer_body_hides_padding_and_wraps_all_outputs_under_"
                "action_commitment"
            ),
            "predicate_ids": ["EXT-OUTGOING-VIEW-BINDING"],
            "profiles": ["transfer"],
        },
        {
            "id": "CONSENSUS-PROOF-KEY-SELECTION",
            "kind": "invariant",
            "path": "crates/crypto/proof-params/src/lib.rs",
            "symbol": (
                "consensus_verifying_keys_are_exact_bundled_keys"
            ),
            "predicate_ids": ["EXT-PROOF-FAMILY-KEY-SELECTION"],
            "profiles": sorted(ALL),
        },
        {
            "id": "NOTE-RESHAPE-DEPLOYED-PROOF-KEY-MAPPING",
            "kind": "invariant",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "note_reshape/proof.rs"
            ),
            "symbol": (
                "note_reshape_deployed_key_mapping_matches_generated_registry_"
                "for_every_family"
            ),
            "predicate_ids": ["EXT-PROOF-FAMILY-KEY-SELECTION"],
            "profiles": sorted(NR),
        },
        {
            "id": "WITHDRAWAL-DEPLOYED-PROOF-KEY-MAPPING",
            "kind": "invariant",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "shielded_ics20_withdrawal/proof.rs"
            ),
            "symbol": (
                "withdrawal_deployed_key_mapping_matches_generated_registry_"
                "for_every_family"
            ),
            "predicate_ids": ["EXT-PROOF-FAMILY-KEY-SELECTION"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "GROTH16-PVK-ACCUMULATOR-REJECT",
            "kind": "boundary_negative",
            "path": "crates/crypto/proof-params/src/batch.rs",
            "symbol": "verification_rejects_key_without_input_accumulator",
            "predicate_ids": ["EXT-PROOF-VERIFICATION"],
            "profiles": sorted(ALL),
        },
        {
            "id": "TRANSFER-EXTRACTED-CACHE-UPGRADE",
            "kind": "integration",
            "path": "crates/core/app/src/app/mod.rs",
            "symbol": (
                "prepare_proposal_verifies_and_upgrades_extracted_cache_entry"
            ),
            "predicate_ids": ["EXT-PROOF-VERIFICATION"],
            "profiles": ["transfer"],
        },
        {
            "id": "TRANSFER-RAW-EXECUTION-REQUIRES-CAPABILITY",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/component/"
                "action_handler/transfer.rs"
            ),
            "symbol": (
                "raw_transfer_execution_fails_closed_without_verified_"
                "capability"
            ),
            "predicate_ids": ["EXT-PROOF-VERIFICATION"],
            "profiles": ["transfer"],
        },
        {
            "id": "WITHDRAWAL-RAW-EXECUTION-REQUIRES-CAPABILITY",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/component/"
                "action_handler/shielded_ics20_withdrawal.rs"
            ),
            "symbol": (
                "raw_withdrawal_execution_fails_closed_without_verified_"
                "capability"
            ),
            "predicate_ids": ["EXT-PROOF-VERIFICATION"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "ACTION-TRANSACTION-STATELESS-REJECTS-INVALID-PROOF",
            "kind": "integration",
            "path": _APP_PROOF_TESTS,
            "symbol": (
                "fv_runtime_transaction_stateless_rejects_decodable_"
                "invalid_groth16"
            ),
            "predicate_ids": ["EXT-PROOF-VERIFICATION"],
            "profiles": sorted(ALL),
        },
        {
            "id": "APP-PROCESS-REJECTS-INVALID-PROOF",
            "kind": "integration",
            "path": _APP_PROOF_TESTS,
            "symbol": (
                "fv_runtime_process_proposal_rejects_decodable_invalid_"
                "groth16"
            ),
            "predicate_ids": ["EXT-PROOF-VERIFICATION"],
            "profiles": sorted(ALL),
        },
        {
            "id": "FEE-FUNDING-PROCESS-REJECTS-INVALID-PROOF",
            "kind": "integration",
            "path": _APP_PROOF_TESTS,
            "symbol": (
                "fv_runtime_fee_funding_process_proposal_rejects_invalid_"
                "groth16"
            ),
            "predicate_ids": ["EXT-PROOF-VERIFICATION"],
            "profiles": ["transfer"],
        },
        {
            "id": "FEE-FUNDING-VALID-PROOF-EXECUTES-AND-PERSISTS",
            "kind": "integration",
            "path": _APP_PROOF_TESTS,
            "symbol": (
                "fv_runtime_fee_funding_valid_proof_executes_and_persists"
            ),
            "predicate_ids": [
                "EXT-NULLIFIER-ATOMIC-TRANSITION",
                "EXT-OUTPUT-PERSISTENCE",
                "EXT-PROOF-VERIFICATION",
                "EXT-TRANSACTION-EFFECTS-ATOMICITY",
            ],
            "profiles": ["transfer"],
        },
        {
            "id": "APP-COLD-DELIVER-REJECTS-INVALID-PROOF",
            "kind": "integration",
            "path": _APP_PROOF_TESTS,
            "symbol": (
                "fv_runtime_cold_deliver_rejects_invalid_groth16_without_"
                "state_mutation"
            ),
            "predicate_ids": ["EXT-PROOF-VERIFICATION"],
            "profiles": sorted(ALL),
        },
        {
            "id": "APP-EXTRACTED-CACHE-CANNOT-BYPASS-PROOF",
            "kind": "integration",
            "path": _APP_PROOF_TESTS,
            "symbol": (
                "fv_runtime_extracted_cache_cannot_bypass_groth16_"
                "verification"
            ),
            "predicate_ids": ["EXT-PROOF-VERIFICATION"],
            "profiles": sorted(ALL),
        },
        {
            "id": "HOST-DELIVERY-REJECTS-INVALID-PROOF",
            "kind": "integration",
            "path": _APP_PROOF_TESTS,
            "symbol": (
                "fv_runtime_host_delivery_rejects_invalid_groth16_cold_"
                "and_after_checktx"
            ),
            "predicate_ids": ["EXT-PROOF-VERIFICATION"],
            "profiles": sorted(ALL),
        },
        {
            "id": "APP-CACHE-PROMOTION-REQUIRES-EXACT-PROOF",
            "kind": "integration",
            "path": _APP_PROOF_TESTS,
            "symbol": (
                "fv_runtime_cache_promotion_never_exceeds_exact_groth16_"
                "attestation"
            ),
            "predicate_ids": ["EXT-PROOF-VERIFICATION"],
            "profiles": sorted(ALL),
        },
        {
            "id": "APP-PREPARE-EXCLUDES-INVALID-PROOF",
            "kind": "integration",
            "path": _APP_PROOF_TESTS,
            "symbol": (
                "fv_runtime_prepare_proposal_excludes_decodable_invalid_"
                "groth16"
            ),
            "predicate_ids": ["EXT-PROOF-VERIFICATION"],
            "profiles": sorted(ALL),
        },
        {
            "id": "ADDRESS-LEGACY-WIDTH-REJECTED",
            "kind": "boundary_negative",
            "path": "crates/core/keys/src/address.rs",
            "symbol": "rejects_legacy_80_byte_address",
            "predicate_ids": ["ADDRESS-CANONICAL-PACKING"],
            "profiles": ["transfer"],
        },
        {
            "id": "TRANSFER-INPUT-COMPLIANCE-EMPTY",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/component/"
                "action_handler/transfer.rs"
            ),
            "symbol": "stateless_rejects_nonempty_input_compliance_ciphertext",
            "predicate_ids": ["EXT-INPUT-COMPLIANCE-EMPTY"],
            "profiles": ["transfer"],
        },
        {
            "id": "TRANSFER-ASSET-KEY-VALIDITY",
            "kind": "negative",
            "path": "crates/core/component/compliance/src/registry.rs",
            "symbol": "regulated_asset_identity_keys_fail_before_tree_mutation",
            "predicate_ids": ["EXT-ASSET-REGISTRY-KEY-VALIDITY"],
            "profiles": ["transfer"],
        },
        {
            "id": "TRANSFER-COMPLIANCE-ENCODING-CIPHERTEXT",
            "kind": "boundary_negative",
            "path": "crates/core/component/compliance/src/transfer.rs",
            "symbol": "transfer_ciphertext_rejects_noncanonical_field_words",
            "predicate_ids": ["EXT-OUTPUT-COMPLIANCE-ENCODING"],
            "profiles": ["transfer"],
        },
        {
            "id": "TRANSFER-COMPLIANCE-ENCODING-METADATA",
            "kind": "boundary_negative",
            "path": "crates/core/component/compliance/src/decode_object.rs",
            "symbol": (
                "transfer_metadata_rejects_zero_timestamp_and_"
                "noncanonical_fields"
            ),
            "predicate_ids": ["EXT-OUTPUT-COMPLIANCE-ENCODING"],
            "profiles": ["transfer"],
        },
        {
            "id": "TRANSFER-HONEST-NONCE",
            "kind": "invariant",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "shielded_note_plan.rs"
            ),
            "symbol": (
                "honest_transfer_actions_use_independent_nonzero_nonce_roots"
            ),
            "predicate_ids": ["EXT-HONEST-COMPLIANCE-NONCE"],
            "profiles": ["transfer"],
        },
        {
            "id": "TRANSFER-COMPLIANCE-TIER-SCALAR-NONZERO",
            "kind": "boundary_negative",
            "path": "crates/core/component/compliance/src/transfer.rs",
            "symbol": "transfer_nonce_sampling_rejects_zero",
            "predicate_ids": [
                "EXT-HONEST-COMPLIANCE-TIER-SCALAR-NONZERO"
            ],
            "profiles": ["transfer"],
        },
        {
            "id": "TRANSFER-EFFECT-HASH-COMPLIANCE-BINDING",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "transfer/plan.rs"
            ),
            "symbol": (
                "effect_hash_binds_proof_bound_compliance_records_"
                "but_not_witness_anchor"
            ),
            "predicate_ids": [
                "EXT-TRANSFER-EFFECT-HASH-COMPLIANCE-BINDING"
            ],
            "profiles": ["transfer"],
        },
        {
            "id": "WITHDRAWAL-SPEND-AUTH-REJECT",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/component/"
                "action_handler/shielded_ics20_withdrawal.rs"
            ),
            "symbol": (
                "auth_verification_rejects_invalid_optional_dummy_signature"
            ),
            "predicate_ids": ["EXT-SPEND-AUTH-SIGNATURE"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-IDENTITY-RK-REJECT",
            "kind": "attack_reproduction",
            "path": (
                "crates/core/component/shielded-pool/src/component/"
                "action_handler/shielded_ics20_withdrawal.rs"
            ),
            "symbol": (
                "withdrawal_auth_verification_rejects_identity_"
                "randomized_key"
            ),
            "predicate_ids": [
                "DEC-RANDOMIZED-VERIFICATION-KEY-NONIDENTITY",
                "EXT-SPEND-AUTH-SIGNATURE",
            ],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-FIXED-SHAPE-DECODE",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "shielded_ics20_withdrawal/plan.rs"
            ),
            "symbol": "body_proto_rejects_wrong_fixed_input_count",
            "predicate_ids": [
                "EXT-BODY-PROJECTION-CANONICALITY",
                "EXT-FIXED-SHAPE-DECODE",
            ],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-WIRE-FAMILY-REJECT",
            "kind": "boundary_negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "shielded_ics20_withdrawal/action.rs"
            ),
            "symbol": "unknown_family_id_is_rejected_at_wire_boundary",
            "predicate_ids": [
                "EXT-BODY-PROJECTION-CANONICALITY",
                "EXT-FIXED-SHAPE-DECODE",
                "EXT-PROOF-FAMILY-KEY-SELECTION",
            ],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-PROOF-PUBLIC-SHAPE",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "shielded_ics20_withdrawal/proof.rs"
            ),
            "symbol": (
                "shielded_ics20_withdrawal_rejects_wrong_public_shape"
            ),
            "predicate_ids": [
                "EXT-BODY-PROJECTION-CANONICALITY",
                "EXT-FIXED-SHAPE-DECODE",
            ],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-PUBLIC-PROJECTION",
            "kind": "parity",
            "path": (
                "crates/core/component/shielded-pool/src/component/"
                "action_handler/shielded_ics20_withdrawal.rs"
            ),
            "symbol": "withdrawal_action_public_matches_proving_public",
            "predicate_ids": ["EXT-PUBLIC-INPUT-PROJECTION"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-PLAN-BOUNDARY",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "shielded_ics20_withdrawal/plan.rs"
            ),
            "symbol": "legacy_cached_body_is_not_admitted_into_plan",
            "predicate_ids": ["EXT-PLAN-BOUNDARY-CANONICALITY"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-PLAN-SHARED-SENDER",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "shielded_ics20_withdrawal/plan.rs"
            ),
            "symbol": "new_plan_rejects_multi_spend_sender_mismatch",
            "predicate_ids": ["EXT-PLAN-BOUNDARY-CANONICALITY"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-PLAN-SHARED-COMPLIANCE-POSITION",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "shielded_ics20_withdrawal/plan.rs"
            ),
            "symbol": (
                "new_plan_rejects_multi_spend_compliance_witness_mismatch"
            ),
            "predicate_ids": ["EXT-PLAN-BOUNDARY-CANONICALITY"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-PLAN-SHARED-COMPLIANCE-LEAF",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "shielded_ics20_withdrawal/plan.rs"
            ),
            "symbol": (
                "new_plan_rejects_multi_spend_compliance_leaf_mismatch"
            ),
            "predicate_ids": ["EXT-PLAN-BOUNDARY-CANONICALITY"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-PLAN-SHARED-ASSET-WITNESS",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "shielded_ics20_withdrawal/plan.rs"
            ),
            "symbol": "new_plan_rejects_multi_spend_asset_witness_mismatch",
            "predicate_ids": ["EXT-PLAN-BOUNDARY-CANONICALITY"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-PLAN-SHARED-REGULATION",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "shielded_ics20_withdrawal/plan.rs"
            ),
            "symbol": "new_plan_rejects_multi_spend_regulation_mismatch",
            "predicate_ids": ["EXT-PLAN-BOUNDARY-CANONICALITY"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-PLAN-SENDER-OWNED-CHANGE",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "shielded_ics20_withdrawal/plan.rs"
            ),
            "symbol": "new_plan_rejects_non_sender_owned_change",
            "predicate_ids": ["EXT-PLAN-BOUNDARY-CANONICALITY"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-PLAN-VALIDATION-CENSUS",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "shielded_ics20_withdrawal/plan.rs"
            ),
            "symbol": (
                "validation_rejects_every_remaining_cross_record_"
                "invariant_mutation"
            ),
            "predicate_ids": ["EXT-PLAN-BOUNDARY-CANONICALITY"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-PLAN-MATERIALIZER-COUNTS",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "shielded_ics20_withdrawal/plan.rs"
            ),
            "symbol": (
                "materializers_reject_proof_and_auth_count_mismatches"
            ),
            "predicate_ids": ["EXT-PLAN-BOUNDARY-CANONICALITY"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-PAYLOAD-NONZERO-AMOUNT",
            "kind": "boundary_negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "shielded_ics20_withdrawal/plan.rs"
            ),
            "symbol": "zero_value_withdrawal_is_rejected",
            "predicate_ids": ["EXT-WITHDRAWAL-PAYLOAD-VALID"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-OUTGOING-VIEW",
            "kind": "invariant",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "shielded_ics20_withdrawal/plan.rs"
            ),
            "symbol": "new_plan_builds_padded_body_with_change",
            "predicate_ids": ["EXT-OUTGOING-VIEW-BINDING"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-INPUT-COMPLIANCE-EMPTY",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/component/"
                "action_handler/shielded_ics20_withdrawal.rs"
            ),
            "symbol": (
                "stateless_rejects_nonempty_input_compliance_ciphertext"
            ),
            "predicate_ids": ["EXT-INPUT-COMPLIANCE-EMPTY"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "COMPLIANCE-ASSET-ANCHOR-CURRENT",
            "kind": "negative",
            "path": "crates/core/component/compliance/src/registry.rs",
            "symbol": (
                "stale_asset_anchor_is_rejected_immediately_after_policy_change"
            ),
            "predicate_ids": ["EXT-ASSET-ANCHOR-CURRENT"],
            "profiles": sorted(TX),
        },
        {
            "id": "COMPLIANCE-ANCHOR-LIVENESS",
            "kind": "boundary_negative",
            "path": "crates/core/component/compliance/src/registry.rs",
            "symbol": "test_anchor_too_old_rejected",
            "predicate_ids": ["EXT-COMPLIANCE-ANCHOR-LIVE"],
            "profiles": sorted(TX),
        },
        {
            "id": "COMPLIANCE-USER-TREE-WELL-FORMED",
            "kind": "negative",
            "path": "crates/core/component/compliance/src/registry.rs",
            "symbol": "test_user_tree_root_check_fails_on_missing_nv_nodes",
            "predicate_ids": ["EXT-REGISTRY-WELL-FORMED"],
            "profiles": sorted(TX),
        },
        {
            "id": "COMPLIANCE-ASSET-TREE-WELL-FORMED",
            "kind": "negative",
            "path": "crates/core/component/compliance/src/registry.rs",
            "symbol": "test_asset_imt_root_check_fails_on_missing_nv_leaves",
            "predicate_ids": ["EXT-REGISTRY-WELL-FORMED"],
            "profiles": sorted(TX),
        },
        {
            "id": "COMPLIANCE-ASSET-AUTHORIZATION",
            "kind": "parity",
            "path": "crates/core/component/compliance/src/registry.rs",
            "symbol": "test_asset_proof_direct_read_membership_and_gap_parity",
            "predicate_ids": ["EXT-ASSET-REGISTRY-AUTHORIZED"],
            "profiles": sorted(TX),
        },
        {
            "id": "COMPLIANCE-USER-AUTHORIZATION",
            "kind": "negative",
            "path": "crates/core/component/compliance/src/registry.rs",
            "symbol": (
                "add_compliance_leaf_rejects_invalid_derivation_before_mutation"
            ),
            "predicate_ids": ["EXT-USER-REGISTRY-AUTHORIZED"],
            "profiles": sorted(TX),
        },
        {
            "id": "COMPLIANCE-LEAF-ADDRESS-COMMITMENT",
            "kind": "negative",
            "path": "crates/core/component/compliance/src/structs.rs",
            "symbol": "test_compliance_leaf_different_addresses_different_commits",
            "predicate_ids": ["USER-COMPLIANCE-LEAF-HASH"],
            "profiles": sorted(TX),
        },
        {
            "id": "COMPLIANCE-LEAF-ZERO-D-REJECT",
            "kind": "negative",
            "path": "crates/core/component/compliance/src/structs.rs",
            "symbol": "test_compliance_leaf_validation_rejects_zero_d",
            "predicate_ids": ["EXT-USER-REGISTRY-AUTHORIZED"],
            "profiles": sorted(TX),
        },
        {
            "id": "COMPLIANCE-TIMESTAMP-BOUNDARY",
            "kind": "boundary_negative",
            "path": "crates/core/component/compliance/src/registry.rs",
            "symbol": "timestamp_freshness_rejects_zero_and_outside_window",
            "predicate_ids": ["EXT-TIMESTAMP-FRESHNESS"],
            "profiles": sorted(TX),
        },
        {
            "id": "COMPLIANCE-TIMESTAMP-CURRENT-BOUNDARY",
            "kind": "invariant",
            "path": "crates/core/component/compliance/src/registry.rs",
            "symbol": (
                "timestamp_freshness_accepts_current_and_exact_boundaries"
            ),
            "predicate_ids": ["EXT-TIMESTAMP-FRESHNESS"],
            "profiles": sorted(TX),
        },
        {
            "id": "COMPLIANCE-TIMESTAMP-NEGATIVE-CONSENSUS",
            "kind": "boundary_negative",
            "path": "crates/core/component/compliance/src/registry.rs",
            "symbol": "timestamp_freshness_rejects_negative_consensus_time",
            "predicate_ids": ["EXT-TIMESTAMP-FRESHNESS"],
            "profiles": sorted(TX),
        },
        {
            "id": "COMPLIANCE-TIMESTAMP-SIGNED-PARITY",
            "kind": "parity",
            "path": "crates/core/component/compliance/src/registry.rs",
            "symbol": (
                "timestamp_freshness_signed_conversion_matches_u64_policy"
            ),
            "predicate_ids": ["EXT-TIMESTAMP-FRESHNESS"],
            "profiles": sorted(TX),
        },
        {
            "id": "WITHDRAWAL-EFFECT-HASH-BINDING",
            "kind": "parity",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "shielded_ics20_withdrawal/proof.rs"
            ),
            "symbol": "withdrawal_effect_hash_maps_to_four_little_endian_u128_limbs",
            "predicate_ids": ["EXT-WITHDRAWAL-EFFECT-HASH-BINDING"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-ROUTE-POLICY",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/component/"
                "transfer.rs"
            ),
            "symbol": "withdrawal_check_rejects_unauthorized_regulated_route",
            "predicate_ids": ["EXT-WITHDRAWAL-ROUTE-AUTHORIZED"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-ROUTE-MEMO-ASSET-BINDING",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/component/"
                "transfer.rs"
            ),
            "symbol": (
                "withdrawal_check_enforces_regulated_memo_shape_and_asset_"
                "binding"
            ),
            "predicate_ids": ["EXT-WITHDRAWAL-ROUTE-AUTHORIZED"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWALS-ENABLED",
            "kind": "invariant",
            "path": (
                "crates/core/component/shielded-pool/src/component/"
                "action_handler/shielded_ics20_withdrawal.rs"
            ),
            "symbol": "historical_check_accepts_enabled_withdrawals",
            "predicate_ids": ["EXT-WITHDRAWALS-ENABLED"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWALS-ENABLED-HISTORICAL",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/component/"
                "action_handler/shielded_ics20_withdrawal.rs"
            ),
            "symbol": "historical_check_rejects_disabled_withdrawals",
            "predicate_ids": ["EXT-WITHDRAWALS-ENABLED"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-PAYLOAD-VALID",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "shielded_ics20_withdrawal/plan.rs"
            ),
            "symbol": (
                "plan_construction_and_decode_reject_invalid_withdrawal_"
                "payload"
            ),
            "predicate_ids": ["EXT-WITHDRAWAL-PAYLOAD-VALID"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-PAYLOAD-PROJECTION",
            "kind": "parity",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "shielded_ics20_withdrawal/plan.rs"
            ),
            "symbol": "action_body_is_derived_from_enriched_plan",
            "predicate_ids": ["EXT-WITHDRAWAL-PAYLOAD-PROJECTION"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-PAYLOAD-DEPRECATED-COMPAT-REJECT",
            "kind": "boundary_negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "ics20_withdrawal.rs"
            ),
            "symbol": "deprecated_compat_address_flag_is_rejected_on_decode",
            "predicate_ids": ["EXT-WITHDRAWAL-PAYLOAD-VALID"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-PAYLOAD-CANONICAL-COMPAT-ENCODING",
            "kind": "invariant",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "ics20_withdrawal.rs"
            ),
            "symbol": "domain_encoding_clears_deprecated_compat_address_flag",
            "predicate_ids": ["EXT-WITHDRAWAL-PAYLOAD-VALID"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-PAYLOAD-TRANSPARENT-ADDRESS-VALIDATION",
            "kind": "boundary_negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "ics20_withdrawal.rs"
            ),
            "symbol": "transparent_mode_rejects_an_ordinary_return_address",
            "predicate_ids": ["EXT-WITHDRAWAL-PAYLOAD-VALID"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-PAYLOAD-TRANSPARENT-DECODE-REJECT",
            "kind": "boundary_negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "ics20_withdrawal.rs"
            ),
            "symbol": (
                "decoding_rejects_transparent_mode_with_an_ordinary_"
                "return_address"
            ),
            "predicate_ids": ["EXT-WITHDRAWAL-PAYLOAD-VALID"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-PAYLOAD-TIMEOUT-CANONICALITY",
            "kind": "boundary_negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "ics20_withdrawal.rs"
            ),
            "symbol": "timeout_must_be_nonzero_and_minute_rounded",
            "predicate_ids": ["EXT-WITHDRAWAL-PAYLOAD-VALID"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-PAYLOAD-TRANSPARENT-SENDER-PROJECTION",
            "kind": "parity",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "ics20_withdrawal.rs"
            ),
            "symbol": "transparent_mode_uses_the_transparent_packet_sender",
            "predicate_ids": ["EXT-WITHDRAWAL-PAYLOAD-PROJECTION"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-CHANNEL-MISSING",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            ),
            "symbol": "withdrawal_check_rejects_missing_route_state",
            "predicate_ids": [
                "EXT-WITHDRAWAL-CHANNEL-CONNECTION-VALID"
            ],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-CHANNEL-CONNECTION",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            ),
            "symbol": "withdrawal_check_rejects_closed_channel",
            "predicate_ids": [
                "EXT-WITHDRAWAL-CHANNEL-CONNECTION-VALID"
            ],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-COUNTERPARTY-CHANNEL-MISSING",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            ),
            "symbol": "withdrawal_check_rejects_missing_counterparty_channel",
            "predicate_ids": [
                "EXT-WITHDRAWAL-CHANNEL-CONNECTION-VALID"
            ],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-CHANNEL-PREOPEN",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            ),
            "symbol": "withdrawal_check_rejects_preopen_channel",
            "predicate_ids": [
                "EXT-WITHDRAWAL-CHANNEL-CONNECTION-VALID"
            ],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-CONNECTION-HOPS-ZERO",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            ),
            "symbol": "withdrawal_check_rejects_zero_connection_hops",
            "predicate_ids": [
                "EXT-WITHDRAWAL-CHANNEL-CONNECTION-VALID"
            ],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-CONNECTION-HOPS-UNAMBIGUOUS",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            ),
            "symbol": "withdrawal_check_rejects_ambiguous_connection_hops",
            "predicate_ids": [
                "EXT-WITHDRAWAL-CHANNEL-CONNECTION-VALID"
            ],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-CONNECTION-MISSING",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            ),
            "symbol": "withdrawal_check_rejects_missing_connection",
            "predicate_ids": [
                "EXT-WITHDRAWAL-CHANNEL-CONNECTION-VALID"
            ],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-CONNECTION-NONOPEN",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            ),
            "symbol": "withdrawal_check_rejects_non_open_connection",
            "predicate_ids": [
                "EXT-WITHDRAWAL-CHANNEL-CONNECTION-VALID"
            ],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-CHANNEL-ORDERING",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            ),
            "symbol": "withdrawal_check_rejects_ordered_channel",
            "predicate_ids": [
                "EXT-WITHDRAWAL-CHANNEL-CONNECTION-VALID"
            ],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-CHANNEL-VERSION",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            ),
            "symbol": "withdrawal_check_rejects_non_ics20_channel_version",
            "predicate_ids": [
                "EXT-WITHDRAWAL-CHANNEL-CONNECTION-VALID"
            ],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-SEQUENCE-AVAILABLE",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            ),
            "symbol": "withdrawal_check_rejects_exhausted_send_sequence",
            "predicate_ids": [
                "EXT-WITHDRAWAL-STATE-TRANSITION",
                "EXT-WITHDRAWAL-ACTION-ATOMICITY",
            ],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-PACKET-SLOT-FRESH",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            ),
            "symbol": (
                "withdrawal_execute_rejects_occupied_packet_slot_before_"
                "mutation"
            ),
            "predicate_ids": [
                "EXT-WITHDRAWAL-STATE-TRANSITION",
                "EXT-WITHDRAWAL-ACTION-ATOMICITY",
            ],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-CHECKED-TOKEN-FRESH",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            ),
            "symbol": (
                "withdrawal_execute_rejects_stale_route_token_before_mutation"
            ),
            "predicate_ids": ["EXT-WITHDRAWAL-CHECKED-TOKEN-FRESH"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-CHECKED-TOKEN-SEQUENCE-FRESH",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            ),
            "symbol": (
                "withdrawal_execute_rejects_stale_sequence_token_before_"
                "mutation"
            ),
            "predicate_ids": [
                "EXT-WITHDRAWAL-CHECKED-TOKEN-FRESH",
                "EXT-WITHDRAWAL-STATE-TRANSITION",
                "EXT-WITHDRAWAL-ACTION-ATOMICITY",
            ],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-CHECKED-TOKEN-POLICY-FRESH",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            ),
            "symbol": (
                "withdrawal_execute_rejects_stale_policy_token_before_"
                "mutation"
            ),
            "predicate_ids": [
                "EXT-WITHDRAWAL-CHECKED-TOKEN-FRESH",
                "EXT-WITHDRAWAL-ACTION-ATOMICITY",
            ],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-CHECKED-TOKEN-CLIENT-FRESH",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            ),
            "symbol": (
                "withdrawal_execute_rejects_stale_client_token_before_"
                "mutation"
            ),
            "predicate_ids": [
                "EXT-WITHDRAWAL-CHECKED-TOKEN-FRESH",
                "EXT-WITHDRAWAL-STATE-TRANSITION",
                "EXT-WITHDRAWAL-ACTION-ATOMICITY",
            ],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-CLIENT-MISSING",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            ),
            "symbol": "withdrawal_check_rejects_missing_client",
            "predicate_ids": [
                "EXT-WITHDRAWAL-CLIENT-ACTIVE-UNEXPIRED"
            ],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-CONSENSUS-STATE-MISSING",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            ),
            "symbol": "withdrawal_check_rejects_missing_latest_consensus_state",
            "predicate_ids": [
                "EXT-WITHDRAWAL-CLIENT-ACTIVE-UNEXPIRED"
            ],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-CONSENSUS-TIMESTAMP-NOT-FUTURE",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            ),
            "symbol": (
                "withdrawal_check_rejects_future_latest_consensus_timestamp"
            ),
            "predicate_ids": [
                "EXT-WITHDRAWAL-CLIENT-ACTIVE-UNEXPIRED"
            ],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-CLIENT-EXPIRED",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            ),
            "symbol": "withdrawal_check_rejects_expired_light_client",
            "predicate_ids": [
                "EXT-WITHDRAWAL-CLIENT-ACTIVE-UNEXPIRED"
            ],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-CLIENT-FROZEN",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            ),
            "symbol": "withdrawal_check_rejects_frozen_light_client",
            "predicate_ids": [
                "EXT-WITHDRAWAL-CLIENT-ACTIVE-UNEXPIRED"
            ],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-TIMEOUTS-FUTURE",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            ),
            "symbol": (
                "withdrawal_check_rejects_elapsed_height_and_timestamp_"
                "timeouts"
            ),
            "predicate_ids": ["EXT-WITHDRAWAL-TIMEOUTS-FUTURE"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-STATE-TRANSITION",
            "kind": "invariant",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            ),
            "symbol": "withdrawal_execute_updates_supply_and_packet_state",
            "predicate_ids": ["EXT-WITHDRAWAL-STATE-TRANSITION"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-VOUCHER-STATE-TRANSITION",
            "kind": "invariant",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            ),
            "symbol": (
                "voucher_withdrawal_subtracts_channel_asset_balance_and_"
                "commits_packet"
            ),
            "predicate_ids": ["EXT-WITHDRAWAL-STATE-TRANSITION"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-VOUCHER-INSUFFICIENT-BALANCE",
            "kind": "boundary_negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            ),
            "symbol": (
                "voucher_withdrawal_rejects_insufficient_channel_asset_"
                "balance"
            ),
            "predicate_ids": ["EXT-WITHDRAWAL-STATE-TRANSITION"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-LOCAL-ESCROW-OVERFLOW",
            "kind": "boundary_negative",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            ),
            "symbol": (
                "local_withdrawal_rejects_escrow_overflow_before_packet_"
                "allocation"
            ),
            "predicate_ids": ["EXT-WITHDRAWAL-STATE-TRANSITION"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-END-TO-END-STATE-TRANSITION",
            "kind": "integration",
            "path": "crates/core/app-tests/tests/ics23_transfer.rs",
            "symbol": "ics20_transfer_no_timeouts",
            "predicate_ids": ["EXT-WITHDRAWAL-STATE-TRANSITION"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-ACTION-ATOMICITY",
            "kind": "invariant",
            "path": _APP_PROOF_TESTS,
            "symbol": (
                "proved_withdrawal_then_later_failure_rolls_back_first_action"
            ),
            "predicate_ids": ["EXT-WITHDRAWAL-ACTION-ATOMICITY"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-ACTION-ACCOUNTING-ROLLBACK",
            "kind": "invariant",
            "path": _APP_PROOF_TESTS,
            "symbol": (
                "proved_withdrawal_accounting_failure_rolls_back_action_"
                "effects"
            ),
            "predicate_ids": ["EXT-WITHDRAWAL-ACTION-ATOMICITY"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
        {
            "id": "WITHDRAWAL-DEFERRED-INDEX-ROLLBACK",
            "kind": "integration",
            "path": _APP_PROOF_TESTS,
            "symbol": (
                "deferred_index_records_only_transactions_that_commit"
            ),
            "predicate_ids": ["EXT-WITHDRAWAL-ACTION-ATOMICITY"],
            "profiles": ["shielded_ics20_withdrawal"],
        },
    ]

    def go_test(
        test_id: str,
        kind: str,
        path: str,
        symbol: str,
        predicate_ids: tuple[str, ...],
        profiles: frozenset[str],
    ) -> dict:
        return {
            "id": test_id,
            "kind": kind,
            "path": path,
            "symbol": symbol,
            "predicate_ids": sorted(predicate_ids),
            "profiles": sorted(profiles),
        }

    def circuit_test(
        test_id: str,
        kind: str,
        source: str,
        symbol: str,
        predicate_ids: tuple[str, ...],
        profiles: frozenset[str],
    ) -> dict:
        return go_test(
            test_id,
            kind,
            f"tools/gnark/internal/circuits/{source}",
            symbol,
            predicate_ids,
            profiles,
        )

    # Go tests are claim evidence only where the selector directly exercises
    # the named atom. Architecture, export, and measurement
    # regressions that do not establish a deployed predicate are classified in
    # reviewed_test_census() instead of receiving nearby claim credit.
    rows.extend(
        [
            circuit_test(
                "ASSET-REGISTRY-GAP-EXACT-CONSTRAINT-SHAPE",
                "invariant",
                "assetgap_measure_test.go",
                "TestAssetRegistryGapConstraintShape",
                ("ASSET-REGISTRY-GAP-ORDERING",),
                TX,
            ),
            circuit_test(
                "AMOUNT-RANGE-SHARED-GADGET-BOUNDARY",
                "boundary_negative",
                "amount_range_test.go",
                "TestAmountRangeBoundIs128Bits",
                ("VALUE-AMOUNT-128-RANGE",),
                ALL,
            ),
            circuit_test(
                "ASSET-REGISTRY-GAP-BRANCH-PARITY",
                "boundary_negative",
                "assetgap_measure_test.go",
                "TestAssetRegistryGapSatisfiable",
                (
                    "ASSET-REGISTRY-GAP-ORDERING",
                    "ASSET-REGULATED-BOOLEAN",
                ),
                TX,
            ),
            circuit_test(
                "CONSERVATION-NET-BALANCE-PARITY",
                "parity",
                "conservation_net_balance_test.go",
                "TestConservationNetBalanceCommitmentParity",
                (
                    "DEC-BALANCE-COMMITMENT-DERIVATION",
                    "VALUE-CONSERVATION",
                ),
                NR,
            ),
            circuit_test(
                "CONSERVATION-NET-BALANCE-REJECTS-UNBALANCED",
                "boundary_negative",
                "conservation_net_balance_test.go",
                "TestConservationNetBalanceCommitmentRejectsUnbalancedSums",
                ("VALUE-CONSERVATION",),
                NR,
            ),
            circuit_test(
                "CONSERVATION-NET-BALANCE-REJECTS-OVERSIZED",
                "boundary_negative",
                "conservation_net_balance_test.go",
                "TestConservationNetBalanceCommitmentRejectsOversizedAmount",
                ("VALUE-AMOUNT-128-RANGE",),
                NR,
            ),
            circuit_test(
                "DECAF-IVK-RANGE-LADDER-PARITY",
                "parity",
                "decaf_gadgets_test.go",
                "TestLessThanConstant253Parity",
                ("DEC-INCOMING-VIEWING-KEY-DERIVATION",),
                ALL,
            ),
            circuit_test(
                "DECAF-IVK-MOD-R-GADGET-PARITY",
                "parity",
                "decaf_gadgets_test.go",
                "TestIvkModRGadgetDecomposition",
                ("DEC-INCOMING-VIEWING-KEY-DERIVATION",),
                ALL,
            ),
            circuit_test(
                "DECAF-COMPRESS-GADGET-PARITY",
                "parity",
                "decaf_gadgets_test.go",
                "TestCompressToFieldGadgetParity",
                (
                    "DEC-AUTHORIZATION-KEY-ENCODING",
                    "DEC-BALANCE-COMMITMENT-ENCODING",
                    "DEC-DIVERSIFIED-GENERATOR-ENCODING",
                    "DEC-SPEND-RK-ENCODING",
                    "DEC-TRANSMISSION-KEY-ENCODING",
                ),
                ALL,
            ),
            circuit_test(
                "DECAF-EPHEMERAL-COMPRESS-GADGET-PARITY",
                "parity",
                "decaf_gadgets_test.go",
                "TestCompressToFieldGadgetParity",
                ("DEC-EPHEMERAL-PUBLIC-KEY-ENCODING",),
                TRANSFER,
            ),
            circuit_test(
                "DECAF-ENCODE-TO-CURVE-GADGET-PARITY",
                "parity",
                "decaf_gadgets_test.go",
                "TestEncodeToCurveGadgetParity",
                ("DEC-BALANCE-COMMITMENT-DERIVATION",),
                TRANSFER,
            ),
            circuit_test(
                "DECAF-SCALAR-MUL-GADGET-PARITY",
                "parity",
                "decaf_gadgets_test.go",
                "TestScalarMulLEGadgetParity",
                (
                    "DEC-BALANCE-COMMITMENT-DERIVATION",
                    "DEC-SPEND-RK-DERIVATION",
                    "DEC-TRANSMISSION-KEY-DERIVATION",
                ),
                ALL,
            ),
            circuit_test(
                "DECAF-EPHEMERAL-SCALAR-MUL-GADGET-PARITY",
                "parity",
                "decaf_gadgets_test.go",
                "TestScalarMulLEGadgetParity",
                ("DEC-EPHEMERAL-PUBLIC-KEY-DERIVATION",),
                TRANSFER,
            ),
            circuit_test(
                "DECAF-RVK-GADGET-PARITY",
                "parity",
                "decaf_gadgets_test.go",
                "TestDecafRvkGadgetParity",
                ("DEC-SPEND-RK-DERIVATION",),
                ALL,
            ),
            circuit_test(
                "DECAF-DTK-GADGET-PARITY",
                "parity",
                "decaf_gadgets_test.go",
                "TestDecafDtkGadgetParity",
                (
                    "DEC-INCOMING-VIEWING-KEY-DERIVATION",
                    "DEC-TRANSMISSION-KEY-DERIVATION",
                ),
                ALL,
            ),
            circuit_test(
                "TRANSFER-NET-BALANCE-GADGET-PARITY",
                "parity",
                "decaf_gadgets_test.go",
                "TestNetBalanceCommitmentGadgetParity",
                ("DEC-BALANCE-COMMITMENT-DERIVATION",),
                TRANSFER,
            ),
            circuit_test(
                "TRANSFER-NET-BALANCE-SUM-LADDER-PARITY",
                "parity",
                "transfer_balance_optimization_test.go",
                "TestTransferBalanceSumLadderWitnessParity",
                ("DEC-BALANCE-COMMITMENT-DERIVATION",),
                TRANSFER,
            ),
            circuit_test(
                "TRANSFER-NET-BALANCE-RANGE-EVERY-SLOT",
                "boundary_negative",
                "transfer_balance_optimization_test.go",
                "TestTransferBalanceRangeChecksEveryAmount",
                ("VALUE-AMOUNT-128-RANGE",),
                TRANSFER,
            ),
            go_test(
                "TRANSFER-SHARED-SECRET-BIT-REUSE-PARITY",
                "parity",
                "tools/gnark/internal/compliance/"
                "spend_shared_optimization_test.go",
                "TestDeriveSharedSecretsSpendBitReuseWitnessParity",
                (
                    "COMPLIANCE-SHARED-SECRET-SELECTION",
                    "DEC-SHARED-SECRET-DERIVATION",
                ),
                TRANSFER,
            ),
            circuit_test(
                "NOTE-RESHAPE-CONSERVATION-GADGET-PARITY",
                "parity",
                "decaf_gadgets_test.go",
                "TestConservationNetBalanceCommitmentGadgetParity",
                (
                    "DEC-BALANCE-COMMITMENT-DERIVATION",
                    "VALUE-CONSERVATION",
                ),
                NR,
            ),
            circuit_test(
                "WITHDRAWAL-CONSERVATION-GADGET-PARITY",
                "boundary_negative",
                "decaf_gadgets_test.go",
                "TestConservationNetBalanceCommitment2GadgetParity",
                (
                    "DEC-BALANCE-COMMITMENT-DERIVATION",
                    "VALUE-AMOUNT-128-RANGE",
                    "VALUE-CONSERVATION",
                ),
                WITHDRAWAL,
            ),
            circuit_test(
                "CIRCUIT-FAMILY-EXACT-COMPILE-SHAPE",
                "invariant",
                "family_test.go",
                "TestCircuitFamiliesCompile",
                ("CIR-SHAPE-FIXED",),
                ALL,
            ),
            circuit_test(
                "TRANSFER-MUTATED-COMPLIANCE-SALT",
                "full_circuit_negative",
                "family_test.go",
                "TestCircuitFamiliesRejectMutatedComplianceField",
                ("COMPLIANCE-SALT-DERIVATION",),
                TRANSFER,
            ),
            circuit_test(
                "WITHDRAWAL-MUTATED-INTENT-FIELD",
                "full_circuit_negative",
                "family_test.go",
                "TestCircuitFamiliesRejectMutatedComplianceField",
                ("WITHDRAWAL-INTENT-FIELD-BINDING",),
                WITHDRAWAL,
            ),
            circuit_test(
                "NOTE-RESHAPE-1X8-MUTATED-OUTPUT-AMOUNT",
                "full_circuit_negative",
                "family_test.go",
                "TestCircuitFamiliesRejectMutatedComplianceField",
                ("NOTE-OUTPUT-COMMITMENT",),
                frozenset({"note_reshape1x8"}),
            ),
            circuit_test(
                "NOTE-RESHAPE-MUTATED-NULLIFIER-PREIMAGE",
                "full_circuit_negative",
                "family_test.go",
                "TestCircuitFamiliesRejectMutatedComplianceField",
                ("NOTE-SPEND-NULLIFIER-DERIVATION",),
                NR,
            ),
            circuit_test(
                "CIRCUIT-FAMILY-MUTATED-BALANCE-COMMITMENT",
                "full_circuit_negative",
                "family_test.go",
                "TestCircuitFamiliesRejectMutatedBalanceCommitment",
                ("DEC-BALANCE-COMMITMENT-DERIVATION",),
                ALL,
            ),
            circuit_test(
                "CIRCUIT-FAMILY-MUTATED-NULLIFIER",
                "full_circuit_negative",
                "family_test.go",
                "TestCircuitFamiliesRejectMutatedNullifier",
                ("NOTE-SPEND-NULLIFIER-DERIVATION",),
                ALL,
            ),
            circuit_test(
                "PADDED-SPEND-MUTATED-DUMMY-NULLIFIER-SEED",
                "full_circuit_negative",
                "family_test.go",
                "TestPaddedSpendCircuitsRejectMutatedDummyNullifierSeed",
                ("DUMMY-NULLIFIER-DOMAIN-BINDING",),
                TX,
            ),
            circuit_test(
                "NOTE-RESHAPE-1X8-DUMMY-OUTPUT-COMMITMENT",
                "full_circuit_negative",
                "family_test.go",
                "TestNoteReshapeRejectsDummyOutputCommitmentMutation",
                ("NOTE-OUTPUT-COMMITMENT",),
                frozenset({"note_reshape1x8"}),
            ),
            circuit_test(
                "NOTE-RESHAPE-1X8-PADDED-OUTPUT-PAYLOAD",
                "full_circuit_negative",
                "family_test.go",
                "TestNoteReshapeRejectsPaddedOutputPayloadMutation",
                ("NOTE-OUTPUT-COMMITMENT",),
                frozenset({"note_reshape1x8"}),
            ),
            circuit_test(
                "BOOL-SELECT-ACL2-MODEL-PARITY",
                "parity",
                "gadgets_acl2_parity_test.go",
                "TestBoolSelectAcl2ModelParity",
                ("ASSET-REGULATED-BOOLEAN",),
                TX,
            ),
            circuit_test(
                "NOTE-RESHAPE-SHARED-DIVGEN-COMMITMENT-PARITY",
                "parity",
                "note_reshape_circuit_test.go",
                "TestSharedDivGenCompressCommitmentParity",
                (
                    "NOTE-OUTPUT-COMMITMENT",
                    "NOTE-SPEND-COMMITMENT",
                ),
                NR,
            ),
            circuit_test(
                "NOTE-RESHAPE-EVERY-PUBLIC-SPEND-OUTPUT-FIELD",
                "full_circuit_negative",
                "note_reshape_regression_test.go",
                "TestNoteReshapeEverySpendAndOutputPublicFieldIsConstrained",
                (
                    "DEC-SPEND-RK-DERIVATION",
                    "NOTE-OUTPUT-COMMITMENT",
                    "NOTE-SPEND-NULLIFIER-DERIVATION",
                ),
                NR,
            ),
            circuit_test(
                "NOTE-RESHAPE-EVERY-PUBLIC-DUMMY-SPEND-FIELD",
                "full_circuit_negative",
                "note_reshape_regression_test.go",
                "TestNoteReshapeEverySpendAndOutputPublicFieldIsConstrained",
                ("DUMMY-NULLIFIER-DOMAIN-BINDING",),
                NR_SYNTHETIC,
            ),
            circuit_test(
                "NOTE-RESHAPE-EXACT-CONSERVATION-MUTATION",
                "full_circuit_negative",
                "note_reshape_regression_test.go",
                "TestNoteReshapeFamiliesRejectIsolatedExactConservationMutation",
                ("VALUE-CONSERVATION",),
                NR,
            ),
            circuit_test(
                "NOTE-RESHAPE-1X8-EVERY-OUTPUT-COMMITMENT",
                "full_circuit_negative",
                "note_reshape_regression_test.go",
                "TestNoteReshape1x8BindsEveryOutputCommitment",
                ("NOTE-OUTPUT-COMMITMENT",),
                frozenset({"note_reshape1x8"}),
            ),
            circuit_test(
                "NOTE-RESHAPE-1X8-PADDED-OUTPUT-FIELDS",
                "full_circuit_negative",
                "note_reshape_regression_test.go",
                "TestNoteReshape1x8PaddedOutputFieldsAreBound",
                ("NOTE-OUTPUT-COMMITMENT",),
                frozenset({"note_reshape1x8"}),
            ),
            circuit_test(
                "NOTE-RESHAPE-PADDED-SPEND-REGRESSIONS",
                "full_circuit_negative",
                "note_reshape_regression_test.go",
                "TestNoteReshapePaddedSpendRegressions",
                (
                    "CIR-DUMMY-ORDER-COUNT",
                    "CIR-SELECTOR-BOOLEAN",
                    "DEC-SPEND-RK-ENCODING",
                    "DUMMY-AMOUNT-ZERO",
                    "DUMMY-NULLIFIER-DOMAIN-BINDING",
                    "SCT-SPEND-MEMBERSHIP",
                ),
                NR_SYNTHETIC,
            ),
            circuit_test(
                "NOTE-RESHAPE-DUMMY-NULLIFIER-FIXED-SLOT",
                "full_circuit_negative",
                "note_reshape_regression_test.go",
                "TestNoteReshapeSyntheticDummyNullifiersBindFixedSlot",
                ("DUMMY-SLOT-POSITION-BINDING",),
                NR_SYNTHETIC,
            ),
            circuit_test(
                "NOTE-RESHAPE-WRONG-FAMILY-DOMAIN",
                "full_circuit_negative",
                "note_reshape_regression_test.go",
                "TestNoteReshapeFamiliesRejectWrongFamilyDomain",
                ("PUBLIC-STATEMENT-BINDING",),
                NR,
            ),
            circuit_test(
                "NOTE-RESHAPE-WRONG-SHAPE",
                "boundary_negative",
                "note_reshape_regression_test.go",
                "TestNoteReshapeFamiliesRejectWrongShape",
                ("CIR-SHAPE-FIXED",),
                NR,
            ),
            circuit_test(
                "NOTE-RESHAPE-WRONG-STATEMENT-PREIMAGE",
                "full_circuit_negative",
                "note_reshape_regression_test.go",
                "TestNoteReshapeFamiliesRejectWrongStatementPreimage",
                ("NOTE-SPEND-NULLIFIER-DERIVATION",),
                NR,
            ),
            circuit_test(
                "NOTE-RESHAPE-STATEMENT-OMITS-ACTIVE-COUNTS",
                "invariant",
                "note_reshape_regression_test.go",
                "TestNoteReshapeStatementsHaveNoActiveCountFieldsAfterRedesign",
                ("CIR-SHAPE-FIXED",),
                NR,
            ),
            circuit_test(
                "NOTE-RESHAPE-1X8-OMITS-OUTPUT-DUMMY-WITNESS",
                "invariant",
                "note_reshape_regression_test.go",
                "TestNoteReshape1x8HasNoOutputDummyWitnessOrManifestOperationsAfterRedesign",
                ("CIR-SHAPE-FIXED",),
                frozenset({"note_reshape1x8"}),
            ),
            circuit_test(
                "NOTE-RESHAPE-WITNESS-ROLE-COMPLETENESS",
                "invariant",
                "note_reshape_witness_roles_test.go",
                "TestNoteReshapeWitnessRolesAreCompleteAndConstrained",
                ("CIR-SHAPE-FIXED",),
                NR,
            ),
            circuit_test(
                "WITHDRAWAL-REQUIRED-OPTIONAL-LAYOUT",
                "invariant",
                "shielded_ics20_withdrawal_metamorphic_test.go",
                "TestShieldedIcs20WithdrawalUsesExplicitRequiredOptionalLayout",
                ("CIR-SHAPE-FIXED",),
                WITHDRAWAL,
            ),
            circuit_test(
                "WITHDRAWAL-COMPACT-WITNESS-LAYOUT",
                "invariant",
                "shielded_ics20_withdrawal_metamorphic_test.go",
                "TestShieldedIcs20WithdrawalV10OmitsPolicyOpeningsAndRedundantFields",
                ("CIR-SHAPE-FIXED",),
                WITHDRAWAL,
            ),
            circuit_test(
                "WITHDRAWAL-FIXED-ROUTING-FIELDS",
                "invariant",
                "shielded_ics20_withdrawal_metamorphic_test.go",
                "TestShieldedIcs20WithdrawalV10CarriesFixedRoutingFields",
                ("CIR-SHAPE-FIXED",),
                WITHDRAWAL,
            ),
            circuit_test(
                "WITHDRAWAL-EVERY-EFFECT-HASH-LIMB",
                "full_circuit_negative",
                "shielded_ics20_withdrawal_metamorphic_test.go",
                "TestShieldedIcs20WithdrawalBindsEveryEffectHashLimb",
                ("WITHDRAWAL-INTENT-FIELD-BINDING",),
                WITHDRAWAL,
            ),
            circuit_test(
                "WITHDRAWAL-NONBOOLEAN-REGULATED-SELECTOR",
                "boundary_negative",
                "shielded_ics20_withdrawal_metamorphic_test.go",
                "TestShieldedIcs20WithdrawalRejectsNonBooleanRegulatedSelector",
                ("ASSET-REGULATED-BOOLEAN",),
                WITHDRAWAL,
            ),
            circuit_test(
                "WITHDRAWAL-EVERY-OWNED-PUBLIC-FIELD",
                "full_circuit_negative",
                "shielded_ics20_withdrawal_metamorphic_test.go",
                "TestShieldedIcs20WithdrawalRejectsEveryOwnedPublicFieldMutation",
                (
                    "DEC-SPEND-RK-DERIVATION",
                    "NOTE-OUTPUT-COMMITMENT",
                    "NOTE-SPEND-NULLIFIER-DERIVATION",
                    "VALUE-CONSERVATION",
                    "WITHDRAWAL-INTENT-FIELD-BINDING",
                ),
                WITHDRAWAL,
            ),
            circuit_test(
                "WITHDRAWAL-COMPACT-LEAF-SENTINEL-WIRING",
                "invariant",
                "shielded_ics20_withdrawal_metamorphic_test.go",
                "TestShieldedIcs20WithdrawalWiringBindsCompactLeafAndSentinel",
                (
                    "ASSET-ID-NONZERO",
                    "ASSET-LEAF-HASH",
                    "USER-COMPLIANCE-LEAF-HASH",
                    "USER-LEAF-ADDRESS-BINDING",
                ),
                WITHDRAWAL,
            ),
            circuit_test(
                "WITHDRAWAL-OPTIONAL-DUMMY-NULLIFIER-SEED",
                "full_circuit_negative",
                "shielded_ics20_withdrawal_metamorphic_test.go",
                "TestShieldedIcs20WithdrawalOptionalDummyBindsNullifierSeed",
                ("DUMMY-NULLIFIER-DOMAIN-BINDING",),
                WITHDRAWAL,
            ),
            circuit_test(
                "WITHDRAWAL-DUMMY-NULLIFIER-FIXED-SLOT",
                "full_circuit_negative",
                "shielded_ics20_withdrawal_metamorphic_test.go",
                "TestShieldedIcs20WithdrawalSyntheticDummyNullifierBindsFixedSlot",
                ("DUMMY-SLOT-POSITION-BINDING",),
                WITHDRAWAL,
            ),
            circuit_test(
                "TRANSFER-REQUIRED-OPTIONAL-SPEND-WIRING",
                "invariant",
                "transfer_layout_metamorphic_test.go",
                "TestTransferWiringSeparatesRequiredAndOptionalSpend",
                (
                    "CIR-SELECTOR-BOOLEAN",
                    "CIR-SHAPE-FIXED",
                    "DEC-SPEND-RK-DERIVATION",
                    "DUMMY-NULLIFIER-DOMAIN-BINDING",
                    "NOTE-SPEND-COMMITMENT",
                    "NOTE-SPEND-NULLIFIER-DERIVATION",
                    "SCT-SPEND-MEMBERSHIP",
                ),
                TRANSFER,
            ),
            circuit_test(
                "TRANSFER-RECEIVER-NONZERO-WIRING",
                "invariant",
                "transfer_layout_metamorphic_test.go",
                "TestTransferWiringOmitsDeadChangeIsZero",
                ("NOTE-RECEIVER-AMOUNT-NONZERO",),
                TRANSFER,
            ),
            circuit_test(
                "TRANSFER-ASSET-SENTINEL-WIRING",
                "invariant",
                "transfer_layout_metamorphic_test.go",
                "TestTransferWiringRejectsTheIndexedTreeZeroSentinelAsAnAsset",
                ("ASSET-ID-NONZERO",),
                TRANSFER,
            ),
            circuit_test(
                "TRANSFER-ASSET-SENTINEL-EXACT-ROW",
                "invariant",
                "transfer_layout_metamorphic_test.go",
                "TestTransferAssetSentinelRejectionIsOneExactRow",
                ("ASSET-ID-NONZERO",),
                TRANSFER,
            ),
            circuit_test(
                "TRANSFER-OMITS-DERIVED-DUMMY-AUTH-OUTPUT-ROLE",
                "invariant",
                "transfer_layout_metamorphic_test.go",
                "TestTransferWiringOmitsDerivedDummyAuthAndOutputRole",
                ("CIR-SHAPE-FIXED",),
                TRANSFER,
            ),
            circuit_test(
                "TRANSFER-CANONICAL-ROLE-ADDRESS-WIRING",
                "invariant",
                "transfer_layout_metamorphic_test.go",
                "TestTransferWiringUsesCanonicalRoleAddresses",
                (
                    "DEC-AUTHORIZATION-KEY-NONIDENTITY",
                    "DEC-DIVERSIFIED-GENERATOR-NONIDENTITY",
                    "DEC-INCOMING-VIEWING-KEY-NONZERO",
                    "DEC-SPEND-RK-DERIVATION",
                    "DEC-TRANSMISSION-KEY-DERIVATION",
                    "DEC-TRANSMISSION-KEY-NONIDENTITY",
                    "NOTE-OUTPUT-OWNER-BINDING",
                    "NOTE-SPEND-OWNER-BINDING",
                    "USER-LEAF-ADDRESS-BINDING",
                ),
                TRANSFER,
            ),
            circuit_test(
                "TRANSFER-IDENTITY-GUARDS-EXACT-ROWS",
                "invariant",
                "transfer_layout_metamorphic_test.go",
                "TestTransferIdentityGuardsAreSixExactRows",
                (
                    "DEC-AUTHORIZATION-KEY-NONIDENTITY",
                    "DEC-DIVERSIFIED-GENERATOR-NONIDENTITY",
                    "DEC-INCOMING-VIEWING-KEY-NONZERO",
                    "DEC-TRANSMISSION-KEY-NONIDENTITY",
                ),
                TRANSFER,
            ),
            circuit_test(
                "TRANSFER-COMPLIANCE-DIRECT-METADATA-WIRING",
                "invariant",
                "transfer_layout_metamorphic_test.go",
                "TestTransferWiringOmitsUnsafeComplianceProofPackages",
                (
                    "COMPLIANCE-METADATA-BINDING",
                    "COMPLIANCE-POLICY-SELECTION",
                    "COMPLIANCE-THRESHOLD-FLAG",
                ),
                TRANSFER,
            ),
            circuit_test(
                "TRANSFER-DERIVED-SHARED-SECRET-ENCRYPTION-WIRING",
                "invariant",
                "transfer_layout_metamorphic_test.go",
                "TestTransferWiringJoinsDerivedSharedSecretsToEncryption",
                (
                    "COMPLIANCE-ADDRESS-ENCRYPTION",
                    "COMPLIANCE-AMOUNT-ENCRYPTION",
                    "COMPLIANCE-DETECTION-ENCRYPTION",
                    "COMPLIANCE-SHARED-SECRET-SELECTION",
                    "DEC-SHARED-SECRET-DERIVATION",
                ),
                TRANSFER,
            ),
            circuit_test(
                "TRANSFER-REGULATED-ASSET-BRANCH-REJECTION",
                "full_circuit_negative",
                "transfer_metamorphic_test.go",
                "TestTransferCircuitRejectsRegulatedAssetRoutedAsUnregulated",
                ("ASSET-REGISTRY-GAP-ORDERING",),
                TRANSFER,
            ),
            circuit_test(
                "TRANSFER-NONBOOLEAN-REGULATED-SELECTOR",
                "boundary_negative",
                "transfer_metamorphic_test.go",
                "TestTransferCircuitRejectsNonBooleanRegulatedSelector",
                ("ASSET-REGULATED-BOOLEAN",),
                TRANSFER,
            ),
            circuit_test(
                "TRANSFER-CANONICAL-UNREGULATED-BRANCH",
                "integration",
                "transfer_metamorphic_test.go",
                "TestTransferCircuitAcceptsCanonicalUnregulatedBranch",
                (
                    "ASSET-REGISTRY-GAP-ORDERING",
                    "COMPLIANCE-POLICY-SELECTION",
                    "COMPLIANCE-THRESHOLD-FLAG",
                    "USER-COMPLIANCE-MEMBERSHIP-GATE",
                ),
                TRANSFER,
            ),
            circuit_test(
                "TRANSFER-REGULATED-FLAGGED-HIDDEN-ARITY",
                "integration",
                "transfer_metamorphic_test.go",
                "TestTransferCircuitAcceptsRegulatedFlaggedHiddenArity",
                (
                    "COMPLIANCE-THRESHOLD-FLAG",
                    "DUMMY-AMOUNT-ZERO",
                    "DUMMY-NULLIFIER-DOMAIN-BINDING",
                    "USER-COMPLIANCE-MEMBERSHIP-GATE",
                ),
                TRANSFER,
            ),
            circuit_test(
                "TRANSFER-DETECTION-SLOT-U32-RANGE",
                "boundary_negative",
                "transfer_metamorphic_test.go",
                "TestTransferDetectionRejectsSlotIDsOutsideCanonicalU32Range",
                ("FIELD-DETECTION-SLOT-RANGE",),
                TRANSFER,
            ),
            circuit_test(
                "TRANSFER-UNREGULATED-CIPHERTEXT-POLICY-BINDING",
                "full_circuit_negative",
                "transfer_metamorphic_test.go",
                "TestTransferCircuitBindsUnregulatedCiphertextAndCanonicalPolicy",
                (
                    "COMPLIANCE-AMOUNT-ENCRYPTION",
                    "COMPLIANCE-DETECTION-ENCRYPTION",
                    "COMPLIANCE-POLICY-SELECTION",
                ),
                TRANSFER,
            ),
            circuit_test(
                "WITHDRAWAL-REGULATED-ASSET-BRANCH-REJECTION",
                "full_circuit_negative",
                "transfer_metamorphic_test.go",
                "TestShieldedIcs20WithdrawalCircuitRejectsRegulatedAssetRoutedAsUnregulated",
                ("ASSET-REGISTRY-GAP-ORDERING",),
                WITHDRAWAL,
            ),
            circuit_test(
                "WITHDRAWAL-REQUIRED-SPEND-OMITS-DUMMY-LAYOUT",
                "invariant",
                "transfer_metamorphic_test.go",
                "TestShieldedIcs20WithdrawalRequiredSpendOmitsDummyLayout",
                ("CIR-SHAPE-FIXED",),
                WITHDRAWAL,
            ),
            circuit_test(
                "TRANSFER-V18-ROLE-SPECIFIC-LAYOUT",
                "invariant",
                "transfer_metamorphic_test.go",
                "TestTransferV18UsesRoleSpecificSemanticLayout",
                ("CIR-SHAPE-FIXED",),
                TRANSFER,
            ),
            circuit_test(
                "TRANSFER-DUMMY-NULLIFIER-FIXED-SLOT",
                "full_circuit_negative",
                "transfer_metamorphic_test.go",
                "TestTransferSyntheticDummyNullifierBindsFixedSlot",
                ("DUMMY-SLOT-POSITION-BINDING",),
                TRANSFER,
            ),
            circuit_test(
                "TRANSFER-DUMMY-RK-EXTERNAL-AUTHORIZATION",
                "integration",
                "transfer_metamorphic_test.go",
                "TestTransferDummySpendRKIsExternallyAuthorized",
                ("DEC-SPEND-RK-DERIVATION",),
                TRANSFER,
            ),
            circuit_test(
                "WITHDRAWAL-DUMMY-RK-EXTERNAL-AUTHORIZATION",
                "integration",
                "transfer_metamorphic_test.go",
                "TestShieldedIcs20WithdrawalAcceptsExternalPaddedRK",
                ("DEC-SPEND-RK-DERIVATION",),
                WITHDRAWAL,
            ),
            circuit_test(
                "TRANSFER-REBOUND-NET-VALUE",
                "integration",
                "transfer_metamorphic_test.go",
                "TestTransferCircuitAcceptsReboundNetValueAfterChangeAmountMutation",
                (
                    "DEC-BALANCE-COMMITMENT-DERIVATION",
                    "VALUE-CONSERVATION",
                ),
                TRANSFER,
            ),
            circuit_test(
                "TRANSFER-EVERY-COMPLIANCE-TIER-CIPHERTEXT",
                "full_circuit_negative",
                "transfer_metamorphic_test.go",
                "TestTransferCircuitRejectsComplianceTierMutations",
                (
                    "COMPLIANCE-ADDRESS-ENCRYPTION",
                    "COMPLIANCE-AMOUNT-ENCRYPTION",
                ),
                TRANSFER,
            ),
            circuit_test(
                "TRANSFER-EVERY-DETECTION-CIPHERTEXT",
                "full_circuit_negative",
                "transfer_metamorphic_test.go",
                "TestTransferCircuitRejectsEveryDetectionCiphertextMutation",
                ("COMPLIANCE-DETECTION-ENCRYPTION",),
                TRANSFER,
            ),
            circuit_test(
                "TRANSFER-EVERY-TIER-EPK-SUBSTITUTION",
                "full_circuit_negative",
                "transfer_metamorphic_test.go",
                "TestTransferCircuitRejectsEveryTierEPKSubstitution",
                ("DEC-EPHEMERAL-PUBLIC-KEY-DERIVATION",),
                TRANSFER,
            ),
            circuit_test(
                "TRANSFER-NONCE-ROOT-EVERY-TIER-SCALAR",
                "full_circuit_negative",
                "transfer_metamorphic_test.go",
                "TestTransferCircuitRejectsNonceRootAndEveryTierScalarMutation",
                (
                    "COMPLIANCE-SALT-DERIVATION",
                    "DEC-EPHEMERAL-PUBLIC-KEY-DERIVATION",
                    "DEC-SHARED-SECRET-DERIVATION",
                ),
                TRANSFER,
            ),
            circuit_test(
                "TRANSFER-EVERY-METADATA-FIELD",
                "full_circuit_negative",
                "transfer_metamorphic_test.go",
                "TestTransferCircuitRejectsMetadataMutations",
                (
                    "COMPLIANCE-METADATA-BINDING",
                    "COMPLIANCE-SALT-DERIVATION",
                ),
                TRANSFER,
            ),
            circuit_test(
                "WIRING-R1C-CANCELED-APPEARANCE",
                "boundary_negative",
                "wiring_transcript_test.go",
                "TestR1CPolynomialInfluenceRejectsCanceledAppearances",
                ("CIR-SHAPE-FIXED",),
                ALL,
            ),
            circuit_test(
                "WIRING-R1C-NONLINEAR-INFLUENCE",
                "invariant",
                "wiring_transcript_test.go",
                "TestR1CPolynomialInfluenceKeepsNonlinearTerms",
                ("CIR-SHAPE-FIXED",),
                ALL,
            ),
            circuit_test(
                "WIRING-SEGMENT-CLASSIFICATION-FAILS-CLOSED",
                "boundary_negative",
                "wiring_transcript_test.go",
                "TestConstraintSegmentClassificationFailsClosedByExactOperation",
                ("CIR-SHAPE-FIXED",),
                ALL,
            ),
            circuit_test(
                "CONSERVATION-THEOREM-MAPPINGS-ARITY-DISTINCT",
                "invariant",
                "wiring_transcript_test.go",
                "TestConservationNetBalanceTheoremMappingsAreArityDistinct",
                (
                    "DEC-BALANCE-COMMITMENT-DERIVATION",
                    "VALUE-CONSERVATION",
                ),
                NR | WITHDRAWAL,
            ),
            circuit_test(
                "NOTE-RESHAPE-8X1-WIRING-TRANSCRIPT-EXACT",
                "invariant",
                "wiring_transcript_test.go",
                "TestNoteReshape8x1WiringTranscriptExact",
                (
                    "CIR-SHAPE-FIXED",
                    "DEC-INCOMING-VIEWING-KEY-NONZERO",
                    "DEC-TRANSMISSION-KEY-NONIDENTITY",
                    "PUBLIC-STATEMENT-BINDING",
                ),
                frozenset({"note_reshape8x1"}),
            ),
            circuit_test(
                "NOTE-RESHAPE-MANIFEST-CONSTRAINT-PARTITION",
                "invariant",
                "wiring_transcript_test.go",
                "TestNoteReshapeFamilyManifestsPartitionEveryConstraint",
                (
                    "CIR-SHAPE-FIXED",
                    "DEC-INCOMING-VIEWING-KEY-NONZERO",
                    "DEC-TRANSMISSION-KEY-NONIDENTITY",
                ),
                NR,
            ),
            circuit_test(
                "NOTE-RESHAPE-CANONICAL-SHARED-CONTEXT-BINDINGS",
                "invariant",
                "wiring_transcript_test.go",
                "TestNoteReshapeSemanticBindingsUseCanonicalSharedContext",
                (
                    "DEC-TRANSMISSION-KEY-DERIVATION",
                    "NOTE-OUTPUT-ASSET-BINDING",
                    "NOTE-OUTPUT-OWNER-BINDING",
                    "NOTE-SPEND-ASSET-BINDING",
                    "NOTE-SPEND-OWNER-BINDING",
                ),
                NR,
            ),
            circuit_test(
                "TRANSFER-SHARED-SENDER-TRANSMISSION-ONCE",
                "invariant",
                "wiring_transcript_test.go",
                "TestTransferDerivesSharedSenderTransmissionOnce",
                ("DEC-TRANSMISSION-KEY-DERIVATION",),
                TRANSFER,
            ),
            circuit_test(
                "TRANSFER-MANIFEST-EXACT-CONSTRAINT-BOUNDARIES",
                "invariant",
                "wiring_transcript_test.go",
                "TestTransferManifestUsesExactConstraintBoundaries",
                (
                    "ASSET-REGISTRY-GAP-ORDERING",
                    "ASSET-REGULATED-BOOLEAN",
                ),
                TRANSFER,
            ),
            circuit_test(
                "TRANSFER-MANIFEST-EXACT-GADGET-SHAPES",
                "invariant",
                "wiring_transcript_test.go",
                "TestTransferManifestClassifiesExactPathAndPoseidonShapes",
                (
                    "ASSET-LEAF-HASH",
                    "ASSET-PARAMETERS-HASH",
                    "ASSET-REGISTRY-MEMBERSHIP",
                    "ASSET-RING-HASH",
                    "COMPLIANCE-ADDRESS-ENCRYPTION",
                    "COMPLIANCE-AMOUNT-ENCRYPTION",
                    "COMPLIANCE-DETECTION-ENCRYPTION",
                    "COMPLIANCE-THRESHOLD-FLAG",
                    "DEC-ACK-DERIVATION",
                    "DEC-SHARED-SECRET-DERIVATION",
                    "PUBLIC-STATEMENT-BINDING",
                    "SCT-SPEND-MEMBERSHIP",
                    "USER-COMPLIANCE-LEAF-HASH",
                    "USER-COMPLIANCE-MEMBERSHIP-GATE",
                ),
                TRANSFER,
            ),
            circuit_test(
                "TRANSFER-MANIFEST-SEMANTIC-BINDINGS",
                "invariant",
                "wiring_transcript_test.go",
                "TestTransferManifestExportsSemanticBindings",
                (
                    "CIR-SHAPE-FIXED",
                    "COMPLIANCE-METADATA-BINDING",
                    "PUBLIC-STATEMENT-BINDING",
                ),
                TRANSFER,
            ),
            circuit_test(
                "WITHDRAWAL-MANIFEST-EXACT-FULLY-BOUND",
                "invariant",
                "wiring_transcript_test.go",
                "TestShieldedIcs20WithdrawalManifestIsExactAndFullyBound",
                (
                    "ASSET-LEAF-HASH",
                    "CIR-SHAPE-FIXED",
                    "DEC-BALANCE-COMMITMENT-DERIVATION",
                    "DEC-INCOMING-VIEWING-KEY-NONZERO",
                    "DEC-TRANSMISSION-KEY-NONIDENTITY",
                    "NOTE-OUTPUT-ASSET-BINDING",
                    "NOTE-OUTPUT-COMMITMENT",
                    "NOTE-OUTPUT-OWNER-BINDING",
                    "NOTE-SPEND-ASSET-BINDING",
                    "NOTE-SPEND-COMMITMENT",
                    "NOTE-SPEND-OWNER-BINDING",
                    "PUBLIC-STATEMENT-BINDING",
                    "VALUE-CONSERVATION",
                ),
                WITHDRAWAL,
            ),
            circuit_test(
                "NOTE-RESHAPE-8X1-WIRING-SEMANTIC-DRIFT",
                "negative",
                "wiring_transcript_test.go",
                "TestNoteReshape8x1WiringTranscriptDetectsSemanticDrift",
                (
                    "DEC-BALANCE-COMMITMENT-DERIVATION",
                    "DEC-SPEND-RK-ENCODING",
                    "NOTE-SPEND-NULLIFIER-DERIVATION",
                    "PUBLIC-STATEMENT-BINDING",
                ),
                frozenset({"note_reshape8x1"}),
            ),
            go_test(
                "TRANSFER-ADDRESS-PACKING-REJECTS-FIELD-ALIAS",
                "attack_reproduction",
                (
                    "tools/gnark/internal/compliance/"
                    "address_encryption_test.go"
                ),
                (
                    "TestGnarkToBinary256RejectsNonCanonical"
                    "AddressPlaintextAlias"
                ),
                ("ADDRESS-CANONICAL-PACKING",),
                TRANSFER,
            ),
            go_test(
                "TRANSFER-INDEXED-LEAF-CIRCUIT-NATIVE-PARITY",
                "parity",
                "tools/gnark/internal/compliance/indexed_tree_test.go",
                "TestIndexedLeafCircuitMatchesNativeCommitment",
                (
                    "ASSET-LEAF-HASH",
                    "ASSET-PARAMETERS-HASH",
                    "ASSET-POLICY-KEY-ENCODING",
                    "ASSET-RING-HASH",
                ),
                TRANSFER,
            ),
            go_test(
                "TRANSFER-INDEXED-LEAF-NATIVE-QUAD-PATH-SMOKE",
                "parity",
                "tools/gnark/internal/compliance/indexed_tree_test.go",
                "TestIndexedLeafCommitmentNativeMatchesQuadPath",
                (
                    "ASSET-LEAF-HASH",
                    "ASSET-PARAMETERS-HASH",
                    "ASSET-POLICY-KEY-ENCODING",
                    "ASSET-REGISTRY-MEMBERSHIP",
                    "ASSET-RING-HASH",
                ),
                TRANSFER,
            ),
            go_test(
                "TRANSFER-INDEXED-LEAF-CIRCUIT-COMPILES",
                "invariant",
                "tools/gnark/internal/compliance/indexed_tree_test.go",
                "TestIndexedLeafCommitmentCircuitCompiles",
                (
                    "ASSET-LEAF-HASH",
                    "ASSET-PARAMETERS-HASH",
                    "ASSET-POLICY-KEY-ENCODING",
                    "ASSET-RING-HASH",
                ),
                TRANSFER,
            ),
            go_test(
                "COMPLIANCE-QUAD-PATH-CIRCUIT-NATIVE-PARITY",
                "boundary_negative",
                "tools/gnark/internal/compliance/indexed_tree_test.go",
                "TestQuadPathCircuitMatchesNativeRoot",
                (
                    "ASSET-REGISTRY-MEMBERSHIP",
                    "FIELD-USER-POSITION-RANGE",
                    "USER-COMPLIANCE-MEMBERSHIP-GATE",
                ),
                TX,
            ),
            go_test(
                "COMPLIANCE-QUAD-PATH-CIRCUIT-COMPILES",
                "invariant",
                "tools/gnark/internal/compliance/indexed_tree_test.go",
                "TestQuadPathCircuitCompiles",
                (
                    "ASSET-REGISTRY-MEMBERSHIP",
                    "FIELD-USER-POSITION-RANGE",
                    "USER-COMPLIANCE-MEMBERSHIP-GATE",
                ),
                TX,
            ),
            go_test(
                "TRANSFER-THRESHOLD-COMPARATOR-MATRIX",
                "boundary_negative",
                "tools/gnark/internal/compliance/threshold_test.go",
                "TestThresholdFlagMatrix",
                ("COMPLIANCE-THRESHOLD-FLAG",),
                TRANSFER,
            ),
            go_test(
                "TRANSFER-REGULATED-THRESHOLD-MATRIX",
                "boundary_negative",
                "tools/gnark/internal/compliance/threshold_test.go",
                "TestRegulatedThresholdFlagMatrix",
                (
                    "COMPLIANCE-THRESHOLD-FLAG",
                    "VALUE-AMOUNT-128-RANGE",
                    "VALUE-THRESHOLD-128-RANGE",
                ),
                TRANSFER,
            ),
            go_test(
                "NOTE-RESHAPE-GENERATED-REGISTRY-MANIFEST-PARITY",
                "invariant",
                (
                    "tools/gnark/internal/generated/"
                    "note_reshape_families_generated_test.go"
                ),
                "TestNoteReshapeGeneratedRegistryMatchesManifest",
                ("CIR-SHAPE-FIXED",),
                NR,
            ),
            go_test(
                "POSEIDON-HASH7-RUST-VECTOR-PARITY",
                "parity",
                (
                    "tools/gnark/internal/primitives/"
                    "crypto_primitives_test.go"
                ),
                "TestPoseidon377Hash7MatchesShielddVectors",
                ("PUBLIC-STATEMENT-BINDING",),
                ALL,
            ),
            go_test(
                "POSEIDON-HASH7-CIRCUIT-COMPILES",
                "invariant",
                (
                    "tools/gnark/internal/primitives/"
                    "crypto_primitives_test.go"
                ),
                "TestPoseidon377Hash7Compiles",
                ("PUBLIC-STATEMENT-BINDING",),
                ALL,
            ),
            go_test(
                "DECAF-COMPRESS-RUST-VECTOR-PARITY",
                "parity",
                (
                    "tools/gnark/internal/primitives/"
                    "crypto_primitives_test.go"
                ),
                "TestDecaf377CompressToFieldMatchesShielddVectors",
                (
                    "DEC-AUTHORIZATION-KEY-ENCODING",
                    "DEC-BALANCE-COMMITMENT-ENCODING",
                    "DEC-DIVERSIFIED-GENERATOR-ENCODING",
                    "DEC-SPEND-RK-ENCODING",
                    "DEC-TRANSMISSION-KEY-ENCODING",
                ),
                ALL,
            ),
            go_test(
                "TRANSFER-DECAF-EPHEMERAL-COMPRESS-RUST-VECTOR-PARITY",
                "parity",
                (
                    "tools/gnark/internal/primitives/"
                    "crypto_primitives_test.go"
                ),
                "TestDecaf377CompressToFieldMatchesShielddVectors",
                (
                    "ASSET-POLICY-KEY-ENCODING",
                    "DEC-EPHEMERAL-PUBLIC-KEY-ENCODING",
                ),
                TRANSFER,
            ),
            go_test(
                "TRANSFER-DECAF-ENCODE-TO-CURVE-RUST-VECTOR-PARITY",
                "parity",
                (
                    "tools/gnark/internal/primitives/"
                    "crypto_primitives_test.go"
                ),
                "TestDecaf377EncodeToCurveMatchesShielddVectors",
                ("DEC-BALANCE-COMMITMENT-DERIVATION",),
                TRANSFER,
            ),
            go_test(
                "TRANSFER-DECAF-ENCODE-TO-CURVE-CIRCUIT-COMPILES",
                "invariant",
                (
                    "tools/gnark/internal/primitives/"
                    "crypto_primitives_test.go"
                ),
                "TestDecaf377EncodeToCurveCompiles",
                ("DEC-BALANCE-COMMITMENT-DERIVATION",),
                TRANSFER,
            ),
            go_test(
                "TRANSFER-DECAF-ENCODE-TO-CURVE-NATIVE-RUST-VECTOR-PARITY",
                "parity",
                (
                    "tools/gnark/internal/primitives/"
                    "crypto_primitives_test.go"
                ),
                "TestDecaf377EncodeToCurveNativeMatchesShielddVectors",
                ("DEC-BALANCE-COMMITMENT-DERIVATION",),
                TRANSFER,
            ),
            go_test(
                "NULLIFIER-DERIVATION-RUST-VECTOR-PARITY",
                "parity",
                (
                    "tools/gnark/internal/primitives/"
                    "crypto_primitives_test.go"
                ),
                "TestNullifierDerivationMatchesShielddVectors",
                ("NOTE-SPEND-NULLIFIER-DERIVATION",),
                ALL,
            ),
            go_test(
                "NOTE-COMMITMENT-DERIVATION-RUST-VECTOR-PARITY",
                "parity",
                (
                    "tools/gnark/internal/primitives/"
                    "crypto_primitives_test.go"
                ),
                "TestNoteCommitmentDerivationMatchesShielddVectors",
                (
                    "NOTE-OUTPUT-COMMITMENT",
                    "NOTE-SPEND-COMMITMENT",
                ),
                ALL,
            ),
            go_test(
                "NOTE-RESHAPE-STATEMENT-SEAMS-RUST-VECTOR-PARITY",
                "boundary_negative",
                (
                    "tools/gnark/internal/primitives/"
                    "crypto_primitives_test.go"
                ),
                "TestNoteReshapeStatementSeamsMatchShielddVectors",
                ("PUBLIC-STATEMENT-BINDING",),
                NR,
            ),
            go_test(
                "DECAF-COMPANION-CURVE-PARAMETER-PARITY",
                "parity",
                "tools/gnark/internal/primitives/phase0_test.go",
                "TestPhase05CompanionCurveMatchesDecaf377",
                (
                    "DEC-AUTHORIZATION-KEY-ENCODING",
                    "DEC-BALANCE-COMMITMENT-ENCODING",
                    "DEC-DIVERSIFIED-GENERATOR-ENCODING",
                    "DEC-SPEND-RK-ENCODING",
                    "DEC-TRANSMISSION-KEY-ENCODING",
                ),
                ALL,
            ),
            go_test(
                "TRANSFER-DECAF-COMPANION-CURVE-PARAMETER-PARITY",
                "parity",
                "tools/gnark/internal/primitives/phase0_test.go",
                "TestPhase05CompanionCurveMatchesDecaf377",
                (
                    "ASSET-POLICY-KEY-ENCODING",
                    "DEC-EPHEMERAL-PUBLIC-KEY-ENCODING",
                ),
                TRANSFER,
            ),
            go_test(
                "TRANSFER-STATEMENT-HASH-GROTH16-ROUNDTRIP",
                "integration",
                (
                    "tools/gnark/internal/primitives/"
                    "statement_hash_test.go"
                ),
                "TestTransferStatementHashGroth16RoundTrip",
                ("PUBLIC-STATEMENT-BINDING",),
                TRANSFER,
            ),
            go_test(
                "TRANSFER-STATEMENT-HASH-MUTATED-FIELD",
                "full_circuit_negative",
                (
                    "tools/gnark/internal/primitives/"
                    "statement_hash_test.go"
                ),
                "TestTransferStatementHashRejectsMutatedWitnessField",
                ("PUBLIC-STATEMENT-BINDING",),
                TRANSFER,
            ),
            go_test(
                "SCT-PATH-CIRCUIT-NATIVE-PARITY",
                "boundary_negative",
                "tools/gnark/internal/primitives/tct_path_test.go",
                "TestStateCommitmentPathCircuitMatchesSyntheticFixture",
                ("SCT-SPEND-MEMBERSHIP",),
                ALL,
            ),
            go_test(
                "SCT-PATH-NATIVE-FIXTURE-PARITY",
                "parity",
                "tools/gnark/internal/primitives/tct_path_test.go",
                "TestStateCommitmentPathNativeMatchesSyntheticFixture",
                ("SCT-SPEND-MEMBERSHIP",),
                ALL,
            ),
            go_test(
                "SCT-PATH-CIRCUIT-COMPILES",
                "invariant",
                "tools/gnark/internal/primitives/tct_path_test.go",
                "TestStateCommitmentPathCircuitCompiles",
                ("SCT-SPEND-MEMBERSHIP",),
                ALL,
            ),
        ]
    )
    for row in rows:
        row["execution"] = execution_for(row)

    seen: set[str] = set()
    for row in rows:
        test_id = row["id"]
        if test_id in seen:
            raise ValueError(f"duplicate test ID {test_id}")
        seen.add(test_id)
        placements = {
            PREDICATES[predicate_id][0]
            for predicate_id in row["predicate_ids"]
        }
        if len(placements) != 1:
            raise ValueError(
                f"{test_id}: test cannot mix predicate placements "
                f"{sorted(placements)}"
            )
        test_profiles = set(row["profiles"])
        for predicate_id in row["predicate_ids"]:
            inapplicable = test_profiles - set(PREDICATES[predicate_id][1])
            if inapplicable:
                raise ValueError(
                    f"{test_id}/{predicate_id}: test claims inapplicable "
                    f"profiles {sorted(inapplicable)}"
                )
    return rows


TESTS = tests()
EVIDENCE = evidence_sets(TESTS)
EVIDENCE_BY_ID = {row["id"]: row for row in EVIDENCE}


def runtime_policy_contract() -> dict:
    runtime_tests = [
        {
            "id": "RUNTIME-ACTION-AUTH-ASSET-POLICY-IDENTITY-REJECT",
            "kind": "attack_reproduction",
            "path": (
                "crates/core/component/compliance/src/structs.rs"
            ),
            "symbol": (
                "asset_policy_rejects_identity_registration_authority_key"
            ),
        },
        {
            "id": "RUNTIME-ACTION-AUTH-ASSET-REGISTRAR-IDENTITY-REJECT",
            "kind": "attack_reproduction",
            "path": (
                "crates/core/component/compliance/src/structs.rs"
            ),
            "symbol": (
                "asset_registration_grant_rejects_identity_registrar_key"
            ),
        },
        {
            "id": "RUNTIME-ACTION-AUTH-GENESIS-IDENTITY-REJECT",
            "kind": "attack_reproduction",
            "path": (
                "crates/core/component/compliance/src/genesis.rs"
            ),
            "symbol": "genesis_rejects_identity_authorization_keys",
        },
        {
            "id": "RUNTIME-ACTION-AUTH-NETWORK-VALIDATOR-IDENTITY-REJECT",
            "kind": "attack_reproduction",
            "path": "crates/bin/pd/src/network/generate.rs",
            "symbol": (
                "validator_conversion_rejects_identity_authorization_key_"
                "without_panicking"
            ),
        },
        {
            "id": "RUNTIME-ACTION-AUTH-GOVERNANCE-IDENTITY-REJECT",
            "kind": "attack_reproduction",
            "path": (
                "crates/core/component/stake/src/governance_key.rs"
            ),
            "symbol": "governance_key_rejects_identity",
        },
        {
            "id": "RUNTIME-ACTION-AUTH-USER-AUTHORITY-IDENTITY-REJECT",
            "kind": "attack_reproduction",
            "path": (
                "crates/core/component/compliance/src/structs.rs"
            ),
            "symbol": (
                "user_registration_grant_rejects_identity_"
                "registration_authority"
            ),
        },
        {
            "id": "RUNTIME-ACTION-AUTH-VALIDATOR-IDENTITY-REJECT",
            "kind": "attack_reproduction",
            "path": (
                "crates/core/component/stake/src/identity_key.rs"
            ),
            "symbol": "validator_identity_key_rejects_identity",
        },
        {
            "id": "RUNTIME-ACTION-PLAN-ACTION-COUNT-MISMATCH",
            "kind": "attack_reproduction",
            "path": "crates/core/transaction/src/plan.rs",
            "symbol": "apply_auth_data_rejects_action_count_mismatch",
        },
        {
            "id": "RUNTIME-ACTION-PLAN-EFFECT-HASH-MISMATCH",
            "kind": "attack_reproduction",
            "path": "crates/core/transaction/src/plan.rs",
            "symbol": (
                "apply_auth_data_rejects_supplied_effect_hash_mismatch"
            ),
        },
        {
            "id": "RUNTIME-ACTION-PLAN-FEE-FUNDING-PRESENCE-MISMATCH",
            "kind": "attack_reproduction",
            "path": "crates/core/transaction/src/plan.rs",
            "symbol": (
                "apply_auth_data_rejects_fee_funding_presence_mismatch"
            ),
        },
        {
            "id": "RUNTIME-ACTION-PLAN-MISSING-EFFECT-HASH",
            "kind": "attack_reproduction",
            "path": "crates/core/transaction/src/plan.rs",
            "symbol": (
                "apply_auth_data_rejects_missing_effect_hash_"
                "for_proof_bearing_plan"
            ),
        },
        {
            "id": "RUNTIME-ACTION-PLAN-NOTE-RESHAPE-FAMILY-MISMATCH",
            "kind": "attack_reproduction",
            "path": "crates/core/transaction/src/plan.rs",
            "symbol": (
                "apply_auth_data_rejects_note_reshape_family_mismatch"
            ),
        },
        {
            "id": "RUNTIME-AGGREGATE-BAD-SRS-REJECTION",
            "kind": "negative",
            "path": _APP,
            "symbol": (
                "aggregate_bundle_verification_rejects_bad_srs_id_before_"
                "srs_setup"
            ),
        },
        {
            "id": "RUNTIME-AGGREGATE-HEADER-REJECTION",
            "kind": "negative",
            "path": _APP,
            "symbol": (
                "aggregate_bundle_verification_rejects_bad_version_srs_and_"
                "family_count"
            ),
        },
        {
            "id": "RUNTIME-AGGREGATE-INCOMPLETE-SEGMENT-COVERAGE",
            "kind": "negative",
            "path": _APP,
            "symbol": (
                "aggregate_verify_plan_header_rejects_incomplete_segment_"
                "coverage"
            ),
        },
        {
            "id": "RUNTIME-AGGREGATE-JOIN-FAIL-CLOSED",
            "kind": "negative",
            "path": _APP,
            "symbol": "aggregate_verify_join_rejection_guard_is_fail_closed",
        },
        {
            "id": "RUNTIME-AGGREGATE-PLAN-COUNT-ORDER",
            "kind": "invariant",
            "path": _APP,
            "symbol": (
                "aggregate_verify_planner_preserves_segment_order_and_checks_"
                "counts"
            ),
        },
        {
            "id": "RUNTIME-AGGREGATE-REDUCER-FAIL-CLOSED",
            "kind": "negative",
            "path": _APP,
            "symbol": (
                "aggregate_verify_reducer_is_order_independent_and_rejects_"
                "exact_calls"
            ),
        },
        {
            "id": "RUNTIME-AGGREGATE-SEGMENT-ORDER",
            "kind": "invariant",
            "path": _APP,
            "symbol": "aggregate_expected_segments_preserve_segment_and_family_order",
        },
        {
            "id": "RUNTIME-AGGREGATE-SHIPPING-INPUT-BINDING",
            "kind": "invariant",
            "path": _APP,
            "symbol": "async_verifier_outcome_retains_its_exact_shipping_input",
        },
        {
            "id": "RUNTIME-AGGREGATE-TX-SHAPE",
            "kind": "negative",
            "path": _APP,
            "symbol": (
                "ensure_aggregate_bundle_tx_shape_rejects_memo_fee_and_extra_"
                "action"
            ),
        },
        {
            "id": "RUNTIME-PREPARED-PROPOSAL-EXACT-REUSE",
            "kind": "boundary_negative",
            "path": _CONSENSUS,
            "symbol": (
                "prepared_proposal_reuse_requires_same_height_exact_digest_"
                "and_normal_mode"
            ),
        },
        {
            "id": "RUNTIME-CAPABILITY-COMPACT-RETENTION",
            "kind": "invariant",
            "path": _BATCH,
            "symbol": (
                "verified_capability_retains_only_one_item_and_compact_key_id"
            ),
        },
        {
            "id": "RUNTIME-CAPABILITY-KEY-ITEM-ORDER-BINDING",
            "kind": "negative",
            "path": _BATCH,
            "symbol": "verified_capabilities_bind_exact_key_item_and_order",
        },
        {
            "id": "RUNTIME-CACHE-AGGREGATE-BYTE-BOUND",
            "kind": "boundary_negative",
            "path": _CACHE,
            "symbol": "aggregate_raw_byte_budget_evicts_entries",
        },
        {
            "id": "RUNTIME-CACHE-CAPABILITY-BINDING",
            "kind": "negative",
            "path": _CACHE,
            "symbol": (
                "verified_artifact_capability_rows_reject_every_coverage_"
                "and_binding_mismatch"
            ),
        },
        {
            "id": "RUNTIME-CACHE-CLOCK-DRIFT",
            "kind": "negative",
            "path": _CACHE,
            "symbol": (
                "clock_invariant_drift_clears_cache_instead_of_exceeding_limits"
            ),
        },
        {
            "id": "RUNTIME-CACHE-DISTINCT-RAW-IDENTITIES",
            "kind": "negative",
            "path": _CACHE,
            "symbol": "distinct_raw_transactions_derive_distinct_cache_entries",
        },
        {
            "id": "RUNTIME-CACHE-ENTRY-COUNT-BOUND",
            "kind": "boundary_negative",
            "path": _CACHE,
            "symbol": (
                "entry_count_budget_evicts_independently_of_raw_byte_budget"
            ),
        },
        {
            "id": "RUNTIME-CACHE-EXACT-BYTE-BINDING",
            "kind": "negative",
            "path": _CACHE,
            "symbol": "digest_match_never_reuses_entry_for_different_bytes",
        },
        {
            "id": "RUNTIME-CACHE-IDEMPOTENT-REINSERTION",
            "kind": "invariant",
            "path": _CACHE,
            "symbol": (
                "reinsertion_of_same_bytes_preserves_raw_byte_accounting"
            ),
        },
        {
            "id": "RUNTIME-CACHE-OVERSIZED-BYPASS",
            "kind": "boundary_negative",
            "path": _CACHE,
            "symbol": "oversized_transactions_are_never_retained",
        },
        {
            "id": "RUNTIME-CACHE-PROTECTED-CLOCK-DRIFT",
            "kind": "negative",
            "path": _CACHE,
            "symbol": (
                "protected_only_clock_drift_is_bounded_and_clears_cache"
            ),
        },
        {
            "id": "RUNTIME-CACHE-RAW-ARTIFACT-BINDING",
            "kind": "negative",
            "path": _CACHE,
            "symbol": (
                "valid_cache_entries_reject_raw_transaction_artifact_mismatch"
            ),
        },
        {
            "id": "RUNTIME-CACHE-SUSTAINED-CHURN",
            "kind": "boundary_negative",
            "path": _CACHE,
            "symbol": "sustained_post_cap_churn_stays_within_both_limits",
        },
        {
            "id": "RUNTIME-CHECKTX-CONCURRENCY",
            "kind": "boundary_negative",
            "path": _MEMPOOL,
            "symbol": "checktx_concurrency_is_bounded_for_all_hardware_sizes",
        },
        {
            "id": "RUNTIME-CHECKTX-FRONTDOOR-SIZE",
            "kind": "boundary_negative",
            "path": _MEMPOOL,
            "symbol": "oversized_checktx_frontdoor_rejects_at_fixed_limit",
        },
        {
            "id": "RUNTIME-CHECKTX-INNER-SIZE",
            "kind": "boundary_negative",
            "path": _APP,
            "symbol": "oversized_checktx_bytes_reject_before_decode_or_cache",
        },
        {
            "id": "RUNTIME-DEPLOYED-PROOF-KEY-MAPPING",
            "kind": "invariant",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "note_reshape/proof.rs"
            ),
            "symbol": (
                "note_reshape_deployed_key_mapping_matches_generated_registry_"
                "for_every_family"
            ),
        },
        {
            "id": "RUNTIME-DEPLOYED-PROOF-KEY-REGISTRY",
            "kind": "invariant",
            "path": "crates/crypto/proof-params/src/lib.rs",
            "symbol": (
                "deployed_proof_key_registry_is_exhaustive_and_pairwise_"
                "distinct"
            ),
        },
        {
            "id": "RUNTIME-DEPLOYED-WITHDRAWAL-PROOF-KEY-MAPPING",
            "kind": "invariant",
            "path": (
                "crates/core/component/shielded-pool/src/"
                "shielded_ics20_withdrawal/proof.rs"
            ),
            "symbol": (
                "withdrawal_deployed_key_mapping_matches_generated_registry_"
                "for_every_family"
            ),
        },
        {
            "id": "RUNTIME-FFI-CHECKTX-PROOF-FRONTDOOR",
            "kind": "negative",
            "path": _FFI,
            "symbol": "ffi_execution_check_tx_rejects_invalid_transaction",
        },
        {
            "id": "RUNTIME-FFI-DELIVERTX-PROOF-FRONTDOOR",
            "kind": "negative",
            "path": _FFI,
            "symbol": "ffi_execution_deliver_tx_rejects_invalid_transaction",
        },
        {
            "id": "RUNTIME-GRPC-CHECKTX-PROOF-FRONTDOOR",
            "kind": "negative",
            "path": _GRPC,
            "symbol": "grpc_execution_check_tx_rejects_invalid_transaction",
        },
        {
            "id": "RUNTIME-GRPC-DELIVERTX-PROOF-FRONTDOOR",
            "kind": "negative",
            "path": _GRPC,
            "symbol": "grpc_execution_deliver_tx_rejects_invalid_transaction",
        },
        {
            "id": "RUNTIME-HOST-CHECKTX-PROOF-FRONTDOOR",
            "kind": "negative",
            "path": _HOST,
            "symbol": (
                "host_execution_check_tx_rejects_invalid_tx_without_entering_block"
            ),
        },
        {
            "id": "RUNTIME-HOST-DELIVERTX-PROOF-FRONTDOOR",
            "kind": "integration",
            "path": _APP_PROOF_TESTS,
            "symbol": (
                "fv_runtime_host_delivery_rejects_invalid_groth16_cold_"
                "and_after_checktx"
            ),
        },
        {
            "id": "RUNTIME-NO-CONSENSUS-DIAGNOSTIC-IO",
            "kind": "negative",
            "path": _APP,
            "symbol": "consensus_acceptance_source_has_no_diagnostic_io",
        },
        {
            "id": "RUNTIME-PROCESS-INDEPENDENT-REVERIFICATION",
            "kind": "negative",
            "path": _APP_PROOF_TESTS,
            "symbol": (
                "fv_runtime_process_proposal_rejects_decodable_invalid_groth16"
            ),
        },
        {
            "id": "RUNTIME-FEE-FUNDING-PROOF-SLOT-REJECTION",
            "kind": "negative",
            "path": _APP_PROOF_TESTS,
            "symbol": (
                "fv_runtime_fee_funding_process_proposal_rejects_invalid_"
                "groth16"
            ),
        },
        {
            "id": "RUNTIME-FEE-FUNDING-PROOF-SLOT-PERSISTENCE",
            "kind": "integration",
            "path": _APP_PROOF_TESTS,
            "symbol": "fv_runtime_fee_funding_valid_proof_executes_and_persists",
        },
        {
            "id": "RUNTIME-PROOF-WORKER-CONCURRENCY",
            "kind": "boundary_negative",
            "path": _APP,
            "symbol": "proof_worker_concurrency_is_bounded_for_all_hardware_sizes",
        },
        {
            "id": "RUNTIME-PROPOSAL-NULLIFIER-COUNT",
            "kind": "boundary_negative",
            "path": _APP,
            "symbol": "proposal_nullifier_count_policy_is_fixed_at_boundary",
        },
        {
            "id": "RUNTIME-PROPOSAL-TX-COUNT",
            "kind": "boundary_negative",
            "path": _APP,
            "symbol": "proposal_tx_count_policy_is_fixed_at_boundary",
        },
        {
            "id": "RUNTIME-PROPOSAL-TX-PAYLOAD",
            "kind": "boundary_negative",
            "path": _APP,
            "symbol": "proposal_payload_size_policy_is_fixed_at_boundary",
        },
        {
            "id": "RUNTIME-PROPOSAL-TX-SIZE",
            "kind": "boundary_negative",
            "path": _APP,
            "symbol": "proposal_transaction_size_policy_is_fixed_at_boundary",
        },
        {
            "id": "RUNTIME-RAW-NOTE-RESHAPE-CAPABILITY-GATE",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/component/"
                "action_handler/note_reshape_action.rs"
            ),
            "symbol": (
                "note_reshape_projection_matches_and_raw_execution_fails_"
                "closed_for_every_family"
            ),
        },
        {
            "id": "RUNTIME-RAW-TRANSFER-CAPABILITY-GATE",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/component/"
                "action_handler/transfer.rs"
            ),
            "symbol": (
                "raw_transfer_execution_fails_closed_without_verified_capability"
            ),
        },
        {
            "id": "RUNTIME-RAW-WITHDRAWAL-CAPABILITY-GATE",
            "kind": "negative",
            "path": (
                "crates/core/component/shielded-pool/src/component/"
                "action_handler/shielded_ics20_withdrawal.rs"
            ),
            "symbol": (
                "raw_withdrawal_execution_fails_closed_without_verified_"
                "capability"
            ),
        },
        {
            "id": "RUNTIME-STRUCTURED-TASK-DRAIN",
            "kind": "negative",
            "path": _APP,
            "symbol": "structured_join_drain_waits_for_siblings_after_error",
        },
        {
            "id": "RUNTIME-STRUCTURED-TRANSACTION-TASK-DRAIN",
            "kind": "negative",
            "path": _TRANSACTION,
            "symbol": (
                "structured_join_drain_waits_for_transaction_siblings_after_error"
            ),
        },
        {
            "id": "RUNTIME-TIMESTAMP-CENTRAL-ZERO-DRIFT",
            "kind": "boundary_negative",
            "path": "crates/core/component/compliance/src/registry.rs",
            "symbol": "timestamp_freshness_rejects_zero_and_outside_window",
        },
        {
            "id": "RUNTIME-TIMESTAMP-CURRENT-BOUNDARY",
            "kind": "invariant",
            "path": "crates/core/component/compliance/src/registry.rs",
            "symbol": (
                "timestamp_freshness_accepts_current_and_exact_boundaries"
            ),
        },
        {
            "id": "RUNTIME-TIMESTAMP-NEGATIVE-CONSENSUS",
            "kind": "boundary_negative",
            "path": "crates/core/component/compliance/src/registry.rs",
            "symbol": "timestamp_freshness_rejects_negative_consensus_time",
        },
        {
            "id": "RUNTIME-TIMESTAMP-SIGNED-PARITY",
            "kind": "parity",
            "path": "crates/core/component/compliance/src/registry.rs",
            "symbol": (
                "timestamp_freshness_signed_conversion_matches_u64_policy"
            ),
        },
        {
            "id": "RUNTIME-TRANSACTION-ACTION-COUNT",
            "kind": "boundary_negative",
            "path": _TRANSACTION,
            "symbol": "transaction_action_count_policy_is_fixed_at_boundary",
        },
        {
            "id": "RUNTIME-TRANSACTION-CANONICAL-DECODE",
            "kind": "negative",
            "path": "crates/core/transaction/src/transaction.rs",
            "symbol": (
                "canonical_decode_accepts_exact_encoding_and_rejects_unknown_"
                "fields"
            ),
        },
        {
            "id": "RUNTIME-TRANSACTION-NULLIFIER-COUNT",
            "kind": "boundary_negative",
            "path": _TRANSACTION,
            "symbol": "transaction_nullifier_count_policy_is_fixed_at_boundary",
        },
        {
            "id": "RUNTIME-TRANSACTION-NULLIFIER-PARITY-MIXED",
            "kind": "invariant",
            "path": "crates/core/transaction/src/transaction.rs",
            "symbol": "proof_and_nullifier_counts_cover_mixed_shielded_families",
        },
        {
            "id": "RUNTIME-TRANSACTION-NULLIFIER-PARITY-TRANSFER-FEE",
            "kind": "invariant",
            "path": "crates/core/transaction/src/transaction.rs",
            "symbol": "transfer_counts_as_nullifier_and_state_commitment_source",
        },
    ]
    runtime_tests.sort(key=lambda row: row["id"])
    for row in runtime_tests:
        row["execution"] = execution_for(row)

    policies = [
        {
            "id": "RUNTIME-POLICY-ACTION-AUTHORIZATION",
            "statement": (
                "Every direct-signature transaction Action verifies its "
                "canonical signed body under a nonidentity action-specific "
                "key and enforces its state authorization before mutation. "
                "The exact regressions are executed by the formal evidence "
                "receipt."
            ),
            "parameters": {
                "action_variants": 9,
                "circuit_and_envelope_authorized": 3,
                "construction_mismatch_regressions": 5,
                "direct_signature_and_state_authorized": 5,
                "identity_attack_regressions": 7,
                "permissionless_protocol_authorized": 1,
            },
            "sinks": ["check_tx", "verified_execution"],
            "test_ids": [
                "RUNTIME-ACTION-AUTH-ASSET-POLICY-IDENTITY-REJECT",
                "RUNTIME-ACTION-AUTH-ASSET-REGISTRAR-IDENTITY-REJECT",
                "RUNTIME-ACTION-AUTH-GENESIS-IDENTITY-REJECT",
                "RUNTIME-ACTION-AUTH-GOVERNANCE-IDENTITY-REJECT",
                "RUNTIME-ACTION-AUTH-NETWORK-VALIDATOR-IDENTITY-REJECT",
                "RUNTIME-ACTION-AUTH-USER-AUTHORITY-IDENTITY-REJECT",
                "RUNTIME-ACTION-AUTH-VALIDATOR-IDENTITY-REJECT",
                "RUNTIME-ACTION-PLAN-ACTION-COUNT-MISMATCH",
                "RUNTIME-ACTION-PLAN-EFFECT-HASH-MISMATCH",
                "RUNTIME-ACTION-PLAN-FEE-FUNDING-PRESENCE-MISMATCH",
                "RUNTIME-ACTION-PLAN-MISSING-EFFECT-HASH",
                "RUNTIME-ACTION-PLAN-NOTE-RESHAPE-FAMILY-MISMATCH",
            ],
        },
        {
            "id": "RUNTIME-POLICY-CACHE-BOUNDS",
            "statement": (
                "Stateless proof artifacts are reusable only for byte-exact "
                "transactions within fixed entry, per-item, and retained "
                "raw-byte bounds."
            ),
            "parameters": {
                "max_cacheable_raw_tx_bytes": 96 * 1024,
                "max_entries": 4_096,
                "max_retained_raw_tx_bytes": 64 * 1024 * 1024,
            },
            "sinks": ["check_tx", "prepare_proposal", "process_proposal"],
            "test_ids": sorted(
                row["id"]
                for row in runtime_tests
                if row["id"].startswith("RUNTIME-CACHE-")
                and row["id"]
                not in {
                    "RUNTIME-CACHE-CAPABILITY-BINDING",
                    "RUNTIME-CACHE-RAW-ARTIFACT-BINDING",
                }
            ),
        },
        {
            "id": "RUNTIME-POLICY-CHECKTX-CONCURRENCY",
            "statement": (
                "CheckTx admission uses fixed hardware-clamped concurrency "
                "ceilings and has no environment-controlled expansion."
            ),
            "parameters": {
                "max_heavywork": 32,
                "max_total": 64,
                "min_total": 8,
            },
            "sinks": ["check_tx"],
            "test_ids": ["RUNTIME-CHECKTX-CONCURRENCY"],
        },
        {
            "id": "RUNTIME-POLICY-EXACT-PROOF-CAPABILITIES",
            "statement": (
                "Every proof-bearing action is bound to its exact deployed "
                "Groth16 key, public inputs, and action slot before execution "
                "or verified-cache promotion. CheckTx and PrepareProposal "
                "verify individual proofs independently. ProcessProposal "
                "verifies the production aggregate bundle against reconstructed "
                "exact statements, except that the byte-exact digest of a "
                "same-height proposal produced locally by PrepareProposal may "
                "reuse that completed verification."
            ),
            "parameters": {
                "aggregate_statement_binding": 1,
                "deployed_proof_keys": 4,
                "fee_funding_slot_binding": 1,
                "fee_funding_state_persistence": 1,
                "process_unprepared_aggregate_verification": 1,
                "production_aggregate_transport": 1,
                "proof_slot_binding": 1,
                "same_height_exact_prepared_reuse": 1,
            },
            "sinks": [
                "check_tx",
                "prepare_proposal",
                "process_proposal",
                "verified_execution",
            ],
            "test_ids": [
                "RUNTIME-AGGREGATE-BAD-SRS-REJECTION",
                "RUNTIME-AGGREGATE-HEADER-REJECTION",
                "RUNTIME-AGGREGATE-INCOMPLETE-SEGMENT-COVERAGE",
                "RUNTIME-AGGREGATE-JOIN-FAIL-CLOSED",
                "RUNTIME-AGGREGATE-PLAN-COUNT-ORDER",
                "RUNTIME-AGGREGATE-REDUCER-FAIL-CLOSED",
                "RUNTIME-AGGREGATE-SEGMENT-ORDER",
                "RUNTIME-AGGREGATE-SHIPPING-INPUT-BINDING",
                "RUNTIME-AGGREGATE-TX-SHAPE",
                "RUNTIME-CACHE-CAPABILITY-BINDING",
                "RUNTIME-CACHE-RAW-ARTIFACT-BINDING",
                "RUNTIME-CAPABILITY-COMPACT-RETENTION",
                "RUNTIME-CAPABILITY-KEY-ITEM-ORDER-BINDING",
                "RUNTIME-DEPLOYED-PROOF-KEY-MAPPING",
                "RUNTIME-DEPLOYED-PROOF-KEY-REGISTRY",
                "RUNTIME-DEPLOYED-WITHDRAWAL-PROOF-KEY-MAPPING",
                "RUNTIME-FEE-FUNDING-PROOF-SLOT-PERSISTENCE",
                "RUNTIME-FEE-FUNDING-PROOF-SLOT-REJECTION",
                "RUNTIME-PREPARED-PROPOSAL-EXACT-REUSE",
                "RUNTIME-PROCESS-INDEPENDENT-REVERIFICATION",
                "RUNTIME-RAW-NOTE-RESHAPE-CAPABILITY-GATE",
                "RUNTIME-RAW-TRANSFER-CAPABILITY-GATE",
                "RUNTIME-RAW-WITHDRAWAL-CAPABILITY-GATE",
            ],
        },
        {
            "id": "RUNTIME-POLICY-NO-CONSENSUS-DIAGNOSTIC-IO",
            "statement": (
                "PrepareProposal and ProcessProposal perform no local "
                "environment-controlled or filesystem diagnostic work."
            ),
            "parameters": {"diagnostic_io_enabled": 0},
            "sinks": ["prepare_proposal", "process_proposal"],
            "test_ids": ["RUNTIME-NO-CONSENSUS-DIAGNOSTIC-IO"],
        },
        {
            "id": "RUNTIME-POLICY-PROOF-ACCEPTANCE-FRONTDOORS",
            "statement": (
                "FFI, gRPC, and host CheckTx and DeliverTx front doors reject "
                "an invalid transaction dynamically while the closed static "
                "acceptance census covers every production sink."
            ),
            "parameters": {
                "ffi_frontdoors": 2,
                "grpc_frontdoors": 2,
                "host_frontdoors": 2,
                "static_sink_census_required": 1,
            },
            "sinks": [
                "ffi_check_tx",
                "ffi_deliver_tx",
                "grpc_check_tx",
                "grpc_deliver_tx",
                "host_check_tx",
                "host_deliver_tx",
            ],
            "test_ids": [
                "RUNTIME-FFI-CHECKTX-PROOF-FRONTDOOR",
                "RUNTIME-FFI-DELIVERTX-PROOF-FRONTDOOR",
                "RUNTIME-GRPC-CHECKTX-PROOF-FRONTDOOR",
                "RUNTIME-GRPC-DELIVERTX-PROOF-FRONTDOOR",
                "RUNTIME-HOST-CHECKTX-PROOF-FRONTDOOR",
                "RUNTIME-HOST-DELIVERTX-PROOF-FRONTDOOR",
            ],
        },
        {
            "id": "RUNTIME-POLICY-PROOF-WORKER-CONCURRENCY",
            "statement": (
                "Independent verification dispatches at most four family "
                "workers. Aggregate construction runs at most two segments "
                "with four family workers each, and aggregate verification "
                "runs at most four blocking calls at once."
            ),
            "parameters": {
                "max_aggregate_segment_workers": 2,
                "max_aggregate_verify_workers": 4,
                "max_exact_family_workers": 4,
                "max_nested_aggregate_build_workers": 8,
            },
            "sinks": [
                "check_tx",
                "prepare_proposal",
                "process_proposal",
                "proof_workers",
            ],
            "test_ids": ["RUNTIME-PROOF-WORKER-CONCURRENCY"],
        },
        {
            "id": "RUNTIME-POLICY-STRUCTURED-CONCURRENCY",
            "statement": (
                "Proof and transaction worker groups drain all spawned work "
                "before returning the first failure."
            ),
            "parameters": {"drain_before_error_return": 1},
            "sinks": [
                "check_tx",
                "prepare_proposal",
                "process_proposal",
                "proof_workers",
            ],
            "test_ids": [
                "RUNTIME-STRUCTURED-TASK-DRAIN",
                "RUNTIME-STRUCTURED-TRANSACTION-TASK-DRAIN",
            ],
        },
        {
            "id": "RUNTIME-POLICY-TIMESTAMP-FRESHNESS",
            "statement": (
                "Transfer and Withdrawal share one pure timestamp checker that "
                "rejects target zero and negative signed consensus time before "
                "conversion, then enforces the inclusive fixed ±3600-second "
                "drift window."
            ),
            "parameters": {
                "consensus_timestamp_nonnegative": 1,
                "max_drift_seconds": 3_600,
                "target_timestamp_nonzero": 1,
            },
            "sinks": ["transfer_execute", "withdrawal_execute"],
            "test_ids": [
                "RUNTIME-TIMESTAMP-CENTRAL-ZERO-DRIFT",
                "RUNTIME-TIMESTAMP-CURRENT-BOUNDARY",
                "RUNTIME-TIMESTAMP-NEGATIVE-CONSENSUS",
                "RUNTIME-TIMESTAMP-SIGNED-PARITY",
            ],
        },
        {
            "id": "RUNTIME-POLICY-TRANSACTION-BOUNDS",
            "statement": (
                "CheckTx, PrepareProposal, and ProcessProposal enforce fixed "
                "transaction byte, action, spend-nullifier, block "
                "spend-nullifier, block payload, and proposal count bounds. "
                "Canonical native counting includes fee-funding Transfer "
                "inputs."
            ),
            "parameters": {
                "max_block_nullifiers": 32_768,
                "max_block_payload_bytes": 1024 * 1024,
                "max_block_tx_count": 4_096,
                "max_prepare_candidate_tx_count": 4_096,
                "max_transaction_actions": 512,
                "max_transaction_bytes": 96 * 1024,
                "max_transaction_nullifiers": 256,
            },
            "sinks": ["check_tx", "prepare_proposal", "process_proposal"],
            "test_ids": [
                "RUNTIME-CHECKTX-FRONTDOOR-SIZE",
                "RUNTIME-CHECKTX-INNER-SIZE",
                "RUNTIME-PROPOSAL-NULLIFIER-COUNT",
                "RUNTIME-PROPOSAL-TX-COUNT",
                "RUNTIME-PROPOSAL-TX-PAYLOAD",
                "RUNTIME-PROPOSAL-TX-SIZE",
                "RUNTIME-TRANSACTION-ACTION-COUNT",
                "RUNTIME-TRANSACTION-CANONICAL-DECODE",
                "RUNTIME-TRANSACTION-NULLIFIER-COUNT",
                "RUNTIME-TRANSACTION-NULLIFIER-PARITY-MIXED",
                "RUNTIME-TRANSACTION-NULLIFIER-PARITY-TRANSFER-FEE",
            ],
        },
    ]
    owned_test_ids = {
        test_id
        for policy in policies
        for test_id in policy["test_ids"]
    }
    declared_test_ids = {row["id"] for row in runtime_tests}
    if owned_test_ids != declared_test_ids:
        raise ValueError(
            "runtime policy test ownership drifted: "
            f"missing={sorted(declared_test_ids-owned_test_ids)}, "
            f"extra={sorted(owned_test_ids-declared_test_ids)}"
        )
    return {"policies": policies, "tests": runtime_tests}

def _evidence_test_id(prefix: str, symbol: str) -> str:
    words = re.sub(r"(.)([A-Z][a-z]+)", r"\1-\2", symbol)
    words = re.sub(r"([a-z0-9])([A-Z])", r"\1-\2", words)
    words = re.sub(r"[^A-Za-z0-9]+", "-", words).strip("-").upper()
    return f"{prefix}-{words}"


def _merge_owner_specs(
    primary: dict[str, tuple[tuple[str, str, str], ...]],
    additions: dict[str, tuple[tuple[str, str, str], ...]],
) -> dict[str, tuple[tuple[str, str, str], ...]]:
    merged = dict(primary)
    for owner_id, specs in additions.items():
        merged[owner_id] = (*merged.get(owner_id, ()), *specs)
    return merged


def _owned_test_contract(
    prefix: str,
    source_census: tuple[str, ...],
    owner_specs: dict[str, tuple[tuple[str, str, str], ...]],
) -> dict:
    source_paths = set(source_census)
    tests: list[dict] = []
    owners: list[dict] = []
    for owner_id, specs in owner_specs.items():
        test_ids: list[str] = []
        for kind, path, symbol in specs:
            if path not in source_paths:
                raise ValueError(
                    f"{owner_id}/{symbol}: source is outside the closed census"
                )
            test_id = _evidence_test_id(prefix, symbol)
            test_ids.append(test_id)
            row = {
                "id": test_id,
                "kind": kind,
                "path": path,
                "symbol": symbol,
            }
            row["execution"] = execution_for(row)
            tests.append(row)
        owners.append({"id": owner_id, "test_ids": sorted(test_ids)})
    ids = [row["id"] for row in tests]
    if len(ids) != len(set(ids)):
        raise ValueError(f"{prefix}: duplicate owned evidence test IDs")
    return {
        "owners": sorted(owners, key=lambda owner: owner["id"]),
        "source_census": sorted(source_census),
        "tests": sorted(tests, key=lambda test: test["id"]),
    }


_STATEMENT_HASH_TESTS = (
    "crates/core/component/shielded-pool/src/public_input_hash.rs"
)
_GNARK_BINARY_TESTS = (
    "crates/core/component/shielded-pool/src/gnark/binary.rs"
)
_GNARK_TYPED_TESTS = (
    "crates/core/component/shielded-pool/src/gnark/typed.rs"
)
_GNARK_NOTE_RESHAPE_TESTS = (
    "crates/core/component/shielded-pool/src/gnark/note_reshape.rs"
)
_GNARK_TRANSFER_TESTS = (
    "crates/core/component/shielded-pool/src/gnark/transfer.rs"
)
_GNARK_WITHDRAWAL_TESTS = (
    "crates/core/component/shielded-pool/src/gnark/"
    "shielded_ics20_withdrawal.rs"
)
_GNARK_PROOF_RESULT_TESTS = (
    "crates/core/component/shielded-pool/src/gnark/"
    "transfer_proof_result.rs"
)
_GO_ABI_BINARY_TESTS = "tools/gnark/internal/abi/binary_shared_test.go"
_GO_ABI_STATEMENT_TESTS = "tools/gnark/internal/abi/statement_fields_test.go"
_GO_ABI_WITNESS_TESTS = "tools/gnark/internal/abi/witness_family_test.go"
_GNARKCTL_TESTS = "tools/gnark/cmd/gnarkctl/main_test.go"
_COMPLIANCE_STRUCTS_TESTS = (
    "crates/core/component/compliance/src/structs.rs"
)
_TRANSACTION_PLAN_TESTS = "crates/core/transaction/src/plan.rs"
_NOTE_RESHAPE_ACTION_TESTS = (
    "crates/core/component/shielded-pool/src/note_reshape/action.rs"
)


def property_test_contract() -> dict:
    return _owned_test_contract(
        "PROPERTY",
        tuple(sorted({
            _STATEMENT_HASH_TESTS,
            _GNARK_BINARY_TESTS,
            _GNARK_TYPED_TESTS,
            _GNARK_NOTE_RESHAPE_TESTS,
            _GNARK_TRANSFER_TESTS,
            _GNARK_WITHDRAWAL_TESTS,
            _GNARK_PROOF_RESULT_TESTS,
            _GO_ABI_BINARY_TESTS,
            _GO_ABI_STATEMENT_TESTS,
            _GO_ABI_WITNESS_TESTS,
            _GNARKCTL_TESTS,
            _COMPLIANCE_STRUCTS_TESTS,
            _TRANSACTION_PLAN_TESTS,
            _NOTE_RESHAPE_ACTION_TESTS,
            *rust_evidence.PROPERTY_SOURCE_CENSUS,
        })),
        _merge_owner_specs({
            "FIXED-ARITY-PRIVACY": (
                (
                    "invariant",
                    _NOTE_RESHAPE_ACTION_TESTS,
                    "note_reshape_public_encodings_have_no_dummy_flags_after_redesign",
                ),
                (
                    "invariant",
                    _TRANSACTION_PLAN_TESTS,
                    "routing_parameters_propagate_to_transfer_family",
                ),
                (
                    "invariant",
                    _TRANSACTION_PLAN_TESTS,
                    "shielded_ics20_withdrawal_counts_change_output_for_routing",
                ),
                (
                    "invariant",
                    _TRANSACTION_PLAN_TESTS,
                    "shielded_ics20_withdrawal_without_explicit_change_still_counts_hidden_routing_note",
                ),
            ),
            "REGULATED-STATUS-SOUNDNESS": (
                (
                    "parity",
                    _COMPLIANCE_STRUCTS_TESTS,
                    "test_compliance_leaf_new",
                ),
                (
                    "negative",
                    _COMPLIANCE_STRUCTS_TESTS,
                    "test_compliance_leaf_different_addresses_different_commits",
                ),
                (
                    "invariant",
                    _COMPLIANCE_STRUCTS_TESTS,
                    "test_same_slot_reuse_same_d_and_ack",
                ),
                (
                    "negative",
                    _COMPLIANCE_STRUCTS_TESTS,
                    "test_same_address_different_slots_different_d_and_ack",
                ),
                (
                    "parity",
                    _COMPLIANCE_STRUCTS_TESTS,
                    "test_compliance_leaf_proto_roundtrip",
                ),
                (
                    "boundary_negative",
                    _COMPLIANCE_STRUCTS_TESTS,
                    "test_compliance_leaf_proto_rejects_missing_d",
                ),
                (
                    "boundary_negative",
                    _COMPLIANCE_STRUCTS_TESTS,
                    "test_compliance_leaf_proto_rejects_missing_slot_derivation",
                ),
                (
                    "negative",
                    _COMPLIANCE_STRUCTS_TESTS,
                    "test_compliance_leaf_proto_rejects_mismatched_d",
                ),
                (
                    "parity",
                    _COMPLIANCE_STRUCTS_TESTS,
                    "test_asset_policy_bytes_roundtrip",
                ),
                (
                    "boundary_negative",
                    _COMPLIANCE_STRUCTS_TESTS,
                    "asset_policy_rejects_identity_crypto_keys",
                ),
                (
                    "parity",
                    _COMPLIANCE_STRUCTS_TESTS,
                    "test_asset_policy_proto_roundtrip",
                ),
                (
                    "boundary_negative",
                    _COMPLIANCE_STRUCTS_TESTS,
                    "test_asset_policy_to_bytes_rejects_overlong_route_field",
                ),
                (
                    "boundary_negative",
                    _COMPLIANCE_STRUCTS_TESTS,
                    "test_asset_policy_to_bytes_rejects_overlong_string",
                ),
                (
                    "boundary_negative",
                    _COMPLIANCE_STRUCTS_TESTS,
                    "test_asset_policy_from_bytes_rejects_missing_storage_fields",
                ),
                (
                    "boundary_negative",
                    _COMPLIANCE_STRUCTS_TESTS,
                    "test_asset_policy_proto_rejects_missing_required_fields",
                ),
                (
                    "invariant",
                    _COMPLIANCE_STRUCTS_TESTS,
                    "test_default_unregulated_policy_uses_sink_keys",
                ),
                (
                    "invariant",
                    _COMPLIANCE_STRUCTS_TESTS,
                    "merkle_path_default_is_fixed_width_and_canonical",
                ),
                (
                    "boundary_negative",
                    _COMPLIANCE_STRUCTS_TESTS,
                    "merkle_path_proto_rejects_noncanonical_shape_and_fields",
                ),
            ),
            "STATEMENT-INTEGRITY": (
                (
                    "parity",
                    _STATEMENT_HASH_TESTS,
                    "note_reshape_statement_hash_native_matches_r1cs",
                ),
                (
                    "parity",
                    _STATEMENT_HASH_TESTS,
                    "note_reshape_statement_hash_matches_go_fixtures_for_all_families",
                ),
                (
                    "negative",
                    _STATEMENT_HASH_TESTS,
                    "note_reshape_wrong_family_domain_changes_the_statement_hash",
                ),
                (
                    "boundary_negative",
                    _STATEMENT_HASH_TESTS,
                    "note_reshape_wrong_shape_is_rejected_for_all_families",
                ),
                (
                    "negative",
                    _STATEMENT_HASH_TESTS,
                    "note_reshape_wrong_statement_preimage_changes_the_hash_for_all_families",
                ),
                (
                    "invariant",
                    _STATEMENT_HASH_TESTS,
                    "note_reshape_statement_has_no_active_counts_after_redesign",
                ),
                (
                    "parity",
                    _STATEMENT_HASH_TESTS,
                    "transfer_statement_hash_native_matches_r1cs",
                ),
                (
                    "invariant",
                    _STATEMENT_HASH_TESTS,
                    "transfer_statement_binds_one_factored_metadata_record",
                ),
                (
                    "negative",
                    _STATEMENT_HASH_TESTS,
                    "transfer_statement_rejects_metadata_timestamp_drift",
                ),
                (
                    "invariant",
                    _STATEMENT_HASH_TESTS,
                    "transfer_statement_hash_commits_to_every_factored_metadata_field",
                ),
                (
                    "parity",
                    _GO_ABI_STATEMENT_TESTS,
                    "TestRustGoStatementFieldDifferential",
                ),
                (
                    "invariant",
                    _GO_ABI_STATEMENT_TESTS,
                    "TestTransferStatementBalanceIsDerivedFromWitnessInputs",
                ),
                (
                    "boundary_negative",
                    _GO_ABI_STATEMENT_TESTS,
                    "TestTransferStatementBalanceRejectsOversizedAmount",
                ),
            ),
            "WITNESS-ABI-CANONICALITY": (
                (
                    "negative",
                    _GNARK_BINARY_TESTS,
                    "read_bool_accepts_only_canonical_bytes",
                ),
                (
                    "negative",
                    _GNARK_BINARY_TESTS,
                    "read_fixed_32_rejects_fq_modulus_aliases",
                ),
                (
                    "negative",
                    _GNARK_BINARY_TESTS,
                    "read_fr_rejects_scalar_modulus_aliases",
                ),
                (
                    "boundary_negative",
                    _GNARK_BINARY_TESTS,
                    "read_u128_field_rejects_high_bits",
                ),
                (
                    "boundary_negative",
                    _GNARK_BINARY_TESTS,
                    "read_vec_32_rejects_oversized_length_before_allocation",
                ),
                (
                    "boundary_negative",
                    _GNARK_BINARY_TESTS,
                    "encode_vec_32_rejects_oversized_length",
                ),
                (
                    "boundary_negative",
                    _GNARK_BINARY_TESTS,
                    "read_triple_path_32_rejects_non_exact_length_before_allocation",
                ),
                (
                    "boundary_negative",
                    _GNARK_BINARY_TESTS,
                    "encode_triple_path_32_rejects_non_exact_length",
                ),
                (
                    "boundary_negative",
                    _GNARK_BINARY_TESTS,
                    "read_merkle_path_rejects_non_exact_layer_count_before_allocation",
                ),
                (
                    "boundary_negative",
                    _GNARK_BINARY_TESTS,
                    "read_merkle_path_rejects_oversized_sibling_count_before_allocation",
                ),
                (
                    "boundary_negative",
                    _GNARK_TYPED_TESTS,
                    "encode_merkle_path_requires_exact_depth",
                ),
                (
                    "parity",
                    _GNARK_NOTE_RESHAPE_TESTS,
                    "note_reshape_witness_v5_roundtrip",
                ),
                (
                    "negative",
                    _GNARK_NOTE_RESHAPE_TESTS,
                    "note_reshape_witness_v5_rejects_bad_magic",
                ),
                (
                    "negative",
                    _GNARK_NOTE_RESHAPE_TESTS,
                    "note_reshape_witness_v5_rejects_bad_version",
                ),
                (
                    "boundary_negative",
                    _GNARK_NOTE_RESHAPE_TESTS,
                    "note_reshape_witness_v5_rejects_bad_length",
                ),
                (
                    "parity",
                    _GNARK_TRANSFER_TESTS,
                    "transfer_witness_v18_roundtrip",
                ),
                (
                    "parity",
                    _GNARK_TRANSFER_TESTS,
                    "transfer_hidden_arity_witness_v18_roundtrip",
                ),
                (
                    "negative",
                    _GNARK_TRANSFER_TESTS,
                    "transfer_witness_v18_rejects_legacy_v15_layout",
                ),
                (
                    "parity",
                    _GNARK_WITHDRAWAL_TESTS,
                    "shielded_ics20_withdrawal_witness_v10_roundtrip",
                ),
                (
                    "negative",
                    _GNARK_WITHDRAWAL_TESTS,
                    "shielded_ics20_withdrawal_witness_v10_rejects_legacy_version",
                ),
                (
                    "negative",
                    _GNARK_WITHDRAWAL_TESTS,
                    "shielded_ics20_withdrawal_witness_v10_rejects_non_canonical_boolean_flags",
                ),
                (
                    "negative",
                    _GNARK_WITHDRAWAL_TESTS,
                    "shielded_ics20_withdrawal_witness_v10_rejects_unbalanced_amounts",
                ),
                (
                    "negative",
                    _GNARK_WITHDRAWAL_TESTS,
                    "shielded_ics20_withdrawal_witness_v10_rejects_non_blinding_balance_commitment",
                ),
                (
                    "negative",
                    _GNARK_PROOF_RESULT_TESTS,
                    "claimed_hash_parser_rejects_modulus_alias",
                ),
                (
                    "negative",
                    _GNARK_PROOF_RESULT_TESTS,
                    "proof_coordinate_parser_rejects_base_field_modulus",
                ),
                (
                    "negative",
                    _GO_ABI_BINARY_TESTS,
                    "TestRead32RejectsFqModulusAliases",
                ),
                (
                    "negative",
                    _GO_ABI_BINARY_TESTS,
                    "TestReadFr32RejectsScalarModulusAliases",
                ),
                (
                    "negative",
                    _GO_ABI_BINARY_TESTS,
                    "TestTransferComplianceMetadataRejectsFqModulusSalt",
                ),
                (
                    "boundary_negative",
                    _GO_ABI_BINARY_TESTS,
                    "TestReadU128FieldRejectsHighBits",
                ),
                (
                    "negative",
                    _GO_ABI_BINARY_TESTS,
                    "TestReadBoolAcceptsOnlyCanonicalBytes",
                ),
                (
                    "boundary_negative",
                    _GO_ABI_BINARY_TESTS,
                    "TestReadTriplePathRequiresExactDepth",
                ),
                (
                    "boundary_negative",
                    _GO_ABI_BINARY_TESTS,
                    "TestReadMerklePathRequiresExactShape",
                ),
                (
                    "boundary_negative",
                    _GO_ABI_BINARY_TESTS,
                    "TestAssignmentPathConversionRequiresExactDepth",
                ),
                (
                    "parity",
                    _GO_ABI_WITNESS_TESTS,
                    "TestWitnessFamiliesDecode",
                ),
                (
                    "invariant",
                    _GO_ABI_WITNESS_TESTS,
                    "TestShieldedIcs20WithdrawalV10FixtureBranchMatrix",
                ),
                (
                    "negative",
                    _GO_ABI_WITNESS_TESTS,
                    "TestWitnessFamiliesRejectBadHeader",
                ),
                (
                    "boundary_negative",
                    _GO_ABI_WITNESS_TESTS,
                    "TestWitnessFamiliesRejectTruncatedPayload",
                ),
                (
                    "negative",
                    _GO_ABI_WITNESS_TESTS,
                    "TestNoteReshapeV5RejectsLegacyVersion",
                ),
                (
                    "negative",
                    _GO_ABI_WITNESS_TESTS,
                    "TestTransferV18RejectsLegacyVersion",
                ),
                (
                    "negative",
                    _GO_ABI_WITNESS_TESTS,
                    "TestTransferV18AssignmentRejectsClaimedHashMismatch",
                ),
                (
                    "negative",
                    _GO_ABI_WITNESS_TESTS,
                    "TestTransferV18AssignmentRejectsSerializedSemanticMutation",
                ),
                (
                    "negative",
                    _GO_ABI_WITNESS_TESTS,
                    "TestShieldedIcs20WithdrawalV10RejectsLegacyVersion",
                ),
                (
                    "negative",
                    _GO_ABI_WITNESS_TESTS,
                    "TestShieldedIcs20WithdrawalV10AssignmentRejectsClaimedHashMismatch",
                ),
                (
                    "boundary_negative",
                    _GO_ABI_WITNESS_TESTS,
                    "TestShieldedIcs20WithdrawalV10RejectsOversizedEffectHashLimb",
                ),
                (
                    "negative",
                    _GO_ABI_WITNESS_TESTS,
                    "TestShieldedIcs20WithdrawalV10RejectsNonCanonicalBalanceBlinding",
                ),
                (
                    "negative",
                    _GO_ABI_WITNESS_TESTS,
                    "TestShieldedIcs20WithdrawalV10RejectsNonCanonicalBooleanFlags",
                ),
                (
                    "invariant",
                    _GO_ABI_WITNESS_TESTS,
                    "TestNoteReshapeWitnessPaddingABI",
                ),
                (
                    "negative",
                    _GO_ABI_WITNESS_TESTS,
                    "TestNoteReshapeV5RejectsSplitAddressRepresentationPayload",
                ),
                (
                    "parity",
                    _GNARKCTL_TESTS,
                    "TestWitnessFormatVersionReadsBoundPayloadHeader",
                ),
                (
                    "boundary_negative",
                    _GNARKCTL_TESTS,
                    "TestWitnessFormatVersionRejectsShortPayload",
                ),
            ),
        }, rust_evidence.PROPERTY_OWNER_SPECS),
    )


_RUST_ARTIFACT_TESTS = (
    "crates/core/component/shielded-pool/src/gnark/artifacts.rs"
)
_PROOF_PARAMS_ARTIFACT_TESTS = "crates/crypto/proof-params/src/lib.rs"
_GO_ARTIFACT_METADATA_TESTS = (
    "tools/gnark/internal/artifacts/artifacts_test.go"
)
_GO_ARTIFACT_JSON_TESTS = "tools/gnark/internal/artifacts/json_test.go"
_GO_ARTIFACT_KEY_TESTS = "tools/gnark/internal/artifacts/key_io_test.go"
_DLEQ_TESTS = "tools/gnark/internal/compliance/dleq_test.go"
_GO_CSHARED_TESTS = "tools/gnark/internal/cshared/cshared_test.go"
_PHASE0_TESTS = "tools/gnark/internal/primitives/phase0_test.go"
_EXTRACT_LEAN_COMMAND_TESTS = "tools/gnark/cmd/extractlean/main_test.go"
_GNARKCTL_POSEIDON_LEAN_TESTS = (
    "tools/gnark/cmd/gnarkctl/poseidon_lean_test.go"
)
_PROVER_DAEMON_TESTS = "tools/gnark/cmd/proverdaemon/main_test.go"
_LEAN_EXTRACTOR_EXPORT_TESTS = (
    "tools/gnark/third_party/gnark-lean-extractor/"
    "extractor/lean_export_test.go"
)
_LEAN_EXTRACTOR_GOLDEN_TEST_SOURCES = (
    (
        "tools/gnark/third_party/gnark-lean-extractor/"
        "extractor/test/another_circuit_test.go"
    ),
    (
        "tools/gnark/third_party/gnark-lean-extractor/"
        "extractor/test/circuit_with_parameter_test.go"
    ),
    (
        "tools/gnark/third_party/gnark-lean-extractor/"
        "extractor/test/deletion_mbu_circuit_test.go"
    ),
    (
        "tools/gnark/third_party/gnark-lean-extractor/"
        "extractor/test/merkle_recover_test.go"
    ),
    (
        "tools/gnark/third_party/gnark-lean-extractor/"
        "extractor/test/my_circuit_test.go"
    ),
    (
        "tools/gnark/third_party/gnark-lean-extractor/"
        "extractor/test/slices_optimisation_test.go"
    ),
    (
        "tools/gnark/third_party/gnark-lean-extractor/"
        "extractor/test/to_binary_circuit_test.go"
    ),
    (
        "tools/gnark/third_party/gnark-lean-extractor/"
        "extractor/test/two_gadgets_test.go"
    ),
)


def artifact_test_contract() -> dict:
    return _owned_test_contract(
        "ARTIFACT",
        tuple(sorted({
            _RUST_ARTIFACT_TESTS,
            _PROOF_PARAMS_ARTIFACT_TESTS,
            _GO_ARTIFACT_METADATA_TESTS,
            _GO_ARTIFACT_JSON_TESTS,
            _GO_ARTIFACT_KEY_TESTS,
            _DLEQ_TESTS,
            _GO_CSHARED_TESTS,
            _PHASE0_TESTS,
            _EXTRACT_LEAN_COMMAND_TESTS,
            _GNARKCTL_TESTS,
            _GNARKCTL_POSEIDON_LEAN_TESTS,
            _PROVER_DAEMON_TESTS,
            _LEAN_EXTRACTOR_EXPORT_TESTS,
            *_LEAN_EXTRACTOR_GOLDEN_TEST_SOURCES,
            *rust_evidence.ARTIFACT_SOURCE_CENSUS,
        })),
        _merge_owner_specs({
            "FV-ARTIFACT-CANONICALITY": (
                (
                    "invariant",
                    _RUST_ARTIFACT_TESTS,
                    "family_vks_expose_single_statement_hash_public_input",
                ),
                (
                    "invariant",
                    _RUST_ARTIFACT_TESTS,
                    "committed_family_artifacts_carry_verified_hashes",
                ),
                (
                    "negative",
                    _RUST_ARTIFACT_TESTS,
                    "runtime_rejects_noncanonical_metadata_and_vk_json",
                ),
                (
                    "negative",
                    _PROOF_PARAMS_ARTIFACT_TESTS,
                    "proof_params_rejects_noncanonical_metadata_and_vk_json",
                ),
                (
                    "parity",
                    _GO_ARTIFACT_METADATA_TESTS,
                    "TestLoadCircuitMetadataBytesRoundTrip",
                ),
                (
                    "invariant",
                    _GO_ARTIFACT_METADATA_TESTS,
                    "TestLoadCircuitMetadataBindsSetupProvenanceBytes",
                ),
                (
                    "negative",
                    _GO_ARTIFACT_METADATA_TESTS,
                    "TestValidateCircuitMetadataForCircuitRejectsNilCCS",
                ),
                (
                    "attack_reproduction",
                    _GO_ARTIFACT_METADATA_TESTS,
                    "TestConstraintSystemHashRejectsSameShapeWrongRelation",
                ),
                (
                    "negative",
                    _GO_ARTIFACT_JSON_TESTS,
                    "TestDecodeCanonicalVerifyingKeyJSONRejectsAlternateEncodings",
                ),
                (
                    "negative",
                    _GO_ARTIFACT_JSON_TESTS,
                    "TestDecodeCanonicalCircuitMetadataJSONRejectsOldOrAlternateEncodings",
                ),
                (
                    "negative",
                    _GO_ARTIFACT_KEY_TESTS,
                    "TestStrictGroth16KeyReadersRejectTrailingBytes",
                ),
                (
                    "negative",
                    _GO_ARTIFACT_KEY_TESTS,
                    "TestStrictGroth16KeyReadersRejectRawEncoding",
                ),
                (
                    "negative",
                    _GO_CSHARED_TESTS,
                    "TestLoadProvingKeyFromBytesRejectsTrailingBytes",
                ),
                (
                    "negative",
                    _GNARKCTL_TESTS,
                    "TestLoadKeysRejectNonCanonicalEncodings",
                ),
                (
                    "negative",
                    _GNARKCTL_TESTS,
                    "TestRunCheckVKJSONRequiresCanonicalStrictJSON",
                ),
                (
                    "negative",
                    _PROVER_DAEMON_TESTS,
                    "TestLoadContextRejectsTrailingProvingKeyBytes",
                ),
            ),
            "FV-FORMAL-TOOLCHAIN-INTEGRITY": (
                (
                    "parity",
                    _DLEQ_TESTS,
                    "TestDLEQVerifierMatchesRustFixture",
                ),
                (
                    "negative",
                    _DLEQ_TESTS,
                    "TestDLEQVerifierRejectsWrongMetadataWhenRegulated",
                ),
                (
                    "invariant",
                    _DLEQ_TESTS,
                    "TestDLEQVerifierSkipsWrongMetadataWhenUnregulated",
                ),
                (
                    "parity",
                    _DLEQ_TESTS,
                    "TestDoubleBaseScalarMulMatchesNaiveImplementation",
                ),
                (
                    "boundary_negative",
                    _GO_CSHARED_TESTS,
                    "TestProveRejectsOversizedWitnessBeforeCallback",
                ),
                (
                    "invariant",
                    _GO_CSHARED_TESTS,
                    "TestRegistryAddGetDelete",
                ),
                (
                    "boundary_negative",
                    _GO_CSHARED_TESTS,
                    "TestSafeBytesRejectsOversizedInputBeforeCopying",
                ),
                (
                    "boundary_negative",
                    _GO_CSHARED_TESTS,
                    "TestSuccessRejectsOversizedResult",
                ),
                (
                    "integration",
                    _PHASE0_TESTS,
                    "TestPhase0Groth16Bls12377RoundTrip",
                ),
                (
                    "parity",
                    _PHASE0_TESTS,
                    "TestPhase05CompanionCurveMatchesDecaf377",
                ),
                (
                    "invariant",
                    _PHASE0_TESTS,
                    "TestPhase05Poseidon377IsNotNativelyRegistered",
                ),
                (
                    "invariant",
                    _EXTRACT_LEAN_COMMAND_TESTS,
                    "TestDecafDtkIsRegistered",
                ),
                (
                    "invariant",
                    _EXTRACT_LEAN_COMMAND_TESTS,
                    "TestPoseidon2IsRegistered",
                ),
                (
                    "invariant",
                    _GNARKCTL_TESTS,
                    "TestFilesEqualUsesExactBytes",
                ),
                (
                    "invariant",
                    _GNARKCTL_TESTS,
                    "TestPoseidonLeanGeneratorOwnsRate5",
                ),
                (
                    "parity",
                    _GNARKCTL_TESTS,
                    "TestWitnessFormatVersionReadsBoundPayloadHeader",
                ),
                (
                    "boundary_negative",
                    _GNARKCTL_TESTS,
                    "TestWitnessFormatVersionRejectsShortPayload",
                ),
                (
                    "parity",
                    _GNARKCTL_TESTS,
                    "TestRunExportWiringTranscript",
                ),
                (
                    "boundary_negative",
                    _GNARKCTL_TESTS,
                    "TestRunExportWiringTranscriptRejectsUnsupportedCircuit",
                ),
                (
                    "boundary_negative",
                    _GNARKCTL_TESTS,
                    "TestValidateFVProofJobFlagsRequiresExactBranchMatrix",
                ),
                (
                    "boundary_negative",
                    _GNARKCTL_TESTS,
                    (
                        "TestValidateSetupSelfTestFlagsRequiresUnique"
                        "CasesAndWitnesses"
                    ),
                ),
                (
                    "invariant",
                    _GNARKCTL_POSEIDON_LEAN_TESTS,
                    "TestWritePoseidonLeanFixedOwnsEveryRoundConstant",
                ),
                (
                    "parity",
                    _GNARKCTL_POSEIDON_LEAN_TESTS,
                    "TestWritePoseidonLeanParityUsesCanonicalHashes",
                ),
                (
                    "invariant",
                    _LEAN_EXTRACTOR_EXPORT_TESTS,
                    "TestExportPreludeUsesFiniteHeartbeats",
                ),
                (
                    "invariant",
                    _LEAN_EXTRACTOR_EXPORT_TESTS,
                    "TestExportPreludeUsesChoiceFreeZModOperations",
                ),
                (
                    "invariant",
                    _LEAN_EXTRACTOR_EXPORT_TESTS,
                    "TestHelperScopedChoiceFreeKeepsInstancesOutOfPrelude",
                ),
                (
                    "parity",
                    _LEAN_EXTRACTOR_GOLDEN_TEST_SOURCES[0],
                    "TestAnotherCircuit",
                ),
                (
                    "parity",
                    _LEAN_EXTRACTOR_GOLDEN_TEST_SOURCES[1],
                    "TestCircuitWithParameter",
                ),
                (
                    "parity",
                    _LEAN_EXTRACTOR_GOLDEN_TEST_SOURCES[2],
                    "TestDeletionMbuCircuit",
                ),
                (
                    "parity",
                    _LEAN_EXTRACTOR_GOLDEN_TEST_SOURCES[3],
                    "TestMerkleRecover",
                ),
                (
                    "parity",
                    _LEAN_EXTRACTOR_GOLDEN_TEST_SOURCES[4],
                    "TestMyCircuit",
                ),
                (
                    "parity",
                    _LEAN_EXTRACTOR_GOLDEN_TEST_SOURCES[5],
                    "TestSlicesOptimisation",
                ),
                (
                    "parity",
                    _LEAN_EXTRACTOR_GOLDEN_TEST_SOURCES[6],
                    "TestGadgetExtraction",
                ),
                (
                    "parity",
                    _LEAN_EXTRACTOR_GOLDEN_TEST_SOURCES[6],
                    "TestToBinaryCircuit",
                ),
                (
                    "parity",
                    _LEAN_EXTRACTOR_GOLDEN_TEST_SOURCES[7],
                    "TestTwoGadgets",
                ),
                (
                    "parity",
                    _LEAN_EXTRACTOR_GOLDEN_TEST_SOURCES[7],
                    "TestExtractGadgets",
                ),
                (
                    "parity",
                    _LEAN_EXTRACTOR_GOLDEN_TEST_SOURCES[7],
                    "TestExtractGadgetsVectors",
                ),
                (
                    "parity",
                    _LEAN_EXTRACTOR_GOLDEN_TEST_SOURCES[7],
                    "TestExtractCircuits",
                ),
            ),
        }, rust_evidence.ARTIFACT_OWNER_SPECS),
    )


# These tests remain ordinary CI regressions. They are excluded only from the
# normative FV evidence ledger, so a future claim must deliberately promote
# its selector instead of silently relying on nearby coverage.
_REVIEWED_TEST_EXCLUSION_REASON = (
    "supporting_regression_not_claim_evidence"
)
_REVIEWED_TEST_EXCLUSION_REASON_BY_PATH = {
    "crates/bin/orbis-audit/src/main.rs": (
        "out_of_scope_for_four_circuit_claim"
    ),
    "crates/bin/orbis-integration/src/main.rs": (
        "out_of_scope_for_four_circuit_claim"
    ),
    "crates/util/orbis-client/src/client.rs": (
        "out_of_scope_for_four_circuit_claim"
    ),
    "crates/core/component/shielded-pool/src/component/transfer.rs": (
        "out_of_scope_for_four_circuit_claim"
    ),
    "crates/core/component/shielded-pool/src/transfer/proof.rs": (
        "alternate_fixture_not_normative"
    ),
    **{
        path: "out_of_scope_for_four_circuit_claim"
        for path in rust_evidence.OUT_OF_SCOPE_EXCLUSION_PATHS
    },
    **{
        path: "alternate_fixture_not_normative"
        for path in rust_evidence.ALTERNATE_FIXTURE_EXCLUSION_PATHS
    },
    **{
        path: "supporting_regression_not_claim_evidence"
        for path in rust_evidence.SUPPORTING_EXCLUSION_PATHS
    },
}

# Every Go test source under tools/gnark is part of one recursive reviewed
# boundary, including helper-only files with no runnable selector and files
# whose selectors are all supporting regressions. Keeping this list explicit
# prevents a newly unselected source from disappearing by construction.
_REVIEWED_GNARK_TEST_SOURCES = (
    "tools/gnark/cmd/extractlean/main_test.go",
    "tools/gnark/cmd/gnarkctl/main_test.go",
    "tools/gnark/cmd/gnarkctl/poseidon_lean_test.go",
    "tools/gnark/cmd/proverdaemon/main_test.go",
    "tools/gnark/internal/abi/binary_shared_test.go",
    "tools/gnark/internal/abi/statement_fields_test.go",
    "tools/gnark/internal/abi/witness_family_test.go",
    "tools/gnark/internal/artifacts/artifacts_test.go",
    "tools/gnark/internal/artifacts/json_test.go",
    "tools/gnark/internal/artifacts/key_io_test.go",
    "tools/gnark/internal/circuits/amount_range_test.go",
    "tools/gnark/internal/circuits/assetgap_measure_test.go",
    "tools/gnark/internal/circuits/conservation_net_balance_test.go",
    "tools/gnark/internal/circuits/decaf_gadgets_test.go",
    "tools/gnark/internal/circuits/family_test.go",
    "tools/gnark/internal/circuits/gadgets_acl2_parity_test.go",
    "tools/gnark/internal/circuits/gadgets_axe_fidelity_test.go",
    "tools/gnark/internal/circuits/note_reshape_circuit_test.go",
    "tools/gnark/internal/circuits/note_reshape_identity_test.go",
    "tools/gnark/internal/circuits/note_reshape_regression_test.go",
    "tools/gnark/internal/circuits/note_reshape_witness_roles_test.go",
    "tools/gnark/internal/circuits/profile_test.go",
    (
        "tools/gnark/internal/circuits/"
        "shielded_ics20_withdrawal_identity_full_test.go"
    ),
    (
        "tools/gnark/internal/circuits/"
        "shielded_ics20_withdrawal_identity_test.go"
    ),
    (
        "tools/gnark/internal/circuits/"
        "shielded_ics20_withdrawal_metamorphic_test.go"
    ),
    "tools/gnark/internal/circuits/transfer_identity_test.go",
    "tools/gnark/internal/circuits/transfer_layout_metamorphic_test.go",
    "tools/gnark/internal/circuits/transfer_metamorphic_test.go",
    "tools/gnark/internal/circuits/transfer_balance_optimization_test.go",
    "tools/gnark/internal/circuits/wiring_transcript_test.go",
    "tools/gnark/internal/compliance/address_encryption_test.go",
    "tools/gnark/internal/compliance/dleq_test.go",
    "tools/gnark/internal/compliance/indexed_tree_test.go",
    "tools/gnark/internal/compliance/scalar_mul_window_probe_test.go",
    "tools/gnark/internal/compliance/spend_shared_optimization_test.go",
    "tools/gnark/internal/compliance/threshold_test.go",
    "tools/gnark/internal/cshared/cshared_test.go",
    (
        "tools/gnark/internal/generated/"
        "note_reshape_families_generated_test.go"
    ),
    "tools/gnark/internal/primitives/crypto_primitives_test.go",
    "tools/gnark/internal/primitives/phase0_test.go",
    "tools/gnark/internal/primitives/statement_hash_test.go",
    "tools/gnark/internal/primitives/tct_path_test.go",
    (
        "tools/gnark/third_party/gnark-lean-extractor/"
        "extractor/lean_export_test.go"
    ),
    (
        "tools/gnark/third_party/gnark-lean-extractor/"
        "extractor/test/another_circuit_test.go"
    ),
    (
        "tools/gnark/third_party/gnark-lean-extractor/"
        "extractor/test/circuit_with_parameter_test.go"
    ),
    (
        "tools/gnark/third_party/gnark-lean-extractor/"
        "extractor/test/deletion_mbu_circuit_test.go"
    ),
    (
        "tools/gnark/third_party/gnark-lean-extractor/"
        "extractor/test/merkle_recover_test.go"
    ),
    (
        "tools/gnark/third_party/gnark-lean-extractor/"
        "extractor/test/my_circuit_test.go"
    ),
    (
        "tools/gnark/third_party/gnark-lean-extractor/"
        "extractor/test/slices_optimisation_test.go"
    ),
    (
        "tools/gnark/third_party/gnark-lean-extractor/"
        "extractor/test/to_binary_circuit_test.go"
    ),
    (
        "tools/gnark/third_party/gnark-lean-extractor/"
        "extractor/test/two_gadgets_test.go"
    ),
    (
        "tools/gnark/third_party/gnark-lean-extractor/"
        "extractor/test/utils_test.go"
    ),
)

_REVIEWED_TEST_EXCLUSION_SYMBOLS = {
    "crates/bin/orbis-audit/src/main.rs": (
        "transfer_audit_fails_closed_before_processing_input",
    ),
    "crates/bin/orbis-integration/src/command.rs": (
        "redacts_secret_assignments",
        "redacts_secret_flag_values",
    ),
    "crates/bin/orbis-integration/src/demo_config.rs": (
        "node_dial_host_can_be_env_configured",
        "node_dial_host_empty_env_uses_default",
    ),
    "crates/bin/orbis-integration/src/demo_state.rs": (
        "ledger_row_tracks_completeness",
        "malformed_state_fails",
        "typed_state_roundtrips",
    ),
    "crates/bin/orbis-integration/src/main.rs": (
        "docker_peer_id_rewrites_host_only",
        "transfer_pre_integration_fails_closed",
    ),
    "crates/bin/pcli/src/command/tx/compliance.rs": (
        "authorization_key_parsers_reject_identity",
        "parse_ibc_origin_requires_base_denom_and_route",
        "parse_ibc_policy_args_reject_unregulated_assets",
        "parse_ibc_route_rejects_chain_id_shape",
        "parse_multiple_ibc_routes_defaults_transfer_ports",
    ),
    "crates/bin/pcli/src/config.rs": (
        "toml_config",
    ),
    "crates/bin/pcli/tests/cli_surface.rs": (
        "init_help_does_not_expose_spend_terminology",
        "tx_help_exposes_only_reduced_surface_commands",
    ),
    "crates/bin/pcli/tests/testnet.rs": (
        "sync_wallet_on_public_testnet",
    ),
    "crates/bin/shieldd/src/ffi.rs": (
        "buffer_free_is_idempotent_for_the_same_buffer_struct",
        "calls_sharing_a_handle_are_serialized",
        "committed_state_is_available_through_the_ffi",
        "historical_witness_call_requires_opt_in_storage",
        "invalid_inputs_return_c_safe_statuses",
        "open_once_call_repeatedly_and_close_releases_database",
        "panics_become_status_results",
    ),
    "crates/bin/shieldd/src/service.rs": (
        "close_releases_storage_and_rejects_later_operations",
        "committed_state_survives_reopening_the_service",
        "decode_host_block_converts_valid_time",
        "decode_host_block_requires_time",
        "deliver_tx_response_has_no_withdrawals_without_a_host_action",
        "encode_withdrawals_maps_transfer_and_coin",
        "encode_withdrawals_preserves_execution_call_order_and_refund_address",
        "embedded_service_serves_a_pack_after_expanded_state_is_pruned",
    ),
    "crates/core/app/src/action_handler/transaction.rs": (
        "check_stateless_fails_on_auth_path_with_wrong_root",
        "check_stateless_succeeds_on_valid_spend",
    ),
    "crates/core/app/src/app/mod.rs": (
        "aggregate_bundle_normal_and_profiled_verification_have_result_parity",
        "aggregate_bundle_size_estimate_is_monotonic",
        "app_readiness_fails_on_corrupted_compliance_nv",
        "app_readiness_fails_on_corrupted_nullifier_tree_nv",
        "app_readiness_fails_on_corrupted_sct_nv",
        "batched_nullify_matches_repeated_nullify_and_preserves_pending_order",
        "artifact_extraction_keeps_all_note_reshape_fixed_slot_nullifiers",
        "checktx_fast_path_matches_legacy_for_supported_tx",
        "checktx_shared_context_caches_historical_context_for_snapshot",
        "checktx_cache_hit_and_miss_match_for_supported_tx",
        "checktx_no_index_does_not_record_tx_log_entries_on_app_fork",
        "deferred_batch_persists_full_tx_log_by_block_end",
        "deferred_sct_log_materializes_into_tree_and_pending_payloads",
        "deferred_sct_log_reserves_contiguous_positions",
        "deferred_sct_log_returns_error_on_position_drift",
        "ensure_aggregate_bundle_tx_shape_do_not_panic",
        "execute_validated_candidate_envelope_profiled_skips_proposal_validation",
        "fallback_prefix_drops_tail_after_exact_bundle_miss",
        "latest_snapshot_supports_parallel_reads",
        "orbis_dev_srs_selects_only_the_insecure_integration_fixture",
        "prepare_candidate_read_blocking_profiled_matches_async_fast_path",
        "prepare_candidate_read_profiled_supports_unregulated_fixture_txs",
        "prepare_proposal_does_not_reuse_stale_historical_validation_stamp",
        "prepare_proposal_reuses_fully_verified_checktx_cache_entries",
        "prepared_reads_are_blind_to_same_block_nullifier_conflicts",
        "process_candidate_envelope_profiled_accepts_valid_fixture",
        "proposal_batch_nullify_matches_sequential_and_preserves_sources",
        "selected_prefix_respects_reduced_target_size",
    ),
    "crates/core/app/src/app/host.rs": (
        "deposit_id_changes_with_host_message_index",
        "deposit_mints_note_and_rejects_replayed_host_source",
        "host_execution_begin_block_request_uses_state_chain_id_without_validators",
        "host_execution_block_lifecycle_commits_without_validators",
        "host_execution_check_tx_requires_initialized_storage",
        "host_execution_exports_checkpoint_genesis",
        "host_execution_init_genesis_commits_content_genesis",
        "host_execution_init_genesis_does_not_initialize_validator_chain_components",
        "host_source_requires_32_byte_tx_hash",
        "source_key_uses_host_tx_identity_not_deposit_contents",
    ),
    "crates/core/component/compliance/src/decode_object.rs": (
        "transfer_metadata_has_one_canonical_fixed_encoding",
        "transfer_metadata_wire_is_exactly_the_factored_record",
    ),
    "crates/core/component/compliance/src/registry.rs": (
        "add_compliance_leaf_rejects_zero_asset_before_mutation",
        "compliance_anchor_facts_reject_future_user_height",
        "corrupted_asset_structure_blocks_readiness_and_next_mutation",
        "test_add_compliance_leaf",
        "test_anchor_pruning_preserves_latest_lookup_for_reused_anchor",
        "test_anchor_pruning_removes_expired_entries",
        "test_anchor_within_window_accepted",
        "test_asset_duplicate_prevention",
        "test_asset_imt_uses_nv_nodes_and_leaves_not_full_blob",
        "test_cold_user_and_asset_proof_lookup_uses_keyed_storage",
        "test_comprehensive_integration",
        "test_direct_read_proofs_match_reconstructed_trees_random_trace",
        "test_genesis_anchor_attack_prevented",
        "test_get_asset_policy_cached_matches_uncached",
        "test_historical_anchors_preserved",
        "test_ibc_origin_lookup_rejects_duplicate_base_denom",
        "test_imt_get_proof_data_regulated",
        "test_imt_get_proof_data_unregulated",
        "test_imt_multiple_regulated_assets",
        "test_imt_register_idempotent",
        "test_imt_register_regulated_asset",
        "test_invalid_anchor_rejected",
        "test_leaf_json_serialization",
        "test_multiple_leaves",
        "test_record_and_validate_anchors",
        "test_register_asset_with_custom_threshold",
        "test_register_regulated_asset",
        "test_replace_asset_ibc_policy_requires_expected_hash",
        "test_share_and_verify_workflow",
        "test_shortened_anchor_window_pruning_catches_up",
        "test_shortened_anchor_window_rejects_existing_old_anchor_immediately",
        "test_user_leaf_position_lookup",
        "test_user_leaf_roundtrip",
        "test_user_tree_full_returns_domain_error_without_mutation",
        "test_user_tree_uses_nv_nodes_not_full_blob",
        "test_verify_compliance_leaf",
        "test_verify_with_multiple_leaves",
    ),
    "crates/core/component/sct/src/component/tree.rs": (
        "sct_committed_root_check_fails_on_missing_nv_state",
        "sct_incremental_nv_persistence_roundtrips_without_full_blob",
    ),
    "crates/core/component/shielded-pool/src/component/transfer.rs": (
        "receive_context_derives_return_source_base_denom",
        "receive_context_derives_sink_zone_voucher_denom",
    ),
    "crates/core/component/shielded-pool/src/note_reshape/plan.rs": (
        "note_reshape_family_specs_cover_expected_shapes",
        "plan_proto_roundtrip_preserves_family_and_derives_balance",
        "synthetic_input_slots_have_distinct_nullifiers",
    ),
    (
        "crates/core/component/shielded-pool/src/"
        "shielded_ics20_withdrawal/plan.rs"
    ): (
        "multi_spend_tx_blinding_nonces_are_independent",
    ),
    "crates/core/component/shielded-pool/src/transfer/plan.rs": (
        "plan_proto_roundtrip_derives_balance_and_fixed_arity",
    ),
    "crates/core/component/shielded-pool/src/transfer/proof.rs": (
        "repro_unregulated_nonbase_test_usd",
        "repro_unregulated_nonbase_test_usd_populated_tree",
        "transfer_hidden_arity_1x1_roundtrip_base_asset_sender_to_other",
        "transfer_hidden_arity_1x1_roundtrip_registered_base_asset_sender_to_other",
        "transfer_hidden_arity_1x1_roundtrip_registered_base_asset_sender_to_other_high_position",
        "transfer_hidden_arity_1x1_roundtrip_registered_base_asset_sender_to_other_real_user_tree",
        "transfer_hidden_arity_1x1_roundtrip_sender_to_other",
        "transfer_hidden_arity_1x1_roundtrip_sender_to_self",
        "transfer_hidden_arity_1x1_roundtrip_test_keys_base_asset_sender_to_other",
        "transfer_hidden_arity_1x2_roundtrip_registered_base_asset_with_change_real_user_tree",
        "transfer_proof_roundtrip_unregulated",
    ),
    "crates/core/transaction/src/transaction.rs": (
        "compliance_scanner_transaction_id_matches_canonical_transaction_id",
        "note_reshape_fixed_slots_do_not_filter_spent_nullifiers",
    ),
    "crates/crypto/proof-params/src/batch.rs": (
        "batch_empty_returns_ok",
        "batch_identifies_failing_proof_in_mixed_batch",
        "batch_multiple_valid_proofs",
        "batch_rejects_mutated_proof",
        "batch_rejects_wrong_input_length",
        "batch_rejects_wrong_public_inputs",
        "batch_single_valid_proof",
    ),
    "crates/util/orbis-client/src/client.rs": (
        "containerized_p2p_address_can_be_derived_without_cli_parsing",
        "invalid_endpoint_is_rejected",
        "sourcehub_already_exists_errors_are_idempotent_successes",
        "sourcehub_sequence_errors_are_transient",
    ),
    "tools/gnark/internal/circuits/gadgets_acl2_parity_test.go": (
        "TestBoolSelectAxeLispExport",
    ),
    "tools/gnark/internal/circuits/gadgets_axe_fidelity_test.go": (
        "TestAxeExportFidelityExpandedGadgets",
        "TestAxeExportFidelityImtGap",
        "TestAxeExportFidelityNullifier",
        "TestAxeExportFidelityPoseidon2",
        "TestAxeExportFidelityPoseidonHash4",
        "TestPicusExportFidelityAllGadgets",
    ),
    "tools/gnark/cmd/historicalproofspike/main_test.go": (
        "TestEmptyGenerationSentinelCoversFieldBoundaries",
        "TestIndexedGenerationCircuitCompilesAndSolves",
        "TestIndexedGenerationCircuitRejectsMalformedClaims",
        "TestQuadPathPlacesTheLeafInEveryChildPosition",
    ),
    "tools/gnark/internal/circuits/nullifier_history_test.go": (
        "TestHistoryRequiredBoundaryAndDummyGating",
        "TestHistoryRequiredRejectsMalformedInputs",
    ),
    "tools/gnark/internal/circuits/profile_test.go": (
        "TestConstraintProfiles",
    ),
    "tools/gnark/internal/circuits/transfer_balance_optimization_test.go": (
        "TestTransferBalanceUsesTwoSumLadders",
    ),
    "tools/gnark/internal/circuits/wiring_transcript_test.go": (
        "TestNoteReshape8x1WiringTranscriptDeterministic",
        "TestNoteReshape8x1WiringTranscriptDoesNotChangeConstraintStats",
    ),
    "tools/gnark/internal/compliance/scalar_mul_window_probe_test.go": (
        "TestScalarMulFakeGLVProbeIsUnderconstrained",
        "TestScalarMulWindow2ConstraintProbe",
        "TestScalarMulWindow2WitnessParity",
    ),
    "tools/gnark/internal/compliance/spend_shared_optimization_test.go": (
        "TestDeriveSharedSecretsSpendReusesScalarBits",
    ),
}


def _reviewed_test_exclusion_symbols() -> dict[str, tuple[str, ...]]:
    merged = dict(_REVIEWED_TEST_EXCLUSION_SYMBOLS)
    for path, symbols in rust_evidence.EXCLUSION_SYMBOLS.items():
        existing = set(merged.get(path, ()))
        overlap = existing & set(symbols)
        if overlap:
            raise ValueError(
                "duplicate reviewed Rust exclusion selectors: "
                f"{sorted((path, symbol) for symbol in overlap)}"
            )
        merged[path] = tuple(sorted((*existing, *symbols)))
    return merged


def reviewed_test_census(
    predicate_tests: list[dict],
    runtime_tests: list[dict],
    property_tests: list[dict],
    artifact_tests: list[dict],
) -> dict:
    exclusion_symbols = _reviewed_test_exclusion_symbols()
    unknown_reason_overrides = (
        set(_REVIEWED_TEST_EXCLUSION_REASON_BY_PATH)
        - set(exclusion_symbols)
    )
    if unknown_reason_overrides:
        raise ValueError(
            "reviewed test exclusion reason overrides name no exclusions: "
            f"{sorted(unknown_reason_overrides)}"
        )
    selected = sorted(
        {
            (test["path"], test["symbol"])
            for test in (
                *predicate_tests,
                *runtime_tests,
                *property_tests,
                *artifact_tests,
            )
        }
    )
    source_census = sorted(
        {path for path, _ in selected}
        | set(_REVIEWED_GNARK_TEST_SOURCES)
        | set(exclusion_symbols)
    )
    exclusions = sorted(
        (
            {
                "path": path,
                "symbol": symbol,
                "reason": _REVIEWED_TEST_EXCLUSION_REASON_BY_PATH.get(
                    path,
                    _REVIEWED_TEST_EXCLUSION_REASON,
                ),
            }
            for path, symbols in exclusion_symbols.items()
            for symbol in symbols
        ),
        key=lambda row: (row["path"], row["symbol"]),
    )
    selected_pairs = set(selected)
    exclusion_pairs = {
        (row["path"], row["symbol"]) for row in exclusions
    }
    overlap = selected_pairs & exclusion_pairs
    if overlap:
        raise ValueError(
            "reviewed test selectors are both selected and excluded: "
            f"{sorted(overlap)}"
        )
    unknown_exclusion_sources = {
        path for path, _ in exclusion_pairs if path not in source_census
    }
    if unknown_exclusion_sources:
        raise ValueError(
            "reviewed test exclusions name sources outside the four ledgers: "
            f"{sorted(unknown_exclusion_sources)}"
        )
    return {
        "source_census": source_census,
        "selected": [
            {"path": path, "symbol": symbol}
            for path, symbol in selected
        ],
        "exclusions": exclusions,
    }


def load_normative_statements() -> dict[str, str]:
    path = FORMAL / "fv-specification-requirements.json"
    raw = formal_json.read_known_formal_object(path)
    statements = raw.get("statements")
    if not isinstance(statements, dict):
        raise ValueError("normative requirement statements must be an object")
    if set(statements) != set(PREDICATES):
        raise ValueError(
            "normative statement registry drifted: "
            f"missing={sorted(set(PREDICATES)-set(statements))}, "
            f"extra={sorted(set(statements)-set(PREDICATES))}"
        )
    if list(statements) != sorted(statements):
        raise ValueError("normative statements must be sorted by predicate ID")
    invalid = sorted(
        predicate_id
        for predicate_id, statement in statements.items()
        if not isinstance(statement, str) or not statement
    )
    if invalid:
        raise ValueError(f"empty normative statements: {invalid}")
    return {str(key): str(value) for key, value in statements.items()}


STATEMENTS = load_normative_statements()


def category(predicate_id: str) -> str:
    if "SHAPE" in predicate_id or "ORDER-COUNT" in predicate_id:
        return "shape"
    if "BOOLEAN" in predicate_id or "FLAG" in predicate_id:
        return "boolean"
    if "RANGE" in predicate_id or "NONZERO" in predicate_id:
        return "range"
    if "MEMBERSHIP" in predicate_id or "REGISTRY" in predicate_id:
        return "membership"
    if "CONSERVATION" in predicate_id or "BALANCE" in predicate_id:
        return "conservation"
    if "SIGNATURE" in predicate_id or "AUTHORIZATION" in predicate_id:
        return "authorization"
    if "FRESH" in predicate_id or "STATE" in predicate_id:
        return "state"
    if "TRANSITION" in predicate_id or "ATOMIC" in predicate_id:
        return "transition"
    if any(
        token in predicate_id
        for token in ("DEC-", "HASH", "NULLIFIER", "ENCRYPTION", "SECRET")
    ):
        return "cryptography"
    if "CANONICAL" in predicate_id or "ENCODING" in predicate_id:
        return "canonicality"
    return "binding"


def evidence_for(placement: str, profile: str) -> str:
    suffix = {
        "circuit": "CIRCUIT",
        "external_acceptance": "EXTERNAL",
        "construction": "CONSTRUCTION",
    }[placement]
    if profile in NR:
        return f"NR-{suffix}"
    if profile == "transfer":
        return f"TRANSFER-{suffix}"
    return f"WITHDRAWAL-{suffix}"


SPEND_NOTE_PREDICATES = frozenset(
    {
        "NOTE-SPEND-OWNER-BINDING",
        "NOTE-SPEND-ASSET-BINDING",
        "NOTE-SPEND-COMMITMENT",
        "SCT-SPEND-MEMBERSHIP",
        "NOTE-SPEND-NULLIFIER-DERIVATION",
        "FIELD-AUTH-RANDOMIZER-RANGE",
        "DEC-SPEND-RK-DERIVATION",
        "DEC-SPEND-RK-ENCODING",
    }
)
OUTPUT_NOTE_PREDICATES = frozenset(
    {
        "NOTE-OUTPUT-OWNER-BINDING",
        "NOTE-OUTPUT-ASSET-BINDING",
        "NOTE-OUTPUT-COMMITMENT",
    }
)
ADDRESS_PREDICATES = frozenset(
    {
        "DEC-AUTHORIZATION-KEY-ENCODING",
        "DEC-AUTHORIZATION-KEY-NONIDENTITY",
        "DEC-DIVERSIFIED-GENERATOR-NONIDENTITY",
        "DEC-DIVERSIFIED-GENERATOR-ENCODING",
        "DEC-INCOMING-VIEWING-KEY-DERIVATION",
        "DEC-INCOMING-VIEWING-KEY-NONZERO",
        "DEC-TRANSMISSION-KEY-DERIVATION",
        "DEC-TRANSMISSION-KEY-ENCODING",
        "DEC-TRANSMISSION-KEY-NONIDENTITY",
    }
)
NR_PADDING_PREDICATES = frozenset(
    {
        "CIR-SELECTOR-BOOLEAN",
        "CIR-DUMMY-ORDER-COUNT",
    }
)
OPTIONAL_DUMMY_PREDICATES = frozenset(
    {
        "CIR-SELECTOR-BOOLEAN",
        "DUMMY-AMOUNT-ZERO",
        "DUMMY-NULLIFIER-DOMAIN-BINDING",
        "DUMMY-SLOT-POSITION-BINDING",
    }
)
VALUE_PREDICATES = frozenset(
    {
        "VALUE-AMOUNT-128-RANGE",
        "FIELD-BALANCE-BLINDING-RANGE",
        "VALUE-CONSERVATION",
        "DEC-BALANCE-COMMITMENT-DERIVATION",
        "DEC-BALANCE-COMMITMENT-ENCODING",
    }
)
SHARED_ASSET_PREDICATES = frozenset(
    {
        "ASSET-ID-NONZERO",
        "ASSET-REGULATED-BOOLEAN",
        "ASSET-LEAF-HASH",
        "ASSET-REGISTRY-MEMBERSHIP",
        "ASSET-REGISTRY-GAP-ORDERING",
    }
)
TRANSFER_ASSET_PREDICATES = (
    SHARED_ASSET_PREDICATES
    | frozenset(
        {
        "ASSET-POLICY-KEY-ENCODING",
        "ASSET-PARAMETERS-HASH",
        "ASSET-RING-HASH",
        }
    )
)
USER_PREDICATES = frozenset(
    {
        "USER-LEAF-ADDRESS-BINDING",
        "USER-LEAF-ASSET-BINDING",
        "USER-LEAF-POLICY-SLOT-BINDING",
        "FIELD-USER-DERIVATION-RANGE",
        "FIELD-USER-POSITION-RANGE",
        "USER-COMPLIANCE-LEAF-HASH",
        "USER-COMPLIANCE-MEMBERSHIP-GATE",
    }
)
COMPLIANCE_TRANSCRIPT_PREDICATES = frozenset(
    {
        "VALUE-THRESHOLD-128-RANGE",
        "COMPLIANCE-FLAG-BOOLEAN",
        "COMPLIANCE-THRESHOLD-FLAG",
        "COMPLIANCE-POLICY-SELECTION",
        "COMPLIANCE-SALT-DERIVATION",
        "FIELD-EPHEMERAL-SCALAR-RANGE",
        "DEC-EPHEMERAL-PUBLIC-KEY-DERIVATION",
        "DEC-EPHEMERAL-PUBLIC-KEY-ENCODING",
        "DEC-ACK-DERIVATION",
        "DEC-SHARED-SECRET-DERIVATION",
        "COMPLIANCE-SHARED-SECRET-SELECTION",
        "FIELD-DETECTION-SLOT-RANGE",
        "COMPLIANCE-DETECTION-ENCRYPTION",
        "COMPLIANCE-AMOUNT-ENCRYPTION",
        "ADDRESS-CANONICAL-PACKING",
        "COMPLIANCE-ADDRESS-ENCRYPTION",
        "COMPLIANCE-METADATA-BINDING",
    }
)


FORMAL_FACT_PREDICATES: dict[
    str, dict[str, frozenset[str]]
] = {
    "NR-CIRCUIT": {
        "NoteReshape.CircuitFacts.shape": frozenset({"CIR-SHAPE-FIXED"}),
        "NoteReshape.CircuitFacts.padding": NR_PADDING_PREDICATES,
        "NoteReshape.CircuitFacts.randomizersCanonical": frozenset(
            {"FIELD-AUTH-RANDOMIZER-RANGE"}
        ),
        "NoteReshape.CircuitFacts.dummySlotIndicesCanonical": frozenset(
            {"DUMMY-SLOT-POSITION-BINDING"}
        ),
        "NoteReshape.CircuitFacts.canonicalAddress": (
            ADDRESS_PREDICATES
            | frozenset(
                {
                    "NOTE-SPEND-OWNER-BINDING",
                    "NOTE-OUTPUT-OWNER-BINDING",
                }
            )
        ),
        "NoteReshape.CircuitFacts.inputsBound": frozenset(
            {
                "NOTE-SPEND-OWNER-BINDING",
                "NOTE-SPEND-ASSET-BINDING",
                "NOTE-SPEND-COMMITMENT",
            }
        ),
        "NoteReshape.CircuitFacts.membership": frozenset(
            {
                "SCT-SPEND-MEMBERSHIP",
                "NOTE-SPEND-NULLIFIER-DERIVATION",
                "DUMMY-AMOUNT-ZERO",
                "DUMMY-NULLIFIER-DOMAIN-BINDING",
            }
        ),
        "NoteReshape.CircuitFacts.authorizationKeys": frozenset(
            {"DEC-SPEND-RK-DERIVATION"}
        ),
        "NoteReshape.CircuitFacts.outputsBound": frozenset(
            {
                "NOTE-OUTPUT-OWNER-BINDING",
                "NOTE-OUTPUT-ASSET-BINDING",
                "NOTE-OUTPUT-COMMITMENT",
            }
        ),
        "NoteReshape.CircuitFacts.valueConserved": frozenset(
            {
                "VALUE-AMOUNT-128-RANGE",
                "FIELD-BALANCE-BLINDING-RANGE",
                "VALUE-CONSERVATION",
                "DEC-BALANCE-COMMITMENT-DERIVATION",
            }
        ),
        "NoteReshape.CircuitFacts.statementBound": frozenset(
            {
                "ASSET-REGULATED-BOOLEAN",
                "ASSET-LEAF-HASH",
                "ASSET-REGISTRY-MEMBERSHIP",
                "ASSET-REGISTRY-GAP-ORDERING",
                "ASSET-POLICY-KEY-ENCODING",
                "ASSET-PARAMETERS-HASH",
                "ASSET-RING-HASH",
                "DEC-SPEND-RK-ENCODING",
                "DEC-BALANCE-COMMITMENT-ENCODING",
                "PUBLIC-STATEMENT-BINDING",
                "ROUTING-PARAMETERS",
                "ROUTING-TAG-DERIVATION",
            }
        ),
    },
    "TRANSFER-CIRCUIT": {
        "Transfer.CircuitFacts.canonicalSender": (
            ADDRESS_PREDICATES
            | frozenset(
                {
                    "NOTE-SPEND-OWNER-BINDING",
                    "NOTE-OUTPUT-OWNER-BINDING",
                }
            )
        ),
        "Transfer.CircuitFacts.requiredSpend": SPEND_NOTE_PREDICATES,
        "Transfer.CircuitFacts.optionalSpend": (
            SPEND_NOTE_PREDICATES
            | OPTIONAL_DUMMY_PREDICATES
        ),
        "Transfer.CircuitFacts.receiverOutput": (
            OUTPUT_NOTE_PREDICATES
            | frozenset(
                {
                    "NOTE-RECEIVER-AMOUNT-NONZERO",
                    "DEC-DIVERSIFIED-GENERATOR-NONIDENTITY",
                    "DEC-DIVERSIFIED-GENERATOR-ENCODING",
                    "DEC-TRANSMISSION-KEY-ENCODING",
                    "DEC-TRANSMISSION-KEY-NONIDENTITY",
                }
            )
        ),
        "Transfer.CircuitFacts.changeOutput": OUTPUT_NOTE_PREDICATES,
        "Transfer.CircuitFacts.assetRegistry":
            TRANSFER_ASSET_PREDICATES,
        "Transfer.CircuitFacts.senderCompliance": USER_PREDICATES,
        "Transfer.CircuitFacts.receiverCompliance": USER_PREDICATES,
        "Transfer.CircuitFacts.complianceTranscript":
            COMPLIANCE_TRANSCRIPT_PREDICATES,
        "Transfer.CircuitFacts.balanceComputedAndCompressed":
            VALUE_PREDICATES,
        "Transfer.CircuitFacts.statementBinding": frozenset(
            {
                "CIR-SHAPE-FIXED",
                "PUBLIC-STATEMENT-BINDING",
                "ROUTING-PARAMETERS",
                "ROUTING-TAG-DERIVATION",
            }
        ),
    },
    "WITHDRAWAL-CIRCUIT": {
        "Withdrawal.CircuitFacts.canonicalSender": (
            ADDRESS_PREDICATES
            | frozenset(
                {
                    "NOTE-SPEND-OWNER-BINDING",
                    "NOTE-OUTPUT-OWNER-BINDING",
                }
            )
        ),
        "Withdrawal.CircuitFacts.requiredSpend": SPEND_NOTE_PREDICATES,
        "Withdrawal.CircuitFacts.optionalSpend": (
            SPEND_NOTE_PREDICATES
            | OPTIONAL_DUMMY_PREDICATES
        ),
        "Withdrawal.CircuitFacts.changeOutput": OUTPUT_NOTE_PREDICATES,
        "Withdrawal.CircuitFacts.assetRegistry":
            SHARED_ASSET_PREDICATES,
        "Withdrawal.CircuitFacts.senderCompliance": (
            USER_PREDICATES
            - frozenset({"FIELD-USER-DERIVATION-RANGE"})
        ),
        "Withdrawal.CircuitFacts.conservation": VALUE_PREDICATES,
        "Withdrawal.CircuitFacts.statementBinding": frozenset(
            {
                "CIR-SHAPE-FIXED",
                "PUBLIC-STATEMENT-BINDING",
                "ROUTING-PARAMETERS",
                "ROUTING-TAG-DERIVATION",
                "WITHDRAWAL-INTENT-FIELD-BINDING",
            }
        ),
    },
    "NR-EXTERNAL": {
        "NoteReshape.ConsensusSignatureFacts.verifiesEveryRk": frozenset(
            {"EXT-SPEND-AUTH-SIGNATURE"}
        ),
        "NoteReshape.ConsensusSignatureFacts.randomizedVerificationKeysNonIdentity":
            frozenset(
                {"DEC-RANDOMIZED-VERIFICATION-KEY-NONIDENTITY"}
            ),
        "NoteReshape.ConsensusSignatureFacts.bindingSignatureAccepted": frozenset(
            {"EXT-TRANSACTION-BINDING-SIGNATURE"}
        ),
        "NoteReshape.ConsensusStateFacts.fixedShapeAccepted": frozenset(
            {"EXT-FIXED-SHAPE-DECODE"}
        ),
        "NoteReshape.ConsensusStateFacts.anchorMatchesTransactionContext":
            frozenset({"EXT-ANCHOR-CONTEXT-BINDING"}),
        "NoteReshape.ConsensusStateFacts.publicInputMatchesBody": frozenset(
            {"EXT-PUBLIC-INPUT-PROJECTION"}
        ),
        "NoteReshape.ConsensusStateFacts.proofCanonicalEncodingAccepted":
            frozenset({"EXT-PROOF-CANONICAL-ENCODING"}),
        "NoteReshape.ConsensusStateFacts.proofVerificationAccepted":
            frozenset({"EXT-PROOF-VERIFICATION"}),
        "NoteReshape.ConsensusStateFacts.proofFamilyKeySelected": frozenset(
            {"EXT-PROOF-FAMILY-KEY-SELECTION"}
        ),
        "NoteReshape.ConsensusStateFacts.bodyProjectionCanonical":
            frozenset({"EXT-BODY-PROJECTION-CANONICALITY"}),
        "NoteReshape.ConsensusStateFacts.transition": frozenset(
            {
                "EXT-ANCHOR-LIVENESS",
                "EXT-NULLIFIER-FRESHNESS",
                "EXT-NULLIFIER-ATOMIC-TRANSITION",
            }
        ),
        "NoteReshape.TransactionAccepted.actionAccepted": frozenset(
            {
                "EXT-NULLIFIER-TX-UNIQUENESS",
                "EXT-OUTPUT-PERSISTENCE",
                "EXT-TRANSACTION-EFFECTS-ATOMICITY",
            }
        ),
        "NoteReshape.TransactionAccepted.committed": frozenset(
            {
                "EXT-NULLIFIER-TX-UNIQUENESS",
                "EXT-OUTPUT-PERSISTENCE",
                "EXT-TRANSACTION-EFFECTS-ATOMICITY",
            }
        ),
    },
    "NR-CONSTRUCTION": {
        "NoteReshape.HonestConstructionFacts.outgoingViewBindingCorrect":
            frozenset({"EXT-OUTGOING-VIEW-BINDING"}),
        "NoteReshape.HonestConstructionFacts.planProjectionCanonical":
            frozenset({"EXT-PLAN-BOUNDARY-CANONICALITY"}),
    },
    "TRANSFER-EXTERNAL": {
        "Transfer.ConsensusExternalFacts.requiredSignature": frozenset(
            {"EXT-SPEND-AUTH-SIGNATURE"}
        ),
        "Transfer.ConsensusExternalFacts.optionalSignature": frozenset(
            {"EXT-SPEND-AUTH-SIGNATURE"}
        ),
        "Transfer.ConsensusExternalFacts.requiredRandomizedVerificationKeyNonIdentity":
            frozenset(
                {"DEC-RANDOMIZED-VERIFICATION-KEY-NONIDENTITY"}
            ),
        "Transfer.ConsensusExternalFacts.optionalRandomizedVerificationKeyNonIdentity":
            frozenset(
                {"DEC-RANDOMIZED-VERIFICATION-KEY-NONIDENTITY"}
            ),
        "Transfer.ConsensusExternalFacts.enclosingTransactionBindingSignatureAccepted":
            frozenset({"EXT-TRANSACTION-BINDING-SIGNATURE"}),
        "Transfer.ConsensusExternalFacts.fixedShapeAccepted": frozenset(
            {"EXT-FIXED-SHAPE-DECODE"}
        ),
        "Transfer.ConsensusExternalFacts.anchorMatchesTransactionContext": frozenset(
            {"EXT-ANCHOR-CONTEXT-BINDING"}
        ),
        "Transfer.ConsensusExternalFacts.publicInputMatchesBody": frozenset(
            {"EXT-PUBLIC-INPUT-PROJECTION"}
        ),
        "Transfer.ConsensusExternalFacts.proofCanonicalEncodingAccepted": frozenset(
            {"EXT-PROOF-CANONICAL-ENCODING"}
        ),
        "Transfer.ConsensusExternalFacts.inputComplianceCiphertextEmpty": frozenset(
            {"EXT-INPUT-COMPLIANCE-EMPTY"}
        ),
        "Transfer.ConsensusExternalFacts.outputComplianceEncodingAccepted": frozenset(
            {"EXT-OUTPUT-COMPLIANCE-ENCODING"}
        ),
        "Transfer.ConsensusExternalFacts.effectHashBindsComplianceRecords":
            frozenset(
                {"EXT-TRANSFER-EFFECT-HASH-COMPLIANCE-BINDING"}
            ),
        "Transfer.ConsensusExternalFacts.proofVerificationAccepted": frozenset(
            {"EXT-PROOF-VERIFICATION"}
        ),
        "Transfer.ConsensusExternalFacts.proofFamilyKeySelected": frozenset(
            {"EXT-PROOF-FAMILY-KEY-SELECTION"}
        ),
        "Transfer.ConsensusExternalFacts.registryWellFormed": frozenset(
            {"EXT-REGISTRY-WELL-FORMED"}
        ),
        "Transfer.ConsensusExternalFacts.assetRegistryAuthorized": frozenset(
            {"EXT-ASSET-REGISTRY-AUTHORIZED"}
        ),
        "Transfer.ConsensusExternalFacts.assetRegistryCryptoKeysValid": frozenset(
            {"EXT-ASSET-REGISTRY-KEY-VALIDITY"}
        ),
        "Transfer.ConsensusExternalFacts.userRegistryAuthorized": frozenset(
            {"EXT-USER-REGISTRY-AUTHORIZED"}
        ),
        "Transfer.ConsensusExternalFacts.timestampFresh": frozenset(
            {"EXT-TIMESTAMP-FRESHNESS"}
        ),
        "Transfer.ConsensusExternalFacts.bodyProjectionCanonical": frozenset(
            {"EXT-BODY-PROJECTION-CANONICALITY"}
        ),
        "Transfer.ConsensusExternalFacts.transition": frozenset(
            {
                "EXT-ANCHOR-LIVENESS",
                "EXT-ASSET-ANCHOR-CURRENT",
                "EXT-COMPLIANCE-ANCHOR-LIVE",
                "EXT-NULLIFIER-FRESHNESS",
                "EXT-NULLIFIER-DISTINCTNESS",
                "EXT-NULLIFIER-ATOMIC-TRANSITION",
            }
        ),
        "Transfer.TransactionAccepted.actionAccepted": frozenset(
            {
                "EXT-NULLIFIER-TX-UNIQUENESS",
                "EXT-OUTPUT-PERSISTENCE",
                "EXT-TRANSACTION-EFFECTS-ATOMICITY",
            }
        ),
        "Transfer.TransactionAccepted.committed": frozenset(
            {
                "EXT-NULLIFIER-TX-UNIQUENESS",
                "EXT-OUTPUT-PERSISTENCE",
                "EXT-TRANSACTION-EFFECTS-ATOMICITY",
            }
        ),
    },
    "TRANSFER-CONSTRUCTION": {
        "Transfer.HonestConstructionFacts.complianceNonceFreshAndUnique":
            frozenset({"EXT-HONEST-COMPLIANCE-NONCE"}),
        "Transfer.HonestConstructionFacts.complianceTierScalarsNonzero":
            frozenset(
                {"EXT-HONEST-COMPLIANCE-TIER-SCALAR-NONZERO"}
            ),
        "Transfer.HonestConstructionFacts.outgoingViewBindingCorrect":
            frozenset({"EXT-OUTGOING-VIEW-BINDING"}),
        "Transfer.HonestConstructionFacts.planProjectionCanonical":
            frozenset({"EXT-PLAN-BOUNDARY-CANONICALITY"}),
    },
    "WITHDRAWAL-EXTERNAL": {
        "Withdrawal.ConsensusExternalFacts.requiredSignature": frozenset(
            {"EXT-SPEND-AUTH-SIGNATURE"}
        ),
        "Withdrawal.ConsensusExternalFacts.optionalSignature": frozenset(
            {"EXT-SPEND-AUTH-SIGNATURE"}
        ),
        "Withdrawal.ConsensusExternalFacts.requiredRandomizedVerificationKeyNonIdentity":
            frozenset(
                {"DEC-RANDOMIZED-VERIFICATION-KEY-NONIDENTITY"}
            ),
        "Withdrawal.ConsensusExternalFacts.optionalRandomizedVerificationKeyNonIdentity":
            frozenset(
                {"DEC-RANDOMIZED-VERIFICATION-KEY-NONIDENTITY"}
            ),
        "Withdrawal.ConsensusExternalFacts.transactionBindingSignatureAccepted":
            frozenset({"EXT-TRANSACTION-BINDING-SIGNATURE"}),
        "Withdrawal.ConsensusExternalFacts.fixedShapeAccepted": frozenset(
            {"EXT-FIXED-SHAPE-DECODE"}
        ),
        "Withdrawal.ConsensusExternalFacts.anchorMatchesTransactionContext":
            frozenset({"EXT-ANCHOR-CONTEXT-BINDING"}),
        "Withdrawal.ConsensusExternalFacts.withdrawalEffectHashMatchesBody":
            frozenset({"EXT-WITHDRAWAL-EFFECT-HASH-BINDING"}),
        "Withdrawal.ConsensusExternalFacts.publicInputMatchesBody": frozenset(
            {"EXT-PUBLIC-INPUT-PROJECTION"}
        ),
        "Withdrawal.ConsensusExternalFacts.proofCanonicalEncodingAccepted":
            frozenset({"EXT-PROOF-CANONICAL-ENCODING"}),
        "Withdrawal.ConsensusExternalFacts.proofVerificationAccepted": frozenset(
            {"EXT-PROOF-VERIFICATION"}
        ),
        "Withdrawal.ConsensusExternalFacts.proofFamilyKeySelected": frozenset(
            {"EXT-PROOF-FAMILY-KEY-SELECTION"}
        ),
        "Withdrawal.ConsensusExternalFacts.registryWellFormed": frozenset(
            {"EXT-REGISTRY-WELL-FORMED"}
        ),
        "Withdrawal.ConsensusExternalFacts.assetRegistryAuthorized": frozenset(
            {"EXT-ASSET-REGISTRY-AUTHORIZED"}
        ),
        "Withdrawal.ConsensusExternalFacts.outboundRouteAuthorized": frozenset(
            {"EXT-WITHDRAWAL-ROUTE-AUTHORIZED"}
        ),
        "Withdrawal.ConsensusExternalFacts.userRegistryAuthorized": frozenset(
            {"EXT-USER-REGISTRY-AUTHORIZED"}
        ),
        "Withdrawal.ConsensusExternalFacts.timestampFresh": frozenset(
            {"EXT-TIMESTAMP-FRESHNESS"}
        ),
        "Withdrawal.ConsensusExternalFacts.payloadValid": frozenset(
            {"EXT-WITHDRAWAL-PAYLOAD-VALID"}
        ),
        "Withdrawal.ConsensusExternalFacts.channelAndConnectionValid":
            frozenset({"EXT-WITHDRAWAL-CHANNEL-CONNECTION-VALID"}),
        "Withdrawal.ConsensusExternalFacts.clientActiveAndUnexpired":
            frozenset({"EXT-WITHDRAWAL-CLIENT-ACTIVE-UNEXPIRED"}),
        "Withdrawal.ConsensusExternalFacts.timeoutsFuture": frozenset(
            {"EXT-WITHDRAWAL-TIMEOUTS-FUTURE"}
        ),
        "Withdrawal.ConsensusExternalFacts.checkedTokenFresh": frozenset(
            {"EXT-WITHDRAWAL-CHECKED-TOKEN-FRESH"}
        ),
        "Withdrawal.ConsensusExternalFacts.payloadProjectsTo": frozenset(
            {"EXT-WITHDRAWAL-PAYLOAD-PROJECTION"}
        ),
        "Withdrawal.ConsensusExternalFacts.inputComplianceCiphertextEmpty": frozenset(
            {"EXT-INPUT-COMPLIANCE-EMPTY"}
        ),
        "Withdrawal.ConsensusExternalFacts.bodyProjectionCanonical": frozenset(
            {"EXT-BODY-PROJECTION-CANONICALITY"}
        ),
        "Withdrawal.ConsensusExternalFacts.transition": frozenset(
            {
                "EXT-ANCHOR-LIVENESS",
                "EXT-ASSET-ANCHOR-CURRENT",
                "EXT-COMPLIANCE-ANCHOR-LIVE",
                "EXT-NULLIFIER-FRESHNESS",
                "EXT-NULLIFIER-DISTINCTNESS",
                "EXT-NULLIFIER-ATOMIC-TRANSITION",
                "EXT-WITHDRAWALS-ENABLED",
            }
        ),
        "Withdrawal.TransactionAccepted.actionAccepted": frozenset(
            {
                "EXT-NULLIFIER-TX-UNIQUENESS",
                "EXT-OUTPUT-PERSISTENCE",
                "EXT-TRANSACTION-EFFECTS-ATOMICITY",
                "EXT-WITHDRAWAL-ACTION-ATOMICITY",
                "EXT-WITHDRAWAL-STATE-TRANSITION",
            }
        ),
        "Withdrawal.TransactionAccepted.committed": frozenset(
            {
                "EXT-NULLIFIER-TX-UNIQUENESS",
                "EXT-OUTPUT-PERSISTENCE",
                "EXT-TRANSACTION-EFFECTS-ATOMICITY",
                "EXT-WITHDRAWAL-ACTION-ATOMICITY",
                "EXT-WITHDRAWAL-STATE-TRANSITION",
            }
        ),
        "Withdrawal.TransactionAccepted.withdrawalEffects": frozenset(
            {
                "EXT-WITHDRAWAL-ACTION-ATOMICITY",
                "EXT-WITHDRAWAL-STATE-TRANSITION",
            }
        ),
    },
    "WITHDRAWAL-CONSTRUCTION": {
        "Withdrawal.HonestConstructionFacts.outgoingViewBindingCorrect":
            frozenset({"EXT-OUTGOING-VIEW-BINDING"}),
        "Withdrawal.HonestConstructionFacts.planProjectionCanonical":
            frozenset({"EXT-PLAN-BOUNDARY-CANONICALITY"}),
    },
}

for _evidence_id, _fact_mapping in FORMAL_FACT_PREDICATES.items():
    _evidence_profiles = {
        trace["profile"]
        for trace in EVIDENCE_BY_ID[_evidence_id]["trace_instances"]
    }
    if not _evidence_profiles:
        _placement = EVIDENCE_BY_ID[_evidence_id]["placement"]
        _evidence_profiles = {
            profile
            for profile in PROFILES
            if evidence_for(_placement, profile) == _evidence_id
        }
    for _fact_id, _predicate_ids in _fact_mapping.items():
        _unknown_predicates = _predicate_ids - set(PREDICATES)
        if _unknown_predicates:
            raise ValueError(
                f"{_fact_id}: unknown mapped predicates "
                f"{sorted(_unknown_predicates)}"
            )
        _inapplicable_predicates = {
            predicate_id
            for predicate_id in _predicate_ids
            if not (
                PREDICATES[predicate_id][1] & _evidence_profiles
            )
        }
        if _inapplicable_predicates:
            raise ValueError(
                f"{_fact_id}: latent inapplicable formal mappings "
                f"{sorted(_inapplicable_predicates)}"
            )


def formal_facts_for(predicate_id: str, evidence_id: str) -> list[str]:
    mapping = FORMAL_FACT_PREDICATES[evidence_id]
    result = sorted(
        fact_id
        for fact_id, predicates in mapping.items()
        if predicate_id in predicates
    )
    if not result:
        raise ValueError(
            f"{predicate_id}/{evidence_id}: no exact formal-fact selection"
        )
    unknown = set(result) - set(EVIDENCE_BY_ID[evidence_id]["formal_fact_ids"])
    if unknown:
        raise ValueError(
            f"{predicate_id}/{evidence_id}: formal-fact mapping names "
            f"unknown facts {sorted(unknown)}"
        )
    return result


CERT_LEDGER_PREDICATES = {
    "CERT-EXACT-RELATION": frozenset(
        {
            "CIR-SHAPE-FIXED",
            "EXT-PROOF-FAMILY-KEY-SELECTION",
            "EXT-PROOF-VERIFICATION",
        }
    ),
    "CERT-FIXED-FAMILY": frozenset(
        {
            "CIR-SHAPE-FIXED",
            "EXT-FIXED-SHAPE-DECODE",
            "EXT-PROOF-FAMILY-KEY-SELECTION",
        }
    ),
    "CERT-PROOF-CANONICAL-ENCODING": frozenset(
        {"EXT-PROOF-CANONICAL-ENCODING"}
    ),
    "CERT-PROOF-VERIFICATION": frozenset(
        {"EXT-PROOF-VERIFICATION"}
    ),
    "CERT-PUBLIC-PROJECTION": frozenset(
        {"PUBLIC-STATEMENT-BINDING", "EXT-PUBLIC-INPUT-PROJECTION"}
    ),
    "CERT-SPEND-AUTH": frozenset(
        {
            "DEC-RANDOMIZED-VERIFICATION-KEY-NONIDENTITY",
            "EXT-SPEND-AUTH-SIGNATURE",
            "EXT-TRANSFER-EFFECT-HASH-COMPLIANCE-BINDING",
        }
    ),
    "CERT-TX-BINDING": frozenset(
        {
            "VALUE-CONSERVATION",
            "DEC-BALANCE-COMMITMENT-DERIVATION",
            "EXT-TRANSACTION-BINDING-SIGNATURE",
        }
    ),
    "CERT-SCT-STATE": frozenset(
        {
            "SCT-SPEND-MEMBERSHIP",
            "NOTE-SPEND-NULLIFIER-DERIVATION",
            "DUMMY-NULLIFIER-DOMAIN-BINDING",
            "EXT-ANCHOR-CONTEXT-BINDING",
            "EXT-ANCHOR-LIVENESS",
            "EXT-NULLIFIER-FRESHNESS",
            "EXT-NULLIFIER-DISTINCTNESS",
            "EXT-NULLIFIER-TX-UNIQUENESS",
            "EXT-NULLIFIER-ATOMIC-TRANSITION",
        }
    ),
    "CERT-OUTPUT-STATE": frozenset(
        {
            "NOTE-OUTPUT-COMMITMENT",
            "EXT-OUTPUT-PERSISTENCE",
            "EXT-TRANSACTION-EFFECTS-ATOMICITY",
        }
    ),
    "CERT-BODY-PROJECTION": frozenset(
        {"EXT-BODY-PROJECTION-CANONICALITY"}
    ),
    "CONSTRUCTION-OUTGOING-VIEW": frozenset(
        {"EXT-OUTGOING-VIEW-BINDING"}
    ),
    "CONSTRUCTION-PLAN-PROJECTION": frozenset(
        {"EXT-PLAN-BOUNDARY-CANONICALITY"}
    ),
    "CONSTRUCTION-TRANSFER-NONCE": frozenset(
        {
            "EXT-HONEST-COMPLIANCE-NONCE",
            "EXT-HONEST-COMPLIANCE-TIER-SCALAR-NONZERO",
        }
    ),
}

NR_LEDGER_PREDICATES = {
    "NR-SHAPE": (
        NR_PADDING_PREDICATES
        | frozenset(
            {
                "CIR-SHAPE-FIXED",
                "EXT-BODY-PROJECTION-CANONICALITY",
                "EXT-FIXED-SHAPE-DECODE",
                "EXT-PROOF-FAMILY-KEY-SELECTION",
            }
        )
    ),
    "NR-SHARED-ADDRESS": (
        ADDRESS_PREDICATES
        | frozenset(
            {
                "NOTE-SPEND-OWNER-BINDING",
                "NOTE-SPEND-ASSET-BINDING",
                "NOTE-OUTPUT-OWNER-BINDING",
                "NOTE-OUTPUT-ASSET-BINDING",
            }
        )
    ),
    "NR-INPUT-COMMITMENT": frozenset(
        {
            "NOTE-SPEND-OWNER-BINDING",
            "NOTE-SPEND-ASSET-BINDING",
            "NOTE-SPEND-COMMITMENT",
        }
    ),
    "NR-MEMBERSHIP": frozenset(
        {
            "SCT-SPEND-MEMBERSHIP",
            "EXT-ANCHOR-CONTEXT-BINDING",
            "EXT-ANCHOR-LIVENESS",
        }
    ),
    "NR-NULLIFIER": frozenset(
        {
            "DUMMY-AMOUNT-ZERO",
            "DUMMY-NULLIFIER-DOMAIN-BINDING",
            "DUMMY-SLOT-POSITION-BINDING",
            "NOTE-SPEND-NULLIFIER-DERIVATION",
            "EXT-NULLIFIER-FRESHNESS",
            "EXT-NULLIFIER-TX-UNIQUENESS",
            "EXT-NULLIFIER-ATOMIC-TRANSITION",
            "EXT-TRANSACTION-EFFECTS-ATOMICITY",
        }
    ),
    "NR-AUTHORIZATION": frozenset(
        {
            "FIELD-AUTH-RANDOMIZER-RANGE",
            "DEC-SPEND-RK-DERIVATION",
            "DEC-SPEND-RK-ENCODING",
            "DEC-RANDOMIZED-VERIFICATION-KEY-NONIDENTITY",
            "EXT-SPEND-AUTH-SIGNATURE",
        }
    ),
    "NR-OUTPUT-COMMITMENT": frozenset(
        {
            "NOTE-OUTPUT-OWNER-BINDING",
            "NOTE-OUTPUT-ASSET-BINDING",
            "NOTE-OUTPUT-COMMITMENT",
            "EXT-OUTPUT-PERSISTENCE",
            "EXT-TRANSACTION-EFFECTS-ATOMICITY",
        }
    ),
    "NR-CONSERVATION": (
        VALUE_PREDICATES
        | frozenset({"EXT-TRANSACTION-BINDING-SIGNATURE"})
    ),
    "NR-STATEMENT": frozenset(
        {
            "PUBLIC-STATEMENT-BINDING",
            "EXT-PUBLIC-INPUT-PROJECTION",
            "EXT-PROOF-VERIFICATION",
        }
    ),
    "NR-ROUTING": frozenset(
        {
            "ASSET-REGULATED-BOOLEAN",
            "ASSET-LEAF-HASH",
            "ASSET-REGISTRY-MEMBERSHIP",
            "ASSET-REGISTRY-GAP-ORDERING",
            "ASSET-POLICY-KEY-ENCODING",
            "ASSET-PARAMETERS-HASH",
            "ASSET-RING-HASH",
            "ROUTING-PARAMETERS",
            "ROUTING-TAG-DERIVATION",
        }
    ),
}

T_LEDGER_PREDICATES = {
    "T-SHAPE": (
        OPTIONAL_DUMMY_PREDICATES
        | frozenset(
            {
                "CIR-SHAPE-FIXED",
                "EXT-BODY-PROJECTION-CANONICALITY",
                "EXT-FIXED-SHAPE-DECODE",
                "EXT-PROOF-FAMILY-KEY-SELECTION",
            }
        )
    ),
    "T-SENDER": (
        ADDRESS_PREDICATES
        | frozenset(
            {
                "NOTE-SPEND-OWNER-BINDING",
                "NOTE-OUTPUT-OWNER-BINDING",
                "EXT-USER-REGISTRY-AUTHORIZED",
            }
        )
    ),
    "T-SPENDS": (
        SPEND_NOTE_PREDICATES
        | OPTIONAL_DUMMY_PREDICATES
        | frozenset(
            {
                "EXT-SPEND-AUTH-SIGNATURE",
                "DEC-RANDOMIZED-VERIFICATION-KEY-NONIDENTITY",
                "EXT-ANCHOR-CONTEXT-BINDING",
                "EXT-ANCHOR-LIVENESS",
                "EXT-NULLIFIER-FRESHNESS",
                "EXT-NULLIFIER-DISTINCTNESS",
                "EXT-NULLIFIER-TX-UNIQUENESS",
                "EXT-NULLIFIER-ATOMIC-TRANSITION",
            }
        )
    ),
    "T-OUTPUTS": (
        OUTPUT_NOTE_PREDICATES
        | frozenset(
            {
                "NOTE-RECEIVER-AMOUNT-NONZERO",
                "EXT-OUTPUT-PERSISTENCE",
                "EXT-TRANSACTION-EFFECTS-ATOMICITY",
            }
        )
    ),
    "T-ASSET-REGISTRY": (
        TRANSFER_ASSET_PREDICATES
        | frozenset(
            {
                "EXT-ASSET-ANCHOR-CURRENT",
                "EXT-REGISTRY-WELL-FORMED",
                "EXT-ASSET-REGISTRY-AUTHORIZED",
                "EXT-ASSET-REGISTRY-KEY-VALIDITY",
            }
        )
    ),
    "T-USER-REGISTRY": (
        USER_PREDICATES
        | frozenset(
            {
                "EXT-COMPLIANCE-ANCHOR-LIVE",
                "EXT-USER-REGISTRY-AUTHORIZED",
            }
        )
    ),
    "T-COMPLIANCE-TRANSCRIPT": (
        COMPLIANCE_TRANSCRIPT_PREDICATES
        | frozenset(
            {
                "EXT-INPUT-COMPLIANCE-EMPTY",
                "EXT-OUTPUT-COMPLIANCE-ENCODING",
                "EXT-TRANSFER-EFFECT-HASH-COMPLIANCE-BINDING",
            }
        )
    ),
    "T-CONSERVATION": (
        VALUE_PREDICATES
        | frozenset({"EXT-TRANSACTION-BINDING-SIGNATURE"})
    ),
    "T-TIMESTAMP": frozenset({"EXT-TIMESTAMP-FRESHNESS"}),
    "T-STATEMENT": frozenset(
        {
            "PUBLIC-STATEMENT-BINDING",
            "EXT-PUBLIC-INPUT-PROJECTION",
            "EXT-PROOF-VERIFICATION",
        }
    ),
    "T-ROUTING": frozenset(
        {"ROUTING-PARAMETERS", "ROUTING-TAG-DERIVATION"}
    ),
}

W_LEDGER_PREDICATES = {
    "W-SHAPE": (
        OPTIONAL_DUMMY_PREDICATES
        | frozenset(
            {
                "CIR-SHAPE-FIXED",
                "EXT-BODY-PROJECTION-CANONICALITY",
                "EXT-FIXED-SHAPE-DECODE",
                "EXT-PROOF-FAMILY-KEY-SELECTION",
            }
        )
    ),
    "W-SENDER": (
        ADDRESS_PREDICATES
        | frozenset(
            {
                "NOTE-SPEND-OWNER-BINDING",
                "NOTE-OUTPUT-OWNER-BINDING",
                "EXT-USER-REGISTRY-AUTHORIZED",
            }
        )
    ),
    "W-SPENDS": (
        SPEND_NOTE_PREDICATES
        | OPTIONAL_DUMMY_PREDICATES
        | frozenset(
            {
                "EXT-SPEND-AUTH-SIGNATURE",
                "DEC-RANDOMIZED-VERIFICATION-KEY-NONIDENTITY",
                "EXT-ANCHOR-CONTEXT-BINDING",
                "EXT-ANCHOR-LIVENESS",
                "EXT-NULLIFIER-FRESHNESS",
                "EXT-NULLIFIER-DISTINCTNESS",
                "EXT-NULLIFIER-TX-UNIQUENESS",
                "EXT-NULLIFIER-ATOMIC-TRANSITION",
            }
        )
    ),
    "W-CHANGE": (
        OUTPUT_NOTE_PREDICATES
        | frozenset(
            {
                "EXT-OUTPUT-PERSISTENCE",
                "EXT-TRANSACTION-EFFECTS-ATOMICITY",
            }
        )
    ),
    "W-ROUTING": frozenset(
        {"ROUTING-PARAMETERS", "ROUTING-TAG-DERIVATION"}
    ),
    "W-ASSET-REGISTRY": (
        SHARED_ASSET_PREDICATES
        | frozenset(
            {
                "EXT-ASSET-ANCHOR-CURRENT",
                "EXT-REGISTRY-WELL-FORMED",
                "EXT-ASSET-REGISTRY-AUTHORIZED",
            }
        )
    ),
    "W-USER-REGISTRY": (
        (USER_PREDICATES - frozenset({"FIELD-USER-DERIVATION-RANGE"}))
        | frozenset(
            {
                "EXT-COMPLIANCE-ANCHOR-LIVE",
                "EXT-USER-REGISTRY-AUTHORIZED",
                "EXT-INPUT-COMPLIANCE-EMPTY",
            }
        )
    ),
    "W-CONSERVATION": (
        VALUE_PREDICATES
        | frozenset({"EXT-TRANSACTION-BINDING-SIGNATURE"})
    ),
    "W-PAYLOAD": frozenset(
        {
            "WITHDRAWAL-INTENT-FIELD-BINDING",
            "EXT-WITHDRAWAL-EFFECT-HASH-BINDING",
            "EXT-WITHDRAWAL-ROUTE-AUTHORIZED",
            "EXT-WITHDRAWAL-PAYLOAD-VALID",
            "EXT-WITHDRAWAL-PAYLOAD-PROJECTION",
        }
    ),
    "W-STATE": frozenset(
        {
            "EXT-TRANSACTION-EFFECTS-ATOMICITY",
            "EXT-WITHDRAWAL-ACTION-ATOMICITY",
            "EXT-WITHDRAWAL-CHANNEL-CONNECTION-VALID",
            "EXT-WITHDRAWAL-CLIENT-ACTIVE-UNEXPIRED",
            "EXT-WITHDRAWAL-TIMEOUTS-FUTURE",
            "EXT-WITHDRAWAL-CHECKED-TOKEN-FRESH",
            "EXT-WITHDRAWAL-STATE-TRANSITION",
            "EXT-WITHDRAWALS-ENABLED",
        }
    ),
    "W-TIMESTAMP": frozenset({"EXT-TIMESTAMP-FRESHNESS"}),
    "W-STATEMENT": frozenset(
        {
            "PUBLIC-STATEMENT-BINDING",
            "EXT-PUBLIC-INPUT-PROJECTION",
            "EXT-PROOF-VERIFICATION",
            "WITHDRAWAL-INTENT-FIELD-BINDING",
        }
    ),
}

FAMILY_LEDGER_PREDICATES = {
    "note_reshape": NR_LEDGER_PREDICATES,
    "transfer": T_LEDGER_PREDICATES,
    "shielded_ics20_withdrawal": W_LEDGER_PREDICATES,
}

_FAMILY_PROFILES = {
    family: {
        profile
        for profile, profile_data in PROFILES.items()
        if profile_data["family"] == family
    }
    for family in FAMILY_LEDGER_PREDICATES
}
for _family, _ledger_mapping in FAMILY_LEDGER_PREDICATES.items():
    for _ledger_id, _predicate_ids in _ledger_mapping.items():
        _unknown_predicates = _predicate_ids - set(PREDICATES)
        if _unknown_predicates:
            raise ValueError(
                f"{_ledger_id}: unknown mapped predicates "
                f"{sorted(_unknown_predicates)}"
            )
        _inapplicable_predicates = {
            predicate_id
            for predicate_id in _predicate_ids
            if not (
                PREDICATES[predicate_id][1] & _FAMILY_PROFILES[_family]
            )
        }
        if _inapplicable_predicates:
            raise ValueError(
                f"{_ledger_id}: latent inapplicable ledger mappings "
                f"{sorted(_inapplicable_predicates)}"
            )


def ledger_ids_for(
    predicate_id: str, grouped_profiles: list[str]
) -> list[str]:
    families = {PROFILES[profile]["family"] for profile in grouped_profiles}
    if len(families) != 1:
        raise ValueError(
            f"{predicate_id}: one application spans families {families}"
        )
    family = next(iter(families))
    result = {
        ledger_id
        for ledger_id, predicates in CERT_LEDGER_PREDICATES.items()
        if predicate_id in predicates
    }
    result.update(
        ledger_id
        for ledger_id, predicates in FAMILY_LEDGER_PREDICATES[family].items()
        if predicate_id in predicates
    )
    if not result:
        raise ValueError(
            f"{predicate_id}/{family}: no exact obligation-ledger selection"
        )
    declared = {
        ledger_id
        for evidence in EVIDENCE
        for ledger_id in evidence["ledger_ids"]
    }
    unknown = result - declared
    if unknown:
        raise ValueError(
            f"{predicate_id}/{family}: ledger mapping names unknown rows "
            f"{sorted(unknown)}"
        )
    return sorted(result)


def ledger_evidence_sets_for(ledger_ids: list[str]) -> list[str]:
    owners = {}
    for evidence in EVIDENCE:
        for ledger_id in evidence["ledger_ids"]:
            if ledger_id in owners:
                raise ValueError(f"duplicate ledger owner for {ledger_id}")
            owners[ledger_id] = evidence["id"]
    return sorted({owners[ledger_id] for ledger_id in ledger_ids})


DECAF_ASSUMPTION_PREDICATES = frozenset(
    predicate_id
    for predicate_id in PREDICATES
    if predicate_id.startswith("DEC-")
) | frozenset(
    {
        "ASSET-POLICY-KEY-ENCODING",
        "EXT-ASSET-REGISTRY-KEY-VALIDITY",
    }
)
POSEIDON_ASSUMPTION_PREDICATES = frozenset(
    {
        "ASSET-LEAF-HASH",
        "ASSET-PARAMETERS-HASH",
        "ASSET-RING-HASH",
        "COMPLIANCE-ADDRESS-ENCRYPTION",
        "COMPLIANCE-AMOUNT-ENCRYPTION",
        "COMPLIANCE-DETECTION-ENCRYPTION",
        "COMPLIANCE-SALT-DERIVATION",
        "DUMMY-NULLIFIER-DOMAIN-BINDING",
        "DEC-INCOMING-VIEWING-KEY-DERIVATION",
        "NOTE-OUTPUT-COMMITMENT",
        "NOTE-SPEND-COMMITMENT",
        "NOTE-SPEND-NULLIFIER-DERIVATION",
        "PUBLIC-STATEMENT-BINDING",
        "USER-COMPLIANCE-LEAF-HASH",
        "EXT-PUBLIC-INPUT-PROJECTION",
    }
)
REGISTRY_COMMITMENT_ASSUMPTION_PREDICATES = frozenset(
    {
        "ASSET-REGISTRY-MEMBERSHIP",
        "SCT-SPEND-MEMBERSHIP",
        "USER-COMPLIANCE-MEMBERSHIP-GATE",
        "EXT-ASSET-REGISTRY-AUTHORIZED",
        "EXT-USER-REGISTRY-AUTHORIZED",
    }
)
VALUE_ASSUMPTION_PREDICATES = frozenset(
    {
        "VALUE-CONSERVATION",
        "DEC-BALANCE-COMMITMENT-DERIVATION",
        "DEC-BALANCE-COMMITMENT-ENCODING",
        "EXT-TRANSACTION-BINDING-SIGNATURE",
    }
)
COMPLIANCE_PRIVACY_ASSUMPTION_PREDICATES = frozenset(
    {
        "COMPLIANCE-ADDRESS-ENCRYPTION",
        "COMPLIANCE-AMOUNT-ENCRYPTION",
        "COMPLIANCE-DETECTION-ENCRYPTION",
        "COMPLIANCE-SHARED-SECRET-SELECTION",
        "DEC-SHARED-SECRET-DERIVATION",
        "EXT-HONEST-COMPLIANCE-NONCE",
        "EXT-HONEST-COMPLIANCE-TIER-SCALAR-NONZERO",
        "EXT-OUTPUT-COMPLIANCE-ENCODING",
    }
)


def assumptions_for(predicate_id: str, placement: str) -> list[str]:
    assumptions: set[str] = set()
    if placement == "circuit":
        assumptions.update(
            {
                "ZK-ASSUME-GNARK-FRONTEND-BACKEND",
                "ZK-ASSUME-GROTH16-SETUP-TOXIC-WASTE",
            }
        )
    if predicate_id == "EXT-PROOF-VERIFICATION":
        assumptions.update(
            {
                "ZK-ASSUME-GNARK-FRONTEND-BACKEND",
                "ZK-ASSUME-GROTH16-SETUP-TOXIC-WASTE",
            }
        )
    if predicate_id in DECAF_ASSUMPTION_PREDICATES:
        assumptions.update(
            {
                "CC-ASSUME-DECAF377-ENCODING",
                "CC-ASSUME-DECAF377-PRIME-ORDER-GROUP",
            }
        )
    if predicate_id in POSEIDON_ASSUMPTION_PREDICATES:
        assumptions.update(
            {
                "CC-ASSUME-POSEIDON-PARAM-PROVENANCE",
                "CC-ASSUME-POSEIDON-RO",
            }
        )
    if predicate_id in REGISTRY_COMMITMENT_ASSUMPTION_PREDICATES:
        assumptions.update(
            {
                "CC-ASSUME-POSEIDON-PARAM-PROVENANCE",
                "ZK-ASSUME-IMT-LEAF-COMMIT",
            }
        )
    if predicate_id in VALUE_ASSUMPTION_PREDICATES:
        assumptions.add("ZK-ASSUME-INDEP-VALUE-GENERATORS")
    if predicate_id == "EXT-TRANSACTION-BINDING-SIGNATURE":
        assumptions.add("ZK-ASSUME-BINDING-SIG-DL")
    if predicate_id == "EXT-SPEND-AUTH-SIGNATURE":
        assumptions.update(
            {
                "ZK-ASSUME-EFFECT-HASH-BLAKE2B",
                "ZK-ASSUME-SPEND-AUTH-RDSA",
            }
        )
    if predicate_id in {
        "EXT-WITHDRAWAL-EFFECT-HASH-BINDING",
        "EXT-WITHDRAWAL-PAYLOAD-PROJECTION",
        "EXT-WITHDRAWAL-ROUTE-AUTHORIZED",
        "EXT-TRANSFER-EFFECT-HASH-COMPLIANCE-BINDING",
        "WITHDRAWAL-INTENT-FIELD-BINDING",
    }:
        assumptions.add("ZK-ASSUME-EFFECT-HASH-BLAKE2B")
    if predicate_id in {
        "DUMMY-NULLIFIER-DOMAIN-BINDING",
        "DUMMY-SLOT-POSITION-BINDING",
    }:
        assumptions.add(
            "ZK-ASSUME-SYNTHETIC-NULLIFIER-CROSS-DOMAIN-CR"
        )
    if predicate_id in {
        "PUBLIC-STATEMENT-BINDING",
        "EXT-PUBLIC-INPUT-PROJECTION",
    }:
        assumptions.add("ZK-ASSUME-PUBLIC-INPUT-HASH-CR")
    if predicate_id in COMPLIANCE_PRIVACY_ASSUMPTION_PREDICATES:
        assumptions.update(
            {
                "CC-ASSUME-COMPRESSED-DH-MASK",
                "CC-ASSUME-POSEIDON-STREAM",
                "CC-ASSUME-TRANSFER-NONCE-FRESHNESS",
            }
        )
    if predicate_id in {
        "EXT-WITHDRAWAL-STATE-TRANSITION",
        "EXT-WITHDRAWAL-ACTION-ATOMICITY",
    }:
        assumptions.add("ZK-ASSUME-ICS20-SUPPLY-CONSERVATION")
    return sorted(assumptions) if assumptions else ["none"]


REFINEMENT_CONSEQUENCES = {
    "note_reshape": (
        "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
        "NoteReshape/Refinement.lean",
        "theorem consensusAccepted_of_circuitFacts",
    ),
    "transfer": (
        "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
        "Transfer/Refinement.lean",
        "theorem consensusAccepted_of_circuitFacts",
    ),
    "shielded_ics20_withdrawal": (
        "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
        "ShieldedIcs20Withdrawal/Refinement.lean",
        "theorem consensusAccepted_of_circuitFacts",
    ),
}
TRANSACTION_REFINEMENT_CONSEQUENCES = {
    family: (path, "theorem transactionAccepted_of_circuitFacts")
    for family, (path, _) in REFINEMENT_CONSEQUENCES.items()
}
DEPLOYED_ACCEPTANCE_CONSEQUENCES = {
    "note_reshape8x1": (
        "tools/gnark/lean/ShielddGnarkFormal/Deployed/"
        "NoteReshape8x1Soundness.lean",
        "theorem consensusAccepted_of_deployedRelation",
    ),
    "note_reshape1x8": (
        "tools/gnark/lean/ShielddGnarkFormal/Deployed/"
        "NoteReshape1x8Soundness.lean",
        "theorem consensusAccepted_of_deployedRelation",
    ),
    "transfer": (
        "tools/gnark/lean/ShielddGnarkFormal/Deployed/"
        "TransferRefinement.lean",
        "theorem consensusAccepted_of_deployedRelation",
    ),
    "shielded_ics20_withdrawal": (
        "tools/gnark/lean/ShielddGnarkFormal/Deployed/"
        "ShieldedIcs20WithdrawalRefinement.lean",
        "theorem consensusAccepted_of_deployedRelation",
    ),
}
DEPLOYED_TRANSACTION_ACCEPTANCE_CONSEQUENCES = {
    profile: (path, "theorem transactionAccepted_of_deployedRelation")
    for profile, (path, _) in DEPLOYED_ACCEPTANCE_CONSEQUENCES.items()
}
SECURITY_CONSEQUENCES = {
    "DEC-AUTHORIZATION-KEY-ENCODING": {
        "note_reshape": (
            "theorem consensusAccepted_authorizationKey_encoding",
        ),
        "transfer": ("theorem consensusAccepted_authorizationKey_encoding",),
        "shielded_ics20_withdrawal": (
            "theorem consensusAccepted_authorizationKey_encoding",
        ),
    },
    "DEC-AUTHORIZATION-KEY-NONIDENTITY": {
        "note_reshape": (
            "theorem consensusAccepted_authorizationKey_nonIdentity",
        ),
        "transfer": (
            "theorem consensusAccepted_authorizationKey_nonIdentity",
        ),
        "shielded_ics20_withdrawal": (
            "theorem consensusAccepted_authorizationKey_nonIdentity",
        ),
    },
    "DEC-INCOMING-VIEWING-KEY-DERIVATION": {
        "note_reshape": (
            "theorem consensusAccepted_incomingViewingKey_derivation",
        ),
        "transfer": (
            "theorem consensusAccepted_incomingViewingKey_derivation",
        ),
        "shielded_ics20_withdrawal": (
            "theorem consensusAccepted_incomingViewingKey_derivation",
        ),
    },
    "DEC-INCOMING-VIEWING-KEY-NONZERO": {
        "note_reshape": (
            "theorem consensusAccepted_incomingViewingKey_nonzero",
        ),
        "transfer": (
            "theorem consensusAccepted_incomingViewingKey_nonzero",
        ),
        "shielded_ics20_withdrawal": (
            "theorem consensusAccepted_incomingViewingKey_nonzero",
        ),
    },
    "DEC-DIVERSIFIED-GENERATOR-NONIDENTITY": {
        "note_reshape": (
            "theorem consensusAccepted_sharedDiversifiedGenerator_nonIdentity",
        ),
        "transfer": (
            "theorem consensusAccepted_senderDiversifiedGenerator_nonIdentity",
            "theorem consensusAccepted_receiverDiversifiedGenerator_nonIdentity",
        ),
        "shielded_ics20_withdrawal": (
            "theorem consensusAccepted_senderDiversifiedGenerator_nonIdentity",
        ),
    },
    "DEC-TRANSMISSION-KEY-NONIDENTITY": {
        "note_reshape": (
            "theorem consensusAccepted_sharedTransmissionKey_nonIdentity",
        ),
        "transfer": (
            "theorem consensusAccepted_senderTransmissionKey_nonIdentity",
            "theorem consensusAccepted_receiverTransmissionKey_nonIdentity",
        ),
        "shielded_ics20_withdrawal": (
            "theorem consensusAccepted_senderTransmissionKey_nonIdentity",
        ),
    },
    "DEC-RANDOMIZED-VERIFICATION-KEY-NONIDENTITY": {
        "note_reshape": (
            "theorem consensusAccepted_randomizedVerificationKeys_nonIdentity",
        ),
        "transfer": (
            "theorem consensusAccepted_randomizedVerificationKeys_nonIdentity",
        ),
        "shielded_ics20_withdrawal": (
            "theorem consensusAccepted_randomizedVerificationKeys_nonIdentity",
        ),
    },
    "FIELD-AUTH-RANDOMIZER-RANGE": {
        "note_reshape": ("theorem consensusAccepted_randomizersCanonical",),
    },
    "DUMMY-SLOT-POSITION-BINDING": {
        "note_reshape": (
            "theorem consensusAccepted_dummySlotIndicesCanonical",
        ),
    },
    "FIELD-BALANCE-BLINDING-RANGE": {
        "note_reshape": (
            "theorem consensusAccepted_balanceBlindingCanonical",
        ),
    },
}

STATE_SEMANTIC_CONSEQUENCES = {
    "EXT-NULLIFIER-TX-UNIQUENESS": {
        "note_reshape": (
            "theorem transactionAcceptedNullifiersUnique",
        ),
        "transfer": ("theorem transactionAcceptedNullifiersUnique",),
        "shielded_ics20_withdrawal": (
            "theorem transactionAcceptedNullifiersUnique",
        ),
    },
    "EXT-OUTPUT-PERSISTENCE": {
        "note_reshape": (
            "theorem transactionAcceptedIncludesTargetOutputs",
        ),
        "transfer": (
            "theorem transactionAcceptedIncludesTargetOutputs",
        ),
        "shielded_ics20_withdrawal": (
            "theorem transactionAcceptedIncludesTargetChange",
        ),
    },
    "EXT-TRANSACTION-EFFECTS-ATOMICITY": {
        "note_reshape": (
            "theorem transactionAcceptedNullifiersUnique",
            "theorem transactionAcceptedIncludesTargetOutputs",
        ),
        "transfer": (
            "theorem transactionAcceptedNullifiersUnique",
            "theorem transactionAcceptedIncludesTargetOutputs",
        ),
        "shielded_ics20_withdrawal": (
            "theorem transactionAcceptedNullifiersUnique",
            "theorem transactionAcceptedIncludesTargetChange",
            "theorem transactionAcceptedIncludesTargetWithdrawalEffects",
        ),
    },
    "EXT-WITHDRAWAL-STATE-TRANSITION": {
        "shielded_ics20_withdrawal": (
            "theorem transactionAcceptedIncludesTargetWithdrawalEffects",
        ),
    },
    "EXT-WITHDRAWAL-ACTION-ATOMICITY": {
        "shielded_ics20_withdrawal": (
            "theorem transactionAcceptedNullifiersUnique",
            "theorem transactionAcceptedIncludesTargetChange",
            "theorem transactionAcceptedIncludesTargetWithdrawalEffects",
        ),
    },
}


def consequence_evidence_for(
    predicate_id: str, grouped_profiles: list[str]
) -> list[dict]:
    families = sorted(
        {PROFILES[profile]["family"] for profile in grouped_profiles}
    )
    by_path: dict[str, set[str]] = {}
    if PREDICATES[predicate_id][0] == "construction":
        for family in families:
            protocol_dir = {
                "note_reshape": "NoteReshape",
                "transfer": "Transfer",
                "shielded_ics20_withdrawal": "ShieldedIcs20Withdrawal",
            }[family]
            by_path.setdefault(
                "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
                f"{protocol_dir}/Semantics.lean",
                set(),
            ).add("structure ConstructedAndAccepted")
        return [
            source(path, *sorted(symbols))
            for path, symbols in sorted(by_path.items())
        ]
    for family in families:
        path, symbol = REFINEMENT_CONSEQUENCES[family]
        by_path.setdefault(path, set()).add(symbol)
        if predicate_id in {
            "EXT-NULLIFIER-TX-UNIQUENESS",
            "EXT-OUTPUT-PERSISTENCE",
            "EXT-TRANSACTION-EFFECTS-ATOMICITY",
            "EXT-WITHDRAWAL-ACTION-ATOMICITY",
            "EXT-WITHDRAWAL-STATE-TRANSITION",
        }:
            transaction_path, transaction_symbol = (
                TRANSACTION_REFINEMENT_CONSEQUENCES[family]
            )
            by_path.setdefault(transaction_path, set()).add(
                transaction_symbol
            )
        security_symbols = SECURITY_CONSEQUENCES.get(
            predicate_id, {}
        ).get(family, ())
        if security_symbols:
            security_dir = {
                "note_reshape": "NoteReshape",
                "transfer": "Transfer",
                "shielded_ics20_withdrawal":
                    "ShieldedIcs20Withdrawal",
            }[family]
            security_path = (
                "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
                f"{security_dir}/Security.lean"
            )
            by_path.setdefault(security_path, set()).update(
                security_symbols
            )
        state_symbols = STATE_SEMANTIC_CONSEQUENCES.get(
            predicate_id, {}
        ).get(family, ())
        if state_symbols:
            state_dir = {
                "note_reshape": "NoteReshape",
                "transfer": "Transfer",
                "shielded_ics20_withdrawal":
                    "ShieldedIcs20Withdrawal",
            }[family]
            state_path = (
                "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
                f"{state_dir}/Semantics.lean"
            )
            by_path.setdefault(state_path, set()).update(state_symbols)
    for profile in grouped_profiles:
        path, symbol = DEPLOYED_ACCEPTANCE_CONSEQUENCES[profile]
        by_path.setdefault(path, set()).add(symbol)
        if predicate_id in {
            "EXT-NULLIFIER-TX-UNIQUENESS",
            "EXT-OUTPUT-PERSISTENCE",
            "EXT-TRANSACTION-EFFECTS-ATOMICITY",
            "EXT-WITHDRAWAL-ACTION-ATOMICITY",
            "EXT-WITHDRAWAL-STATE-TRANSITION",
        }:
            transaction_path, transaction_symbol = (
                DEPLOYED_TRANSACTION_ACCEPTANCE_CONSEQUENCES[profile]
            )
            by_path.setdefault(transaction_path, set()).add(
                transaction_symbol
            )
        generated = GENERATED_CONSEQUENCE_PAIRS.get(
            (profile, predicate_id)
        )
        if generated is not None:
            generated_path, generated_symbol = generated
            by_path.setdefault(generated_path, set()).add(generated_symbol)
    return [
        source(path, *sorted(symbols))
        for path, symbols in sorted(by_path.items())
    ]


def test_ids_for(
    predicate_id: str,
    evidence_id: str,
    grouped_profiles: list[str],
    test_rows: dict[str, dict],
) -> list[str]:
    result = sorted(
        test_id
        for test_id in EVIDENCE_BY_ID[evidence_id]["test_ids"]
        if predicate_id in test_rows[test_id]["predicate_ids"]
        and set(grouped_profiles) <= set(test_rows[test_id]["profiles"])
    )
    if not result:
        raise ValueError(
            f"{predicate_id}/{evidence_id}: no exact test selection"
        )
    return result


def semantic_contract_for(
    predicate_id: str,
    placement: str,
    trace_ids: list[str],
    formal_fact_ids: list[str],
) -> dict:
    if placement == "circuit":
        trace_by_id = {
            trace["id"]: trace
            for evidence in EVIDENCE
            for trace in evidence["trace_instances"]
        }
        bound_variables = sorted(
            {
                f"{trace_by_id[trace_id]['role']}::{argument}"
                for trace_id in trace_ids
                for argument in trace_by_id[trace_id]["args"]
            }
        )
        evidence_removal_mode = "remove_trace_evidence"
        evidence_removal_targets = sorted(trace_ids)
    else:
        bound_variables = sorted(formal_fact_ids)
        evidence_removal_mode = "remove_formal_fact_evidence"
        evidence_removal_targets = sorted(formal_fact_ids)
    if not bound_variables or not evidence_removal_targets:
        raise ValueError(
            f"{predicate_id}: executable semantic contract is empty"
        )
    return {
        "branch_condition": branch_condition_for(predicate_id),
        "binding_mode": binding_mode_for(predicate_id, placement),
        "disclosure": disclosure_for(predicate_id, placement),
        "variable_source": variable_source_for(placement),
        "bound_variables": bound_variables,
        "evidence_removal": {
            "mode": evidence_removal_mode,
            "targets": evidence_removal_targets,
        },
    }


def render() -> dict:
    role_sets: list[dict] = []
    predicate_rows: list[dict] = []
    rendered_tests = tests()
    rendered_runtime_contract = runtime_policy_contract()
    rendered_property_test_contract = property_test_contract()
    rendered_artifact_test_contract = artifact_test_contract()
    test_rows = {row["id"]: row for row in rendered_tests}
    selected_trace_ids: set[str] = set()
    selected_formal_fact_ids: set[str] = set()
    selected_ledger_ids: set[str] = set()
    selected_test_ids: set[str] = set()
    role_counter = 0
    for predicate_id, (placement, profiles) in sorted(PREDICATES.items()):
        applications = []
        predicate_ledger_ids: set[str] = set()
        grouped = [
            (evidence_for(placement, profile), [profile])
            for profile in sorted(profiles)
        ]
        for evidence_id, grouped_profiles in grouped:
            role_counter += 1
            role_set_id = f"ROLE-{role_counter:04d}"
            profile_roles = []
            application_trace_ids = []
            for profile in grouped_profiles:
                if placement == "circuit":
                    matches = [
                        trace
                        for trace in TRACE_BY_PROFILE[profile]
                        if predicate_id
                        in trace_predicates(
                            profile,
                            next(
                                segment
                                for segment in manifest_for(profile)["segments"]
                                if segment["index"]
                                == int(trace["id"].rsplit("-", 1)[1])
                            ),
                        )
                    ]
                    if not matches:
                        raise ValueError(
                            f"{predicate_id}/{profile}: no exact trace evidence"
                        )
                    roles = [trace["role"] for trace in matches]
                    trace_ids = [trace["id"] for trace in matches]
                    application_trace_ids.extend(trace_ids)
                    selected_trace_ids.update(trace_ids)
                else:
                    roles = [f"boundary.{slug(predicate_id)}"]
                profile_roles.append(
                    {
                        "profile": profile,
                        "roles": roles,
                        "multiplicity": len(roles),
                    }
                )
            role_sets.append(
                {"id": role_set_id, "profile_roles": profile_roles}
            )
            application_formal_facts = formal_facts_for(
                predicate_id, evidence_id
            )
            application_ledger_ids = ledger_ids_for(
                predicate_id, grouped_profiles
            )
            application_test_ids = test_ids_for(
                predicate_id,
                evidence_id,
                grouped_profiles,
                test_rows,
            )
            selected_formal_fact_ids.update(application_formal_facts)
            selected_ledger_ids.update(application_ledger_ids)
            selected_test_ids.update(application_test_ids)
            predicate_ledger_ids.update(application_ledger_ids)
            applications.append(
                {
                    "role_set": role_set_id,
                    "evidence_set": evidence_id,
                    "trace_instance_ids": application_trace_ids,
                    "formal_fact_ids": application_formal_facts,
                    "ledger_ids": application_ledger_ids,
                    "ledger_evidence_sets": ledger_evidence_sets_for(
                        application_ledger_ids
                    ),
                    "test_ids": application_test_ids,
                    "consequence_evidence": consequence_evidence_for(
                        predicate_id, grouped_profiles
                    ),
                    "semantic_contract": semantic_contract_for(
                        predicate_id,
                        placement,
                        application_trace_ids,
                        application_formal_facts,
                    ),
                }
            )
        predicate_rows.append(
            {
                "id": predicate_id,
                "category": category(predicate_id),
                "severity": (
                    "critical"
                    if predicate_id
                    in {
                        "DEC-AUTHORIZATION-KEY-ENCODING",
                        "DEC-AUTHORIZATION-KEY-NONIDENTITY",
                        "DEC-DIVERSIFIED-GENERATOR-NONIDENTITY",
                        "DEC-INCOMING-VIEWING-KEY-DERIVATION",
                        "DEC-INCOMING-VIEWING-KEY-NONZERO",
                        "DEC-RANDOMIZED-VERIFICATION-KEY-NONIDENTITY",
                        "DEC-TRANSMISSION-KEY-NONIDENTITY",
                        "NOTE-SPEND-COMMITMENT",
                        "NOTE-SPEND-NULLIFIER-DERIVATION",
                        "SCT-SPEND-MEMBERSHIP",
                        "VALUE-CONSERVATION",
                        "PUBLIC-STATEMENT-BINDING",
                        "EXT-SPEND-AUTH-SIGNATURE",
                        "EXT-PUBLIC-INPUT-PROJECTION",
                        "EXT-PROOF-FAMILY-KEY-SELECTION",
                        "EXT-PROOF-VERIFICATION",
                        "EXT-NULLIFIER-ATOMIC-TRANSITION",
                        "EXT-OUTPUT-PERSISTENCE",
                        "EXT-TRANSACTION-EFFECTS-ATOMICITY",
                        "EXT-WITHDRAWAL-ACTION-ATOMICITY",
                    }
                    else "high"
                ),
                "placement": placement,
                "branch_condition": branch_condition_for(predicate_id),
                "binding_mode": binding_mode_for(predicate_id, placement),
                "disclosure": disclosure_for(predicate_id, placement),
                "variable_source": variable_source_for(placement),
                "statement": STATEMENTS[predicate_id],
                "security_objectives": security_objectives_for(predicate_id),
                "assumptions": assumptions_for(predicate_id, placement),
                "reference_evidence": source(
                    (
                        "crates/core/component/shielded-pool/formal/"
                        "certified-circuit-obligation-ledger.md"
                    ),
                    *[
                        f"`{ledger_id}`"
                        for ledger_id in sorted(predicate_ledger_ids)
                    ],
                ),
                "applications": applications,
                "not_applicable_profiles": sorted(ALL - profiles),
            }
        )
    declared_trace_ids = {
        trace["id"]
        for evidence in EVIDENCE
        for trace in evidence["trace_instances"]
    }
    if selected_trace_ids != declared_trace_ids:
        raise ValueError(
            "unmapped exact trace rows: "
            f"{sorted(declared_trace_ids-selected_trace_ids)}"
        )
    declared_formal_fact_ids = {
        fact_id
        for evidence in EVIDENCE
        for fact_id in evidence["formal_fact_ids"]
    }
    if selected_formal_fact_ids != declared_formal_fact_ids:
        raise ValueError(
            "unmapped formal facts: "
            f"{sorted(declared_formal_fact_ids-selected_formal_fact_ids)}"
        )
    declared_ledger_ids = {
        ledger_id
        for evidence in EVIDENCE
        for ledger_id in evidence["ledger_ids"]
    }
    if selected_ledger_ids != declared_ledger_ids:
        raise ValueError(
            "unmapped obligation-ledger rows: "
            f"{sorted(declared_ledger_ids-selected_ledger_ids)}"
        )
    if selected_test_ids != set(test_rows):
        raise ValueError(
            "unmapped tests: "
            f"{sorted(set(test_rows)-selected_test_ids)}"
        )
    return {
        "schema": "shieldd.gnark.specification_predicate_matrix.v5",
        "claim_set": "shieldd.fixed_shape.complete_security_predicates.v3",
        "requirement_source": (
            "crates/core/component/shielded-pool/formal/"
            "fv-specification-requirements.json"
        ),
        "native_type_parity_census": (
            "crates/core/component/shielded-pool/formal/"
            "native-circuit-predicate-census.json"
        ),
        "certification_status_vocabulary": [
            "draft",
            "coverage_closed",
            "specification_closed",
            "relation_verified",
            "release_certified",
            "stale",
            "suspended",
            "revoked",
        ],
        "profiles": [
            {"label": label, **profile}
            for label, profile in PROFILES.items()
        ],
        "proof_acceptance_surface": PROOF_ACCEPTANCE_SURFACE,
        "runtime_policy_contract": rendered_runtime_contract,
        "property_test_contract": rendered_property_test_contract,
        "artifact_test_contract": rendered_artifact_test_contract,
        "reviewed_test_census": reviewed_test_census(
            rendered_tests,
            rendered_runtime_contract["tests"],
            rendered_property_test_contract["tests"],
            rendered_artifact_test_contract["tests"],
        ),
        "role_sets": role_sets,
        "tests": rendered_tests,
        "property_contract": [
            {
                "id": property_id,
                "scope": property_scope_for(predicate_ids),
                "profiles": sorted(profiles),
                "predicate_ids": sorted(
                    predicate_id
                    for predicate_id in predicate_ids
                    if profiles & PREDICATES[predicate_id][1]
                ),
            }
            for property_id, (profiles, predicate_ids)
            in sorted(PROPERTY_CONTRACT.items())
        ],
        "evidence_sets": EVIDENCE,
        "predicates": predicate_rows,
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    contents = json.dumps(render(), indent=2, ensure_ascii=False) + "\n"
    if args.check:
        if not OUT.is_file() or OUT.read_text(encoding="utf-8") != contents:
            raise SystemExit(f"stale generated specification matrix: {OUT}")
        print("FV specification matrix is current")
        return
    OUT.write_text(contents, encoding="utf-8")
    print(f"wrote {OUT}")


if __name__ == "__main__":
    main()
