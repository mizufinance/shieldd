#!/usr/bin/env python3
"""Generate exact per-template ownership and family semantic-closure pins."""

from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path

from write_if_changed import write_if_changed


ROOT = Path(__file__).resolve().parents[4]
LEAN = ROOT / "tools/gnark/lean"
FORMAL = LEAN / "ShielddGnarkFormal/Deployed/Templates"
BENCH = LEAN / "bench"
REGISTRY = ROOT / "tools/gnark/artifacts/proof-template-registry.json"
DEFAULT_OUT = ROOT / "tools/gnark/artifacts/proof-template-ownership.json"
IR_ROOT = ROOT / "crates/core/component/shielded-pool/formal"
IR_PATHS = tuple(
    IR_ROOT / f"{circuit}-deployed-slice-ir.json"
    for circuit in (
        "note_reshape2x1",
        "note_reshape4x1",
        "note_reshape8x1",
        "note_reshape1x8",
        "transfer",
    )
)
SHARED_SEMANTICS = (
    "tools/gnark/lean/ShielddGnarkFormal/NbFixedBaseLiteral.lean",
    "tools/gnark/lean/ShielddGnarkFormal/Deployed/Templates/Semantics/BinaryRecomposition.lean",
    "tools/gnark/lean/ShielddGnarkFormal/Deployed/Templates/Semantics/CompressToFieldCommon.lean",
    "tools/gnark/lean/ShielddGnarkFormal/Deployed/Templates/Semantics/Poseidon3Trace.lean",
    "tools/gnark/lean/ShielddGnarkFormal/Deployed/Templates/Semantics/Poseidon3ScalarBase.lean",
)


def camel(text: str) -> str:
    result: list[str] = []
    upper = True
    for char in text:
        if char in "._-":
            upper = True
        elif upper:
            result.append(char.upper())
            upper = False
        else:
            result.append(char)
    return "".join(result)


def template_name(proof_template_id: str) -> str:
    op, digest = proof_template_id.split("@", 1)
    return f"T{camel(op)}_{digest}"


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def aggregate(files: list[dict[str, str]]) -> str:
    digest = hashlib.sha256()
    for item in files:
        digest.update(item["path"].encode())
        digest.update(b"\0")
        digest.update(item["sha256_hex"].encode())
        digest.update(b"\0")
    return digest.hexdigest()


def owned_files(template: dict) -> list[dict[str, str]]:
    proof_template_id = template["proof_template_id"]
    name = template_name(proof_template_id)
    candidates = [
        REGISTRY.parent / template["canonical_relation_file"],
        *sorted((FORMAL / "Relations").glob(f"{name}*.lean")),
        FORMAL / "Generated" / f"{name}.lean",
        *sorted((FORMAL / "Semantics").glob(f"{name}*.lean")),
        *sorted(
            path
            for path in BENCH.glob("NoteReshapeTemplate*.lean")
            if f".{name}" in path.read_text()
        ),
    ]
    files = []
    for path in candidates:
        if path.is_file():
            files.append(
                {
                    "path": str(path.relative_to(ROOT)),
                    "sha256_hex": sha256(path),
                }
            )
    files.sort(key=lambda item: item["path"])
    if not files:
        raise ValueError(f"proof template has no owned files: {proof_template_id}")
    return files


def render() -> dict:
    registry = json.loads(REGISTRY.read_text())
    consumers: dict[str, set[str]] = {}
    family_templates: dict[str, set[str]] = {}
    for path in IR_PATHS:
        ir = json.loads(path.read_text())
        circuit = ir["circuit"]
        keys = {
            segment["proof_template_id"]
            for segment in ir["segments"]
            if segment["constraint_count"] > 0
        }
        family_templates[circuit] = keys
        for key in keys:
            consumers.setdefault(key, set()).add(circuit)

    templates = []
    template_digests: dict[str, str] = {}
    for item in sorted(registry["templates"], key=lambda value: value["proof_template_id"]):
        key = item["proof_template_id"]
        files = owned_files(item)
        digest = aggregate(files)
        template_digests[key] = digest
        templates.append(
            {
                "proof_template_id": key,
                "consumers": sorted(consumers.get(key, set())),
                "files": files,
                "template_files_sha256_hex": digest,
            }
        )

    families = []
    for circuit, keys in sorted(family_templates.items()):
        digest = hashlib.sha256()
        for key in sorted(keys):
            digest.update(key.encode())
            digest.update(b"\0")
            digest.update(template_digests[key].encode())
            digest.update(b"\0")
        families.append(
            {
                "circuit": circuit,
                "proof_template_ids": sorted(keys),
                "semantic_closure_sha256_hex": digest.hexdigest(),
            }
        )

    shared = []
    for relative in SHARED_SEMANTICS:
        path = ROOT / relative
        if path.is_file():
            shared.append({"path": relative, "sha256_hex": sha256(path)})
    for path in sorted((FORMAL / "Semantics").glob("Poseidon3ScalarRound*.lean")):
        shared.append(
            {"path": str(path.relative_to(ROOT)), "sha256_hex": sha256(path)}
        )

    return {
        "schema": "shieldd.gnark.proof_template_ownership.v1",
        "registry_schema": registry["schema"],
        "templates": templates,
        "shared_files": shared,
        "families": families,
    }


def encoded() -> str:
    return json.dumps(render(), indent=2) + "\n"


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    source = encoded()
    if args.check:
        if not args.out.is_file() or args.out.read_text() != source:
            raise SystemExit(f"stale proof-template ownership manifest: {args.out}")
    elif write_if_changed(args.out, source):
        print(f"wrote {args.out}")


if __name__ == "__main__":
    main()
