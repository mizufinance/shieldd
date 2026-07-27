#!/usr/bin/env python3
"""Compare freshly compiled NoteReshape evidence with deployed bytes."""

from __future__ import annotations

import argparse
import hashlib
import json
import sys
from pathlib import Path


FAMILIES = ("note_reshape2x1", "note_reshape4x1", "note_reshape8x1", "note_reshape1x8")
MODULES = {
    "note_reshape2x1": "NoteReshape2x1",
    "note_reshape4x1": "NoteReshape4x1",
    "note_reshape8x1": "NoteReshape8x1",
    "note_reshape1x8": "NoteReshape1x8",
}


def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def digest(value: object) -> str:
    encoded = json.dumps(value, sort_keys=True, separators=(",", ":")).encode()
    return hashlib.sha256(encoded).hexdigest()


def relation_inventory(ir: dict) -> dict:
    return {
        "schema": ir.get("schema"),
        "circuit": ir.get("circuit"),
        "classes": ir.get("classes", []),
        "segments": [
            {
                key: segment[key]
                for key in (
                    "index",
                    "op",
                    "kind",
                    "start",
                    "end",
                    "constraint_count",
                    "wire_roles",
                    "class_key",
                    "proof_template_id",
                    "deployed_normalized_relation_sha256_hex",
                    "template_equivalence_witness",
                    "relation_sha256_hex",
                    "wire_role_sha256_hex",
                )
                if key in segment
            }
            for segment in ir.get("segments", [])
        ],
    }


def public_statement_inventory(manifest: dict) -> dict:
    return {
        "circuit": manifest.get("circuit"),
        "shape": manifest.get("shape"),
        "statement_events": [
            {
                key: segment[key]
                for key in (
                    "index",
                    "op",
                    "args",
                    "kind",
                    "gadget_label",
                    "start",
                    "end",
                    "constraint_count",
                    "input_wire_ids",
                    "output_wire_ids",
                )
                if key in segment
            }
            for segment in manifest.get("segments", [])
            if segment.get("op", "").startswith("statement.")
        ],
    }


def tree_hash(root: Path, patterns: tuple[str, ...]) -> str | None:
    if not root.is_dir():
        return None
    paths = sorted(
        path
        for pattern in patterns
        for path in root.glob(pattern)
        if path.is_file()
    )
    if not paths:
        return None
    hasher = hashlib.sha256()
    for path in paths:
        relative = path.relative_to(root).as_posix().encode()
        contents = path.read_bytes()
        hasher.update(len(relative).to_bytes(8, "big"))
        hasher.update(relative)
        hasher.update(len(contents).to_bytes(8, "big"))
        hasher.update(contents)
    return hasher.hexdigest()


def contract_patterns(circuit: str) -> tuple[str, ...]:
    return (
        "Seg*.lean",
        "Bounds.lean",
        "Capstone.lean",
        "CircuitFacts.lean",
        "RoleBindings.lean",
        "SemanticBindings.lean",
        "SemanticSeams.lean",
    )


def change_is_failure(
    policy: str, circuit: str, affected: set[str], changed: list[str]
) -> bool:
    return bool(changed) and (policy == "clean" or circuit not in affected)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--fresh-dir", type=Path, required=True)
    parser.add_argument("--contracts-root", type=Path, required=True)
    parser.add_argument("--template-inventory", type=Path, required=True)
    parser.add_argument(
        "--policy",
        choices=("clean", "scoped"),
        default="clean",
        help="clean rejects every drift; scoped permits drift only in --affected families",
    )
    parser.add_argument("--affected", nargs="+", choices=[*FAMILIES, "all"])
    args = parser.parse_args()
    if args.policy == "scoped" and not args.affected:
        parser.error("--policy scoped requires --affected")
    requested = args.affected or []
    affected = set(FAMILIES if "all" in requested else requested)
    root = Path(__file__).resolve().parents[1]
    expected_inventory = root / "tools/gnark/artifacts/note-reshape-template-inventory.json"
    failures: list[str] = []
    print("==> content-based NoteReshape impact")
    for circuit in FAMILIES:
        artifact = root / "tools/gnark/artifacts" / circuit
        formal = root / "crates/core/component/shielded-pool/formal"
        fresh_manifest = args.fresh_dir / f"{circuit}-manifest.json"
        fresh_sr1cs = args.fresh_dir / f"{circuit}.sr1cs"
        committed_manifest = artifact / f"{circuit}-manifest.json"
        committed_sr1cs = artifact / f"{circuit}.sr1cs"
        fresh_ir = args.fresh_dir / f"{circuit}-deployed-slice-ir.json"
        committed_ir = formal / f"{circuit}-deployed-slice-ir.json"
        if not all(path.is_file() for path in (fresh_manifest, fresh_sr1cs, fresh_ir)):
            print(f"{circuit}: ERROR missing fresh evidence", file=sys.stderr)
            failures.append(circuit)
            continue

        fresh_manifest_data = json.loads(fresh_manifest.read_text())
        committed_manifest_data = json.loads(committed_manifest.read_text())
        fresh_ir_data = json.loads(fresh_ir.read_text())
        committed_ir_data = json.loads(committed_ir.read_text())
        fresh_contracts = tree_hash(
            args.contracts_root / MODULES[circuit], contract_patterns(circuit)
        )
        committed_contracts = tree_hash(
            root / "tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts" / MODULES[circuit],
            contract_patterns(circuit),
        )
        fresh_templates = sha(args.template_inventory) if args.template_inventory.is_file() else None
        committed_templates = sha(expected_inventory)
        checks = {
            "sr1cs": sha(fresh_sr1cs) != sha(committed_sr1cs),
            "manifest": sha(fresh_manifest) != sha(committed_manifest),
            "public_statement": digest(public_statement_inventory(fresh_manifest_data))
            != digest(public_statement_inventory(committed_manifest_data)),
            "relations": digest(relation_inventory(fresh_ir_data))
            != digest(relation_inventory(committed_ir_data)),
            "contracts": fresh_contracts is not None and fresh_contracts != committed_contracts,
            "templates": fresh_templates is not None and fresh_templates != committed_templates,
        }
        changed = [name for name, value in checks.items() if value]
        if not changed:
            print(f"{circuit}: unchanged")
        else:
            print(f"{circuit}: changed: {', '.join(changed)}")
        if change_is_failure(args.policy, circuit, affected, changed):
            failures.append(circuit)

    if failures:
        print(
            f"content-based impact failed under {args.policy} policy: "
            + ", ".join(failures),
            file=sys.stderr,
        )
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
