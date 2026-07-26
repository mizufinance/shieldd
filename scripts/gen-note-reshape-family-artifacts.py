#!/usr/bin/env python3
"""Render stamped whole-circuit evidence for every NoteReshape family."""

from __future__ import annotations

import argparse
import hashlib
import json
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
FORMAL = ROOT / "crates/core/component/shielded-pool/formal"
GNARK = ROOT / "tools/gnark"
LEAN = GNARK / "lean"
sys.path.insert(0, str(LEAN / "gen"))
from write_if_changed import write_if_changed

FAMILIES = {
    "note_reshape2x1": "NoteReshape2x1",
    "note_reshape4x1": "NoteReshape4x1",
    "note_reshape8x1": "NoteReshape8x1",
    "note_reshape1x8": "NoteReshape1x8",
}
OWNERSHIP = GNARK / "artifacts/proof-template-ownership.json"


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def family_semantic_closure(circuit: str) -> str:
    ownership = json.loads(OWNERSHIP.read_text())
    matches = [
        family["semantic_closure_sha256_hex"]
        for family in ownership["families"]
        if family["circuit"] == circuit
    ]
    if len(matches) != 1:
        raise ValueError(f"missing ownership closure for {circuit}")
    return matches[0]


def render(circuit: str) -> str:
    module = FAMILIES[circuit]
    artifact_dir = GNARK / "artifacts" / circuit
    contract_dir = LEAN / "ShielddGnarkFormal/Deployed/Contracts" / module
    fields = {
        "whole_circuit_sr1cs_sha256": sha256(artifact_dir / f"{circuit}.sr1cs"),
        "manifest_sha256": sha256(artifact_dir / f"{circuit}-manifest.json"),
        "coverage_report_sha256": sha256(FORMAL / f"{circuit}-constraint-coverage-report.json"),
        "coverage_manifest_sha256": sha256(FORMAL / f"{circuit}-coverage-manifest.json"),
        "coverage_ir_sha256": sha256(FORMAL / f"{circuit}-deployed-slice-ir.json"),
        "nb_constraints": str(json.loads((artifact_dir / "circuit_metadata.json").read_text())["nb_constraints"]),
        "verifying_key_sha256_hex": json.loads((artifact_dir / "circuit_metadata.json").read_text())["verifying_key_sha256_hex"],
        "deployed_statement_source_sha256": sha256(contract_dir / "Statement.lean"),
        "deployed_capstone_source_sha256": sha256(contract_dir / "Capstone.lean"),
        "family_generator_source_sha256": sha256(LEAN / "gen/gen_note_reshape_family.py"),
        "template_semantics_generator_source_sha256": sha256(LEAN / "gen/gen_note_reshape_template_semantics.py"),
        "proof_template_ownership_sha256": sha256(OWNERSHIP),
        "family_semantic_closure_sha256": family_semantic_closure(circuit),
        "template_inventory_sha256": sha256(GNARK / "artifacts/note-reshape-template-inventory.json"),
        "dtk_lt_seating_sha256": sha256(FORMAL / "note_reshape2x1-dtk-lt-seating.json"),
        "constraint_coverage_script_sha256": sha256(ROOT / "scripts/check-constraint-coverage.sh"),
        "root_source_sha256": sha256(LEAN / "ShielddGnarkFormal.lean"),
        "lakefile_sha256": sha256(LEAN / "lakefile.lean"),
        "lake_manifest_sha256": sha256(LEAN / "lake-manifest.json"),
        "lean_toolchain_sha256": sha256(LEAN / "lean-toolchain"),
    }
    lines = [
        f"artifact: {circuit}-whole-circuit-lean",
        "scope: whole-circuit",
        f"target: {circuit} deployed SR1CS contract chain",
        "engine: Lean 4 / normalized-relation deployed-template proofs",
        f"theorem: Shieldd.GnarkFormal.Deployed.Contracts.{module}.{circuit}_statement",
        "model: exact deployed segment relations over one global wire valuation; normalized templates are restricted through per-instance seating, and Capstone composes every discharged segment",
        "axiom_baseline: propext, Quot.sound",
        "named_external_assumptions:",
        "- none",
        "decaf_fv_status: full",
        "covered_flow:",
        "- ControlSpec exposes Boolean flags, dummy-suffix ordering, active-count ranges, conditional equality, and dummy multiplexing.",
        "- SharedSpec covers shared curve, diversified-key, transmission-key, and equivalent-key obligations.",
        "- Each SpendSpec covers note commitment, nullifier, state path, synthetic dummy nullifier, randomized verification-key branches, key bindings, and asset bindings.",
        "- Each OutputSpec covers output note commitment, curve/equivalence, and asset bindings.",
        "- BalanceSpec covers net-balance conservation, compression, and equivalent-key binding.",
        "- TranscriptSpec covers statement-hash equality and exact transcript binding, including active-count inputs.",
        "known_limitations:",
        "- The family theorem composes exact deployed segment relations; the Rust source/SR1CS, normalized IR, reconstruction, and coverage gates provide the compiled-row partition and hash binding.",
        "- Cryptographic bridge assumptions remain those recorded in the formal assumption ledger; no project Lean axioms are admitted.",
        "",
    ]
    lines.extend(f"{key}: {value}" for key, value in fields.items())
    return "\n".join(lines) + "\n"


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    for circuit in FAMILIES:
        path = FORMAL / f"{circuit}-whole-circuit-lean-artifact.txt"
        sidecar = Path(f"{path}.sha256")
        contents = render(circuit)
        digest = hashlib.sha256(contents.encode()).hexdigest() + "\n"
        if args.check:
            if path.read_text() != contents:
                raise SystemExit(f"stale family artifact: {path}")
            if not sidecar.is_file() or sidecar.read_text() != digest:
                raise SystemExit(f"stale family artifact sidecar: {sidecar}")
        else:
            if write_if_changed(path, contents):
                print(f"wrote {path}")
            if write_if_changed(sidecar, digest):
                print(f"wrote {sidecar}")


if __name__ == "__main__":
    main()
