#!/usr/bin/env python3
"""Generate the proof spine for one padded NoteReshape family.

The Rust extractor owns row/seating fidelity.  This generator owns only the
Lean composition layer: one bound theorem per constraint-bearing segment,
one conjunction capstone, and a role-shaped statement that exposes control,
spend, output, conservation, and transcript obligations.
"""

from __future__ import annotations

import argparse
import json
import re
from pathlib import Path

from write_if_changed import write_if_changed
from template_ir import SegmentTemplate

SEMANTICS = (
    Path(__file__).resolve().parents[1]
    / "ShielddGnarkFormal/Deployed/Templates/Semantics"
)
BENCH = Path(__file__).resolve().parents[1] / "bench"
LEGACY_2X1_BENCH_IMPORT = re.compile(
    r"ShielddGnarkFormal\.Deployed\.Contracts\.NoteReshape2x1\."
    r"(?:Specs|Wiring|SegDefs|[A-Za-z0-9]*Adapter)"
)


def camel(text: str) -> str:
    out = []
    upper = True
    for char in text:
        if char in "._-":
            upper = True
        elif upper:
            out.append(char.upper())
            upper = False
        else:
            out.append(char)
    return "".join(out)


def template_name(key: str) -> str:
    op, digest = key.split("@", 1)
    return f"T{camel(op)}_{digest}"


def load(path: Path) -> dict:
    return json.loads(path.read_text())


def constraint_segments(ir: dict) -> list[dict]:
    return [segment for segment in ir["segments"] if segment["constraint_count"] > 0]


def check_semantic_providers(ir: dict) -> None:
    missing = []
    forbidden = []
    for key in sorted(
        {
            SegmentTemplate.parse(segment).proof_template_id
            for segment in constraint_segments(ir)
        }
    ):
        path = SEMANTICS / f"{template_name(key)}.lean"
        if not path.is_file():
            missing.append(str(path))
            continue
        text = path.read_text()
        if "spec := relation" in text or "fun _ h => h" in text:
            forbidden.append(str(path))
    if missing:
        raise ValueError("missing semantic providers:\n" + "\n".join(missing))
    if forbidden:
        raise ValueError("identity semantic providers:\n" + "\n".join(forbidden))


def render_manifest(ir: dict, previous: dict) -> dict:
    circuit = ir["circuit"]
    module = camel(circuit)
    old_classes = {item["class_key"]: item for item in previous["classes"]}
    by_index = {segment["index"]: segment for segment in ir["segments"]}
    classes = []
    for class_ir in ir["classes"]:
        old = old_classes.get(class_ir["class_key"], {})
        instances = []
        for index in class_ir["instance_segment_indices"]:
            segment = by_index[index]
            old_instance = next(
                (
                    item
                    for item in old.get("instances", [])
                    if item["segment_index"] == index
                ),
                {},
            )
            instances.append(
                {
                    "segment_index": index,
                    "lean_theorem": f"Shieldd.GnarkFormal.Deployed.Contracts.{module}.inst{index}_bound",
                    "lean_contract": f"Shieldd.GnarkFormal.Deployed.Contracts.{module}.Seg{index}",
                    "constant_vector_sha256_hex": segment["constant_vector_sha256_hex"],
                    "relation_sha256_hex": segment["relation_sha256_hex"],
                    "wire_role_sha256_hex": segment["wire_role_sha256_hex"],
                    **({"note": old_instance["note"]} if "note" in old_instance else {}),
                }
            )
        classes.append(
            {
                "class_key": class_ir["class_key"],
                "op": class_ir["op"],
                "status": "proven",
                "assumption_id": "",
                "shape_sha256_hex": class_ir["shape_sha256_hex"],
                "instances": instances,
                "note": old.get("note", "normalized template bound"),
            }
        )
    return {
        "schema": previous["schema"],
        "circuit": circuit,
        "functional_assumption_allowlist": [],
        "classes": classes,
    }


