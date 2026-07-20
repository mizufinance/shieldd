#!/usr/bin/env python3
"""Render stamped whole-circuit evidence for the padded NoteReshape families."""

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
    "note_reshape4x1": "NoteReshape4x1",
    "note_reshape8x1": "NoteReshape8x1",
    "note_reshape1x8": "NoteReshape1x8",
}


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def semantics_tree_sha256() -> str:
    root = LEAN / "ShielddGnarkFormal/Deployed/Templates/Semantics"
    digest = hashlib.sha256()
    for path in sorted(root.rglob("*.lean")):
        relative = path.relative_to(root).as_posix().encode()
        contents = path.read_bytes()
        digest.update(len(relative).to_bytes(8, "big"))
        digest.update(relative)
        digest.update(len(contents).to_bytes(8, "big"))
        digest.update(contents)
    return digest.hexdigest()


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
        "template_semantics_tree_sha256": semantics_tree_sha256(),
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
    parser.add_argument("--semantics-tree-sha256", action="store_true")
    args = parser.parse_args()
    if args.semantics_tree_sha256:
        print(semantics_tree_sha256())
        return
    for circuit in FAMILIES:
        path = FORMAL / f"{circuit}-whole-circuit-lean-artifact.txt"
        contents = render(circuit)
        if args.check:
            if path.read_text() != contents:
                raise SystemExit(f"stale family artifact: {path}")
        else:
            if write_if_changed(path, contents):
                print(f"wrote {path}")


if __name__ == "__main__":
    main()
