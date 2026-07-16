#!/usr/bin/env python3
"""Refresh source and deployed-byte pins in the checked-in Lean evidence."""

from __future__ import annotations

import argparse
import hashlib
import json
import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
FORMAL = ROOT / "crates/core/component/shielded-pool/formal"
LEAN = ROOT / "tools/gnark/lean"
GNARK = ROOT / "tools/gnark"


def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def update(path: Path, values: dict[str, str]) -> None:
    text = path.read_text()
    for key, value in values.items():
        replacement = f"{key}: {value}"
        pattern = rf"^{re.escape(key)}: .*?$"
        text, count = re.subn(pattern, replacement, text, flags=re.MULTILINE)
        if count == 0 and path.name.startswith("transfer-"):
            continue
        if count != 1:
            raise SystemExit(f"{path}: expected exactly one {key}, found {count}")
    path.write_text(text)


def metadata(circuit: str) -> dict:
    return json.loads((GNARK / f"artifacts/{circuit}/circuit_metadata.json").read_text())


def common() -> dict[str, str]:
    return {
        "prime_order_certificate_source_sha256": sha(LEAN / "ShielddGnarkFormal/Deployed/PrimeOrderCertificate.lean"),
        "prime_order_registry_source_sha256": sha(LEAN / "ShielddGnarkFormal/Deployed/PrimeOrder.lean"),
        "decaf_assumptions_source_sha256": sha(LEAN / "ShielddGnarkFormal/Decaf377Assumptions.lean"),
        "compress_to_field_bridge_source_sha256": sha(LEAN / "ShielddGnarkFormal/CompressToFieldBridge.lean"),
        "edwards_completeness_source_sha256": sha(LEAN / "ShielddGnarkFormal/EdwardsCompleteness.lean"),
        "edwards_bridge_source_sha256": sha(LEAN / "ShielddGnarkFormal/EdwardsBridge.lean"),
        "poseidon_hash1_bridge_source_sha256": sha(LEAN / "ShielddGnarkFormal/Poseidon1Bridge.lean"),
        "poseidon_hash6_bridge_source_sha256": sha(LEAN / "ShielddGnarkFormal/Poseidon6Bridge.lean"),
        "poseidon_hash7_bridge_source_sha256": sha(LEAN / "ShielddGnarkFormal/Poseidon7Bridge.lean"),
        "anchor_merkle24_bridge_source_sha256": sha(LEAN / "ShielddGnarkFormal/AnchorMerkleSpec.lean"),
        "quad_path24_extracted_source_sha256": sha(LEAN / "ShielddGnarkFormal/Extracted/QuadPath24.lean"),
        "constraint_coverage_lib_source_sha256": sha(ROOT / "crates/crypto/constraint-coverage/src/lib.rs"),
        "constraint_coverage_main_source_sha256": sha(ROOT / "crates/crypto/constraint-coverage/src/main.rs"),
        "constraint_coverage_cargo_sha256": sha(ROOT / "crates/crypto/constraint-coverage/Cargo.toml"),
        "root_source_sha256": sha(LEAN / "ShielddGnarkFormal.lean"),
        "lakefile_sha256": sha(LEAN / "lakefile.lean"),
        "lake_manifest_sha256": sha(LEAN / "lake-manifest.json"),
        "lean_toolchain_sha256": sha(LEAN / "lean-toolchain"),
        "lean_check_script_sha256": sha(ROOT / "scripts/check-lean-circuit-fv.sh"),
        "constraint_coverage_script_sha256": sha(ROOT / "scripts/check-constraint-coverage.sh"),
    }


def deployed(circuit: str) -> dict[str, str]:
    artifact = GNARK / f"artifacts/{circuit}"
    formal_prefix = FORMAL / f"{circuit}-"
    values = {
        "whole_circuit_sr1cs_sha256": sha(artifact / f"{circuit}.sr1cs"),
        "manifest_sha256": sha(artifact / f"{circuit}-manifest.json"),
        "coverage_report_sha256": sha(formal_prefix.with_name(f"{circuit}-constraint-coverage-report.json")),
        "nb_constraints": str(metadata(circuit)["nb_constraints"]),
        "verifying_key_sha256_hex": metadata(circuit)["verifying_key_sha256_hex"],
    }
    return values