def render_bounds(ir: dict) -> str:
    circuit = ir["circuit"]
    module = camel(circuit)
    segments = constraint_segments(ir)
    segment_imports = [
        f"import ShielddGnarkFormal.Deployed.Contracts.{module}.Seg{s['index']}"
        for s in segments
    ]
    template_imports = sorted({
        "import ShielddGnarkFormal.Deployed.Templates.Generated."
        + template_name(SegmentTemplate.parse(segment).proof_template_id)
        for segment in segments
    })
    imports = "\n".join([*segment_imports, *template_imports])
    proofs = []
    for segment in segments:
        index = segment["index"]
        key = SegmentTemplate.parse(segment).proof_template_id
        generated = template_name(key)
        prefix = f"Shieldd.GnarkFormal.Deployed.Templates.Generated.{generated}"
        relation = f"{prefix}.relation"
        spec = f"{prefix}.spec"
        sound = f"{prefix}.sound"
        proof = f"""  apply boundOfSeatedTemplate {relation} {spec} {sound}
    Seg{index}.contract Seg{index}.wireSeating
  · intro rho
    rfl
  · intro rho
    rfl
"""
        proofs.append(
            f"""theorem inst{index}_bound :
    Deployed.BoundDeployedSound Seg{index}.contract
      Seg{index}.contract.relationSha256Hex Seg{index}.contract.wireRoleSha256Hex := by
{proof}
"""
        )
    return f"""{imports}
import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact seated-contract bounds for the {circuit} deployment.
GENERATED by gen_note_reshape_family.py — do not edit by hand. -/

namespace Shieldd.GnarkFormal.Deployed.Contracts.{module}

open Shieldd.GnarkFormal
open Shieldd.GnarkFormal.Deployed.Templates

{"\n".join(proofs)}
end Shieldd.GnarkFormal.Deployed.Contracts.{module}
"""


def render_capstone(ir: dict) -> str:
    circuit = ir["circuit"]
    module = camel(circuit)
    segments = constraint_segments(ir)
    names = [segment["index"] for segment in segments]
    relation = " ∧\n  ".join(f"Seg{index}.contract.relation rho" for index in names)
    spec = " ∧\n  ".join(f"Seg{index}.contract.spec rho" for index in names)
    hs = ", ".join(f"h{index}" for index in names)
    uses = ",\n    ".join(f"inst{index}_bound.2.2 rho h{index}" for index in names)
    projections = []
    for position, index in enumerate(names):
        suffix = ".".join(["2"] * position)
        suffix = f".{suffix}" if suffix else ""
        suffix += "" if position == len(names) - 1 else ".1"
        projections.append(
            f"theorem specOf{index} (rho : Nat → DeployedF) (h : relationAll rho) :\n"
            f"    Seg{index}.contract.spec rho :=\n"
            f"  (({circuit}_deployed_sound rho h){suffix} :)"
        )
    return f"""import ShielddGnarkFormal.Deployed.Contracts.{module}.Bounds

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.{module}

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev DeployedF := ZMod Order

def relationAll (rho : Nat → DeployedF) : Prop :=
  {relation}

def specAll (rho : Nat → DeployedF) : Prop :=
  {spec}

theorem {circuit}_deployed_sound :
    ∀ rho, relationAll rho → specAll rho := by
  intro rho h
  obtain ⟨{hs}⟩ := h
  exact ⟨{uses}⟩

{"\n\n".join(projections)}

end Shieldd.GnarkFormal.Deployed.Contracts.{module}
"""


def phase_groups(ir: dict) -> dict[str, list[dict]]:
    groups: dict[str, list[dict]] = {"control": [], "shared": [], "balance": [], "transcript": []}
    spend = None
    output = None
    spend_index = 0
    output_index = 0
    phase = "shared"
    control_ops = {
        "assert.boolean",
        "assert.dummy_suffix",
        "assert.active_range",
        "assert.eq_if",
        "dummy.mux",
    }
    for segment in ir["segments"]:
        op = segment["op"]
        if op == "spend.begin":
            spend = spend_index
            spend_index += 1
            output = None
            phase = "spend"
        elif op == "output.begin":
            output = output_index
            output_index += 1
            spend = None
            phase = "output"
        elif op == "decaf.conservation_net_balance_commitment":
            spend = None
            output = None
            phase = "balance"
        elif op == "statement.hash":
            spend = None
            output = None
            phase = "transcript"
        if segment["constraint_count"] == 0:
            continue
        if op in control_ops:
            groups["control"].append(segment)
        elif phase == "transcript":
            groups["transcript"].append(segment)
        elif phase == "balance":
            groups["balance"].append(segment)
        elif spend is not None:
            groups.setdefault(f"spend{spend}", []).append(segment)
        elif output is not None:
            groups.setdefault(f"output{output}", []).append(segment)
        else:
            groups["shared"].append(segment)
    return groups


