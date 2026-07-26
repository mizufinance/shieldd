#!/usr/bin/env python3
"""Render the deterministic normalized-relation inventory for deployed IRs.

The inventory is deliberately derived from typed IR JSON rather than from Lean
source. It records every non-empty segment exactly once, groups instances by
the operation-scoped normalized relation key, and keeps folded-constant
variation visible for review.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path

from write_if_changed import write_if_changed
from template_ir import SegmentTemplate

IR_SCHEMA = "shieldd.gnark.deployed_slice_ir.v3"
INVENTORY_SCHEMA = "shieldd.gnark.normalized_template_inventory.v1"
NOTE_RESHAPE = {"note_reshape2x1", "note_reshape4x1", "note_reshape8x1", "note_reshape1x8"}


def load_ir(path: Path) -> dict:
    return json.loads(path.read_text())


def require(condition: bool, message: str) -> None:
    if not condition:
        raise ValueError(message)


def inventory(irs: list[dict], require_note_reshape: bool = False) -> dict:
    by_circuit: dict[str, dict] = {}
    templates: dict[str, dict] = {}

    for ir in sorted(irs, key=lambda value: value["circuit"]):
        circuit = ir.get("circuit")
        require(isinstance(circuit, str) and circuit, "IR has no circuit name")
        require(circuit not in by_circuit, f"duplicate IR circuit {circuit}")
        require(ir.get("schema") == IR_SCHEMA, f"{circuit}: unexpected IR schema")

        segments = ir.get("segments", [])
        segment_indices: set[int] = set()
        circuit_template_keys: set[str] = set()
        constraint_rows = 0
        nonzero_segments = 0
        for segment in segments:
            index = segment.get("index")
            require(index not in segment_indices, f"{circuit}: duplicate segment {index}")
            segment_indices.add(index)
            count = segment.get("constraint_count", 0)
            constraint_rows += count
            if count == 0:
                continue

            nonzero_segments += 1
            kind = segment.get("kind", "")
            require(
                kind not in {"marker", "structural"},
                f"{circuit} seg {index}: structural marker carries constraints",
            )
            op = segment.get("op", "")
            template = SegmentTemplate.parse(segment)
            template_key = template.proof_template_id
            normalized_hash = template_key.rpartition("@")[2]
            seating = template.canonical_wire_seating
            local_wire_count = len(seating)
            require(op and normalized_hash and template_key, f"{circuit} seg {index}: missing template metadata")
            require(template_key.startswith(f"{op}@"), f"{circuit} seg {index}: malformed proof-template id")
            require(local_wire_count == len(seating), f"{circuit} seg {index}: local wire count/seating mismatch")
            require(seating and seating[0] == 0, f"{circuit} seg {index}: seating does not reserve wire 0")
            require(len(set(seating)) == len(seating), f"{circuit} seg {index}: seating is not injective")

            circuit_template_keys.add(template_key)
            instance = {
                "circuit": circuit,
                "segment_index": index,
                "constraint_count": count,
                "constant_vector_sha256_hex": segment.get("constant_vector_sha256_hex", ""),
                "class_key": segment.get("class_key", ""),
            }
            entry = templates.setdefault(
                template_key,
                {
                    "template_key": template_key,
                    "op": op,
                    "normalized_relation_sha256_hex": normalized_hash,
                    "constraint_count": count,
                    "local_wire_count": local_wire_count,
                    "instances": [],
                },
            )
            require(entry["op"] == op, f"template {template_key}: operation drift")
            require(entry["constraint_count"] == count, f"template {template_key}: row-count drift")
            require(entry["local_wire_count"] == local_wire_count, f"template {template_key}: local-wire-count drift")
            entry["instances"].append(instance)

        require(constraint_rows == ir.get("nb_constraints"), f"{circuit}: segment rows do not cover nb_constraints")
        by_circuit[circuit] = {
            "circuit": circuit,
            "sr1cs_sha256_hex": ir.get("sr1cs_sha256_hex", ""),
            "nb_constraints": ir["nb_constraints"],
            "segment_count": len(segments),
            "constraint_segment_count": nonzero_segments,
            "template_keys": sorted(circuit_template_keys),
        }

    circuits = sorted(by_circuit.values(), key=lambda value: value["circuit"])
    if require_note_reshape:
        require(set(by_circuit) == NOTE_RESHAPE, f"NoteReshape family set mismatch: {sorted(by_circuit)}")

    rendered_templates = []
    for key in sorted(templates):
        entry = templates[key]
        entry["instances"].sort(key=lambda value: (value["circuit"], value["segment_index"]))
        entry["circuits"] = sorted({instance["circuit"] for instance in entry["instances"]})
        entry["distinct_constant_vectors"] = len(
            {instance["constant_vector_sha256_hex"] for instance in entry["instances"]}
        )
        representative = entry["instances"][0]
        entry["representative"] = {
            "circuit": representative["circuit"],
            "segment_index": representative["segment_index"],
        }
        rendered_templates.append(entry)

    instance_count = sum(circuit["constraint_segment_count"] for circuit in circuits)
    inventory_data = {
        "schema": INVENTORY_SCHEMA,
        "circuits": circuits,
        "template_count": len(rendered_templates),
        "constraint_segment_count": instance_count,
        "templates": rendered_templates,
    }
    require(
        sum(len(template["instances"]) for template in rendered_templates) == instance_count,
        "a constraint-bearing segment was omitted or emitted more than once",
    )
    return inventory_data


def render(data: dict) -> str:
    return json.dumps(data, indent=2) + "\n"


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--ir", type=Path, nargs="+", required=True)
    parser.add_argument("--out", type=Path, required=True)
    parser.add_argument("--require-note-reshape", action="store_true")
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    contents = render(inventory([load_ir(path) for path in args.ir], args.require_note_reshape))
    if args.check:
        actual = args.out.read_text()
        if actual != contents:
            raise SystemExit(f"stale template inventory: {args.out}")
        print(f"checked {args.out} ({json.loads(contents)['template_count']} templates)")
        return
    args.out.parent.mkdir(parents=True, exist_ok=True)
    if write_if_changed(args.out, contents):
        print(f"wrote {args.out} ({json.loads(contents)['template_count']} templates)")


if __name__ == "__main__":
    main()