def note_reshape2x1_values() -> dict[str, str]:
    contract = LEAN / "ShielddGnarkFormal/Deployed/Contracts/NoteReshape2x1"
    values = common() | deployed("note_reshape2x1")
    values.update(
        {
            "deployed_statement_source_sha256": sha(contract / "Statement.lean"),
            "deployed_capstone_source_sha256": sha(contract / "Capstone.lean"),
            "deployed_wiring_source_sha256": sha(contract / "Wiring.lean"),
            "coverage_ir_sha256": sha(FORMAL / "note_reshape2x1-deployed-slice-ir.json"),
            "coverage_manifest_sha256": sha(FORMAL / "note_reshape2x1-coverage-manifest.json"),
            "dtk_lt_seating_sha256": sha(FORMAL / "note_reshape2x1-dtk-lt-seating.json"),
            "constraint_coverage_contracts_source_sha256": sha(ROOT / "crates/crypto/constraint-coverage/src/contracts.rs"),
            "go_define_source_sha256": sha(ROOT / "tools/gnark/internal/circuits/note_reshape_circuit.go"),
            "poseidon_go_source_sha256": sha(ROOT / "tools/gnark/internal/primitives/poseidon377.go"),
            "gadget_labels_source_sha256": sha(ROOT / "tools/gnark/internal/circuits/gadgets_constraint.go"),
            "gnarkctl_source_sha256": sha(ROOT / "tools/gnark/cmd/gnarkctl/main.go"),
            "dtk_generator_source_sha256": sha(LEAN / "gen/gen_dtk_slice.py"),
            "rvk_generator_source_sha256": sha(LEAN / "gen/gen_rvk_deployed_adapters.py"),
            "scp_generator_source_sha256": sha(LEAN / "gen/gen_scp_adapters.py"),
            "generated_contract_source_sha256": sha(LEAN / "gen/generated_contract_source.py"),
            "statement_generator_source_sha256": sha(LEAN / "gen/gen_statement.py"),
            "wiring_generator_source_sha256": sha(LEAN / "gen/gen_wiring.py"),
            "capstone_generator_source_sha256": sha(LEAN / "gen/gen_capstone.py"),
        }
    )
    return values


def transfer_values(go_wiring: Path, lean_wiring: Path) -> dict[str, str]:
    values = common() | deployed("transfer")
    values.update(
        {
            "whole_circuit_model_source_sha256": sha(LEAN / "ShielddGnarkFormal/Transfer.lean"),
            "decaf_fv_inventory_sha256": sha(LEAN / "transfer-decaf-fv-inventory.txt"),
            "wiring_transcript_source_sha256": sha(LEAN / "ShielddGnarkFormal/TransferWiringTranscript.lean"),
            "go_wiring_transcript_sha256": sha(go_wiring),
            "lean_wiring_transcript_sha256": sha(lean_wiring),
            "poseidon_hash5_bridge_source_sha256": sha(LEAN / "ShielddGnarkFormal/Poseidon5Bridge.lean"),
            "ack_bridge_source_sha256": sha(LEAN / "ShielddGnarkFormal/AckBridge.lean"),
            "shared_secret_bridge_source_sha256": sha(LEAN / "ShielddGnarkFormal/SharedSecretBridge.lean"),
            "transfer_salt_bridge_source_sha256": sha(LEAN / "ShielddGnarkFormal/TransferSaltBridge.lean"),
            "poseidon_encryption_bridge_source_sha256": sha(LEAN / "ShielddGnarkFormal/PoseidonEncryptionBridge.lean"),
            "dleq_bridge_source_sha256": sha(LEAN / "ShielddGnarkFormal/DleqBridge.lean"),
            "threshold_regulated_bridge_source_sha256": sha(LEAN / "ShielddGnarkFormal/ThresholdRegulatedBridge.lean"),
            "net_balance_commitment2_bridge_source_sha256": sha(LEAN / "ShielddGnarkFormal/NetBalanceCommitment2Bridge.lean"),
            "decaf_circuit_defs_source_sha256": sha(LEAN / "ShielddGnarkFormal/Decaf377CircuitDefs.lean"),
            "poseidon_hash5_extracted_source_sha256": sha(LEAN / "ShielddGnarkFormal/Extracted/PoseidonHash5.lean"),
            "net_balance_commitment2_extracted_source_sha256": sha(LEAN / "ShielddGnarkFormal/Extracted/NetBalanceCommitment2.lean"),
            "decaf_gadgets_go_source_sha256": sha(ROOT / "tools/gnark/internal/circuits/decaf_gadgets.go"),
            "go_define_source_sha256": sha(ROOT / "tools/gnark/internal/circuits/transfer_circuit.go"),
            "transfer_encryption_go_source_sha256": sha(ROOT / "tools/gnark/internal/compliance/transfer_encryption.go"),
            "dleq_go_source_sha256": sha(ROOT / "tools/gnark/internal/compliance/dleq.go"),
            "scalar_mul_gadgets_go_source_sha256": sha(ROOT / "tools/gnark/internal/circuits/scalar_mul_gadgets.go"),
            "poseidon_go_source_sha256": sha(ROOT / "tools/gnark/internal/primitives/poseidon377.go"),
            "gadget_labels_source_sha256": sha(ROOT / "tools/gnark/internal/circuits/gadgets_constraint.go"),
            "gnarkctl_source_sha256": sha(ROOT / "tools/gnark/cmd/gnarkctl/main.go"),
        }
    )
    return values


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--transfer-go-wiring", type=Path, required=True)
    parser.add_argument("--transfer-lean-wiring", type=Path, required=True)
    args = parser.parse_args()
    update(FORMAL / "note_reshape2x1-whole-circuit-lean-artifact.txt", note_reshape2x1_values())
    update(FORMAL / "transfer-whole-circuit-lean-artifact.txt", transfer_values(args.transfer_go_wiring, args.transfer_lean_wiring))


if __name__ == "__main__":
    main()