def render_statement(ir: dict) -> str:
    circuit = ir["circuit"]
    module = camel(circuit)
    groups = phase_groups(ir)
    all_segments = {s["index"] for s in constraint_segments(ir)}
    grouped_segments = {s["index"] for items in groups.values() for s in items}
    if all_segments != grouped_segments:
        raise ValueError(
            f"statement grouping is incomplete: missing={sorted(all_segments - grouped_segments)}"
        )

    structures = []
    fields = []
    constructors = []
    for group, items in groups.items():
        name = f"{camel(group)}Spec"
        if not items:
            structures.append(
                f"/-- Exact deployed {group} obligations. -/\n"
                f"def {name} (_rho : Nat → DeployedF) : Prop := True"
            )
            fields.append(f"  {group} : {name} rho")
            constructors.append(f"    {group} := True.intro")
            continue
        lines = []
        values = []
        for segment in items:
            index = segment["index"]
            field = f"{camel(segment['op'])}Seg{index}"
            lines.append(f"  {field} : Seg{index}.contract.spec rho")
            values.append(f"specOf{index} rho h")
        structures.append(
            f"/-- Exact deployed {group} obligations. -/\n"
            f"structure {name} (rho : Nat → DeployedF) : Prop where\n"
            + "\n".join(lines)
        )
        fields.append(f"  {group} : {name} rho")
        constructors.append(f"    {group} := ⟨{', '.join(values)}⟩")

    return f"""import ShielddGnarkFormal.Deployed.Contracts.{module}.Capstone

set_option maxRecDepth 1000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.{module}

open Shieldd.GnarkFormal

{"\n\n".join(structures)}

structure {module}Statement (rho : Nat → DeployedF) : Prop where
{"\n".join(fields)}

theorem {circuit}_statement (rho : Nat → DeployedF) (h : relationAll rho) :
    {module}Statement rho := by
  exact {{
{"\n".join(constructors)}
  }}

end Shieldd.GnarkFormal.Deployed.Contracts.{module}
"""


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--ir", type=Path, required=True)
    parser.add_argument("--manifest", type=Path, required=True)
    parser.add_argument("--out-dir", type=Path, required=True)
    parser.add_argument("--manifest-out", type=Path)
    parser.add_argument("--check", action="store_true")
    parser.add_argument(
        "--prune",
        action="store_true",
        help="delete obsolete family-local Lean files not owned by the normalized generator",
    )
    args = parser.parse_args()
    ir = load(args.ir)
    previous = load(args.manifest)
    check_semantic_providers(ir)
    module = camel(ir["circuit"])
    files = {
        args.out_dir / "Bounds.lean": render_bounds(ir),
        args.out_dir / "Capstone.lean": render_capstone(ir),
        args.out_dir / "Statement.lean": render_statement(ir),
    }
    if args.manifest_out:
        files[args.manifest_out] = json.dumps(render_manifest(ir, previous), indent=2) + "\n"
    for path, contents in files.items():
        if args.check:
            if path.read_text() != contents:
                raise SystemExit(f"stale generated family artifact: {path}")
        else:
            write_if_changed(path, contents)
    if args.prune:
        owned = set(files)
        owned.update(
            path
            for path in args.out_dir.glob("Seg*.lean")
            if re.fullmatch(r"Seg\d+\.lean", path.name)
        )
        obsolete = sorted(set(args.out_dir.rglob("*.lean")) - owned)
        obsolete_bench = []
        if ir["circuit"] == "note_reshape2x1":
            obsolete_bench = sorted(
                path
                for path in BENCH.glob("*.lean")
                if LEGACY_2X1_BENCH_IMPORT.search(path.read_text())
            )
        obsolete.extend(obsolete_bench)
        if args.check and obsolete:
            raise SystemExit(
                "obsolete family-local generated files:\n" + "\n".join(map(str, obsolete))
            )
        if not args.check:
            for path in obsolete:
                path.unlink()
            for directory in sorted(
                (path for path in args.out_dir.rglob("*") if path.is_dir()),
                reverse=True,
            ):
                if not any(directory.iterdir()):
                    directory.rmdir()
            if obsolete:
                print(f"removed {len(obsolete)} obsolete family proof artifacts")
    if not args.check:
        print(f"wrote {module} family proof artifacts ({len(files)})")


if __name__ == "__main__":
    main()
