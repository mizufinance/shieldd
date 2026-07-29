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
from lean_affected_modules import local_imports, module_sources
from write_if_changed import write_if_changed

FAMILIES = {
    "note_reshape2x1": "NoteReshape2x1",
    "note_reshape4x1": "NoteReshape4x1",
    "note_reshape8x1": "NoteReshape8x1",
    "note_reshape1x8": "NoteReshape1x8",
}
SOUNDNESS_MODULES = {
    "note_reshape2x1": "NoteReshape2x1Refinement",
    "note_reshape1x8": "NoteReshape1x8Soundness",
    "note_reshape4x1": "NoteReshape4x1Soundness",
    "note_reshape8x1": "NoteReshape8x1Soundness",
}
OWNERSHIP = GNARK / "artifacts/proof-template-ownership.json"


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def template_semantic_closure(circuit: str) -> str:
    ownership = json.loads(OWNERSHIP.read_text())
    matches = [
        family["semantic_closure_sha256_hex"]
        for family in ownership["families"]
        if family["circuit"] == circuit
    ]
    if len(matches) != 1:
        raise ValueError(f"missing ownership closure for {circuit}")
    return matches[0]


def aggregate(paths: list[Path]) -> str:
    digest = hashlib.sha256()
    for path in sorted(set(paths)):
        digest.update(str(path.relative_to(ROOT)).encode())
        digest.update(b"\0")
        digest.update(path.read_bytes())
        digest.update(b"\0")
    return digest.hexdigest()


def soundness_source_closure(circuit: str) -> str:
    sources = module_sources(LEAN)
    known = set(sources)
    root = f"ShielddGnarkFormal.Deployed.{SOUNDNESS_MODULES[circuit]}"
    if root not in sources:
        raise ValueError(f"missing soundness root: {root}")
    closure: set[str] = set()
    pending = [root]
    while pending:
        module = pending.pop()
        if module in closure:
            continue
        closure.add(module)
        pending.extend(local_imports(sources[module], known))
    return aggregate([sources[module] for module in closure])


def render(circuit: str) -> str:
    module = FAMILIES[circuit]
    soundness_module = SOUNDNESS_MODULES[circuit]
    refinement_namespace = f"NoteReshape{module.removeprefix('NoteReshape')}Refinement"
    artifact_dir = GNARK / "artifacts" / circuit
    contract_dir = LEAN / "ShielddGnarkFormal/Deployed/Contracts" / module
    canonical_address = (
        LEAN
        / "ShielddGnarkFormal/Deployed"
        / f"NoteReshapeCanonicalAddress{module.removeprefix('NoteReshape')}.lean"
    )
    fields = {
        "whole_circuit_sr1cs_sha256": sha256(artifact_dir / f"{circuit}.sr1cs"),
        "manifest_sha256": sha256(artifact_dir / f"{circuit}-manifest.json"),
        "coverage_report_sha256": sha256(FORMAL / f"{circuit}-constraint-coverage-report.json"),
        "coverage_manifest_sha256": sha256(FORMAL / f"{circuit}-coverage-manifest.json"),
        "coverage_ir_sha256": sha256(FORMAL / f"{circuit}-deployed-slice-ir.json"),
        "nb_constraints": str(json.loads((artifact_dir / "circuit_metadata.json").read_text())["nb_constraints"]),
        "verifying_key_json_sha256_hex": json.loads(
            (artifact_dir / "circuit_metadata.json").read_text()
        )["verifying_key_json_sha256_hex"],
        "deployed_circuit_facts_source_sha256": sha256(contract_dir / "CircuitFacts.lean"),
        "deployed_capstone_source_sha256": sha256(contract_dir / "Capstone.lean"),
        "deployed_role_bindings_source_sha256": sha256(contract_dir / "RoleBindings.lean"),
        "deployed_semantic_bindings_source_sha256": sha256(contract_dir / "SemanticBindings.lean"),
        "deployed_semantic_seams_source_sha256": sha256(contract_dir / "SemanticSeams.lean"),
        "handwritten_canonical_address_source_sha256": sha256(canonical_address),
        "family_generator_source_sha256": sha256(LEAN / "gen/gen_note_reshape_family.py"),
        "template_semantics_generator_source_sha256": sha256(LEAN / "gen/gen_note_reshape_template_semantics.py"),
        "proof_template_ownership_sha256": sha256(OWNERSHIP),
        "template_semantics_closure_sha256": template_semantic_closure(circuit),
        "soundness_source_closure_sha256": soundness_source_closure(circuit),
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
        f"target: {circuit} deployed relation to protocol validity",
        "engine: Lean 4 / normalized-relation deployed-template proofs",
        f"theorem: Shieldd.GnarkFormal.Deployed.{refinement_namespace}.C.valid_of_deployedRelation",
        f"root_module: ShielddGnarkFormal.Deployed.{soundness_module}",
        f"exact_circuit_facts_theorem: Shieldd.GnarkFormal.Deployed.Contracts.{module}.{circuit}_circuitFacts",
        "model: exact deployed rows imply typed circuit facts; handwritten family refinement maps those facts into the independent protocol relation",
        "axiom_baseline: propext, Quot.sound",
        "named_external_assumptions:",
        "- none",
        "decaf_relation_status: extracted-gadgets-composed",
        "known_limitations:",
        "- External signature verification and state-transition facts are explicit premises of the final theorem.",
        "- The theorem proves the modeled cryptographic relations; protocol interpretation, gnark compilation, and Groth16 remain in the documented trust boundary.",
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
