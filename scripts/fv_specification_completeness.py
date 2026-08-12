#!/usr/bin/env python3
"""Fail-closed specification coverage for the four fixed gnark circuits."""

from __future__ import annotations

import argparse
from collections import Counter
import hashlib
import json
import os
import re
import sys
import tomllib
from pathlib import Path, PurePosixPath
from typing import AbstractSet, Any

LEAN_GENERATOR_DIR = (
    Path(__file__).resolve().parents[1] / "tools/gnark/lean/gen"
)
sys.path.insert(0, str(LEAN_GENERATOR_DIR))
from lean_import_parser import parse_lean_imports

try:
    from . import fv_rust_evidence_classification as rust_evidence
    from .fv_strict_json import StrictJsonError
    from .fv_strict_json import loads as loads_strict_json
except ImportError:
    import fv_rust_evidence_classification as rust_evidence
    from fv_strict_json import StrictJsonError
    from fv_strict_json import loads as loads_strict_json


ROOT = Path(__file__).resolve().parents[1]
FORMAL = ROOT / "crates/core/component/shielded-pool/formal"
MATRIX = FORMAL / "fv-specification-predicate-matrix.json"
MATRIX_SCHEMA = FORMAL / "fv-specification-predicate-matrix.schema.json"
REQUIREMENT_SOURCE = FORMAL / "fv-specification-requirements.json"
CONSEQUENCE_ROSTER = FORMAL / "fv-predicate-consequence-roster.json"
PROFILE_CATALOG = ROOT / "tools/gnark/fv_profiles.json"
NATIVE_TYPE_PARITY_CENSUS = FORMAL / "native-circuit-predicate-census.json"
OBLIGATION_LEDGER_RELATIVE = (
    "crates/core/component/shielded-pool/formal/"
    "certified-circuit-obligation-ledger.md"
)
ASSUMPTION_LEDGER_RELATIVE = (
    "crates/core/component/compliance/formal/assumption-ledger.md"
)
PROPERTY_SOURCE_PATHS = (
    (
        "crates/core/component/shielded-pool/formal/"
        "circuit-soundness-properties.md"
    ),
    "crates/core/component/compliance/formal/soundness-properties.md",
)
EXTERNAL_CHECK_MAP_RELATIVE = (
    "crates/core/component/shielded-pool/formal/external-check-map.md"
)
FINDINGS_LEDGER_RELATIVE = (
    "crates/core/component/shielded-pool/formal/"
    "circuit-soundness-findings.md"
)
ASSURANCE_GUIDE_RELATIVE = "docs/soundness/fv.md"
NORMATIVE_MARKDOWN_INPUTS = (
    OBLIGATION_LEDGER_RELATIVE,
    ASSUMPTION_LEDGER_RELATIVE,
    *PROPERTY_SOURCE_PATHS,
    EXTERNAL_CHECK_MAP_RELATIVE,
    FINDINGS_LEDGER_RELATIVE,
    ASSURANCE_GUIDE_RELATIVE,
)
SEMANTIC_BUILD_EVIDENCE_INPUTS = (
    ".cargo/config.toml",
    ".github/actions/setup-nix-rust/action.yml",
    "flake.lock",
    "flake.nix",
    "rust-toolchain.toml",
)
SEMANTIC_SCOPE_EXCLUSIONS = {
    ".github/workflows/formal.yml": (
        "PR orchestration selects assurance work but is not four-circuit "
        "protocol semantics"
    ),
    ".github/workflows/formal-scheduled.yml": (
        "scheduled orchestration does not govern the four-circuit merge/release "
        "claim"
    ),
    ".github/workflows/soundness-provers.yml": (
        "scheduled research provers are outside the four fixed-circuit claim"
    ),
    ".github/workflows/fv-toolchain-image.yml": (
        "formal.yml binds the active FV toolchain by immutable container digest"
    ),
    ".github/workflows/rust.yml": (
        "Rust CI orchestration is assurance policy, not protocol semantics"
    ),
    "ci/gates/soundness-formal.json": (
        "impact classification selects assurance work but does not define the "
        "four circuits"
    ),
    "scripts/ci/gate-applicability.py": (
        "impact classifier implementation is assurance policy, not protocol "
        "semantics"
    ),
    "scripts/ci/test_gate_applicability.py": (
        "impact classifier tests are assurance controls, not protocol semantics"
    ),
    "deny.toml": (
        "license/advisory policy is not an FV evidence or circuit-semantic input"
    ),
    "justfile": (
        "the four-circuit evidence runner and soundness release lane invoke "
        "their checks directly"
    ),
}
SEMANTIC_GNARK_CONTRACT_INPUTS = (
    "tools/gnark/note_reshape_families.json",
    "tools/gnark/transfer_families.json",
    "tools/gnark/shielded_ics20_withdrawal_families.json",
    "tools/gnark/internal/primitives/vectors/phase05_vectors.json",
    "tools/gnark/artifacts/proof-template-registry.json",
    "tools/gnark/artifacts/certified-template-inventory.json",
    "tools/gnark/artifacts/proof-template-ownership.json",
    "tools/gnark/artifacts/note-reshape-witness-roles.json",
)
SEMANTIC_RELATION_REGISTRY_RELATIVE = (
    "tools/gnark/artifacts/proof-template-registry.json"
)
SEMANTIC_RELATION_ROOT = (
    "tools/gnark/artifacts/proof-template-relations"
)
OBLIGATION_LEDGER = ROOT / OBLIGATION_LEDGER_RELATIVE
ASSUMPTION_LEDGER = ROOT / ASSUMPTION_LEDGER_RELATIVE
SEMANTIC_PIN = ROOT / "tools/gnark/lean/certified-protocol-semantics.sha256"

SEMANTIC_BASE_FILES = (
    "Cargo.toml",
    "Cargo.lock",
    "tools/gnark/go.mod",
    "tools/gnark/go.sum",
    "tools/gnark/fv_profiles.json",
    "tools/gnark/fv_certification_backends.json",
    "tools/gnark/lean/lean-toolchain",
    "tools/gnark/lean/lakefile.lean",
    "tools/gnark/lean/lake-manifest.json",
    "tools/gnark/third_party/gnark-lean-extractor/go.mod",
    "tools/gnark/third_party/gnark-lean-extractor/go.sum",
    "crates/core/app/Cargo.toml",
    "crates/core/component/shielded-pool/Cargo.toml",
    "crates/core/component/ibc/Cargo.toml",
    "crates/core/component/compliance/Cargo.toml",
    "crates/core/component/sct/Cargo.toml",
    "crates/cnidarium-component/Cargo.toml",
    "crates/crypto/constraint-coverage/Cargo.toml",
    "crates/crypto/proof-params/Cargo.toml",
    "crates/crypto/proof-aggregation/Cargo.toml",
    "crates/crypto/tct/Cargo.toml",
    "tools/gnark/lean/ShielddGnarkFormal.lean",
    "tools/gnark/lean/ShielddGnarkFormal/Poseidon377.lean",
    "tools/gnark/lean/ShielddGnarkFormal/ChoiceFreeZMod.lean",
    "crates/core/component/shielded-pool/formal/fv-specification-predicate-matrix.schema.json",
    "crates/core/component/shielded-pool/formal/fv-specification-predicate-matrix.json",
    "crates/core/component/shielded-pool/formal/fv-specification-requirements.json",
    "crates/core/component/shielded-pool/formal/fv-predicate-consequence-roster.json",
    "crates/core/component/shielded-pool/formal/native-circuit-predicate-census.json",
    *NORMATIVE_MARKDOWN_INPUTS,
    *SEMANTIC_BUILD_EVIDENCE_INPUTS,
    *SEMANTIC_GNARK_CONTRACT_INPUTS,
)
SEMANTIC_DISCOVERY_ROOTS = (
    "tools/gnark/lean/ShielddGnarkFormal/Protocol",
    "tools/gnark/lean/ShielddGnarkFormal/Poseidon377",
    "tools/gnark/third_party/gnark-lean-extractor/test",
)
SEMANTIC_EXACT_DISCOVERY_FILES = {
    "tools/gnark/third_party/gnark-lean-extractor/test": (
        "TestAnotherCircuit.lean",
        "TestCircuitWithParameter.lean",
        "TestDeletionMbuCircuit.lean",
        "TestExtractCircuits.lean",
        "TestExtractGadgets.lean",
        "TestExtractGadgetsVectors.lean",
        "TestGadgetExtraction.lean",
        "TestMerkleRecover.lean",
        "TestMyCircuit.lean",
        "TestSlicesOptimisation.lean",
        "TestToBinaryCircuit.lean",
        "TestTwoGadgets.lean",
    ),
}
SEMANTIC_EXACT_INPUT_ROSTERS = {
    "tools/gnark/lean/gen": (
        (".json",),
        tuple(
            sorted(
                {
                    "dtk_ivk_gendata.json",
                    "gendata.json",
                    "net_balance_gendata.json",
                    "nullifier_gendata.json",
                    "state_commitment_leaf_gendata.json",
                    "statement_hash_gendata.json",
                    *(
                        f"state_commitment_node{level}_gendata.json"
                        for level in range(24)
                    ),
                }
            )
        ),
    ),
    "tools/gnark/lean/gen/templates": (
        (".tmpl",),
        ("NoteReshapeCanonicalAddress.lean.tmpl",),
    ),
    "tools/gnark/rust-vectors": (
        (".lock", ".rs", ".toml"),
        ("Cargo.lock", "Cargo.toml", "src/main.rs"),
    ),
}
SEMANTIC_IMPLEMENTATION_ROOTS = (
    # Assurance scripts are deliberately not swept into protocol semantics.
    # Their committed normative outputs and the implementations they inspect
    # remain bound below, while CI/checker refactors cannot invalidate proofs.
    ("crates", (".rs", ".toml", ".proto", ".json")),
    ("proto", (".proto",)),
    ("tools/gnark", (".go", ".py", ".sh")),
)
SEMANTIC_EXCLUDED_DIRECTORY_NAMES = frozenset(
    {".git", ".lake", "__pycache__", "node_modules", "target"}
)
SEMANTIC_EXCLUDED_IMPLEMENTATION_PATHS = frozenset(
    {
        # Local pcli proposal input is deliberately ignored and is not source.
        "crates/bin/pcli/proposal.toml",
        # Trusted checker output attests to a semantic input set; it is not
        # itself a protocol-semantic input. Including it creates a refresh
        # cycle where committing new evidence invalidates every circuit pin.
        (
            "crates/crypto/proof-aggregation/formal/snarkpack/"
            "fstar-checker-evidence.json"
        ),
        (
            "crates/crypto/proof-aggregation/formal/snarkpack/"
            "verification-manifest.json"
        ),
    }
)
PROOF_ACCEPTANCE_TEST_PATH = (
    "crates/core/app/src/app/tests/proof_acceptance_tests.rs"
)
PROOF_ACCEPTANCE_REQUIRED_RECEIPTED_TESTS = (
    (
        "crates/core/app/src/app/mod.rs",
        "proposal_tx_count_policy_is_fixed_at_boundary",
        "proposal count-bound evidence",
    ),
    (
        "crates/core/app/src/app/mod.rs",
        "proposal_payload_size_policy_is_fixed_at_boundary",
        "proposal payload-bound evidence",
    ),
    (
        "crates/core/app/src/app/mod.rs",
        "proposal_nullifier_count_policy_is_fixed_at_boundary",
        "proposal nullifier-bound evidence",
    ),
    (
        "crates/core/app/src/app/mod.rs",
        "proof_worker_concurrency_is_bounded_for_all_hardware_sizes",
        "proof worker-bound evidence",
    ),
    (
        "crates/core/app/src/app/mod.rs",
        "consensus_acceptance_source_has_no_diagnostic_io",
        "diagnostic-I/O absence evidence",
    ),
    (
        "crates/core/app/src/app/mod.rs",
        "prepare_proposal_verifies_and_upgrades_extracted_cache_entry",
        "PrepareProposal cache-upgrade evidence",
    ),
    (
        "crates/core/app/src/stateless_cache.rs",
        "verified_artifact_capability_rows_reject_every_coverage_and_binding_mismatch",
        "capability mismatch evidence",
    ),
    (
        "crates/core/app/src/stateless_cache.rs",
        "valid_cache_entries_reject_raw_transaction_artifact_mismatch",
        "raw-byte association evidence",
    ),
    (
        "crates/core/app/src/action_handler/transaction.rs",
        "structured_join_drain_waits_for_transaction_siblings_after_error",
        "structured task-drain evidence",
    ),
    *(
        (
            PROOF_ACCEPTANCE_TEST_PATH,
            symbol,
            "four-circuit proof acceptance evidence",
        )
        for symbol in (
            "fv_runtime_transaction_stateless_rejects_decodable_invalid_groth16",
            "fv_runtime_process_proposal_rejects_decodable_invalid_groth16",
            "fv_runtime_fee_funding_process_proposal_rejects_invalid_groth16",
            "fv_runtime_fee_funding_valid_proof_executes_and_persists",
            "fv_runtime_prepare_proposal_excludes_decodable_invalid_groth16",
            "fv_runtime_cold_deliver_rejects_invalid_groth16_without_state_mutation",
            "fv_runtime_extracted_cache_cannot_bypass_groth16_verification",
            "fv_runtime_cache_promotion_never_exceeds_exact_groth16_attestation",
        )
    ),
)
WITHDRAWAL_RUNTIME_TEST_PATH = (
    "crates/core/component/shielded-pool/src/component/transfer.rs"
)
WITHDRAWAL_ACTION_HANDLER_TEST_PATH = (
    "crates/core/component/shielded-pool/src/component/action_handler/"
    "shielded_ics20_withdrawal.rs"
)
CLOSED_ACTION_HANDLER_TEST_PATHS = (
    (
        "crates/core/component/shielded-pool/src/component/action_handler/"
        "note_reshape.rs"
    ),
    (
        "crates/core/component/shielded-pool/src/component/action_handler/"
        "transfer.rs"
    ),
    WITHDRAWAL_ACTION_HANDLER_TEST_PATH,
)
CLOSED_DYNAMIC_PROOF_TEST_PATHS = (
    "crates/core/component/shielded-pool/src/note_reshape/proof.rs",
    (
        "crates/core/component/shielded-pool/src/"
        "shielded_ics20_withdrawal/proof.rs"
    ),
)

MATRIX_SCHEMA_ID = "shieldd.gnark.specification_predicate_matrix.v5"
MATRIX_SCHEMA_URL = (
    "https://shieldd.dev/schemas/fv-specification-predicate-matrix.v5.json"
)
CLAIM_SET = "shieldd.fixed_shape.complete_security_predicates.v3"
REQUIREMENT_SCHEMA_ID = "shieldd.gnark.specification_requirements.v3"
CONSEQUENCE_ROSTER_SCHEMA_ID = (
    "shieldd.gnark.predicate_consequence_roster.v1"
)
NATIVE_CENSUS_SCHEMA_VERSION = 3
REQUIRED_NATIVE_CENSUS_ASSUMPTION_IDS = frozenset(
    {"ZK-ASSUME-DIVERSIFIER-HASH-TO-GENERATOR-NONIDENTITY"}
)
REQUIRED_NATIVE_PARITY_TYPES = {
    "DEC-AUTHORIZATION-KEY-NONIDENTITY": {
        "domain_enforcement": "FullViewingKey",
        "r1cs_enforcement": "AuthorizationKeyVar",
    },
    "DEC-DIVERSIFIED-GENERATOR-NONIDENTITY": {
        "domain_enforcement": "Address",
        "r1cs_enforcement": "AddressVar",
    },
    "DEC-INCOMING-VIEWING-KEY-NONZERO": {
        "domain_enforcement": "FullViewingKey",
        "r1cs_enforcement": "IncomingViewingKeyVar",
    },
    "DEC-TRANSMISSION-KEY-NONIDENTITY": {
        "domain_enforcement": "Address",
        "r1cs_enforcement": "AddressVar",
    },
}
REQUIRED_NATIVE_R1CS_CONSTRAINT_OPERATIONS = {
    "DEC-AUTHORIZATION-KEY-NONIDENTITY": ("enforce_not_equal",),
    "DEC-DIVERSIFIED-GENERATOR-NONIDENTITY": ("enforce_not_equal",),
    "DEC-INCOMING-VIEWING-KEY-NONZERO": (
        "new_witness",
        "enforce_equal",
    ),
    "DEC-TRANSMISSION-KEY-NONIDENTITY": ("enforce_not_equal",),
}
STATUS_VOCABULARY = (
    "draft",
    "coverage_closed",
    "specification_closed",
    "relation_verified",
    "release_certified",
    "stale",
    "suspended",
    "revoked",
)
PLACEMENTS = {"circuit", "external_acceptance", "construction"}
BINDING_MODES = {
    "direct_statement_field",
    "derived_statement_field",
    "derived_anchor_or_nullifier",
    "private_intermediate",
    "external_acceptance",
    "construction_only",
}
DISCLOSURES = {
    "action_visible",
    "statement_digest_only",
    "private_witness",
    "consensus_state",
    "wallet_private",
}
VARIABLE_SOURCES = {"trace_arguments", "formal_facts"}
SEMANTIC_EVIDENCE_LEVELS = {"coverage", "predicate_specific"}
PROPERTY_SCOPES = {"acceptance", "construction", "composition"}
CATEGORIES = {
    "shape",
    "binding",
    "canonicality",
    "range",
    "boolean",
    "membership",
    "conservation",
    "cryptography",
    "authorization",
    "state",
    "transition",
    "privacy",
}
SEVERITIES = {"critical", "high", "medium", "low"}
TEST_KINDS = {
    "negative",
    "boundary_negative",
    "full_circuit_negative",
    "attack_reproduction",
    "parity",
    "invariant",
    "integration",
}
TEST_EXECUTION_FIELDS = {
    "runner",
    "working_directory",
    "package",
    "cargo_target",
    "selector",
    "build_profile",
    "features",
    "prover_required",
}
RUST_TEST_PACKAGES = (
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
    (
        "crates/core/app-tests/tests/app_can_sweep_a_collection_of_small_notes.rs",
        "shieldd-sdk-app-tests",
        "app_can_sweep_a_collection_of_small_notes",
    ),
    (
        "crates/core/app-tests/tests/app_can_transfer_notes_and_detect_new_notes.rs",
        "shieldd-sdk-app-tests",
        "app_can_transfer_notes_and_detect_new_notes",
    ),
    (
        "crates/core/app-tests/tests/compliance_diversifier_fix.rs",
        "shieldd-sdk-app-tests",
        "compliance_diversifier_fix",
    ),
    (
        "crates/core/app-tests/tests/ics23_transfer.rs",
        "shieldd-sdk-app-tests",
        "ics23_transfer",
    ),
    ("crates/bin/pd/src/network/", "pd", "lib"),
    ("crates/bin/pd/", "pd", "bin:pd"),
    ("crates/bin/shieldd/src/main.rs", "shieldd", "bin:shieldd"),
    ("crates/bin/shieldd/src/", "shieldd", "lib"),
    ("crates/bin/shieldd/", "shieldd", "bin:shieldd"),
    ("crates/core/app/", "shieldd-sdk-app", "lib"),
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
    {PROOF_ACCEPTANCE_TEST_PATH}
)
REQUIRED_TEST_KINDS: dict[str, frozenset[str]] = {
    "DEC-AUTHORIZATION-KEY-NONIDENTITY": frozenset(
        {"boundary_negative", "full_circuit_negative"}
    ),
    "DEC-DIVERSIFIED-GENERATOR-NONIDENTITY": frozenset(
        {
            "boundary_negative",
            "attack_reproduction",
            "full_circuit_negative",
        }
    ),
    "DEC-INCOMING-VIEWING-KEY-NONZERO": frozenset(
        {"boundary_negative", "full_circuit_negative"}
    ),
    "DEC-TRANSMISSION-KEY-NONIDENTITY": frozenset(
        {"boundary_negative"}
    ),
    "DEC-RANDOMIZED-VERIFICATION-KEY-NONIDENTITY": frozenset(
        {"attack_reproduction"}
    ),
    "EXT-TRANSACTION-BINDING-SIGNATURE": frozenset(
        {"attack_reproduction"}
    ),
}
PREDICATE_SEMANTICS_SHA256 = (
    "b18b12393ba6fff7b51dd32a1209ad46b2aefcb73605f446d37deeb1d2aabb27"
)
PROPERTY_CONTRACT_SHA256 = (
    "c64105b482af65fbd8fe88054dc14ad453cf7820ecb09b8f61645f7d37cd501e"
)
CONSEQUENCE_ROSTER_SHA256 = (
    "9bd523d91b95d2a15e5be64712a2af06e2bb84ea4c61cd19b4e9da590e99996c"
)
PROOF_ACCEPTANCE_SURFACE_SHA256 = (
    "47fa678515e0d244a318086e0a4a031cc67f1d3d3bc559ce290ee0b6c0d198be"
)
# Update only after independently reviewing every runtime-policy statement,
# parameter, sink, test, and exact execution selector.
RUNTIME_POLICY_CONTRACT_SHA256 = (
    "c427df1eb36790374898f854cae5027fea4759b1ae1e4ac2f3f75acfc2cb20e8"
)
# Update these only after independently reviewing every owner, source file,
# runnable selector, kind, and execution command in the corresponding ledger.
PROPERTY_TEST_CONTRACT_SHA256 = (
    "eec93c8ed18fc568da591781fd9ebc519fbde5b026b0f0476cb65e596f52a9f4"
)
ARTIFACT_TEST_CONTRACT_SHA256 = (
    "2ce903b58f534957e0c42af73c8da750ee15d74235f616d95bfdb3c6e7389cd2"
)
REVIEWED_TEST_EXCLUSION_REASONS = frozenset(
    {
        "alternate_fixture_not_normative",
        "out_of_scope_for_four_circuit_claim",
        "supporting_regression_not_claim_evidence",
    }
)
REVIEWED_TEST_DISCOVERY_ROOTS = (
    ("crates/bin/orbis-audit/src", "*.rs"),
    ("crates/bin/orbis-integration/src", "*.rs"),
    ("crates/bin/pcli/src", "*.rs"),
    ("crates/bin/pcli/tests", "*.rs"),
    ("crates/bin/pd/src", "*.rs"),
    ("crates/bin/shieldd/src", "*.rs"),
    ("crates/core/app-tests/tests", "*.rs"),
    ("crates/core/app/src", "*.rs"),
    ("crates/core/asset/src", "*.rs"),
    ("crates/core/component/compliance/src", "*.rs"),
    ("crates/core/component/governance/src", "*.rs"),
    ("crates/core/component/ibc/src", "*.rs"),
    ("crates/core/component/sct/src", "*.rs"),
    ("crates/core/component/shielded-pool/src", "*.rs"),
    ("crates/core/component/stake/src", "*.rs"),
    ("crates/core/keys/src", "*.rs"),
    ("crates/core/num/src", "*.rs"),
    ("crates/core/transaction/src", "*.rs"),
    ("crates/core/transaction/tests", "*.rs"),
    ("crates/crypto/constraint-coverage/src", "*.rs"),
    ("crates/crypto/proof-aggregation/src", "*.rs"),
    ("crates/crypto/proof-params/src", "*.rs"),
    ("crates/crypto/tct/src", "*.rs"),
    ("crates/custody/src", "*.rs"),
    ("crates/test/mock-client/src", "*.rs"),
    ("crates/util/orbis-client/src", "*.rs"),
    ("crates/view/src", "*.rs"),
    ("tools/gnark", "*_test.go"),
)
REVIEWED_TEST_SOURCE_CENSUS = (
    "crates/bin/orbis-audit/src/main.rs",
    "crates/bin/orbis-integration/src/command.rs",
    "crates/bin/orbis-integration/src/demo_config.rs",
    "crates/bin/orbis-integration/src/demo_state.rs",
    "crates/bin/orbis-integration/src/main.rs",
    "crates/bin/pcli/src/command/tx/compliance.rs",
    "crates/bin/pcli/src/config.rs",
    "crates/bin/pcli/tests/cli_surface.rs",
    "crates/bin/pcli/tests/testnet.rs",
    "crates/bin/pd/src/network/generate.rs",
    "crates/bin/pd/src/network/join.rs",
    "crates/bin/shieldd/src/ffi.rs",
    "crates/bin/shieldd/src/grpc.rs",
    "crates/bin/shieldd/src/service.rs",
    "crates/core/app-tests/tests/ics23_transfer.rs",
    "crates/core/app/src/action_handler/transaction.rs",
    "crates/core/app/src/action_handler/transaction/stateless.rs",
    "crates/core/app/src/app/host.rs",
    "crates/core/app/src/app/mod.rs",
    "crates/core/app/src/app/tests/proof_acceptance_tests.rs",
    "crates/core/app/src/server/consensus.rs",
    "crates/core/app/src/server/mempool.rs",
    "crates/core/app/src/stateless_cache.rs",
    "crates/core/component/compliance/src/decode_object.rs",
    "crates/core/component/compliance/src/registry.rs",
    "crates/core/component/compliance/src/structs.rs",
    "crates/core/component/compliance/src/transfer.rs",
    "crates/core/component/sct/src/component/tree.rs",
    "crates/core/component/sct/src/nullifier_tree.rs",
    (
        "crates/core/component/shielded-pool/src/component/action_handler/"
        "note_reshape.rs"
    ),
    (
        "crates/core/component/shielded-pool/src/component/action_handler/"
        "note_reshape_action.rs"
    ),
    (
        "crates/core/component/shielded-pool/src/component/action_handler/"
        "shielded_ics20_withdrawal.rs"
    ),
    (
        "crates/core/component/shielded-pool/src/component/action_handler/"
        "transfer.rs"
    ),
    "crates/core/component/shielded-pool/src/component/transfer.rs",
    "crates/core/component/shielded-pool/src/gnark/artifacts.rs",
    "crates/core/component/shielded-pool/src/gnark/binary.rs",
    "crates/core/component/shielded-pool/src/gnark/note_reshape.rs",
    (
        "crates/core/component/shielded-pool/src/gnark/"
        "shielded_ics20_withdrawal.rs"
    ),
    "crates/core/component/shielded-pool/src/gnark/transfer.rs",
    (
        "crates/core/component/shielded-pool/src/gnark/"
        "transfer_proof_result.rs"
    ),
    "crates/core/component/shielded-pool/src/gnark/typed.rs",
    "crates/core/component/shielded-pool/src/groth16_proof.rs",
    "crates/core/component/shielded-pool/src/ics20_withdrawal.rs",
    "crates/core/component/shielded-pool/src/note_reshape/action.rs",
    "crates/core/component/shielded-pool/src/note_reshape/plan.rs",
    "crates/core/component/shielded-pool/src/note_reshape/proof.rs",
    "crates/core/component/shielded-pool/src/public_input_hash.rs",
    (
        "crates/core/component/shielded-pool/src/"
        "shielded_ics20_withdrawal/action.rs"
    ),
    (
        "crates/core/component/shielded-pool/src/"
        "shielded_ics20_withdrawal/plan.rs"
    ),
    (
        "crates/core/component/shielded-pool/src/"
        "shielded_ics20_withdrawal/proof.rs"
    ),
    "crates/core/component/shielded-pool/src/shielded_note_plan.rs",
    "crates/core/component/shielded-pool/src/transfer/action.rs",
    "crates/core/component/shielded-pool/src/transfer/generated.rs",
    "crates/core/component/shielded-pool/src/transfer/plan.rs",
    "crates/core/component/shielded-pool/src/transfer/proof.rs",
    "crates/core/component/stake/src/governance_key.rs",
    "crates/core/component/stake/src/identity_key.rs",
    "crates/core/transaction/src/plan.rs",
    "crates/core/transaction/src/transaction.rs",
    "crates/crypto/proof-params/src/batch.rs",
    "crates/crypto/proof-params/src/lib.rs",
    "crates/util/orbis-client/src/client.rs",
    "crates/view/src/client_compliance.rs",
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
    (
        "tools/gnark/internal/compliance/"
        "scalar_mul_window_probe_test.go"
    ),
    (
        "tools/gnark/internal/compliance/"
        "spend_shared_optimization_test.go"
    ),
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
# This pins every path/symbol/reason triple rendered in reviewed_test_census.
# Update only after deciding whether each changed test is normative evidence.
REVIEWED_TEST_EXCLUSIONS_SHA256 = (
    "cef1029b7020f594c98e5f301d86237befc8673440b0134d6c54cc07f5f88e53"
)
PROPERTY_TEST_SOURCE_CENSUS = (
    "crates/core/component/compliance/src/structs.rs",
    "crates/core/component/shielded-pool/src/gnark/binary.rs",
    "crates/core/component/shielded-pool/src/gnark/note_reshape.rs",
    (
        "crates/core/component/shielded-pool/src/gnark/"
        "shielded_ics20_withdrawal.rs"
    ),
    "crates/core/component/shielded-pool/src/gnark/transfer.rs",
    (
        "crates/core/component/shielded-pool/src/gnark/"
        "transfer_proof_result.rs"
    ),
    "crates/core/component/shielded-pool/src/gnark/typed.rs",
    "crates/core/component/shielded-pool/src/note_reshape/action.rs",
    "crates/core/component/shielded-pool/src/public_input_hash.rs",
    "crates/core/transaction/src/plan.rs",
    "tools/gnark/cmd/gnarkctl/main_test.go",
    "tools/gnark/internal/abi/binary_shared_test.go",
    "tools/gnark/internal/abi/statement_fields_test.go",
    "tools/gnark/internal/abi/witness_family_test.go",
)
ARTIFACT_TEST_SOURCE_CENSUS = (
    "crates/core/component/shielded-pool/src/gnark/artifacts.rs",
    "crates/crypto/proof-params/src/lib.rs",
    "tools/gnark/cmd/extractlean/main_test.go",
    "tools/gnark/cmd/gnarkctl/main_test.go",
    "tools/gnark/cmd/gnarkctl/poseidon_lean_test.go",
    "tools/gnark/cmd/proverdaemon/main_test.go",
    "tools/gnark/internal/artifacts/artifacts_test.go",
    "tools/gnark/internal/artifacts/json_test.go",
    "tools/gnark/internal/artifacts/key_io_test.go",
    "tools/gnark/internal/compliance/dleq_test.go",
    "tools/gnark/internal/cshared/cshared_test.go",
    "tools/gnark/internal/primitives/phase0_test.go",
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
)
PROPERTY_TEST_CONTRACT_BASELINE = {
    "FIXED-ARITY-PRIVACY": tuple(
        """
        PROPERTY-ROUTING-PARAMETERS-PROPAGATE-TO-TRANSFER-FAMILY
        PROPERTY-NOTE-RESHAPE-PUBLIC-ENCODINGS-HAVE-NO-DUMMY-FLAGS-AFTER-REDESIGN
        PROPERTY-SHIELDED-ICS20-WITHDRAWAL-COUNTS-CHANGE-OUTPUT-FOR-ROUTING
        PROPERTY-SHIELDED-ICS20-WITHDRAWAL-WITHOUT-EXPLICIT-CHANGE-STILL-COUNTS-HIDDEN-ROUTING-NOTE
        """.split()
    ),
    "REGULATED-STATUS-SOUNDNESS": tuple(
        """
        PROPERTY-ASSET-POLICY-REJECTS-IDENTITY-CRYPTO-KEYS
        PROPERTY-MERKLE-PATH-DEFAULT-IS-FIXED-WIDTH-AND-CANONICAL
        PROPERTY-MERKLE-PATH-PROTO-REJECTS-NONCANONICAL-SHAPE-AND-FIELDS
        PROPERTY-TEST-ASSET-POLICY-BYTES-ROUNDTRIP
        PROPERTY-TEST-ASSET-POLICY-FROM-BYTES-REJECTS-MISSING-STORAGE-FIELDS
        PROPERTY-TEST-ASSET-POLICY-PROTO-REJECTS-MISSING-REQUIRED-FIELDS
        PROPERTY-TEST-ASSET-POLICY-PROTO-ROUNDTRIP
        PROPERTY-TEST-ASSET-POLICY-TO-BYTES-REJECTS-OVERLONG-ROUTE-FIELD
        PROPERTY-TEST-ASSET-POLICY-TO-BYTES-REJECTS-OVERLONG-STRING
        PROPERTY-TEST-COMPLIANCE-LEAF-DIFFERENT-ADDRESSES-DIFFERENT-COMMITS
        PROPERTY-TEST-COMPLIANCE-LEAF-NEW
        PROPERTY-TEST-COMPLIANCE-LEAF-PROTO-REJECTS-MISMATCHED-D
        PROPERTY-TEST-COMPLIANCE-LEAF-PROTO-REJECTS-MISSING-D
        PROPERTY-TEST-COMPLIANCE-LEAF-PROTO-REJECTS-MISSING-SLOT-DERIVATION
        PROPERTY-TEST-COMPLIANCE-LEAF-PROTO-ROUNDTRIP
        PROPERTY-TEST-DEFAULT-UNREGULATED-POLICY-USES-SINK-KEYS
        PROPERTY-TEST-SAME-ADDRESS-DIFFERENT-SLOTS-DIFFERENT-D-AND-ACK
        PROPERTY-TEST-SAME-SLOT-REUSE-SAME-D-AND-ACK
        """.split()
    ),
    "STATEMENT-INTEGRITY": tuple(
        """
        PROPERTY-NOTE-RESHAPE-STATEMENT-HAS-NO-ACTIVE-COUNTS-AFTER-REDESIGN
        PROPERTY-NOTE-RESHAPE-STATEMENT-HASH-MATCHES-GO-FIXTURES-FOR-ALL-FAMILIES
        PROPERTY-NOTE-RESHAPE-STATEMENT-HASH-NATIVE-MATCHES-R1CS
        PROPERTY-NOTE-RESHAPE-WRONG-FAMILY-DOMAIN-CHANGES-THE-STATEMENT-HASH
        PROPERTY-NOTE-RESHAPE-WRONG-SHAPE-IS-REJECTED-FOR-ALL-FAMILIES
        PROPERTY-NOTE-RESHAPE-WRONG-STATEMENT-PREIMAGE-CHANGES-THE-HASH-FOR-ALL-FAMILIES
        PROPERTY-TEST-RUST-GO-STATEMENT-FIELD-DIFFERENTIAL
        PROPERTY-TEST-TRANSFER-STATEMENT-BALANCE-IS-DERIVED-FROM-WITNESS-INPUTS
        PROPERTY-TEST-TRANSFER-STATEMENT-BALANCE-REJECTS-OVERSIZED-AMOUNT
        PROPERTY-TRANSFER-STATEMENT-BINDS-ONE-FACTORED-METADATA-RECORD
        PROPERTY-TRANSFER-STATEMENT-HASH-COMMITS-TO-EVERY-FACTORED-METADATA-FIELD
        PROPERTY-TRANSFER-STATEMENT-HASH-NATIVE-MATCHES-R1CS
        PROPERTY-TRANSFER-STATEMENT-REJECTS-METADATA-TIMESTAMP-DRIFT
        """.split()
    ),
    "WITNESS-ABI-CANONICALITY": tuple(
        """
        PROPERTY-CLAIMED-HASH-PARSER-REJECTS-MODULUS-ALIAS
        PROPERTY-ENCODE-MERKLE-PATH-REQUIRES-EXACT-DEPTH
        PROPERTY-ENCODE-TRIPLE-PATH-32-REJECTS-NON-EXACT-LENGTH
        PROPERTY-ENCODE-VEC-32-REJECTS-OVERSIZED-LENGTH
        PROPERTY-NOTE-RESHAPE-WITNESS-V4-REJECTS-BAD-LENGTH
        PROPERTY-NOTE-RESHAPE-WITNESS-V4-REJECTS-BAD-MAGIC
        PROPERTY-NOTE-RESHAPE-WITNESS-V4-REJECTS-BAD-VERSION
        PROPERTY-NOTE-RESHAPE-WITNESS-V4-ROUNDTRIP
        PROPERTY-PROOF-COORDINATE-PARSER-REJECTS-BASE-FIELD-MODULUS
        PROPERTY-READ-BOOL-ACCEPTS-ONLY-CANONICAL-BYTES
        PROPERTY-READ-FIXED-32-REJECTS-FQ-MODULUS-ALIASES
        PROPERTY-READ-FR-REJECTS-SCALAR-MODULUS-ALIASES
        PROPERTY-READ-MERKLE-PATH-REJECTS-NON-EXACT-LAYER-COUNT-BEFORE-ALLOCATION
        PROPERTY-READ-MERKLE-PATH-REJECTS-OVERSIZED-SIBLING-COUNT-BEFORE-ALLOCATION
        PROPERTY-READ-TRIPLE-PATH-32-REJECTS-NON-EXACT-LENGTH-BEFORE-ALLOCATION
        PROPERTY-READ-U128-FIELD-REJECTS-HIGH-BITS
        PROPERTY-READ-VEC-32-REJECTS-OVERSIZED-LENGTH-BEFORE-ALLOCATION
        PROPERTY-SHIELDED-ICS20-WITHDRAWAL-WITNESS-V9-REJECTS-LEGACY-VERSION
        PROPERTY-SHIELDED-ICS20-WITHDRAWAL-WITNESS-V9-REJECTS-NON-BLINDING-BALANCE-COMMITMENT
        PROPERTY-SHIELDED-ICS20-WITHDRAWAL-WITNESS-V9-REJECTS-NON-CANONICAL-BOOLEAN-FLAGS
        PROPERTY-SHIELDED-ICS20-WITHDRAWAL-WITNESS-V9-REJECTS-UNBALANCED-AMOUNTS
        PROPERTY-SHIELDED-ICS20-WITHDRAWAL-WITNESS-V9-ROUNDTRIP
        PROPERTY-TEST-ASSIGNMENT-PATH-CONVERSION-REQUIRES-EXACT-DEPTH
        PROPERTY-TEST-NOTE-RESHAPE-V4-REJECTS-LEGACY-VERSION
        PROPERTY-TEST-NOTE-RESHAPE-V4-REJECTS-SPLIT-ADDRESS-REPRESENTATION-PAYLOAD
        PROPERTY-TEST-NOTE-RESHAPE-WITNESS-PADDING-ABI
        PROPERTY-TEST-READ-BOOL-ACCEPTS-ONLY-CANONICAL-BYTES
        PROPERTY-TEST-READ-FR32-REJECTS-SCALAR-MODULUS-ALIASES
        PROPERTY-TEST-READ-MERKLE-PATH-REQUIRES-EXACT-SHAPE
        PROPERTY-TEST-READ-TRIPLE-PATH-REQUIRES-EXACT-DEPTH
        PROPERTY-TEST-READ-U128-FIELD-REJECTS-HIGH-BITS
        PROPERTY-TEST-READ32-REJECTS-FQ-MODULUS-ALIASES
        PROPERTY-TEST-SHIELDED-ICS20-WITHDRAWAL-V9-ASSIGNMENT-REJECTS-CLAIMED-HASH-MISMATCH
        PROPERTY-TEST-SHIELDED-ICS20-WITHDRAWAL-V9-FIXTURE-BRANCH-MATRIX
        PROPERTY-TEST-SHIELDED-ICS20-WITHDRAWAL-V9-REJECTS-LEGACY-VERSION
        PROPERTY-TEST-SHIELDED-ICS20-WITHDRAWAL-V9-REJECTS-NON-CANONICAL-BALANCE-BLINDING
        PROPERTY-TEST-SHIELDED-ICS20-WITHDRAWAL-V9-REJECTS-NON-CANONICAL-BOOLEAN-FLAGS
        PROPERTY-TEST-SHIELDED-ICS20-WITHDRAWAL-V9-REJECTS-OVERSIZED-EFFECT-HASH-LIMB
        PROPERTY-TEST-TRANSFER-COMPLIANCE-METADATA-REJECTS-FQ-MODULUS-SALT
        PROPERTY-TEST-TRANSFER-V17-ASSIGNMENT-REJECTS-CLAIMED-HASH-MISMATCH
        PROPERTY-TEST-TRANSFER-V17-ASSIGNMENT-REJECTS-SERIALIZED-SEMANTIC-MUTATION
        PROPERTY-TEST-TRANSFER-V17-REJECTS-LEGACY-VERSION
        PROPERTY-TEST-WITNESS-FAMILIES-DECODE
        PROPERTY-TEST-WITNESS-FAMILIES-REJECT-BAD-HEADER
        PROPERTY-TEST-WITNESS-FAMILIES-REJECT-TRUNCATED-PAYLOAD
        PROPERTY-TRANSFER-HIDDEN-ARITY-WITNESS-V17-ROUNDTRIP
        PROPERTY-TRANSFER-WITNESS-V17-REJECTS-LEGACY-V15-LAYOUT
        PROPERTY-TRANSFER-WITNESS-V17-ROUNDTRIP
        """.split()
    ),
}
ARTIFACT_TEST_CONTRACT_BASELINE = {
    "FV-ARTIFACT-CANONICALITY": tuple(
        """
        ARTIFACT-COMMITTED-FAMILY-ARTIFACTS-CARRY-VERIFIED-HASHES
        ARTIFACT-FAMILY-VKS-EXPOSE-SINGLE-STATEMENT-HASH-PUBLIC-INPUT
        ARTIFACT-PROOF-PARAMS-REJECTS-NONCANONICAL-METADATA-AND-VK-JSON
        ARTIFACT-RUNTIME-REJECTS-NONCANONICAL-METADATA-AND-VK-JSON
        ARTIFACT-TEST-CONSTRAINT-SYSTEM-HASH-REJECTS-SAME-SHAPE-WRONG-RELATION
        ARTIFACT-TEST-DECODE-CANONICAL-CIRCUIT-METADATA-JSON-REJECTS-OLD-OR-ALTERNATE-ENCODINGS
        ARTIFACT-TEST-DECODE-CANONICAL-VERIFYING-KEY-JSON-REJECTS-ALTERNATE-ENCODINGS
        ARTIFACT-TEST-LOAD-CIRCUIT-METADATA-BINDS-SETUP-PROVENANCE-BYTES
        ARTIFACT-TEST-LOAD-CIRCUIT-METADATA-BYTES-ROUND-TRIP
        ARTIFACT-TEST-STRICT-GROTH16-KEY-READERS-REJECT-RAW-ENCODING
        ARTIFACT-TEST-STRICT-GROTH16-KEY-READERS-REJECT-TRAILING-BYTES
        ARTIFACT-TEST-VALIDATE-CIRCUIT-METADATA-FOR-CIRCUIT-REJECTS-NIL-CCS
        """.split()
    ),
}

PROPERTY_TEST_CONTRACT_BASELINE["WITNESS-ABI-CANONICALITY"] = tuple(
    sorted(
        (
            *PROPERTY_TEST_CONTRACT_BASELINE["WITNESS-ABI-CANONICALITY"],
            "PROPERTY-TEST-WITNESS-FORMAT-VERSION-READS-BOUND-PAYLOAD-HEADER",
            "PROPERTY-TEST-WITNESS-FORMAT-VERSION-REJECTS-SHORT-PAYLOAD",
        )
    )
)
ARTIFACT_TEST_CONTRACT_BASELINE["FV-ARTIFACT-CANONICALITY"] = tuple(
    sorted(
        (
            *ARTIFACT_TEST_CONTRACT_BASELINE["FV-ARTIFACT-CANONICALITY"],
            "ARTIFACT-TEST-LOAD-CONTEXT-REJECTS-TRAILING-PROVING-KEY-BYTES",
            "ARTIFACT-TEST-LOAD-KEYS-REJECT-NON-CANONICAL-ENCODINGS",
            (
                "ARTIFACT-TEST-LOAD-PROVING-KEY-FROM-BYTES-REJECTS-"
                "TRAILING-BYTES"
            ),
            (
                "ARTIFACT-TEST-RUN-CHECK-VKJSON-REQUIRES-CANONICAL-"
                "STRICT-JSON"
            ),
        )
    )
)
ARTIFACT_TEST_CONTRACT_BASELINE["FV-FORMAL-TOOLCHAIN-INTEGRITY"] = tuple(
    sorted(
        """
        ARTIFACT-TEST-ANOTHER-CIRCUIT
        ARTIFACT-TEST-CIRCUIT-WITH-PARAMETER
        ARTIFACT-TEST-DECAF-DTK-IS-REGISTERED
        ARTIFACT-TEST-DELETION-MBU-CIRCUIT
        ARTIFACT-TEST-DLEQ-VERIFIER-MATCHES-RUST-FIXTURE
        ARTIFACT-TEST-DLEQ-VERIFIER-REJECTS-WRONG-METADATA-WHEN-REGULATED
        ARTIFACT-TEST-DLEQ-VERIFIER-SKIPS-WRONG-METADATA-WHEN-UNREGULATED
        ARTIFACT-TEST-DOUBLE-BASE-SCALAR-MUL-MATCHES-NAIVE-IMPLEMENTATION
        ARTIFACT-TEST-EXPORT-PRELUDE-USES-CHOICE-FREE-Z-MOD-OPERATIONS
        ARTIFACT-TEST-EXPORT-PRELUDE-USES-FINITE-HEARTBEATS
        ARTIFACT-TEST-EXTRACT-CIRCUITS
        ARTIFACT-TEST-EXTRACT-GADGETS
        ARTIFACT-TEST-EXTRACT-GADGETS-VECTORS
        ARTIFACT-TEST-FILES-EQUAL-USES-EXACT-BYTES
        ARTIFACT-TEST-GADGET-EXTRACTION
        ARTIFACT-TEST-HELPER-SCOPED-CHOICE-FREE-KEEPS-INSTANCES-OUT-OF-PRELUDE
        ARTIFACT-TEST-MERKLE-RECOVER
        ARTIFACT-TEST-MY-CIRCUIT
        ARTIFACT-TEST-PHASE0-GROTH16-BLS12377-ROUND-TRIP
        ARTIFACT-TEST-PHASE05-COMPANION-CURVE-MATCHES-DECAF377
        ARTIFACT-TEST-PHASE05-POSEIDON377-IS-NOT-NATIVELY-REGISTERED
        ARTIFACT-TEST-POSEIDON-LEAN-GENERATOR-OWNS-RATE5
        ARTIFACT-TEST-POSEIDON2-IS-REGISTERED
        ARTIFACT-TEST-PROVE-REJECTS-OVERSIZED-WITNESS-BEFORE-CALLBACK
        ARTIFACT-TEST-REGISTRY-ADD-GET-DELETE
        ARTIFACT-TEST-RUN-EXPORT-WIRING-TRANSCRIPT
        ARTIFACT-TEST-RUN-EXPORT-WIRING-TRANSCRIPT-REJECTS-UNSUPPORTED-CIRCUIT
        ARTIFACT-TEST-SAFE-BYTES-REJECTS-OVERSIZED-INPUT-BEFORE-COPYING
        ARTIFACT-TEST-SLICES-OPTIMISATION
        ARTIFACT-TEST-SUCCESS-REJECTS-OVERSIZED-RESULT
        ARTIFACT-TEST-TO-BINARY-CIRCUIT
        ARTIFACT-TEST-TWO-GADGETS
        ARTIFACT-TEST-VALIDATE-FV-PROOF-JOB-FLAGS-REQUIRES-EXACT-BRANCH-MATRIX
        ARTIFACT-TEST-VALIDATE-SETUP-SELF-TEST-FLAGS-REQUIRES-UNIQUE-CASES-AND-WITNESSES
        ARTIFACT-TEST-WITNESS-FORMAT-VERSION-READS-BOUND-PAYLOAD-HEADER
        ARTIFACT-TEST-WITNESS-FORMAT-VERSION-REJECTS-SHORT-PAYLOAD
        ARTIFACT-TEST-WRITE-POSEIDON-LEAN-FIXED-OWNS-EVERY-ROUND-CONSTANT
        ARTIFACT-TEST-WRITE-POSEIDON-LEAN-PARITY-USES-CANONICAL-HASHES
        """.split()
    )
)


def _merge_rust_evidence_owner_baseline(
    prefix: str,
    baseline: dict[str, tuple[str, ...]],
    additions: dict[
        str,
        tuple[tuple[str, str, str], ...],
    ],
) -> dict[str, tuple[str, ...]]:
    merged = dict(baseline)
    for owner_id, specs in additions.items():
        test_ids = {
            rust_evidence.evidence_test_id(prefix, symbol)
            for _, _, symbol in specs
        }
        overlap = set(merged.get(owner_id, ())) & test_ids
        if overlap:
            raise RuntimeError(
                "duplicate independently classified Rust evidence IDs: "
                f"{sorted(overlap)}"
            )
        merged[owner_id] = tuple(
            sorted((*merged.get(owner_id, ()), *test_ids))
        )
    return merged


PROPERTY_TEST_SOURCE_CENSUS = tuple(
    sorted(
        set(PROPERTY_TEST_SOURCE_CENSUS)
        | set(rust_evidence.PROPERTY_SOURCE_CENSUS)
    )
)
ARTIFACT_TEST_SOURCE_CENSUS = tuple(
    sorted(
        set(ARTIFACT_TEST_SOURCE_CENSUS)
        | set(rust_evidence.ARTIFACT_SOURCE_CENSUS)
    )
)
PROPERTY_TEST_CONTRACT_BASELINE = _merge_rust_evidence_owner_baseline(
    "PROPERTY",
    PROPERTY_TEST_CONTRACT_BASELINE,
    rust_evidence.PROPERTY_OWNER_SPECS,
)
ARTIFACT_TEST_CONTRACT_BASELINE = _merge_rust_evidence_owner_baseline(
    "ARTIFACT",
    ARTIFACT_TEST_CONTRACT_BASELINE,
    rust_evidence.ARTIFACT_OWNER_SPECS,
)
REVIEWED_TEST_SOURCE_CENSUS = tuple(
    sorted(
        set(REVIEWED_TEST_SOURCE_CENSUS)
        | set(PROPERTY_TEST_SOURCE_CENSUS)
        | set(ARTIFACT_TEST_SOURCE_CENSUS)
        | set(rust_evidence.EXCLUSION_SYMBOLS)
    )
)

# Exact comment/string-insensitive header+body pins for cache identities whose
# component types are intentionally repeated and therefore compile if swapped.
ANCHOR_VALIDATION_HELPER_SHA256 = {
    "validate_compliance_anchors_read_only": (
        "811928dd6ffa0992c01e95f0388ada475732a014b2b7a1bdc12bd37f3959172e"
    ),
    "validate_compliance_anchors_read_only_sync": (
        "276fb1b93a8b4d2caf4affbf71c80ad632c871bbd34b983f965b44ac299f786b"
    ),
}
RUNTIME_POLICY_BASELINE = {
    "RUNTIME-POLICY-ACTION-AUTHORIZATION": {
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
    "RUNTIME-POLICY-CACHE-BOUNDS": {
        "parameters": {
            "max_cacheable_raw_tx_bytes": 96 * 1024,
            "max_entries": 4_096,
            "max_retained_raw_tx_bytes": 64 * 1024 * 1024,
        },
        "sinks": ["check_tx", "prepare_proposal", "process_proposal"],
        "test_ids": [
            "RUNTIME-CACHE-AGGREGATE-BYTE-BOUND",
            "RUNTIME-CACHE-CLOCK-DRIFT",
            "RUNTIME-CACHE-DISTINCT-RAW-IDENTITIES",
            "RUNTIME-CACHE-ENTRY-COUNT-BOUND",
            "RUNTIME-CACHE-EXACT-BYTE-BINDING",
            "RUNTIME-CACHE-IDEMPOTENT-REINSERTION",
            "RUNTIME-CACHE-OVERSIZED-BYPASS",
            "RUNTIME-CACHE-PROTECTED-CLOCK-DRIFT",
            "RUNTIME-CACHE-SUSTAINED-CHURN",
        ],
    },
    "RUNTIME-POLICY-CHECKTX-CONCURRENCY": {
        "parameters": {
            "max_heavywork": 32,
            "max_total": 64,
            "min_total": 8,
        },
        "sinks": ["check_tx"],
        "test_ids": ["RUNTIME-CHECKTX-CONCURRENCY"],
    },
    "RUNTIME-POLICY-EXACT-PROOF-CAPABILITIES": {
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
    "RUNTIME-POLICY-NO-CONSENSUS-DIAGNOSTIC-IO": {
        "parameters": {"diagnostic_io_enabled": 0},
        "sinks": ["prepare_proposal", "process_proposal"],
        "test_ids": ["RUNTIME-NO-CONSENSUS-DIAGNOSTIC-IO"],
    },
    "RUNTIME-POLICY-PROOF-ACCEPTANCE-FRONTDOORS": {
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
    "RUNTIME-POLICY-PROOF-WORKER-CONCURRENCY": {
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
    "RUNTIME-POLICY-STRUCTURED-CONCURRENCY": {
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
    "RUNTIME-POLICY-TIMESTAMP-FRESHNESS": {
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
    "RUNTIME-POLICY-TRANSACTION-BOUNDS": {
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
}

SETUP_TRUST_STATUS = "conditional_unverified_ceremony"
SETUP_TRUST_ASSUMPTION_IDS = (
    "ZK-ASSUME-GROTH16-SETUP-TOXIC-WASTE",
)

EXPECTED_APP_PROOF_ENTRYPOINTS = frozenset(
    {
        "deliver_tx_bytes",
        "deliver_tx_bytes_v1",
        "deliver_tx_bytes_v1_profiled",
        "deliver_tx_bytes_v2",
        "deliver_tx_bytes_v2_profiled",
        "prepare_proposal_v1",
        "prepare_proposal_v1_profiled",
        "prepare_proposal_v2",
        "prepare_proposal_v2_profiled",
        "process_proposal",
        "process_proposal_v1",
        "process_proposal_v1_profiled",
        "process_proposal_v2",
        "process_proposal_v2_profiled",
    }
)
EXPECTED_NONPRODUCTION_FUNCTIONS = frozenset(
    {
        "batch_verify_artifacts_for_bench",
        "batch_verify_tx_artifact_for_bench",
        "benchmark_block_context",
        "benchmark_zero_timestamp_allowed",
        "begin_block_request_from_context",
        "build_aggregate_bundle_tx_for_snapshot_public",
        "build_candidate_envelope_for_bench_profiled_public",
        "build_exact_segmented_aggregate_bundle_for_artifacts_profiled_public",
        "build_exact_segmented_family_aggregates_for_artifacts",
        "build_segmented_aggregate_bundle_for_artifacts_profiled_public",
        "build_segmented_aggregate_bundle_for_artifacts_public",
        "build_tx_artifacts_extracted_for_stage_public",
        "build_tx_artifacts_extracted_profiled",
        "build_tx_artifacts_extracted_profiled_public",
        "candidate_envelope_from_prepared_proposal_public",
        "deliver_tx_bytes_v2_extracted_profiled_for_bench",
        "execute_validated_candidate_envelope_profiled",
        "extract_spend_nullifiers_from_proto",
        "process_candidate_envelope_profiled",
        "process_proposal_request_from_envelope",
        "validate_candidate_envelope_profiled",
        "verify_aggregate_bundle_for_artifacts_public",
        "verify_aggregate_bundle_for_artifacts_raw_public",
    }
)
EXPECTED_APP_BENCHMARK_CFG_BLOCK_OWNERS = Counter(
    {
        "materialize_pending_sct_append_log": 4,
        "reserve_positions": 2,
    }
)
EXPECTED_HOST_EXECUTION_PUBLIC_METHODS = frozenset(
    {
        "begin_block",
        "check_tx",
        "commit",
        "committed_state",
        "deliver_tx",
        "deposit",
        "end_block",
        "export_genesis",
        "init_genesis",
        "new",
        "phase",
        "release",
        "rollback",
        "with_cache",
    }
)
EXPECTED_EXECUTION_SERVICE_PUBLIC_METHODS = frozenset(
    {
        "begin_block",
        "check_tx",
        "close",
        "commit",
        "deliver_tx",
        "deposit",
        "end_block",
        "export_genesis",
        "get_committed_state",
        "init_genesis",
        "new",
        "open",
        "rollback",
    }
)
EXPECTED_GRPC_EXECUTION_METHODS = Counter(
    {
        "begin_block": 1,
        "check_tx": 1,
        "commit": 1,
        "deliver_tx": 1,
        "deposit": 1,
        "end_block": 1,
        "export_genesis": 1,
        "get_committed_state": 1,
        "init_genesis": 1,
        "rollback": 1,
    }
)
EXPECTED_GRPC_PROTO_METHODS = (
    "BeginBlock",
    "CheckTx",
    "Commit",
    "DeliverTx",
    "Deposit",
    "EndBlock",
    "ExportGenesis",
    "GetCommittedState",
    "InitGenesis",
    "Rollback",
)
EXPECTED_CONSENSUS_METHODS = Counter(
    {
        "begin_block": 1,
        "commit": 1,
        "deliver_tx": 1,
        "end_block": 1,
        "init_chain": 1,
        "new": 1,
        "new_inner": 1,
        "new_with_cache": 1,
        "prepare_proposal": 1,
        "process_proposal": 1,
        "proposal_digest": 1,
        "record_block_tx_count": 1,
        "record_phase_duration": 1,
        "run": 1,
    }
)
EXPECTED_MEMPOOL_METHODS = Counter(
    {
        "check_tx_with_state": 1,
        "new": 1,
        "panic_payload_message": 1,
        "run": 1,
    }
)
EXPECTED_LEGACY_BATCH_VERIFY_PATHS = frozenset(
    {
        "crates/crypto/proof-aggregation/src/backend.rs",
        "crates/core/component/shielded-pool/src/test_proof_helpers.rs",
        "crates/core/component/shielded-pool/src/transfer/proof.rs",
    }
)
PROPERTY_EXCLUSIONS = {
    "FV-ARTIFACT-CANONICALITY": (
        "release artifact encoding and provenance gate, not an action "
        "acceptance predicate"
    ),
    "FV-PROFILE-COMPLETENESS": (
        "meta-property enforced by this closed-world checker"
    ),
    "SYMBOLIC-LEMMA-CLOSURE": (
        "research-model runner integrity outside fixed-circuit acceptance"
    ),
    "NOTE-RESHAPE-LEAN-SOUNDNESS": (
        "derived certification summary; citing it would be circular"
    ),
    "TRANSFER-LEAN-SOUNDNESS": (
        "derived certification summary; citing it would be circular"
    ),
    "WITHDRAWAL-LEAN-SOUNDNESS": (
        "derived certification summary; citing it would be circular"
    ),
    "DLEQ-BINDING": "research-only DLEQ property absent from deployed Transfer",
    "COMPLIANCE-TIER-FSM": (
        "audit workflow state machine outside fixed-circuit acceptance"
    ),
    "ORBIS-DESIGNATED-DECRYPT": (
        "retired Orbis audit boundary outside fixed-circuit acceptance"
    ),
    "DLEQ-COMPLETENESS": "research-only DLEQ property",
    "DLEQ-SPECIAL-SOUNDNESS": "research-only DLEQ property",
    "DLEQ-HVZK": "research-only DLEQ property",
    "DLEQ-CHALLENGE-TRUNCATION": "research-only DLEQ property",
    "DLEQ-FS-KNOWLEDGE-SOUNDNESS": "research-only DLEQ property",
}

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
PROTOCOL_TRANSACTION_REFINEMENT_FRAGMENTS = {
    "note_reshape": (
        "facts : CircuitFacts primitives action",
        "ConsensusStateFacts stateChecks action actionBefore delta actionAfter",
        "Protocol.Common.CommittedTargetTransaction",
        "TransactionAccepted primitives authorizationChecks stateChecks "
        "otherStep transactionBefore actionBefore delta actionAfter "
        "transactionAfter action",
        "consensusAccepted_of_circuitFacts",
    ),
    "transfer": (
        "facts : CircuitFacts primitives action",
        "ConsensusExternalFacts checks action actionBefore delta actionAfter",
        "Protocol.Common.CommittedTargetTransaction",
        "TransactionAccepted primitives checks otherStep transactionBefore "
        "actionBefore delta actionAfter transactionAfter action",
        "consensusAccepted_of_circuitFacts",
    ),
    "shielded_ics20_withdrawal": (
        "facts : CircuitFacts primitives action",
        "ConsensusExternalFacts checks action payload actionBefore delta "
        "actionAfter",
        "Protocol.Common.CommittedTargetTransaction",
        "CommittedWithdrawalEffects transactionBefore actionBefore "
        "transactionAfter action payload",
        "TransactionAccepted primitives checks otherStep transactionBefore "
        "actionBefore delta actionAfter transactionAfter action payload",
        "consensusAccepted_of_circuitFacts",
    ),
}
DEPLOYED_TRANSACTION_BRIDGE_FRAGMENTS = {
    "note_reshape": (
        "h : relationAll rho",
        "Protocol.Common.CommittedTargetTransaction",
        "TransactionAccepted",
        "Protocol.NoteReshape.transactionAccepted_of_circuitFacts",
        "deployedRelation_to_circuitFacts rho h",
    ),
    "transfer": (
        "h : relationAll rho",
        "Protocol.Common.CommittedTargetTransaction",
        "Protocol.Transfer.TransactionAccepted",
        "Deployed.Contracts.Transfer.transactionAccepted_of_relationAll",
    ),
    "shielded_ics20_withdrawal": (
        "h : relationAll rho",
        "Protocol.Common.CommittedTargetTransaction",
        "Protocol.ShieldedIcs20Withdrawal.CommittedWithdrawalEffects",
        "Protocol.ShieldedIcs20Withdrawal.TransactionAccepted",
        "Deployed.Contracts.ShieldedIcs20Withdrawal."
        "transactionAccepted_of_relationAll",
    ),
}
GENERATED_TRANSACTION_REFINEMENT_ROOTS = {
    "transfer": (
        "tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts/"
        "Transfer/RefinementRoot.lean",
        (
            "h : relationAll rho",
            "Protocol.Common.CommittedTargetTransaction",
            "Protocol.Transfer.TransactionAccepted",
            "Protocol.Transfer.transactionAccepted_of_circuitFacts",
            "circuitFacts_of_relationAll rho h",
        ),
    ),
    "shielded_ics20_withdrawal": (
        "tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts/"
        "ShieldedIcs20Withdrawal/RefinementRoot.lean",
        (
            "h : relationAll rho",
            "Protocol.Common.CommittedTargetTransaction",
            "Protocol.ShieldedIcs20Withdrawal.CommittedWithdrawalEffects",
            "Protocol.ShieldedIcs20Withdrawal.TransactionAccepted",
            "Protocol.ShieldedIcs20Withdrawal."
            "transactionAccepted_of_circuitFacts",
            "circuitFacts_of_relationAll rho h",
        ),
    ),
}
SECURITY_CONSEQUENCES: dict[
    str, dict[str, tuple[str, ...]]
] = {
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

STATE_SEMANTIC_CONSEQUENCES: dict[
    str, dict[str, tuple[str, ...]]
] = {
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

NR_PROFILES = frozenset(
    {
        "note_reshape8x1",
        "note_reshape1x8",
    }
)
NOTE_RESHAPE_PROFILES = (
    "note_reshape8x1",
    "note_reshape1x8",
)
NR_SYNTHETIC_PROFILES = frozenset({"note_reshape8x1"})
TRANSFER_PROFILES = frozenset({"transfer"})
WITHDRAWAL_PROFILES = frozenset({"shielded_ics20_withdrawal"})
TRANSFER_WITHDRAWAL_PROFILES = TRANSFER_PROFILES | WITHDRAWAL_PROFILES
ALL_PROFILES = NR_PROFILES | TRANSFER_WITHDRAWAL_PROFILES

# These predicates retain a generated relation atom even though a handwritten
# security theorem also closes the native/R1CS parity consequence.
RELATION_ATOM_REQUIRED_WITH_HANDWRITTEN_SECURITY = frozenset(
    {
        "DEC-INCOMING-VIEWING-KEY-NONZERO",
        "DEC-TRANSMISSION-KEY-NONIDENTITY",
    }
)

# These exact applications are already direct fields of their protocol
# CircuitFacts record, so a second generated projection theorem is redundant.
DIRECT_CIRCUIT_FACT_CONSEQUENCE_PAIRS = frozenset(
    {(profile, "PUBLIC-STATEMENT-BINDING") for profile in ALL_PROFILES}
    | {
        ("shielded_ics20_withdrawal", "VALUE-CONSERVATION"),
        ("transfer", "ADDRESS-CANONICAL-PACKING"),
        ("transfer", "DEC-SPEND-RK-DERIVATION"),
        ("transfer", "DEC-SPEND-RK-ENCODING"),
        ("transfer", "NOTE-OUTPUT-COMMITMENT"),
        ("transfer", "NOTE-SPEND-NULLIFIER-DERIVATION"),
        ("transfer", "SCT-SPEND-MEMBERSHIP"),
    }
)

EXPECTED_CONSEQUENCE_ROSTER_PATHS = {
    "note_reshape1x8": (
        "tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts/"
        "NoteReshape1x8/SpecificationConsequences.lean"
    ),
    "note_reshape8x1": (
        "tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts/"
        "NoteReshape8x1/SpecificationConsequences.lean"
    ),
    "shielded_ics20_withdrawal": (
        "tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts/"
        "ShieldedIcs20Withdrawal/SpecificationConsequences.lean"
    ),
    "transfer": (
        "tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts/"
        "Transfer/SpecificationConsequences.lean"
    ),
}
EXPECTED_CONSEQUENCE_ROSTER_COUNTS = {
    "note_reshape1x8": 29,
    "note_reshape8x1": 33,
    "shielded_ics20_withdrawal": 39,
    "transfer": 55,
}

EXPECTED_PROFILES: dict[str, dict[str, object]] = {
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


def _build_predicate_baseline() -> dict[str, tuple[str, frozenset[str]]]:
    """Independent reviewed oracle: IDs, placement, and applicable profiles."""

    result: dict[str, tuple[str, frozenset[str]]] = {}

    def add(
        placement: str,
        profiles: frozenset[str],
        predicate_ids: tuple[str, ...],
    ) -> None:
        for predicate_id in predicate_ids:
            if predicate_id in result:
                raise AssertionError(f"duplicate baseline predicate {predicate_id}")
            result[predicate_id] = (placement, profiles)

    add(
        "circuit",
        ALL_PROFILES,
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
            "ASSET-REGULATED-BOOLEAN",
            "ASSET-LEAF-HASH",
            "ASSET-REGISTRY-MEMBERSHIP",
            "ASSET-REGISTRY-GAP-ORDERING",
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
        NR_SYNTHETIC_PROFILES | TRANSFER_WITHDRAWAL_PROFILES,
        (
            "CIR-SELECTOR-BOOLEAN",
            "DUMMY-AMOUNT-ZERO",
            "DUMMY-NULLIFIER-DOMAIN-BINDING",
            "DUMMY-SLOT-POSITION-BINDING",
        ),
    )
    add(
        "circuit",
        NR_SYNTHETIC_PROFILES,
        (
            "CIR-DUMMY-ORDER-COUNT",
        ),
    )
    add(
        "circuit",
        TRANSFER_PROFILES,
        ("NOTE-RECEIVER-AMOUNT-NONZERO",),
    )
    add(
        "circuit",
        TRANSFER_WITHDRAWAL_PROFILES,
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
    add(
        "circuit",
        TRANSFER_PROFILES,
        ("FIELD-USER-DERIVATION-RANGE",),
    )
    add(
        "circuit",
        NR_PROFILES | TRANSFER_PROFILES,
        (
            "ASSET-POLICY-KEY-ENCODING",
            "ASSET-PARAMETERS-HASH",
            "ASSET-RING-HASH",
        ),
    )
    add(
        "circuit",
        TRANSFER_PROFILES,
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
    add(
        "circuit",
        WITHDRAWAL_PROFILES,
        ("WITHDRAWAL-INTENT-FIELD-BINDING",),
    )
    add(
        "external_acceptance",
        ALL_PROFILES,
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
        TRANSFER_WITHDRAWAL_PROFILES,
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
        TRANSFER_PROFILES,
        (
            "EXT-ASSET-REGISTRY-KEY-VALIDITY",
            "EXT-OUTPUT-COMPLIANCE-ENCODING",
            "EXT-TRANSFER-EFFECT-HASH-COMPLIANCE-BINDING",
        ),
    )
    add(
        "external_acceptance",
        WITHDRAWAL_PROFILES,
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
        ALL_PROFILES,
        (
            "EXT-OUTGOING-VIEW-BINDING",
            "EXT-PLAN-BOUNDARY-CANONICALITY",
        ),
    )
    add(
        "construction",
        TRANSFER_PROFILES,
        (
            "EXT-HONEST-COMPLIANCE-NONCE",
            "EXT-HONEST-COMPLIANCE-TIER-SCALAR-NONZERO",
        ),
    )
    return result


PREDICATE_BASELINE = _build_predicate_baseline()

FORMAL_STRUCTURES = (
    (
        "NoteReshape.CircuitFacts",
        "tools/gnark/lean/ShielddGnarkFormal/Protocol/NoteReshape/CircuitFacts.lean",
        "CircuitFacts",
    ),
    (
        "NoteReshape.ConsensusSignatureFacts",
        "tools/gnark/lean/ShielddGnarkFormal/Protocol/NoteReshape/Semantics.lean",
        "ConsensusSignatureFacts",
    ),
    (
        "NoteReshape.ConsensusStateFacts",
        "tools/gnark/lean/ShielddGnarkFormal/Protocol/NoteReshape/Semantics.lean",
        "ConsensusStateFacts",
    ),
    (
        "NoteReshape.HonestConstructionFacts",
        "tools/gnark/lean/ShielddGnarkFormal/Protocol/NoteReshape/Semantics.lean",
        "HonestConstructionFacts",
    ),
    (
        "NoteReshape.TransactionAccepted",
        "tools/gnark/lean/ShielddGnarkFormal/Protocol/NoteReshape/Semantics.lean",
        "TransactionAccepted",
    ),
    (
        "Transfer.CircuitFacts",
        "tools/gnark/lean/ShielddGnarkFormal/Protocol/Transfer/CircuitFacts.lean",
        "CircuitFacts",
    ),
    (
        "Transfer.ConsensusExternalFacts",
        "tools/gnark/lean/ShielddGnarkFormal/Protocol/Transfer/Semantics.lean",
        "ConsensusExternalFacts",
    ),
    (
        "Transfer.HonestConstructionFacts",
        "tools/gnark/lean/ShielddGnarkFormal/Protocol/Transfer/Semantics.lean",
        "HonestConstructionFacts",
    ),
    (
        "Transfer.TransactionAccepted",
        "tools/gnark/lean/ShielddGnarkFormal/Protocol/Transfer/Semantics.lean",
        "TransactionAccepted",
    ),
    (
        "Withdrawal.CircuitFacts",
        (
            "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
            "ShieldedIcs20Withdrawal/CircuitFacts.lean"
        ),
        "CircuitFacts",
    ),
    (
        "Withdrawal.ConsensusExternalFacts",
        (
            "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
            "ShieldedIcs20Withdrawal/Semantics.lean"
        ),
        "ConsensusExternalFacts",
    ),
    (
        "Withdrawal.HonestConstructionFacts",
        (
            "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
            "ShieldedIcs20Withdrawal/Semantics.lean"
        ),
        "HonestConstructionFacts",
    ),
    (
        "Withdrawal.TransactionAccepted",
        (
            "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
            "ShieldedIcs20Withdrawal/Semantics.lean"
        ),
        "TransactionAccepted",
    ),
)

ACTION_LOCAL_TRANSITION_PREDICATES = frozenset(
    {
        "EXT-ANCHOR-LIVENESS",
        "EXT-ASSET-ANCHOR-CURRENT",
        "EXT-COMPLIANCE-ANCHOR-LIVE",
        "EXT-NULLIFIER-FRESHNESS",
        "EXT-NULLIFIER-DISTINCTNESS",
        "EXT-NULLIFIER-ATOMIC-TRANSITION",
        "EXT-WITHDRAWALS-ENABLED",
    }
)
TRANSACTION_LEVEL_PREDICATES = frozenset(
    {
        "EXT-NULLIFIER-TX-UNIQUENESS",
        "EXT-OUTPUT-PERSISTENCE",
        "EXT-TRANSACTION-EFFECTS-ATOMICITY",
        "EXT-WITHDRAWAL-STATE-TRANSITION",
        "EXT-WITHDRAWAL-ACTION-ATOMICITY",
    }
)
TYPED_TRANSITION_PREDICATES = (
    ACTION_LOCAL_TRANSITION_PREDICATES | TRANSACTION_LEVEL_PREDICATES
)
# These claims quantify over the enclosing transaction. An action-local
# transition theorem or runtime test cannot replace their transaction theorem.
REQUIRED_TRANSACTION_THEOREM_PREDICATES = TRANSACTION_LEVEL_PREDICATES
TYPED_ACTION_TRANSITION_FACT_BY_EVIDENCE = {
    "NR-EXTERNAL": "NoteReshape.ConsensusStateFacts.transition",
    "TRANSFER-EXTERNAL": "Transfer.ConsensusExternalFacts.transition",
    "WITHDRAWAL-EXTERNAL": "Withdrawal.ConsensusExternalFacts.transition",
}
TYPED_TRANSACTION_FACTS_BY_EVIDENCE = {
    "NR-EXTERNAL": frozenset(
        {
            "NoteReshape.TransactionAccepted.actionAccepted",
            "NoteReshape.TransactionAccepted.committed",
        }
    ),
    "TRANSFER-EXTERNAL": frozenset(
        {
            "Transfer.TransactionAccepted.actionAccepted",
            "Transfer.TransactionAccepted.committed",
        }
    ),
    "WITHDRAWAL-EXTERNAL": frozenset(
        {
            "Withdrawal.TransactionAccepted.actionAccepted",
            "Withdrawal.TransactionAccepted.committed",
        }
    ),
}
WITHDRAWAL_EFFECT_TRANSACTION_PREDICATES = frozenset(
    {
        "EXT-WITHDRAWAL-STATE-TRANSITION",
        "EXT-WITHDRAWAL-ACTION-ATOMICITY",
    }
)

TYPED_TRANSITION_MODELS = (
    {
        "label": "NoteReshape",
        "path": (
            "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
            "NoteReshape/Semantics.lean"
        ),
        "state": {
            "liveSctAnchors": "List F",
            "spentNullifiers": "List F",
            "proofBoundOutputCommitments": "List F",
        },
        "delta": {
            "nullifiers": "List F",
            "proofBoundOutputCommitments": "List F",
        },
        "delta_structure": "ActionDelta",
        "transition": {
            "anchorLive": "action.anchor ∈ before.liveSctAnchors",
            "actionNullifiersUnique": "(actionNullifiers action).Nodup",
            "actionNullifiersFresh": (
                "∀ nullifier ∈ actionNullifiers action, "
                "nullifier ∉ before.spentNullifiers"
            ),
            "deltaNullifiersExact": (
                "delta.nullifiers = actionNullifiers action"
            ),
            "deltaOutputsExact": (
                "delta.proofBoundOutputCommitments = "
                "actionOutputCommitments action"
            ),
            "spentNullifiersExact": (
                "Protocol.Common.exactExtension before.spentNullifiers "
                "delta.nullifiers after.spentNullifiers"
            ),
            "outputCommitmentsExact": (
                "Protocol.Common.exactExtension "
                "before.proofBoundOutputCommitments "
                "delta.proofBoundOutputCommitments "
                "after.proofBoundOutputCommitments"
            ),
            "liveSctAnchorsFrame": (
                "after.liveSctAnchors = before.liveSctAnchors"
            ),
        },
        "facts_structure": "ConsensusStateFacts",
        "facts_transition": "ConsensusTransition before action delta after",
        "accepted_field": "state",
        "accepted_type": (
            "ConsensusStateFacts stateChecks action before delta after"
        ),
        "transaction_accepted": {
            "actionAccepted": (
                "ConsensusAccepted primitives authorizationChecks stateChecks "
                "actionBefore delta actionAfter action"
            ),
            "committed": (
                "Nonempty (Protocol.Common.CommittedTargetTransaction "
                "(fun state => state.spentNullifiers) "
                "(fun state => state.proofBoundOutputCommitments) "
                "(actionNullifiers action) "
                "(actionOutputCommitments action) otherStep "
                "(TargetStep action delta) transactionBefore actionBefore "
                "actionAfter transactionAfter)"
            ),
        },
        "transaction_theorems": {
            "transactionAcceptedNullifiersUnique": (
                (
                    "TransactionAccepted primitives authorizationChecks "
                    "stateChecks otherStep transactionBefore actionBefore "
                    "delta actionAfter transactionAfter action"
                ),
                (
                    "Protocol.Common.includedWithMultiplicity "
                    "(actionNullifiers action) nullifiers ∧ "
                    "nullifiers.Nodup ∧ Protocol.Common.exactExtension "
                    "transactionBefore.spentNullifiers nullifiers "
                    "transactionAfter.spentNullifiers"
                ),
            ),
            "transactionAcceptedIncludesTargetOutputs": (
                (
                    "TransactionAccepted primitives authorizationChecks "
                    "stateChecks otherStep transactionBefore actionBefore "
                    "delta actionAfter transactionAfter action"
                ),
                (
                    "Protocol.Common.includedWithMultiplicity "
                    "(actionOutputCommitments action) outputCommitments ∧ "
                    "Protocol.Common.exactExtension "
                    "transactionBefore.proofBoundOutputCommitments "
                    "outputCommitments "
                    "transactionAfter.proofBoundOutputCommitments"
                ),
            ),
        },
    },
    {
        "label": "Transfer",
        "path": (
            "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
            "Transfer/Semantics.lean"
        ),
        "state": {
            "liveSctAnchors": "List F",
            "currentAssetAnchor": "F",
            "liveComplianceAnchors": "List F",
            "spentNullifiers": "List F",
            "proofBoundOutputCommitments": "List F",
        },
        "delta": {
            "nullifiers": "List F",
            "proofBoundOutputCommitments": "List F",
        },
        "delta_structure": "ActionDelta",
        "transition": {
            "anchorLive": "action.anchor ∈ before.liveSctAnchors",
            "assetAnchorCurrent": (
                "action.assetAnchor = before.currentAssetAnchor"
            ),
            "complianceAnchorLive": (
                "action.complianceAnchor ∈ before.liveComplianceAnchors"
            ),
            "actionNullifiersDistinct": (
                "action.required.nullifier ≠ action.optional.nullifier"
            ),
            "actionNullifiersUnique": "(actionNullifiers action).Nodup",
            "actionNullifiersFresh": (
                "∀ nullifier ∈ actionNullifiers action, "
                "nullifier ∉ before.spentNullifiers"
            ),
            "deltaNullifiersExact": (
                "delta.nullifiers = actionNullifiers action"
            ),
            "deltaOutputsExact": (
                "delta.proofBoundOutputCommitments = "
                "actionOutputCommitments action"
            ),
            "spentNullifiersExact": (
                "Protocol.Common.exactExtension before.spentNullifiers "
                "delta.nullifiers after.spentNullifiers"
            ),
            "outputCommitmentsExact": (
                "Protocol.Common.exactExtension "
                "before.proofBoundOutputCommitments "
                "delta.proofBoundOutputCommitments "
                "after.proofBoundOutputCommitments"
            ),
            "liveSctAnchorsFrame": (
                "after.liveSctAnchors = before.liveSctAnchors"
            ),
            "currentAssetAnchorFrame": (
                "after.currentAssetAnchor = before.currentAssetAnchor"
            ),
            "liveComplianceAnchorsFrame": (
                "after.liveComplianceAnchors = "
                "before.liveComplianceAnchors"
            ),
        },
        "facts_structure": "ConsensusExternalFacts",
        "facts_transition": "ConsensusTransition before action delta after",
        "accepted_field": "external",
        "accepted_type": (
            "ConsensusExternalFacts checks action before delta after"
        ),
        "transaction_accepted": {
            "actionAccepted": (
                "ConsensusAccepted primitives checks actionBefore delta "
                "actionAfter action"
            ),
            "committed": (
                "Nonempty (Protocol.Common.CommittedTargetTransaction "
                "(fun state => state.spentNullifiers) "
                "(fun state => state.proofBoundOutputCommitments) "
                "(actionNullifiers action) "
                "(actionOutputCommitments action) otherStep "
                "(TargetStep action delta) transactionBefore actionBefore "
                "actionAfter transactionAfter)"
            ),
        },
        "transaction_theorems": {
            "transactionAcceptedNullifiersUnique": (
                (
                    "TransactionAccepted primitives checks otherStep "
                    "transactionBefore actionBefore delta actionAfter "
                    "transactionAfter action"
                ),
                (
                    "Protocol.Common.includedWithMultiplicity "
                    "(actionNullifiers action) nullifiers ∧ "
                    "nullifiers.Nodup ∧ Protocol.Common.exactExtension "
                    "transactionBefore.spentNullifiers nullifiers "
                    "transactionAfter.spentNullifiers"
                ),
            ),
            "transactionAcceptedIncludesTargetOutputs": (
                (
                    "TransactionAccepted primitives checks otherStep "
                    "transactionBefore actionBefore delta actionAfter "
                    "transactionAfter action"
                ),
                (
                    "Protocol.Common.includedWithMultiplicity "
                    "(actionOutputCommitments action) outputCommitments ∧ "
                    "Protocol.Common.exactExtension "
                    "transactionBefore.proofBoundOutputCommitments "
                    "outputCommitments "
                    "transactionAfter.proofBoundOutputCommitments"
                ),
            ),
        },
    },
    {
        "label": "Withdrawal",
        "path": (
            "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
            "ShieldedIcs20Withdrawal/Semantics.lean"
        ),
        "state": {
            "liveSctAnchors": "List F",
            "currentAssetAnchor": "F",
            "liveComplianceAnchors": "List F",
            "spentNullifiers": "List F",
            "proofBoundOutputCommitments": "List F",
            "ibc": "IbcState F",
            "withdrawalEvents": "List (WithdrawalEvent F)",
            "withdrawalsEnabled": "Bool",
        },
        "delta": {
            "nullifiers": "List F",
            "proofBoundOutputCommitments": "List F",
        },
        "delta_structure": "ActionDelta",
        "auxiliary_structures": {
            "BalanceKey": {
                "channel": "F",
                "assetId": "F",
            },
            "SequenceKey": {
                "port": "F",
                "channel": "F",
            },
            "PacketKey": {
                "port": "F",
                "channel": "F",
                "sequence": "Nat",
            },
            "Packet": {
                "route": "IbcRoute F",
                "sequence": "Nat",
                "timeoutRevision": "Nat",
                "timeoutHeight": "Nat",
                "timeoutTime": "Nat",
                "data": "PacketData F",
            },
            "IbcState": {
                "valueBalance": "BalanceKey F → Nat",
                "sendSequence": "SequenceKey F → Nat",
                "committedPackets": "PacketKey F → Option (Packet F)",
            },
            "WithdrawalEvent": {
                "assetId": "F",
                "amount": "Nat",
                "sender": "F",
                "receiver": "F",
                "channel": "F",
                "sequence": "Nat",
            },
            "WithdrawalPayload": {
                "route": "IbcRoute F",
                "denomOrigin": "DenomOrigin",
                "packetData": "PacketData F",
                "timeoutRevision": "Nat",
                "timeoutHeight": "Nat",
                "timeoutTime": "Nat",
                "useTransparentAddress": "Bool",
            },
            "CommittedWithdrawalEffects": {
                "balanceEffects": "List (BalanceEffect F)",
                "targetBalanceEffectIncluded": (
                    "Protocol.Common.includedWithMultiplicity "
                    "[balanceEffectOf action payload] balanceEffects"
                ),
                "balancesExact": (
                    "applyBalanceEffects "
                    "transactionBefore.ibc.valueBalance balanceEffects = "
                    "some transactionAfter.ibc.valueBalance"
                ),
                "withdrawalEvents": "List (WithdrawalEvent F)",
                "targetEventIncluded": (
                    "Protocol.Common.includedWithMultiplicity "
                    "[eventOf action payload "
                    "(actionBefore.ibc.sendSequence "
                    "(sequenceKey payload))] withdrawalEvents"
                ),
                "eventsExact": (
                    "Protocol.Common.exactExtension "
                    "transactionBefore.withdrawalEvents withdrawalEvents "
                    "transactionAfter.withdrawalEvents"
                ),
                "packetSlotFresh": (
                    "transactionBefore.ibc.committedPackets "
                    "(packetKey payload "
                    "(actionBefore.ibc.sendSequence "
                    "(sequenceKey payload))) = none"
                ),
                "packetPersisted": (
                    "transactionAfter.ibc.committedPackets "
                    "(packetKey payload "
                    "(actionBefore.ibc.sendSequence "
                    "(sequenceKey payload))) = "
                    "some (packetOf payload "
                    "(actionBefore.ibc.sendSequence "
                    "(sequenceKey payload)))"
                ),
                "sequenceAdvanced": (
                    "actionBefore.ibc.sendSequence "
                    "(sequenceKey payload) < "
                    "transactionAfter.ibc.sendSequence "
                    "(sequenceKey payload)"
                ),
            },
        },
        "transition": {
            "anchorLive": "action.anchor ∈ before.liveSctAnchors",
            "assetAnchorCurrent": (
                "action.assetAnchor = before.currentAssetAnchor"
            ),
            "complianceAnchorLive": (
                "action.complianceAnchor ∈ before.liveComplianceAnchors"
            ),
            "withdrawalsEnabled": "before.withdrawalsEnabled = true",
            "actionNullifiersDistinct": (
                "action.required.nullifier ≠ action.optional.nullifier"
            ),
            "actionNullifiersUnique": "(actionNullifiers action).Nodup",
            "actionNullifiersFresh": (
                "∀ nullifier ∈ actionNullifiers action, "
                "nullifier ∉ before.spentNullifiers"
            ),
            "deltaNullifiersExact": (
                "delta.nullifiers = actionNullifiers action"
            ),
            "deltaOutputsExact": (
                "delta.proofBoundOutputCommitments = "
                "actionOutputCommitments action"
            ),
            "spentNullifiersExact": (
                "Protocol.Common.exactExtension before.spentNullifiers "
                "delta.nullifiers after.spentNullifiers"
            ),
            "outputCommitmentsExact": (
                "Protocol.Common.exactExtension "
                "before.proofBoundOutputCommitments "
                "delta.proofBoundOutputCommitments "
                "after.proofBoundOutputCommitments"
            ),
            "eventExact": (
                "Protocol.Common.exactExtension before.withdrawalEvents "
                "[eventOf action payload "
                "(before.ibc.sendSequence (sequenceKey payload))] "
                "after.withdrawalEvents"
            ),
            "balanceUpdate": (
                "match payload.denomOrigin with "
                "| .local => "
                "before.ibc.valueBalance (balanceKey action payload) + "
                "payload.packetData.amount ≤ maxAmount ∧ "
                "after.ibc.valueBalance = "
                "Function.update before.ibc.valueBalance "
                "(balanceKey action payload) "
                "(before.ibc.valueBalance (balanceKey action payload) + "
                "payload.packetData.amount) "
                "| .counterparty => "
                "payload.packetData.amount ≤ "
                "before.ibc.valueBalance (balanceKey action payload) ∧ "
                "after.ibc.valueBalance = "
                "Function.update before.ibc.valueBalance "
                "(balanceKey action payload) "
                "(before.ibc.valueBalance (balanceKey action payload) - "
                "payload.packetData.amount)"
            ),
            "sequenceAvailable": (
                "before.ibc.sendSequence (sequenceKey payload) < maxSequence"
            ),
            "sequenceUpdate": (
                "after.ibc.sendSequence = "
                "Function.update before.ibc.sendSequence "
                "(sequenceKey payload) "
                "(before.ibc.sendSequence (sequenceKey payload) + 1)"
            ),
            "packetSlotEmpty": (
                "before.ibc.committedPackets "
                "(packetKey payload "
                "(before.ibc.sendSequence (sequenceKey payload))) = none"
            ),
            "packetUpdate": (
                "after.ibc.committedPackets = "
                "Function.update before.ibc.committedPackets "
                "(packetKey payload "
                "(before.ibc.sendSequence (sequenceKey payload))) "
                "(some (packetOf payload "
                "(before.ibc.sendSequence (sequenceKey payload))))"
            ),
            "liveSctAnchorsFrame": (
                "after.liveSctAnchors = before.liveSctAnchors"
            ),
            "currentAssetAnchorFrame": (
                "after.currentAssetAnchor = before.currentAssetAnchor"
            ),
            "liveComplianceAnchorsFrame": (
                "after.liveComplianceAnchors = "
                "before.liveComplianceAnchors"
            ),
            "withdrawalsEnabledFrame": (
                "after.withdrawalsEnabled = before.withdrawalsEnabled"
            ),
        },
        "facts_structure": "ConsensusExternalFacts",
        "facts_transition": (
            "ConsensusTransition before action payload delta after"
        ),
        "accepted_field": "external",
        "accepted_type": (
            "ConsensusExternalFacts checks action payload before delta after"
        ),
        "transaction_accepted": {
            "actionAccepted": (
                "ConsensusAccepted primitives checks actionBefore delta "
                "actionAfter action payload"
            ),
            "committed": (
                "Nonempty (Protocol.Common.CommittedTargetTransaction "
                "(fun state => state.spentNullifiers) "
                "(fun state => state.proofBoundOutputCommitments) "
                "(actionNullifiers action) "
                "(actionOutputCommitments action) otherStep "
                "(TargetStep action payload delta) transactionBefore "
                "actionBefore actionAfter transactionAfter)"
            ),
            "withdrawalEffects": (
                "Nonempty (CommittedWithdrawalEffects transactionBefore "
                "actionBefore transactionAfter action payload)"
            ),
        },
        "transaction_theorems": {
            "transactionAcceptedNullifiersUnique": (
                (
                    "TransactionAccepted primitives checks otherStep "
                    "transactionBefore actionBefore delta actionAfter "
                    "transactionAfter action payload"
                ),
                (
                    "Protocol.Common.includedWithMultiplicity "
                    "(actionNullifiers action) nullifiers ∧ "
                    "nullifiers.Nodup ∧ Protocol.Common.exactExtension "
                    "transactionBefore.spentNullifiers nullifiers "
                    "transactionAfter.spentNullifiers"
                ),
            ),
            "transactionAcceptedIncludesTargetChange": (
                (
                    "TransactionAccepted primitives checks otherStep "
                    "transactionBefore actionBefore delta actionAfter "
                    "transactionAfter action payload"
                ),
                (
                    "Protocol.Common.includedWithMultiplicity "
                    "(actionOutputCommitments action) outputCommitments ∧ "
                    "Protocol.Common.exactExtension "
                    "transactionBefore.proofBoundOutputCommitments "
                    "outputCommitments "
                    "transactionAfter.proofBoundOutputCommitments"
                ),
            ),
            "transactionAcceptedIncludesTargetWithdrawalEffects": (
                (
                    "TransactionAccepted primitives checks otherStep "
                    "transactionBefore actionBefore delta actionAfter "
                    "transactionAfter action payload"
                ),
                (
                    "Nonempty (CommittedWithdrawalEffects "
                    "transactionBefore actionBefore transactionAfter "
                    "action payload)"
                ),
            ),
            "successfulActionCommitsExactPacket": (
                "after.ibc.committedPackets = "
                "Function.update before.ibc.committedPackets"
            ),
            "successfulActionPersistsExactChange": (
                "actionOutputCommitments action"
            ),
        },
    },
)

TYPED_COMMON_TRANSACTION_MODEL = {
    "path": "tools/gnark/lean/ShielddGnarkFormal/Protocol/Common.lean",
    "committed_effects": {
        "nullifiers": "List Item",
        "outputCommitments": "List Item",
        "nullifiersUnique": "nullifiers.Nodup",
        "nullifiersFresh": (
            "∀ nullifier ∈ nullifiers, nullifier ∉ spent before"
        ),
        "spentExact": (
            "exactExtension (spent before) nullifiers (spent after)"
        ),
        "outputsExact": (
            "exactExtension (outputs before) outputCommitments (outputs after)"
        ),
    },
    "committed_target": {
        "beforeSteps": (
            "Steps otherStep transactionBefore actionBefore"
        ),
        "targetStepProof": "targetStep actionBefore actionAfter",
        "afterSteps": (
            "Steps otherStep actionAfter transactionAfter"
        ),
        "effects": (
            "CommittedEffects spent outputs "
            "transactionBefore transactionAfter"
        ),
        "targetNullifiersIncluded": (
            "includedWithMultiplicity targetNullifiers effects.nullifiers"
        ),
        "targetOutputsIncluded": (
            "includedWithMultiplicity targetOutputs "
            "effects.outputCommitments"
        ),
    },
}

PROOF_BEARING_BINDING_AUTHORIZATION_MODEL = {
    "common_path": (
        "tools/gnark/lean/ShielddGnarkFormal/Protocol/Common.lean"
    ),
    "definition": (
        "def proofBearingBindingSignatureAccepted "
        "(aggregateKeyNonIdentity signatureVerifiesAgainstAuthHash : Prop) "
        ": Prop := aggregateKeyNonIdentity ∧ "
        "signatureVerifiesAgainstAuthHash"
    ),
    "targets": (
        {
            "label": "NoteReshape",
            "path": (
                "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
                "NoteReshape/Semantics.lean"
            ),
            "structure": "ConsensusSignatureFacts",
            "field": "bindingSignatureAccepted",
            "type": (
                "Common.proofBearingBindingSignatureAccepted "
                "(checks.enclosingTransactionBindingVerificationKeyNonIdentity "
                "action) "
                "(checks.enclosingTransactionBindingSignatureVerifiesAgainst"
                "AuthHash action)"
            ),
        },
        {
            "label": "Transfer",
            "path": (
                "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
                "Transfer/Semantics.lean"
            ),
            "structure": "ConsensusExternalFacts",
            "field": "enclosingTransactionBindingSignatureAccepted",
            "type": (
                "Common.proofBearingBindingSignatureAccepted "
                "(checks.enclosingTransactionBindingVerificationKeyNonIdentity "
                "action) "
                "(checks.enclosingTransactionBindingSignatureVerifiesAgainst"
                "AuthHash action)"
            ),
        },
        {
            "label": "Withdrawal",
            "path": (
                "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
                "ShieldedIcs20Withdrawal/Semantics.lean"
            ),
            "structure": "ConsensusExternalFacts",
            "field": "transactionBindingSignatureAccepted",
            "type": (
                "Common.proofBearingBindingSignatureAccepted "
                "(checks.transactionBindingVerificationKeyNonIdentity action) "
                "(checks.transactionBindingSignatureVerifiesAgainstAuthHash "
                "action)"
            ),
        },
    ),
    "forbidden_target_tokens": (
        "Common.canonicalBindingSignatureAccepted",
        "BindingVerificationKeyIsIdentity",
        "BindingSignatureIsZeroSentinel",
    ),
    "runtime_blocks": (
        {
            "label": "proof-bearing runtime binding authorization",
            "path": (
                "crates/core/app/src/action_handler/transaction/"
                "stateless.rs"
            ),
            "declaration": (
                r"^[ \t]*pub\(crate\)[ \t]+fn[ \t]+"
                r"valid_binding_signature\b"
            ),
            "function": "valid_binding_signature",
            "ordered": (
                "let auth_hash = tx.auth_hash();",
                "let bvk = tx.binding_verification_key();",
                "if bvk.is_identity()",
                "tx.num_proofs() == 0",
                "is_no_binding_signature(tx.binding_sig())",
                "bvk.verify(auth_hash.as_bytes(), tx.binding_sig())",
            ),
        },
        {
            "label": "proof-bearing construction binding authorization",
            "path": "crates/core/transaction/src/plan/build.rs",
            "declaration": (
                r"^[ \t]*impl[ \t]+TransactionPlan\b"
            ),
            "function": "apply_auth_data",
            "ordered": (
                "let mut synthetic_blinding_factor = Fr::zero();",
                "if let Some(fee_funding) = &self.fee_funding",
                "synthetic_blinding_factor += fee_funding.value_blinding();",
                "self.num_proofs() == 0 "
                "|| !synthetic_blinding_factor.is_zero()",
                "(self.num_proofs() == 0 && spend_count == 0) "
                "|| auth_data.effect_hash.is_some()",
                "let transaction_effect_hash = transaction.effect_hash();",
                "supplied_effect_hash == transaction_effect_hash",
            ),
        },
    ),
}

ACTION_AUTHORIZATION_MODEL = {
    "action_enum_path": "crates/core/transaction/src/action.rs",
    "dispatch_path": "crates/core/app/src/action_handler/actions.rs",
    "profiled_execution_path": (
        "crates/core/app/src/action_handler/transaction.rs"
    ),
    "proof_count_path": (
        "crates/core/transaction/src/transaction.rs"
    ),
    "action_plan_enum_path": (
        "crates/core/transaction/src/plan/action.rs"
    ),
    "action_plan_to_action": {
        "ComplianceRegisterAsset": "ComplianceRegisterAsset",
        "ComplianceRegisterUser": "ComplianceRegisterUser",
        "IbcAction": "IbcRelay",
        "NoteReshape": "NoteReshape",
        "ProposalSubmit": "ProposalSubmit",
        "ShieldedIcs20Withdrawal": "ShieldedIcs20Withdrawal",
        "Transfer": "Transfer",
        "ValidatorDefinition": "ValidatorDefinition",
        "ValidatorVote": "ValidatorVote",
    },
    "non_plan_actions": (
        "AggregateBundle",
        "ShieldedHostWithdrawal",
    ),
    "spend_bearing_action_plans": (
        "NoteReshape",
        "ShieldedIcs20Withdrawal",
        "Transfer",
    ),
    "construction_roster_functions": (
        {
            "label": "ActionPlan real-spend census",
            "path": "crates/core/transaction/src/plan/action.rs",
            "declaration": r"^[ \t]*impl[ \t]+ActionPlan\b",
            "function": "spends",
        },
        {
            "label": "TransactionPlan destination census",
            "path": "crates/core/transaction/src/plan.rs",
            "declaration": r"^[ \t]*impl[ \t]+TransactionPlan\b",
            "function": "dest_addresses",
        },
        {
            "label": "TransactionPlan output census",
            "path": "crates/core/transaction/src/plan.rs",
            "declaration": r"^[ \t]*impl[ \t]+TransactionPlan\b",
            "function": "num_outputs",
        },
        {
            "label": "TransactionPlan proof census",
            "path": "crates/core/transaction/src/plan.rs",
            "declaration": r"^[ \t]*impl[ \t]+TransactionPlan\b",
            "function": "num_proofs",
        },
        {
            "label": "Transfer compliance nonce census",
            "path": "crates/view/src/client_compliance.rs",
            "declaration": (
                r"^[ \t]*pub[ \t]+async[ \t]+fn[ \t]+"
                r"enrich_plan_with_compliance\b"
            ),
            "function": "enrich_plan_with_compliance",
            "strict_catchall": False,
        },
        {
            "label": "Transfer compliance action census",
            "path": "crates/view/src/client_compliance.rs",
            "declaration": (
                r"^[ \t]*async[ \t]+fn[ \t]+"
                r"enrich_transfer_family_with_compliance\b"
            ),
            "function": "enrich_transfer_family_with_compliance",
            "strict_catchall": False,
        },
        {
            "label": "Withdrawal compliance action census",
            "path": "crates/view/src/client_compliance.rs",
            "declaration": (
                r"^[ \t]*async[ \t]+fn[ \t]+"
                r"enrich_shielded_ics20_withdrawals_with_compliance\b"
            ),
            "function": (
                "enrich_shielded_ics20_withdrawals_with_compliance"
            ),
            "strict_catchall": False,
        },
    ),
    "construction_binding_block": {
        "label": "TransactionPlan authorization-data alignment",
        "path": "crates/core/transaction/src/plan/build.rs",
        "declaration": r"^[ \t]*impl[ \t]+TransactionPlan\b",
        "function": "apply_auth_data",
        "ordered": (
            "let spend_count = self.num_spends();",
            "auth_data.spend_auths.len() != spend_count",
            "(self.num_proofs() == 0 && spend_count == 0) "
            "|| auth_data.effect_hash.is_some()",
            "self.actions.len() == "
            "transaction.transaction_body.actions.len()",
            "self.fee_funding.is_some() "
            "== transaction.transaction_body.fee_funding.is_some()",
            "let transaction_effect_hash = transaction.effect_hash();",
            "supplied_effect_hash == transaction_effect_hash",
            ".zip(transaction.transaction_body.actions.iter_mut())",
            "plan.family_id() == note_reshape.body.family_id",
            "plan.withdrawal.effect_hash() "
            "== withdrawal.body.withdrawal.effect_hash()",
            "does not match its ActionPlan variant",
            "spend_auths.next().is_none()",
            "self.num_proofs() == transaction.num_proofs()",
        ),
    },
    "construction_consumers": (
        {
            "label": "TransactionPlan spend aggregation",
            "path": "crates/core/transaction/src/plan.rs",
            "declaration": r"^[ \t]*impl[ \t]+TransactionPlan\b",
            "function": "num_spends",
            "ordered": (
                ".map(|action| action.spends().len())",
                "fee_funding.transfer.spends.len()",
            ),
        },
        {
            "label": "TransactionPlan witness spend census",
            "path": "crates/core/transaction/src/plan/build.rs",
            "declaration": r"^[ \t]*impl[ \t]+TransactionPlan\b",
            "function": "witness_data",
            "ordered": (
                "for action in &self.actions",
                "for spend in action.spends()",
                "if let Some(fee_funding) = &self.fee_funding",
            ),
        },
        {
            "label": "single-key spend authorization census",
            "path": "crates/core/transaction/src/plan/auth.rs",
            "declaration": r"^[ \t]*impl[ \t]+TransactionPlan\b",
            "function": "authorize",
            "ordered": (
                "for action_plan in &self.actions",
                "for spend_plan in action_plan.spends()",
                "if let Some(fee_funding) = &self.fee_funding",
            ),
        },
        {
            "label": "threshold spend-randomizer census",
            "path": "crates/custody/src/threshold/sign.rs",
            "declaration": (
                r"^[ \t]*fn[ \t]+spend_randomizers\b"
            ),
            "function": "spend_randomizers",
            "ordered": (
                ".flat_map(|action| action.spends().iter()",
                "plan.fee_funding",
                ".map(|spend| spend.randomizer)",
            ),
        },
        {
            "label": "threshold required-signature join",
            "path": "crates/custody/src/threshold/sign.rs",
            "declaration": (
                r"^[ \t]*fn[ \t]+required_signatures\b"
            ),
            "function": "required_signatures",
            "ordered": (
                "SigningRequest::TransactionPlan(plan) => "
                "plan.num_spends()",
            ),
        },
        {
            "label": "view witness spend census",
            "path": "crates/view/src/service.rs",
            "declaration": r"^[ \t]*async[ \t]+fn[ \t]+witness\b",
            "function": "witness",
            "ordered": (
                ".flat_map(|action| action.spends())",
                ".chain(tx_plan.fee_funding.iter()",
            ),
        },
        {
            "label": "fee-funding exclusion spend census",
            "path": "crates/view/src/note_manager.rs",
            "declaration": (
                r"^[ \t]*fn[ \t]+"
                r"fee_funding_excluded_note_commitments\b"
            ),
            "function": "fee_funding_excluded_note_commitments",
            "ordered": (
                "for action in actions",
                "action",
                ".spends()",
            ),
        },
        {
            "label": "mock-client witness spend census",
            "path": "crates/test/mock-client/src/lib.rs",
            "declaration": (
                r"^[ \t]*pub[ \t]+fn[ \t]+witness_plan\b"
            ),
            "function": "witness_plan",
            "ordered": (
                ".flat_map(|action| action.spends())",
                ".map(|spend| spend.note.commit())",
            ),
        },
        {
            "label": "OnlyIbcRelay fail-closed action subset",
            "path": "crates/custody/src/policy.rs",
            "declaration": (
                r"^[ \t]*impl[ \t]+Policy[ \t]+for[ \t]+AuthPolicy\b"
            ),
            "function": "check_transaction",
            "ordered": (
                "ActionPlan::IbcAction",
                "ActionPlan::Transfer(transfer)",
                "_ =>",
                "not allowed by OnlyRelay policy",
            ),
        },
    ),
    "construction_tests": (
        (
            "crates/core/transaction/src/plan.rs",
            "apply_auth_data_rejects_action_count_mismatch",
        ),
        (
            "crates/core/transaction/src/plan.rs",
            "apply_auth_data_rejects_fee_funding_presence_mismatch",
        ),
        (
            "crates/core/transaction/src/plan.rs",
            "apply_auth_data_rejects_note_reshape_family_mismatch",
        ),
        (
            "crates/core/transaction/src/plan.rs",
            "apply_auth_data_rejects_missing_effect_hash_for_proof_bearing_plan",
        ),
        (
            "crates/core/transaction/src/plan.rs",
            "apply_auth_data_rejects_supplied_effect_hash_mismatch",
        ),
    ),
    "classes": {
        "circuit_and_envelope_authorized": (
            "NoteReshape",
            "ShieldedHostWithdrawal",
            "ShieldedIcs20Withdrawal",
            "Transfer",
        ),
        "direct_signature_and_state_authorized": (
            "ComplianceRegisterAsset",
            "ComplianceRegisterUser",
            "ProposalSubmit",
            "ValidatorDefinition",
            "ValidatorVote",
        ),
        "internal_consensus_only": ("AggregateBundle",),
        "permissionless_protocol_authorized": ("IbcRelay",),
    },
    "direct_actions": (
        {
            "action": "ComplianceRegisterAsset",
            "blocks": (
                {
                    "label": "asset-registration stateless authorization",
                    "path": (
                        "crates/core/component/compliance/src/component/"
                        "state.rs"
                    ),
                    "declaration": (
                        r"^[ \t]*impl[ \t]+ActionHandler[ \t]+for[ \t]+"
                        r"MsgRegisterAsset\b"
                    ),
                    "function": "check_stateless",
                    "ordered": (
                        "self.validate_authorization_keys()?;",
                        "let grant = self",
                        ".asset_registration_grant",
                        "let expected_body = self.registration_grant_body("
                        "grant.body.valid_until_unix);",
                        "grant.body == expected_body",
                        "grant.verify()?;",
                    ),
                },
                {
                    "label": "asset-registration state authorization",
                    "path": (
                        "crates/core/component/compliance/src/component/"
                        "state.rs"
                    ),
                    "declaration": (
                        r"^[ \t]*impl[ \t]+ActionHandler[ \t]+for[ \t]+"
                        r"MsgRegisterAsset\b"
                    ),
                    "function": "check_and_execute",
                    "ordered": (
                        "state.is_compliance_registrar(&grant.registrar_vk)"
                        ".await?;",
                        "AssetGrantAdmission::verify(",
                        "self, registrar_authorized, current_unix as u64",
                    ),
                },
                {
                    "label": "asset-registration admission",
                    "path": (
                        "crates/core/component/compliance/src/registry.rs"
                    ),
                    "declaration": (
                        r"^[ \t]*impl[ \t]+AssetGrantAdmission\b"
                    ),
                    "function": "verify",
                    "ordered": (
                        "action.validate_authorization_keys()?;",
                        "grant.body == action.registration_grant_body("
                        "grant.body.valid_until_unix)",
                        "grant.verify()?;",
                        "registrar_authorized",
                        "current_unix <= grant.body.valid_until_unix",
                        "policy.validate_crypto_keys()?;",
                    ),
                },
                {
                    "label": "asset registrar membership",
                    "path": (
                        "crates/core/component/compliance/src/registry.rs"
                    ),
                    "declaration": (
                        r"^[ \t]*pub[ \t]+trait[ \t]+"
                        r"ComplianceRegistryRead\b"
                    ),
                    "function": "is_compliance_registrar",
                    "ordered": (
                        "ensure_nonidentity_spend_auth_key("
                        'vk, "compliance registrar key")?;',
                        ".get_raw(&state_key::compliance_registrar_vk(vk))",
                    ),
                },
                {
                    "label": "asset-registration signed grant",
                    "path": (
                        "crates/core/component/compliance/src/structs.rs"
                    ),
                    "declaration": (
                        r"^[ \t]*impl[ \t]+AssetRegistrationGrant\b"
                    ),
                    "function": "verify",
                    "ordered": (
                        "self.body.validate_authorization_keys()?;",
                        "ensure_nonidentity_spend_auth_key("
                        '&self.registrar_vk, "compliance registrar key")?;',
                        ".verify(&self.body.signing_bytes(), &self.signature)",
                    ),
                },
                {
                    "label": "asset-registration embedded authority keys",
                    "path": (
                        "crates/core/component/compliance/src/structs.rs"
                    ),
                    "declaration": (
                        r"^[ \t]*impl[ \t]+MsgRegisterAsset\b"
                    ),
                    "function": "validate_authorization_keys",
                    "ordered": (
                        "ensure_nonidentity_spend_auth_key(",
                        '"compliance registration authority key"',
                        "grant.body.validate_authorization_keys()?;",
                        "ensure_nonidentity_spend_auth_key("
                        '&grant.registrar_vk, "compliance registrar key")?;',
                    ),
                },
            ),
            "tests": (
                (
                    "crates/core/component/compliance/src/structs.rs",
                    "asset_policy_rejects_identity_registration_authority_key",
                ),
                (
                    "crates/core/component/compliance/src/structs.rs",
                    "asset_registration_grant_rejects_identity_registrar_key",
                ),
                (
                    "crates/core/component/compliance/src/component/state.rs",
                    "test_asset_registration_rejects_expired_grant",
                ),
                (
                    "crates/core/component/compliance/src/component/state.rs",
                    "test_asset_registration_rejects_forged_grant",
                ),
                (
                    "crates/core/component/compliance/src/component/state.rs",
                    "test_asset_registration_rejects_unauthorized_registrar",
                ),
            ),
        },
        {
            "action": "ComplianceRegisterUser",
            "blocks": (
                {
                    "label": "user-registration action binding",
                    "path": (
                        "crates/core/component/compliance/src/component/"
                        "state.rs"
                    ),
                    "declaration": (
                        r"^[ \t]*impl[ \t]+ActionHandler[ \t]+for[ \t]+"
                        r"MsgRegisterUser\b"
                    ),
                    "function": "check_stateless",
                    "ordered": (
                        "let grant = self",
                        ".grant",
                        "grant.body.leaf == self.leaf",
                        "self.leaf.validate_derivation()?;",
                    ),
                },
                {
                    "label": "user-registration state authorization",
                    "path": (
                        "crates/core/component/compliance/src/component/"
                        "state.rs"
                    ),
                    "declaration": (
                        r"^[ \t]*impl[ \t]+ActionHandler[ \t]+for[ \t]+"
                        r"MsgRegisterUser\b"
                    ),
                    "function": "check_and_execute",
                    "ordered": (
                        "state.is_asset_regulated(self.leaf.asset_id).await?",
                        "let policy = state",
                        ".get_asset_policy(self.leaf.asset_id)",
                        "UserGrantAdmission::verify("
                        "self, &policy, current_unix as u64)?;",
                    ),
                },
                {
                    "label": "user-registration admission",
                    "path": (
                        "crates/core/component/compliance/src/registry.rs"
                    ),
                    "declaration": (
                        r"^[ \t]*impl[ \t]+UserGrantAdmission\b"
                    ),
                    "function": "verify",
                    "ordered": (
                        "policy.validate_crypto_keys()?;",
                        "grant.body.leaf == action.leaf",
                        "grant.body.policy_id == policy.ring.policy_id",
                        "current_unix <= grant.body.valid_until_unix",
                        "let authority_vk = "
                        "policy.registration_authority_vk.as_ref()",
                        "grant.verify(authority_vk)?;",
                    ),
                },
                {
                    "label": "user-registration signed grant",
                    "path": (
                        "crates/core/component/compliance/src/structs.rs"
                    ),
                    "declaration": (
                        r"^[ \t]*impl[ \t]+UserRegistrationGrant\b"
                    ),
                    "function": "verify",
                    "ordered": (
                        "ensure_nonidentity_spend_auth_key("
                        'vk, "compliance registration authority key")?;',
                        "vk.verify(&self.body.signing_bytes(), &self.signature)",
                    ),
                },
                {
                    "label": "persisted registration-authority key",
                    "path": (
                        "crates/core/component/compliance/src/structs.rs"
                    ),
                    "declaration": r"^[ \t]*impl[ \t]+AssetPolicy\b",
                    "function": "validate_crypto_keys",
                    "ordered": (
                        "if let Some(registration_authority_vk)",
                        "ensure_nonidentity_spend_auth_key(",
                        '"compliance registration authority key"',
                    ),
                },
            ),
            "tests": (
                (
                    "crates/core/component/compliance/src/structs.rs",
                    "asset_policy_rejects_identity_registration_authority_key",
                ),
                (
                    "crates/core/component/compliance/src/structs.rs",
                    "user_registration_grant_rejects_identity_registration_authority",
                ),
                (
                    "crates/core/component/compliance/src/component/state.rs",
                    "test_user_registration_rejects_missing_wrong_and_expired_grants",
                ),
            ),
        },
        {
            "action": "ProposalSubmit",
            "blocks": (
                {
                    "label": "proposal signature authorization",
                    "path": (
                        "crates/core/app/src/action_handler/actions/submit.rs"
                    ),
                    "declaration": (
                        r"^[ \t]*impl[ \t]+AppActionHandler[ \t]+for[ \t]+"
                        r"ProposalSubmit\b"
                    ),
                    "function": "check_stateless",
                    "ordered": (
                        "governance_key",
                        ".verify(&self.body.to_proto().encode_to_vec(), "
                        "&self.auth_sig)",
                    ),
                },
                {
                    "label": "proposal governance-key state binding",
                    "path": (
                        "crates/core/app/src/action_handler/actions/submit.rs"
                    ),
                    "declaration": (
                        r"^[ \t]*impl[ \t]+AppActionHandler[ \t]+for[ \t]+"
                        r"ProposalSubmit\b"
                    ),
                    "function": "check_and_execute",
                    "ordered": (
                        "state.check_validator_is_active(proposer).await?;",
                        "state",
                        ".check_governance_key_matches_validator("
                        "proposer, governance_key)",
                    ),
                },
                {
                    "label": "proposal governance-key identity guard",
                    "path": (
                        "crates/core/component/stake/src/governance_key.rs"
                    ),
                    "declaration": r"^[ \t]*impl[ \t]+GovernanceKey\b",
                    "function": "verify",
                    "ordered": (
                        "ensure_nonidentity_spend_auth_key("
                        '&self.0, "validator governance key")?;',
                        "Ok(self.0.verify(message, signature)?)",
                    ),
                },
            ),
            "tests": (
                (
                    "crates/core/component/stake/src/governance_key.rs",
                    "governance_key_rejects_identity",
                ),
            ),
        },
        {
            "action": "ValidatorDefinition",
            "blocks": (
                {
                    "label": "validator-definition signature authorization",
                    "path": (
                        "crates/core/component/stake/src/component/"
                        "action_handler/validator_definition.rs"
                    ),
                    "declaration": (
                        r"^[ \t]*impl[ \t]+ActionHandler[ \t]+for[ \t]+"
                        r"validator::Definition\b"
                    ),
                    "function": "check_stateless",
                    "ordered": (
                        "let definition_bytes = "
                        "self.validator.encode_to_vec();",
                        "self.validator",
                        ".identity_key",
                        ".verify(&definition_bytes, &self.auth_sig)",
                    ),
                },
                {
                    "label": "validator identity-key guard",
                    "path": (
                        "crates/core/component/stake/src/identity_key.rs"
                    ),
                    "declaration": r"^[ \t]*impl[ \t]+IdentityKey\b",
                    "function": "verify",
                    "ordered": (
                        "let verification_key = self.verification_key();",
                        "ensure_nonidentity_spend_auth_key("
                        '&verification_key, "validator identity key")?;',
                        "Ok(verification_key.verify(message, signature)?)",
                    ),
                },
            ),
            "tests": (
                (
                    "crates/core/component/stake/src/identity_key.rs",
                    "validator_identity_key_rejects_identity",
                ),
            ),
        },
        {
            "action": "ValidatorVote",
            "blocks": (
                {
                    "label": "validator-vote signature authorization",
                    "path": (
                        "crates/core/component/governance/src/"
                        "action_handler/validator_vote.rs"
                    ),
                    "declaration": (
                        r"^[ \t]*impl[ \t]+ActionHandler[ \t]+for[ \t]+"
                        r"ValidatorVote\b"
                    ),
                    "function": "check_stateless",
                    "ordered": (
                        "let body_bytes = body.encode_to_vec();",
                        "body.governance_key",
                        ".verify(&body_bytes, auth_sig)",
                    ),
                },
                {
                    "label": "validator-vote governance-key state binding",
                    "path": (
                        "crates/core/component/governance/src/"
                        "action_handler/validator_vote.rs"
                    ),
                    "declaration": (
                        r"^[ \t]*impl[ \t]+ActionHandler[ \t]+for[ \t]+"
                        r"ValidatorVote\b"
                    ),
                    "function": "check_and_execute",
                    "ordered": (
                        "state",
                        ".check_validator_active_at_proposal_start("
                        "*proposal, identity_key)",
                        ".check_governance_key_matches_validator("
                        "identity_key, governance_key)",
                    ),
                },
                {
                    "label": "validator-vote governance-key identity guard",
                    "path": (
                        "crates/core/component/stake/src/governance_key.rs"
                    ),
                    "declaration": r"^[ \t]*impl[ \t]+GovernanceKey\b",
                    "function": "verify",
                    "ordered": (
                        "ensure_nonidentity_spend_auth_key("
                        '&self.0, "validator governance key")?;',
                        "Ok(self.0.verify(message, signature)?)",
                    ),
                },
            ),
            "tests": (
                (
                    "crates/core/component/stake/src/governance_key.rs",
                    "governance_key_rejects_identity",
                ),
            ),
        },
    ),
    "genesis_authority_blocks": (
        {
            "label": "compliance genesis key validation",
            "path": "crates/core/component/compliance/src/genesis.rs",
            "declaration": r"^[ \t]*impl[ \t]+Content\b",
            "function": "validate_authorization_keys",
            "ordered": (
                "for registrar_vk in &self.compliance_registrar_vk",
                "ensure_nonidentity_spend_auth_key("
                'registrar_vk, "compliance registrar key")?;',
                "registration.validate_authorization_keys()?;",
            ),
        },
        {
            "label": "compliance genesis registrar admission",
            "path": "crates/core/component/compliance/src/registry.rs",
            "declaration": (
                r"^[ \t]*pub\(crate\)[ \t]+trait[ \t]+"
                r"ComplianceRegistryComponentWrite\b"
            ),
            "function": "admit_genesis_compliance_registrar",
            "ordered": (
                "ensure_nonidentity_spend_auth_key("
                '&vk, "compliance registrar key")?;',
                "put_compliance_registrar(self, vk);",
            ),
        },
    ),
    "genesis_authority_tests": (
        (
            "crates/core/component/compliance/src/genesis.rs",
            "genesis_rejects_identity_authorization_keys",
        ),
    ),
    "ibc_authorization": {
        "dispatch_path": (
            "crates/core/component/ibc/src/component/"
            "action_handler/ibc_action.rs"
        ),
        "variants": (
            "Acknowledgement",
            "ChannelCloseConfirm",
            "ChannelCloseInit",
            "ChannelOpenAck",
            "ChannelOpenConfirm",
            "ChannelOpenInit",
            "ChannelOpenTry",
            "ConnectionOpenAck",
            "ConnectionOpenConfirm",
            "ConnectionOpenInit",
            "ConnectionOpenTry",
            "CreateClient",
            "RecvPacket",
            "SubmitMisbehavior",
            "Timeout",
            "Unknown",
            "UpdateClient",
            "UpgradeClient",
        ),
        "evidence_blocks": (
            {
                "label": "IBC client creation state-machine admission",
                "path": (
                    "crates/core/component/ibc/src/component/msg_handler/"
                    "create_client.rs"
                ),
                "declaration": (
                    r"^[ \t]*impl[ \t]+MsgHandler[ \t]+for[ \t]+"
                    r"MsgCreateClient\b"
                ),
                "function": "try_execute",
                "ordered": (
                    "ics02_validation::get_tendermint_client_state(",
                    "ics02_validation::get_tendermint_consensus_state(",
                    "put_verified_consensus_state::<HI>(",
                ),
            },
            {
                "label": "IBC client update light-client admission",
                "path": (
                    "crates/core/component/ibc/src/component/msg_handler/"
                    "update_client.rs"
                ),
                "declaration": (
                    r"^[ \t]*impl[ \t]+MsgHandler[ \t]+for[ \t]+"
                    r"MsgUpdateClient\b"
                ),
                "function": "try_execute",
                "ordered": (
                    "client_is_present(&state, self).await?;",
                    "client_is_not_frozen(&client_state)?;",
                    "client_is_not_expired::<&S, HI>(",
                    "verify_header_validator_set(",
                    "verifier.verify_update_header(",
                    "Verdict::Success => Ok(())",
                ),
            },
            {
                "label": "IBC client upgrade proof admission",
                "path": (
                    "crates/core/component/ibc/src/component/msg_handler/"
                    "upgrade_client.rs"
                ),
                "declaration": (
                    r"^[ \t]*impl[ \t]+MsgHandler[ \t]+for[ \t]+"
                    r"MsgUpgradeClient\b"
                ),
                "function": "try_execute",
                "ordered": (
                    "proof_upgrade_consensus_state",
                    "proof_upgrade_client",
                    ".verify_client_upgrade_proof::<HI>(",
                    "let old_client_state = "
                    "state.get_client_state(&self.client_id).await?;",
                ),
            },
            {
                "label": "IBC misbehavior proof admission",
                "path": (
                    "crates/core/component/ibc/src/component/msg_handler/"
                    "misbehavior.rs"
                ),
                "declaration": (
                    r"^[ \t]*impl[ \t]+MsgHandler[ \t]+for[ \t]+"
                    r"MsgSubmitMisbehaviour\b"
                ),
                "function": "try_execute",
                "ordered": (
                    "client_is_present(&state, self).await?;",
                    "client_is_not_frozen(&client_state)?;",
                    "verify_misbehavior_header::<&S, HI>(",
                    "&untrusted_misbehavior.header1",
                    "verify_misbehavior_header::<&S, HI>(",
                    "&untrusted_misbehavior.header2",
                ),
            },
            {
                "label": "IBC connection-init state-machine admission",
                "path": (
                    "crates/core/component/ibc/src/component/msg_handler/"
                    "connection_open_init.rs"
                ),
                "declaration": (
                    r"^[ \t]*impl[ \t]+MsgHandler[ \t]+for[ \t]+"
                    r"MsgConnectionOpenInit\b"
                ),
                "function": "try_execute",
                "ordered": (
                    "state.get_client_state(&self.client_id_on_a).await?;",
                    "state.get_client_type(&self.client_id_on_a).await?;",
                    "state",
                    ".put_new_connection(&connection_id, "
                    "new_connection_end)",
                ),
            },
            {
                "label": "IBC connection proof admission",
                "path": (
                    "crates/core/component/ibc/src/component/msg_handler/"
                    "connection_open_try.rs"
                ),
                "declaration": (
                    r"^[ \t]*impl[ \t]+MsgHandler[ \t]+for[ \t]+"
                    r"MsgConnectionOpenTry\b"
                ),
                "function": "try_execute",
                "ordered": (
                    "get_verified_consensus_state(",
                    "proof_verification::verify_connection_state(",
                    "proof_verification::verify_client_full_state(",
                    "proof_verification::verify_client_consensus_state(",
                ),
            },
            {
                "label": "IBC channel-init state-machine admission",
                "path": (
                    "crates/core/component/ibc/src/component/msg_handler/"
                    "channel_open_init.rs"
                ),
                "declaration": (
                    r"^[ \t]*impl[ \t]+MsgHandler[ \t]+for[ \t]+"
                    r"MsgChannelOpenInit\b"
                ),
                "function": "try_execute",
                "ordered": (
                    "verify_channel_does_not_exist(",
                    "verify_connections_exist(&state, self).await?;",
                    "AH::chan_open_init_check(&mut state, self).await?;",
                    "state.put_channel(",
                ),
            },
            {
                "label": "IBC channel proof admission",
                "path": (
                    "crates/core/component/ibc/src/component/msg_handler/"
                    "channel_open_try.rs"
                ),
                "declaration": (
                    r"^[ \t]*impl[ \t]+MsgHandler[ \t]+for[ \t]+"
                    r"MsgChannelOpenTry\b"
                ),
                "function": "try_execute",
                "ordered": (
                    "verify_connections_open(&state, self).await?;",
                    ".verify_channel_proof(",
                    "AH::chan_open_try_check(&mut state, self).await?;",
                ),
            },
            {
                "label": "IBC channel-close state-machine admission",
                "path": (
                    "crates/core/component/ibc/src/component/msg_handler/"
                    "channel_close_init.rs"
                ),
                "declaration": (
                    r"^[ \t]*impl[ \t]+MsgHandler[ \t]+for[ \t]+"
                    r"MsgChannelCloseInit\b"
                ),
                "function": "try_execute",
                "ordered": (
                    "channel.state_matches(&ChannelState::Closed)",
                    "connection.state_matches(&ConnectionState::Open)",
                    "AH::chan_close_init_check(&mut state, self).await?;",
                    "channel.set_state(ChannelState::Closed);",
                ),
            },
            {
                "label": "IBC receive-packet proof admission",
                "path": (
                    "crates/core/component/ibc/src/component/msg_handler/"
                    "recv_packet.rs"
                ),
                "declaration": (
                    r"^[ \t]*impl[ \t]+MsgHandler[ \t]+for[ \t]+"
                    r"MsgRecvPacket\b"
                ),
                "function": "try_execute",
                "ordered": (
                    "channel.state_matches(&ChannelState::Open)",
                    "connection.state_matches(&ConnectionState::Open)",
                    ".verify_packet_recv_proof::<HI>(&connection, self)",
                    "state.seen_packet(&self.packet).await?",
                    "AH::recv_packet_check(&mut state, self).await?;",
                ),
            },
            {
                "label": "IBC acknowledgement proof admission",
                "path": (
                    "crates/core/component/ibc/src/component/msg_handler/"
                    "acknowledgement.rs"
                ),
                "declaration": (
                    r"^[ \t]*impl[ \t]+MsgHandler[ \t]+for[ \t]+"
                    r"MsgAcknowledgement\b"
                ),
                "function": "try_execute",
                "ordered": (
                    "commitment != commit_packet(&self.packet)",
                    ".verify_packet_ack_proof::<HI>(&connection, self)",
                    "AH::acknowledge_packet_check(&mut state, self).await?;",
                    "state.delete_packet_commitment(",
                ),
            },
            {
                "label": "IBC timeout proof admission",
                "path": (
                    "crates/core/component/ibc/src/component/msg_handler/"
                    "timeout.rs"
                ),
                "declaration": (
                    r"^[ \t]*impl[ \t]+MsgHandler[ \t]+for[ \t]+"
                    r"MsgTimeout\b"
                ),
                "function": "try_execute",
                "ordered": (
                    "commitment != commit_packet(&self.packet)",
                    ".verify_packet_timeout_proof::<HI>(&connection, self)",
                    ".verify_packet_timeout_absence_proof::<HI>("
                    "&connection, self)",
                    "H::timeout_packet_check(&mut state, self)",
                    "state.delete_packet_commitment(",
                ),
            },
        ),
    },
    "execution_gate": (
        {
            "label": "Rust CI FV evidence execution",
            "path": ".github/workflows/rust.yml",
            "ordered": (
                "- name: Execute exact FV specification evidence",
                "run: nix develop --command bash "
                "scripts/check-fv-specification-evidence.sh",
            ),
        },
        {
            "label": "FV evidence receipt owner",
            "path": "scripts/check-fv-specification-evidence.sh",
            "ordered": (
                "python3 \"$ROOT/scripts/run-fv-specification-tests.py\"",
                "--receipt \"$receipt\"",
                "python3 "
                "\"$ROOT/scripts/check-fv-specification-completeness.py\"",
                "--test-receipt \"$receipt\"",
                "--test-receipt-nonce \"$nonce\"",
            ),
        },
        {
            "label": "FV exact-selector execution plan",
            "path": "scripts/run-fv-specification-tests.py",
            "ordered": (
                "tests = execution_tests(matrix)",
                "for test in tests:",
                "cached = execute_rust(test, listing_cache)",
                "cached = execute_go(test)",
                '"source_sha256": sha256_bytes(source.read_bytes())',
                '"executed": executed',
                '"skipped": skipped',
            ),
        },
    ),
}


class SpecificationCompletenessError(ValueError):
    """The reviewed specification or one of its exhaustive joins is invalid."""


def reject(message: str) -> None:
    raise SpecificationCompletenessError(message)


def load_strict_json(path: Path, label: str, *, canonical: bool = False) -> Any:
    if not path.is_file():
        reject(f"missing {label}: {path}")

    try:
        text = path.read_text(encoding="utf-8")
        value = loads_strict_json(text, label)
    except (OSError, UnicodeError, StrictJsonError) as error:
        reject(f"cannot read {label}: {error}")
    if canonical:
        expected = json.dumps(value, indent=2, ensure_ascii=False) + "\n"
        if text != expected:
            reject(f"{label} is not canonical two-space JSON")
    return value


def exact_fields(value: Any, fields: set[str], label: str) -> dict[str, Any]:
    if not isinstance(value, dict):
        reject(f"{label} must be an object")
    actual = set(value)
    if actual != fields:
        reject(f"{label} fields {sorted(actual)} != {sorted(fields)}")
    return value


def nonempty_string(value: Any, label: str) -> str:
    if not isinstance(value, str) or not value:
        reject(f"{label} must be a non-empty string")
    return value


def string_list(
    value: Any,
    label: str,
    *,
    nonempty: bool = True,
    unique: bool = True,
) -> list[str]:
    if not isinstance(value, list) or (nonempty and not value):
        article = "a non-empty" if nonempty else "an"
        reject(f"{label} must be {article} array")
    result = [
        nonempty_string(item, f"{label}[{index}]")
        for index, item in enumerate(value)
    ]
    if unique and len(result) != len(set(result)):
        reject(f"{label} contains duplicates")
    return result


def validate_requirement_source(
    path: Path = REQUIREMENT_SOURCE,
) -> dict[str, dict[str, Any]]:
    """Load the hand-owned requirement census independent of matrix rendering."""

    raw = load_strict_json(path, "FV requirement source", canonical=True)
    raw = exact_fields(
        raw,
        {
            "schema",
            "statements",
            "lean_declaration_fingerprints",
            "test_source_fingerprints",
            "profile_sets",
            "requirements",
        },
        "FV requirement source",
    )
    if raw["schema"] != REQUIREMENT_SCHEMA_ID:
        reject(f"unsupported FV requirement schema {raw['schema']!r}")
    statements = raw["statements"]
    if not isinstance(statements, dict):
        reject("FV requirement statements must be an object")
    if set(statements) != set(PREDICATE_BASELINE):
        reject(
            "FV normative statement census mismatch: "
            f"omitted={sorted(set(PREDICATE_BASELINE)-set(statements))}, "
            f"unknown={sorted(set(statements)-set(PREDICATE_BASELINE))}"
        )
    if list(statements) != sorted(statements):
        reject("FV normative statements must be sorted by predicate ID")
    for predicate_id, statement in statements.items():
        nonempty_string(statement, f"{predicate_id}.normative statement")
        if "obligation holds" in statement.lower():
            reject(
                f"{predicate_id}: templated self-attesting normative "
                "statement is forbidden"
            )
    lean_fingerprints = raw["lean_declaration_fingerprints"]
    if not isinstance(lean_fingerprints, list) or not lean_fingerprints:
        reject("reviewed Lean declaration fingerprints must be non-empty")
    lean_keys: list[tuple[str, str]] = []
    for index, raw_fingerprint in enumerate(lean_fingerprints):
        fingerprint = exact_fields(
            raw_fingerprint,
            {"path", "declaration", "signature_sha256"},
            f"Lean declaration fingerprint[{index}]",
        )
        key = (
            nonempty_string(
                fingerprint["path"],
                f"Lean declaration fingerprint[{index}].path",
            ),
            nonempty_string(
                fingerprint["declaration"],
                f"Lean declaration fingerprint[{index}].declaration",
            ),
        )
        digest = nonempty_string(
            fingerprint["signature_sha256"],
            f"Lean declaration fingerprint[{index}].signature_sha256",
        )
        if re.fullmatch(r"[0-9a-f]{64}", digest) is None:
            reject(f"{key}: malformed Lean signature SHA-256")
        lean_keys.append(key)
    if len(lean_keys) != len(set(lean_keys)):
        reject("reviewed Lean declaration fingerprints contain duplicates")
    if lean_keys != sorted(lean_keys):
        reject("reviewed Lean declaration fingerprints are not sorted")
    expected_lean_keys = expected_reviewed_lean_theorems()
    if set(lean_keys) != expected_lean_keys:
        reject(
            "reviewed Lean theorem fingerprint census drifted: "
            f"missing={sorted(expected_lean_keys-set(lean_keys))}, "
            f"extra={sorted(set(lean_keys)-expected_lean_keys)}"
        )
    test_fingerprints = raw["test_source_fingerprints"]
    if not isinstance(test_fingerprints, list) or not test_fingerprints:
        reject("reviewed test source fingerprints must be non-empty")
    test_ids: list[str] = []
    for index, raw_fingerprint in enumerate(test_fingerprints):
        fingerprint = exact_fields(
            raw_fingerprint,
            {"id", "path", "source_sha256"},
            f"test source fingerprint[{index}]",
        )
        test_id = nonempty_string(
            fingerprint["id"], f"test source fingerprint[{index}].id"
        )
        nonempty_string(
            fingerprint["path"], f"{test_id}.fingerprint path"
        )
        digest = nonempty_string(
            fingerprint["source_sha256"], f"{test_id}.source_sha256"
        )
        if re.fullmatch(r"[0-9a-f]{64}", digest) is None:
            reject(f"{test_id}: malformed test source SHA-256")
        test_ids.append(test_id)
    if len(test_ids) != len(set(test_ids)):
        reject("reviewed test source fingerprints contain duplicates")
    if test_ids != sorted(test_ids):
        reject("reviewed test source fingerprints are not sorted")
    expected_profile_sets = {
        "all": ALL_PROFILES,
        "note_reshape": NR_PROFILES,
        "note_reshape_synthetic": NR_SYNTHETIC_PROFILES,
        "note_reshape_transfer": NR_PROFILES | TRANSFER_PROFILES,
        "optional_input_families":
            NR_SYNTHETIC_PROFILES | TRANSFER_WITHDRAWAL_PROFILES,
        "transfer": TRANSFER_PROFILES,
        "transfer_withdrawal": TRANSFER_WITHDRAWAL_PROFILES,
        "withdrawal": WITHDRAWAL_PROFILES,
    }
    profile_sets = raw["profile_sets"]
    if not isinstance(profile_sets, dict):
        reject("FV requirement profile_sets must be an object")
    if set(profile_sets) != set(expected_profile_sets):
        reject(
            "FV requirement profile-set census drifted: "
            f"missing={sorted(set(expected_profile_sets)-set(profile_sets))}, "
            f"extra={sorted(set(profile_sets)-set(expected_profile_sets))}"
        )
    expanded_profile_sets: dict[str, frozenset[str]] = {}
    for name, expected_profiles in expected_profile_sets.items():
        profiles = frozenset(
            string_list(
                profile_sets[name],
                f"FV requirement profile_sets.{name}",
            )
        )
        if profiles != expected_profiles:
            reject(
                f"FV requirement profile set {name} drifted: "
                f"missing={sorted(expected_profiles-profiles)}, "
                f"extra={sorted(profiles-expected_profiles)}"
            )
        expanded_profile_sets[name] = profiles

    requirement_fields = {
        "id",
        "placement",
        "profile_set",
        "branch_condition",
        "binding_mode",
        "disclosure",
        "variable_source",
        "evidence_removal_required",
        "semantic_evidence",
    }
    rows = raw["requirements"]
    if not isinstance(rows, list) or not rows:
        reject("FV requirement source must contain requirements")
    requirements: dict[str, dict[str, Any]] = {}
    for index, item in enumerate(rows):
        row = exact_fields(
            item,
            requirement_fields,
            f"FV requirement[{index}]",
        )
        predicate_id = nonempty_string(
            row["id"], f"FV requirement[{index}].id"
        )
        if re.fullmatch(r"[A-Z0-9-]+", predicate_id) is None:
            reject(f"invalid FV requirement ID {predicate_id!r}")
        if predicate_id in requirements:
            reject(f"duplicate FV requirement {predicate_id}")
        if row["placement"] not in PLACEMENTS:
            reject(
                f"{predicate_id}: unsupported requirement placement "
                f"{row['placement']!r}"
            )
        profile_set_name = nonempty_string(
            row["profile_set"], f"{predicate_id}.profile_set"
        )
        if profile_set_name not in expanded_profile_sets:
            reject(
                f"{predicate_id}: unknown requirement profile set "
                f"{profile_set_name!r}"
            )
        if row["binding_mode"] not in BINDING_MODES:
            reject(f"{predicate_id}: unsupported requirement binding mode")
        if row["disclosure"] not in DISCLOSURES:
            reject(f"{predicate_id}: unsupported requirement disclosure")
        if row["variable_source"] not in VARIABLE_SOURCES:
            reject(f"{predicate_id}: unsupported requirement variable source")
        if row["semantic_evidence"] not in SEMANTIC_EVIDENCE_LEVELS:
            reject(
                f"{predicate_id}: unsupported semantic evidence level"
            )
        nonempty_string(
            row["branch_condition"], f"{predicate_id}.branch_condition"
        )
        if row["evidence_removal_required"] is not True:
            reject(
                f"{predicate_id}: every requirement must require an exact "
                "evidence-removal census"
            )
        requirements[predicate_id] = {
            **row,
            "statement": statements[predicate_id],
            "profiles": expanded_profile_sets[profile_set_name],
        }
    if [row["id"] for row in rows] != sorted(requirements):
        reject("FV requirements must be sorted by predicate ID")
    if set(requirements) != set(PREDICATE_BASELINE):
        reject(
            "independent FV requirement census mismatch: "
            f"omitted={sorted(set(PREDICATE_BASELINE)-set(requirements))}, "
            f"unknown={sorted(set(requirements)-set(PREDICATE_BASELINE))}"
        )
    for predicate_id, (placement, profiles) in PREDICATE_BASELINE.items():
        requirement = requirements[predicate_id]
        if requirement["placement"] != placement:
            reject(
                f"{predicate_id}: requirement placement "
                f"{requirement['placement']!r} != reviewed {placement!r}"
            )
        if requirement["profiles"] != profiles:
            reject(
                f"{predicate_id}: independent requirement profile roster "
                "differs from the reviewed baseline"
            )
    return requirements


def validate_consequence_roster(
    path: Path = CONSEQUENCE_ROSTER,
) -> dict[tuple[str, str], tuple[str, str]]:
    """Load the independent circuit-atom to deployed-theorem roster."""

    raw = load_strict_json(
        path,
        "FV predicate consequence roster",
        canonical=True,
    )
    raw = exact_fields(
        raw,
        {"schema", "profiles"},
        "FV predicate consequence roster",
    )
    if raw["schema"] != CONSEQUENCE_ROSTER_SCHEMA_ID:
        reject(
            "unsupported FV predicate consequence roster schema "
            f"{raw['schema']!r}"
        )
    try:
        actual_sha256 = hashlib.sha256(path.read_bytes()).hexdigest()
    except OSError as error:
        reject(f"cannot hash FV predicate consequence roster: {error}")
    if actual_sha256 != CONSEQUENCE_ROSTER_SHA256:
        reject(
            "reviewed predicate consequence roster changed: "
            f"expected {CONSEQUENCE_ROSTER_SHA256}, got {actual_sha256}"
        )

    profiles = raw["profiles"]
    if not isinstance(profiles, list):
        reject("FV predicate consequence roster profiles must be an array")
    profile_labels: list[str] = []
    result: dict[tuple[str, str], tuple[str, str]] = {}
    for profile_index, raw_profile in enumerate(profiles):
        profile = exact_fields(
            raw_profile,
            {"profile", "path", "consequences"},
            f"FV consequence profile[{profile_index}]",
        )
        profile_label = nonempty_string(
            profile["profile"],
            f"FV consequence profile[{profile_index}].profile",
        )
        profile_labels.append(profile_label)
        if profile_label not in EXPECTED_CONSEQUENCE_ROSTER_PATHS:
            reject(
                "FV predicate consequence roster has unknown profile "
                f"{profile_label!r}"
            )
        expected_path = EXPECTED_CONSEQUENCE_ROSTER_PATHS[profile_label]
        if profile["path"] != expected_path:
            reject(
                f"{profile_label}: predicate consequence path drifted: "
                f"{profile['path']!r} != {expected_path!r}"
            )
        consequences = profile["consequences"]
        if not isinstance(consequences, list):
            reject(
                f"{profile_label}: consequence roster must be an array"
            )
        if len(consequences) != EXPECTED_CONSEQUENCE_ROSTER_COUNTS[
            profile_label
        ]:
            reject(
                f"{profile_label}: consequence roster count drifted: "
                f"{len(consequences)} != "
                f"{EXPECTED_CONSEQUENCE_ROSTER_COUNTS[profile_label]}"
            )
        predicate_ids: list[str] = []
        for consequence_index, consequence in enumerate(consequences):
            label = (
                f"{profile_label}.consequences[{consequence_index}]"
            )
            if not isinstance(consequence, list) or len(consequence) != 2:
                reject(f"{label} must be [predicate, theorem symbol]")
            predicate_id = nonempty_string(
                consequence[0], f"{label}.predicate"
            )
            symbol = nonempty_string(consequence[1], f"{label}.symbol")
            if re.fullmatch(r"[A-Z0-9-]+", predicate_id) is None:
                reject(f"{label}: invalid predicate ID {predicate_id!r}")
            expected_symbol = (
                "theorem specification_"
                + predicate_id.lower().replace("-", "_")
            )
            if symbol != expected_symbol:
                reject(
                    f"{profile_label}/{predicate_id}: generated consequence "
                    f"symbol {symbol!r} != {expected_symbol!r}"
                )
            key = (profile_label, predicate_id)
            if key in result:
                reject(
                    "duplicate generated predicate consequence "
                    f"{profile_label}/{predicate_id}"
                )
            result[key] = (expected_path, symbol)
            predicate_ids.append(predicate_id)
        if predicate_ids != sorted(predicate_ids):
            reject(
                f"{profile_label}: consequence predicates must be sorted"
            )
    if profile_labels != sorted(ALL_PROFILES):
        reject(
            "FV predicate consequence profile roster drifted: "
            f"{profile_labels} != {sorted(ALL_PROFILES)}"
        )
    if len(result) != sum(EXPECTED_CONSEQUENCE_ROSTER_COUNTS.values()):
        reject(
            "FV predicate consequence roster total drifted: "
            f"{len(result)} != "
            f"{sum(EXPECTED_CONSEQUENCE_ROSTER_COUNTS.values())}"
        )
    return result


GENERATED_CONSEQUENCE_PAIRS = validate_consequence_roster()


def canonical_repo_path(root: Path, value: Any, label: str) -> Path:
    text = nonempty_string(value, label)
    pure = PurePosixPath(text)
    if (
        pure.is_absolute()
        or "\\" in text
        or str(pure) != text
        or any(part in {"", ".", ".."} for part in pure.parts)
    ):
        reject(f"{label} must be a normalized repository-relative path")
    unresolved_root = Path(root)
    if unresolved_root.is_symlink():
        reject(f"{label} has a symlinked repository root")
    path = unresolved_root
    for part in pure.parts:
        path /= part
        if path.is_symlink():
            reject(f"{label} has a symlinked path component: {path}")
    path = path.resolve()
    try:
        path.relative_to(root.resolve())
    except ValueError:
        reject(f"{label} escapes the repository")
    return path


def _without_source_comments(
    source: str,
    *,
    mask_literals: bool = True,
) -> str:
    """Mask Rust comments and optionally literals without changing offsets."""

    output = list(source)

    def mask(start: int, end: int) -> None:
        for position in range(start, end):
            if output[position] != "\n":
                output[position] = " "

    def raw_string_end(start: int) -> int | None:
        prefix_end = start
        for prefix in ("br", "cr", "r"):
            if source.startswith(prefix, start):
                prefix_end = start + len(prefix)
                break
        else:
            return None
        if start > 0 and (
            source[start - 1].isalnum() or source[start - 1] == "_"
        ):
            return None
        hashes = prefix_end
        while hashes < len(source) and source[hashes] == "#":
            hashes += 1
        if hashes >= len(source) or source[hashes] != '"':
            return None
        terminator = '"' + "#" * (hashes - prefix_end)
        end = source.find(terminator, hashes + 1)
        if end < 0:
            reject("unterminated Rust raw string literal")
        return end + len(terminator)

    def quoted_string_end(quote: int) -> int:
        position = quote + 1
        escaped = False
        while position < len(source):
            current = source[position]
            if escaped:
                escaped = False
            elif current == "\\":
                escaped = True
            elif current == '"':
                return position + 1
            position += 1
        reject("unterminated Rust string literal")

    character_literal = re.compile(
        r"'(?:\\(?:x[0-9A-Fa-f]{2}|u\{[0-9A-Fa-f_]{1,6}\}|.)|"
        r"[^\\'\r\n])'"
    )
    index = 0
    while index < len(source):
        following = source[index + 1] if index + 1 < len(source) else ""
        if source[index] == "/" and following == "/":
            end = source.find("\n", index + 2)
            end = len(source) if end < 0 else end
            mask(index, end)
            index = end
            continue
        if source[index] == "/" and following == "*":
            depth = 1
            end = index + 2
            while end < len(source) and depth:
                if source.startswith("/*", end):
                    depth += 1
                    end += 2
                elif source.startswith("*/", end):
                    depth -= 1
                    end += 2
                else:
                    end += 1
            if depth:
                reject("unterminated Rust block comment")
            mask(index, end)
            index = end
            continue
        raw_end = raw_string_end(index)
        if raw_end is not None:
            if mask_literals:
                mask(index, raw_end)
            index = raw_end
            continue
        quote = index
        if source.startswith(("b\"", "c\""), index):
            quote += 1
        if quote < len(source) and source[quote] == '"':
            end = quoted_string_end(quote)
            if mask_literals:
                mask(index, end)
            index = end
            continue
        character_start = index + 1 if source.startswith("b'", index) else index
        match = character_literal.match(source, character_start)
        if match is not None:
            end = match.end()
            if mask_literals:
                mask(index, end)
            index = end
            continue
        index += 1
    return "".join(output)


def _lean_standard_string_end(source: str, start: int) -> int:
    index = start + 1
    escaped = False
    while index < len(source):
        current = source[index]
        if escaped:
            escaped = False
        elif current == "\\":
            escaped = True
        elif current == '"':
            return index + 1
        index += 1
    reject("unterminated Lean string literal")


def _lean_raw_string_end(source: str, start: int) -> int | None:
    if source[start] != "r":
        return None
    quote = start + 1
    while quote < len(source) and source[quote] == "#":
        quote += 1
    if quote >= len(source) or source[quote] != '"':
        return None
    terminator = '"' + "#" * (quote - start - 1)
    end = source.find(terminator, quote + 1)
    if end < 0:
        reject("unterminated Lean raw string literal")
    return end + len(terminator)


def _lean_block_comment_end(source: str, start: int) -> int:
    depth = 1
    index = start + 2
    while index < len(source):
        if source.startswith("/-", index):
            depth += 1
            index += 2
        elif source.startswith("-/", index):
            depth -= 1
            index += 2
            if depth == 0:
                return index
        else:
            index += 1
    reject("unterminated Lean block comment")


def _lean_interpolation_end(source: str, start: int) -> int:
    depth = 1
    index = start
    while index < len(source):
        if source.startswith("/-", index):
            index = _lean_block_comment_end(source, index)
            continue
        if source.startswith("--", index):
            newline = source.find("\n", index + 2)
            if newline < 0:
                reject("unterminated Lean interpolated string")
            index = newline + 1
            continue
        if source.startswith('s!"', index):
            index = _lean_interpolated_string_end(source, index)
            continue
        raw_end = _lean_raw_string_end(source, index)
        if raw_end is not None:
            index = raw_end
            continue
        if source[index] == '"':
            index = _lean_standard_string_end(source, index)
            continue
        if source.startswith("'{'", index) or source.startswith("'}'", index):
            index += 3
            continue
        if source[index] == "{":
            depth += 1
        elif source[index] == "}":
            depth -= 1
            if depth == 0:
                return index + 1
        index += 1
    reject("unterminated Lean interpolated string")


def _lean_interpolated_string_end(source: str, start: int) -> int:
    index = start + 3
    while index < len(source):
        if source[index] == "\\":
            index += 2
            continue
        if source[index] == '"':
            return index + 1
        if source.startswith("{{", index) or source.startswith("}}", index):
            index += 2
            continue
        if source[index] == "{":
            index = _lean_interpolation_end(source, index + 1)
            continue
        index += 1
    reject("unterminated Lean interpolated string")


def _without_lean_comments(
    source: str,
    *,
    blank_strings: bool = False,
) -> str:
    """Blank Lean comments while preserving offsets and line boundaries."""

    output: list[str] = []
    index = 0
    block_depth = 0
    while index < len(source):
        current = source[index]
        following = source[index + 1] if index + 1 < len(source) else ""
        if block_depth:
            if current == "/" and following == "-":
                block_depth += 1
                output.extend((" ", " "))
                index += 2
                continue
            if current == "-" and following == "/":
                block_depth -= 1
                output.extend((" ", " "))
                index += 2
                continue
            output.append("\n" if current == "\n" else " ")
            index += 1
            continue
        string_end = None
        if source.startswith('s!"', index):
            string_end = _lean_interpolated_string_end(source, index)
        else:
            string_end = _lean_raw_string_end(source, index)
            if string_end is None and current == '"':
                string_end = _lean_standard_string_end(source, index)
        if string_end is not None:
            string = source[index:string_end]
            if blank_strings:
                output.extend(
                    "\n" if character == "\n" else " "
                    for character in string
                )
            else:
                output.append(string)
            index = string_end
            continue
        if current == "-" and following == "-":
            output.extend((" ", " "))
            index += 2
            while index < len(source) and source[index] != "\n":
                output.append(" ")
                index += 1
            continue
        if current == "/" and following == "-":
            block_depth = 1
            output.extend((" ", " "))
            index += 2
            continue
        output.append(current)
        index += 1
    if block_depth:
        reject("unterminated Lean block comment")
    return "".join(output)


_RUST_TEST_ATTRIBUTE_RE = re.compile(
    r"#\s*\[\s*(?:(?:[A-Za-z_][A-Za-z0-9_]*)\s*::\s*)*test"
    r"(?:\s*\([^]]*\))?\s*\]"
)
_RUST_IGNORE_ATTRIBUTE_RE = re.compile(
    r"#\s*\[\s*(?:(?:[A-Za-z_][A-Za-z0-9_]*)\s*::\s*)*ignore"
    r"(?:\s*(?:\([^]]*\)|=\s*[^]]+))?\s*\]"
)
_RUST_FEATURE_CFG_ATTRIBUTE_RE = re.compile(
    r"#\s*!?\s*\[\s*cfg\s*\([^]]*\bfeature\s*="
)


def require_runnable_test_declaration(
    path: Path,
    symbol: str,
    label: str,
    *,
    repository_root: Path = ROOT,
    strict_cfg: bool = False,
) -> None:
    try:
        source = path.read_text(encoding="utf-8")
    except (OSError, UnicodeError) as error:
        reject(f"cannot read {label} source {path}: {error}")
    scrubbed = _without_source_comments(source)
    if path.suffix == ".go":
        declarations = re.findall(
            rf"(?m)^[ \t]*func[ \t]+{re.escape(symbol)}[ \t]*"
            r"\([ \t\r\n]*[A-Za-z_][A-Za-z0-9_]*[ \t]+\*testing\.T"
            r"[ \t\r\n]*,?[ \t\r\n]*\)",
            scrubbed,
        )
        if len(declarations) != 1:
            reject(
                f"{label}: {symbol!r} must be one concrete Go test "
                f"declaration, found {len(declarations)}"
            )
        return
    if path.suffix != ".rs":
        reject(f"{label}: unsupported test source extension {path.suffix!r}")
    declarations = [
        function
        for function in _rust_function_declarations(source)
        if function["name"] == symbol
    ]
    if len(declarations) != 1:
        reject(
            f"{label}: {symbol!r} must be one concrete Rust test "
            f"declaration, found {len(declarations)}"
        )
    declaration = declarations[0]
    attributes = declaration["attributes_scrubbed"]
    if not _rust_has_named_attribute(attributes, "test"):
        reject(f"{label}: {symbol!r} is not marked as a Rust test")
    if _rust_has_named_attribute(attributes, "ignore"):
        reject(f"{label}: {symbol!r} is ignored and cannot be evidence")
    enabled_features = _rust_test_enabled_features(
        path,
        label,
        symbol,
        repository_root,
    )
    cfg_expressions = (
        declaration["cfg_expressions"]
        if strict_cfg
        else declaration["feature_cfg_expressions"]
    )
    if _rust_cfg_expressions_disable_test(
        cfg_expressions,
        enabled_features,
    ):
        if strict_cfg:
            reject(
                f"{label}: {symbol!r} is cfg-disabled under its exact "
                "test execution"
            )
        reject(
            f"{label}: {symbol!r} is feature-gated and cannot be "
            "normative default-build evidence"
        )


def expected_test_execution(
    test_id: str,
    path: str,
    symbol: str,
) -> dict[str, Any]:
    extractor_module = (
        "tools/gnark/third_party/gnark-lean-extractor"
    )
    if path.startswith(f"{extractor_module}/") and path.endswith("_test.go"):
        relative = PurePosixPath(path).relative_to(extractor_module)
        package_parent = relative.parent.as_posix()
        package = "." if package_parent == "." else f"./{package_parent}"
        return {
            "runner": "go_test",
            "working_directory": extractor_module,
            "package": package,
            "cargo_target": None,
            "selector": symbol,
            "build_profile": "default",
            "features": [],
            "prover_required": False,
        }
    if path.startswith("tools/gnark/") and path.endswith("_test.go"):
        relative = PurePosixPath(path).relative_to("tools/gnark")
        package_parent = relative.parent.as_posix()
        package = "." if package_parent == "." else f"./{package_parent}"
        return {
            "runner": "go_test",
            "working_directory": "tools/gnark",
            "package": package,
            "cargo_target": None,
            "selector": symbol,
            "build_profile": "default",
            "features": [],
            "prover_required": False,
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
    reject(f"{test_id}: no code-owned exact execution command for {path}")


def validate_rust_test_execution_target(
    root: Path,
    test_id: str,
    relative_path: str,
    execution: dict[str, Any],
) -> None:
    """Bind a Rust evidence path to its independently discovered Cargo target."""

    source = canonical_repo_path(root, relative_path, f"{test_id}.path")
    manifest_dir = source.parent
    manifest = manifest_dir / "Cargo.toml"
    while not manifest.is_file():
        if manifest_dir == root.resolve():
            reject(f"{test_id}: no owning Cargo.toml for {relative_path}")
        parent = manifest_dir.parent
        if parent == manifest_dir or root.resolve() not in (
            parent,
            *parent.parents,
        ):
            reject(f"{test_id}: no owning Cargo.toml for {relative_path}")
        manifest_dir = parent
        manifest = manifest_dir / "Cargo.toml"
    try:
        cargo = tomllib.loads(manifest.read_text(encoding="utf-8"))
    except (OSError, UnicodeError, tomllib.TOMLDecodeError) as error:
        reject(f"{test_id}: cannot parse owning Cargo.toml: {error}")
    package = cargo.get("package")
    if not isinstance(package, dict):
        reject(f"{test_id}: owning Cargo.toml has no [package]")
    package_name = package.get("name")
    if not isinstance(package_name, str) or not package_name:
        reject(f"{test_id}: owning Cargo.toml has no package name")
    if execution["package"] != package_name:
        reject(
            f"{test_id}: execution package {execution['package']!r} does not "
            f"own {relative_path}; nearest Cargo package is {package_name!r}"
        )

    source_relative = source.relative_to(manifest_dir).as_posix()
    expected_target: str | None = None
    for target in cargo.get("test", []):
        if not isinstance(target, dict):
            reject(f"{test_id}: malformed [[test]] target")
        target_path = target.get("path")
        target_name = target.get("name")
        if (
            isinstance(target_path, str)
            and source_relative == PurePosixPath(target_path).as_posix()
        ):
            if not isinstance(target_name, str) or not target_name:
                reject(f"{test_id}: explicit [[test]] target has no name")
            expected_target = target_name
            break
    if expected_target is None and source_relative.startswith("tests/"):
        test_parts = PurePosixPath(source_relative).parts
        if len(test_parts) < 2:
            reject(f"{test_id}: malformed integration-test path")
        expected_target = PurePosixPath(test_parts[1]).stem

    if expected_target is None:
        explicit_bins: dict[str, str] = {}
        for target in cargo.get("bin", []):
            if not isinstance(target, dict):
                reject(f"{test_id}: malformed [[bin]] target")
            target_name = target.get("name")
            target_path = target.get("path")
            if not isinstance(target_name, str) or not target_name:
                reject(f"{test_id}: explicit [[bin]] target has no name")
            if isinstance(target_path, str):
                explicit_bins[PurePosixPath(target_path).as_posix()] = target_name
        if source_relative in explicit_bins:
            expected_target = f"bin:{explicit_bins[source_relative]}"
        elif source_relative == "src/main.rs":
            expected_target = f"bin:{explicit_bins.get('src/main.rs', package_name)}"
        elif source_relative.startswith("src/bin/"):
            bin_parts = PurePosixPath(source_relative).parts
            if len(bin_parts) < 3:
                reject(f"{test_id}: malformed src/bin test path")
            bin_name = (
                PurePosixPath(bin_parts[2]).stem
                if len(bin_parts) == 3
                else bin_parts[2]
            )
            expected_target = f"bin:{bin_name}"
        elif source_relative.startswith("src/"):
            lib_config = cargo.get("lib")
            lib_path = (
                lib_config.get("path", "src/lib.rs")
                if isinstance(lib_config, dict)
                else "src/lib.rs"
            )
            if not isinstance(lib_path, str):
                reject(f"{test_id}: malformed [lib] target path")
            if (manifest_dir / lib_path).is_file():
                expected_target = "lib"
            elif (manifest_dir / "src/main.rs").is_file():
                expected_target = (
                    f"bin:{explicit_bins.get('src/main.rs', package_name)}"
                )

    if expected_target is None:
        reject(
            f"{test_id}: cannot derive Cargo target for {relative_path} "
            f"from {manifest.relative_to(root.resolve())}"
        )
    if execution["cargo_target"] != expected_target:
        reject(
            f"{test_id}: execution target {execution['cargo_target']!r} does "
            f"not own {relative_path}; independently derived "
            f"{expected_target!r}"
        )


def require_source_evidence(
    root: Path,
    value: Any,
    label: str,
) -> tuple[Path, tuple[str, ...]]:
    evidence = exact_fields(value, {"path", "symbols"}, label)
    path = canonical_repo_path(root, evidence["path"], f"{label}.path")
    if not path.is_file():
        reject(f"{label} source is missing: {path}")
    symbols = tuple(string_list(evidence["symbols"], f"{label}.symbols"))
    try:
        source = path.read_text(encoding="utf-8")
    except (OSError, UnicodeError) as error:
        reject(f"cannot read {label} source {path}: {error}")
    for symbol in symbols:
        if symbol not in source:
            reject(f"{label} symbol {symbol!r} is missing from {path}")
    return path, symbols


def load_profile_catalog(path: Path = PROFILE_CATALOG) -> tuple[dict[str, Any], ...]:
    data = load_strict_json(path, "FV profile catalog")
    data = exact_fields(data, {"schema", "profiles"}, "FV profile catalog")
    if data["schema"] != "shieldd.gnark.fv_profiles.v2":
        reject(f"unsupported FV profile schema {data['schema']!r}")
    profiles = data["profiles"]
    if not isinstance(profiles, list) or not profiles:
        reject("FV profile catalog must contain profiles")
    result: list[dict[str, Any]] = []
    seen: set[str] = set()
    for index, raw in enumerate(profiles):
        if not isinstance(raw, dict):
            reject(f"FV profile catalog profile[{index}] must be an object")
        label = nonempty_string(raw.get("label"), f"profile[{index}].label")
        if label in seen:
            reject(f"FV profile catalog has duplicate label {label}")
        status = raw.get("status")
        if status not in {"candidate", "certified"}:
            reject(f"{label}: unsupported FV catalog status {status!r}")
        seen.add(label)
        result.append(raw)
    return tuple(result)


def validate_schema_source(path: Path = MATRIX_SCHEMA) -> None:
    schema = load_strict_json(path, "predicate-matrix schema", canonical=True)
    if not isinstance(schema, dict):
        reject("predicate-matrix schema must be an object")
    if (
        schema.get("$schema") != "https://json-schema.org/draft/2020-12/schema"
        or schema.get("$id") != MATRIX_SCHEMA_URL
        or schema.get("additionalProperties") is not False
    ):
        reject("predicate-matrix schema identity or closed-world policy drifted")
    vocabulary = (
        schema.get("properties", {})
        .get("certification_status_vocabulary", {})
        .get("items", {})
        .get("enum")
    )
    if vocabulary != list(STATUS_VOCABULARY):
        reject("predicate-matrix schema certification vocabulary drifted")
    if "reviewed_test_census" not in schema.get("required", []):
        reject("predicate-matrix schema does not require reviewed_test_census")
    reviewed_property = schema.get("properties", {}).get(
        "reviewed_test_census"
    )
    if reviewed_property != {"$ref": "#/$defs/reviewedTestCensus"}:
        reject("predicate-matrix reviewed-test schema reference drifted")
    reviewed_definition = schema.get("$defs", {}).get(
        "reviewedTestCensus", {}
    )
    if (
        reviewed_definition.get("additionalProperties") is not False
        or set(reviewed_definition.get("required", []))
        != {"source_census", "selected", "exclusions"}
    ):
        reject("predicate-matrix reviewed-test census schema is not closed")
    exclusion_reason_vocabulary = (
        schema.get("$defs", {})
        .get("reviewedTestExclusion", {})
        .get("properties", {})
        .get("reason", {})
        .get("enum")
    )
    if exclusion_reason_vocabulary != sorted(
        REVIEWED_TEST_EXCLUSION_REASONS
    ):
        reject("reviewed-test exclusion reason vocabulary drifted")


def lean_import_modules(source: str) -> tuple[str, ...]:
    """Parse the shared fail-closed one-line Lean import grammar."""

    try:
        return parse_lean_imports(
            source, label="semantic Lean source"
        )
    except ValueError as error:
        reject(str(error))


def semantic_relation_blob_paths(
    root: Path,
) -> tuple[tuple[str, Path], ...]:
    registry_path = canonical_repo_path(
        root,
        SEMANTIC_RELATION_REGISTRY_RELATIVE,
        "proof-template relation registry",
    )
    registry = load_strict_json(
        registry_path,
        "proof-template relation registry",
        canonical=True,
    )
    if not isinstance(registry, dict) or set(registry) != {
        "schema",
        "field_modulus",
        "templates",
    }:
        reject("proof-template relation registry schema is not closed")
    templates = registry["templates"]
    if not isinstance(templates, list) or not templates:
        reject("proof-template relation registry has no templates")
    expected_relations: set[str] = set()
    for index, template in enumerate(templates):
        if not isinstance(template, dict):
            reject(
                f"proof-template relation registry template {index} "
                "is not an object"
            )
        relative = template.get("canonical_relation_file")
        digest = template.get("canonical_relation_sha256_hex")
        match = (
            re.fullmatch(
                r"proof-template-relations/([0-9a-f]{64})\.sr1cs\.gz",
                relative,
            )
            if isinstance(relative, str)
            else None
        )
        if (
            match is None
            or not isinstance(digest, str)
            or digest != match.group(1)
        ):
            reject(
                f"proof-template relation registry template {index} "
                "has a noncanonical relation identity"
            )
        expected_relations.add(
            relative.removeprefix("proof-template-relations/")
        )

    relation_root = canonical_repo_path(
        root,
        SEMANTIC_RELATION_ROOT,
        "proof-template relation root",
    )
    if not relation_root.is_dir() or relation_root.is_symlink():
        reject("proof-template relation root is missing or symlinked")
    try:
        children = tuple(relation_root.iterdir())
    except OSError as error:
        reject(f"cannot enumerate proof-template relation root: {error}")
    actual_relations = {path.name for path in children}
    if actual_relations != expected_relations:
        reject(
            "proof-template relation blob roster drifted: "
            f"missing={sorted(expected_relations-actual_relations)}, "
            f"extra={sorted(actual_relations-expected_relations)}"
        )
    result: list[tuple[str, Path]] = []
    for path in sorted(children):
        relative = f"{SEMANTIC_RELATION_ROOT}/{path.name}"
        authenticated = canonical_repo_path(
            root,
            relative,
            f"proof-template relation blob {path.name}",
        )
        if not authenticated.is_file() or authenticated.is_symlink():
            reject(
                "proof-template relation blob is missing or symlinked: "
                f"{relative}"
            )
        result.append((relative, authenticated))
    return tuple(result)


def semantic_bundle_paths(root: Path = ROOT) -> tuple[tuple[str, Path], ...]:
    paths: dict[str, Path] = {}
    physical_targets: dict[tuple[int, int], str] = {}

    def add_path(relative: str, path: Path) -> None:
        path = canonical_repo_path(
            root, relative, f"semantic source {relative}"
        )
        if not path.is_file():
            reject(f"semantic source is missing or symlinked: {relative}")
        try:
            metadata = path.stat()
        except OSError as error:
            reject(f"cannot stat semantic source {relative}: {error}")
        if metadata.st_nlink != 1:
            reject(
                f"semantic source has {metadata.st_nlink} hard-link aliases: "
                f"{relative}"
            )
        prior = paths.get(relative)
        if prior is not None and prior != path:
            reject(f"semantic source path collision: {relative}")
        physical = (metadata.st_dev, metadata.st_ino)
        prior_relative = physical_targets.get(physical)
        if prior_relative is not None and prior_relative != relative:
            reject(
                "semantic source aliases one physical source: "
                f"{prior_relative} and {relative}"
            )
        paths[relative] = path
        physical_targets[physical] = relative

    def discover(
        source_root: Path,
        relative_root: str,
        *,
        suffixes: tuple[str, ...],
        excluded_directories: frozenset[str] = frozenset(),
    ) -> tuple[Path, ...]:
        candidates: list[Path] = []
        try:
            for directory, child_dirs, filenames in os.walk(
                source_root, followlinks=False
            ):
                directory_path = Path(directory)
                kept_directories: list[str] = []
                for name in sorted(child_dirs):
                    if name in excluded_directories:
                        continue
                    child = directory_path / name
                    if child.is_symlink():
                        relative = child.relative_to(source_root).as_posix()
                        reject(
                            "semantic source root contains a symlinked "
                            f"directory: {relative_root}/{relative}"
                        )
                    kept_directories.append(name)
                child_dirs[:] = kept_directories
                for name in sorted(filenames):
                    child = directory_path / name
                    if child.is_symlink():
                        relative = child.relative_to(source_root).as_posix()
                        reject(
                            "semantic source root contains a symlinked file: "
                            f"{relative_root}/{relative}"
                        )
                    if child.suffix in suffixes:
                        candidates.append(child)
        except OSError as error:
            reject(f"cannot enumerate semantic source root {relative_root}: {error}")
        return tuple(candidates)

    for relative in SEMANTIC_BASE_FILES:
        path = canonical_repo_path(root, relative, f"semantic source {relative}")
        add_path(relative, path)

    for relative, path in semantic_relation_blob_paths(root):
        add_path(relative, path)

    for relative_root in SEMANTIC_DISCOVERY_ROOTS:
        source_root = canonical_repo_path(
            root, relative_root, f"semantic source root {relative_root}"
        )
        if not source_root.is_dir() or source_root.is_symlink():
            reject(f"semantic source root is missing or symlinked: {relative_root}")
        candidates = discover(
            source_root, relative_root, suffixes=(".lean",)
        )
        expected_names = SEMANTIC_EXACT_DISCOVERY_FILES.get(relative_root)
        if expected_names is not None:
            actual_names = tuple(
                sorted(
                    path.relative_to(source_root).as_posix()
                    for path in candidates
                    if path.is_file()
                )
            )
            if actual_names != expected_names:
                reject(
                    f"semantic source roster drifted under {relative_root}: "
                    f"missing={sorted(set(expected_names)-set(actual_names))}, "
                    f"extra={sorted(set(actual_names)-set(expected_names))}"
                )
        for path in candidates:
            relative = path.relative_to(root.resolve()).as_posix()
            add_path(relative, path)
    for relative_root, (
        suffixes,
        expected_names,
    ) in SEMANTIC_EXACT_INPUT_ROSTERS.items():
        source_root = canonical_repo_path(
            root,
            relative_root,
            f"semantic exact-input root {relative_root}",
        )
        if not source_root.is_dir() or source_root.is_symlink():
            reject(
                f"semantic exact-input root is missing or symlinked: "
                f"{relative_root}"
            )
        candidates = discover(
            source_root,
            relative_root,
            suffixes=suffixes,
            excluded_directories=SEMANTIC_EXCLUDED_DIRECTORY_NAMES,
        )
        actual_names = tuple(
            sorted(
                path.relative_to(source_root).as_posix()
                for path in candidates
                if path.is_file()
            )
        )
        if actual_names != expected_names:
            reject(
                f"semantic exact-input roster drifted under {relative_root}: "
                f"missing={sorted(set(expected_names)-set(actual_names))}, "
                f"extra={sorted(set(actual_names)-set(expected_names))}"
            )
        for path in candidates:
            relative = path.relative_to(root.resolve()).as_posix()
            add_path(relative, path)
    for relative_root, suffixes in SEMANTIC_IMPLEMENTATION_ROOTS:
        source_root = canonical_repo_path(
            root,
            relative_root,
            f"semantic implementation root {relative_root}",
        )
        if not source_root.is_dir() or source_root.is_symlink():
            reject(
                f"semantic implementation root is missing or symlinked: "
                f"{relative_root}"
            )
        candidates = discover(
            source_root,
            relative_root,
            suffixes=suffixes,
            excluded_directories=SEMANTIC_EXCLUDED_DIRECTORY_NAMES,
        )
        for path in candidates:
            relative = path.relative_to(root.resolve()).as_posix()
            if relative in SEMANTIC_EXCLUDED_IMPLEMENTATION_PATHS:
                continue
            add_path(relative, path)

    lean_root = canonical_repo_path(
        root,
        "tools/gnark/lean",
        "Lean semantic import root",
    )
    deployed_seeds = {
        *EXPECTED_CONSEQUENCE_ROSTER_PATHS.values(),
        *(path for path, _ in DEPLOYED_ACCEPTANCE_CONSEQUENCES.values()),
        *(
            path
            for path, _ in GENERATED_TRANSACTION_REFINEMENT_ROOTS.values()
        ),
    }
    pending = sorted(deployed_seeds)
    visited: set[str] = set()
    while pending:
        relative = pending.pop()
        if relative in visited:
            continue
        visited.add(relative)
        path = canonical_repo_path(
            root, relative, f"deployed semantic source {relative}"
        )
        add_path(relative, path)
        try:
            source = path.read_text(encoding="utf-8")
        except (OSError, UnicodeError) as error:
            reject(f"cannot read deployed semantic source {relative}: {error}")
        for module_name in lean_import_modules(source):
            imported = lean_root / (
                module_name.replace(".", "/") + ".lean"
            )
            if not imported.is_file():
                if module_name.startswith("ShielddGnarkFormal."):
                    reject(
                        f"{relative}: unresolved local Lean import "
                        f"{module_name}"
                    )
                continue
            imported_relative = imported.relative_to(root.resolve()).as_posix()
            if imported_relative not in visited:
                pending.append(imported_relative)
    return tuple(sorted(paths.items()))


def semantic_bundle_digest(root: Path = ROOT) -> str:
    """Match the repository's historical nested `shasum -a 256` framing."""

    framed = bytearray()
    for relative, path in semantic_bundle_paths(root):
        digest = semantic_source_sha256(path)
        framed.extend(f"{digest}  {relative}\n".encode())
    return hashlib.sha256(framed).hexdigest()


def semantic_source_sha256(path: Path) -> str:
    """Hash materialized content and Git LFS pointers identically."""

    try:
        source = path.read_bytes()
    except OSError as error:
        reject(f"cannot hash semantic source {path}: {error}")
    lfs_prefix = b"version https://git-lfs.github.com/spec/v1\n"
    if source.startswith(lfs_prefix):
        pointer = re.fullmatch(
            lfs_prefix
            + rb"oid sha256:([0-9a-f]{64})\n"
            + rb"size (?:0|[1-9][0-9]*)\n",
            source,
        )
        if pointer is None:
            reject(f"malformed Git LFS pointer in semantic source {path}")
        return pointer.group(1).decode("ascii")
    return hashlib.sha256(source).hexdigest()


def validate_extractor_golden_contract(root: Path = ROOT) -> None:
    relative = (
        "tools/gnark/third_party/gnark-lean-extractor/"
        "extractor/test/utils_test.go"
    )
    path = canonical_repo_path(
        root,
        relative,
        "extractor golden comparison helper",
    )
    source = _without_source_comments(path.read_text(encoding="utf-8"))
    for forbidden in ("os.Create(", "saveOutput("):
        if forbidden in source:
            reject(
                "extractor golden comparison can create a missing oracle: "
                f"{forbidden}"
            )
    normalized = " ".join(source.split())
    for required in (
        "if _, err := os.Stat(filename); err != nil { t.Fatalf(",
        "bytes.Equal(correctHash, testResultHash)",
    ):
        if required not in normalized:
            reject(
                "extractor golden comparison lost its fail-closed contract: "
                f"{required}"
            )


def validate_semantic_digest(
    root: Path = ROOT,
    pin_path: Path | None = None,
) -> str:
    pin_path = pin_path or root / (
        "tools/gnark/lean/certified-protocol-semantics.sha256"
    )
    try:
        expected = pin_path.read_text(encoding="ascii").strip()
    except (OSError, UnicodeError) as error:
        reject(f"cannot read semantic specification digest pin {pin_path}: {error}")
    if re.fullmatch(r"[0-9a-f]{64}", expected) is None:
        reject("semantic specification digest pin is not one lowercase SHA-256")
    actual = semantic_bundle_digest(root)
    if actual != expected:
        reject(
            "semantic specification bundle changed "
            f"(pin={expected}, actual={actual})"
        )
    return actual


def validate_native_census(
    root: Path,
    path: Path,
    predicate_ids: set[str],
) -> dict[str, dict[str, Any]]:
    """Validate the closed native-domain/R1CS predicate parity census.

    The independent predicate and type baselines prevent the evidence file
    from defining its own universe. Each row must resolve both enforcement
    functions and an exact runnable negative test for each side.
    """

    census = load_strict_json(path, "native type-parity census", canonical=True)
    census = exact_fields(
        census,
        {"schema_version", "assumption_ids", "predicates"},
        "native type-parity census",
    )
    if census["schema_version"] != NATIVE_CENSUS_SCHEMA_VERSION:
        reject(f"unsupported native type-parity census {census['schema_version']!r}")
    assumption_ids = string_list(
        census["assumption_ids"],
        "native type-parity census.assumption_ids",
        nonempty=False,
    )
    if (
        len(assumption_ids) != len(set(assumption_ids))
        or set(assumption_ids) != REQUIRED_NATIVE_CENSUS_ASSUMPTION_IDS
    ):
        reject(
            "native type-parity assumption census mismatch: "
            f"expected={sorted(REQUIRED_NATIVE_CENSUS_ASSUMPTION_IDS)}, "
            f"actual={sorted(set(assumption_ids))}"
        )
    if assumption_ids != sorted(assumption_ids):
        reject("native type-parity assumption IDs must be sorted")
    assumption_statuses = assumption_ledger_statuses(root)
    unknown_assumptions = (
        REQUIRED_NATIVE_CENSUS_ASSUMPTION_IDS - set(assumption_statuses)
    )
    if unknown_assumptions:
        reject(
            "native type-parity census names unknown assumption-ledger IDs "
            f"{sorted(unknown_assumptions)}"
        )
    non_assumed = sorted(
        assumption_id
        for assumption_id in REQUIRED_NATIVE_CENSUS_ASSUMPTION_IDS
        if assumption_statuses[assumption_id] != "assumed"
    )
    if non_assumed:
        reject(
            "native type-parity residual assumptions are not assumed: "
            f"{non_assumed}"
        )
    rows = census["predicates"]
    if not isinstance(rows, list) or not rows:
        reject("native type-parity census must contain predicates")
    row_fields = {
        "predicate_id",
        "domain_enforcement",
        "r1cs_enforcement",
    }
    evidence_fields = {
        "source_file",
        "source_symbol",
        "native_type",
        "test_file",
        "test_symbol",
        "test_execution",
    }
    result: dict[str, dict[str, Any]] = {}
    for index, raw in enumerate(rows):
        row = exact_fields(raw, row_fields, f"native predicate[{index}]")
        predicate_id = nonempty_string(
            row["predicate_id"], f"native predicate[{index}].predicate_id"
        )
        if predicate_id in result:
            reject(f"native type-parity census duplicates {predicate_id}")
        if predicate_id not in predicate_ids:
            reject(
                f"native type-parity predicate {predicate_id} is absent from "
                "the complete baseline"
            )
        if predicate_id not in PREDICATE_BASELINE:
            reject(
                f"native type-parity predicate {predicate_id} is absent from "
                "the independent checker baseline"
            )
        if PREDICATE_BASELINE[predicate_id][0] != "circuit":
            reject(f"{predicate_id}: native prover-private predicate is external")
        expected_types = REQUIRED_NATIVE_PARITY_TYPES.get(predicate_id)
        if expected_types is None:
            reject(f"{predicate_id}: native parity type baseline is missing")
        raw_domain = row["domain_enforcement"]
        raw_r1cs = row["r1cs_enforcement"]
        if isinstance(raw_domain, dict) and isinstance(raw_r1cs, dict):
            domain_source_pair = (
                raw_domain.get("source_file"),
                raw_domain.get("source_symbol"),
            )
            r1cs_source_pair = (
                raw_r1cs.get("source_file"),
                raw_r1cs.get("source_symbol"),
            )
            if (
                all(
                    isinstance(value, str)
                    for value in (*domain_source_pair, *r1cs_source_pair)
                )
                and domain_source_pair == r1cs_source_pair
            ):
                reject(
                    f"{predicate_id}: domain and R1CS enforcement reuse one "
                    "source function"
                )
            domain_test_pair = (
                raw_domain.get("test_file"),
                raw_domain.get("test_symbol"),
            )
            r1cs_test_pair = (
                raw_r1cs.get("test_file"),
                raw_r1cs.get("test_symbol"),
            )
            if (
                all(
                    isinstance(value, str)
                    for value in (*domain_test_pair, *r1cs_test_pair)
                )
                and domain_test_pair == r1cs_test_pair
            ):
                reject(
                    f"{predicate_id}: domain and R1CS enforcement reuse one "
                    "negative test"
                )
        evidence_by_side: dict[str, dict[str, Any]] = {}
        for side in ("domain_enforcement", "r1cs_enforcement"):
            evidence = exact_fields(
                row[side],
                evidence_fields,
                f"{predicate_id}.{side}",
            )
            native_type = nonempty_string(
                evidence["native_type"],
                f"{predicate_id}.{side}.native_type",
            )
            if native_type != expected_types[side]:
                reject(
                    f"{predicate_id}: {side} type drifted from the independent "
                    f"baseline: {native_type!r} != {expected_types[side]!r}"
                )
            source_relative = nonempty_string(
                evidence["source_file"],
                f"{predicate_id}.{side}.source_file",
            )
            test_relative = nonempty_string(
                evidence["test_file"],
                f"{predicate_id}.{side}.test_file",
            )
            source_path = canonical_repo_path(
                root,
                source_relative,
                f"{predicate_id}.{side}.source_file",
            )
            test_path = canonical_repo_path(
                root,
                test_relative,
                f"{predicate_id}.{side}.test_file",
            )
            if not source_path.is_file():
                reject(f"{predicate_id}: {side} source file is missing")
            if not test_path.is_file():
                reject(f"{predicate_id}: {side} test file is missing")
            if source_path.suffix != ".rs" or test_path.suffix != ".rs":
                reject(f"{predicate_id}: {side} evidence must be Rust source")

            source_symbol = nonempty_string(
                evidence["source_symbol"],
                f"{predicate_id}.{side}.source_symbol",
            )
            test_symbol = nonempty_string(
                evidence["test_symbol"],
                f"{predicate_id}.{side}.test_symbol",
            )
            execution = exact_fields(
                evidence["test_execution"],
                TEST_EXECUTION_FIELDS,
                f"{predicate_id}.{side}.test_execution",
            )
            expected_execution = expected_test_execution(
                f"NATIVE-PARITY-{predicate_id}-{side}",
                test_relative,
                test_symbol,
            )
            if execution != expected_execution:
                reject(
                    f"{predicate_id}: {side} test execution drifted from "
                    "the code-owned exact Cargo selector"
                )

            try:
                source_text = source_path.read_text(encoding="utf-8")
            except (OSError, UnicodeError) as error:
                reject(
                    f"{predicate_id}: cannot read {side} source "
                    f"{source_path}: {error}"
                )
            source_functions = _rust_function_declarations(source_text)
            source_function = _one_rust_function(
                source_functions,
                source_symbol,
                f"{predicate_id}: {side} source",
            )
            enabled_features = _rust_test_enabled_features(
                test_path,
                f"NATIVE-PARITY-{predicate_id}-{side}",
                test_symbol,
                root,
            )
            if _rust_cfg_expressions_disable_test(
                source_function["cfg_expressions"],
                enabled_features,
            ):
                reject(
                    f"{predicate_id}: {side} source function "
                    f"{source_symbol!r} is cfg-disabled under its exact "
                    "test execution"
                )
            require_runnable_test_declaration(
                test_path,
                test_symbol,
                f"{predicate_id}: {side} test",
                repository_root=root,
                strict_cfg=True,
            )
            if side == "r1cs_enforcement":
                required_operations = (
                    REQUIRED_NATIVE_R1CS_CONSTRAINT_OPERATIONS.get(
                        predicate_id
                    )
                )
                if required_operations is None:
                    reject(
                        f"{predicate_id}: R1CS algebraic-operation baseline "
                        "is missing"
                    )
                missing_operations = [
                    operation
                    for operation in required_operations
                    if re.search(
                        rf"\b{re.escape(operation)}\s*\(",
                        source_function["body"],
                    )
                    is None
                ]
                if missing_operations:
                    reject(
                        f"{predicate_id}: R1CS enforcement source is missing "
                        "required algebraic constraint operations "
                        f"{missing_operations}"
                    )

                production_callers = [
                    function["name"]
                    for function in source_functions
                    if function["name"] != source_symbol
                    and not _rust_has_named_attribute(
                        function["attributes_scrubbed"], "test"
                    )
                    and not any(
                        re.search(r"\btest\b", expression)
                        for expression in function["cfg_expressions"]
                    )
                    and re.search(
                        rf"\b{re.escape(source_symbol)}\s*\(",
                        function["body"],
                    )
                    is not None
                ]
                if not production_callers:
                    reject(
                        f"{predicate_id}: R1CS enforcement source is not "
                        "called by a production function"
                    )

                try:
                    test_text = test_path.read_text(encoding="utf-8")
                except (OSError, UnicodeError) as error:
                    reject(
                        f"{predicate_id}: cannot read R1CS test source "
                        f"{test_path}: {error}"
                    )
                test_function = _one_rust_function(
                    _rust_function_declarations(test_text),
                    test_symbol,
                    f"{predicate_id}: R1CS negative test",
                )
                test_body = test_function["body"]
                mentions_enforcement_directly = re.search(
                    rf"\b{re.escape(source_symbol)}\s*\(",
                    test_body,
                ) is not None
                invokes_enforcement_directly = re.search(
                    rf"\b{re.escape(source_symbol)}\s*\([^;]*\)"
                    r"\s*\.expect\s*\(",
                    test_body,
                ) is not None
                allocates_through_enforced_type = re.search(
                    rf"\b{re.escape(native_type)}\s*::\s*new_witness\s*\([^;]*\)"
                    r"\s*\.expect\s*\(",
                    test_body,
                ) is not None
                if (
                    mentions_enforcement_directly
                    and not invokes_enforcement_directly
                ):
                    reject(
                        f"{predicate_id}: R1CS negative test must directly "
                        "invoke the named enforcement function and require "
                        "successful synthesis"
                    )
                if (
                    not mentions_enforcement_directly
                    and not allocates_through_enforced_type
                ):
                    reject(
                        f"{predicate_id}: R1CS negative test must invoke the "
                        "named enforcement function directly or allocate the "
                        "enforced native type and require successful synthesis"
                    )
                if re.search(r"\bnew_witness\s*\(", test_body) is None:
                    reject(
                        f"{predicate_id}: R1CS negative test must allocate "
                        "the adversarial witness"
                    )
                if re.search(
                    r"assert\s*!\s*\(\s*![^;]*\bis_satisfied\s*\(",
                    test_body,
                ) is None:
                    reject(
                        f"{predicate_id}: R1CS negative test must reject via "
                        "constraint-system unsatisfaction"
                    )
            evidence_by_side[side] = evidence

        domain = evidence_by_side["domain_enforcement"]
        r1cs = evidence_by_side["r1cs_enforcement"]
        if (
            domain["source_file"],
            domain["source_symbol"],
        ) == (
            r1cs["source_file"],
            r1cs["source_symbol"],
        ):
            reject(
                f"{predicate_id}: domain and R1CS enforcement reuse one "
                "source function"
            )
        if (
            domain["test_file"],
            domain["test_symbol"],
        ) == (
            r1cs["test_file"],
            r1cs["test_symbol"],
        ):
            reject(
                f"{predicate_id}: domain and R1CS enforcement reuse one "
                "negative test"
            )
        result[predicate_id] = row
    expected_predicates = set(REQUIRED_NATIVE_PARITY_TYPES)
    if set(result) != expected_predicates:
        reject(
            "native type-parity predicate census mismatch: "
            f"missing={sorted(expected_predicates-set(result))}, "
            f"extra={sorted(set(result)-expected_predicates)}"
        )
    if list(result) != sorted(result):
        reject("native type-parity predicates must be sorted by ID")
    return result


def extract_structure_body(
    root: Path,
    relative_path: str,
    structure_name: str,
) -> str:
    path = canonical_repo_path(
        root, relative_path, f"{structure_name} formal source"
    )
    if not path.is_file():
        reject(f"missing formal structure source: {path}")
    raw_source = path.read_text(encoding="utf-8")
    source = _without_lean_comments(raw_source)
    search_source = _without_lean_comments(
        raw_source,
        blank_strings=True,
    )
    marker = re.search(
        rf"^structure\s+{re.escape(structure_name)}(?:\s|\n)",
        search_source,
        flags=re.MULTILINE,
    )
    if marker is None:
        reject(f"{relative_path}: structure {structure_name} is missing")
    body_start = marker.end()
    tail = search_source[body_start:]
    next_declaration = re.search(
        r"^(?:structure|def|theorem|lemma|inductive|namespace|section|end)\b",
        tail,
        flags=re.MULTILINE,
    )
    if next_declaration is not None:
        return source[body_start : body_start + next_declaration.start()]
    return source[body_start:]


def extract_structure_field_types(
    root: Path,
    relative_path: str,
    structure_name: str,
) -> dict[str, str]:
    body = extract_structure_body(root, relative_path, structure_name)
    matches = list(
        re.finditer(
            r"^  ([A-Za-z][A-Za-z0-9_]*)\s*:",
            body,
            re.MULTILINE,
        )
    )
    fields: dict[str, str] = {}
    for index, match in enumerate(matches):
        end = matches[index + 1].start() if index + 1 < len(matches) else len(body)
        raw_type = body[match.end() : end]
        raw_type = re.split(
            r"^\s*deriving\b",
            raw_type,
            maxsplit=1,
            flags=re.MULTILINE,
        )[0]
        field_name = match.group(1)
        if field_name in fields:
            reject(
                f"{relative_path}: structure {structure_name} duplicates "
                f"field {field_name}"
            )
        fields[field_name] = normalize_lean_source(raw_type)
    if not fields:
        reject(f"{relative_path}: structure {structure_name} has no parsed fields")
    return fields


def extract_structure_fields(
    root: Path,
    relative_path: str,
    structure_name: str,
) -> set[str]:
    return set(
        extract_structure_field_types(root, relative_path, structure_name)
    )


def extract_named_declaration(
    root: Path,
    relative_path: str,
    declaration_kind: str,
    declaration_name: str,
) -> str:
    path = canonical_repo_path(
        root, relative_path, f"{declaration_kind} source"
    )
    raw_source = path.read_text(encoding="utf-8")
    source = _without_lean_comments(raw_source)
    search_source = _without_lean_comments(
        raw_source,
        blank_strings=True,
    )
    marker = re.search(
        rf"^{re.escape(declaration_kind)}\s+"
        rf"{re.escape(declaration_name)}\b",
        search_source,
        flags=re.MULTILINE,
    )
    if marker is None:
        reject(
            f"{relative_path}: {declaration_kind} "
            f"{declaration_name} is missing"
        )
    declaration_start = marker.start()
    tail = search_source[declaration_start:]
    next_declaration = re.search(
        r"^(?:structure|def|abbrev|theorem|lemma|inductive|"
        r"namespace|section|end)\b",
        tail[marker.end() - marker.start() :],
        flags=re.MULTILINE,
    )
    if next_declaration is None:
        return source[declaration_start:]
    end = marker.end() - marker.start() + next_declaration.start()
    return source[declaration_start : declaration_start + end]


def normalize_lean_source(source: str) -> str:
    source = _without_lean_comments(source)
    output: list[str] = []
    pending_space = False
    index = 0
    while index < len(source):
        string_end = None
        if source.startswith('s!"', index):
            string_end = _lean_interpolated_string_end(source, index)
        else:
            string_end = _lean_raw_string_end(source, index)
            if string_end is None and source[index] == '"':
                string_end = _lean_standard_string_end(source, index)
        if string_end is not None:
            if pending_space and output:
                output.append(" ")
            output.append(source[index:string_end])
            pending_space = False
            index = string_end
            continue
        if source[index].isspace():
            pending_space = True
        else:
            if pending_space and output:
                output.append(" ")
            output.append(source[index])
            pending_space = False
        index += 1
    return "".join(output)


def expected_reviewed_lean_theorems() -> set[tuple[str, str]]:
    """The complete theorem-type surface trusted by predicate closure."""

    pairs: set[tuple[str, str]] = set()
    for predicate_id, (_, profiles) in PREDICATE_BASELINE.items():
        for profile in profiles:
            pairs.update(
                pair
                for pair in expected_consequence_pairs(
                    predicate_id, {profile}
                )
                if pair[1].startswith("theorem ")
            )
    pairs.update(
        (path, "theorem circuitFacts_of_relationAll")
        for path in EXPECTED_CONSEQUENCE_ROSTER_PATHS.values()
    )
    pairs.update(
        (path, "theorem deployedRelation_to_circuitFacts")
        for path, _ in DEPLOYED_ACCEPTANCE_CONSEQUENCES.values()
    )
    for path, _ in GENERATED_TRANSACTION_REFINEMENT_ROOTS.values():
        pairs.add((path, "theorem consensusAccepted_of_relationAll"))
        pairs.add((path, "theorem transactionAccepted_of_relationAll"))
    return pairs


def lean_theorem_signature(
    root: Path,
    relative_path: str,
    theorem_symbol: str,
) -> str:
    prefix = "theorem "
    if not theorem_symbol.startswith(prefix):
        reject(f"reviewed Lean declaration is not a theorem: {theorem_symbol}")
    theorem_name = theorem_symbol[len(prefix) :]
    declaration = extract_named_declaration(
        root,
        relative_path,
        "theorem",
        theorem_name,
    )
    proof_marker = _without_lean_comments(
        declaration,
        blank_strings=True,
    ).find(" :=")
    if proof_marker < 0:
        reject(
            f"{relative_path}: theorem {theorem_name} has no explicit "
            "proposition/proof boundary"
        )
    signature = normalize_lean_source(declaration[:proof_marker])
    if not signature.startswith(f"theorem {theorem_name}"):
        reject(
            f"{relative_path}: cannot normalize theorem {theorem_name}"
        )
    return signature


def lean_theorem_signature_sha256(
    root: Path,
    relative_path: str,
    theorem_symbol: str,
) -> str:
    return hashlib.sha256(
        lean_theorem_signature(
            root, relative_path, theorem_symbol
        ).encode()
    ).hexdigest()


def validate_reviewed_evidence_fingerprints(
    root: Path,
    requirement_path: Path,
    tests: dict[str, dict[str, Any]],
) -> None:
    raw = load_strict_json(
        requirement_path,
        "FV requirement source",
        canonical=True,
    )
    lean_rows = raw.get("lean_declaration_fingerprints")
    if not isinstance(lean_rows, list) or not lean_rows:
        reject("reviewed Lean declaration fingerprints must be non-empty")
    lean_fields = {"path", "declaration", "signature_sha256"}
    actual_lean: dict[tuple[str, str], str] = {}
    ordered_lean: list[tuple[str, str]] = []
    for index, raw_row in enumerate(lean_rows):
        row = exact_fields(
            raw_row,
            lean_fields,
            f"Lean declaration fingerprint[{index}]",
        )
        relative_path = nonempty_string(
            row["path"], f"Lean declaration fingerprint[{index}].path"
        )
        declaration = nonempty_string(
            row["declaration"],
            f"Lean declaration fingerprint[{index}].declaration",
        )
        key = (relative_path, declaration)
        if key in actual_lean:
            reject(f"duplicate reviewed Lean declaration fingerprint {key}")
        fingerprint = nonempty_string(
            row["signature_sha256"],
            f"Lean declaration fingerprint[{index}].signature_sha256",
        )
        if re.fullmatch(r"[0-9a-f]{64}", fingerprint) is None:
            reject(f"{key}: malformed Lean signature SHA-256")
        actual_lean[key] = fingerprint
        ordered_lean.append(key)
    if ordered_lean != sorted(ordered_lean):
        reject("reviewed Lean declaration fingerprints are not sorted")
    expected_lean = expected_reviewed_lean_theorems()
    if set(actual_lean) != expected_lean:
        reject(
            "reviewed Lean theorem fingerprint census drifted: "
            f"missing={sorted(expected_lean-set(actual_lean))}, "
            f"extra={sorted(set(actual_lean)-expected_lean)}"
        )
    for (relative_path, declaration), expected_sha in actual_lean.items():
        actual_sha = lean_theorem_signature_sha256(
            root, relative_path, declaration
        )
        if actual_sha != expected_sha:
            reject(
                f"{relative_path}/{declaration}: reviewed theorem "
                f"proposition changed: expected {expected_sha}, "
                f"got {actual_sha}"
            )

    test_rows = raw.get("test_source_fingerprints")
    if not isinstance(test_rows, list) or not test_rows:
        reject("reviewed test source fingerprints must be non-empty")
    test_fields = {"id", "path", "source_sha256"}
    actual_tests: dict[str, tuple[str, str]] = {}
    ordered_test_ids: list[str] = []
    for index, raw_row in enumerate(test_rows):
        row = exact_fields(
            raw_row,
            test_fields,
            f"test source fingerprint[{index}]",
        )
        test_id = nonempty_string(
            row["id"], f"test source fingerprint[{index}].id"
        )
        if test_id in actual_tests:
            reject(f"duplicate reviewed test source fingerprint {test_id}")
        relative_path = nonempty_string(
            row["path"], f"{test_id}.fingerprint path"
        )
        fingerprint = nonempty_string(
            row["source_sha256"], f"{test_id}.source_sha256"
        )
        if re.fullmatch(r"[0-9a-f]{64}", fingerprint) is None:
            reject(f"{test_id}: malformed test source SHA-256")
        actual_tests[test_id] = (relative_path, fingerprint)
        ordered_test_ids.append(test_id)
    if ordered_test_ids != sorted(ordered_test_ids):
        reject("reviewed test source fingerprints are not sorted")
    if set(actual_tests) != set(tests):
        reject(
            "reviewed test source fingerprint census drifted: "
            f"missing={sorted(set(tests)-set(actual_tests))}, "
            f"extra={sorted(set(actual_tests)-set(tests))}"
        )
    for test_id, test in tests.items():
        expected_path, expected_sha = actual_tests[test_id]
        if expected_path != test["path"]:
            reject(
                f"{test_id}: reviewed test fingerprint path drifted: "
                f"{expected_path!r} != {test['path']!r}"
            )
        source_path = canonical_repo_path(
            root, expected_path, f"{test_id}.fingerprint source"
        )
        try:
            actual_sha = hashlib.sha256(source_path.read_bytes()).hexdigest()
        except OSError as error:
            reject(f"{test_id}: cannot hash reviewed test source: {error}")
        if actual_sha != expected_sha:
            reject(
                f"{test_id}: reviewed test source changed: "
                f"expected {expected_sha}, got {actual_sha}"
            )


def validate_proof_bearing_binding_authorization(root: Path) -> None:
    model = PROOF_BEARING_BINDING_AUTHORIZATION_MODEL
    common_path = str(model["common_path"])
    declaration = extract_named_declaration(
        root,
        common_path,
        "def",
        "proofBearingBindingSignatureAccepted",
    )
    actual_definition = normalize_lean_source(declaration)
    expected_definition = str(model["definition"])
    if actual_definition != expected_definition:
        reject(
            "Protocol.Common proof-bearing binding authorization drifted: "
            f"expected={expected_definition!r}, actual={actual_definition!r}"
        )

    forbidden_tokens = tuple(model["forbidden_target_tokens"])
    for target in model["targets"]:
        label = str(target["label"])
        relative_path = str(target["path"])
        structure_name = str(target["structure"])
        field_name = str(target["field"])
        fields = extract_structure_field_types(
            root, relative_path, structure_name
        )
        actual_type = fields.get(field_name)
        expected_type = str(target["type"])
        if actual_type != expected_type:
            reject(
                f"{label}.{structure_name}.{field_name}: proof-bearing "
                "binding authorization drifted; "
                f"expected={expected_type!r}, actual={actual_type!r}"
            )
        source = canonical_repo_path(
            root,
            relative_path,
            f"{label} proof-bearing binding source",
        ).read_text(encoding="utf-8")
        leaked = sorted(token for token in forbidden_tokens if token in source)
        if leaked:
            reject(
                f"{label}: no-proof identity binding mode leaked into the "
                f"target accepted language: {leaked}"
            )
    for block in model["runtime_blocks"]:
        _validate_action_authorization_block(root, block)


def validate_typed_transition_models(root: Path) -> None:
    validate_proof_bearing_binding_authorization(root)
    common_path = str(TYPED_COMMON_TRANSACTION_MODEL["path"])
    committed_effects = extract_structure_field_types(
        root, common_path, "CommittedEffects"
    )
    expected_effects = TYPED_COMMON_TRANSACTION_MODEL["committed_effects"]
    if committed_effects != expected_effects:
        reject(
            "Protocol.Common.CommittedEffects: transaction-wide effect "
            f"contract drifted: expected={expected_effects}, "
            f"actual={committed_effects}"
        )
    committed_target = extract_structure_field_types(
        root, common_path, "CommittedTargetTransaction"
    )
    expected_target = TYPED_COMMON_TRANSACTION_MODEL["committed_target"]
    if committed_target != expected_target:
        reject(
            "Protocol.Common.CommittedTargetTransaction: deployed target "
            f"composition drifted: expected={expected_target}, "
            f"actual={committed_target}"
        )
    for model in TYPED_TRANSITION_MODELS:
        label = str(model["label"])
        relative_path = str(model["path"])
        for structure_name, expected_key in (
            ("ConsensusState", "state"),
            (str(model["delta_structure"]), "delta"),
            ("ConsensusTransition", "transition"),
        ):
            actual = extract_structure_field_types(
                root, relative_path, structure_name
            )
            expected = model[expected_key]
            if actual != expected:
                reject(
                    f"{label}.{structure_name}: typed transition contract "
                    f"drifted: expected={expected}, actual={actual}"
                )
        for structure_name, expected in model.get(
            "auxiliary_structures", {}
        ).items():
            actual = extract_structure_field_types(
                root, relative_path, structure_name
            )
            if actual != expected:
                reject(
                    f"{label}.{structure_name}: typed protocol structure "
                    f"drifted: expected={expected}, actual={actual}"
                )

        facts_structure = str(model["facts_structure"])
        facts = extract_structure_field_types(
            root, relative_path, facts_structure
        )
        expected_transition = str(model["facts_transition"])
        if facts.get("transition") != expected_transition:
            reject(
                f"{label}.{facts_structure}.transition must consume the "
                "concrete before/action/delta/after ConsensusTransition"
            )
        opaque_state_fields = {
            "anchorLive",
            "assetAnchorCurrent",
            "complianceAnchorLive",
            "nullifiersFresh",
            "requiredNullifierFresh",
            "optionalNullifierFresh",
            "nullifiersDistinct",
            "nullifiersUniqueInEnclosingTransaction",
            "atomicNullifierTransitionAccepted",
            "proofBoundOutputsPersisted",
            "withdrawalsEnabled",
            "withdrawalTransitionAccepted",
            "atomicActionTransitionAccepted",
            "transactionEffectsCommitAtomically",
        }
        leaked = sorted(opaque_state_fields & set(facts))
        if leaked:
            reject(
                f"{label}.{facts_structure}: opaque state predicates escaped "
                f"the typed transition: {leaked}"
            )

        accepted = extract_structure_field_types(
            root, relative_path, "ConsensusAccepted"
        )
        accepted_field = str(model["accepted_field"])
        expected_accepted_type = str(model["accepted_type"])
        if accepted.get(accepted_field) != expected_accepted_type:
            reject(
                f"{label}.ConsensusAccepted.{accepted_field} must retain "
                "the concrete before/delta/after state transition"
            )
        transaction_accepted = extract_structure_field_types(
            root, relative_path, "TransactionAccepted"
        )
        expected_transaction_accepted = model["transaction_accepted"]
        if transaction_accepted != expected_transaction_accepted:
            reject(
                f"{label}.TransactionAccepted: target action acceptance "
                "must remain joined to the exact transaction-wide effects: "
                f"expected={expected_transaction_accepted}, "
                f"actual={transaction_accepted}"
            )

        for theorem_name, required_conclusions in model[
            "transaction_theorems"
        ].items():
            theorem = normalize_lean_source(
                extract_named_declaration(
                    root,
                    relative_path,
                    "theorem",
                    theorem_name,
                )
            )
            if isinstance(required_conclusions, str):
                required_conclusions = (required_conclusions,)
            for required_conclusion in required_conclusions:
                if normalize_lean_source(required_conclusion) not in theorem:
                    reject(
                        f"{label}.{theorem_name}: transaction semantic "
                        "conclusion drifted; missing "
                        f"{required_conclusion!r}"
                    )


def validate_transaction_acceptance_bridges(root: Path) -> None:
    """Pin the protocol and deployed relation-to-transaction theorem chain."""

    for family, (relative_path, _) in REFINEMENT_CONSEQUENCES.items():
        theorem = normalize_lean_source(
            extract_named_declaration(
                root,
                relative_path,
                "theorem",
                "transactionAccepted_of_circuitFacts",
            )
        )
        for fragment in PROTOCOL_TRANSACTION_REFINEMENT_FRAGMENTS[
            family
        ]:
            if normalize_lean_source(fragment) not in theorem:
                reject(
                    f"{family}: protocol transaction refinement is "
                    f"detached; missing {fragment!r}"
                )

    for profile, (relative_path, _) in (
        DEPLOYED_TRANSACTION_ACCEPTANCE_CONSEQUENCES.items()
    ):
        family = str(EXPECTED_PROFILES[profile]["family"])
        theorem = normalize_lean_source(
            extract_named_declaration(
                root,
                relative_path,
                "theorem",
                "transactionAccepted_of_deployedRelation",
            )
        )
        for fragment in DEPLOYED_TRANSACTION_BRIDGE_FRAGMENTS[family]:
            if normalize_lean_source(fragment) not in theorem:
                reject(
                    f"{profile}: deployed relation-to-transaction root is "
                    f"detached; missing {fragment!r}"
                )

    for family, (relative_path, fragments) in (
        GENERATED_TRANSACTION_REFINEMENT_ROOTS.items()
    ):
        theorem = normalize_lean_source(
            extract_named_declaration(
                root,
                relative_path,
                "theorem",
                "transactionAccepted_of_relationAll",
            )
        )
        for fragment in fragments:
            if normalize_lean_source(fragment) not in theorem:
                reject(
                    f"{family}: generated transaction refinement root is "
                    f"detached; missing {fragment!r}"
                )


def expected_formal_fact_ids(root: Path) -> set[str]:
    result: set[str] = set()
    for prefix, relative_path, structure_name in FORMAL_STRUCTURES:
        for field in extract_structure_fields(root, relative_path, structure_name):
            fact_id = f"{prefix}.{field}"
            if fact_id in result:
                reject(f"duplicate extracted formal fact ID {fact_id}")
            result.add(fact_id)
    return result


def expected_ledger_ids(root: Path) -> set[str]:
    path = canonical_repo_path(
        root,
        OBLIGATION_LEDGER_RELATIVE,
        "obligation ledger",
    )
    source = path.read_text(encoding="utf-8")
    result = set(re.findall(r"^\| `([A-Z0-9-]+)` \|", source, re.MULTILINE))
    if not result:
        reject("obligation ledger has no parsed obligation IDs")
    return result


def assumption_ledger_statuses(root: Path) -> dict[str, str]:
    path = canonical_repo_path(
        root,
        ASSUMPTION_LEDGER_RELATIVE,
        "assumption ledger",
    )
    statuses: dict[str, str] = {}
    for line in path.read_text(encoding="utf-8").splitlines():
        match = re.match(r"^\| `([A-Z0-9-]+)` \|", line)
        if match is None:
            continue
        cells = [cell.strip() for cell in line.split("|")[1:-1]]
        if len(cells) < 2:
            reject(f"malformed assumption-ledger row {line!r}")
        assumption_id = match.group(1)
        status = cells[-1].strip("`")
        if assumption_id in statuses:
            reject(f"duplicate assumption-ledger ID {assumption_id}")
        if status not in {"assumed", "discharged"}:
            reject(
                f"{assumption_id}: unsupported assumption-ledger status "
                f"{status!r}"
            )
        statuses[assumption_id] = status
    if not statuses:
        reject("assumption ledger has no parsed IDs")
    return statuses


def expected_consequence_pairs(
    predicate_id: str,
    profile_labels: set[str],
) -> set[tuple[str, str]]:
    result: set[tuple[str, str]] = set()
    families = {
        str(EXPECTED_PROFILES[profile]["family"])
        for profile in profile_labels
    }
    if PREDICATE_BASELINE[predicate_id][0] == "construction":
        for family in families:
            protocol_dir = {
                "note_reshape": "NoteReshape",
                "transfer": "Transfer",
                "shielded_ics20_withdrawal":
                    "ShieldedIcs20Withdrawal",
            }[family]
            result.add(
                (
                    "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
                    f"{protocol_dir}/Semantics.lean",
                    "structure ConstructedAndAccepted",
                )
            )
        return result
    for family in families:
        result.add(REFINEMENT_CONSEQUENCES[family])
        if predicate_id in TRANSACTION_LEVEL_PREDICATES:
            result.add(TRANSACTION_REFINEMENT_CONSEQUENCES[family])
        security_symbols = SECURITY_CONSEQUENCES.get(
            predicate_id, {}
        ).get(family, ())
        if security_symbols:
            security_path = (
                "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
                + {
                    "note_reshape": "NoteReshape",
                    "transfer": "Transfer",
                    "shielded_ics20_withdrawal":
                        "ShieldedIcs20Withdrawal",
                }[family]
                + "/Security.lean"
            )
            result.update(
                (security_path, symbol) for symbol in security_symbols
            )
        state_symbols = STATE_SEMANTIC_CONSEQUENCES.get(
            predicate_id, {}
        ).get(family, ())
        if state_symbols:
            state_path = (
                "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
                + {
                    "note_reshape": "NoteReshape",
                    "transfer": "Transfer",
                    "shielded_ics20_withdrawal":
                        "ShieldedIcs20Withdrawal",
                }[family]
                + "/Semantics.lean"
            )
            result.update(
                (state_path, symbol) for symbol in state_symbols
            )
    result.update(
        DEPLOYED_ACCEPTANCE_CONSEQUENCES[profile]
        for profile in profile_labels
    )
    if predicate_id in TRANSACTION_LEVEL_PREDICATES:
        result.update(
            DEPLOYED_TRANSACTION_ACCEPTANCE_CONSEQUENCES[profile]
            for profile in profile_labels
        )
    result.update(
        GENERATED_CONSEQUENCE_PAIRS[(profile, predicate_id)]
        for profile in profile_labels
        if (profile, predicate_id) in GENERATED_CONSEQUENCE_PAIRS
    )
    return result


GENERIC_POSITIVE_TEST_IDS = frozenset(
    {
        "CIRCUIT-FAMILY-VALID",
        "NOTE-RESHAPE-PADDED-FAMILIES-VALID",
        "TRANSFER-FAMILY-VALID",
        "WITHDRAWAL-FAMILY-VALID",
    }
)
SEMANTIC_ATTACK_TEST_KINDS = frozenset(
    {
        "negative",
        "boundary_negative",
        "full_circuit_negative",
        "attack_reproduction",
    }
)

# A shared action-transition or broad runtime fixture cannot establish these
# enclosing-transaction and IBC subproperties. Their independently reviewed
# runtime witnesses are exact parts of the specification gate. Merely attaching
# some other non-generic test must not close the claim.
REQUIRED_EXACT_SEMANTIC_TEST_IDS = {
    "EXT-TRANSACTION-BINDING-SIGNATURE": frozenset(
        {
            "TRANSACTION-BINDING-SIGNATURE-REJECT",
            "TRANSACTION-PROOF-BEARING-IDENTITY-BINDING-ATTACK",
            "TRANSACTION-PROOF-BEARING-ZERO-BLINDING-BUILD-REJECT",
        }
    ),
    "EXT-HONEST-COMPLIANCE-TIER-SCALAR-NONZERO": frozenset(
        {"TRANSFER-COMPLIANCE-TIER-SCALAR-NONZERO"}
    ),
    "EXT-TRANSFER-EFFECT-HASH-COMPLIANCE-BINDING": frozenset(
        {"TRANSFER-EFFECT-HASH-COMPLIANCE-BINDING"}
    ),
    "EXT-NULLIFIER-TX-UNIQUENESS": frozenset(
        {"NULLIFIER-BATCH-DUPLICATE-REJECT"}
    ),
    "EXT-TRANSACTION-EFFECTS-ATOMICITY": frozenset(
        {
            "TRANSACTION-STAGED-EFFECTS-ROLLBACK",
            "TRANSACTION-DEFERRED-INDEX-ROLLBACK",
        }
    ),
    "EXT-WITHDRAWAL-ACTION-ATOMICITY": frozenset(
        {
            "WITHDRAWAL-ACTION-ACCOUNTING-ROLLBACK",
            "WITHDRAWAL-ACTION-ATOMICITY",
            "WITHDRAWAL-DEFERRED-INDEX-ROLLBACK",
            "WITHDRAWAL-CHECKED-TOKEN-POLICY-FRESH",
            "WITHDRAWAL-CHECKED-TOKEN-SEQUENCE-FRESH",
            "WITHDRAWAL-CHECKED-TOKEN-CLIENT-FRESH",
            "WITHDRAWAL-SEQUENCE-AVAILABLE",
            "WITHDRAWAL-PACKET-SLOT-FRESH",
        }
    ),
    "EXT-WITHDRAWAL-STATE-TRANSITION": frozenset(
        {
            "WITHDRAWAL-CHECKED-TOKEN-SEQUENCE-FRESH",
            "WITHDRAWAL-CHECKED-TOKEN-CLIENT-FRESH",
            "WITHDRAWAL-END-TO-END-STATE-TRANSITION",
            "WITHDRAWAL-LOCAL-ESCROW-OVERFLOW",
            "WITHDRAWAL-SEQUENCE-AVAILABLE",
            "WITHDRAWAL-STATE-TRANSITION",
            "WITHDRAWAL-PACKET-SLOT-FRESH",
            "WITHDRAWAL-VOUCHER-INSUFFICIENT-BALANCE",
            "WITHDRAWAL-VOUCHER-STATE-TRANSITION",
        }
    ),
    "EXT-WITHDRAWAL-CHANNEL-CONNECTION-VALID": frozenset(
        {
            "WITHDRAWAL-CHANNEL-MISSING",
            "WITHDRAWAL-CHANNEL-CONNECTION",
            "WITHDRAWAL-COUNTERPARTY-CHANNEL-MISSING",
            "WITHDRAWAL-CHANNEL-PREOPEN",
            "WITHDRAWAL-CHANNEL-ORDERING",
            "WITHDRAWAL-CHANNEL-VERSION",
            "WITHDRAWAL-CONNECTION-HOPS-ZERO",
            "WITHDRAWAL-CONNECTION-HOPS-UNAMBIGUOUS",
            "WITHDRAWAL-CONNECTION-MISSING",
            "WITHDRAWAL-CONNECTION-NONOPEN",
        }
    ),
    "EXT-WITHDRAWAL-ROUTE-AUTHORIZED": frozenset(
        {
            "WITHDRAWAL-ROUTE-POLICY",
            "WITHDRAWAL-ROUTE-MEMO-ASSET-BINDING",
        }
    ),
    "EXT-WITHDRAWALS-ENABLED": frozenset(
        {
            "WITHDRAWALS-ENABLED",
            "WITHDRAWALS-ENABLED-HISTORICAL",
        }
    ),
    "EXT-WITHDRAWAL-CHECKED-TOKEN-FRESH": frozenset(
        {
            "WITHDRAWAL-CHECKED-TOKEN-FRESH",
            "WITHDRAWAL-CHECKED-TOKEN-POLICY-FRESH",
            "WITHDRAWAL-CHECKED-TOKEN-SEQUENCE-FRESH",
            "WITHDRAWAL-CHECKED-TOKEN-CLIENT-FRESH",
        }
    ),
    "EXT-WITHDRAWAL-CLIENT-ACTIVE-UNEXPIRED": frozenset(
        {
            "WITHDRAWAL-CLIENT-MISSING",
            "WITHDRAWAL-CLIENT-EXPIRED",
            "WITHDRAWAL-CLIENT-FROZEN",
            "WITHDRAWAL-CONSENSUS-STATE-MISSING",
            "WITHDRAWAL-CONSENSUS-TIMESTAMP-NOT-FUTURE",
        }
    ),
    "EXT-WITHDRAWAL-TIMEOUTS-FUTURE": frozenset(
        {"WITHDRAWAL-TIMEOUTS-FUTURE"}
    ),
}

REQUIRED_PROFILE_SEMANTIC_TEST_IDS = {
    **{
        ("EXT-PLAN-BOUNDARY-CANONICALITY", profile): frozenset(
            {
                "COMMON-PLAN-AUTHORITATIVE-MEMBERSHIP",
                "COMMON-PLAN-CANONICAL-DECODE",
                "NOTE-RESHAPE-PLAN-BOUNDARY",
                "NOTE-RESHAPE-PLAN-MATERIALIZER-COUNTS",
                "NOTE-RESHAPE-PLAN-VALIDATION-CENSUS",
            }
        )
        for profile in NOTE_RESHAPE_PROFILES
    },
    (
        "EXT-PLAN-BOUNDARY-CANONICALITY",
        "transfer",
    ): frozenset(
        {
            "COMMON-PLAN-AUTHORITATIVE-MEMBERSHIP",
            "COMMON-PLAN-CANONICAL-DECODE",
            "TRANSFER-PLAN-BOUNDARY",
            "TRANSFER-PLAN-CHANGE-SENDER-WITNESS-CENSUS",
            "TRANSFER-PLAN-MATERIALIZER-BOUNDARIES",
            "TRANSFER-PLAN-MAX-SPEND-ARITY",
            "TRANSFER-PLAN-OUTPUT-ASSET-WITNESS-CENSUS",
            "TRANSFER-PLAN-OUTPUT-CONTEXT-JOIN",
            "TRANSFER-PLAN-SHARED-COMPLIANCE-WITNESS",
            "TRANSFER-PLAN-SHARED-SPEND-WITNESS-CENSUS",
            "TRANSFER-PLAN-VALIDATION-CENSUS",
            "VIEW-COMPLIANCE-PATH-CANONICAL-SHAPE",
        }
    ),
    (
        "EXT-PLAN-BOUNDARY-CANONICALITY",
        "shielded_ics20_withdrawal",
    ): frozenset(
        {
            "COMMON-PLAN-AUTHORITATIVE-MEMBERSHIP",
            "COMMON-PLAN-CANONICAL-DECODE",
            "VIEW-COMPLIANCE-PATH-CANONICAL-SHAPE",
            "WITHDRAWAL-PLAN-BOUNDARY",
            "WITHDRAWAL-PLAN-MATERIALIZER-COUNTS",
            "WITHDRAWAL-PLAN-SENDER-OWNED-CHANGE",
            "WITHDRAWAL-PLAN-SHARED-ASSET-WITNESS",
            "WITHDRAWAL-PLAN-SHARED-COMPLIANCE-LEAF",
            "WITHDRAWAL-PLAN-SHARED-COMPLIANCE-POSITION",
            "WITHDRAWAL-PLAN-SHARED-REGULATION",
            "WITHDRAWAL-PLAN-SHARED-SENDER",
            "WITHDRAWAL-PLAN-VALIDATION-CENSUS",
        }
    ),
    (
        "EXT-HONEST-COMPLIANCE-NONCE",
        "transfer",
    ): frozenset(
        {
            "TRANSFER-HONEST-NONCE",
            "VIEW-TRANSFER-NONCE-CROSS-ACTION-REUSE-REJECT",
            "VIEW-TRANSFER-NONCE-PER-ACTION-FRESHNESS",
        }
    ),
    (
        "EXT-WITHDRAWAL-PAYLOAD-VALID",
        "shielded_ics20_withdrawal",
    ): frozenset(
        {
            "WITHDRAWAL-PAYLOAD-CANONICAL-COMPAT-ENCODING",
            "WITHDRAWAL-PAYLOAD-DEPRECATED-COMPAT-REJECT",
            "WITHDRAWAL-PAYLOAD-NONZERO-AMOUNT",
            "WITHDRAWAL-PAYLOAD-TIMEOUT-CANONICALITY",
            "WITHDRAWAL-PAYLOAD-TRANSPARENT-ADDRESS-VALIDATION",
            "WITHDRAWAL-PAYLOAD-TRANSPARENT-DECODE-REJECT",
            "WITHDRAWAL-PAYLOAD-VALID",
        }
    ),
    (
        "EXT-WITHDRAWAL-PAYLOAD-PROJECTION",
        "shielded_ics20_withdrawal",
    ): frozenset(
        {
            "WITHDRAWAL-PAYLOAD-PROJECTION",
            "WITHDRAWAL-PAYLOAD-TRANSPARENT-SENDER-PROJECTION",
        }
    ),
}


def dedicated_semantic_consequence_pairs(
    predicate_id: str,
    profile_label: str,
) -> set[tuple[str, str]]:
    family = str(EXPECTED_PROFILES[profile_label]["family"])
    result: set[tuple[str, str]] = set()
    symbols = SECURITY_CONSEQUENCES.get(predicate_id, {}).get(family, ())
    protocol_dir = {
        "note_reshape": "NoteReshape",
        "transfer": "Transfer",
        "shielded_ics20_withdrawal": "ShieldedIcs20Withdrawal",
    }[family]
    if symbols:
        path = (
            "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
            f"{protocol_dir}/Security.lean"
        )
        result.update((path, symbol) for symbol in symbols)
    state_symbols = STATE_SEMANTIC_CONSEQUENCES.get(
        predicate_id, {}
    ).get(family, ())
    if state_symbols:
        path = (
            "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
            f"{protocol_dir}/Semantics.lean"
        )
        result.update((path, symbol) for symbol in state_symbols)
    generated = GENERATED_CONSEQUENCE_PAIRS.get(
        (profile_label, predicate_id)
    )
    if generated is not None:
        result.add(generated)
    return result


def expected_generated_consequence_applications(
    predicates: dict[str, dict[str, Any]],
    requirements: dict[str, dict[str, Any]],
    applicable: dict[tuple[str, str], dict[str, Any]],
    _tests: dict[str, dict[str, Any]],
) -> set[tuple[str, str]]:
    """Derive the exact circuit relation-atom theorem surface."""

    result: set[tuple[str, str]] = set()
    for profile_label, predicate_id in applicable:
        if (
            predicates[predicate_id]["placement"] != "circuit"
            or requirements[predicate_id]["semantic_evidence"]
            != "predicate_specific"
        ):
            continue
        family = str(EXPECTED_PROFILES[profile_label]["family"])
        handwritten_theorem = bool(
            SECURITY_CONSEQUENCES.get(predicate_id, {}).get(family, ())
        )
        if (
            handwritten_theorem
            and predicate_id
            not in RELATION_ATOM_REQUIRED_WITH_HANDWRITTEN_SECURITY
        ):
            continue
        pair = (profile_label, predicate_id)
        if pair not in DIRECT_CIRCUIT_FACT_CONSEQUENCE_PAIRS:
            result.add(pair)
    return result


def predicate_specific_semantic_deficits(
    predicates: dict[str, dict[str, Any]],
    requirements: dict[str, dict[str, Any]],
    applicable: dict[tuple[str, str], dict[str, Any]],
    tests: dict[str, dict[str, Any]],
) -> tuple[str, ...]:
    """Return high/critical applications lacking semantic attack evidence."""

    deficits: list[str] = []
    for (profile_label, predicate_id), application in sorted(
        applicable.items()
    ):
        predicate = predicates[predicate_id]
        if (
            requirements[predicate_id]["semantic_evidence"]
            != "predicate_specific"
        ):
            continue
        dedicated_theorems = dedicated_semantic_consequence_pairs(
            predicate_id, profile_label
        )
        actual_consequences = set(application["consequence_pairs"])
        theorem_backed = bool(dedicated_theorems & actual_consequences)

        concrete_tests = [
            tests[test_id]
            for test_id in application["test_ids"]
            if test_id not in GENERIC_POSITIVE_TEST_IDS
        ]
        required_exact_tests = (
            REQUIRED_EXACT_SEMANTIC_TEST_IDS.get(predicate_id, frozenset())
            | REQUIRED_PROFILE_SEMANTIC_TEST_IDS.get(
                (predicate_id, profile_label),
                frozenset(),
            )
        )
        if not required_exact_tests:
            required_exact_tests = None
        theorem_required = (
            predicate_id in REQUIRED_TRANSACTION_THEOREM_PREDICATES
        )
        if theorem_required:
            deployed_bridge = (
                DEPLOYED_TRANSACTION_ACCEPTANCE_CONSEQUENCES.get(
                    profile_label
                )
            )
            theorem_backed = (
                theorem_backed
                and deployed_bridge is not None
                and deployed_bridge in actual_consequences
            )
        if predicate["placement"] == "circuit":
            test_backed = any(
                test["kind"] in SEMANTIC_ATTACK_TEST_KINDS
                for test in concrete_tests
            )
        elif required_exact_tests is not None:
            # Action-local ConsensusTransition and generic acceptance roots do
            # not prove cross-action uniqueness or transaction rollback.
            test_backed = required_exact_tests.issubset(
                application["test_ids"]
            )
        else:
            # External acceptance and honest construction may be supported by
            # a predicate-specific positive invariant/parity test or a
            # negative attack test. Merely naming the shared transition or a
            # family-valid circuit fixture is insufficient.
            test_backed = bool(concrete_tests)
        if required_exact_tests is not None:
            if not test_backed or (theorem_required and not theorem_backed):
                deficits.append(f"{profile_label}/{predicate_id}")
        elif theorem_required and not theorem_backed:
            deficits.append(f"{profile_label}/{predicate_id}")
        elif not theorem_backed and not test_backed:
            deficits.append(f"{profile_label}/{predicate_id}")
    return tuple(deficits)


def _trace_arguments(trace: dict[str, Any]) -> dict[str, str]:
    result: dict[str, str] = {}
    for argument in trace["args"]:
        if "=" not in argument:
            reject(f"{trace['id']}: trace argument lacks key/value form")
        key, value = argument.split("=", 1)
        if not key or not value or key in result:
            reject(f"{trace['id']}: malformed or duplicate trace argument")
        result[key] = value
    return result


def validate_selected_trace_semantics(
    predicate_id: str,
    traces: list[dict[str, Any]],
) -> None:
    """Reject known high-impact polarity, branch, and disclosure misattribution."""

    if not traces:
        return
    if predicate_id == "ADDRESS-CANONICAL-PACKING":
        for trace in traces:
            args = _trace_arguments(trace)
            if trace["op"] != "gadget.poseidon_encryption.address":
                reject(
                    "ADDRESS-CANONICAL-PACKING must select only address "
                    "encryption traces"
                )
            if not {"div_gen_fq", "transmission_fq"} <= set(args):
                reject(
                    "ADDRESS-CANONICAL-PACKING lacks diversified-generator "
                    "or transmission-key input"
                )
            if set(args) != {
                "c2",
                "div_gen_fq",
                "out",
                "ss",
                "tier",
                "transmission_fq",
            }:
                reject(
                    "ADDRESS-CANONICAL-PACKING must use the exact two-field "
                    "address inputs"
                )
    elif predicate_id == "DUMMY-AMOUNT-ZERO":
        for trace in traces:
            args = _trace_arguments(trace)
            selector = args.get("cond", args.get("enabled"))
            if (
                trace["op"] != "assert.eq_if"
                or args.get("rhs") != "0"
                or selector is None
                or not selector.endswith(".is_dummy")
                or "is_not_dummy" in selector
            ):
                reject(
                    "DUMMY-AMOUNT-ZERO must be amount == 0 gated by "
                    "is_dummy"
                )
    elif predicate_id == "DUMMY-NULLIFIER-DOMAIN-BINDING":
        by_slot: dict[str, dict[str, dict[str, str]]] = {}
        for trace in traces:
            args = _trace_arguments(trace)
            role = trace["role"]
            slot = role.split(".nullifier", 1)[0]
            by_slot.setdefault(slot, {})[trace["op"]] = args
        for slot, operations in by_slot.items():
            required_ops = {
                "gadget.synthetic_dummy_nullifier",
                "dummy.mux",
                "assert.eq",
            }
            if set(operations) != required_ops:
                reject(
                    f"{predicate_id}/{slot}: synthetic, mux, and equality "
                    "traces must be selected together"
                )
            synthetic = operations["gadget.synthetic_dummy_nullifier"]
            mux = operations["dummy.mux"]
            equality = operations["assert.eq"]
            selector = mux.get("is_dummy", mux.get("flag"))
            dummy_arm = mux.get("synthetic", mux.get("dummy"))
            if (
                selector is None
                or not selector.endswith(".is_dummy")
                or not synthetic.get("out", "").endswith(
                    (".dummy", ".synthetic")
                )
                or dummy_arm != synthetic.get("out")
                or not mux.get("real", "").endswith(".real")
                or not mux.get("out", "").endswith(".selected")
                or equality.get("rhs") != mux.get("out")
            ):
                reject(
                    f"{predicate_id}/{slot}: dummy selector polarity or "
                    "selected-nullifier equality drifted"
                )
    elif predicate_id == "COMPLIANCE-POLICY-SELECTION":
        point_outputs: set[str] = set()
        for trace in traces:
            if trace["op"] != "select.point":
                continue
            args = _trace_arguments(trace)
            if (
                args.get("cond") != "is_regulated"
                or not args.get("if_true", "").startswith("asset.leaf.")
                or not args.get("if_false", "").startswith("unregulated.")
                or not args.get("out", "").startswith("effective.")
            ):
                reject(
                    "COMPLIANCE-POLICY-SELECTION branch polarity drifted"
                )
            point_outputs.add(args["out"])
        if point_outputs != {"effective.dk_pub", "effective.ring_pk"}:
            reject(
                "COMPLIANCE-POLICY-SELECTION must select both effective "
                "policy points"
            )
    elif predicate_id == "USER-COMPLIANCE-MEMBERSHIP-GATE":
        gates = [
            _trace_arguments(trace)
            for trace in traces
            if trace["op"] == "assert.eq_if"
        ]
        if not gates or any(
            gate.get("cond") != "is_regulated" for gate in gates
        ):
            reject(
                "USER-COMPLIANCE-MEMBERSHIP-GATE must use is_regulated"
            )
    elif predicate_id == "DEC-ACK-DERIVATION":
        if any(
            _trace_arguments(trace).get("ring_pk") != "effective.ring_pk"
            for trace in traces
        ):
            reject("DEC-ACK-DERIVATION must use the effective ring key")
    elif predicate_id == "DEC-SHARED-SECRET-DERIVATION":
        if any(
            _trace_arguments(trace).get("dk_pub") != "effective.dk_pub"
            for trace in traces
        ):
            reject(
                "DEC-SHARED-SECRET-DERIVATION must use the effective "
                "detection key"
            )


def validate_application_semantic_contract(
    predicate_id: str,
    placement: str,
    requirement: dict[str, Any],
    semantic_contract: Any,
    selected_traces: list[dict[str, Any]],
    selected_formal_facts: set[str],
) -> None:
    contract = exact_fields(
        semantic_contract,
        {
            "branch_condition",
            "binding_mode",
            "disclosure",
            "variable_source",
            "bound_variables",
            "evidence_removal",
        },
        f"{predicate_id}.semantic_contract",
    )
    for field_name in (
        "branch_condition",
        "binding_mode",
        "disclosure",
        "variable_source",
    ):
        if contract[field_name] != requirement[field_name]:
            reject(
                f"{predicate_id}: application {field_name} differs from "
                "the independent requirement"
            )
    if placement == "circuit":
        expected_bound_variables = {
            f"{trace['role']}::{argument}"
            for trace in selected_traces
            for argument in trace["args"]
        }
        expected_mode = "remove_trace_evidence"
        expected_targets = {trace["id"] for trace in selected_traces}
        validate_selected_trace_semantics(predicate_id, selected_traces)
    else:
        expected_bound_variables = set(selected_formal_facts)
        expected_mode = "remove_formal_fact_evidence"
        expected_targets = set(selected_formal_facts)
    bound_variables = set(
        string_list(
            contract["bound_variables"],
            f"{predicate_id}.semantic_contract.bound_variables",
        )
    )
    if bound_variables != expected_bound_variables:
        reject(
            f"{predicate_id}: executable bound-variable census drifted: "
            f"missing={sorted(expected_bound_variables-bound_variables)}, "
            f"extra={sorted(bound_variables-expected_bound_variables)}"
        )
    evidence_removal = exact_fields(
        contract["evidence_removal"],
        {"mode", "targets"},
        f"{predicate_id}.semantic_contract.evidence_removal",
    )
    if evidence_removal["mode"] != expected_mode:
        reject(f"{predicate_id}: evidence-removal mode drifted")
    targets = set(
        string_list(
            evidence_removal["targets"],
            f"{predicate_id}.semantic_contract.evidence_removal.targets",
        )
    )
    if targets != expected_targets:
        reject(
            f"{predicate_id}: evidence-removal census drifted: "
            f"missing={sorted(expected_targets-targets)}, "
            f"extra={sorted(targets-expected_targets)}"
        )
    if requirement["evidence_removal_required"] and not targets:
        reject(f"{predicate_id}: required evidence-removal census is empty")


def predicate_semantics_digest(
    predicates: dict[str, dict[str, Any]],
) -> str:
    rows = []
    for predicate_id in sorted(predicates):
        predicate = predicates[predicate_id]
        rows.append(
            {
                "id": predicate_id,
                "category": predicate["category"],
                "severity": predicate["severity"],
                "placement": predicate["placement"],
                "branch_condition": predicate["branch_condition"],
                "binding_mode": predicate["binding_mode"],
                "disclosure": predicate["disclosure"],
                "variable_source": predicate["variable_source"],
                "statement": predicate["statement"],
                "security_objectives": predicate["security_objectives"],
                "assumptions": predicate["assumptions"],
                "reference_evidence": predicate["reference_evidence"],
                "applications": predicate["applications"],
                "not_applicable_profiles":
                    predicate["not_applicable_profiles"],
            }
        )
    payload = json.dumps(
        rows, sort_keys=True, separators=(",", ":"), ensure_ascii=False
    ).encode()
    return hashlib.sha256(payload).hexdigest()


def property_contract_digest(rows: list[dict[str, Any]]) -> str:
    return hashlib.sha256(
        json.dumps(
            rows,
            sort_keys=True,
            separators=(",", ":"),
            ensure_ascii=False,
        ).encode()
    ).hexdigest()


def proof_acceptance_surface_digest(surface: dict[str, Any]) -> str:
    return hashlib.sha256(
        json.dumps(
            surface,
            sort_keys=True,
            separators=(",", ":"),
            ensure_ascii=False,
        ).encode()
    ).hexdigest()


def runtime_policy_contract_digest(contract: dict[str, Any]) -> str:
    return hashlib.sha256(
        json.dumps(
            contract,
            sort_keys=True,
            separators=(",", ":"),
            ensure_ascii=False,
        ).encode()
    ).hexdigest()


def owned_test_contract_digest(contract: dict[str, Any]) -> str:
    return hashlib.sha256(
        json.dumps(
            contract,
            sort_keys=True,
            separators=(",", ":"),
            ensure_ascii=False,
        ).encode()
    ).hexdigest()


def reviewed_test_exclusions_digest(
    exclusions: list[dict[str, Any]],
) -> str:
    return hashlib.sha256(
        json.dumps(
            exclusions,
            sort_keys=True,
            separators=(",", ":"),
            ensure_ascii=False,
        ).encode()
    ).hexdigest()


def _rust_attribute_declarations(
    scrubbed: str,
) -> list[dict[str, Any]]:
    """Return balanced Rust outer and inner attributes."""

    attributes: list[dict[str, Any]] = []
    index = 0
    while index < len(scrubbed):
        if scrubbed[index] != "#":
            index += 1
            continue
        marker = index + 1
        while marker < len(scrubbed) and scrubbed[marker].isspace():
            marker += 1
        inner = marker < len(scrubbed) and scrubbed[marker] == "!"
        if inner:
            marker += 1
            while marker < len(scrubbed) and scrubbed[marker].isspace():
                marker += 1
        if marker >= len(scrubbed) or scrubbed[marker] != "[":
            index += 1
            continue
        depth = 1
        end = marker + 1
        while end < len(scrubbed) and depth:
            if scrubbed[end] == "[":
                depth += 1
            elif scrubbed[end] == "]":
                depth -= 1
            end += 1
        if depth:
            reject("unbalanced Rust attribute")
        content = scrubbed[marker + 1 : end - 1].strip()
        path_match = re.match(
            r"(?P<path>[A-Za-z_][A-Za-z0-9_]*"
            r"(?:\s*::\s*[A-Za-z_][A-Za-z0-9_]*)*)"
            r"(?=\s*(?:\(|=|$))",
            content,
        )
        path = ()
        arguments = ""
        if path_match is not None:
            path = tuple(
                part.strip()
                for part in re.split(r"\s*::\s*", path_match.group("path"))
            )
            arguments = content[path_match.end() :]
        attributes.append(
            {
                "start": index,
                "end": end,
                "inner": inner,
                "path": path,
                "arguments": arguments,
                "text": scrubbed[index:end],
            }
        )
        index = end
    return attributes


def _rust_has_named_attribute(attributes: str, name: str) -> bool:
    return any(
        not attribute["inner"]
        and attribute["path"]
        and attribute["path"][-1] == name
        for attribute in _rust_attribute_declarations(attributes)
    )


def _rust_has_feature_cfg_attribute(attributes: str) -> bool:
    return any(
        attribute["path"]
        and attribute["path"][-1] == "cfg"
        and re.search(r"\bfeature\s*=", attribute["arguments"])
        for attribute in _rust_attribute_declarations(attributes)
    )


def _rust_cfg_expressions(
    scrubbed_attributes: str,
    commentless_attributes: str,
) -> tuple[str, ...]:
    if len(scrubbed_attributes) != len(commentless_attributes):
        reject("Rust attribute masks changed source offsets")
    expressions: list[str] = []
    for attribute in _rust_attribute_declarations(scrubbed_attributes):
        if (
            not attribute["path"]
            or attribute["path"][-1] != "cfg"
        ):
            continue
        original = commentless_attributes[
            attribute["start"] : attribute["end"]
        ]
        opening = original.find("[")
        if opening < 0:
            reject("Rust cfg attribute lost its opening bracket")
        content = original[opening + 1 : -1].strip()
        path_match = re.match(
            r"(?P<path>[A-Za-z_][A-Za-z0-9_]*"
            r"(?:\s*::\s*[A-Za-z_][A-Za-z0-9_]*)*)"
            r"(?=\s*(?:\(|=|$))",
            content,
        )
        if path_match is None:
            reject("Rust cfg attribute has no parseable path")
        expressions.append(content[path_match.end() :].strip())
    return tuple(expressions)


def _rust_feature_cfg_expressions(
    scrubbed_attributes: str,
    commentless_attributes: str,
) -> tuple[str, ...]:
    return tuple(
        expression
        for expression in _rust_cfg_expressions(
            scrubbed_attributes,
            commentless_attributes,
        )
        if re.search(r"\bfeature\s*=", expression)
    )


def _rust_cfg_expression_value(
    expression: str,
    enabled_features: frozenset[str],
) -> bool | None:
    token_pattern = re.compile(
        r'\s*(?:(?P<identifier>[A-Za-z_][A-Za-z0-9_]*)|'
        r'(?P<string>"(?:\\.|[^"\\])*")|(?P<punctuation>[(),=]))'
    )
    tokens: list[tuple[str, str]] = []
    position = 0
    while position < len(expression):
        match = token_pattern.match(expression, position)
        if match is None:
            return None
        kind = match.lastgroup
        if kind is None:
            return None
        tokens.append((kind, match.group(kind)))
        position = match.end()
    cursor = 0

    def parse_meta() -> bool | None:
        nonlocal cursor
        if cursor >= len(tokens) or tokens[cursor][0] != "identifier":
            raise ValueError
        name = tokens[cursor][1]
        cursor += 1
        if cursor < len(tokens) and tokens[cursor][1] == "=":
            cursor += 1
            if cursor >= len(tokens) or tokens[cursor][0] != "string":
                raise ValueError
            literal = tokens[cursor][1]
            cursor += 1
            if name != "feature":
                return None
            if "\\" in literal:
                return None
            return literal[1:-1] in enabled_features
        if cursor < len(tokens) and tokens[cursor][1] == "(":
            cursor += 1
            values: list[bool | None] = []
            if cursor < len(tokens) and tokens[cursor][1] != ")":
                while True:
                    values.append(parse_meta())
                    if cursor < len(tokens) and tokens[cursor][1] == ",":
                        cursor += 1
                        if cursor < len(tokens) and tokens[cursor][1] == ")":
                            break
                        continue
                    break
            if cursor >= len(tokens) or tokens[cursor][1] != ")":
                raise ValueError
            cursor += 1
            if name == "all":
                if any(value is False for value in values):
                    return False
                return True if all(value is True for value in values) else None
            if name == "any":
                if any(value is True for value in values):
                    return True
                return False if all(value is False for value in values) else None
            if name == "not" and len(values) == 1:
                value = values[0]
                return None if value is None else not value
            return None
        if name == "test":
            return True
        return None

    try:
        if not tokens or tokens[0][1] != "(":
            return None
        cursor = 1
        value = parse_meta()
        if cursor < len(tokens) and tokens[cursor][1] == ",":
            cursor += 1
        if (
            cursor >= len(tokens)
            or tokens[cursor][1] != ")"
            or cursor + 1 != len(tokens)
        ):
            return None
        return value
    except ValueError:
        return None


def _rust_cfg_expressions_disable_test(
    expressions: tuple[str, ...],
    enabled_features: frozenset[str],
) -> bool:
    return any(
        _rust_cfg_expression_value(expression, enabled_features) is not True
        for expression in expressions
    )


def _rust_test_enabled_features(
    path: Path,
    test_id: str,
    symbol: str,
    repository_root: Path = ROOT,
) -> frozenset[str]:
    enabled: set[str] = set()
    resolved = path.resolve()
    repository_root = repository_root.resolve()
    try:
        relative = resolved.relative_to(repository_root).as_posix()
    except ValueError:
        relative = None

    manifest = None
    if relative is not None:
        for parent in (resolved.parent, *resolved.parents):
            candidate = parent / "Cargo.toml"
            if candidate.is_file():
                manifest = candidate
                break
            if parent == repository_root:
                break
    if manifest is not None:
        try:
            parsed = tomllib.loads(manifest.read_text(encoding="utf-8"))
        except (OSError, UnicodeError, tomllib.TOMLDecodeError) as error:
            reject(f"cannot read Rust test package manifest {manifest}: {error}")
        defaults = parsed.get("features", {}).get("default", [])
        if (
            not isinstance(defaults, list)
            or any(not isinstance(feature, str) for feature in defaults)
        ):
            reject(f"Rust test package default features are malformed: {manifest}")
        enabled.update(defaults)
    if relative is not None:
        try:
            execution = expected_test_execution(test_id, relative, symbol)
        except SpecificationCompletenessError:
            execution = None
        if execution is not None:
            enabled.update(execution["features"])
    return frozenset(enabled)


def _rust_matching_attribute_open(
    scrubbed: str,
    close: int,
) -> int | None:
    depth = 0
    for position in range(close, -1, -1):
        if scrubbed[position] == "]":
            depth += 1
        elif scrubbed[position] == "[":
            depth -= 1
            if depth == 0:
                return position
    return None


def _rust_attribute_prefix_start(
    scrubbed: str,
    item_start: int,
) -> int:
    cursor = item_start
    first = item_start
    while True:
        while cursor > 0 and scrubbed[cursor - 1].isspace():
            cursor -= 1
        if cursor == 0 or scrubbed[cursor - 1] != "]":
            return first
        opening = _rust_matching_attribute_open(scrubbed, cursor - 1)
        if opening is None:
            return first
        marker = opening
        while marker > 0 and scrubbed[marker - 1].isspace():
            marker -= 1
        if marker > 0 and scrubbed[marker - 1] == "!":
            return first
        if marker == 0 or scrubbed[marker - 1] != "#":
            return first
        first = marker - 1
        cursor = first


def _rust_brace_structure(
    scrubbed: str,
) -> tuple[dict[int, int], tuple[int, ...]]:
    pairs: dict[int, int] = {}
    stack: list[int] = []
    depths: list[int] = [0] * (len(scrubbed) + 1)
    depth = 0
    for index, character in enumerate(scrubbed):
        depths[index] = depth
        if character == "{":
            stack.append(index)
            depth += 1
        elif character == "}":
            if not stack:
                reject("unbalanced Rust closing brace")
            opening = stack.pop()
            depth -= 1
            pairs[opening] = index + 1
    depths[len(scrubbed)] = depth
    if stack:
        reject("unbalanced Rust opening brace")
    return pairs, tuple(depths)


def _rust_cfg_scope_ranges(
    commentless: str,
    scrubbed: str,
) -> tuple[tuple[int, int, tuple[str, ...]], ...]:
    """Return file/module ranges governed by cfg attributes."""

    if len(commentless) != len(scrubbed):
        reject("Rust source masks changed source offsets")
    attributes = _rust_attribute_declarations(scrubbed)
    brace_pairs, depths = _rust_brace_structure(scrubbed)
    ranges: set[tuple[int, int, tuple[str, ...]]] = set()
    file_expressions = tuple(
        expression
        for attribute in attributes
        if attribute["inner"] and depths[attribute["start"]] == 0
        for expression in _rust_cfg_expressions(
            attribute["text"],
            commentless[attribute["start"] : attribute["end"]],
        )
    )
    if file_expressions:
        ranges.add((0, len(scrubbed), file_expressions))

    module_declaration = re.compile(
        r"\b(?:(?:pub(?:\([^)]*\))?)[ \t\r\n]+)?"
        r"mod[ \t\r\n]+[A-Za-z_][A-Za-z0-9_]*[ \t\r\n]*\{"
    )
    attribute_ranges = tuple(
        (attribute["start"], attribute["end"]) for attribute in attributes
    )
    for match in module_declaration.finditer(scrubbed):
        if any(start <= match.start() < end for start, end in attribute_ranges):
            continue
        body_start = match.end() - 1
        body_end = brace_pairs.get(body_start)
        if body_end is None:
            reject("unbalanced Rust inline module body")
        attributes_start = _rust_attribute_prefix_start(
            scrubbed,
            match.start(),
        )
        line_start = scrubbed.rfind("\n", 0, attributes_start) + 1
        if scrubbed[line_start:attributes_start].strip():
            continue
        outer_expressions = _rust_cfg_expressions(
            scrubbed[attributes_start : match.start()],
            commentless[attributes_start : match.start()],
        )
        module_depth = depths[body_start] + 1
        inner_expressions = tuple(
            expression
            for attribute in attributes
            if attribute["inner"]
            and body_start < attribute["start"] < body_end
            and depths[attribute["start"]] == module_depth
            for expression in _rust_cfg_expressions(
                attribute["text"],
                commentless[attribute["start"] : attribute["end"]],
            )
        )
        expressions = (*outer_expressions, *inner_expressions)
        if expressions:
            ranges.add((body_start + 1, body_end - 1, expressions))
    return tuple(sorted(ranges))


def _rust_function_declarations(source: str) -> list[dict[str, Any]]:
    """Return concrete Rust functions with attributes and balanced bodies."""

    scrubbed = _without_source_comments(source)
    commentless = _without_source_comments(source, mask_literals=False)
    declaration = re.compile(
        r"\b(?P<visibility>pub(?:\([^)]*\))?[ \t\r\n]+)?"
        r"(?:(?:async|const|unsafe)[ \t\r\n]+)*fn[ \t\r\n]+"
        r"(?P<name>[A-Za-z_][A-Za-z0-9_]*)"
        r"(?:[ \t\r\n]*<[^;{}]*>)?[ \t\r\n]*\("
    )

    functions: list[dict[str, Any]] = []
    for match in declaration.finditer(scrubbed):
        attributes_start = _rust_attribute_prefix_start(
            scrubbed,
            match.start(),
        )
        line_start = scrubbed.rfind("\n", 0, attributes_start) + 1
        if scrubbed[line_start:attributes_start].strip():
            continue
        paren_depth = 1
        bracket_depth = 0
        body_start = None
        for index in range(match.end(), len(scrubbed)):
            character = scrubbed[index]
            if character == "(":
                paren_depth += 1
            elif character == ")":
                paren_depth -= 1
            elif character == "[":
                bracket_depth += 1
            elif character == "]":
                bracket_depth -= 1
            elif paren_depth == 0 and bracket_depth == 0:
                if character == ";":
                    break
                if character == "{":
                    body_start = index
                    break
        if body_start is None:
            continue
        depth = 0
        body_end = None
        for index in range(body_start, len(scrubbed)):
            character = scrubbed[index]
            if character == "{":
                depth += 1
            elif character == "}":
                depth -= 1
                if depth == 0:
                    body_end = index + 1
                    break
        if body_end is None:
            reject(f"unbalanced Rust function body for {match.group('name')}")
        functions.append(
            {
                "name": match.group("name"),
                "attributes": source[attributes_start:match.start()],
                "attributes_scrubbed": scrubbed[
                    attributes_start:match.start()
                ],
                "attributes_commentless": commentless[
                    attributes_start:match.start()
                ],
                "visibility": (match.group("visibility") or "").strip(),
                "start": attributes_start,
                "body_start": body_start,
                "end": body_end,
                "header": scrubbed[attributes_start:body_start],
                "body": scrubbed[body_start:body_end],
            }
        )
    cfg_ranges = _rust_cfg_scope_ranges(
        commentless,
        scrubbed,
    )
    for function in functions:
        function["cfg_expressions"] = (
            *_rust_cfg_expressions(
                function["attributes_scrubbed"],
                function["attributes_commentless"],
            ),
            *(
                expression
                for start, end, expressions in cfg_ranges
                if start <= function["start"] < end
                for expression in expressions
            ),
        )
        function["feature_cfg_expressions"] = tuple(
            expression
            for expression in function["cfg_expressions"]
            if re.search(r"\bfeature\s*=", expression)
        )
        function["feature_gated"] = bool(
            function["feature_cfg_expressions"]
        )
    return functions


def _one_rust_function(
    functions: list[dict[str, Any]],
    name: str,
    label: str,
) -> dict[str, Any]:
    matches = [function for function in functions if function["name"] == name]
    if len(matches) != 1:
        reject(
            f"{label}: Rust function {name!r} must be declared exactly once, "
            f"found {len(matches)}"
        )
    return matches[0]


def _runnable_rust_test_symbols(source: str) -> set[str]:
    return {
        function["name"]
        for function in _rust_function_declarations(source)
        if _rust_has_named_attribute(
            function["attributes_scrubbed"],
            "test",
        )
        and not _rust_has_named_attribute(
            function["attributes_scrubbed"],
            "ignore",
        )
    }


def _runnable_go_test_symbols(source: str) -> set[str]:
    scrubbed = _without_source_comments(source)
    return {
        match.group("name")
        for match in re.finditer(
            (
                r"(?m)^[ \t]*func[ \t]+"
                r"(?P<name>Test[A-Z0-9_][A-Za-z0-9_]*)"
                r"\s*\(\s*[A-Za-z_][A-Za-z0-9_]*"
                r"[ \t]+\*testing\.T\s*,?\s*\)"
            ),
            scrubbed,
        )
    }


def _read_test_census_source(
    root: Path,
    relative_path: str,
    label: str,
) -> str:
    path = canonical_repo_path(root, relative_path, label)
    try:
        return path.read_text(encoding="utf-8")
    except OSError as error:
        reject(f"cannot read {label}: {error}")


def validate_closed_test_source_census(
    root: Path,
    source_census: tuple[str, ...],
    tests: dict[str, dict[str, Any]],
    label: str,
    *,
    allowed_exclusions: AbstractSet[tuple[str, str]] = frozenset(),
) -> None:
    for relative_path in source_census:
        source = _read_test_census_source(
            root,
            relative_path,
            f"{label} source {relative_path}",
        )
        if relative_path.endswith("_test.go"):
            actual = _runnable_go_test_symbols(source)
        elif relative_path.endswith(".rs"):
            actual = _runnable_rust_test_symbols(source)
        else:
            reject(
                f"{label}: unsupported closed test source {relative_path}"
            )
        selected = {
            str(test["symbol"])
            for test in tests.values()
            if test["path"] == relative_path
        }
        excluded = {
            symbol
            for path, symbol in allowed_exclusions
            if path == relative_path
        }
        accounted = selected | excluded
        if actual != accounted:
            reject(
                f"{label} source census drifted for {relative_path}: "
                f"unmapped={sorted(actual-accounted)}, "
                f"missing={sorted(accounted-actual)}"
            )


def validate_reviewed_test_source_coverage(
    root: Path,
    source_census: tuple[str, ...],
    selected: set[tuple[str, str]],
    exclusions: set[tuple[str, str]],
) -> None:
    expected = selected | exclusions
    actual: set[tuple[str, str]] = set()
    for relative_path in source_census:
        source = _read_test_census_source(
            root,
            relative_path,
            f"reviewed test census source {relative_path}",
        )
        if relative_path.endswith("_test.go"):
            symbols = _runnable_go_test_symbols(source)
        elif relative_path.endswith(".rs"):
            symbols = _runnable_rust_test_symbols(source)
        else:
            reject(
                "reviewed test census has unsupported source "
                f"{relative_path}"
            )
        actual.update((relative_path, symbol) for symbol in symbols)
    if actual != expected:
        reject(
            "reviewed test source coverage drifted: "
            f"undeclared={sorted(actual-expected)}, "
            f"stale={sorted(expected-actual)}"
        )


def validate_reviewed_test_source_discovery(
    root: Path,
    source_census: tuple[str, ...] = REVIEWED_TEST_SOURCE_CENSUS,
    discovery_roots: tuple[
        tuple[str, str], ...
    ] | None = None,
) -> None:
    discovery_roots = (
        REVIEWED_TEST_DISCOVERY_ROOTS
        if discovery_roots is None
        else discovery_roots
    )
    if discovery_roots != REVIEWED_TEST_DISCOVERY_ROOTS:
        reject(
            "reviewed test discovery roots drifted from the independent "
            "security-root baseline"
        )
    if discovery_roots != tuple(sorted(discovery_roots)):
        reject("reviewed test discovery roots must be sorted")
    repository_root = root.resolve()
    for index, (relative_root, pattern) in enumerate(discovery_roots):
        if pattern not in {"*.rs", "*_test.go"}:
            reject(
                "reviewed test discovery root must enumerate every Rust "
                f"source or Go test source, got {pattern!r}"
            )
        source_root = canonical_repo_path(
            root,
            relative_root,
            f"reviewed test discovery root[{index}]",
        )
        if not source_root.is_dir():
            reject(
                f"reviewed test discovery root is missing: {source_root}"
            )
        try:
            candidates = tuple(source_root.rglob(pattern))
        except OSError as error:
            reject(
                "cannot enumerate reviewed test discovery root "
                f"{relative_root}: {error}"
            )
        discovered: set[str] = set()
        for path in candidates:
            if not path.is_file():
                continue
            resolved = path.resolve()
            try:
                relative = resolved.relative_to(repository_root).as_posix()
            except ValueError:
                reject(
                    "reviewed test discovery escaped the repository: "
                    f"{path}"
                )
            if pattern == "*.rs":
                try:
                    source = resolved.read_text(encoding="utf-8")
                except (OSError, UnicodeError) as error:
                    reject(
                        "cannot read reviewed Rust test candidate "
                        f"{relative}: {error}"
                    )
                if not _runnable_rust_test_symbols(source):
                    continue
            discovered.add(relative)
        root_parts = PurePosixPath(relative_root).parts
        expected_suffix = ".rs" if pattern == "*.rs" else "_test.go"
        expected = {
            relative
            for relative in source_census
            if PurePosixPath(relative).parts[: len(root_parts)]
            == root_parts
            and relative.endswith(expected_suffix)
        }
        if discovered != expected:
            reject(
                "reviewed test source discovery drifted under "
                f"{relative_root}: "
                f"unregistered={sorted(discovered-expected)}, "
                f"missing={sorted(expected-discovered)}"
            )


def validate_proof_acceptance_test_census(
    root: Path,
    tests: dict[str, dict[str, Any]],
) -> None:
    source = _read_test_census_source(
        root,
        PROOF_ACCEPTANCE_TEST_PATH,
        "dedicated proof-acceptance test module",
    )
    actual = _runnable_rust_test_symbols(source)
    selected = {
        str(test["symbol"])
        for test in tests.values()
        if test["path"] == PROOF_ACCEPTANCE_TEST_PATH
    }
    if actual != selected:
        reject(
            "dedicated proof-acceptance test census drifted: "
            f"unmapped={sorted(actual-selected)}, "
            f"missing={sorted(selected-actual)}"
        )


def validate_withdrawal_runtime_test_census(
    root: Path,
    tests: dict[str, dict[str, Any]],
) -> None:
    source = _read_test_census_source(
        root,
        WITHDRAWAL_RUNTIME_TEST_PATH,
        "Withdrawal runtime test module",
    )
    actual = {
        symbol
        for symbol in _runnable_rust_test_symbols(source)
        if "withdrawal" in symbol
    }
    selected = {
        str(test["symbol"])
        for test in tests.values()
        if test["path"] == WITHDRAWAL_RUNTIME_TEST_PATH
        and "withdrawal" in str(test["symbol"])
    }
    if actual != selected:
        reject(
            "Withdrawal runtime test census drifted: "
            f"unmapped={sorted(actual-selected)}, "
            f"missing={sorted(selected-actual)}"
        )


def validate_action_handler_test_censuses(
    root: Path,
    tests: dict[str, dict[str, Any]],
) -> None:
    for relative_path in CLOSED_ACTION_HANDLER_TEST_PATHS:
        source = _read_test_census_source(
            root,
            relative_path,
            f"{relative_path} action-handler test module",
        )
        actual = _runnable_rust_test_symbols(source)
        selected = {
            str(test["symbol"])
            for test in tests.values()
            if test["path"] == relative_path
        }
        if actual != selected:
            reject(
                "closed action-handler test census drifted "
                f"for {relative_path}: "
                f"unmapped={sorted(actual-selected)}, "
                f"missing={sorted(selected-actual)}"
            )


def validate_dynamic_proof_test_censuses(
    root: Path,
    tests: dict[str, dict[str, Any]],
) -> None:
    for relative_path in CLOSED_DYNAMIC_PROOF_TEST_PATHS:
        source = _read_test_census_source(
            root,
            relative_path,
            f"{relative_path} dynamic proof test module",
        )
        actual = _runnable_rust_test_symbols(source)
        selected = {
            str(test["symbol"])
            for test in tests.values()
            if test["path"] == relative_path
        }
        if actual != selected:
            reject(
                "closed dynamic-proof test census drifted "
                f"for {relative_path}: "
                f"unmapped={sorted(actual-selected)}, "
                f"missing={sorted(selected-actual)}"
            )


def _require_benchmark_cfg(function: dict[str, Any], label: str) -> None:
    required = '#[cfg(any(test, feature = "benchmark-helpers"))]'
    if required not in function["attributes"]:
        reject(
            f"{label}: {function['name']} is not confined by exact "
            "test/benchmark-helpers cfg"
        )


def _require_ordered_symbols(
    function: dict[str, Any],
    symbols: tuple[str, ...],
    label: str,
) -> None:
    position = -1
    for symbol in symbols:
        next_position = function["body"].find(symbol, position + 1)
        if next_position < 0:
            reject(
                f"{label}: {function['name']} lacks ordered guard "
                f"symbol {symbol!r}"
            )
        position = next_position


def _require_first_occurrence_order(
    function: dict[str, Any],
    symbols: tuple[str, ...],
    label: str,
) -> None:
    positions = [function["body"].find(symbol) for symbol in symbols]
    if any(position < 0 for position in positions) or positions != sorted(
        positions
    ):
        reject(
            f"{label}: {function['name']} first-occurrence order drifted "
            f"for {symbols!r}"
        )


def _require_occurrence_count(
    source: str,
    symbol: str,
    expected: int,
    label: str,
) -> None:
    actual = source.count(symbol)
    if actual != expected:
        reject(
            f"{label}: expected {expected} occurrences of {symbol!r}, "
            f"found {actual}"
        )


def _normalize_rust_fragment(source: str) -> str:
    return re.sub(r"\s+", " ", source).strip()


def _balanced_rust_call_arguments(
    source: str,
    receiver: str,
    methods: tuple[str, ...],
    label: str,
) -> list[tuple[str, str]]:
    """Extract normalized arguments from exact receiver method calls."""

    method_pattern = "|".join(re.escape(method) for method in methods)
    pattern = re.compile(
        rf"\b{re.escape(receiver)}\s*\.\s*"
        rf"(?P<method>{method_pattern})\s*\("
    )
    calls: list[tuple[str, str]] = []
    for match in pattern.finditer(source):
        depth = 1
        index = match.end()
        while index < len(source) and depth:
            character = source[index]
            if character == "(":
                depth += 1
            elif character == ")":
                depth -= 1
            index += 1
        if depth:
            reject(f"{label}: unbalanced call to {match.group('method')}")
        arguments = _normalize_rust_fragment(
            source[match.end():index - 1]
        )
        arguments = arguments.removesuffix(",").rstrip()
        calls.append((match.group("method"), arguments))
    return calls


def _require_exact_method_call_multiset(
    function: dict[str, Any],
    receiver: str,
    methods: tuple[str, ...],
    expected: tuple[tuple[str, str], ...],
    label: str,
) -> None:
    actual = Counter(
        _balanced_rust_call_arguments(
            function["body"],
            receiver,
            methods,
            label,
        )
    )
    reviewed = Counter(expected)
    if actual != reviewed:
        reject(
            f"{label}: {function['name']} exact method-call multiset drifted: "
            f"missing={list((reviewed-actual).elements())}, "
            f"extra={list((actual-reviewed).elements())}"
        )


def _balanced_rust_declaration_block(
    source: str,
    declaration: str,
    label: str,
) -> str:
    """Return one balanced Rust declaration block from the original source."""

    scrubbed = _without_source_comments(source)
    matches = list(re.finditer(declaration, scrubbed, re.MULTILINE))
    if len(matches) != 1:
        reject(
            f"{label}: declaration must occur exactly once, "
            f"found {len(matches)}"
        )
    body_start = scrubbed.find("{", matches[0].end())
    if body_start < 0:
        reject(f"{label}: declaration has no body")
    depth = 0
    for index in range(body_start, len(scrubbed)):
        character = scrubbed[index]
        if character == "{":
            depth += 1
        elif character == "}":
            depth -= 1
            if depth == 0:
                return source[matches[0].start():index + 1]
    reject(f"{label}: declaration body is unbalanced")


def _stateless_cache_mutator_census(
    root: Path,
) -> Counter[tuple[str, str, str]]:
    methods = (
        "insert_extracted",
        "insert_groth16_verified",
        "insert_invalid",
        "seed_extracted_for_benchmark",
    )
    reference_pattern = re.compile(
        r"\b(?P<method>"
        + "|".join(re.escape(method) for method in methods)
        + r")\b"
    )
    crates_root = canonical_repo_path(
        root,
        "crates",
        "stateless-cache mutator caller census",
    )
    census: Counter[tuple[str, str, str]] = Counter()
    for path in crates_root.rglob("*.rs"):
        try:
            source = path.read_text(encoding="utf-8")
        except (OSError, UnicodeError) as error:
            reject(
                "cannot read stateless-cache mutator caller source "
                f"{path}: {error}"
            )
        if not any(method in source for method in methods):
            continue
        scrubbed = _without_source_comments(source)
        functions = _rust_function_declarations(source)
        for match in reference_pattern.finditer(scrubbed):
            # Method declarations establish the reviewed API; every other
            # reference is a use and must belong to the exact caller census.
            # Matching the identifier instead of only `.method(` also closes
            # UFCS and function-item aliasing escapes.
            declaration_prefix = scrubbed[
                max(0, match.start() - 32):match.start()
            ]
            if re.search(r"\bfn\s*$", declaration_prefix):
                continue
            enclosing = [
                function
                for function in functions
                if function["body_start"] <= match.start() < function["end"]
            ]
            if not enclosing:
                reject(
                    "stateless-cache mutator call occurs outside a Rust "
                    f"function in {path}"
                )
            owner = max(
                enclosing,
                key=lambda function: function["body_start"],
            )
            relative = path.relative_to(root.resolve()).as_posix()
            census[(relative, owner["name"], match.group("method"))] += 1
    return census


def _rust_call_owner_census(
    source: str,
    functions: list[dict[str, Any]],
    call_pattern: str,
    label: str,
) -> Counter[str]:
    scrubbed = _without_source_comments(source)
    census: Counter[str] = Counter()
    for match in re.finditer(call_pattern, scrubbed):
        enclosing = [
            function
            for function in functions
            if function["body_start"] <= match.start() < function["end"]
        ]
        if not enclosing:
            reject(f"{label}: call occurs outside a Rust function")
        owner = max(enclosing, key=lambda function: function["body_start"])
        census[owner["name"]] += 1
    return census


def _require_drain_before_error(
    function: dict[str, Any],
    *,
    join_symbol: str,
    error_symbol: str,
    label: str,
) -> None:
    body = function["body"]
    if body.count(join_symbol) != 1:
        reject(
            f"{label}: {function['name']} must exhaust exactly one "
            f"{join_symbol!r} loop"
        )
    loop_position = body.find(f"while let Some({error_symbol}) = {join_symbol}")
    error_return_position = body.find("if let Some(error) = first_error")
    if (
        loop_position < 0
        or error_return_position < 0
        or loop_position >= error_return_position
    ):
        reject(
            f"{label}: {function['name']} does not drain every task before "
            "returning its first error"
        )
    loop_region = body[loop_position:error_return_position]
    if (
        "return " in loop_region
        or "break" in loop_region
        or re.search(r"\?\s*[,;})]", loop_region)
    ):
        reject(
            f"{label}: {function['name']} can exit before the task set is "
            "exhausted"
        )
    if ".abort" in body:
        reject(f"{label}: {function['name']} aborts rather than drains tasks")


def _require_handle_vector_drain(
    function: dict[str, Any],
    *,
    loop_symbol: str,
    first_error_symbol: str,
    assignment_symbol: str,
    label: str,
) -> None:
    body = function["body"]
    loop_position = body.find(loop_symbol)
    error_return_position = body.find(first_error_symbol, loop_position + 1)
    if (
        loop_position < 0
        or error_return_position < 0
        or loop_position >= error_return_position
    ):
        reject(
            f"{label}: {function['name']} lacks a complete handle-drain loop"
        )
    loop_region = body[loop_position:error_return_position]
    if (
        "return " in loop_region
        or "break" in loop_region
        or re.search(r"\?\s*[,;})]", loop_region)
        or ".abort" in loop_region
    ):
        reject(
            f"{label}: {function['name']} returns or aborts before all "
            "handles are awaited"
        )
    if assignment_symbol not in loop_region:
        reject(
            f"{label}: {function['name']} does not retain the first task error"
        )


def _read_acceptance_source(
    root: Path,
    relative_path: str,
    label: str,
) -> str:
    path = canonical_repo_path(root, relative_path, label)
    try:
        return path.read_text(encoding="utf-8")
    except (OSError, UnicodeError) as error:
        reject(f"cannot read {label}: {error}")


def _require_manifest_without_benchmark_helpers(
    root: Path,
    relative_path: str,
    package_name: str,
) -> None:
    source = _read_acceptance_source(
        root,
        relative_path,
        f"{package_name} deployed manifest",
    )
    try:
        manifest = tomllib.loads(source)
    except tomllib.TOMLDecodeError as error:
        reject(f"cannot parse {package_name} deployed manifest: {error}")
    dependency = manifest.get("dependencies", {}).get("shieldd-sdk-app")
    if not isinstance(dependency, dict):
        reject(
            f"{package_name} deployed manifest must use a structured "
            "shieldd-sdk-app dependency"
        )
    features = dependency.get("features", [])
    if (
        not isinstance(features, list)
        or any(not isinstance(feature, str) for feature in features)
        or set(features) != {"parallel"}
    ):
        reject(
            f"{package_name} shieldd-sdk-app feature roster drifted: "
            f"expected=['parallel'], actual={features!r}"
        )
    feature_table = manifest.get("features", {})
    if not isinstance(feature_table, dict):
        reject(f"{package_name} manifest feature table is malformed")
    if "benchmark-helpers" in source or any(
        isinstance(values, list)
        and any(
            isinstance(value, str) and "benchmark-helpers" in value
            for value in values
        )
        for values in feature_table.values()
    ):
        reject(
            f"{package_name} deployed binary enables benchmark-helpers"
        )


def _validate_host_execution_frontdoors(root: Path) -> None:
    relative = "crates/core/app/src/app/host.rs"
    source = _read_acceptance_source(
        root,
        relative,
        "HostExecution proof frontdoor",
    )
    impl_source = _balanced_rust_declaration_block(
        source,
        r"^[ \t]*impl[ \t]+HostExecution\b",
        "HostExecution implementation",
    )
    functions = _rust_function_declarations(impl_source)
    public_methods = {
        function["name"]
        for function in functions
        if function["visibility"] == "pub"
    }
    if public_methods != EXPECTED_HOST_EXECUTION_PUBLIC_METHODS:
        reject(
            "HostExecution public method census drifted: "
            f"missing={sorted(EXPECTED_HOST_EXECUTION_PUBLIC_METHODS-public_methods)}, "
            f"extra={sorted(public_methods-EXPECTED_HOST_EXECUTION_PUBLIC_METHODS)}"
        )
    transaction_methods = {
        function["name"]
        for function in functions
        if function["visibility"] == "pub"
        and (
            "tx_bytes: &[u8]" in function["header"]
            or ".deliver_tx_bytes(" in function["body"]
            or ".check_tx(" in function["body"]
            or ".deliver_tx(" in function["body"]
        )
    }
    if transaction_methods != {"check_tx", "deliver_tx"}:
        reject(
            "HostExecution transaction-entrypoint census drifted: "
            f"expected=['check_tx', 'deliver_tx'], "
            f"actual={sorted(transaction_methods)}"
        )
    call_owners = _rust_call_owner_census(
        impl_source,
        functions,
        r"\.deliver_tx_bytes\s*\(",
        "HostExecution canonical App caller census",
    )
    if call_owners != Counter({"check_tx": 1, "deliver_tx": 1}):
        reject(
            "HostExecution canonical App caller census drifted: "
            f"actual={dict(call_owners)}"
        )

    check_tx = _one_rust_function(
        functions,
        "check_tx",
        "HostExecution CheckTx frontdoor",
    )
    deliver_tx = _one_rust_function(
        functions,
        "deliver_tx",
        "HostExecution DeliverTx frontdoor",
    )
    for function, label in (
        (check_tx, "HostExecution CheckTx frontdoor"),
        (deliver_tx, "HostExecution DeliverTx frontdoor"),
    ):
        if "tx_bytes: &[u8]" not in function["header"]:
            reject(f"{label} is not byte-exact")
        _require_occurrence_count(
            function["body"],
            ".deliver_tx_bytes(",
            1,
            label,
        )
    _require_ordered_symbols(
        check_tx,
        (
            "self.storage.latest_version() != u64::MAX",
            "let mut app = App::new(self.storage.latest_snapshot())",
            "BlockTxIndexingMode::NoIndex",
            ".deliver_tx_bytes(",
            "Ok(events) => HostTxResponse::accepted(events, Vec::new())",
            "Err(error) => HostTxResponse::rejected(error)",
        ),
        "HostExecution CheckTx state isolation",
    )
    _require_ordered_symbols(
        deliver_tx,
        (
            "self.phase == HostExecutionPhase::InBlock",
            "Transaction::decode_canonical(tx_bytes)",
            "self.resolve_host_withdrawals(&tx).await",
            ".deliver_tx_bytes(",
            "Ok(events) => HostTxResponse::accepted(events, withdrawals)",
            "Err(error) => HostTxResponse::rejected(error)",
        ),
        "HostExecution DeliverTx proof and withdrawal ordering",
    )

    all_functions = _rust_function_declarations(source)
    rejected = _one_rust_function(
        all_functions,
        "rejected",
        "HostExecution rejected response",
    )
    _require_ordered_symbols(
        rejected,
        (
            "code: 1",
            "log: format!(",
        ),
        "HostExecution rejected response",
    )
    require_runnable_test_declaration(
        canonical_repo_path(root, relative, "HostExecution CheckTx evidence"),
        "host_execution_check_tx_rejects_invalid_tx_without_entering_block",
        "HostExecution CheckTx evidence",
    )


def _validate_grpc_execution_frontdoors(root: Path) -> None:
    relative = "crates/bin/shieldd/src/grpc.rs"
    source = _read_acceptance_source(
        root,
        relative,
        "gRPC execution-client proof frontdoor",
    )
    service_impl = _balanced_rust_declaration_block(
        source,
        (
            r"^[ \t]*impl[ \t]+ExecutionClientService[ \t]+for[ \t]+"
            r"GrpcExecutionClient\b"
        ),
        "gRPC execution-client trait implementation",
    )
    functions = _rust_function_declarations(service_impl)
    method_roster = Counter(function["name"] for function in functions)
    if method_roster != EXPECTED_GRPC_EXECUTION_METHODS:
        reject(
            "gRPC execution-client trait method census drifted: "
            f"missing={list((EXPECTED_GRPC_EXECUTION_METHODS-method_roster).elements())}, "
            f"extra={list((method_roster-EXPECTED_GRPC_EXECUTION_METHODS).elements())}"
        )

    for name, request_type, lock_method in (
        ("check_tx", "CheckTxRequest", "read"),
        ("deliver_tx", "DeliverTxRequest", "write"),
    ):
        function = _one_rust_function(
            functions,
            name,
            f"gRPC {name} proof frontdoor",
        )
        if f"Request<{request_type}>" not in function["header"]:
            reject(f"gRPC {name} request type drifted")
        _require_ordered_symbols(
            function,
            (
                "self.service",
                f".{lock_method}()",
                ".await",
                f".{name}(request.into_inner())",
                ".await",
                ".map(Response::new)",
                ".map_err(status)",
            ),
            f"gRPC {name} ExecutionService delegation",
        )
        _require_occurrence_count(
            function["body"],
            f".{name}(request.into_inner())",
            1,
            f"gRPC {name} ExecutionService delegation",
        )
    require_runnable_test_declaration(
        canonical_repo_path(root, relative, "gRPC CheckTx evidence"),
        "grpc_execution_check_tx_rejects_invalid_transaction",
        "gRPC CheckTx evidence",
    )
    require_runnable_test_declaration(
        canonical_repo_path(root, relative, "gRPC DeliverTx evidence"),
        "grpc_execution_deliver_tx_rejects_invalid_transaction",
        "gRPC DeliverTx evidence",
    )

    constructor_impl = _balanced_rust_declaration_block(
        source,
        r"^[ \t]*impl[ \t]+GrpcExecutionClient\b",
        "gRPC execution-client constructor",
    )
    constructor_functions = _rust_function_declarations(constructor_impl)
    if Counter(
        function["name"] for function in constructor_functions
    ) != Counter({"new": 1, "close": 1}):
        reject("gRPC execution-client lifecycle API census drifted")
    constructor = _one_rust_function(
        constructor_functions,
        "new",
        "gRPC execution-client constructor",
    )
    _require_ordered_symbols(
        constructor,
        (
            "service: Arc::new(RwLock::new(service))",
        ),
        "gRPC execution-client service wiring",
    )
    close = _one_rust_function(
        constructor_functions,
        "close",
        "gRPC execution-client shutdown",
    )
    _require_ordered_symbols(
        close,
        ("self.service.write().await.close().await",),
        "gRPC execution-client shutdown",
    )

    service_relative = "crates/bin/shieldd/src/service.rs"
    service_source = _read_acceptance_source(
        root,
        service_relative,
        "execution service proof frontdoor",
    )
    execution_impl = _balanced_rust_declaration_block(
        service_source,
        r"^[ \t]*impl[ \t]+ExecutionService\b",
        "ExecutionService implementation",
    )
    execution_functions = _rust_function_declarations(execution_impl)
    execution_public = {
        function["name"]
        for function in execution_functions
        if function["visibility"] == "pub"
    }
    if execution_public != EXPECTED_EXECUTION_SERVICE_PUBLIC_METHODS:
        reject(
            "ExecutionService public method census drifted: "
            f"missing={sorted(EXPECTED_EXECUTION_SERVICE_PUBLIC_METHODS-execution_public)}, "
            f"extra={sorted(execution_public-EXPECTED_EXECUTION_SERVICE_PUBLIC_METHODS)}"
        )
    for name, request_type, execution_accessor, response_helper in (
        ("check_tx", "CheckTxRequest", "as_ref", "check_tx_response"),
        ("deliver_tx", "DeliverTxRequest", "as_mut", "deliver_tx_response"),
    ):
        function = _one_rust_function(
            execution_functions,
            name,
            f"ExecutionService {name} proof frontdoor",
        )
        if f"request: {request_type}" not in function["header"]:
            reject(f"ExecutionService {name} request type drifted")
        _require_ordered_symbols(
            function,
            (
                f"self.execution.{execution_accessor}().ok_or_else(ServiceError::closed)?",
                f".{name}(&request.tx)",
                ".await",
                ".map_err(ServiceError::failed_precondition)?",
                f"{response_helper}(response).map_err(ServiceError::internal)",
            ),
            f"ExecutionService {name} HostExecution delegation",
        )
    service_functions = _rust_function_declarations(service_source)
    check_response = _one_rust_function(
        service_functions,
        "check_tx_response",
        "ExecutionService CheckTx response conversion",
    )
    deliver_response = _one_rust_function(
        service_functions,
        "deliver_tx_response",
        "ExecutionService DeliverTx response conversion",
    )
    for helper, label in (
        (check_response, "ExecutionService CheckTx response conversion"),
        (deliver_response, "ExecutionService DeliverTx response conversion"),
    ):
        _require_occurrence_count(helper["body"], "code: response.code", 1, label)
    _require_occurrence_count(
        deliver_response["body"],
        "withdrawals: encode_withdrawals(response.withdrawals)",
        1,
        "ExecutionService DeliverTx withdrawal propagation",
    )
    service_open = _one_rust_function(
        execution_functions,
        "open",
        "ExecutionService storage readiness",
    )
    _require_ordered_symbols(
        service_open,
        (
            "Storage::load(",
            "App::is_ready(storage.latest_snapshot()).await",
            "storage.release().await",
            "return Err(ServiceError::failed_precondition(",
            "Ok(Self::new(storage))",
        ),
        "ExecutionService storage readiness",
    )

    ffi_relative = "crates/bin/shieldd/src/ffi.rs"
    ffi_source = _read_acceptance_source(
        root,
        ffi_relative,
        "FFI execution-service proof frontdoor",
    )
    expected_ffi_methods = {
        "METHOD_INIT_GENESIS": 1,
        "METHOD_BEGIN_BLOCK": 2,
        "METHOD_DEPOSIT": 3,
        "METHOD_CHECK_TX": 4,
        "METHOD_DELIVER_TX": 5,
        "METHOD_END_BLOCK": 6,
        "METHOD_COMMIT": 7,
        "METHOD_ROLLBACK": 8,
        "METHOD_EXPORT_GENESIS": 9,
        "METHOD_GET_COMMITTED_STATE": 10,
    }
    ffi_methods = {
        name: int(value)
        for name, value in re.findall(
            r"(?m)^const[ \t]+(METHOD_[A-Z_]+):[ \t]+u32[ \t]*=[ \t]*(\d+);",
            ffi_source,
        )
    }
    if ffi_methods != expected_ffi_methods:
        reject(
            "FFI execution method roster drifted: "
            f"expected={expected_ffi_methods}, actual={ffi_methods}"
        )
    ffi_functions = _rust_function_declarations(ffi_source)
    ffi_dispatch = _one_rust_function(
        ffi_functions,
        "dispatch",
        "FFI execution-service dispatch",
    )
    for constant, method in (
        ("METHOD_INIT_GENESIS", "init_genesis"),
        ("METHOD_BEGIN_BLOCK", "begin_block"),
        ("METHOD_DEPOSIT", "deposit"),
        ("METHOD_CHECK_TX", "check_tx"),
        ("METHOD_DELIVER_TX", "deliver_tx"),
        ("METHOD_END_BLOCK", "end_block"),
        ("METHOD_COMMIT", "commit"),
        ("METHOD_GET_COMMITTED_STATE", "get_committed_state"),
        ("METHOD_ROLLBACK", "rollback"),
        ("METHOD_EXPORT_GENESIS", "export_genesis"),
    ):
        _require_ordered_symbols(
            ffi_dispatch,
            (
                f"{constant} => service",
                f".{method}(decode(request)?)",
                ".await",
                ".map(|response| response.encode_to_vec())",
                ".map_err(FfiError::service)",
            ),
            f"FFI {method} ExecutionService delegation",
        )
    shieldd_call = {
        "name": "shieldd_call",
        "body": _balanced_rust_declaration_block(
            ffi_source,
            r"(?m)^pub[ \t]+extern[ \t]+fn[ \t]+shieldd_call\b",
            "FFI shared-service boundary",
        ),
    }
    _require_ordered_symbols(
        shieldd_call,
        (
            "handle.runtime.block_on(async",
            "handle.service.lock().await",
            "dispatch(&mut service, method, request).await",
        ),
        "FFI shared-service boundary",
    )
    require_runnable_test_declaration(
        canonical_repo_path(root, ffi_relative, "FFI CheckTx evidence"),
        "ffi_execution_check_tx_rejects_invalid_transaction",
        "FFI CheckTx evidence",
    )
    require_runnable_test_declaration(
        canonical_repo_path(root, ffi_relative, "FFI DeliverTx evidence"),
        "ffi_execution_deliver_tx_rejects_invalid_transaction",
        "FFI DeliverTx evidence",
    )

    proto_relative = (
        "proto/shieldd/shieldd/execution_client/v1/"
        "execution_client.proto"
    )
    proto_source = _read_acceptance_source(
        root,
        proto_relative,
        "gRPC execution-client service definition",
    )
    service_match = re.search(
        r"\bservice\s+ExecutionClientService\s*\{(?P<body>.*?)^\}",
        proto_source,
        re.MULTILINE | re.DOTALL,
    )
    if service_match is None:
        reject("gRPC execution-client service definition is missing")
    proto_methods = Counter(
        re.findall(r"(?m)^[ \t]*rpc[ \t]+([A-Za-z0-9_]+)\s*\(", service_match.group("body"))
    )
    expected_proto_methods = Counter(EXPECTED_GRPC_PROTO_METHODS)
    if proto_methods != expected_proto_methods:
        reject(
            "gRPC execution-client proto method census drifted: "
            f"missing={list((expected_proto_methods-proto_methods).elements())}, "
            f"extra={list((proto_methods-expected_proto_methods).elements())}"
        )

    generated_relative = (
        "crates/proto/src/gen/shieldd.execution_client.v1.rs"
    )
    generated_source = _read_acceptance_source(
        root,
        generated_relative,
        "generated gRPC execution-client trait",
    )
    generated_trait = _balanced_rust_declaration_block(
        generated_source,
        r"^[ \t]*pub[ \t]+trait[ \t]+ExecutionClientService\b",
        "generated gRPC execution-client trait",
    )
    generated_methods = Counter(
        re.findall(
            r"(?m)^[ \t]*async[ \t]+fn[ \t]+"
            r"([A-Za-z_][A-Za-z0-9_]*)\s*\(",
            generated_trait,
        )
    )
    expected_generated_methods = Counter(
        method.lower()
        if method in {"Commit", "Deposit", "Rollback"}
        else re.sub(r"(?<!^)(?=[A-Z])", "_", method).lower()
        for method in EXPECTED_GRPC_PROTO_METHODS
    )
    if generated_methods != expected_generated_methods:
        reject("generated gRPC execution-client trait method census drifted")

    main_relative = "crates/bin/shieldd/src/main.rs"
    main_source = _read_acceptance_source(
        root,
        main_relative,
        "shieldd gRPC server registration",
    )
    start = _one_rust_function(
        _rust_function_declarations(main_source),
        "start",
        "shieldd gRPC server registration",
    )
    _require_ordered_symbols(
        start,
        (
            "ExecutionService::open(&db).await",
            "GrpcExecutionClient::new(service)",
            "Server::builder()",
            ".add_service(ExecutionClientServiceServer::new(grpc.clone()))",
            ".serve_with_shutdown(bind, shutdown_signal())",
            "grpc",
            ".close()",
        ),
        "shieldd gRPC server registration",
    )
    for symbol in (
        "ExecutionClientServiceServer::new(",
        "GrpcExecutionClient::new(",
        ".add_service(",
        ".serve_with_shutdown(",
        ".close()",
    ):
        _require_occurrence_count(
            start["body"],
            symbol,
            1,
            "shieldd gRPC server registration",
        )
    _require_manifest_without_benchmark_helpers(
        root,
        "crates/bin/shieldd/Cargo.toml",
        "shieldd",
    )


def _validate_abci_server_wiring(root: Path) -> None:
    server_relative = "crates/core/app/src/server.rs"
    server_source = _read_acceptance_source(
        root,
        server_relative,
        "deployed ABCI server wiring",
    )
    _require_occurrence_count(
        server_source,
        '#[cfg(any(test, feature = "benchmark-helpers"))]\nmod diagnostics;',
        1,
        "ABCI diagnostic cfg boundary",
    )
    server_new = _one_rust_function(
        _rust_function_declarations(server_source),
        "new",
        "deployed ABCI server constructor",
    )
    _require_ordered_symbols(
        server_new,
        (
            "let stateless_cache = Arc::new(StatelessCache::new())",
            "Consensus::new_with_cache(",
            "storage.clone()",
            "stateless_cache.clone()",
            "let mempool =",
            "let stateless_cache = stateless_cache.clone()",
            "Mempool::new(storage, stateless_cache, queue).run().await",
            ".consensus(consensus)",
            ".mempool(mempool)",
            ".finish()",
        ),
        "deployed ABCI shared-cache wiring",
    )
    for symbol, expected in (
        ("Arc::new(StatelessCache::new())", 1),
        ("Consensus::new_with_cache(", 1),
        ("Mempool::new(storage, stateless_cache, queue).run().await", 1),
        (".consensus(consensus)", 1),
        (".mempool(mempool)", 1),
        (".finish()", 1),
    ):
        _require_occurrence_count(
            server_new["body"],
            symbol,
            expected,
            "deployed ABCI shared-cache wiring",
        )

    pd_relative = "crates/bin/pd/src/main.rs"
    pd_source = _read_acceptance_source(
        root,
        pd_relative,
        "deployed pd ABCI callsite",
    )
    pd_functions = _rust_function_declarations(pd_source)
    abci_callers = _rust_call_owner_census(
        pd_source,
        pd_functions,
        r"\bshieldd_sdk_app::server::new\s*\(",
        "deployed pd ABCI callsite census",
    )
    if abci_callers != Counter({"main": 1}):
        reject(
            "deployed pd ABCI callsite census drifted: "
            f"actual={dict(abci_callers)}"
        )
    pd_start = _one_rust_function(
        pd_functions,
        "main",
        "deployed pd ABCI callsite",
    )
    _require_ordered_symbols(
        pd_start,
        (
            "App::is_ready(storage.latest_snapshot()).await",
            "tokio::task::spawn(",
            "shieldd_sdk_app::server::new(storage.clone()).listen_tcp(abci_bind)",
        ),
        "deployed pd ABCI callsite",
    )
    _require_manifest_without_benchmark_helpers(
        root,
        "crates/bin/pd/Cargo.toml",
        "pd",
    )

    consensus_relative = "crates/core/app/src/server/consensus.rs"
    consensus_source = _read_acceptance_source(
        root,
        consensus_relative,
        "ABCI Consensus proof frontdoor",
    )
    consensus_impl = _balanced_rust_declaration_block(
        consensus_source,
        r"^[ \t]*impl[ \t]+Consensus\b",
        "ABCI Consensus implementation",
    )
    consensus_functions = _rust_function_declarations(consensus_impl)
    consensus_roster = Counter(
        function["name"] for function in consensus_functions
    )
    if consensus_roster != EXPECTED_CONSENSUS_METHODS:
        reject(
            "ABCI Consensus method census drifted: "
            f"missing={list((EXPECTED_CONSENSUS_METHODS-consensus_roster).elements())}, "
            f"extra={list((consensus_roster-EXPECTED_CONSENSUS_METHODS).elements())}"
        )
    consensus_run = _one_rust_function(
        consensus_functions,
        "run",
        "ABCI Consensus dispatch",
    )
    _require_ordered_symbols(
        consensus_run,
        (
            "rsp_sender.send(Ok(match req",
            "Request::PrepareProposal(proposal)",
            "self.prepare_proposal(proposal)",
            "Err(e)",
            "response::PrepareProposal { txs: vec![] }",
            "Request::ProcessProposal(proposal)",
            "self.process_proposal(proposal)",
            "Err(e)",
            "response::ProcessProposal::Reject",
            "Request::DeliverTx(deliver_tx)",
            "self.deliver_tx(deliver_tx)",
        ),
        "ABCI Consensus fail-closed response mapping",
    )
    for request_variant, handler in (
        ("Request::PrepareProposal(", "self.prepare_proposal("),
        ("Request::ProcessProposal(", "self.process_proposal("),
        ("Request::DeliverTx(", "self.deliver_tx("),
    ):
        _require_occurrence_count(
            consensus_run["body"],
            request_variant,
            1,
            "ABCI Consensus dispatch",
        )
        _require_occurrence_count(
            consensus_run["body"],
            handler,
            1,
            "ABCI Consensus dispatch",
        )

    handler_specs = (
        (
            "prepare_proposal",
            "prepare_proposal_v2_profiled",
            (
                ".prepare_proposal_v2_profiled("
                "proposal, Some(self.stateless_cache.as_ref()), false)"
            ),
        ),
        (
            "process_proposal",
            "process_proposal_v2_profiled",
            (
                ".process_proposal_v2_profiled("
                "proposal, Some(self.stateless_cache.as_ref()), None, false,)"
            ),
        ),
        (
            "deliver_tx",
            "deliver_tx_bytes",
            (
                ".deliver_tx_bytes(deliver_tx.tx.as_ref(), "
                "Some(self.stateless_cache.as_ref()))"
            ),
        ),
    )
    for handler_name, call_name, exact_call in handler_specs:
        handler = _one_rust_function(
            consensus_functions,
            handler_name,
            f"ABCI Consensus {handler_name} canonical App call",
        )
        _require_occurrence_count(
            handler["body"],
            f".{call_name}(",
            1,
            f"ABCI Consensus {handler_name} canonical App call",
        )
        if re.sub(r"\s+", "", exact_call) not in re.sub(
            r"\s+", "", _normalize_rust_fragment(handler["body"])
        ):
            reject(
                f"ABCI Consensus {handler_name} does not pass the shared "
                "cache to the canonical App call"
            )
    new_inner = _one_rust_function(
        consensus_functions,
        "new_inner",
        "ABCI ProcessProposal diagnostic cfg boundary",
    )
    _require_ordered_symbols(
        new_inner,
        (
            "#[cfg(any(test, feature =",
            "super::diagnostics::force_process_proposal_profile()",
            "#[cfg(not(any(test, feature =",
            "let force_process_proposal_profile = false",
        ),
        "ABCI ProcessProposal diagnostic cfg boundary",
    )
    process_proposal = _one_rust_function(
        consensus_functions,
        "process_proposal",
        "ABCI ProcessProposal prepared-proposal reuse",
    )
    _require_ordered_symbols(
        _one_rust_function(
            _rust_function_declarations(consensus_source),
            "can_reuse_prepared_proposal",
            "ABCI prepared-proposal reuse predicate",
        ),
        (
            "prepared_height == Some(proposal_height)",
            "prepared_digests.contains(proposal_digest)",
            "!force_profile",
        ),
        "ABCI prepared-proposal reuse predicate",
    )
    _require_ordered_symbols(
        process_proposal,
        (
            "let proposal_digest = Self::proposal_digest(&proposal.txs)",
            "can_reuse_prepared_proposal(",
            "self.prepared_proposal_height",
            "&self.prepared_proposal_digests",
            "&proposal_digest",
            "self.force_process_proposal_profile",
            "return Ok(response::ProcessProposal::Accept)",
            "App::new(self.storage.latest_snapshot())",
            ".process_proposal_v2_profiled(",
            "Some(self.stateless_cache.as_ref())",
            "None",
            "false",
        ),
        "ABCI ProcessProposal prepared-proposal reuse",
    )
    deliver_tx = _one_rust_function(
        consensus_functions,
        "deliver_tx",
        "ABCI DeliverTx response mapping",
    )
    _require_ordered_symbols(
        deliver_tx,
        (
            "match rsp",
            "Ok(events)",
            "response::DeliverTx",
            "Err(e)",
            "code: 1.into()",
            "log: format!(",
        ),
        "ABCI DeliverTx response mapping",
    )

    mempool_relative = "crates/core/app/src/server/mempool.rs"
    mempool_source = _read_acceptance_source(
        root,
        mempool_relative,
        "ABCI Mempool proof frontdoor",
    )
    mempool_impl = _balanced_rust_declaration_block(
        mempool_source,
        r"^[ \t]*impl[ \t]+Mempool\b",
        "ABCI Mempool implementation",
    )
    mempool_functions = _rust_function_declarations(mempool_impl)
    mempool_roster = Counter(
        function["name"] for function in mempool_functions
    )
    if mempool_roster != EXPECTED_MEMPOOL_METHODS:
        reject(
            "ABCI Mempool method census drifted: "
            f"missing={list((EXPECTED_MEMPOOL_METHODS-mempool_roster).elements())}, "
            f"extra={list((mempool_roster-EXPECTED_MEMPOOL_METHODS).elements())}"
        )
    proof_functions = {
        function["name"]
        for function in mempool_functions
        if (
            function["name"] == "run"
            or "deliver_tx_bytes" in function["body"]
            or "check_tx_with_state" in function["body"]
        )
    }
    if proof_functions != {"check_tx_with_state", "run"}:
        reject(
            "ABCI Mempool production proof-function roster drifted: "
            f"actual={sorted(proof_functions)}"
        )
    check_callers = _rust_call_owner_census(
        mempool_impl,
        mempool_functions,
        r"\bSelf::check_tx_with_state\s*\(",
        "ABCI Mempool CheckTx helper caller census",
    )
    if check_callers != Counter({"run": 1}):
        reject(
            "ABCI Mempool CheckTx helper caller census drifted: "
            f"actual={dict(check_callers)}"
        )
    app_callers = _rust_call_owner_census(
        mempool_impl,
        mempool_functions,
        r"\.deliver_tx_bytes_v2_profiled\s*\(",
        "ABCI Mempool canonical App caller census",
    )
    if app_callers != Counter({"check_tx_with_state": 1}):
        reject(
            "ABCI Mempool canonical App caller census drifted: "
            f"actual={dict(app_callers)}"
        )
    mempool_check = _one_rust_function(
        mempool_functions,
        "check_tx_with_state",
        "ABCI Mempool CheckTx response mapping",
    )
    _require_ordered_symbols(
        mempool_check,
        (
            "App::new(snapshot)",
            ".deliver_tx_bytes_v2_profiled(tx_bytes.as_ref(), Some(stateless_cache.as_ref()))",
            "Ok((events, profile))",
            "Ok(Response::CheckTx(CheckTxRsp",
            "Err(e)",
            "code: 1.into()",
            "log: format!(",
        ),
        "ABCI Mempool CheckTx response mapping",
    )
    mempool_run = _one_rust_function(
        mempool_functions,
        "run",
        "ABCI Mempool CheckTx dispatch",
    )
    _require_ordered_symbols(
        mempool_run,
        (
            "Self::check_tx_with_state(",
            ".catch_unwind()",
            "Err(panic_payload)",
            "code: 1.into()",
            "let _ = rsp_sender.send(result)",
        ),
        "ABCI Mempool fail-closed dispatch",
    )


def _reject_consensus_diagnostic_io(
    sources: tuple[tuple[str, str], ...],
) -> None:
    forbidden_patterns = {
        "environment access": (
            r"\b(?:std|tokio)\s*::\s*env\b|\benv\s*::"
        ),
        "filesystem access": (
            r"\b(?:std|tokio)\s*::\s*fs\b|\bfs\s*::"
        ),
        "grouped diagnostic import": (
            r"\b(?:std|tokio)\s*::\s*\{[^;{}]*\b(?:env|fs)\b"
        ),
        "standard-library alias": (
            r"\b(?:use|extern\s+crate)\s+(?:::\s*)?"
            r"(?:std|tokio)\s+as\s+"
            r"[A-Za-z_][A-Za-z0-9_]*\s*;"
            r"|\b(?:std|tokio)\s*::\s*\{[^;{}]*"
            r"\bself\s+as\s+[A-Za-z_][A-Za-z0-9_]*"
        ),
        "file constructor": r"\b(?:File|OpenOptions)::",
    }
    for relative, source in sources:
        scrubbed = _without_source_comments(source)
        production = list(scrubbed)
        for start, end, expressions in _rust_cfg_scope_ranges(
            _without_source_comments(source, mask_literals=False),
            scrubbed,
        ):
            if any(
                re.search(r"\btest\b|\bfeature\s*=\s*\"benchmark-helpers\"", expression)
                for expression in expressions
            ):
                production[start:end] = " " * (end - start)
        scrubbed = "".join(production)
        for kind, pattern in forbidden_patterns.items():
            if re.search(pattern, scrubbed, re.IGNORECASE):
                reject(
                    "consensus diagnostic I/O is forbidden: "
                    f"{relative} contains {kind}"
                )


def _reject_rust_enum_catchall(source: str, label: str) -> None:
    """Reject wildcard or binding arms that absorb future enum variants."""

    catchall = re.compile(
        r"""
        (?:^|[|,{])
        \s*
        (?:
            _
          |
            (?:&\s*)?
            (?:ref\s+|mut\s+)?
            [a-z_][A-Za-z0-9_]*
            (?:\s*@\s*_)?
          |
            Some\s*\(\s*
            (?:
                _
              |
                \.\.
              |
                (?:&\s*)?
                (?:ref\s+|mut\s+)?
                [a-z_][A-Za-z0-9_]*
                (?:\s*@\s*_)?
            )
            \s*\)
        )
        \s*
        (?:if\b[^=]*?)?
        =>
        """,
        re.MULTILINE | re.VERBOSE,
    )
    if catchall.search(source):
        reject(f"{label} contains a future-variant catch-all arm")


def _tuple_enum_variants(
    root: Path,
    *,
    relative_path: str,
    enum_name: str,
    label: str,
) -> set[str]:
    source = _read_acceptance_source(
        root,
        relative_path,
        label,
    )
    declaration = _balanced_rust_declaration_block(
        source,
        rf"^[ \t]*pub[ \t]+enum[ \t]+{re.escape(enum_name)}\b",
        label,
    )
    scrubbed = _without_source_comments(declaration)
    body_start = scrubbed.find("{")
    body_end = scrubbed.rfind("}")
    if body_start < 0 or body_end <= body_start:
        reject(f"{label}: enum body is malformed")
    body = scrubbed[body_start + 1 : body_end]
    tuple_variant = re.compile(
        r"(?m)^[ \t]*(?P<name>[A-Z][A-Za-z0-9_]*)[ \t]*"
        r"\([^()\r\n]+\)[ \t]*,[ \t]*(?:\r?\n|$)"
    )
    variants = [match.group("name") for match in tuple_variant.finditer(body)]
    unparsed = tuple_variant.sub("", body)
    if unparsed.strip():
        reject(
            f"{label}: enum has an unsupported or unreviewed "
            f"variant declaration: {unparsed.strip()!r}"
        )
    if not variants or len(set(variants)) != len(variants):
        reject(
            f"{label}: enum census is empty or contains duplicate "
            "variant declarations"
        )
    return set(variants)


def _action_enum_variants(root: Path) -> set[str]:
    model = ACTION_AUTHORIZATION_MODEL
    return _tuple_enum_variants(
        root,
        relative_path=str(model["action_enum_path"]),
        enum_name="Action",
        label="transaction Action authorization census",
    )


def _action_plan_enum_variants(root: Path) -> set[str]:
    model = ACTION_AUTHORIZATION_MODEL
    return _tuple_enum_variants(
        root,
        relative_path=str(model["action_plan_enum_path"]),
        enum_name="ActionPlan",
        label="transaction ActionPlan authorization census",
    )


def _validate_action_authorization_block(
    root: Path,
    block: dict[str, Any],
) -> None:
    label = str(block["label"])
    source = _read_acceptance_source(
        root,
        str(block["path"]),
        label,
    )
    declaration = _balanced_rust_declaration_block(
        source,
        str(block["declaration"]),
        label,
    )
    function = _one_rust_function(
        _rust_function_declarations(declaration),
        str(block["function"]),
        label,
    )
    scrubbed_function = dict(function)
    scrubbed_function["body"] = _without_source_comments(
        declaration[int(function["body_start"]) : int(function["end"])],
        mask_literals=False,
    )
    ordered = tuple(str(token) for token in block["ordered"])
    if not ordered:
        reject(f"{label}: authorization evidence cannot be empty")
    _require_ordered_symbols(scrubbed_function, ordered, label)


def _proof_count_variants(
    source: str,
    *,
    enum_name: str,
    function_name: str,
    label: str,
) -> tuple[set[str], set[str], str]:
    function = _one_rust_function(
        _rust_function_declarations(source),
        function_name,
        label,
    )
    body = str(function["body"])
    arm_pattern = re.compile(
        rf"(?P<patterns>{re.escape(enum_name)}::"
        r"[A-Za-z_][A-Za-z0-9_]*\s*\(\s*_\s*\)"
        rf"(?:\s*\|\s*{re.escape(enum_name)}::"
        r"[A-Za-z_][A-Za-z0-9_]*\s*\(\s*_\s*\))*)"
        r"\s*=>\s*(?P<count>[01])\s*,"
    )
    arms = list(arm_pattern.finditer(body))
    counts = Counter(match.group("count") for match in arms)
    if counts != Counter({"0": 1, "1": 1}):
        reject(
            f"{label}: proof-count arm census drifted: "
            f"actual={dict(counts)}"
        )
    by_count: dict[str, set[str]] = {"0": set(), "1": set()}
    for match in arms:
        variants = set(
            re.findall(
                rf"\b{re.escape(enum_name)}::"
                r"([A-Za-z_][A-Za-z0-9_]*)",
                match.group("patterns"),
            )
        )
        by_count[match.group("count")].update(variants)
    all_references = set(
        re.findall(
            rf"\b{re.escape(enum_name)}::"
            r"([A-Za-z_][A-Za-z0-9_]*)",
            body,
        )
    )
    if by_count["0"] & by_count["1"]:
        reject(f"{label}: one variant has two proof counts")
    if by_count["0"] | by_count["1"] != all_references:
        reject(
            f"{label}: proof-count variants escape the exact 0/1 arms"
        )
    _reject_rust_enum_catchall(body, label)
    return by_count["1"], by_count["0"], body


def _action_plan_roster_function(
    root: Path,
    spec: dict[str, Any],
    expected_variants: set[str],
) -> str:
    label = str(spec["label"])
    source = _read_acceptance_source(root, str(spec["path"]), label)
    declaration = _balanced_rust_declaration_block(
        source,
        str(spec["declaration"]),
        label,
    )
    function = _one_rust_function(
        _rust_function_declarations(declaration),
        str(spec["function"]),
        label,
    )
    body = _without_source_comments(
        str(function["body"]),
        mask_literals=False,
    )
    references = set(
        re.findall(r"\bActionPlan::([A-Za-z_][A-Za-z0-9_]*)", body)
    )
    if references != expected_variants:
        reject(
            f"{label}: ActionPlan census drifted: "
            f"unhandled={sorted(expected_variants-references)}, "
            f"stale={sorted(references-expected_variants)}"
        )
    if bool(spec.get("strict_catchall", True)):
        _reject_rust_enum_catchall(body, label)
    return body


def _validate_action_plan_construction_model(
    root: Path,
    *,
    action_variants: set[str],
) -> None:
    model = ACTION_AUTHORIZATION_MODEL
    action_plan_variants = _action_plan_enum_variants(root)
    mapping = {
        str(action_plan): str(action)
        for action_plan, action in model["action_plan_to_action"].items()
    }
    if set(mapping) != action_plan_variants:
        reject(
            "transaction ActionPlan authorization census drifted: "
            f"unmapped={sorted(action_plan_variants-set(mapping))}, "
            f"stale={sorted(set(mapping)-action_plan_variants)}"
        )
    mapped_actions = list(mapping.values())
    non_plan_actions = set(model["non_plan_actions"])
    if (
        set(mapped_actions) != action_variants - non_plan_actions
        or len(mapped_actions) != len(set(mapped_actions))
        or not non_plan_actions <= action_variants
    ):
        reject(
            "transaction ActionPlan-to-Action authorization mapping must "
            "be a bijection over the exact user-plannable Action roster"
        )

    spend_bearing = set(model["spend_bearing_action_plans"])
    mapped_circuit_class = {
        action_plan
        for action_plan, action in mapping.items()
        if action
        in set(model["classes"]["circuit_and_envelope_authorized"])
    }
    if spend_bearing != mapped_circuit_class:
        reject(
            "ActionPlan spend-bearing census drifted from the "
            "circuit-and-envelope Action class"
        )

    roster_bodies: dict[str, str] = {}
    for spec in model["construction_roster_functions"]:
        label = str(spec["label"])
        if label in roster_bodies:
            reject(f"duplicate ActionPlan construction roster {label}")
        roster_bodies[label] = _action_plan_roster_function(
            root,
            spec,
            action_plan_variants,
        )

    spends_body = roster_bodies["ActionPlan real-spend census"]
    spend_arms = set(
        re.findall(
            r"ActionPlan::([A-Za-z_][A-Za-z0-9_]*)"
            r"\(\s*plan\s*\)\s*=>\s*&plan\.spends",
            spends_body,
        )
    )
    if spend_arms != spend_bearing:
        reject(
            "ActionPlan::spends real-spend arms drifted: "
            f"expected={sorted(spend_bearing)}, "
            f"actual={sorted(spend_arms)}"
        )

    plan_source = _read_acceptance_source(
        root,
        "crates/core/transaction/src/plan.rs",
        "TransactionPlan proof-bearing construction census",
    )
    plan_impl = _balanced_rust_declaration_block(
        plan_source,
        r"^[ \t]*impl[ \t]+TransactionPlan\b",
        "TransactionPlan proof-bearing construction census",
    )
    proof_plans, no_proof_plans, _ = _proof_count_variants(
        plan_impl,
        enum_name="ActionPlan",
        function_name="num_proofs",
        label="TransactionPlan proof-bearing construction census",
    )
    if proof_plans != spend_bearing:
        reject(
            "TransactionPlan proof-bearing census drifted from "
            "ActionPlan::spends"
        )
    if no_proof_plans != action_plan_variants - spend_bearing:
        reject(
            "TransactionPlan zero-proof ActionPlan census drifted"
        )

    binding_block = dict(model["construction_binding_block"])
    _validate_action_authorization_block(root, binding_block)
    binding_source = _read_acceptance_source(
        root,
        str(binding_block["path"]),
        str(binding_block["label"]),
    )
    binding_declaration = _balanced_rust_declaration_block(
        binding_source,
        str(binding_block["declaration"]),
        str(binding_block["label"]),
    )
    binding_function = _one_rust_function(
        _rust_function_declarations(binding_declaration),
        str(binding_block["function"]),
        str(binding_block["label"]),
    )
    binding_body = _without_source_comments(
        binding_declaration[
            int(binding_function["body_start"]) : int(binding_function["end"])
        ],
        mask_literals=False,
    )
    binding_references = set(
        re.findall(
            r"\bActionPlan::([A-Za-z_][A-Za-z0-9_]*)",
            binding_body,
        )
    )
    if binding_references != action_plan_variants:
        reject(
            "TransactionPlan authorization-data alignment ActionPlan "
            "census drifted"
        )
    normalized_binding = _normalize_rust_fragment(
        binding_body
    )
    if (
        "_ => anyhow::bail!(" not in normalized_binding
        or "does not match its ActionPlan variant" not in normalized_binding
    ):
        reject(
            "TransactionPlan authorization-data alignment lacks a "
            "fail-closed mismatch arm"
        )

    consumer_labels: set[str] = set()
    for block in model["construction_consumers"]:
        label = str(block["label"])
        if label in consumer_labels:
            reject(f"duplicate ActionPlan construction consumer {label}")
        consumer_labels.add(label)
        _validate_action_authorization_block(root, block)

    for relative_path, symbol in model["construction_tests"]:
        require_runnable_test_declaration(
            canonical_repo_path(
                root,
                str(relative_path),
                "ActionPlan construction regression",
            ),
            str(symbol),
            "ActionPlan construction regression",
            repository_root=root,
        )


def _validate_ibc_action_authorization(
    root: Path,
    *,
    top_level_stateless: str,
    top_level_execute: str,
    seen_block_labels: set[str],
) -> None:
    model = ACTION_AUTHORIZATION_MODEL["ibc_authorization"]
    expected_variants = set(model["variants"])
    if tuple(sorted(expected_variants)) != tuple(model["variants"]):
        reject("IBC relay authorization variant roster must be sorted")

    top_level_stateless_fragment = _normalize_rust_fragment(
        "Action::IbcRelay(action) => { "
        "action .clone() "
        ".with_handler::<Ics20Transfer, ShielddHost>() "
        ".check_stateless(()) .await }"
    )
    top_level_execute_fragment = _normalize_rust_fragment(
        "Action::IbcRelay(action) => { "
        "action .clone() "
        ".with_handler::<Ics20Transfer, ShielddHost>() "
        ".check_and_execute(state) .await }"
    )
    if top_level_stateless_fragment not in top_level_stateless:
        reject(
            "IbcRelay: top-level stateless dispatch no longer reaches the "
            "typed IBC handler"
        )
    if top_level_execute_fragment not in top_level_execute:
        reject(
            "IbcRelay: top-level execution dispatch no longer reaches the "
            "typed IBC handler"
        )

    profiled_source = _read_acceptance_source(
        root,
        str(ACTION_AUTHORIZATION_MODEL["profiled_execution_path"]),
        "profiled IBC execution authorization",
    )
    profiled_function = _one_rust_function(
        _rust_function_declarations(profiled_source),
        "check_and_execute_profiled",
        "profiled IBC execution authorization",
    )
    _require_ordered_symbols(
        profiled_function,
        (
            "Action::IbcRelay(action)",
            "let relay = action.clone().with_handler::<"
            "Ics20Transfer, ShielddHost>();",
            "let execute = relay.check_and_execute(&mut state);",
            "execute.instrument(span).await?;",
            "execute.await?;",
        ),
        "profiled IBC execution authorization",
    )

    dispatch_source = _read_acceptance_source(
        root,
        str(model["dispatch_path"]),
        "IBC relay authorization dispatch",
    )
    dispatch_functions = _rust_function_declarations(dispatch_source)
    stateless = _one_rust_function(
        dispatch_functions,
        "check_stateless",
        "IBC relay stateless authorization dispatch",
    )
    historical = _one_rust_function(
        dispatch_functions,
        "check_historical",
        "IBC relay historical authorization dispatch",
    )
    execute = _one_rust_function(
        dispatch_functions,
        "check_and_execute",
        "IBC relay execution authorization dispatch",
    )
    for function, label in (
        (stateless, "IBC relay stateless authorization dispatch"),
        (execute, "IBC relay execution authorization dispatch"),
    ):
        actual = set(
            re.findall(
                r"\bIbcRelay::([A-Za-z_][A-Za-z0-9_]*)",
                str(function["body"]),
            )
        )
        if actual != expected_variants:
            reject(
                f"{label} variant census drifted: "
                f"missing={sorted(expected_variants-actual)}, "
                f"extra={sorted(actual-expected_variants)}"
            )
        _reject_rust_enum_catchall(str(function["body"]), label)

    stateless_body = _normalize_rust_fragment(
        dispatch_source[
            int(stateless["body_start"]) : int(stateless["end"])
        ]
    )
    execute_body = _normalize_rust_fragment(
        dispatch_source[int(execute["body_start"]) : int(execute["end"])]
    )
    for variant in sorted(expected_variants - {"Unknown"}):
        stateless_fragment = _normalize_rust_fragment(
            f"IbcRelay::{variant}(msg) => "
            "msg.check_stateless::<AH>().await?"
        )
        execute_fragment = _normalize_rust_fragment(
            f"IbcRelay::{variant}(msg) => msg "
            ".try_execute::<S, AH, HI>(state) .await .context("
        )
        if stateless_fragment not in stateless_body:
            reject(
                f"IbcRelay::{variant}: stateless authorization dispatch "
                "drifted"
            )
        if execute_fragment not in execute_body:
            reject(
                f"IbcRelay::{variant}: execution authorization dispatch "
                "drifted"
            )
    for body, label in (
        (stateless_body, "stateless"),
        (execute_body, "execution"),
    ):
        if (
            "IbcRelay::Unknown(msg)" not in body
            or "anyhow::bail!(" not in body
        ):
            reject(f"IBC relay {label} dispatch no longer rejects Unknown")
    historical_original = dict(historical)
    historical_original["body"] = _without_source_comments(
        dispatch_source[
            int(historical["body_start"]) : int(historical["end"])
        ],
        mask_literals=False,
    )
    _require_ordered_symbols(
        historical_original,
        (
            "state.get_ibc_params().await?.ibc_enabled",
            '"transaction contains IBC actions, but IBC is not enabled"',
        ),
        "IBC relay historical authorization dispatch",
    )

    evidence_blocks = tuple(model["evidence_blocks"])
    if len(evidence_blocks) < 10:
        reject("IBC authorization mechanism evidence roster is incomplete")
    mechanism_tokens = {
        token
        for block in evidence_blocks
        for token in block["ordered"]
    }
    required_mechanisms = {
        "verifier.verify_update_header(",
        ".verify_client_upgrade_proof::<HI>(",
        "verify_misbehavior_header::<&S, HI>(",
        "proof_verification::verify_connection_state(",
        ".verify_channel_proof(",
        ".verify_packet_recv_proof::<HI>(&connection, self)",
        ".verify_packet_ack_proof::<HI>(&connection, self)",
        ".verify_packet_timeout_proof::<HI>(&connection, self)",
        ".verify_packet_timeout_absence_proof::<HI>(&connection, self)",
    }
    missing_mechanisms = required_mechanisms - mechanism_tokens
    if missing_mechanisms:
        reject(
            "IBC authorization mechanism evidence is incomplete: "
            f"missing={sorted(missing_mechanisms)}"
        )
    for block in evidence_blocks:
        label = str(block["label"])
        if label in seen_block_labels:
            reject(f"duplicate action authorization evidence label {label}")
        seen_block_labels.add(label)
        _validate_action_authorization_block(root, block)


def validate_action_authorization_model(root: Path) -> None:
    """Validate the closed-world authorization class of every Action variant."""

    model = ACTION_AUTHORIZATION_MODEL
    classes = model["classes"]
    expected_class_names = {
        "circuit_and_envelope_authorized",
        "direct_signature_and_state_authorized",
        "internal_consensus_only",
        "permissionless_protocol_authorized",
    }
    if set(classes) != expected_class_names:
        reject(
            "transaction Action authorization class roster drifted: "
            f"expected={sorted(expected_class_names)}, "
            f"actual={sorted(classes)}"
        )
    classified: list[str] = []
    for class_name in sorted(classes):
        members = tuple(str(member) for member in classes[class_name])
        if not members or tuple(sorted(members)) != members:
            reject(
                f"transaction Action authorization class {class_name} "
                "must be a nonempty sorted roster"
            )
        classified.extend(members)
    duplicates = sorted(
        variant
        for variant, count in Counter(classified).items()
        if count != 1
    )
    if duplicates:
        reject(
            "transaction Action variants have multiple authorization "
            f"classes: {duplicates}"
        )
    enum_variants = _action_enum_variants(root)
    classified_variants = set(classified)
    if enum_variants != classified_variants:
        reject(
            "transaction Action authorization census drifted: "
            f"unclassified={sorted(enum_variants-classified_variants)}, "
            f"stale={sorted(classified_variants-enum_variants)}"
        )
    _validate_action_plan_construction_model(
        root,
        action_variants=enum_variants,
    )

    proof_count_source = _read_acceptance_source(
        root,
        str(model["proof_count_path"]),
        "Transaction proof-bearing Action census",
    )
    proof_variants, no_proof_variants, proof_count_body = (
        _proof_count_variants(
            proof_count_source,
            enum_name="Action",
            function_name="num_proofs",
            label="Transaction proof-bearing Action census",
        )
    )
    circuit_class = set(classes["circuit_and_envelope_authorized"])
    if proof_variants != circuit_class:
        reject(
            "circuit-and-envelope Action class drifted from "
            "Transaction::num_proofs: "
            f"class_only={sorted(circuit_class-proof_variants)}, "
            f"proof_count_only={sorted(proof_variants-circuit_class)}"
        )
    if no_proof_variants != enum_variants - circuit_class:
        reject(
            "Transaction::num_proofs zero-proof Action census drifted: "
            f"expected={sorted(enum_variants-circuit_class)}, "
            f"actual={sorted(no_proof_variants)}"
        )
    internal_class = set(classes["internal_consensus_only"])
    if internal_class != {"AggregateBundle"} or not internal_class <= set(
        model["non_plan_actions"]
    ):
        reject("internal consensus-only Action census drifted")
    fee_proof_join = (
        "+ usize::from(self.transaction_body.fee_funding.is_some())"
    )
    _require_occurrence_count(
        proof_count_body,
        fee_proof_join,
        1,
        "Transaction fee-funding proof count",
    )
    binding_runtime_blocks = tuple(
        PROOF_BEARING_BINDING_AUTHORIZATION_MODEL["runtime_blocks"]
    )
    binding_runtime_tokens = {
        str(token)
        for block in binding_runtime_blocks
        for token in block["ordered"]
    }
    if "tx.num_proofs() == 0" not in binding_runtime_tokens:
        reject(
            "proof-bearing binding authorization is not joined to "
            "Transaction::num_proofs"
        )
    for block in binding_runtime_blocks:
        _validate_action_authorization_block(root, block)

    direct_class = tuple(classes["direct_signature_and_state_authorized"])
    direct_actions = tuple(model["direct_actions"])
    direct_roster = tuple(str(row["action"]) for row in direct_actions)
    if direct_roster != direct_class:
        reject(
            "direct transaction Action authorization evidence roster "
            f"drifted: expected={direct_class}, actual={direct_roster}"
        )

    dispatch_source = _read_acceptance_source(
        root,
        str(model["dispatch_path"]),
        "transaction Action authorization dispatch",
    )
    dispatch_impl = _balanced_rust_declaration_block(
        dispatch_source,
        r"^[ \t]*impl[ \t]+AppActionHandler[ \t]+for[ \t]+Action\b",
        "transaction Action authorization dispatch",
    )
    dispatch_functions = _rust_function_declarations(dispatch_impl)
    stateless_dispatch = _one_rust_function(
        dispatch_functions,
        "check_stateless",
        "transaction Action stateless authorization dispatch",
    )
    execute_dispatch = _one_rust_function(
        dispatch_functions,
        "check_and_execute",
        "transaction Action execution authorization dispatch",
    )
    normalized_stateless = _normalize_rust_fragment(
        _without_source_comments(
            str(stateless_dispatch["body"]),
            mask_literals=False,
        )
    )
    normalized_execute = _normalize_rust_fragment(
        _without_source_comments(
            str(execute_dispatch["body"]),
            mask_literals=False,
        )
    )
    for action in direct_class:
        stateless_fragment = _normalize_rust_fragment(
            f"Action::{action}(action) => "
            "action.check_stateless(()).await"
        )
        execute_fragment = _normalize_rust_fragment(
            f"Action::{action}(action) => "
            "action.check_and_execute(state).await"
        )
        if stateless_fragment not in normalized_stateless:
            reject(
                f"{action}: Action dispatch does not propagate its "
                "authorization check exactly"
            )
        if execute_fragment not in normalized_execute:
            reject(
                f"{action}: Action dispatch does not propagate its "
                "authorized state transition exactly"
            )

    seen_block_labels: set[str] = set()
    for row in direct_actions:
        action = str(row["action"])
        blocks = tuple(row["blocks"])
        tests = tuple(row["tests"])
        if not blocks or not tests:
            reject(
                f"{action}: direct authorization requires source and "
                "runnable negative evidence"
            )
        combined_tokens = tuple(
            str(token)
            for block in blocks
            for token in block["ordered"]
        )
        if not any(".verify(" in token for token in combined_tokens):
            reject(
                f"{action}: direct authorization lacks exact signature "
                "verification evidence"
            )
        if not any(
            "ensure_nonidentity_spend_auth_key" in token
            for token in combined_tokens
        ):
            reject(
                f"{action}: direct authorization lacks an exact "
                "nonidentity-key guard"
            )
        if not any("rejects_identity" in str(symbol) for _, symbol in tests):
            reject(
                f"{action}: direct authorization lacks an identity-key "
                "attack regression"
            )
        for block in blocks:
            label = str(block["label"])
            if label in seen_block_labels:
                reject(f"duplicate action authorization evidence label {label}")
            seen_block_labels.add(label)
            _validate_action_authorization_block(root, block)
        for relative_path, symbol in tests:
            path = canonical_repo_path(
                root,
                str(relative_path),
                f"{action} authorization regression",
            )
            require_runnable_test_declaration(
                path,
                str(symbol),
                f"{action} authorization regression",
                repository_root=root,
            )

    genesis_blocks = tuple(model["genesis_authority_blocks"])
    genesis_tests = tuple(model["genesis_authority_tests"])
    if not genesis_blocks or not genesis_tests:
        reject(
            "compliance registrar state requires genesis authorization "
            "evidence"
        )
    genesis_tokens = tuple(
        str(token)
        for block in genesis_blocks
        for token in block["ordered"]
    )
    if not any(
        "ensure_nonidentity_spend_auth_key" in token
        for token in genesis_tokens
    ):
        reject("compliance genesis authorization lacks a nonidentity guard")
    for block in genesis_blocks:
        label = str(block["label"])
        if label in seen_block_labels:
            reject(f"duplicate action authorization evidence label {label}")
        seen_block_labels.add(label)
        _validate_action_authorization_block(root, block)
    for relative_path, symbol in genesis_tests:
        if "rejects_identity" not in str(symbol):
            reject(
                "compliance genesis authorization regression must reproduce "
                "the identity-key attack"
            )
        path = canonical_repo_path(
            root,
            str(relative_path),
            "compliance genesis authorization regression",
        )
        require_runnable_test_declaration(
            path,
            str(symbol),
            "compliance genesis authorization regression",
            repository_root=root,
        )
    _validate_ibc_action_authorization(
        root,
        top_level_stateless=normalized_stateless,
        top_level_execute=normalized_execute,
        seen_block_labels=seen_block_labels,
    )
    for gate in model["execution_gate"]:
        label = str(gate["label"])
        source = _read_acceptance_source(
            root,
            str(gate["path"]),
            label,
        )
        position = -1
        for token in gate["ordered"]:
            next_position = source.find(str(token), position + 1)
            if next_position < 0:
                reject(
                    f"{label}: authoritative execution control lacks "
                    f"ordered token {token!r}"
                )
            position = next_position


def validate_action_authorization_execution_join(
    tests: dict[str, dict[str, Any]],
) -> None:
    """Join every authorization regression to the receipted execution plan."""

    model = ACTION_AUTHORIZATION_MODEL
    expected_pairs = {
        (str(path), str(symbol))
        for row in model["direct_actions"]
        for path, symbol in row["tests"]
    } | {
        (str(path), str(symbol))
        for path, symbol in model["genesis_authority_tests"]
    } | {
        (str(path), str(symbol))
        for path, symbol in model["construction_tests"]
    }
    by_pair: dict[tuple[str, str], list[tuple[str, dict[str, Any]]]] = {}
    for test_id, test in tests.items():
        pair = (str(test["path"]), str(test["symbol"]))
        by_pair.setdefault(pair, []).append((test_id, test))
    for path, symbol in sorted(expected_pairs):
        owners = by_pair.get((path, symbol), [])
        if len(owners) != 1:
            reject(
                "action authorization regression must have exactly one "
                "receipted execution-plan owner: "
                f"{path}::{symbol} owners="
                f"{sorted(test_id for test_id, _ in owners)}"
            )
        test_id, test = owners[0]
        if test["kind"] not in {"negative", "attack_reproduction"}:
            reject(
                f"{test_id}: action authorization evidence must be a "
                "negative or attack-reproduction test"
            )
        expected_execution = expected_test_execution(
            test_id,
            path,
            symbol,
        )
        if test["execution"] != expected_execution:
            reject(
                f"{test_id}: action authorization execution is not the "
                "code-owned exact selector"
            )


def _validate_internal_action_acceptance_surface(
    root: Path,
    app_source: str,
    app_functions: list[dict[str, Any]],
) -> None:
    trait_source = _read_acceptance_source(
        root,
        "crates/core/app/src/action_handler.rs",
        "AppActionHandler visibility",
    )
    if "pub(crate) trait AppActionHandler" not in trait_source:
        reject("AppActionHandler is not crate-private")
    lib_source = _read_acceptance_source(
        root,
        "crates/core/app/src/lib.rs",
        "application public exports",
    )
    if "AppActionHandler" in lib_source:
        reject("AppActionHandler escaped through the application public API")
    app_src = canonical_repo_path(
        root,
        "crates/core/app/src",
        "obsolete Compat census",
    )
    compat_paths = [
        path.relative_to(root.resolve()).as_posix()
        for path in app_src.rglob("*.rs")
        if re.search(
            r"\bCompat\b",
            _without_source_comments(path.read_text(encoding="utf-8")),
        )
    ]
    if compat_paths:
        reject(f"obsolete Compat wrapper was reintroduced: {compat_paths}")

    actions_relative = "crates/core/app/src/action_handler/actions.rs"
    actions_source = _read_acceptance_source(
        root,
        actions_relative,
        "Action acceptance dispatch",
    )
    actions_impl = _balanced_rust_declaration_block(
        actions_source,
        r"^[ \t]*impl[ \t]+AppActionHandler[ \t]+for[ \t]+Action\b",
        "Action AppActionHandler implementation",
    )
    action_functions = _rust_function_declarations(actions_impl)
    expected_handler_methods = Counter(
        {
            "check_and_execute": 1,
            "check_historical": 1,
            "check_stateless": 1,
        }
    )
    if Counter(
        function["name"] for function in action_functions
    ) != expected_handler_methods:
        reject("Action AppActionHandler method census drifted")
    expected_variants = {
        "AggregateBundle",
        "ComplianceRegisterAsset",
        "ComplianceRegisterUser",
        "IbcRelay",
        "NoteReshape",
        "ProposalSubmit",
        "ShieldedHostWithdrawal",
        "ShieldedIcs20Withdrawal",
        "Transfer",
        "ValidatorDefinition",
        "ValidatorVote",
    }
    for method_name in (
        "check_stateless",
        "check_historical",
        "check_and_execute",
    ):
        method = _one_rust_function(
            action_functions,
            method_name,
            f"Action {method_name} dispatch",
        )
        variants = set(
            re.findall(
                r"\bAction::([A-Za-z_][A-Za-z0-9_]*)",
                method["body"],
            )
        )
        if variants != expected_variants:
            reject(
                f"Action {method_name} variant census drifted: "
                f"expected={sorted(expected_variants)}, "
                f"actual={sorted(variants)}"
            )
        _reject_rust_enum_catchall(
            method["body"],
            f"Action {method_name} dispatch",
        )
    action_stateless = _one_rust_function(
        action_functions,
        "check_stateless",
        "Action stateless dispatch",
    )
    action_execute = _one_rust_function(
        action_functions,
        "check_and_execute",
        "Action mutation dispatch",
    )
    for method, operation in (
        (action_stateless, "check_stateless"),
        (action_execute, "check_and_execute"),
    ):
        normalized = _normalize_rust_fragment(method["body"])
        for variant in (
            "Transfer",
            "NoteReshape",
            "ShieldedIcs20Withdrawal",
            "ShieldedHostWithdrawal",
        ):
            fragment = (
                f"Action::{variant}(action) => "
                f"action.{operation}(context).await"
                if operation == "check_stateless"
                else (
                    f"Action::{variant}(action) => "
                    f"action.{operation}(state).await"
                )
            )
            if _normalize_rust_fragment(fragment) not in normalized:
                reject(
                    f"Action {operation} does not propagate {variant} "
                    "errors exactly"
                )

    transaction_relative = (
        "crates/core/app/src/action_handler/transaction.rs"
    )
    transaction_source = _read_acceptance_source(
        root,
        transaction_relative,
        "Transaction acceptance join",
    )
    transaction_impl = _balanced_rust_declaration_block(
        transaction_source,
        (
            r"^[ \t]*impl[ \t]+AppActionHandler[ \t]+for[ \t]+"
            r"Transaction\b"
        ),
        "Transaction AppActionHandler implementation",
    )
    transaction_impl_functions = _rust_function_declarations(
        transaction_impl
    )
    if Counter(
        function["name"] for function in transaction_impl_functions
    ) != expected_handler_methods:
        reject("Transaction AppActionHandler method census drifted")
    transaction_stateless = _one_rust_function(
        transaction_impl_functions,
        "check_stateless",
        "Transaction stateless join",
    )
    _require_ordered_symbols(
        transaction_stateless,
        (
            "validate_transaction_envelope(self)?",
            "let context = self.context()",
            "for (i, action) in self.actions().cloned().enumerate()",
            "action.check_stateless(context2).await",
            "drain_joinset_results(",
            ".await?",
            "if let Some(fee_funding)",
            "Action::Transfer(fee_funding.transfer.clone())",
            ".check_stateless(context)",
            ".await?",
            "Ok(())",
        ),
        "Transaction stateless join",
    )
    for forbidden in (
        "fee_funding.transfer.check_stateless",
        "let _ = drain_joinset_results",
        ".unwrap_or(",
        ".unwrap_or_else(",
    ):
        if forbidden in transaction_stateless["body"]:
            reject(
                "Transaction stateless join can discard an error: "
                f"{forbidden}"
            )
    transaction_execute = _one_rust_function(
        transaction_impl_functions,
        "check_and_execute",
        "Transaction trait execution exclusion",
    )
    if (
        transaction_execute["body"].count("anyhow::bail!(") != 1
        or "check_and_execute_profiled" in transaction_execute["body"]
    ):
        reject(
            "Transaction trait execution no longer fails closed outside "
            "the canonical verified App pipeline"
        )

    transaction_functions = _rust_function_declarations(
        transaction_source
    )
    profiled_execute = _one_rust_function(
        transaction_functions,
        "check_and_execute_profiled",
        "capability-gated Transaction execution",
    )
    expected_execute_variants = {
        "AggregateBundle",
        "ComplianceRegisterAsset",
        "ComplianceRegisterUser",
        "IbcRelay",
        "NoteReshape",
        "ProposalSubmit",
        "ShieldedHostWithdrawal",
        "ShieldedIcs20Withdrawal",
        "Transfer",
        "ValidatorDefinition",
        "ValidatorVote",
    }
    execute_variants = set(
        re.findall(
            r"\bAction::([A-Za-z_][A-Za-z0-9_]*)",
            profiled_execute["body"],
        )
    )
    if execute_variants != expected_execute_variants:
        reject(
            "capability-gated Transaction execution variant census drifted: "
            f"expected={sorted(expected_execute_variants)}, "
            f"actual={sorted(execute_variants)}"
        )
    _reject_rust_enum_catchall(
        profiled_execute["body"],
        "capability-gated Transaction execution",
    )
    _require_ordered_symbols(
        profiled_execute,
        (
            "let tx = artifact.tx().as_ref()",
            "ensure_transaction_resource_bounds(tx)?",
            "let validated_fee_funding = if let Some(fee_funding)",
            "transfer_validate_verified(",
            "artifact.proof_for_slot(ProofSlot::FeeFunding)?",
            "for (i, action) in tx.actions().enumerate()",
            "Action::Transfer(action)",
            "transfer_execute_verified(",
            "artifact.proof_for_slot(ProofSlot::BodyAction(i))?",
            "Action::NoteReshape(action)",
            "note_reshape_execute_verified(",
            "Action::ShieldedIcs20Withdrawal(action)",
            "shielded_ics20_withdrawal_execute_verified(",
            "Action::ShieldedHostWithdrawal(action)",
            "shielded_host_withdrawal_execute_verified(",
            "Action::AggregateBundle(_)",
            "anyhow::bail!(",
            "if let Some(fee_funding)",
            "transfer_execute_validated(",
            "validated_fee_funding.expect(",
        ),
        "capability-gated Transaction execution",
    )
    _require_occurrence_count(
        profiled_execute["body"],
        "artifact.proof_for_slot(ProofSlot::BodyAction(i))?",
        4,
        "proof-bearing action capability consumption",
    )
    _require_occurrence_count(
        profiled_execute["body"],
        "artifact.proof_for_slot(ProofSlot::FeeFunding)?",
        1,
        "fee-funding capability consumption",
    )
    _require_occurrence_count(
        profiled_execute["body"],
        "transfer_validate_verified(",
        1,
        "fee-funding pre-transaction validation capability",
    )
    _require_occurrence_count(
        profiled_execute["body"],
        "transfer_execute_validated(",
        1,
        "fee-funding post-body effect capability",
    )
    for forbidden in (
        "tx.check_and_execute(",
        "fee_funding.transfer.check_and_execute",
        "batch::",
        "verify_each",
    ):
        if forbidden in profiled_execute["body"]:
            reject(
                "capability-gated Transaction execution bypasses its "
                f"verified artifact: {forbidden}"
            )

    app_execute_callers = _rust_call_owner_census(
        app_source,
        app_functions,
        r"(?<!fn )\bcheck_and_execute_profiled\s*\(",
        "capability-gated Transaction mutation caller census",
    )
    if app_execute_callers != Counter(
        {"execute_tx_checked_historical_profiled": 1}
    ):
        reject(
            "capability-gated Transaction mutation caller census drifted: "
            f"actual={dict(app_execute_callers)}"
        )
    transaction_execute_callers = _rust_call_owner_census(
        transaction_source,
        transaction_functions,
        r"(?<!fn )\bcheck_and_execute_profiled\s*\(",
        "Transaction-local mutation caller census",
    )
    if transaction_execute_callers:
        reject(
            "Transaction-local code bypasses the canonical App mutation "
            f"path: {dict(transaction_execute_callers)}"
        )

    execute_verified = _one_rust_function(
        app_functions,
        "execute_tx_checked_historical_profiled",
        "verified App mutation owner",
    )
    _require_ordered_symbols(
        execute_verified,
        (
            "let tx = artifact.tx().clone()",
            "try_begin_transaction()",
            "check_and_execute_profiled(Arc::as_ref(&artifact), &mut state_tx)",
            ".await",
            ".context(",
            "state_tx.apply()",
        ),
        "verified App mutation owner",
    )
    execute_callers = _rust_call_owner_census(
        app_source,
        app_functions,
        r"\.execute_tx_checked_historical_profiled\s*\(",
        "verified App mutation owner caller census",
    )
    expected_execute_callers = Counter(
        {
            "deliver_tx_with_stateless_extraction_caching_profiled": 1,
            "deliver_tx_profiled": 1,
            "deliver_tx_with_verified_stateless_profiled": 1,
            "execute_prepare_candidate_profiled": 1,
            "execute_validated_candidate_envelope_profiled": 1,
            "checktx_fast_path_matches_legacy_for_supported_tx": 1,
        }
    )
    if execute_callers != expected_execute_callers:
        reject(
            "verified App mutation owner caller census drifted: "
            f"expected={dict(expected_execute_callers)}, "
            f"actual={dict(execute_callers)}"
        )
    component_paths = (
        (
            "crates/core/component/shielded-pool/src/component/"
            "action_handler/note_reshape_action.rs"
        ),
        (
            "crates/core/component/shielded-pool/src/component/"
            "action_handler/shielded_ics20_withdrawal.rs"
        ),
        (
            "crates/core/component/shielded-pool/src/component/"
            "action_handler/transfer.rs"
        ),
        (
            "crates/core/component/shielded-pool/src/component/"
            "action_handler/shielded_host_withdrawal.rs"
        ),
    )
    direct_component_callers: list[tuple[str, str]] = []
    for relative in component_paths:
        source = _read_acceptance_source(
            root,
            relative,
            "shielded component mutation caller census",
        )
        for function in _rust_function_declarations(source):
            if re.search(
                r"#\[(?:[A-Za-z0-9_]+::)*test",
                function["attributes"],
            ):
                continue
            if ".check_and_execute(" in function["body"]:
                direct_component_callers.append(
                    (relative, function["name"])
                )
    if direct_component_callers:
        reject(
            "shielded component mutation has direct production callers: "
            f"{direct_component_callers}"
        )


def validate_proof_acceptance_repository_surface(root: Path) -> None:
    """Validate the closed production proof-acceptance architecture."""

    def require_compact_order(
        function: dict[str, Any],
        symbols: tuple[str, ...],
        label: str,
        original_source: str | None = None,
    ) -> None:
        source_body = (
            function["body"]
            if original_source is None
            else original_source[function["body_start"] : function["end"]]
        )
        body = re.sub(r"\s+", "", source_body)
        position = -1
        for symbol in symbols:
            compact_symbol = re.sub(r"\s+", "", symbol)
            position = body.find(compact_symbol, position + 1)
            if position < 0:
                reject(
                    f"{label}: {function['name']} lacks ordered symbol "
                    f"{symbol!r}"
                )

    shielded_pool_src = canonical_repo_path(
        root,
        "crates/core/component/shielded-pool/src",
        "shielded-pool acceptance surface",
    )
    for relative in (
        "component/ics20_withdrawal_with_handler.rs",
        "component/action_handler/ics20_withdrawal.rs",
    ):
        if (shielded_pool_src / relative).exists():
            reject(
                "obsolete bare ICS20 withdrawal executor was reintroduced: "
                f"{relative}"
            )
    for path in shielded_pool_src.rglob("*.rs"):
        source = _without_source_comments(path.read_text(encoding="utf-8"))
        if "Ics20WithdrawalWithHandler" in source or re.search(
            r"impl\s+Ics20Withdrawal\s*\{[^}]*\bwith_handler\b",
            source,
            re.DOTALL,
        ):
            reject(
                "obsolete bare ICS20 withdrawal executor surface was "
                f"reintroduced in {path.relative_to(root.resolve())}"
            )

    app_relative = "crates/core/app/src/app/mod.rs"
    app_path = canonical_repo_path(root, app_relative, "proof acceptance app")
    app_source = app_path.read_text(encoding="utf-8")
    app_scrubbed = _without_source_comments(app_source)
    app_functions = _rust_function_declarations(app_source)

    _validate_host_execution_frontdoors(root)
    _validate_grpc_execution_frontdoors(root)
    _validate_abci_server_wiring(root)
    _validate_internal_action_acceptance_surface(
        root, app_source, app_functions
    )
    validate_action_authorization_model(root)

    for symbol, label in (
        (
            "pub const MAX_BLOCK_TXS_PAYLOAD_BYTES: usize = 1024 * 1024;",
            "fixed proposal payload policy",
        ),
        (
            "pub const MAX_TRANSACTION_SIZE_BYTES: usize = 96 * 1024;",
            "fixed transaction-size policy",
        ),
        (
            "pub const MAX_BLOCK_TX_COUNT: usize = 4_096;",
            "fixed proposal transaction-count policy",
        ),
        (
            "pub const MAX_TRANSACTION_ACTION_COUNT: usize = 512;",
            "fixed transaction action-count policy",
        ),
        (
            "pub const MAX_TRANSACTION_NULLIFIER_COUNT: usize = 256;",
            "fixed transaction nullifier-count policy",
        ),
        (
            "pub const MAX_BLOCK_NULLIFIER_COUNT: usize = 32_768;",
            "fixed block nullifier-count policy",
        ),
    ):
        _require_occurrence_count(app_scrubbed, symbol, 1, label)
    validation_support = _read_acceptance_source(
        root,
        "crates/core/app/src/app/validation_support.rs",
        "candidate-envelope validation bounds",
    )
    for symbol, label in (
        ("pub const MAX_VALIDATION_TX_COUNT: usize = 4_096;", "candidate tx count"),
        ("pub const MAX_VALIDATION_ACTIONS_PER_TX: usize = 512;", "candidate action count"),
        ("pub const MAX_VALIDATION_NULLIFIERS_PER_TX: usize = 256;", "candidate per-tx nullifiers"),
        ("pub const MAX_VALIDATION_NULLIFIERS_PER_BLOCK: usize = 32_768;", "candidate block nullifiers"),
    ):
        _require_occurrence_count(validation_support, symbol, 1, label)
    require_compact_order(
        _one_rust_function(
            app_functions,
            "max_transaction_size_bytes",
            "consensus transaction-size policy",
        ),
        (
            '#[cfg(any(test, feature = "benchmark-helpers"))]',
            "aggregate_diagnostics::max_transaction_size_bytes_override()",
            '#[cfg(not(any(test, feature = "benchmark-helpers")))]',
            "MAX_TRANSACTION_SIZE_BYTES",
        ),
        "consensus transaction-size policy",
        app_source,
    )
    _require_occurrence_count(
        app_source,
        '#[cfg(any(test, feature = "benchmark-helpers"))]\nmod aggregate_diagnostics;',
        1,
        "app diagnostic cfg boundary",
    )

    proto_source = canonical_repo_path(
        root,
        "proto/shieldd/shieldd/core/transaction/v1/transaction.proto",
        "transaction wire action surface",
    ).read_text(encoding="utf-8")
    for aggregate_declaration in (
        "enum ProofFamilyId",
        "message FamilyAggregate",
        "message AggregateBundle",
    ):
        _require_occurrence_count(
            proto_source,
            aggregate_declaration,
            1,
            "consensus aggregate wire declaration",
        )
    for declaration, label in (
        (r"^[ \t]*message[ \t]+Action\b", "wire Action"),
        (r"^[ \t]*message[ \t]+ActionView\b", "wire ActionView"),
    ):
        block = _balanced_rust_declaration_block(
            proto_source, declaration, label
        )
        if "AggregateBundle aggregate_bundle = 82;" not in block:
            reject(f"{label} omits aggregate consensus transport tag 82")
    generated_source = canonical_repo_path(
        root,
        "crates/proto/src/gen/shieldd.core.transaction.v1.rs",
        "generated transaction action surface",
    ).read_text(encoding="utf-8")
    for generated_declaration in (
        "pub enum ProofFamilyId",
        "pub struct FamilyAggregate",
        "pub struct AggregateBundle",
    ):
        _require_occurrence_count(
            generated_source,
            generated_declaration,
            1,
            "generated aggregate wire declaration",
        )
    for module_declaration, declaration, label in (
        (
            r"^[ \t]*pub[ \t]+mod[ \t]+action\b",
            r"^[ \t]*pub[ \t]+enum[ \t]+Action\b",
            "generated Action",
        ),
        (
            r"^[ \t]*pub[ \t]+mod[ \t]+action_view\b",
            r"^[ \t]*pub[ \t]+enum[ \t]+ActionView\b",
            "generated ActionView",
        ),
    ):
        module = _balanced_rust_declaration_block(
            generated_source,
            module_declaration,
            f"{label} module",
        )
        block = _balanced_rust_declaration_block(
            module, declaration, label
        )
        if "AggregateBundle" not in block or 'tag = "82"' not in block:
            reject(f"{label} omits aggregate action tag 82")
    aggregation_manifest = canonical_repo_path(
        root,
        "crates/crypto/proof-aggregation/Cargo.toml",
        "production aggregation manifest",
    ).read_text(encoding="utf-8")
    aggregation_bundle = canonical_repo_path(
        root,
        "crates/crypto/proof-aggregation/src/bundle.rs",
        "production aggregation wire format",
    ).read_text(encoding="utf-8")
    if "shieldd-sdk-proto" not in aggregation_manifest:
        reject("production aggregation omits the consensus proto dependency")
    cargo_lock = tomllib.loads(
        canonical_repo_path(
            root,
            "Cargo.lock",
            "production aggregation resolved dependencies",
        ).read_text(encoding="utf-8")
    )
    aggregation_lock_entries = [
        package
        for package in cargo_lock.get("package", [])
        if package.get("name") == "shieldd-sdk-proof-aggregation"
    ]
    if len(aggregation_lock_entries) != 1:
        reject(
            "Cargo.lock must contain exactly one production aggregation "
            "package entry"
        )
    aggregation_lock_dependencies = set(
        aggregation_lock_entries[0].get("dependencies", [])
    )
    if not any(
        dependency == "shieldd-sdk-proto"
        or dependency.startswith("shieldd-sdk-proto ")
        for dependency in aggregation_lock_dependencies
    ):
        reject(
            "resolved production aggregation dependencies omit the core "
            "consensus proto crate"
        )
    for symbol in (
        "use shieldd_sdk_proto::{core::transaction::v1 as pb, DomainType}",
        "impl From<FamilyAggregate> for pb::FamilyAggregate",
        "impl TryFrom<pb::FamilyAggregate> for FamilyAggregate",
        "impl From<AggregateBundle> for pb::AggregateBundle",
        "impl TryFrom<pb::AggregateBundle> for AggregateBundle",
    ):
        if symbol not in aggregation_bundle:
            reject(
                "production aggregation lacks its consensus wire bridge: "
                f"{symbol}"
            )
    if "impl TryFrom<i32> for ProofFamilyId" in aggregation_bundle:
        reject(
            "production aggregation has a lossy family-only conversion "
            "that cannot construct required subfamilies"
        )

    production_public = {
        function["name"]
        for function in app_functions
        if function["visibility"].startswith("pub")
        and '#[cfg(any(test, feature = "benchmark-helpers"))]'
        not in function["attributes"]
        and (
            function["name"].startswith("prepare_proposal")
            or function["name"].startswith("process_proposal")
            or function["name"].startswith("deliver_tx_bytes")
            or "insert_groth16_verified" in function["body"]
        )
    }
    if production_public != EXPECTED_APP_PROOF_ENTRYPOINTS:
        reject(
            "production proof entrypoint census drifted: "
            f"missing={sorted(EXPECTED_APP_PROOF_ENTRYPOINTS-production_public)}, "
            f"extra={sorted(production_public-EXPECTED_APP_PROOF_ENTRYPOINTS)}"
        )
    benchmark_cfg = '#[cfg(any(test, feature = "benchmark-helpers"))]'
    actual_nonproduction = {
        function["name"]
        for function in app_functions
        if benchmark_cfg in function["attributes"]
    }
    if actual_nonproduction != EXPECTED_NONPRODUCTION_FUNCTIONS:
        reject(
            "nonproduction proof-function census drifted: "
            f"missing={sorted(EXPECTED_NONPRODUCTION_FUNCTIONS-actual_nonproduction)}, "
            f"extra={sorted(actual_nonproduction-EXPECTED_NONPRODUCTION_FUNCTIONS)}"
        )
    for name in sorted(EXPECTED_NONPRODUCTION_FUNCTIONS):
        _require_benchmark_cfg(
            _one_rust_function(
                app_functions, name, "nonproduction proof exclusion"
            ),
            "nonproduction proof exclusion",
        )
    aggregate_shape_fuzz = _one_rust_function(
        app_functions,
        "ensure_aggregate_bundle_tx_shape_for_fuzz",
        "aggregate shape fuzz wrapper",
    )
    if '#[cfg(feature = "fuzzing")]' not in aggregate_shape_fuzz["attributes"]:
        reject("aggregate shape fuzz wrapper escaped its fuzzing cfg")

    cache_relative = "crates/core/app/src/stateless_cache.rs"
    cache_path = canonical_repo_path(
        root, cache_relative, "stateless proof capability cache"
    )
    cache_source = cache_path.read_text(encoding="utf-8")
    cache_scrubbed = _without_source_comments(cache_source)
    cache_functions = _rust_function_declarations(cache_source)
    production_cache_function_census = Counter(
        function["name"]
        for function in cache_functions
        if not any(
            re.search(r"\btest\b", expression)
            for expression in function["cfg_expressions"]
        )
    )
    expected_cache_function_census = Counter(
        {
            "artifact": 1,
            "clear_inconsistent_clock": 1,
            "ensure_artifact_matches_raw": 1,
            "evict_one_clock": 1,
            "extracted": 1,
            "get": 1,
            "has_matching_historical_validation": 2,
            "insert": 1,
            "insert_extracted": 1,
            "insert_fully_verified": 1,
            "insert_invalid": 1,
            "new": 2,
            "proof_family_and_key_for_action": 1,
            "proof_for_slot": 1,
            "proof_item_at": 1,
            "proof_locations": 1,
            "take_family_capabilities": 1,
            "tx": 1,
            "validate_proof_capability_rows": 1,
            "with_historical_validation": 1,
            "with_historical_validation_owned": 2,
            "with_limits": 1,
        }
    )
    if production_cache_function_census != expected_cache_function_census:
        reject(
            "stateless-cache production API census drifted: "
            f"actual={dict(production_cache_function_census)}"
        )
    for symbol in (
        "proof_items: BTreeMap<ProofFamilyId, Vec<BatchItem>>",
        "pub family_id: ProofFamilyId",
        "pub family_index: usize",
        "pub key: DeployedProofKey",
        "verified_proofs: BTreeMap<ProofSlot, VerifiedBatchItem>",
    ):
        if symbol not in cache_scrubbed:
            reject(f"stateless artifact lacks exact proof identity: {symbol}")

    expected_action_variants = {
        "AggregateBundle",
        "ComplianceRegisterAsset",
        "ComplianceRegisterUser",
        "IbcRelay",
        "NoteReshape",
        "ProposalSubmit",
        "ShieldedHostWithdrawal",
        "ShieldedIcs20Withdrawal",
        "Transfer",
        "ValidatorDefinition",
        "ValidatorVote",
    }
    proof_key_for_action = _one_rust_function(
        cache_functions,
        "proof_family_and_key_for_action",
        "deployed proof-family/key Action roster",
    )
    if set(
        re.findall(
            r"\bAction::([A-Za-z_][A-Za-z0-9_]*)",
            proof_key_for_action["body"],
        )
    ) != expected_action_variants:
        reject("deployed proof-family/key Action roster drifted")
    _reject_rust_enum_catchall(
        proof_key_for_action["body"],
        "deployed proof-family/key Action roster",
    )
    require_compact_order(
        _one_rust_function(
            cache_functions,
            "proof_locations",
            "proof-slot construction",
        ),
        (
            "for (action_index, action) in self.tx.actions().enumerate()",
            "proof_family_and_key_for_action(action)",
            "ProofSlot::BodyAction(action_index)",
            "ProofLocation",
            "family_id",
            "family_index",
            "key",
            "if self.tx.transaction_body.fee_funding.is_some()",
            "let family_id = ProofFamilyId::Transfer",
            "ProofSlot::FeeFunding",
            "locations.len() == self.total_proof_count",
            "items.len() == expected",
            "actual == expected",
        ),
        "proof-slot construction",
    )
    verified_new = [
        function
        for function in cache_functions
        if function["name"] == "new"
        and "verified_rows" in function["header"]
    ]
    if len(verified_new) != 1:
        reject("verified artifact constructor census drifted")
    if verified_new[0]["visibility"] != "pub(crate)":
        reject("verified artifact constructor escaped its crate owner")
    capability_rows = _one_rust_function(
        cache_functions,
        "validate_proof_capability_rows",
        "verified artifact capability coverage and binding",
    )
    if capability_rows["visibility"]:
        reject("verified artifact capability validator escaped its private owner")
    require_compact_order(
        capability_rows,
        (
            "let locations = extracted.proof_locations()?",
            "verified_proofs.insert(slot, capability).is_none()",
            "actual == expected",
            "for (&slot, &location) in &locations",
            "ensure_binds(capability, location.key, extracted.proof_item_at(location)?)",
            "verified_proofs",
        ),
        "verified artifact capability coverage and binding",
    )
    require_compact_order(
        verified_new[0],
        (
            "validate_proof_capability_rows(",
            "capability.ensure_binds(key, item)",
            "verified_proofs",
        ),
        "verified artifact constructor",
    )
    require_compact_order(
        _one_rust_function(
            cache_functions,
            "take_family_capabilities",
            "verified proof-slot coverage",
        ),
        (
            "extracted.proof_locations()?",
            ".get_mut(&location.family_id)",
            ".and_then(VecDeque::pop_front)",
            "Self::new(extracted, rows)",
        ),
        "verified proof-slot coverage",
    )
    require_compact_order(
        _one_rust_function(
            cache_functions, "get", "raw-byte-bound cache lookup"
        ),
        (
            "raw_tx.len() > self.max_cacheable_raw_tx_bytes",
            "inner.map.get(hash)",
            "value.raw_tx.as_ref() != raw_tx",
            "value.entry.clone()",
        ),
        "raw-byte-bound cache lookup",
    )
    for name in ("insert_extracted", "insert_fully_verified"):
        mutator = _one_rust_function(
            cache_functions, name, "raw-byte-bound cache promotion"
        )
        if mutator["visibility"] != "pub":
            reject(f"stateless-cache mutator visibility drifted: {name}")
        require_compact_order(
            mutator,
            ("Self::ensure_artifact_matches_raw", "self.insert("),
            "raw-byte-bound cache promotion",
        )
    cache_insert = _one_rust_function(
        cache_functions, "insert", "bounded stateless cache"
    )
    if cache_insert["visibility"]:
        reject("stateless-cache raw insertion escaped its private owner")
    require_compact_order(
        cache_insert,
        (
            "raw_tx.len() > self.max_cacheable_raw_tx_bytes",
            "raw_tx.len() > self.max_retained_raw_tx_bytes",
            "inner.map.len() >= self.max_entries",
            "inner.retained_raw_tx_bytes",
        ),
        "bounded stateless cache",
    )
    cache_constructor = [
        function
        for function in cache_functions
        if function["name"] == "new"
        and "Self::with_limits" in function["body"]
    ]
    if len(cache_constructor) != 1:
        reject("stateless-cache constructor census drifted")
    require_compact_order(
        cache_constructor[0],
        (
            "MAX_ENTRIES",
            "MAX_RETAINED_RAW_TX_BYTES",
            "MAX_CACHEABLE_RAW_TX_BYTES",
        ),
        "stateless-cache constructor fixed limit wiring",
    )
    require_compact_order(
        _one_rust_function(
            app_functions,
            "extract_fee_funding_proof_item",
            "fee-funding proof extraction",
        ),
        (
            "transfer_check_stateless_and_extract(&fee_funding.transfer, context)",
            ".context(",
        ),
        "fee-funding proof extraction",
    )
    require_compact_order(
        _one_rust_function(
            app_functions,
            "collect_consensus_proof_items_with_artifacts",
            "consensus proof extraction",
        ),
        (
            "let mut proof_items = Self::empty_proof_items()",
            "for tx in txs",
            "Self::ensure_user_tx_has_no_internal_actions(tx)?",
            "valid_binding_signature(tx)?",
            "for action in tx.actions()",
            "transfer_check_stateless_and_extract",
            "shielded_ics20_withdrawal_check_stateless_and_extract",
            "shielded_host_withdrawal_check_stateless_and_extract",
            "note_reshape_check_stateless_and_extract",
            "Action::AggregateBundle(_)",
            "if let Some(fee_funding)",
            "extract_fee_funding_proof_item(fee_funding, &context)",
            "TxArtifact",
            "proof_items: tx_proof_items",
        ),
        "consensus proof extraction",
        app_source,
    )
    independent = _one_rust_function(
        app_functions,
        "independently_verify_proof_families",
        "independent deployed-family verification",
    )
    require_compact_order(
        independent,
        (
            "for family_id in Self::proof_family_ids()",
            "proof_items.remove(&family_id)",
            "tasks.spawn(async move",
            "let key = deployed_key_for_family(family_id)",
            "batch::verify_each_with_capabilities(",
            "Self::handle_proof_verification_result(batch_verify_stage, result)?",
            "drain_joinset_results(",
            "Ok(verified)",
        ),
        "independent deployed-family verification",
    )
    _require_drain_before_error(
        _one_rust_function(
            app_functions,
            "drain_joinset_results",
            "application structured task drain",
        ),
        join_symbol="tasks.join_next().await",
        error_symbol="result",
        label="application structured task drain",
    )
    if "batch::batch_verify" in independent["body"]:
        reject("production independent verifier calls legacy batch_verify")
    for symbol in (
        "const MAX_CONCURRENT_AGGREGATE_SEGMENTS: usize = 2;",
        "const MAX_CONCURRENT_AGGREGATE_VERIFY_CALLS: usize = 4;",
    ):
        _require_occurrence_count(
            app_scrubbed,
            symbol,
            1,
            "bounded aggregate concurrency",
        )
    aggregate_build = _one_rust_function(
        app_functions,
        "build_family_aggregates_for_artifacts",
        "aggregate family structured drain",
    )
    require_compact_order(
        aggregate_build,
        (
            "let mut first_error = None",
            "for task in aggregate_tasks",
            "match task.await",
            "if let Some(error) = first_error",
            "return Err(error)",
        ),
        "aggregate family structured drain",
        app_source,
    )
    aggregate_segments = _one_rust_function(
        app_functions,
        "build_exact_segmented_family_aggregates_for_artifacts",
        "bounded aggregate segment workers",
    )
    require_compact_order(
        aggregate_segments,
        (
            "segment_tasks.len() < MAX_CONCURRENT_AGGREGATE_SEGMENTS",
            "segment_tasks.spawn(async move",
            "segment_tasks.join_next().await",
            "if let Some(error) = first_error",
            "return Err(error)",
        ),
        "bounded aggregate segment workers",
        app_source,
    )
    aggregate_verify = _one_rust_function(
        app_functions,
        "verify_aggregate_bundle_for_artifacts_raw_profiled",
        "bounded aggregate verification workers",
    )
    require_compact_order(
        aggregate_verify,
        (
            "let mut pending_calls = VecDeque::from(plan.calls)",
            "verify_tasks.len() < MAX_CONCURRENT_AGGREGATE_VERIFY_CALLS",
            "verify_tasks.spawn_blocking(",
            "verify_tasks.join_next().await",
            "if let Some(error) = first_error",
            "return Err(error)",
        ),
        "bounded aggregate verification workers",
        app_source,
    )
    require_compact_order(
        _one_rust_function(
            app_functions,
            "attach_verified_capabilities",
            "verified capability attachment",
        ),
        (
            "VerifiedTxArtifact::take_family_capabilities(artifact, &mut capabilities)",
            "capabilities.values().all(VecDeque::is_empty)",
        ),
        "verified capability attachment",
    )
    require_compact_order(
        _one_rust_function(
            app_functions,
            "build_tx_artifacts_profiled",
            "canonical verified artifact builder",
        ),
        (
            "Self::collect_consensus_proof_items_with_artifacts(txs).await?",
            "Self::independently_verify_proof_families(proof_items).await?",
            "Self::attach_verified_capabilities(artifacts, capabilities)?",
        ),
        "canonical verified artifact builder",
    )
    require_compact_order(
        _one_rust_function(
            app_functions,
            "verify_tx_artifacts_for_stage",
            "cached extraction verifier",
        ),
        (
            "Self::merge_artifact_proof_items(artifacts)",
            "Self::independently_verify_proof_families(proof_items).await",
            "let capabilities = result?",
            "Self::attach_verified_capabilities(artifacts.to_vec(), capabilities)?",
        ),
        "cached extraction verifier",
    )
    legacy_callers = _rust_call_owner_census(
        app_source,
        app_functions,
        r"\bbatch::batch_verify\s*\(",
        "legacy batch verifier caller census",
    )
    if legacy_callers:
        reject(
            "legacy batch verification escaped test-only helpers: "
            f"{dict(legacy_callers)}"
        )

    for name, production_loader in (
        ("shipping_srs", "load_active_production_srs()"),
        ("shipping_srs_for_id", "load_production_srs_for_id(requested_id)"),
    ):
        srs_loader = _one_rust_function(
            app_functions,
            name,
            "production aggregate SRS selection",
        )
        require_compact_order(
            srs_loader,
            (
                '#[cfg(feature = "orbis-dev-srs")]',
                "DevSrs::default()",
                '#[cfg(all(not(feature = "orbis-dev-srs"), any(test, feature = "fuzzing")))]',
                "DevSrs::default()",
                '#[cfg(not(any(test, feature = "fuzzing", feature = "orbis-dev-srs")))]',
                production_loader,
            ),
            "production aggregate SRS selection",
            app_source,
        )

    require_compact_order(
        _one_rust_function(
            app_functions,
            "validate_aggregate_verify_plan_inputs",
            "aggregate verification preflight",
        ),
        (
            "app_verify_preflight_core(",
            "AGGREGATE_PROTOCOL_VERSION",
            "bundle.version",
            "Self::total_artifact_proof_count(artifacts)",
            "srs_id(srs).to_vec()",
            "bundle.srs_id.clone()",
            "artifacts.len()",
            "segment_tx_counts",
        ),
        "aggregate verification preflight",
    )
    require_compact_order(
        _one_rust_function(
            app_functions,
            "plan_aggregate_bundle_verification",
            "aggregate verification plan",
        ),
        (
            "app_verify_family_count_core(expected_segments.len(), bundle.families.len())",
            "app_verify_plan_ids_core(",
            "app_verify_plan_identity_core(",
            "prepare_verify_inputs(&items, MAX_PADDED_PROOF_COUNT)?",
            "app_verify_plan_padding_core(",
            "AggregateStatement::new(",
            "AGGREGATE_PROTOCOL_VERSION",
            "family_id",
            "srs_id(&srs)",
            "proof_verification_key_for_family(family_id)",
            "shipping_call.bundle_real_count",
            "&prepared_inputs.padded_public_inputs",
        ),
        "aggregate verification plan",
    )
    require_compact_order(
        _one_rust_function(
            app_functions,
            "execute_aggregate_verify_call",
            "aggregate verification kernel",
        ),
        (
            "verify_shipping_family_aggregate_profiled_status(",
            "call.shipping_call",
            "&call.statement",
            "proof_verification_key_for_family(call.id.family_id)",
            "&call.aggregate.aggregate_proof",
            "&call.srs",
        ),
        "aggregate verification kernel",
    )
    aggregate_verify = _one_rust_function(
        app_functions,
        "verify_aggregate_bundle_for_artifacts_raw_profiled",
        "aggregate verified-capability issuance",
    )
    require_compact_order(
        aggregate_verify,
        (
            "shipping_srs_for_id(&bundle.srs_id)?",
            "Self::validate_aggregate_verify_plan_inputs(",
            "Self::expected_aggregate_verify_segments(artifacts, &segment_ranges)",
            "Self::plan_aggregate_bundle_verification(bundle, expected_segments, srs)",
            "let mut pending_calls = VecDeque::from(plan.calls)",
            "verify_tasks.len() < MAX_CONCURRENT_AGGREGATE_VERIFY_CALLS",
            "Self::execute_aggregate_verify_call(call)",
            "verify_tasks.join_next().await",
            "if let Some(error) = first_error",
            "app_verify_accepted_join_projection_core(expected_core_ids, joined_records)",
            "Self::reduce_aggregate_verify_outcomes(&expected_call_ids, results)?",
            "reduction.acceptance_result()?",
            "require_no_rejected_joined_calls(rejected_calls)?",
            ".verified_statement_capabilities(",
            "deployed_key_for_family(family_id)",
            "&outcome.items",
            "Self::attach_verified_capabilities(artifacts.to_vec(), capabilities)",
        ),
        "aggregate verified-capability issuance",
    )

    prepare_impl = _one_rust_function(
        app_functions,
        "prepare_proposal_impl_profiled",
        "PrepareProposal fixed boundary",
    )
    require_compact_order(
        prepare_impl,
        (
            "truncate_prepare_candidates(&mut proposal.txs)",
            "prepare_proposal_payload_limit(proposal.max_tx_bytes)",
            "prepare_proposal_batched_profiled(",
        ),
        "PrepareProposal fixed boundary",
    )
    prepare = _one_rust_function(
        app_functions,
        "prepare_proposal_batched_profiled",
        "PrepareProposal exact-proof acceptance",
    )
    require_compact_order(
        prepare,
        (
            "transaction_size > max_transaction_size_bytes() as u64",
            "cache.get(&hash, tx_bytes.as_ref())",
            "Transaction::decode_canonical(tx_bytes.as_ref())",
            "Self::ensure_user_tx_has_no_internal_actions(&tx)",
            "block_nullifier_count_allowed(",
            "seen_nullifiers.len().saturating_add(tx_nullifiers.len())",
            "self.precheck_compliance_anchors_dedup(&deduped_txs).await?",
            'Self::build_tx_artifacts_for_stage("prepare_proposal"',
            'Self::verify_tx_artifacts_for_stage("prepare_proposal_upgrade"',
            "execute_prepare_candidate_profiled(",
            "build_family_aggregates_for_artifacts",
            "build_aggregate_bundle_from_families(families).await",
            "ProposalArtifactSidecar::build(",
            "included_txs.push(bundle_tx_bytes)",
        ),
        "PrepareProposal exact-proof acceptance",
        app_source,
    )
    prepare_compact = re.sub(
        r"\s+",
        "",
        app_source[prepare["body_start"] : prepare["end"]],
    )
    cold_verify = prepare_compact.find(
        'Self::build_tx_artifacts_for_stage("prepare_proposal"'
    )
    upgrade_verify = prepare_compact.find(
        'Self::verify_tx_artifacts_for_stage("prepare_proposal_upgrade"'
    )
    first_promotion = prepare_compact.find(".insert_fully_verified(")
    second_promotion = prepare_compact.find(
        ".insert_fully_verified(", first_promotion + 1
    )
    if (
        min(cold_verify, upgrade_verify, first_promotion, second_promotion) < 0
        or cold_verify >= first_promotion
        or upgrade_verify >= second_promotion
    ):
        reject("PrepareProposal cache promotion can precede verification")

    process = _one_rust_function(
        app_functions,
        "process_proposal_impl_profiled",
        "ProcessProposal exact-proof acceptance",
    )
    require_compact_order(
        process,
        (
            "!process_proposal_tx_count_allowed(proposal_tx_count)",
            "tx_size > max_transaction_size_bytes()",
            "!process_proposal_payload_size_allowed(total_txs_payload_size)",
            "cache.get(&tx_hash, tx_bytes.as_ref())",
            "Transaction::decode_canonical(tx_bytes.as_ref())",
            "Self::ensure_user_tx_has_no_internal_actions(&tx)",
            'Self::build_tx_artifacts_for_stage("process_proposal", &raw_miss_txs)',
            "!block_nullifier_count_allowed(block_nullifier_count)",
            "Self::ensure_unique_spend_nullifiers_from_artifacts(&artifacts)",
            "precheck_compliance_anchors_dedup_from_artifacts(&artifacts)",
            "match (total_proofs, bundle_tx.as_ref())",
            "Self::verify_aggregate_bundle_for_artifacts(",
            "aggregate_verify_task.await",
            ".insert_fully_verified(user_tx.raw_tx.as_ref(), artifact.clone())",
            "let stateful_replay_start = Instant::now()",
            "deliver_tx_with_verified_stateless_profiled(artifact, Some(&historical_context))",
            "response::ProcessProposal::Accept",
        ),
        "ProcessProposal exact-proof acceptance",
        app_source,
    )
    require_compact_order(
        process,
        (
            "UserTxData::VerifiedArtifact(artifact)",
            "artifact.extracted()",
            "Self::verify_aggregate_bundle_for_artifacts(",
        ),
        "ProcessProposal mandatory cache re-verification",
        app_source,
    )

    deliver = _one_rust_function(
        app_functions,
        "deliver_tx_bytes_impl_profiled",
        "CheckTx exact-proof acceptance",
    )
    require_compact_order(
        deliver,
        (
            "transaction_size_allowed(tx_bytes.len())",
            "cache.get(&hash, tx_bytes)",
            "Some(CacheEntry::FullyVerified(artifact))",
            "Some(CacheEntry::Extracted(extracted))",
            "Self::verify_tx_artifacts_for_stage(",
            "cache.insert_fully_verified(tx_bytes, artifact.clone())",
            "Some(CacheEntry::Invalid)",
            "Transaction::decode_canonical(tx_bytes)",
            "Self::ensure_user_tx_has_no_internal_actions(&tx)",
            "self.deliver_tx_profiled(tx).await",
        ),
        "CheckTx size and cache boundary",
    )
    deliver_compact = re.sub(
        r"\s+",
        "",
        app_source[deliver["body_start"] : deliver["end"]],
    )
    extracted_branch = deliver_compact.find("Some(CacheEntry::Extracted(extracted))")
    upgrade = deliver_compact.find(
        "Self::verify_tx_artifacts_for_stage(", extracted_branch
    )
    promotion = deliver_compact.find(
        "cache.insert_fully_verified(tx_bytes,artifact.clone())", upgrade
    )
    execute = deliver_compact.find(
        "self.deliver_tx_with_verified_stateless_profiled(artifact,None)",
        promotion,
    )
    if (
        min(extracted_branch, upgrade, promotion, execute) < 0
        or not extracted_branch < upgrade < promotion < execute
    ):
        reject("CheckTx verification/mutation ordering drifted")
    require_compact_order(
        _one_rust_function(
            app_functions,
            "deliver_tx_with_stateless_extraction_caching_profiled",
            "cold CheckTx exact-proof acceptance",
        ),
        (
            "Transaction::decode_canonical(tx_bytes)",
            "Self::ensure_user_tx_has_no_internal_actions(&tx)",
            "Self::build_tx_artifact_for_stage(",
            "cache.insert_fully_verified(tx_bytes, artifact.clone())",
            "execute_tx_checked_historical_profiled(artifact)",
        ),
        "cold CheckTx exact-proof acceptance",
        app_source,
    )

    consensus_relative = "crates/core/app/src/server/consensus.rs"
    consensus_source = canonical_repo_path(
        root,
        consensus_relative,
        "ABCI consensus proof acceptance",
    ).read_text(encoding="utf-8")
    consensus_functions = _rust_function_declarations(consensus_source)
    require_compact_order(
        _one_rust_function(
            consensus_functions,
            "prepare_proposal",
            "ABCI prepare_proposal wiring",
        ),
        (
            "App::new(self.storage.latest_snapshot())",
            "prepare_proposal_v2_profiled(proposal, Some(self.stateless_cache.as_ref()), false)",
            "self.prepared_proposal_digests.insert(response_digest)",
            "Ok(response)",
        ),
        "ABCI prepare_proposal wiring",
        consensus_source,
    )
    require_compact_order(
        _one_rust_function(
            consensus_functions,
            "can_reuse_prepared_proposal",
            "ABCI prepared-proposal reuse predicate",
        ),
        (
            "prepared_height == Some(proposal_height)",
            "prepared_digests.contains(proposal_digest)",
            "!force_profile",
        ),
        "ABCI prepared-proposal reuse predicate",
        consensus_source,
    )
    require_compact_order(
        _one_rust_function(
            consensus_functions,
            "process_proposal",
            "ABCI process_proposal wiring",
        ),
        (
            "let proposal_digest = Self::proposal_digest(&proposal.txs)",
            "can_reuse_prepared_proposal(",
            "self.prepared_proposal_height",
            "&self.prepared_proposal_digests",
            "&proposal_digest",
            "self.force_process_proposal_profile",
            "return Ok(response::ProcessProposal::Accept)",
            "App::new(self.storage.latest_snapshot())",
            "process_proposal_v2_profiled(",
            "Some(self.stateless_cache.as_ref())",
            "None",
            "false",
            "Ok(response)",
        ),
        "ABCI process_proposal wiring",
        consensus_source,
    )

    transaction_relative = (
        "crates/core/app/src/action_handler/transaction.rs"
    )
    transaction_path = canonical_repo_path(
        root,
        transaction_relative,
        "transaction proof/resource boundary",
    )
    transaction_source = transaction_path.read_text(encoding="utf-8")
    transaction_functions = _rust_function_declarations(transaction_source)
    require_compact_order(
        _one_rust_function(
            transaction_functions,
            "validate_transaction_envelope",
            "canonical transaction envelope validation",
        ),
        (
            "ensure_transaction_resource_bounds(tx)?",
            "valid_binding_signature(tx)?",
            "check_memo_exists_if_outputs_absent_if_not(tx)?",
            "check_non_empty_transaction(tx)",
        ),
        "canonical transaction envelope validation",
    )
    nullifier_count = _one_rust_function(
        transaction_functions,
        "transaction_nullifier_count",
        "canonical transaction nullifier counter",
    )
    if "tx.spent_nullifier_count()" not in nullifier_count["body"]:
        reject("application mirrors rather than delegates nullifier counting")
    _require_drain_before_error(
        _one_rust_function(
            transaction_functions,
            "drain_joinset_results",
            "transaction structured task drain",
        ),
        join_symbol="tasks.join_next().await",
        error_symbol="result",
        label="transaction structured task drain",
    )

    canonical_tx_path = canonical_repo_path(
        root,
        "crates/core/transaction/src/transaction.rs",
        "canonical transaction nullifier projection",
    )
    canonical_functions = _rust_function_declarations(
        canonical_tx_path.read_text(encoding="utf-8")
    )
    spent_count = _one_rust_function(
        canonical_functions,
        "spent_nullifier_count",
        "canonical spent-nullifier count",
    )
    if set(
        re.findall(
            r"\bAction::([A-Za-z_][A-Za-z0-9_]*)",
            spent_count["body"],
        )
    ) != expected_action_variants:
        reject("canonical spent-nullifier Action roster drifted")
    _reject_rust_enum_catchall(
        spent_count["body"],
        "canonical spent-nullifier Action roster",
    )
    require_compact_order(
        spent_count,
        (
            "self.actions().fold",
            "Action::Transfer(transfer)",
            "Action::NoteReshape(note_reshape)",
            "Action::ShieldedIcs20Withdrawal(withdrawal)",
            "Action::ShieldedHostWithdrawal(withdrawal)",
            "Action::AggregateBundle(_)",
            "fee_funding.transfer.body.inputs.len()",
            "body_count.saturating_add(fee_count)",
        ),
        "canonical spent-nullifier count",
    )

    batch_path = canonical_repo_path(
        root,
        "crates/crypto/proof-params/src/batch.rs",
        "independent Groth16 verifier",
    )
    batch_source = batch_path.read_text(encoding="utf-8")
    batch_functions = _rust_function_declarations(batch_source)
    require_compact_order(
        _one_rust_function(
            batch_functions, "verify_each", "independent Groth16 verifier"
        ),
        (
            "item.public_inputs.len() != num_public_inputs",
            "Groth16::<Bls12_377, LibsnarkReduction>::verify_with_processed_vk(",
            "if !accepted",
        ),
        "independent Groth16 verifier",
    )
    require_compact_order(
        _one_rust_function(
            batch_functions,
            "verify_each_with_capabilities",
            "verified proof capability issuer",
        ),
        (
            "let pvk = key.bundled_pvk()",
            "for (index, item) in items.iter().enumerate()",
            "verify_each(pvk, std::slice::from_ref(item.as_ref()))",
            "VerifiedBatchItem { key, item }",
        ),
        "verified proof capability issuer",
    )
    verified_item_impl = _balanced_rust_declaration_block(
        batch_source,
        r"^[ \t]*impl[ \t]+VerifiedBatchItem\b",
        "verified proof capability binding",
    )
    if (
        "self.key != key" not in verified_item_impl
        or "self.item.public_inputs != item.public_inputs" not in verified_item_impl
    ):
        reject("verified proof capability does not bind key and exact statement")
    capability_constructor = _one_rust_function(
        _rust_function_declarations(verified_item_impl),
        "from_verified_statement",
        "aggregate verified-statement capability constructor",
    )
    if "unsafe fn" not in capability_constructor["header"]:
        reject("aggregate verified-statement capability constructor is safe")
    _require_ordered_symbols(
        capability_constructor,
        ("Self { key, item }",),
        "aggregate verified-statement capability constructor",
    )
    constructor_callers: list[tuple[str, str]] = []
    crates_root = canonical_repo_path(
        root,
        "crates",
        "aggregate capability constructor caller census",
    )
    for path in crates_root.rglob("*.rs"):
        relative = path.relative_to(root.resolve()).as_posix()
        source = path.read_text(encoding="utf-8")
        for function in _rust_function_declarations(source):
            if "VerifiedBatchItem::from_verified_statement(" in function["body"]:
                constructor_callers.append((relative, function["name"]))
    if constructor_callers != [
        (
            "crates/crypto/proof-aggregation/src/backend.rs",
            "verified_statement_capabilities",
        )
    ]:
        reject(
            "aggregate capability constructor caller census drifted: "
            f"actual={constructor_callers}"
        )
    aggregation_backend = canonical_repo_path(
        root,
        "crates/crypto/proof-aggregation/src/backend.rs",
        "aggregate capability issuer",
    ).read_text(encoding="utf-8")
    aggregate_capabilities = _one_rust_function(
        _rust_function_declarations(aggregation_backend),
        "verified_statement_capabilities",
        "aggregate capability issuer",
    )
    require_compact_order(
        aggregate_capabilities,
        (
            "self.shipping_result.result.accepted",
            "self.shipping_result.input.srs_id",
            "crate::prepare_verify_inputs(",
            "self.shipping_result.input.call.expected_padded_count",
            "AggregateStatement::new(",
            "key.bundled_pvk()",
            "statement.canonical_bytes() == self.shipping_result.input.canonical_statement_bytes",
            "statement.statement_digest().as_slice() == self.shipping_result.input.statement_digest.as_slice()",
            "VerifiedBatchItem::from_verified_statement(",
        ),
        "aggregate capability issuer",
        aggregation_backend,
    )

    for relative in (
        "crates/core/component/shielded-pool/src/component/"
        "action_handler/note_reshape_action.rs",
        "crates/core/component/shielded-pool/src/component/"
        "action_handler/transfer.rs",
        "crates/core/component/shielded-pool/src/component/"
        "action_handler/shielded_ics20_withdrawal.rs",
        "crates/core/component/shielded-pool/src/component/"
        "action_handler/shielded_host_withdrawal.rs",
    ):
        source = canonical_repo_path(
            root, relative, "action proof sink"
        ).read_text(encoding="utf-8")
        check = _one_rust_function(
            _rust_function_declarations(source),
            "check_stateless",
            f"{relative} action proof sink",
        )
        if (
            "batch::verify_each" not in check["body"]
            or "batch::batch_verify" in check["body"]
        ):
            reject(f"{relative}: action proof sink is not independent")

    for relative, symbol, label in PROOF_ACCEPTANCE_REQUIRED_RECEIPTED_TESTS:
        require_runnable_test_declaration(
            canonical_repo_path(root, relative, label),
            symbol,
            label,
        )

    mempool_relative = "crates/core/app/src/server/mempool.rs"
    mempool_source = canonical_repo_path(
        root,
        mempool_relative,
        "ABCI mempool proof acceptance",
    ).read_text(encoding="utf-8")
    _reject_consensus_diagnostic_io(
        (
            (app_relative, app_source),
            (transaction_relative, transaction_source),
            (cache_relative, cache_source),
            (consensus_relative, consensus_source),
            (mempool_relative, mempool_source),
        )
    )

    legacy_paths: set[str] = set()
    crates_root = canonical_repo_path(root, "crates", "legacy batch census")
    for path in crates_root.rglob("*.rs"):
        source = path.read_text(encoding="utf-8")
        if "batch::batch_verify(" in source:
            legacy_paths.add(path.relative_to(root.resolve()).as_posix())
    if legacy_paths != EXPECTED_LEGACY_BATCH_VERIFY_PATHS:
        reject(
            "legacy batch_verify source census drifted: "
            f"missing={sorted(EXPECTED_LEGACY_BATCH_VERIFY_PATHS-legacy_paths)}, "
            f"extra={sorted(legacy_paths-EXPECTED_LEGACY_BATCH_VERIFY_PATHS)}"
        )

    external_map_path = canonical_repo_path(
        root,
        EXTERNAL_CHECK_MAP_RELATIVE,
        "external proof-family enforcement map",
    )
    external_map = external_map_path.read_text(encoding="utf-8")
    rows = re.findall(
        r"^\| `EXT-PROOF-FAMILY` \|.*$",
        external_map,
        re.MULTILINE,
    )
    if len(rows) != 1:
        reject("external proof-family enforcement map needs one exact row")
    required_symbols = {
        "collect_consensus_proof_items_with_artifacts",
        "independently_verify_proof_families",
        "batch::verify_each_with_capabilities",
        "VerifiedBatchItem::ensure_binds",
        "validate_aggregate_verify_plan_inputs",
        "plan_aggregate_bundle_verification",
        "proof_verification_key_for_family",
        "verify_shipping_family_aggregate_profiled_status",
        "reduce_aggregate_verify_outcomes",
        "attach_verified_capabilities",
    }
    missing = {symbol for symbol in required_symbols if symbol not in rows[0]}
    obsolete = {
        symbol
        for symbol in (
            "DeployedProofKey::ALL",
            "verify_key_chunks_with_capabilities",
            "batch::batch_verify",
        )
        if symbol in rows[0]
    }
    if missing or obsolete:
        reject(
            "external proof-family enforcement map is stale: "
            f"missing={sorted(missing)}, obsolete={sorted(obsolete)}"
        )

def documented_property_ids(root: Path) -> set[str]:
    result: set[str] = set()
    for relative in PROPERTY_SOURCE_PATHS:
        path = canonical_repo_path(
            root, relative, f"security property source {relative}"
        )
        try:
            source = path.read_text(encoding="utf-8")
        except (OSError, UnicodeError) as error:
            reject(f"cannot read security property source {relative}: {error}")
        ids = re.findall(r"^\| `([A-Z0-9-]+)` \|", source, re.MULTILINE)
        if not ids:
            reject(f"security property source {relative} has no property rows")
        duplicate = sorted(
            property_id
            for property_id, count in Counter(ids).items()
            if count != 1
        )
        if duplicate:
            reject(f"security property source has duplicate IDs {duplicate}")
        overlap = result & set(ids)
        if overlap:
            reject(f"security property IDs collide across sources: {sorted(overlap)}")
        result.update(ids)
    return result


def execution_tests(matrix: dict[str, Any]) -> list[dict[str, Any]]:
    return [
        *matrix["tests"],
        *matrix["runtime_policy_contract"]["tests"],
        *matrix["property_test_contract"]["tests"],
        *matrix["artifact_test_contract"]["tests"],
    ]


def execution_plan_digest(matrix: dict[str, Any]) -> str:
    payload = [
        {
            "id": test["id"],
            "path": test["path"],
            "symbol": test["symbol"],
            "execution": test["execution"],
        }
        for test in execution_tests(matrix)
    ]
    return hashlib.sha256(
        json.dumps(
            payload,
            sort_keys=True,
            separators=(",", ":"),
            ensure_ascii=False,
        ).encode()
    ).hexdigest()


def validate_test_execution_receipt(
    root: Path,
    matrix: dict[str, Any],
    receipt_path: Path,
    nonce: str,
) -> str:
    if re.fullmatch(r"[0-9a-f]{32,128}", nonce) is None:
        reject("test execution receipt nonce is not canonical hexadecimal")
    receipt = load_strict_json(
        receipt_path,
        "FV specification test execution receipt",
        canonical=True,
    )
    receipt = exact_fields(
        receipt,
        {
            "schema",
            "claim_set",
            "nonce",
            "matrix_sha256",
            "execution_plan_sha256",
            "results",
        },
        "FV specification test execution receipt",
    )
    if receipt["schema"] != "shieldd.gnark.specification_test_receipt.v1":
        reject("unsupported FV specification test execution receipt schema")
    if receipt["claim_set"] != CLAIM_SET:
        reject("test execution receipt claim_set drifted")
    if receipt["nonce"] != nonce:
        reject("test execution receipt nonce is stale or belongs to another run")
    expected_matrix_path = (
        root
        / "crates/core/component/shielded-pool/formal"
        / "fv-specification-predicate-matrix.json"
    )
    try:
        expected_matrix_sha = hashlib.sha256(
            expected_matrix_path.read_bytes()
        ).hexdigest()
    except OSError as error:
        reject(f"cannot hash predicate matrix for test receipt: {error}")
    if receipt["matrix_sha256"] != expected_matrix_sha:
        reject("test execution receipt does not bind the current matrix bytes")
    expected_plan_sha = execution_plan_digest(matrix)
    if receipt["execution_plan_sha256"] != expected_plan_sha:
        reject("test execution receipt does not bind the exact execution plan")

    result_fields = {
        "test_id",
        "runner",
        "resolved_selector",
        "command",
        "source_sha256",
        "output_sha256",
        "executed",
        "skipped",
        "status",
    }
    results = receipt["results"]
    if not isinstance(results, list):
        reject("test execution receipt results must be an array")
    tests = execution_tests(matrix)
    expected_ids = [test["id"] for test in tests]
    result_ids: list[str] = []
    for index, (raw, test) in enumerate(
        zip(results, tests, strict=False)
    ):
        result = exact_fields(raw, result_fields, f"test result[{index}]")
        test_id = nonempty_string(
            result["test_id"], f"test result[{index}].test_id"
        )
        result_ids.append(test_id)
        if test_id != test["id"]:
            reject(
                "test execution receipt result order/identity drifted: "
                f"{test_id!r} != {test['id']!r}"
            )
        execution = test["execution"]
        if result["runner"] != execution["runner"]:
            reject(f"{test_id}: receipt runner drifted")
        resolved = nonempty_string(
            result["resolved_selector"],
            f"{test_id}.resolved_selector",
        )
        symbol = str(test["symbol"])
        if not (resolved == symbol or resolved.endswith(f"::{symbol}")):
            reject(f"{test_id}: receipt resolved another test selector")
        # Command argv values are positional, not a set.  A Cargo integration
        # test may legitimately use the same string for its target and exact
        # test selector.
        command = string_list(
            result["command"],
            f"{test_id}.command",
            unique=False,
        )
        if execution["runner"] == "go_test":
            expected_command = [
                "go",
                "test",
                execution["package"],
                "-run",
                f"^{re.escape(symbol)}$",
                "-count=1",
                "-json",
            ]
            if command != expected_command:
                reject(f"{test_id}: receipt Go command is not the exact selector")
        else:
            expected_prefix = ["cargo", "test"]
            if execution["build_profile"] == "release":
                expected_prefix.append("--release")
            expected_prefix.extend(["-p", execution["package"]])
            cargo_target = execution["cargo_target"]
            if cargo_target == "lib":
                expected_prefix.append("--lib")
            elif (
                isinstance(cargo_target, str)
                and cargo_target.startswith("bin:")
                and cargo_target != "bin:"
            ):
                expected_prefix.extend(
                    ["--bin", cargo_target.removeprefix("bin:")]
                )
            elif isinstance(cargo_target, str) and cargo_target:
                expected_prefix.extend(["--test", cargo_target])
            else:
                reject(f"{test_id}: Cargo receipt has no exact test target")
            if execution["features"]:
                expected_prefix.extend(
                    ["--features", ",".join(execution["features"])]
                )
            expected_command = expected_prefix + [
                resolved,
                "--",
                "--exact",
                "--nocapture",
            ]
            if command != expected_command:
                reject(
                    f"{test_id}: receipt Cargo command is not the exact selector"
                )
        source_path = canonical_repo_path(
            root,
            test["path"],
            f"{test_id}.receipt source",
        )
        try:
            source_sha = hashlib.sha256(source_path.read_bytes()).hexdigest()
        except OSError as error:
            reject(f"{test_id}: cannot hash receipt source: {error}")
        if result["source_sha256"] != source_sha:
            reject(f"{test_id}: receipt source hash is stale")
        if re.fullmatch(r"[0-9a-f]{64}", str(result["output_sha256"])) is None:
            reject(f"{test_id}: receipt output hash is malformed")
        if (
            result["executed"] != 1
            or result["skipped"] != 0
            or result["status"] != "passed"
        ):
            reject(
                f"{test_id}: receipt does not prove exactly one unskipped pass"
            )
    if result_ids != expected_ids or len(results) != len(tests):
        reject(
            "test execution receipt roster mismatch: "
            f"expected={expected_ids!r}, actual={result_ids!r}"
        )
    try:
        return hashlib.sha256(receipt_path.read_bytes()).hexdigest()
    except OSError as error:
        reject(f"cannot hash test execution receipt: {error}")


def _validate_or_shape_evidence(
    root: Path,
    value: Any,
    label: str,
    *,
    repository_sources: bool,
) -> tuple[Path | None, tuple[str, ...]]:
    if repository_sources:
        return require_source_evidence(root, value, label)
    evidence = exact_fields(value, {"path", "symbols"}, label)
    canonical_repo_path(root, evidence["path"], f"{label}.path")
    return None, tuple(string_list(evidence["symbols"], f"{label}.symbols"))


def validate_proof_acceptance_surface(
    root: Path,
    value: Any,
    profiles: set[str],
    *,
    repository_sources: bool,
) -> dict[str, Any]:
    surface = exact_fields(
        value,
        {"production_sinks", "nonproduction_exclusions"},
        "proof_acceptance_surface",
    )
    sinks = surface["production_sinks"]
    exclusions = surface["nonproduction_exclusions"]
    if not isinstance(sinks, list) or not sinks:
        reject("proof acceptance surface must contain production sinks")
    if not isinstance(exclusions, list) or not exclusions:
        reject("proof acceptance surface must contain nonproduction exclusions")

    sink_fields = {
        "id",
        "profiles",
        "entrypoint",
        "terminal_effects",
        "required_guards",
        "test_ids",
    }
    allowed_effects = {
        "cache_promotion",
        "consensus_accept",
        "proposal_inclusion",
        "state_mutation",
        "stateful_replay",
        "stateless_accept",
        "transaction_accept",
    }
    sink_ids: list[str] = []
    covered_profiles: set[str] = set()
    for index, raw in enumerate(sinks):
        sink = exact_fields(
            raw, sink_fields, f"production proof sink[{index}]"
        )
        sink_id = nonempty_string(
            sink["id"], f"production proof sink[{index}].id"
        )
        if re.fullmatch(r"SINK-[A-Z0-9-]+", sink_id) is None:
            reject(f"invalid production proof sink ID {sink_id!r}")
        sink_ids.append(sink_id)
        sink_profiles = string_list(
            sink["profiles"], f"{sink_id}.profiles"
        )
        unknown_profiles = set(sink_profiles) - profiles
        if unknown_profiles:
            reject(
                f"{sink_id}: unknown proof-sink profiles "
                f"{sorted(unknown_profiles)}"
            )
        covered_profiles.update(sink_profiles)
        _validate_or_shape_evidence(
            root,
            sink["entrypoint"],
            f"{sink_id}.entrypoint",
            repository_sources=repository_sources,
        )
        effects = string_list(
            sink["terminal_effects"], f"{sink_id}.terminal_effects"
        )
        unknown_effects = set(effects) - allowed_effects
        if unknown_effects:
            reject(
                f"{sink_id}: unknown terminal effects "
                f"{sorted(unknown_effects)}"
            )
        guards = sink["required_guards"]
        if not isinstance(guards, list) or not guards:
            reject(f"{sink_id}: required_guards must be non-empty")
        for guard_index, guard in enumerate(guards):
            _validate_or_shape_evidence(
                root,
                guard,
                f"{sink_id}.required_guards[{guard_index}]",
                repository_sources=repository_sources,
            )
        sink_test_ids = string_list(
            sink["test_ids"],
            f"{sink_id}.test_ids",
        )
        if not sink_test_ids:
            reject(f"{sink_id}: test_ids must be non-empty")
        if sink_test_ids != sorted(sink_test_ids):
            reject(f"{sink_id}: test_ids must be sorted")
    if len(sink_ids) != len(set(sink_ids)):
        reject("production proof sink IDs contain duplicates")
    if sink_ids != sorted(sink_ids):
        reject("production proof sinks must be sorted by ID")
    if covered_profiles != profiles:
        reject(
            "production proof sinks do not cover every deployed profile: "
            f"missing={sorted(profiles-covered_profiles)}"
        )

    exclusion_fields = {"id", "source", "guard", "reason"}
    exclusion_ids: list[str] = []
    for index, raw in enumerate(exclusions):
        exclusion = exact_fields(
            raw,
            exclusion_fields,
            f"nonproduction proof exclusion[{index}]",
        )
        exclusion_id = nonempty_string(
            exclusion["id"],
            f"nonproduction proof exclusion[{index}].id",
        )
        if re.fullmatch(r"EXCLUSION-[A-Z0-9-]+", exclusion_id) is None:
            reject(f"invalid nonproduction proof exclusion ID {exclusion_id!r}")
        exclusion_ids.append(exclusion_id)
        _validate_or_shape_evidence(
            root,
            exclusion["source"],
            f"{exclusion_id}.source",
            repository_sources=repository_sources,
        )
        _validate_or_shape_evidence(
            root,
            exclusion["guard"],
            f"{exclusion_id}.guard",
            repository_sources=repository_sources,
        )
        nonempty_string(exclusion["reason"], f"{exclusion_id}.reason")
    if len(exclusion_ids) != len(set(exclusion_ids)):
        reject("nonproduction proof exclusion IDs contain duplicates")
    if exclusion_ids != sorted(exclusion_ids):
        reject("nonproduction proof exclusions must be sorted by ID")

    digest = proof_acceptance_surface_digest(surface)
    if digest != PROOF_ACCEPTANCE_SURFACE_SHA256:
        reject(
            "code-owned proof acceptance surface drifted "
            f"(expected={PROOF_ACCEPTANCE_SURFACE_SHA256}, actual={digest})"
        )
    if repository_sources:
        validate_proof_acceptance_repository_surface(root)
    return surface


def validate_runtime_policy_contract(
    root: Path,
    value: Any,
    *,
    repository_sources: bool,
) -> dict[str, dict[str, Any]]:
    contract = exact_fields(
        value,
        {"policies", "tests"},
        "runtime policy contract",
    )
    raw_tests = contract["tests"]
    if not isinstance(raw_tests, list) or not raw_tests:
        reject("runtime policy contract tests must be non-empty")
    test_fields = {"id", "kind", "path", "symbol", "execution"}
    tests: dict[str, dict[str, Any]] = {}
    test_ids: list[str] = []
    for index, raw in enumerate(raw_tests):
        test = exact_fields(
            raw,
            test_fields,
            f"runtime policy test[{index}]",
        )
        test_id = nonempty_string(
            test["id"],
            f"runtime policy test[{index}].id",
        )
        if re.fullmatch(r"RUNTIME-[A-Z0-9-]+", test_id) is None:
            reject(f"invalid runtime policy test ID {test_id!r}")
        if test_id in tests:
            reject(f"duplicate runtime policy test {test_id}")
        if test["kind"] not in TEST_KINDS:
            reject(f"{test_id}: unsupported runtime test kind")
        path = canonical_repo_path(root, test["path"], f"{test_id}.path")
        symbol = nonempty_string(test["symbol"], f"{test_id}.symbol")
        execution = exact_fields(
            test["execution"],
            TEST_EXECUTION_FIELDS,
            f"{test_id}.execution",
        )
        expected_execution = expected_test_execution(
            test_id,
            str(test["path"]),
            symbol,
        )
        if execution != expected_execution:
            reject(
                f"{test_id}: runtime execution command drifted from the "
                "code-owned exact selector"
            )
        if repository_sources:
            require_runnable_test_declaration(path, symbol, test_id)
        tests[test_id] = test
        test_ids.append(test_id)
    if test_ids != sorted(test_ids):
        reject("runtime policy tests must be sorted by ID")

    raw_policies = contract["policies"]
    if not isinstance(raw_policies, list) or not raw_policies:
        reject("runtime policy contract policies must be non-empty")
    policy_fields = {
        "id",
        "statement",
        "parameters",
        "sinks",
        "test_ids",
    }
    policies: dict[str, dict[str, Any]] = {}
    policy_ids: list[str] = []
    owned_test_ids: set[str] = set()
    for index, raw in enumerate(raw_policies):
        policy = exact_fields(
            raw,
            policy_fields,
            f"runtime policy[{index}]",
        )
        policy_id = nonempty_string(
            policy["id"],
            f"runtime policy[{index}].id",
        )
        if re.fullmatch(r"RUNTIME-POLICY-[A-Z0-9-]+", policy_id) is None:
            reject(f"invalid runtime policy ID {policy_id!r}")
        if policy_id in policies:
            reject(f"duplicate runtime policy {policy_id}")
        nonempty_string(policy["statement"], f"{policy_id}.statement")
        parameters = policy["parameters"]
        if (
            not isinstance(parameters, dict)
            or not parameters
            or any(
                not isinstance(name, str)
                or re.fullmatch(r"[a-z][a-z0-9_]*", name) is None
                or type(parameter) is not int
                or parameter < 0
                for name, parameter in parameters.items()
            )
        ):
            reject(f"{policy_id}: runtime parameters are not canonical")
        sinks = string_list(policy["sinks"], f"{policy_id}.sinks")
        policy_test_ids = string_list(
            policy["test_ids"],
            f"{policy_id}.test_ids",
        )
        if policy_test_ids != sorted(policy_test_ids):
            reject(f"{policy_id}: runtime test IDs must be sorted")
        unknown_tests = set(policy_test_ids) - set(tests)
        if unknown_tests:
            reject(
                f"{policy_id}: unknown runtime tests "
                f"{sorted(unknown_tests)}"
            )
        overlap = owned_test_ids & set(policy_test_ids)
        if overlap:
            reject(
                f"runtime policy tests have multiple owners {sorted(overlap)}"
            )
        owned_test_ids.update(policy_test_ids)
        reviewed = RUNTIME_POLICY_BASELINE.get(policy_id)
        actual = {
            "parameters": parameters,
            "sinks": sinks,
            "test_ids": policy_test_ids,
        }
        if reviewed != actual:
            reject(
                f"{policy_id}: runtime policy drifted from the "
                f"independent baseline: {actual!r} != {reviewed!r}"
            )
        policies[policy_id] = policy
        policy_ids.append(policy_id)
    if policy_ids != sorted(policy_ids):
        reject("runtime policies must be sorted by ID")
    if set(policies) != set(RUNTIME_POLICY_BASELINE):
        reject(
            "runtime policy census drifted: "
            f"missing={sorted(set(RUNTIME_POLICY_BASELINE)-set(policies))}, "
            f"extra={sorted(set(policies)-set(RUNTIME_POLICY_BASELINE))}"
        )
    if owned_test_ids != set(tests):
        reject(
            "runtime policy test ownership is incomplete: "
            f"unowned={sorted(set(tests)-owned_test_ids)}"
        )
    digest = runtime_policy_contract_digest(contract)
    if digest != RUNTIME_POLICY_CONTRACT_SHA256:
        reject(
            "runtime policy contract drifted, including normative statements "
            f"(expected={RUNTIME_POLICY_CONTRACT_SHA256}, actual={digest}); "
            "update RUNTIME_POLICY_CONTRACT_SHA256 only after independent "
            "review"
        )
    return tests


def validate_owned_test_contract(
    root: Path,
    value: Any,
    *,
    label: str,
    test_id_prefix: str,
    owner_baseline: dict[str, tuple[str, ...]],
    source_baseline: tuple[str, ...],
    digest_baseline: str,
    repository_sources: bool,
) -> dict[str, dict[str, Any]]:
    contract = exact_fields(
        value,
        {"owners", "source_census", "tests"},
        label,
    )
    source_census = string_list(
        contract["source_census"],
        f"{label}.source_census",
    )
    if source_census != sorted(source_census):
        reject(f"{label} source census must be sorted")
    if tuple(source_census) != source_baseline:
        reject(
            f"{label} source census drifted: "
            f"missing={sorted(set(source_baseline)-set(source_census))}, "
            f"extra={sorted(set(source_census)-set(source_baseline))}"
        )
    for index, relative_path in enumerate(source_census):
        path = canonical_repo_path(
            root,
            relative_path,
            f"{label}.source_census[{index}]",
        )
        if repository_sources and not path.is_file():
            reject(f"{label} source is missing: {path}")

    raw_tests = contract["tests"]
    if not isinstance(raw_tests, list) or not raw_tests:
        reject(f"{label} tests must be non-empty")
    test_fields = {"id", "kind", "path", "symbol", "execution"}
    tests: dict[str, dict[str, Any]] = {}
    test_ids: list[str] = []
    source_paths: set[str] = set()
    for index, raw in enumerate(raw_tests):
        test = exact_fields(raw, test_fields, f"{label} test[{index}]")
        test_id = nonempty_string(
            test["id"],
            f"{label} test[{index}].id",
        )
        if (
            re.fullmatch(
                re.escape(test_id_prefix) + r"-[A-Z0-9-]+",
                test_id,
            )
            is None
        ):
            reject(f"invalid {label} test ID {test_id!r}")
        if test_id in tests:
            reject(f"duplicate {label} test {test_id}")
        if test["kind"] not in TEST_KINDS:
            reject(f"{test_id}: unsupported {label} test kind")
        relative_path = nonempty_string(test["path"], f"{test_id}.path")
        path = canonical_repo_path(root, relative_path, f"{test_id}.path")
        if relative_path not in source_census:
            reject(f"{test_id}: source is outside the {label} census")
        source_paths.add(relative_path)
        symbol = nonempty_string(test["symbol"], f"{test_id}.symbol")
        execution = exact_fields(
            test["execution"],
            TEST_EXECUTION_FIELDS,
            f"{test_id}.execution",
        )
        expected_execution = expected_test_execution(
            test_id,
            relative_path,
            symbol,
        )
        if execution != expected_execution:
            reject(
                f"{test_id}: {label} execution command drifted from the "
                "code-owned exact selector"
            )
        if repository_sources:
            require_runnable_test_declaration(path, symbol, test_id)
        tests[test_id] = test
        test_ids.append(test_id)
    if test_ids != sorted(test_ids):
        reject(f"{label} tests must be sorted by ID")
    if source_paths != set(source_census):
        reject(
            f"{label} tests do not cover the source census: "
            f"unowned={sorted(set(source_census)-source_paths)}"
        )

    raw_owners = contract["owners"]
    if not isinstance(raw_owners, list) or not raw_owners:
        reject(f"{label} owners must be non-empty")
    owners: dict[str, tuple[str, ...]] = {}
    owner_ids: list[str] = []
    owned_test_ids: set[str] = set()
    for index, raw in enumerate(raw_owners):
        owner = exact_fields(
            raw,
            {"id", "test_ids"},
            f"{label} owner[{index}]",
        )
        owner_id = nonempty_string(
            owner["id"],
            f"{label} owner[{index}].id",
        )
        if re.fullmatch(r"[A-Z0-9-]+", owner_id) is None:
            reject(f"invalid {label} owner ID {owner_id!r}")
        if owner_id in owners:
            reject(f"duplicate {label} owner {owner_id}")
        owner_test_ids = string_list(
            owner["test_ids"],
            f"{owner_id}.test_ids",
        )
        if owner_test_ids != sorted(owner_test_ids):
            reject(f"{owner_id}: {label} test IDs must be sorted")
        unknown = set(owner_test_ids) - set(tests)
        if unknown:
            reject(f"{owner_id}: unknown {label} tests {sorted(unknown)}")
        overlap = owned_test_ids & set(owner_test_ids)
        if overlap:
            reject(f"{label} tests have multiple owners {sorted(overlap)}")
        owned_test_ids.update(owner_test_ids)
        owners[owner_id] = tuple(owner_test_ids)
        owner_ids.append(owner_id)
    if owner_ids != sorted(owner_ids):
        reject(f"{label} owners must be sorted by ID")
    if owners != owner_baseline:
        reject(
            f"{label} ownership drifted from the independent baseline"
        )
    if owned_test_ids != set(tests):
        reject(
            f"{label} test ownership is incomplete: "
            f"unowned={sorted(set(tests)-owned_test_ids)}"
        )

    digest = owned_test_contract_digest(contract)
    if digest != digest_baseline:
        reject(
            f"{label} drifted "
            f"(expected={digest_baseline}, actual={digest}); update its "
            "digest only after independent review"
        )
    return tests


def validate_reviewed_test_census(
    root: Path,
    value: Any,
    ledger_tests: tuple[dict[str, dict[str, Any]], ...],
    *,
    repository_sources: bool,
) -> dict[str, set[tuple[str, str]]]:
    census = exact_fields(
        value,
        {"source_census", "selected", "exclusions"},
        "reviewed test census",
    )
    source_census = string_list(
        census["source_census"],
        "reviewed_test_census.source_census",
    )
    if source_census != sorted(source_census):
        reject("reviewed test source census must be sorted")
    if tuple(source_census) != REVIEWED_TEST_SOURCE_CENSUS:
        reject(
            "reviewed test source census drifted from the independent "
            "baseline: "
            f"missing={sorted(set(REVIEWED_TEST_SOURCE_CENSUS)-set(source_census))}, "
            f"extra={sorted(set(source_census)-set(REVIEWED_TEST_SOURCE_CENSUS))}"
        )
    for index, relative_path in enumerate(source_census):
        path = canonical_repo_path(
            root,
            relative_path,
            f"reviewed_test_census.source_census[{index}]",
        )
        if repository_sources and not path.is_file():
            reject(f"reviewed test source is missing: {path}")

    expected_selected = {
        (
            nonempty_string(
                test["path"],
                f"reviewed ledger {test_id}.path",
            ),
            nonempty_string(
                test["symbol"],
                f"reviewed ledger {test_id}.symbol",
            ),
        )
        for tests in ledger_tests
        for test_id, test in tests.items()
    }
    expected_source_census = {path for path, _ in expected_selected}
    unknown_selected_sources = expected_source_census - set(source_census)
    if unknown_selected_sources:
        reject(
            "reviewed test source census omits four-ledger selector sources: "
            f"{sorted(unknown_selected_sources)}"
        )

    raw_selected = census["selected"]
    if not isinstance(raw_selected, list) or not raw_selected:
        reject("reviewed test selected selectors must be non-empty")
    selected_rows: list[tuple[str, str]] = []
    for index, raw in enumerate(raw_selected):
        row = exact_fields(
            raw,
            {"path", "symbol"},
            f"reviewed_test_census.selected[{index}]",
        )
        relative_path = nonempty_string(
            row["path"],
            f"reviewed_test_census.selected[{index}].path",
        )
        canonical_repo_path(
            root,
            relative_path,
            f"reviewed_test_census.selected[{index}].path",
        )
        symbol = nonempty_string(
            row["symbol"],
            f"reviewed_test_census.selected[{index}].symbol",
        )
        selected_rows.append((relative_path, symbol))
    if selected_rows != sorted(selected_rows):
        reject("reviewed test selected selectors must be sorted")
    selected = set(selected_rows)
    if len(selected) != len(selected_rows):
        reject("reviewed test selected selectors contain duplicates")
    if selected != expected_selected:
        reject(
            "reviewed test selected selectors differ from the exact "
            "four-ledger union: "
            f"missing={sorted(expected_selected-selected)}, "
            f"extra={sorted(selected-expected_selected)}"
        )

    raw_exclusions = census["exclusions"]
    if not isinstance(raw_exclusions, list) or not raw_exclusions:
        reject("reviewed test exclusions must be non-empty")
    exclusion_rows: list[tuple[str, str]] = []
    for index, raw in enumerate(raw_exclusions):
        row = exact_fields(
            raw,
            {"path", "symbol", "reason"},
            f"reviewed_test_census.exclusions[{index}]",
        )
        relative_path = nonempty_string(
            row["path"],
            f"reviewed_test_census.exclusions[{index}].path",
        )
        canonical_repo_path(
            root,
            relative_path,
            f"reviewed_test_census.exclusions[{index}].path",
        )
        if relative_path not in source_census:
            reject(
                "reviewed test exclusion names an unknown census source: "
                f"{relative_path}"
            )
        symbol = nonempty_string(
            row["symbol"],
            f"reviewed_test_census.exclusions[{index}].symbol",
        )
        reason = nonempty_string(
            row["reason"],
            f"reviewed_test_census.exclusions[{index}].reason",
        )
        if reason not in REVIEWED_TEST_EXCLUSION_REASONS:
            reject(
                "reviewed test exclusion has unknown typed reason "
                f"{reason!r}"
            )
        exclusion_rows.append((relative_path, symbol))
    if exclusion_rows != sorted(exclusion_rows):
        reject("reviewed test exclusions must be sorted by path and symbol")
    exclusions = set(exclusion_rows)
    if len(exclusions) != len(exclusion_rows):
        reject("reviewed test exclusions contain duplicate selectors")
    overlap = selected & exclusions
    if overlap:
        reject(
            "reviewed test selectors are both selected and excluded: "
            f"{sorted(overlap)}"
        )
    declared_sources = {
        path for path, _ in selected | exclusions
    }
    unknown_declared_sources = declared_sources - set(source_census)
    if unknown_declared_sources:
        reject(
            "reviewed test selectors name sources outside the source "
            f"census: {sorted(unknown_declared_sources)}"
        )
    exclusion_digest = reviewed_test_exclusions_digest(raw_exclusions)
    if exclusion_digest != REVIEWED_TEST_EXCLUSIONS_SHA256:
        reject(
            "reviewed test exclusions drifted from the independently pinned "
            "roster "
            f"(expected={REVIEWED_TEST_EXCLUSIONS_SHA256}, "
            f"actual={exclusion_digest})"
        )
    if repository_sources:
        validate_reviewed_test_source_discovery(
            root,
            tuple(source_census),
        )
        validate_reviewed_test_source_coverage(
            root,
            tuple(source_census),
            selected,
            exclusions,
        )
    return {"selected": selected, "exclusions": exclusions}


def validate_matrix_structure(
    root: Path,
    matrix: Any,
    profile_catalog: tuple[dict[str, Any], ...],
    *,
    validate_repository_sources: bool,
) -> dict[str, Any]:
    matrix = exact_fields(
        matrix,
        {
            "schema",
            "claim_set",
            "requirement_source",
            "native_type_parity_census",
            "certification_status_vocabulary",
            "profiles",
            "proof_acceptance_surface",
            "runtime_policy_contract",
            "property_test_contract",
            "artifact_test_contract",
            "reviewed_test_census",
            "role_sets",
            "tests",
            "property_contract",
            "evidence_sets",
            "predicates",
        },
        "predicate matrix",
    )
    if matrix["schema"] != MATRIX_SCHEMA_ID:
        reject(f"unsupported predicate matrix schema {matrix['schema']!r}")
    if matrix["claim_set"] != CLAIM_SET:
        reject(
            "predicate matrix claim_set must name the complete reviewed baseline"
        )
    expected_requirement_source = (
        "crates/core/component/shielded-pool/formal/"
        "fv-specification-requirements.json"
    )
    if matrix["requirement_source"] != expected_requirement_source:
        reject("predicate matrix requirement_source drifted")
    requirement_path = canonical_repo_path(
        root,
        matrix["requirement_source"],
        "predicate matrix requirement_source",
    )
    requirements = validate_requirement_source(requirement_path)
    if matrix["certification_status_vocabulary"] != list(STATUS_VOCABULARY):
        reject("predicate matrix certification vocabulary drifted")

    catalog_by_label = {
        str(profile["label"]): profile for profile in profile_catalog
    }
    if set(catalog_by_label) != ALL_PROFILES:
        reject(
            "checker/FV-profile roster mismatch: "
            f"checker_only={sorted(ALL_PROFILES - set(catalog_by_label))}, "
            f"catalog_only={sorted(set(catalog_by_label) - ALL_PROFILES)}"
        )

    profile_fields = {
        "label",
        "family",
        "input_slots",
        "output_slots",
        "circuit_source",
        "runtime_source",
    }
    profile_rows = matrix["profiles"]
    if not isinstance(profile_rows, list) or not profile_rows:
        reject("predicate matrix must contain profiles")
    profiles: dict[str, dict[str, Any]] = {}
    for index, raw in enumerate(profile_rows):
        profile = exact_fields(raw, profile_fields, f"matrix profile[{index}]")
        label = nonempty_string(profile["label"], f"profile[{index}].label")
        if label in profiles:
            reject(f"predicate matrix has duplicate profile {label}")
        if label not in EXPECTED_PROFILES:
            reject(f"predicate matrix has unknown profile {label}")
        expected = EXPECTED_PROFILES[label]
        for key, expected_value in expected.items():
            if profile[key] != expected_value:
                reject(
                    f"{label}.{key} {profile[key]!r} != reviewed "
                    f"{expected_value!r}"
                )
        for source_key in ("circuit_source", "runtime_source"):
            source_path = canonical_repo_path(
                root, profile[source_key], f"{label}.{source_key}"
            )
            if validate_repository_sources and not source_path.is_file():
                reject(f"{label}: missing {source_key}: {source_path}")
        profiles[label] = profile
    if set(profiles) != ALL_PROFILES:
        reject(
            "predicate-matrix/profile roster mismatch: "
            f"missing={sorted(ALL_PROFILES - set(profiles))}, "
            f"extra={sorted(set(profiles) - ALL_PROFILES)}"
        )

    proof_acceptance_surface = validate_proof_acceptance_surface(
        root,
        matrix["proof_acceptance_surface"],
        set(profiles),
        repository_sources=validate_repository_sources,
    )
    runtime_policy_tests = validate_runtime_policy_contract(
        root,
        matrix["runtime_policy_contract"],
        repository_sources=validate_repository_sources,
    )
    property_contract_tests = validate_owned_test_contract(
        root,
        matrix["property_test_contract"],
        label="property test contract",
        test_id_prefix="PROPERTY",
        owner_baseline=PROPERTY_TEST_CONTRACT_BASELINE,
        source_baseline=PROPERTY_TEST_SOURCE_CENSUS,
        digest_baseline=PROPERTY_TEST_CONTRACT_SHA256,
        repository_sources=validate_repository_sources,
    )
    artifact_contract_tests = validate_owned_test_contract(
        root,
        matrix["artifact_test_contract"],
        label="artifact test contract",
        test_id_prefix="ARTIFACT",
        owner_baseline=ARTIFACT_TEST_CONTRACT_BASELINE,
        source_baseline=ARTIFACT_TEST_SOURCE_CENSUS,
        digest_baseline=ARTIFACT_TEST_CONTRACT_SHA256,
        repository_sources=validate_repository_sources,
    )

    property_fields = {"id", "scope", "profiles", "predicate_ids"}
    property_rows = matrix["property_contract"]
    if not isinstance(property_rows, list) or not property_rows:
        reject("predicate matrix must contain a security property contract")
    properties: dict[str, dict[str, Any]] = {}
    for index, raw in enumerate(property_rows):
        row = exact_fields(
            raw, property_fields, f"property_contract[{index}]"
        )
        property_id = nonempty_string(
            row["id"], f"property_contract[{index}].id"
        )
        if re.fullmatch(r"[A-Z0-9-]+", property_id) is None:
            reject(f"invalid security property ID {property_id!r}")
        if property_id in properties:
            reject(f"duplicate security property contract {property_id}")
        scope = row["scope"]
        if scope not in PROPERTY_SCOPES:
            reject(f"{property_id}: unsupported property scope {scope!r}")
        property_profiles = set(
            string_list(
                row["profiles"], f"{property_id}.profiles"
            )
        )
        unknown_profiles = property_profiles - set(profiles)
        if unknown_profiles:
            reject(
                f"{property_id}: unknown property profiles "
                f"{sorted(unknown_profiles)}"
            )
        property_predicates = set(
            string_list(
                row["predicate_ids"], f"{property_id}.predicate_ids"
            )
        )
        unknown_predicates = property_predicates - set(PREDICATE_BASELINE)
        if unknown_predicates:
            reject(
                f"{property_id}: unknown required predicates "
                f"{sorted(unknown_predicates)}"
            )
        latent = {
            predicate_id
            for predicate_id in property_predicates
            if not (
                property_profiles
                & set(PREDICATE_BASELINE[predicate_id][1])
            )
        }
        if latent:
            reject(
                f"{property_id}: predicates have no applicable property "
                f"profile {sorted(latent)}"
            )
        property_placements = {
            requirements[predicate_id]["placement"]
            for predicate_id in property_predicates
        }
        if scope == "acceptance" and "construction" in property_placements:
            reject(
                f"{property_id}: acceptance property cannot consume "
                "construction-only predicates"
            )
        if scope == "construction" and property_placements != {"construction"}:
            reject(
                f"{property_id}: construction property contains "
                "acceptance predicates"
            )
        if scope == "composition" and (
            "construction" not in property_placements
            or property_placements == {"construction"}
        ):
            reject(
                f"{property_id}: composition property must join construction "
                "and acceptance/relation predicates"
            )
        properties[property_id] = {
            **row,
            "profiles_set": property_profiles,
            "predicate_ids_set": property_predicates,
        }
    if property_rows != sorted(property_rows, key=lambda row: row["id"]):
        reject("security property contract must be sorted by ID")
    actual_property_digest = property_contract_digest(property_rows)
    if actual_property_digest != PROPERTY_CONTRACT_SHA256:
        reject(
            "code-owned security property contract drifted "
            f"(expected={PROPERTY_CONTRACT_SHA256}, "
            f"actual={actual_property_digest})"
        )
    documented = documented_property_ids(root)
    exclusions = set(PROPERTY_EXCLUSIONS)
    if set(properties) & exclusions:
        reject(
            "excluded tooling/meta properties became citable security "
            f"objectives: {sorted(set(properties) & exclusions)}"
        )
    if set(properties) | exclusions != documented:
        reject(
            "security property source census mismatch: "
            f"uncensused={sorted(documented-set(properties)-exclusions)}, "
            f"unknown={sorted((set(properties)|exclusions)-documented)}"
        )

    role_set_fields = {"id", "profile_roles"}
    profile_role_fields = {"profile", "roles", "multiplicity"}
    role_rows = matrix["role_sets"]
    if not isinstance(role_rows, list) or not role_rows:
        reject("predicate matrix must contain role sets")
    role_sets: dict[str, dict[str, tuple[str, ...]]] = {}
    for index, raw in enumerate(role_rows):
        role_set = exact_fields(raw, role_set_fields, f"role_set[{index}]")
        role_set_id = nonempty_string(role_set["id"], f"role_set[{index}].id")
        if re.fullmatch(r"[A-Z0-9-]+", role_set_id) is None:
            reject(f"invalid role-set ID {role_set_id!r}")
        if role_set_id in role_sets:
            reject(f"duplicate role set {role_set_id}")
        profile_roles = role_set["profile_roles"]
        if not isinstance(profile_roles, list) or not profile_roles:
            reject(f"{role_set_id}: profile_roles must be non-empty")
        expanded: dict[str, tuple[str, ...]] = {}
        for role_index, raw_roles in enumerate(profile_roles):
            entry = exact_fields(
                raw_roles,
                profile_role_fields,
                f"{role_set_id}.profile_roles[{role_index}]",
            )
            profile_label = nonempty_string(
                entry["profile"],
                f"{role_set_id}.profile_roles[{role_index}].profile",
            )
            if profile_label not in profiles:
                reject(f"{role_set_id}: unknown profile {profile_label}")
            if profile_label in expanded:
                reject(f"{role_set_id}: duplicate profile {profile_label}")
            roles = tuple(
                string_list(entry["roles"], f"{role_set_id}/{profile_label}.roles")
            )
            for role in roles:
                if re.fullmatch(r"[a-z0-9_.]+", role) is None:
                    reject(f"{role_set_id}: invalid role {role!r}")
            multiplicity = entry["multiplicity"]
            if (
                not isinstance(multiplicity, int)
                or isinstance(multiplicity, bool)
                or multiplicity != len(roles)
            ):
                reject(
                    f"{role_set_id}/{profile_label}: multiplicity "
                    f"{multiplicity!r} != exact role count {len(roles)}"
                )
            expanded[profile_label] = roles
        role_sets[role_set_id] = expanded

    test_fields = {
        "id",
        "kind",
        "path",
        "symbol",
        "predicate_ids",
        "profiles",
        "execution",
    }
    test_rows = matrix["tests"]
    if not isinstance(test_rows, list) or not test_rows:
        reject("predicate matrix must contain tests")
    tests: dict[str, dict[str, Any]] = {}
    for index, raw in enumerate(test_rows):
        test = exact_fields(raw, test_fields, f"test[{index}]")
        test_id = nonempty_string(test["id"], f"test[{index}].id")
        if test_id in tests:
            reject(f"duplicate predicate evidence test {test_id}")
        if test["kind"] not in TEST_KINDS:
            reject(f"{test_id}: unsupported test kind {test['kind']!r}")
        test_profiles = set(string_list(test["profiles"], f"{test_id}.profiles"))
        if not test_profiles <= set(profiles):
            reject(f"{test_id}: unknown profiles {sorted(test_profiles-set(profiles))}")
        test_predicate_ids = set(
            string_list(test["predicate_ids"], f"{test_id}.predicate_ids")
        )
        unknown_predicates = test_predicate_ids - set(PREDICATE_BASELINE)
        if unknown_predicates:
            reject(
                f"{test_id}: unknown predicates {sorted(unknown_predicates)}"
            )
        test_placements = {
            PREDICATE_BASELINE[predicate_id][0]
            for predicate_id in test_predicate_ids
        }
        if len(test_placements) != 1:
            reject(
                f"{test_id}: one test row cannot mix predicate placements "
                f"{sorted(test_placements)}"
            )
        for predicate_id in test_predicate_ids:
            inapplicable_profiles = (
                test_profiles - set(PREDICATE_BASELINE[predicate_id][1])
            )
            if inapplicable_profiles:
                reject(
                    f"{test_id}/{predicate_id}: test claims inapplicable "
                    f"profiles {sorted(inapplicable_profiles)}"
                )
        test_path = canonical_repo_path(root, test["path"], f"{test_id}.path")
        symbol = nonempty_string(test["symbol"], f"{test_id}.symbol")
        execution = exact_fields(
            test["execution"],
            TEST_EXECUTION_FIELDS,
            f"{test_id}.execution",
        )
        expected_execution = expected_test_execution(
            test_id,
            str(test["path"]),
            symbol,
        )
        if execution != expected_execution:
            reject(
                f"{test_id}: execution command drifted from the code-owned "
                f"exact selector: {execution!r} != {expected_execution!r}"
            )
        if validate_repository_sources:
            if not test_path.is_file():
                reject(f"{test_id}: test source is missing: {test_path}")
            require_runnable_test_declaration(test_path, symbol, test_id)
        tests[test_id] = test
    test_ledgers = {
        "predicate": tests,
        "runtime policy": runtime_policy_tests,
        "property": property_contract_tests,
        "artifact": artifact_contract_tests,
    }
    seen_test_ids: set[str] = set()
    for ledger, ledger_tests in test_ledgers.items():
        overlap = seen_test_ids & set(ledger_tests)
        if overlap:
            reject(
                f"{ledger} test IDs overlap another evidence ledger: "
                f"{sorted(overlap)}"
            )
        seen_test_ids.update(ledger_tests)
    all_tests = (
        tests
        | runtime_policy_tests
        | property_contract_tests
        | artifact_contract_tests
    )
    owned_test_selectors = {
        (str(test["path"]), str(test["symbol"]))
        for test in all_tests.values()
    }
    unreceipted_acceptance_evidence = {
        (path, symbol)
        for path, symbol, _ in PROOF_ACCEPTANCE_REQUIRED_RECEIPTED_TESTS
    } - owned_test_selectors
    if unreceipted_acceptance_evidence:
        reject(
            "proof-acceptance repository evidence is declaration-only rather "
            "than receipted: "
            f"{sorted(unreceipted_acceptance_evidence)}"
        )
    if validate_repository_sources:
        for test_id, test in all_tests.items():
            execution = test["execution"]
            if execution["runner"] == "cargo_test":
                validate_rust_test_execution_target(
                    root,
                    test_id,
                    str(test["path"]),
                    execution,
                )
    validate_action_authorization_execution_join(all_tests)
    for sink in proof_acceptance_surface["production_sinks"]:
        sink_id = str(sink["id"])
        sink_test_ids = set(sink["test_ids"])
        unknown_sink_tests = sink_test_ids - set(all_tests)
        if unknown_sink_tests:
            reject(
                f"{sink_id}: unknown proof-acceptance tests "
                f"{sorted(unknown_sink_tests)}"
            )
        profiled_sink_tests = sink_test_ids & set(tests)
        covered_sink_profiles = {
            profile
            for test_id in profiled_sink_tests
            for profile in tests[test_id]["profiles"]
        }
        missing_sink_profiles = (
            set(sink["profiles"]) - covered_sink_profiles
        )
        if missing_sink_profiles:
            reject(
                f"{sink_id}: adversarial tests do not cover sink profiles "
                f"{sorted(missing_sink_profiles)}"
            )
    reviewed_test_census = validate_reviewed_test_census(
        root,
        matrix["reviewed_test_census"],
        (
            tests,
            runtime_policy_tests,
            property_contract_tests,
            artifact_contract_tests,
        ),
        repository_sources=validate_repository_sources,
    )
    if validate_repository_sources:
        validate_extractor_golden_contract(root)
        validate_proof_acceptance_test_census(root, tests)
        validate_withdrawal_runtime_test_census(root, tests)
        validate_action_handler_test_censuses(root, tests)
        validate_dynamic_proof_test_censuses(root, tests)
        validate_closed_test_source_census(
            root,
            PROPERTY_TEST_SOURCE_CENSUS,
            all_tests,
            "property test contract",
            allowed_exclusions=reviewed_test_census["exclusions"],
        )
        validate_closed_test_source_census(
            root,
            ARTIFACT_TEST_SOURCE_CENSUS,
            all_tests,
            "artifact test contract",
            allowed_exclusions=reviewed_test_census["exclusions"],
        )
        validate_reviewed_evidence_fingerprints(
            root,
            requirement_path,
            all_tests,
        )

    evidence_fields = {
        "id",
        "placement",
        "source_evidence",
        "trace_ops",
        "trace_instances",
        "formal_evidence",
        "fact_evidence",
        "consequence_evidence",
        "formal_fact_ids",
        "ledger_ids",
        "test_ids",
    }
    evidence_rows = matrix["evidence_sets"]
    if not isinstance(evidence_rows, list) or not evidence_rows:
        reject("predicate matrix must contain evidence sets")
    evidence_sets: dict[str, dict[str, Any]] = {}
    trace_instances: dict[str, dict[str, Any]] = {}
    trace_inventory_by_profile: dict[str, list[dict[str, Any]]] = {
        profile: [] for profile in profiles
    }
    claimed_formal_facts: Counter[str] = Counter()
    claimed_ledger_ids: Counter[str] = Counter()
    for index, raw in enumerate(evidence_rows):
        evidence = exact_fields(raw, evidence_fields, f"evidence_set[{index}]")
        evidence_id = nonempty_string(
            evidence["id"], f"evidence_set[{index}].id"
        )
        if evidence_id in evidence_sets:
            reject(f"duplicate evidence set {evidence_id}")
        placement = evidence["placement"]
        if placement not in PLACEMENTS:
            reject(f"{evidence_id}: unsupported placement {placement!r}")
        source_rows = evidence["source_evidence"]
        if not isinstance(source_rows, list) or not source_rows:
            reject(f"{evidence_id}: source_evidence must be non-empty")
        source_paths: list[Path] = []
        for source_index, source_evidence in enumerate(source_rows):
            path, _ = _validate_or_shape_evidence(
                root,
                source_evidence,
                f"{evidence_id}.source_evidence[{source_index}]",
                repository_sources=validate_repository_sources,
            )
            if path is not None:
                source_paths.append(path)
        trace_ops = string_list(
            evidence["trace_ops"],
            f"{evidence_id}.trace_ops",
            nonempty=placement == "circuit",
        )
        raw_trace_instances = evidence["trace_instances"]
        if not isinstance(raw_trace_instances, list):
            reject(f"{evidence_id}.trace_instances must be an array")
        if placement == "circuit" and not raw_trace_instances:
            reject(f"{evidence_id}: circuit evidence needs exact trace instances")
        if placement != "circuit" and (trace_ops or raw_trace_instances):
            reject(
                f"{evidence_id}: non-circuit evidence cannot claim "
                "circuit traces"
            )
        evidence_trace_instances: dict[str, dict[str, Any]] = {}
        trace_instance_fields = {
            "id",
            "profile",
            "role",
            "op",
            "args",
            "kind",
            "constraint_count",
        }
        for trace_index, raw_trace in enumerate(raw_trace_instances):
            trace = exact_fields(
                raw_trace,
                trace_instance_fields,
                f"{evidence_id}.trace_instances[{trace_index}]",
            )
            trace_id = nonempty_string(
                trace["id"],
                f"{evidence_id}.trace_instances[{trace_index}].id",
            )
            if re.fullmatch(r"[A-Z0-9-]+", trace_id) is None:
                reject(f"{evidence_id}: invalid trace-instance ID {trace_id!r}")
            if trace_id in trace_instances:
                reject(f"duplicate trace-instance ID {trace_id}")
            profile_label = nonempty_string(
                trace["profile"], f"{trace_id}.profile"
            )
            if profile_label not in profiles:
                reject(f"{trace_id}: unknown profile {profile_label}")
            role = nonempty_string(trace["role"], f"{trace_id}.role")
            if re.fullmatch(r"[a-z0-9_.]+", role) is None:
                reject(f"{trace_id}: invalid semantic role {role!r}")
            op = nonempty_string(trace["op"], f"{trace_id}.op")
            args = string_list(
                trace["args"], f"{trace_id}.args", nonempty=False
            )
            if trace["kind"] not in {"glue", "gadget"}:
                reject(f"{trace_id}: unsupported trace kind {trace['kind']!r}")
            constraint_count = trace["constraint_count"]
            if (
                not isinstance(constraint_count, int)
                or isinstance(constraint_count, bool)
                or constraint_count < 1
            ):
                reject(f"{trace_id}: invalid constraint_count")
            trace_row = {
                **trace,
                "args": tuple(args),
                "evidence_set": evidence_id,
            }
            trace_instances[trace_id] = trace_row
            evidence_trace_instances[trace_id] = trace_row
            trace_inventory_by_profile[profile_label].append(trace_row)
        if set(trace_ops) != {
            trace["op"] for trace in evidence_trace_instances.values()
        }:
            reject(
                f"{evidence_id}: trace_ops must exactly index trace_instances"
            )
        if validate_repository_sources:
            joined_sources = "\n".join(
                path.read_text(encoding="utf-8") for path in source_paths
            )
            for op in trace_ops:
                if f'"{op}"' not in joined_sources:
                    reject(
                        f"{evidence_id}: trace op {op!r} is absent from "
                        "source evidence"
                    )
        for field_name in (
            "formal_evidence",
            "fact_evidence",
            "consequence_evidence",
        ):
            _validate_or_shape_evidence(
                root,
                evidence[field_name],
                f"{evidence_id}.{field_name}",
                repository_sources=validate_repository_sources,
            )
        if placement == "construction":
            for field_name in (
                "formal_evidence",
                "fact_evidence",
                "consequence_evidence",
            ):
                evidence_row = evidence[field_name]
                path = str(evidence_row["path"])
                symbols = tuple(evidence_row["symbols"])
                if not path.endswith("/Semantics.lean"):
                    reject(
                        f"{evidence_id}: construction evidence must remain "
                        "in Semantics.lean"
                    )
                forbidden = [
                    symbol
                    for symbol in symbols
                    if "valid_" in symbol
                    or "consensusAccepted_of_circuitFacts" in symbol
                ]
                if forbidden:
                    reject(
                        f"{evidence_id}: construction evidence entered the "
                        f"accepted-language refinement: {forbidden}"
                    )
        formal_fact_ids = set(
            string_list(
                evidence["formal_fact_ids"],
                f"{evidence_id}.formal_fact_ids",
            )
        )
        ledger_ids = set(
            string_list(
                evidence["ledger_ids"],
                f"{evidence_id}.ledger_ids",
                nonempty=False,
            )
        )
        claimed_formal_facts.update(formal_fact_ids)
        claimed_ledger_ids.update(ledger_ids)
        test_ids = string_list(evidence["test_ids"], f"{evidence_id}.test_ids")
        unknown_tests = set(test_ids) - set(tests)
        if unknown_tests:
            reject(f"{evidence_id}: unknown tests {sorted(unknown_tests)}")
        evidence_sets[evidence_id] = {
            **evidence,
            "trace_instances_by_id": evidence_trace_instances,
        }

    duplicate_formal_facts = sorted(
        fact_id
        for fact_id, owners in claimed_formal_facts.items()
        if owners != 1
    )
    if duplicate_formal_facts:
        reject(
            "formal facts must have exactly one evidence-set owner: "
            f"{duplicate_formal_facts}"
        )
    duplicate_ledger_ids = sorted(
        ledger_id
        for ledger_id, owners in claimed_ledger_ids.items()
        if owners != 1
    )
    if duplicate_ledger_ids:
        reject(
            "ledger rows must have exactly one evidence-set owner: "
            f"{duplicate_ledger_ids}"
        )
    formal_fact_owner = {
        fact_id: evidence_id
        for evidence_id, evidence in evidence_sets.items()
        for fact_id in evidence["formal_fact_ids"]
    }
    ledger_owner = {
        ledger_id: evidence_id
        for evidence_id, evidence in evidence_sets.items()
        for ledger_id in evidence["ledger_ids"]
    }

    if validate_repository_sources:
        validate_typed_transition_models(root)
        validate_transaction_acceptance_bridges(root)
        formal_facts = expected_formal_fact_ids(root)
        if set(claimed_formal_facts) != formal_facts:
            reject(
                "formal fact census mismatch: "
                f"unmapped={sorted(formal_facts-set(claimed_formal_facts))}, "
                f"unknown={sorted(set(claimed_formal_facts)-formal_facts)}"
            )
        ledger_ids = expected_ledger_ids(root)
        if set(claimed_ledger_ids) != ledger_ids:
            reject(
                "obligation-ledger census mismatch: "
                f"unmapped={sorted(ledger_ids-set(claimed_ledger_ids))}, "
                f"unknown={sorted(set(claimed_ledger_ids)-ledger_ids)}"
            )

    predicate_fields = {
        "id",
        "category",
        "severity",
        "placement",
        "branch_condition",
        "binding_mode",
        "disclosure",
        "variable_source",
        "statement",
        "security_objectives",
        "assumptions",
        "reference_evidence",
        "applications",
        "not_applicable_profiles",
    }
    application_fields = {
        "role_set",
        "evidence_set",
        "trace_instance_ids",
        "formal_fact_ids",
        "ledger_ids",
        "ledger_evidence_sets",
        "test_ids",
        "consequence_evidence",
        "semantic_contract",
    }
    predicate_rows = matrix["predicates"]
    if not isinstance(predicate_rows, list) or not predicate_rows:
        reject("predicate matrix must contain predicates")
    predicates: dict[str, dict[str, Any]] = {}
    applicable: dict[tuple[str, str], dict[str, Any]] = {}
    claimed_trace_instances: set[str] = set()
    selected_formal_facts: set[str] = set()
    selected_ledger_ids: set[str] = set()
    selected_test_ids: set[str] = set()
    selected_test_claims: set[tuple[str, str, str]] = set()
    for index, raw in enumerate(predicate_rows):
        predicate = exact_fields(raw, predicate_fields, f"predicate[{index}]")
        predicate_id = nonempty_string(predicate["id"], f"predicate[{index}].id")
        if predicate_id in predicates:
            reject(f"duplicate predicate ID {predicate_id}")
        if predicate_id not in PREDICATE_BASELINE:
            reject(f"predicate {predicate_id} is not in the reviewed baseline")
        expected_placement, expected_profiles = PREDICATE_BASELINE[predicate_id]
        requirement = requirements[predicate_id]
        if predicate["placement"] != expected_placement:
            reject(
                f"{predicate_id}: placement {predicate['placement']!r} != "
                f"reviewed {expected_placement!r}"
            )
        for field_name in (
            "statement",
            "branch_condition",
            "binding_mode",
            "disclosure",
            "variable_source",
        ):
            if predicate[field_name] != requirement[field_name]:
                reject(
                    f"{predicate_id}: matrix {field_name} "
                    f"{predicate[field_name]!r} != independent requirement "
                    f"{requirement[field_name]!r}"
                )
        if predicate["category"] not in CATEGORIES:
            reject(f"{predicate_id}: unsupported category")
        if predicate["severity"] not in SEVERITIES:
            reject(f"{predicate_id}: unsupported severity")
        requires_specific_semantics = (
            requirement["semantic_evidence"] == "predicate_specific"
        )
        if requires_specific_semantics != (
            predicate["severity"] in {"critical", "high"}
        ):
            reject(
                f"{predicate_id}: severity/independent semantic-evidence "
                "requirement drifted"
            )
        nonempty_string(predicate["statement"], f"{predicate_id}.statement")
        objectives = string_list(
            predicate["security_objectives"],
            f"{predicate_id}.security_objectives",
        )
        for objective in objectives:
            if re.fullmatch(r"[A-Z0-9-]+", objective) is None:
                reject(f"{predicate_id}: invalid security objective {objective!r}")
        assumptions = string_list(
            predicate["assumptions"], f"{predicate_id}.assumptions"
        )
        if "none" in assumptions and assumptions != ["none"]:
            reject(f"{predicate_id}: 'none' cannot be combined with assumptions")
        if assumptions != ["none"]:
            assumption_statuses = assumption_ledger_statuses(root)
            unknown_assumptions = set(assumptions) - set(assumption_statuses)
            if unknown_assumptions:
                reject(
                    f"{predicate_id}: unknown assumption-ledger IDs "
                    f"{sorted(unknown_assumptions)}"
                )
            discharged_assumptions = sorted(
                assumption
                for assumption in assumptions
                if assumption_statuses[assumption] != "assumed"
            )
            if discharged_assumptions:
                reject(
                    f"{predicate_id}: discharged rows are not residual "
                    f"assumptions: {discharged_assumptions}"
                )
        _, reference_symbols = _validate_or_shape_evidence(
            root,
            predicate["reference_evidence"],
            f"{predicate_id}.reference_evidence",
            repository_sources=validate_repository_sources,
        )
        expected_reference_path = OBLIGATION_LEDGER_RELATIVE
        if predicate["reference_evidence"]["path"] != expected_reference_path:
            reject(
                f"{predicate_id}: reference evidence must cite the "
                "obligation ledger"
            )
        reference_ids: set[str] = set()
        for symbol in reference_symbols:
            match = re.fullmatch(r"`([A-Z0-9-]+)`", symbol)
            if match is None:
                reject(
                    f"{predicate_id}: reference symbol {symbol!r} is not "
                    "one exact obligation-ledger row ID"
                )
            reference_ids.add(match.group(1))
        unknown_reference_ids = reference_ids - set(ledger_owner)
        if unknown_reference_ids:
            reject(
                f"{predicate_id}: unknown obligation-ledger references "
                f"{sorted(unknown_reference_ids)}"
            )
        if "obligation holds" in predicate["statement"].lower():
            reject(
                f"{predicate_id}: templated self-attesting statement is "
                "forbidden"
            )
        applications = predicate["applications"]
        if not isinstance(applications, list) or not applications:
            reject(f"{predicate_id}: applications must be non-empty")
        actual_profiles: set[str] = set()
        predicate_application_ledger_ids: set[str] = set()
        for app_index, raw_application in enumerate(applications):
            application = exact_fields(
                raw_application,
                application_fields,
                f"{predicate_id}.applications[{app_index}]",
            )
            role_set_id = nonempty_string(
                application["role_set"],
                f"{predicate_id}.applications[{app_index}].role_set",
            )
            evidence_id = nonempty_string(
                application["evidence_set"],
                f"{predicate_id}.applications[{app_index}].evidence_set",
            )
            if role_set_id not in role_sets:
                reject(f"{predicate_id}: unknown role set {role_set_id}")
            if evidence_id not in evidence_sets:
                reject(f"{predicate_id}: unknown evidence set {evidence_id}")
            evidence = evidence_sets[evidence_id]
            if evidence["placement"] != expected_placement:
                reject(
                    f"{predicate_id}/{evidence_id}: evidence placement mismatch"
                )
            selected_trace_ids = string_list(
                application["trace_instance_ids"],
                (
                    f"{predicate_id}.applications[{app_index}]"
                    ".trace_instance_ids"
                ),
                nonempty=expected_placement == "circuit",
            )
            unknown_trace_ids = (
                set(selected_trace_ids)
                - set(evidence["trace_instances_by_id"])
            )
            if unknown_trace_ids:
                reject(
                    f"{predicate_id}/{evidence_id}: trace instances are not "
                    f"owned by the evidence set: {sorted(unknown_trace_ids)}"
                )
            if expected_placement != "circuit" and selected_trace_ids:
                reject(
                    f"{predicate_id}/{evidence_id}: non-circuit application "
                    "cannot select circuit traces"
                )
            claimed_trace_instances.update(selected_trace_ids)
            selected_application_facts = set(
                string_list(
                    application["formal_fact_ids"],
                    (
                        f"{predicate_id}.applications[{app_index}]"
                        ".formal_fact_ids"
                    ),
                )
            )
            unowned_application_facts = (
                selected_application_facts - set(evidence["formal_fact_ids"])
            )
            if unowned_application_facts:
                reject(
                    f"{predicate_id}/{evidence_id}: formal facts are not "
                    "owned by the evidence set: "
                    f"{sorted(unowned_application_facts)}"
                )
            transition_fact = TYPED_ACTION_TRANSITION_FACT_BY_EVIDENCE.get(
                evidence_id
            )
            transaction_facts = TYPED_TRANSACTION_FACTS_BY_EVIDENCE.get(
                evidence_id,
                frozenset(),
            )
            if predicate_id in ACTION_LOCAL_TRANSITION_PREDICATES:
                if (
                    transition_fact is None
                    or selected_application_facts != {transition_fact}
                ):
                    reject(
                        f"{predicate_id}/{evidence_id}: state/transition "
                        "evidence must be exactly the concrete typed "
                        "ConsensusTransition fact"
                    )
            elif predicate_id in TRANSACTION_LEVEL_PREDICATES:
                expected_transaction_facts = set(transaction_facts)
                if (
                    predicate_id
                    in WITHDRAWAL_EFFECT_TRANSACTION_PREDICATES
                ):
                    expected_transaction_facts.add(
                        "Withdrawal.TransactionAccepted.withdrawalEffects"
                    )
                if (
                    selected_application_facts
                    != expected_transaction_facts
                ):
                    reject(
                        f"{predicate_id}/{evidence_id}: transaction evidence "
                        "must be exactly the required TransactionAccepted "
                        "action, committed, and family-specific effect facts"
                    )
            elif (
                transition_fact in selected_application_facts
                or bool(
                    transaction_facts & selected_application_facts
                )
            ):
                reject(
                    f"{predicate_id}/{evidence_id}: typed action/transaction "
                    "fact cannot stand in for an unrelated external predicate"
                )
            selected_formal_facts.update(selected_application_facts)
            selected_application_traces = [
                evidence["trace_instances_by_id"][trace_id]
                for trace_id in selected_trace_ids
            ]
            validate_application_semantic_contract(
                predicate_id,
                expected_placement,
                requirement,
                application["semantic_contract"],
                selected_application_traces,
                selected_application_facts,
            )
            selected_application_ledger = set(
                string_list(
                    application["ledger_ids"],
                    (
                        f"{predicate_id}.applications[{app_index}]"
                        ".ledger_ids"
                    ),
                )
            )
            unknown_application_ledger = (
                selected_application_ledger - set(ledger_owner)
            )
            if unknown_application_ledger:
                reject(
                    f"{predicate_id}: selected unknown ledger rows "
                    f"{sorted(unknown_application_ledger)}"
                )
            declared_ledger_evidence_sets = set(
                string_list(
                    application["ledger_evidence_sets"],
                    (
                        f"{predicate_id}.applications[{app_index}]"
                        ".ledger_evidence_sets"
                    ),
                )
            )
            actual_ledger_evidence_sets = {
                ledger_owner[ledger_id]
                for ledger_id in selected_application_ledger
            }
            if (
                declared_ledger_evidence_sets
                != actual_ledger_evidence_sets
            ):
                reject(
                    f"{predicate_id}: ledger evidence-owner join drifted: "
                    f"expected={sorted(actual_ledger_evidence_sets)}, "
                    f"declared={sorted(declared_ledger_evidence_sets)}"
                )
            selected_ledger_ids.update(selected_application_ledger)
            predicate_application_ledger_ids.update(
                selected_application_ledger
            )
            selected_application_tests = set(
                string_list(
                    application["test_ids"],
                    (
                        f"{predicate_id}.applications[{app_index}]"
                        ".test_ids"
                    ),
                )
            )
            unowned_application_tests = (
                selected_application_tests - set(evidence["test_ids"])
            )
            if unowned_application_tests:
                reject(
                    f"{predicate_id}/{evidence_id}: tests are not owned by "
                    f"the evidence set: {sorted(unowned_application_tests)}"
                )
            application_profiles = set(role_sets[role_set_id])
            exact_application_tests = {
                test_id
                for test_id in evidence["test_ids"]
                if predicate_id in tests[test_id]["predicate_ids"]
                and application_profiles <= set(tests[test_id]["profiles"])
            }
            if selected_application_tests != exact_application_tests:
                reject(
                    f"{predicate_id}/{evidence_id}: exact test join drifted: "
                    f"missing={sorted(exact_application_tests-selected_application_tests)}, "
                    f"extra={sorted(selected_application_tests-exact_application_tests)}"
                )
            selected_test_ids.update(selected_application_tests)
            selected_test_claims.update(
                (test_id, predicate_id, profile_label)
                for test_id in selected_application_tests
                for profile_label in application_profiles
            )
            raw_consequences = application["consequence_evidence"]
            if not isinstance(raw_consequences, list) or not raw_consequences:
                reject(
                    f"{predicate_id}: consequence_evidence must be non-empty"
                )
            actual_consequence_pairs: set[tuple[str, str]] = set()
            for consequence_index, consequence in enumerate(
                raw_consequences
            ):
                _, consequence_symbols = _validate_or_shape_evidence(
                    root,
                    consequence,
                    (
                        f"{predicate_id}.applications[{app_index}]"
                        f".consequence_evidence[{consequence_index}]"
                    ),
                    repository_sources=validate_repository_sources,
                )
                consequence_path = nonempty_string(
                    consequence.get("path"),
                    f"{predicate_id}.consequence_evidence.path",
                )
                actual_consequence_pairs.update(
                    (consequence_path, symbol)
                    for symbol in consequence_symbols
                )
            expected_consequences = expected_consequence_pairs(
                predicate_id, application_profiles
            )
            if actual_consequence_pairs != expected_consequences:
                reject(
                    f"{predicate_id}: consequence theorem join drifted: "
                    f"missing={sorted(expected_consequences-actual_consequence_pairs)}, "
                    f"extra={sorted(actual_consequence_pairs-expected_consequences)}"
                )
            for profile_label, roles in role_sets[role_set_id].items():
                if profile_label in actual_profiles:
                    reject(
                        f"{predicate_id}: profile {profile_label} is covered twice"
                    )
                actual_profiles.add(profile_label)
                if expected_placement == "circuit":
                    selected_for_profile = [
                        evidence["trace_instances_by_id"][trace_id]
                        for trace_id in selected_trace_ids
                        if evidence["trace_instances_by_id"][trace_id][
                            "profile"
                        ]
                        == profile_label
                    ]
                    selected_roles = [
                        trace["role"] for trace in selected_for_profile
                    ]
                    if len(selected_roles) != len(set(selected_roles)):
                        reject(
                            f"{predicate_id}/{profile_label}: duplicate "
                            "semantic trace role"
                        )
                    if set(selected_roles) != set(roles):
                        reject(
                            f"{predicate_id}/{profile_label}: exact semantic "
                            "role/trace join drifted: "
                            f"missing={sorted(set(roles)-set(selected_roles))}, "
                            f"extra={sorted(set(selected_roles)-set(roles))}"
                        )
                matching_tests = [
                    tests[test_id]
                    for test_id in selected_application_tests
                    if profile_label in tests[test_id]["profiles"]
                    and predicate_id in tests[test_id]["predicate_ids"]
                ]
                if not matching_tests:
                    reject(
                        f"{predicate_id}/{profile_label}: evidence set "
                        f"{evidence_id} has no applicable test"
                    )
                required_test_kinds = REQUIRED_TEST_KINDS.get(
                    predicate_id, frozenset()
                )
                actual_test_kinds = {
                    test["kind"] for test in matching_tests
                }
                if not required_test_kinds <= actual_test_kinds:
                    reject(
                        f"{predicate_id}/{profile_label}: required test kinds "
                        f"missing={sorted(required_test_kinds-actual_test_kinds)}"
                    )
                applicable[(profile_label, predicate_id)] = {
                    "roles": roles,
                    "evidence_set": evidence_id,
                    "formal_fact_ids": tuple(
                        sorted(selected_application_facts)
                    ),
                    "ledger_ids": tuple(
                        sorted(selected_application_ledger)
                    ),
                    "test_ids": tuple(
                        sorted(selected_application_tests)
                    ),
                    "test_kinds": tuple(sorted(actual_test_kinds)),
                    "consequence_pairs": tuple(
                        sorted(actual_consequence_pairs)
                    ),
                    "trace_instance_ids": tuple(
                        trace["id"]
                        for trace in selected_for_profile
                    )
                    if expected_placement == "circuit"
                    else (),
                }
        if reference_ids != predicate_application_ledger_ids:
            reject(
                f"{predicate_id}: obligation-ledger reference/application "
                "join drifted: "
                f"missing={sorted(predicate_application_ledger_ids-reference_ids)}, "
                f"extra={sorted(reference_ids-predicate_application_ledger_ids)}"
            )
        if actual_profiles != set(expected_profiles):
            reject(
                f"{predicate_id}: application roster differs from reviewed "
                f"baseline: missing={sorted(expected_profiles-actual_profiles)}, "
                f"extra={sorted(actual_profiles-expected_profiles)}"
            )
        not_applicable = set(
            string_list(
                predicate["not_applicable_profiles"],
                f"{predicate_id}.not_applicable_profiles",
                nonempty=False,
            )
        )
        expected_not_applicable = ALL_PROFILES - expected_profiles
        if not_applicable != expected_not_applicable:
            reject(
                f"{predicate_id}: not-applicable roster differs from reviewed "
                f"baseline: missing={sorted(expected_not_applicable-not_applicable)}, "
                f"extra={sorted(not_applicable-expected_not_applicable)}"
            )
        predicates[predicate_id] = predicate

    baseline_ids = set(PREDICATE_BASELINE)
    if set(predicates) != baseline_ids:
        reject(
            "closed predicate baseline mismatch: "
            f"omitted={sorted(baseline_ids-set(predicates))}, "
            f"unknown={sorted(set(predicates)-baseline_ids)}"
        )
    for predicate_id, predicate in predicates.items():
        expected_objectives = {
            property_id
            for property_id, contract in properties.items()
            if predicate_id in contract["predicate_ids_set"]
            and (
                set(PREDICATE_BASELINE[predicate_id][1])
                & contract["profiles_set"]
            )
        }
        actual_objectives = set(predicate["security_objectives"])
        if actual_objectives != expected_objectives:
            reject(
                f"{predicate_id}: exact real-property objective join drifted: "
                f"missing={sorted(expected_objectives-actual_objectives)}, "
                f"extra={sorted(actual_objectives-expected_objectives)}"
            )
        if not actual_objectives:
            reject(f"{predicate_id}: no in-scope real security objective")
    for property_id, contract in properties.items():
        for profile_label in contract["profiles_set"]:
            expected_predicates = {
                predicate_id
                for predicate_id in contract["predicate_ids_set"]
                if profile_label in PREDICATE_BASELINE[predicate_id][1]
            }
            actual_predicates = {
                predicate_id
                for predicate_id, predicate in predicates.items()
                if profile_label in PREDICATE_BASELINE[predicate_id][1]
                and property_id in predicate["security_objectives"]
            }
            if actual_predicates != expected_predicates:
                reject(
                    f"{property_id}/{profile_label}: exact property/predicate "
                    f"coverage drifted: "
                    f"missing={sorted(expected_predicates-actual_predicates)}, "
                    f"extra={sorted(actual_predicates-expected_predicates)}"
                )
    if claimed_trace_instances != set(trace_instances):
        reject(
            "constraint-trace/application census mismatch: "
            f"unmapped={sorted(set(trace_instances)-claimed_trace_instances)}, "
            f"unknown={sorted(claimed_trace_instances-set(trace_instances))}"
        )
    if selected_formal_facts != set(formal_fact_owner):
        reject(
            "formal-fact/application census mismatch: "
            f"unmapped={sorted(set(formal_fact_owner)-selected_formal_facts)}, "
            f"unknown={sorted(selected_formal_facts-set(formal_fact_owner))}"
        )
    if selected_ledger_ids != set(ledger_owner):
        reject(
            "obligation-ledger/application census mismatch: "
            f"unmapped={sorted(set(ledger_owner)-selected_ledger_ids)}, "
            f"unknown={sorted(selected_ledger_ids-set(ledger_owner))}"
        )
    if selected_test_ids != set(tests):
        reject(
            "test/application census mismatch: "
            f"unmapped={sorted(set(tests)-selected_test_ids)}, "
            f"unknown={sorted(selected_test_ids-set(tests))}"
        )
    declared_test_claims = {
        (test_id, predicate_id, profile_label)
        for test_id, test in tests.items()
        for predicate_id in test["predicate_ids"]
        for profile_label in test["profiles"]
    }
    if selected_test_claims != declared_test_claims:
        reject(
            "test claim/application join drifted: "
            f"unmapped={sorted(declared_test_claims-selected_test_claims)}, "
            f"unknown={sorted(selected_test_claims-declared_test_claims)}"
        )
    actual_semantics_digest = predicate_semantics_digest(predicates)
    if actual_semantics_digest != PREDICATE_SEMANTICS_SHA256:
        reject(
            "reviewed predicate semantics changed: "
            f"expected {PREDICATE_SEMANTICS_SHA256}, "
            f"got {actual_semantics_digest}"
        )

    expected_by_profile = {
        profile: {
            predicate_id
            for predicate_id, (_, predicate_profiles) in PREDICATE_BASELINE.items()
            if profile in predicate_profiles
        }
        for profile in ALL_PROFILES
    }
    for profile_label, expected_ids in expected_by_profile.items():
        actual_ids = {
            predicate_id
            for (label, predicate_id) in applicable
            if label == profile_label
        }
        if actual_ids != expected_ids:
            reject(
                f"{profile_label}: profile contract omitted atomic predicates: "
                f"missing={sorted(expected_ids-actual_ids)}, "
                f"extra={sorted(actual_ids-expected_ids)}"
            )

    census_path = canonical_repo_path(
        root,
        matrix["native_type_parity_census"],
        "predicate matrix native_type_parity_census",
    )
    if validate_repository_sources:
        validate_native_census(root, census_path, set(predicates))

    contracts: dict[str, dict[str, Any]] = {}
    for profile_label in ALL_PROFILES:
        trace_ops: set[str] = {
            trace["op"]
            for trace in trace_inventory_by_profile[profile_label]
        }
        nonidentity_roles: set[str] = set()
        for (label, predicate_id), application in applicable.items():
            if label != profile_label:
                continue
            predicate = predicates[predicate_id]
            if predicate["placement"] != "circuit":
                continue
            if predicate_id in {
                "DEC-AUTHORIZATION-KEY-NONIDENTITY",
                "DEC-DIVERSIFIED-GENERATOR-NONIDENTITY",
                "DEC-TRANSMISSION-KEY-NONIDENTITY",
            }:
                for trace_id in application["trace_instance_ids"]:
                    point_args = [
                        arg
                        for arg in trace_instances[trace_id]["args"]
                        if arg.startswith("point=")
                    ]
                    if len(point_args) != 1:
                        reject(
                            f"{profile_label}/{predicate_id}: exact "
                            "nonidentity trace lacks one point role"
                        )
                    nonidentity_roles.add(
                        point_args[0].removeprefix("point=")
                    )
        contracts[profile_label] = {
            "trace_ops": tuple(sorted(trace_ops)),
            "nonidentity_roles": tuple(sorted(nonidentity_roles)),
            "trace_instances": tuple(
                sorted(
                    trace_inventory_by_profile[profile_label],
                    key=lambda trace: trace["id"],
                )
            ),
        }

    expected_generated = expected_generated_consequence_applications(
        predicates,
        requirements,
        applicable,
        tests,
    )
    actual_generated = set(GENERATED_CONSEQUENCE_PAIRS)
    if actual_generated != expected_generated:
        reject(
            "generated predicate-consequence roster differs from the "
            "independently derived circuit relation-atom universe: "
            f"missing={sorted(expected_generated-actual_generated)}, "
            f"extra={sorted(actual_generated-expected_generated)}"
        )

    semantic_evidence_deficits = predicate_specific_semantic_deficits(
        predicates,
        requirements,
        applicable,
        tests,
    )

    return {
        "claim_set": CLAIM_SET,
        "profiles": profiles,
        "proof_acceptance_surface": proof_acceptance_surface,
        "runtime_policy_tests": runtime_policy_tests,
        "property_contract_tests": property_contract_tests,
        "artifact_contract_tests": artifact_contract_tests,
        "reviewed_test_census": reviewed_test_census,
        "catalog": catalog_by_label,
        "role_sets": role_sets,
        "tests": tests,
        "property_contract": properties,
        "requirements": requirements,
        "evidence_sets": evidence_sets,
        "trace_instances": trace_instances,
        "predicates": predicates,
        "applicable": applicable,
        "contracts": contracts,
        "semantic_evidence_deficits": semantic_evidence_deficits,
    }


def validate_manifest(
    path: Path,
    label: str,
    contract: dict[str, Any],
) -> None:
    manifest = load_strict_json(path, f"{label} constraint manifest")
    if not isinstance(manifest, dict):
        reject(f"{label}: constraint manifest must be an object")
    if manifest.get("schema") != "shieldd.gnark.constraint_manifest.v1":
        reject(f"{label}: unsupported constraint manifest schema")
    if manifest.get("circuit") != label:
        reject(f"{label}: constraint manifest names {manifest.get('circuit')!r}")
    segments = manifest.get("segments")
    if not isinstance(segments, list):
        reject(f"{label}: constraint manifest segments must be an array")
    op_segments: dict[str, list[dict[str, Any]]] = {}
    actual_trace_rows: list[tuple[str, tuple[str, ...], str, int]] = []
    for index, segment in enumerate(segments):
        if not isinstance(segment, dict):
            reject(f"{label}: manifest segment[{index}] must be an object")
        op = segment.get("op")
        if isinstance(op, str):
            op_segments.setdefault(op, []).append(segment)
        constraint_count = segment.get("constraint_count")
        if (
            not isinstance(constraint_count, int)
            or isinstance(constraint_count, bool)
            or constraint_count < 0
        ):
            reject(
                f"{label}: manifest segment[{index}] has invalid "
                "constraint_count"
            )
        if constraint_count == 0:
            if segment.get("kind") not in {"marker", "adapter"}:
                reject(
                    f"{label}: zero-row segment[{index}] is not a "
                    "marker/adapter"
                )
            continue
        if constraint_count > 0:
            args = segment.get("args")
            kind = segment.get("kind")
            if (
                not isinstance(op, str)
                or not isinstance(args, list)
                or any(not isinstance(arg, str) for arg in args)
                or kind not in {"glue", "gadget"}
            ):
                reject(
                    f"{label}: manifest segment[{index}] has malformed exact "
                    "trace metadata"
                )
            actual_trace_rows.append(
                (op, tuple(args), kind, constraint_count)
            )
    expected_trace_rows = [
        (
            trace["op"],
            tuple(trace["args"]),
            trace["kind"],
            trace["constraint_count"],
        )
        for trace in contract["trace_instances"]
    ]
    actual_trace_census = Counter(actual_trace_rows)
    expected_trace_census = Counter(expected_trace_rows)
    if actual_trace_census != expected_trace_census:
        missing = sorted((expected_trace_census - actual_trace_census).elements())
        extra = sorted((actual_trace_census - expected_trace_census).elements())
        reject(
            f"{label}: exact constraint-trace census drifted: "
            f"missing={missing}, extra={extra}"
        )
    missing_ops = sorted(set(contract["trace_ops"]) - set(op_segments))
    if missing_ops:
        reject(f"{label}: manifest lacks specification trace ops {missing_ops}")

    nonidentity_segments = op_segments.get("assert.decaf_non_identity", [])
    if contract["nonidentity_roles"]:
        actual_roles: set[str] = set()
        for index, segment in enumerate(nonidentity_segments):
            args = segment.get("args")
            if (
                not isinstance(args, list)
                or len(args) != 2
                or args[1] != "coordinate=x"
                or not isinstance(args[0], str)
                or not args[0].startswith("point=")
                or segment.get("kind") != "glue"
                or segment.get("constraint_count") != 1
                or not isinstance(segment.get("start"), int)
                or not isinstance(segment.get("end"), int)
                or segment["end"] != segment["start"] + 1
            ):
                reject(
                    f"{label}: nonidentity segment[{index}] is not one exact "
                    "role/x glue row"
                )
            role = args[0].removeprefix("point=")
            if role in actual_roles:
                reject(f"{label}: duplicate nonidentity role {role}")
            actual_roles.add(role)
        expected_roles = set(contract["nonidentity_roles"])
        if actual_roles != expected_roles:
            reject(
                f"{label}: exact nonidentity role set drifted: "
                f"missing={sorted(expected_roles-actual_roles)}, "
                f"extra={sorted(actual_roles-expected_roles)}"
            )


def load_and_validate(
    *,
    root: Path = ROOT,
    matrix_path: Path | None = None,
    schema_path: Path | None = None,
    profile_catalog_path: Path | None = None,
    selected_profiles: list[str] | None = None,
    manifests: dict[str, Path] | None = None,
    require_relation_evidence: bool = False,
    test_receipt: Path | None = None,
    test_receipt_nonce: str | None = None,
    check_semantic_digest: bool = True,
) -> tuple[dict[str, Any], ...]:
    matrix_path = matrix_path or (
        root
        / "crates/core/component/shielded-pool/formal"
        / "fv-specification-predicate-matrix.json"
    )
    schema_path = schema_path or (
        root
        / "crates/core/component/shielded-pool/formal"
        / "fv-specification-predicate-matrix.schema.json"
    )
    profile_catalog_path = profile_catalog_path or (
        root / "tools/gnark/fv_profiles.json"
    )
    validate_schema_source(schema_path)
    if check_semantic_digest:
        validate_semantic_digest(root)
    matrix = load_strict_json(
        matrix_path, "specification predicate matrix", canonical=True
    )
    profile_catalog = load_profile_catalog(profile_catalog_path)
    validated = validate_matrix_structure(
        root,
        matrix,
        profile_catalog,
        validate_repository_sources=True,
    )
    if validated["semantic_evidence_deficits"]:
        reject(
            "predicate-specific semantic evidence is incomplete for "
            "high/critical applications: "
            + ", ".join(validated["semantic_evidence_deficits"])
        )
    if (test_receipt is None) != (test_receipt_nonce is None):
        reject(
            "test execution receipt and nonce must be supplied together"
        )
    test_receipt_sha256 = None
    if test_receipt is not None and test_receipt_nonce is not None:
        test_receipt_sha256 = validate_test_execution_receipt(
            root,
            matrix,
            test_receipt,
            test_receipt_nonce,
        )
    labels = selected_profiles or list(validated["profiles"])
    unknown = sorted(set(labels) - set(validated["profiles"]))
    if unknown:
        reject(f"unknown specification-completeness profiles: {unknown}")
    if len(labels) != len(set(labels)):
        reject("duplicate selected specification-completeness profiles")

    manifests = manifests or {}
    extra_manifests = sorted(set(manifests) - set(labels))
    if extra_manifests:
        reject(f"manifest evidence supplied for unselected profiles: {extra_manifests}")
    if require_relation_evidence:
        missing_manifests = sorted(set(labels) - set(manifests))
        if missing_manifests:
            reject(
                "relation evidence is required but manifests are missing for "
                f"{missing_manifests}"
            )
    for label, path in manifests.items():
        validate_manifest(path, label, validated["contracts"][label])

    statuses: list[dict[str, Any]] = []
    for label in labels:
        predicate_ids = sorted(
            predicate_id
            for profile_label, predicate_id in validated["applicable"]
            if profile_label == label
        )
        instance_count = sum(
            len(application["roles"])
            for (profile_label, _), application in validated["applicable"].items()
            if profile_label == label
        )
        statuses.append(
            {
                "profile": label,
                "claim_set": validated["claim_set"],
                "coverage_status": "coverage_closed",
                "specification_status": "specification_closed",
                "computed_status": "specification_closed",
                "relation_evidence": (
                    "mapped" if label in manifests else "not_evaluated"
                ),
                "test_execution": (
                    "passed"
                    if test_receipt_sha256 is not None
                    else "not_evaluated"
                ),
                "test_execution_receipt_sha256": test_receipt_sha256,
                "setup_trust_status": SETUP_TRUST_STATUS,
                "setup_trust_assumption_ids": list(
                    SETUP_TRUST_ASSUMPTION_IDS
                ),
                "predicate_ids": predicate_ids,
                "predicate_instance_count": instance_count,
                "catalog_status": validated["catalog"][label]["status"],
            }
        )
    return tuple(statuses)


def parse_manifest_arguments(values: list[str]) -> dict[str, Path]:
    result: dict[str, Path] = {}
    for value in values:
        if "=" not in value:
            reject("--manifest must be LABEL=PATH")
        label, raw_path = value.split("=", 1)
        if not label or not raw_path:
            reject("--manifest must be LABEL=PATH")
        if label in result:
            reject(f"duplicate manifest argument for {label}")
        result[label] = Path(raw_path).resolve()
    return result


def validate_profile_certification_join(
    profiles: tuple[dict[str, Any], ...] | list[dict[str, Any]],
    statuses: tuple[dict[str, Any], ...] | list[dict[str, Any]],
) -> None:
    profile_by_label: dict[str, dict[str, Any]] = {}
    for profile in profiles:
        label = nonempty_string(profile.get("label"), "FV profile label")
        if label in profile_by_label:
            reject(f"duplicate FV profile in certification join: {label}")
        profile_by_label[label] = profile
    status_by_label: dict[str, dict[str, Any]] = {}
    for status in statuses:
        label = nonempty_string(
            status.get("profile"), "specification status profile"
        )
        if label in status_by_label:
            reject(f"duplicate specification status in certification join: {label}")
        status_by_label[label] = status
    if set(profile_by_label) != set(status_by_label):
        reject(
            "FV profile/specification-status roster mismatch: "
            f"profiles_only={sorted(set(profile_by_label)-set(status_by_label))}, "
            f"statuses_only={sorted(set(status_by_label)-set(profile_by_label))}"
        )
    for label, profile in profile_by_label.items():
        status = status_by_label[label]
        if status.get("setup_trust_status") != SETUP_TRUST_STATUS:
            reject(
                f"{label}: FV status obscures the conditional Groth16 "
                "setup trust"
            )
        if status.get("setup_trust_assumption_ids") != list(
            SETUP_TRUST_ASSUMPTION_IDS
        ):
            reject(
                f"{label}: FV status setup-trust assumption census drifted"
            )
        if profile.get("status") != "certified":
            continue
        if status.get("coverage_status") != "coverage_closed":
            reject(
                f"{label}: certified FV profile lacks closed structural "
                "coverage"
            )
        if (
            status.get("specification_status") != "specification_closed"
            or status.get("computed_status") != "specification_closed"
        ):
            reject(
                f"{label}: certified FV profile lacks a closed specification "
                "requirement/semantic parity gate"
            )
        if status.get("relation_evidence") != "mapped":
            reject(
                f"{label}: certified FV profile lacks current mapped "
                "relation evidence"
            )


def main() -> None:
    parser = argparse.ArgumentParser(
        description="check fixed-circuit specification completeness"
    )
    output = parser.add_mutually_exclusive_group()
    output.add_argument("--emit-status-json", action="store_true")
    output.add_argument("--emit-status-tsv", action="store_true")
    output.add_argument("--emit-semantic-digest", action="store_true")
    output.add_argument(
        "--emit-semantic-evidence-deficits",
        action="store_true",
    )
    parser.add_argument("--profile", action="append", default=[])
    parser.add_argument("--manifest", action="append", default=[], metavar="LABEL=PATH")
    parser.add_argument("--require-relation-evidence", action="store_true")
    parser.add_argument(
        "--skip-semantic-digest",
        action="store_true",
        help=(
            "run structural candidate checks without requiring the reviewed "
            "semantic bundle pin; strict replay must not use this"
        ),
    )
    parser.add_argument("--test-receipt", type=Path)
    parser.add_argument("--test-receipt-nonce")
    args = parser.parse_args()
    try:
        if args.emit_semantic_digest:
            print(semantic_bundle_digest())
            return
        if args.emit_semantic_evidence_deficits:
            validate_schema_source(MATRIX_SCHEMA)
            matrix = load_strict_json(
                MATRIX,
                "specification predicate matrix",
                canonical=True,
            )
            validated = validate_matrix_structure(
                ROOT,
                matrix,
                load_profile_catalog(),
                validate_repository_sources=True,
            )
            deficits = [
                {
                    "profile": deficit.split("/", 1)[0],
                    "predicate": deficit.split("/", 1)[1],
                }
                for deficit in validated["semantic_evidence_deficits"]
            ]
            print(
                json.dumps(
                    {
                        "schema": (
                            "shieldd.gnark.semantic_evidence_deficits.v1"
                        ),
                        "count": len(deficits),
                        "deficits": deficits,
                    },
                    indent=2,
                )
            )
            return
        statuses = load_and_validate(
            selected_profiles=args.profile or None,
            manifests=parse_manifest_arguments(args.manifest),
            require_relation_evidence=args.require_relation_evidence,
            test_receipt=args.test_receipt,
            test_receipt_nonce=args.test_receipt_nonce,
            check_semantic_digest=not args.skip_semantic_digest,
        )
    except SpecificationCompletenessError as error:
        print(f"FV specification completeness failed: {error}", file=sys.stderr)
        raise SystemExit(1)

    if args.emit_status_json:
        print(
            json.dumps(
                {
                    "schema": "shieldd.gnark.specification_status.v1",
                    "profiles": list(statuses),
                },
                indent=2,
            )
        )
    elif args.emit_status_tsv:
        for status in statuses:
            print(
                "\t".join(
                    (
                        str(status["profile"]),
                        str(status["computed_status"]),
                        str(status["relation_evidence"]),
                        str(status["test_execution"]),
                        str(
                            status["test_execution_receipt_sha256"]
                            or "not_evaluated"
                        ),
                        str(status["setup_trust_status"]),
                        ",".join(status["setup_trust_assumption_ids"]),
                        str(status["claim_set"]),
                        str(status["predicate_instance_count"]),
                        str(status["catalog_status"]),
                    )
                )
            )
    else:
        relation = (
            "mapped"
            if statuses
            and all(status["relation_evidence"] == "mapped" for status in statuses)
            else "not_evaluated"
        )
        print(
            "FV specification completeness ok: "
            f"profiles={len(statuses)} predicates={len(PREDICATE_BASELINE)} "
            f"status=specification_closed relation_evidence={relation} "
            "test_execution="
            + (
                "passed"
                if statuses
                and all(
                    status["test_execution"] == "passed"
                    for status in statuses
                )
                else "not_evaluated"
            )
            + f" setup_trust={SETUP_TRUST_STATUS}"
        )


if __name__ == "__main__":
    main()
