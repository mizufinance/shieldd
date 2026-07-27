#!/usr/bin/env python3
"""Generate the proof spine for one NoteReshape family.

The Rust extractor owns row/seating fidelity.  This generator owns only the
Lean composition layer: one bound theorem per constraint-bearing segment,
one conjunction capstone, and typed exact-circuit facts.  Generated output
never defines protocol correctness.
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
FAMILY_SHAPES = {
    "note_reshape2x1": (2, 1),
    "note_reshape1x8": (1, 8),
    "note_reshape4x1": (4, 1),
    "note_reshape8x1": (8, 1),
}


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


def lower_camel(text: str) -> str:
    name = camel(text)
    if not name:
        raise ValueError(f"empty Lean identifier for {text!r}")
    return name[0].lower() + name[1:]


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
    relation_projections = []
    spec_projections = []
    for position, index in enumerate(names):
        suffix = ".".join(["2"] * position)
        suffix = f".{suffix}" if suffix else ""
        suffix += "" if position == len(names) - 1 else ".1"
        relation_projections.append(
            f"theorem relationOf{index} (rho : Nat → DeployedF) (h : relationAll rho) :\n"
            f"    Seg{index}.contract.relation rho :=\n"
            f"  (h{suffix} :)"
        )
        spec_projections.append(
            f"theorem specOf{index} (rho : Nat → DeployedF) (h : relationAll rho) :\n"
            f"    Seg{index}.contract.spec rho :=\n"
            f"  (({circuit}_deployed_sound rho h){suffix} :)"
        )
    return f"""import ShielddGnarkFormal.Deployed.Contracts.{module}.Bounds

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exhaustive deployed-contract composition for the {circuit} deployment.
GENERATED by gen_note_reshape_family.py — do not edit by hand. -/

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

{"\n\n".join(relation_projections)}

{"\n\n".join(spec_projections)}

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


def render_circuit_facts(ir: dict) -> str:
    circuit = ir["circuit"]
    module = camel(circuit)
    groups = phase_groups(ir)
    all_segments = {s["index"] for s in constraint_segments(ir)}
    grouped_segments = {s["index"] for items in groups.values() for s in items}
    if all_segments != grouped_segments:
        raise ValueError(
            f"circuit-fact grouping is incomplete: missing={sorted(all_segments - grouped_segments)}"
        )

    structures = []
    fields = []
    constructors = []
    for group, items in groups.items():
        name = f"{camel(group)}CircuitFacts"
        if not items:
            structures.append(
                f"/-- Exact deployed {group} row facts. -/\n"
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
            f"/-- Exact deployed {group} row facts. -/\n"
            f"structure {name} (rho : Nat → DeployedF) : Prop where\n"
            + "\n".join(lines)
        )
        fields.append(f"  {group} : {name} rho")
        constructors.append(f"    {group} := ⟨{', '.join(values)}⟩")

    return f"""import ShielddGnarkFormal.Deployed.Contracts.{module}.Capstone

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Typed exact-circuit facts for the {circuit} deployment.
GENERATED by gen_note_reshape_family.py — do not edit by hand. -/

namespace Shieldd.GnarkFormal.Deployed.Contracts.{module}

open Shieldd.GnarkFormal

{"\n\n".join(structures)}

structure {module}CircuitFacts (rho : Nat → DeployedF) : Prop where
  /-- The exact deployed rows, retained so handwritten refinement adapters can
  derive stronger joins than a deliberately narrow gadget summary exposes. -/
  rows : relationAll rho
{"\n".join(fields)}

theorem {circuit}_circuitFacts (rho : Nat → DeployedF) (h : relationAll rho) :
    {module}CircuitFacts rho := by
  exact {{
    rows := h
{"\n".join(constructors)}
  }}

end Shieldd.GnarkFormal.Deployed.Contracts.{module}
"""


def witness_wires(constraint_manifest: dict, ir: dict) -> list[dict]:
    if constraint_manifest.get("schema") != "shieldd.gnark.constraint_manifest.v1":
        raise ValueError("unsupported constraint manifest schema")
    if constraint_manifest.get("circuit") != ir.get("circuit"):
        raise ValueError(
            "constraint manifest/IR circuit mismatch: "
            f"{constraint_manifest.get('circuit')} != {ir.get('circuit')}"
        )
    shape = constraint_manifest.get("shape", {})
    expected_shape = FAMILY_SHAPES.get(ir.get("circuit"))
    if expected_shape is None or (
        shape.get("n_in"),
        shape.get("n_out"),
    ) != expected_shape:
        raise ValueError("constraint manifest/IR shape mismatch")
    wires = constraint_manifest.get("witness_wires")
    if not isinstance(wires, list) or not wires:
        raise ValueError("constraint manifest has no witness_wires")
    expected_ids = list(range(1, len(wires) + 1))
    actual_ids = [wire.get("wire_id") for wire in wires]
    if actual_ids != expected_ids:
        raise ValueError("witness wire IDs are not contiguous from one")
    names = [lower_camel(wire.get("path", "")) for wire in wires]
    if len(set(names)) != len(names):
        raise ValueError("witness paths do not produce unique Lean identifiers")
    for wire in wires:
        if wire.get("visibility") not in {"public", "secret"}:
            raise ValueError(f"invalid witness visibility: {wire!r}")
    expected_count = (
        constraint_manifest.get("nb_public_variables", 0) - 1
        + constraint_manifest.get("nb_secret_variables", 0)
    )
    if len(wires) != expected_count:
        raise ValueError(
            f"witness role count {len(wires)} != compiled witness count {expected_count}"
        )
    return wires


def render_role_bindings(ir: dict, constraint_manifest: dict) -> str:
    circuit = ir["circuit"]
    module = camel(circuit)
    wires = witness_wires(constraint_manifest, ir)
    rows = "\n".join(
        "  { wireId := "
        f"{wire['wire_id']}, path := {json.dumps(wire['path'])}, "
        f"visibility := .{wire['visibility']} }},"
        for wire in wires
    )
    bindings = "\n\n".join(
        f"/-- Compiler witness path `{wire['path']}`. -/\n"
        f"def {lower_camel(wire['path'])} (rho : Nat → WitnessF) : WitnessF :=\n"
        f"  rho {wire['wire_id']}"
        for wire in wires
    )
    return f"""import Mathlib.Data.ZMod.Basic

/-! Compiler-derived witness-path bindings for the {circuit} deployment.
GENERATED by gen_note_reshape_family.py — do not edit by hand. -/

namespace Shieldd.GnarkFormal.Deployed.Contracts.{module}

set_option maxRecDepth 10000

def WitnessOrder : Nat :=
  8444461749428370424248824938781546531375899335154063827935233455917409239041

abbrev WitnessF := ZMod WitnessOrder

inductive WitnessVisibility
  | public
  | secret
  deriving DecidableEq, Repr

structure WitnessWireRole where
  wireId : Nat
  path : String
  visibility : WitnessVisibility
  deriving DecidableEq, Repr

def witnessWireRoles : List WitnessWireRole := [
{rows}
]

theorem witnessWireRoles_length :
    witnessWireRoles.length = {len(wires)} := by
  rfl

namespace Witness

{bindings}

end Witness

end Shieldd.GnarkFormal.Deployed.Contracts.{module}
"""


def semantic_bindings(constraint_manifest: dict, ir: dict) -> list[dict]:
    if constraint_manifest.get("circuit") != ir.get("circuit"):
        raise ValueError("constraint manifest/IR circuit mismatch")
    bindings = constraint_manifest.get("semantic_bindings")
    if not isinstance(bindings, list) or not bindings:
        raise ValueError("constraint manifest has no semantic_bindings")
    names = [binding.get("name") for binding in bindings]
    if any(not isinstance(name, str) or not name for name in names):
        raise ValueError("semantic binding has an invalid name")
    if len(set(names)) != len(names):
        raise ValueError("semantic binding names are not unique")
    max_wire = (
        constraint_manifest.get("nb_public_variables", 0)
        + constraint_manifest.get("nb_secret_variables", 0)
        + constraint_manifest.get("nb_internal_variables", 0)
        - 1
    )
    for binding in bindings:
        expressions = binding.get("expressions")
        if not isinstance(expressions, list) or not expressions:
            raise ValueError(f"semantic binding has no expressions: {binding!r}")
        for expression in expressions:
            constant = expression.get("constant")
            if not isinstance(constant, str) or not constant.isdigit():
                raise ValueError(f"invalid semantic binding constant: {expression!r}")
            terms = expression.get("terms")
            if not isinstance(terms, list):
                raise ValueError(f"invalid semantic binding terms: {expression!r}")
            wire_ids = [term.get("wire_id") for term in terms]
            if wire_ids != sorted(set(wire_ids)):
                raise ValueError("semantic binding wire IDs are not sorted and unique")
            for term in terms:
                coefficient = term.get("coefficient")
                wire_id = term.get("wire_id")
                if (
                    not isinstance(coefficient, str)
                    or not coefficient.isdigit()
                    or not isinstance(wire_id, int)
                    or wire_id < 1
                    or wire_id > max_wire
                ):
                    raise ValueError(f"invalid semantic binding term: {term!r}")
    return bindings


def compact_semantic_expression(
    expression: dict, minimum_run: int = 8
) -> tuple[list[dict], list[dict]]:
    """Partition an exact LC into AP runs and residual terms.

    This is a representation-only transformation. The manifest remains the
    source of truth and every input term is emitted exactly once.
    """
    by_coefficient: dict[str, list[int]] = {}
    for term in expression["terms"]:
        by_coefficient.setdefault(term["coefficient"], []).append(term["wire_id"])
    runs: list[dict] = []
    residual: list[dict] = []
    for coefficient in sorted(by_coefficient, key=int):
        wires = by_coefficient[coefficient]
        cursor = 0
        while cursor < len(wires):
            if cursor + 1 >= len(wires):
                residual.append(
                    {"coefficient": coefficient, "wire_id": wires[cursor]}
                )
                cursor += 1
                continue
            stride = wires[cursor + 1] - wires[cursor]
            end = cursor + 2
            while (
                end < len(wires)
                and wires[end] - wires[end - 1] == stride
            ):
                end += 1
            count = end - cursor
            if stride > 0 and count >= minimum_run:
                runs.append(
                    {
                        "coefficient": coefficient,
                        "start": wires[cursor],
                        "stride": stride,
                        "count": count,
                    }
                )
                cursor = end
            else:
                residual.append(
                    {"coefficient": coefficient, "wire_id": wires[cursor]}
                )
                cursor += 1
    covered = sum(run["count"] for run in runs) + len(residual)
    if covered != len(expression["terms"]):
        raise ValueError(
            f"semantic LC compaction lost terms: {covered} != {len(expression['terms'])}"
        )
    return runs, sorted(residual, key=lambda term: term["wire_id"])


def render_semantic_bindings(ir: dict, constraint_manifest: dict) -> str:
    circuit = ir["circuit"]
    module = camel(circuit)
    bindings = semantic_bindings(constraint_manifest, ir)
    definitions = []
    names = []
    for binding in bindings:
        base = lower_camel(binding["name"])
        expressions = binding["expressions"]
        for index, expression in enumerate(expressions):
            name = base if len(expressions) == 1 else f"{base}{index}"
            if name in names:
                raise ValueError(f"duplicate semantic binding Lean identifier: {name}")
            names.append(name)
            runs, residual = compact_semantic_expression(expression)
            run_rows = "\n".join(
                "    { coeff := "
                f"({run['coefficient']} : SemanticF), "
                f"start := {run['start']}, stride := {run['stride']}, "
                f"count := {run['count']} }},"
                for run in runs
            )
            residual_rows = "\n".join(
                f"    (({term['coefficient']} : SemanticF), {term['wire_id']}),"
                for term in residual
            )
            definitions.append(
                f"/-- Exact compiler LC `{binding['name']}`"
                f"[{index}]`. -/\n"
                f"def {name}LC : StructuredLC SemanticF := {{\n"
                f"  const := ({expression['constant']} : SemanticF)\n"
                f"  runs := [\n{run_rows}\n  ]\n"
                f"  residual := [\n{residual_rows}\n  ]\n"
                f"}}\n\n"
                f"def {name} (rho : Nat → SemanticF) : SemanticF :=\n"
                f"  StructuredLC.eval rho {name}LC"
            )
    return f"""import ShielddGnarkFormal.StructuredLC

/-! Compiler-derived exact semantic LCs for the {circuit} deployment.
GENERATED by gen_note_reshape_family.py — do not edit by hand. -/

namespace Shieldd.GnarkFormal.Deployed.Contracts.{module}

set_option maxRecDepth 100000

def SemanticOrder : Nat :=
  8444461749428370424248824938781546531375899335154063827935233455917409239041

abbrev SemanticF := ZMod SemanticOrder

{"\n\n".join(definitions)}

end Shieldd.GnarkFormal.Deployed.Contracts.{module}
"""


def shared_crypto_segments(ir: dict) -> tuple[dict, dict, dict, dict]:
    """Return the shared divgen curve/compress, DTK, and transmission compress.

    The seam generator is intentionally fail-closed: a circuit reordering or
    second DTK must be reviewed instead of silently selecting a plausible
    segment.
    """
    segments = constraint_segments(ir)
    dtk_positions = [
        position
        for position, segment in enumerate(segments)
        if segment["op"] == "decaf.diversified_transmission_key"
    ]
    if len(dtk_positions) != 1:
        raise ValueError(
            f"expected one shared DTK segment, found {len(dtk_positions)}"
        )
    position = dtk_positions[0]
    if position < 2 or position + 1 >= len(segments):
        raise ValueError("shared DTK segment has incomplete neighboring crypto seams")
    divgen_curve = segments[position - 2]
    divgen_compress = segments[position - 1]
    dtk = segments[position]
    transmission_compress = segments[position + 1]
    actual = (
        divgen_curve["op"],
        divgen_compress["op"],
        dtk["op"],
        transmission_compress["op"],
    )
    expected = (
        "decaf.assert_on_curve",
        "decaf.compress_to_field",
        "decaf.diversified_transmission_key",
        "decaf.compress_to_field",
    )
    if actual != expected:
        raise ValueError(
            f"unexpected shared crypto segment sequence: {actual!r} != {expected!r}"
        )
    return divgen_curve, divgen_compress, dtk, transmission_compress


def render_semantic_seams(ir: dict, constraint_manifest: dict) -> str:
    circuit = ir["circuit"]
    module = camel(circuit)
    _, divgen_compress, dtk, transmission_compress = shared_crypto_segments(ir)
    divgen_index = divgen_compress["index"]
    dtk_index = dtk["index"]
    transmission_index = transmission_compress["index"]
    dtk_template = template_name(SegmentTemplate.parse(dtk).proof_template_id)
    divgen_template = template_name(
        SegmentTemplate.parse(divgen_compress).proof_template_id
    )
    transmission_template = template_name(
        SegmentTemplate.parse(transmission_compress).proof_template_id
    )
    dtk_ns = f"Deployed.Templates.Semantics.{dtk_template}.DtkSupport.Outputs"
    divgen_ns = f"Deployed.Templates.Semantics.{divgen_template}"
    transmission_ns = f"Deployed.Templates.Semantics.{transmission_template}"
    transmission_rel = (
        f"Deployed.Templates.Relations.{transmission_template}"
    )
    seating_import = ""
    dtk_x_perm_proof = "    decide +kernel"
    dtk_y_perm_proof = "    decide +kernel"
    compress_x_perm_proof = "    decide +kernel"
    compress_y_perm_proof = "    decide +kernel"
    seating_modules = {
        "note_reshape2x1":
            "Shieldd.GnarkFormal.Deployed.NoteReshape2x1DtkSeating",
        "note_reshape1x8":
            "Shieldd.GnarkFormal.Deployed.NoteReshape1x8DtkSeating",
        "note_reshape4x1":
            "Shieldd.GnarkFormal.Deployed.NoteReshape4x1DtkSeating",
        "note_reshape8x1":
            "Shieldd.GnarkFormal.Deployed.NoteReshape8x1DtkSeating",
    }
    if circuit in seating_modules:
        seating_module = seating_modules[circuit]
        seating_import = (
            "\nimport " +
            seating_module.replace(
                "Shieldd.GnarkFormal.", "ShielddGnarkFormal.", 1
            )
        )
        dtk_x_perm_proof = f"    exact {seating_module}.dtkXPerm"
        dtk_y_perm_proof = f"    exact {seating_module}.dtkYPerm"
        compress_x_perm_proof = f"    exact {seating_module}.compressXPerm"
        compress_y_perm_proof = f"    exact {seating_module}.compressYPerm"
    binding_by_name = {
        binding["name"]: binding
        for binding in semantic_bindings(constraint_manifest, ir)
    }
    transmission_binding = binding_by_name.get("shared.transmission.computed")
    if transmission_binding is None or len(transmission_binding["expressions"]) != 2:
        raise ValueError("missing two-coordinate shared transmission binding")
    transmission_runs = []
    for coordinate, expression in enumerate(transmission_binding["expressions"]):
        runs, residual = compact_semantic_expression(expression)
        if (
            expression["constant"] != str(coordinate)
            or len(runs) != 2
            or residual
            or any(run["coefficient"] != "1" for run in runs)
        ):
            raise ValueError(
                "shared transmission binding no longer has the reviewed "
                f"two-run form at coordinate {coordinate}"
            )
        transmission_runs.append(runs)
    x_run1, x_run2 = transmission_runs[0]
    y_run1, y_run2 = transmission_runs[1]
    modulus_minus_one = (
        "8444461749428370424248824938781546531375899335154063827935233455917409239040"
    )

    def compression_output_wires(
        binding_name: str,
        segment: dict,
        minus_local: int,
        plus_local: int,
    ) -> tuple[int, int]:
        binding = binding_by_name.get(binding_name)
        if binding is None or len(binding["expressions"]) != 1:
            raise ValueError(f"missing scalar compression binding {binding_name}")
        runs, residual = compact_semantic_expression(binding["expressions"][0])
        if runs or len(residual) != 2:
            raise ValueError(
                f"compression binding {binding_name} is not a two-term output LC"
            )
        by_coefficient = {
            term["coefficient"]: term["wire_id"] for term in residual
        }
        if set(by_coefficient) != {"1", modulus_minus_one}:
            raise ValueError(
                f"compression binding {binding_name} is not output-high minus output-low"
            )
        minus_wire = by_coefficient[modulus_minus_one]
        plus_wire = by_coefficient["1"]
        seating = segment["template_equivalence_witness"][
            "canonical_local_to_deployed_wire_seating"
        ]
        if (
            minus_local >= len(seating)
            or plus_local >= len(seating)
            or seating[minus_local] != minus_wire
            or seating[plus_local] != plus_wire
        ):
            raise ValueError(
                f"compression binding {binding_name} no longer matches segment seating"
            )
        return minus_wire, plus_wire

    divgen_minus_wire, divgen_plus_wire = compression_output_wires(
        "shared.div_gen_fq", divgen_compress, 365, 705
    )
    transmission_minus_wire, transmission_plus_wire = compression_output_wires(
        "shared.transmission.fq", transmission_compress, 865, 1205
    )
    return f"""import ShielddGnarkFormal.Deployed.Contracts.{module}.Seg{divgen_index}
import ShielddGnarkFormal.Deployed.Contracts.{module}.Seg{dtk_index}
import ShielddGnarkFormal.Deployed.Contracts.{module}.Seg{transmission_index}
import ShielddGnarkFormal.Deployed.Contracts.{module}.SemanticBindings{seating_import}

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact compiler-LC and cross-segment seams for the {circuit} deployment.
GENERATED by gen_note_reshape_family.py — do not edit by hand. -/

namespace Shieldd.GnarkFormal.Deployed.Contracts.{module}

open Shieldd.GnarkFormal

/-- The compiler-labelled DTK x-coordinate is the exact DTK gadget output LC. -/
theorem sharedTransmissionComputed0_eq_dtkOutX
    (rho : Nat → SemanticF) :
    sharedTransmissionComputed0 rho =
      {dtk_ns}.dtkOutX (Seg{dtk_index}.localRho rho) := by
  have hperm :
      ((List.range 149).map (fun offset =>
          Seg{dtk_index}.wireSeating (2226 + offset * 13)) ++
        (List.range 101).map (fun offset =>
          Seg{dtk_index}.wireSeating (4164 + offset * 14)) ++
        [Seg{dtk_index}.wireSeating 2212]).Perm
        ((List.range {x_run1['count']}).map
            (fun offset => {x_run1['start']} + offset * {x_run1['stride']}) ++
          (List.range {x_run2['count']}).map
            (fun offset => {x_run2['start']} + offset * {x_run2['stride']})) := by
{dtk_x_perm_proof}
  have hsum := sumAux_pair_residual_eq_pair_of_perm rho
    Seg{dtk_index}.wireSeating (fun wire => wire)
    2226 13 149 4164 14 101 2212
    {x_run1['start']} {x_run1['stride']} {x_run1['count']}
    {x_run2['start']} {x_run2['stride']} {x_run2['count']} hperm
  simpa only [
    sharedTransmissionComputed0,
    sharedTransmissionComputed0LC,
    {dtk_ns}.dtkOutX,
    {dtk_ns}.dtkAccX251,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, Seg{dtk_index}.localRho, Deployed.Templates.seated,
    zero_add, one_mul, add_zero] using hsum.symm

/-- The compiler-labelled DTK y-coordinate is the exact DTK gadget output LC. -/
theorem sharedTransmissionComputed1_eq_dtkOutY
    (rho : Nat → SemanticF) :
    sharedTransmissionComputed1 rho =
      {dtk_ns}.dtkOutY (Seg{dtk_index}.localRho rho) := by
  have hperm :
      ((List.range 150).map (fun offset =>
          Seg{dtk_index}.wireSeating (2214 + offset * 13)) ++
        (List.range 101).map (fun offset =>
          Seg{dtk_index}.wireSeating (4165 + offset * 14))).Perm
        ((List.range {y_run1['count']}).map
            (fun offset => {y_run1['start']} + offset * {y_run1['stride']}) ++
          (List.range {y_run2['count']}).map
            (fun offset => {y_run2['start']} + offset * {y_run2['stride']})) := by
{dtk_y_perm_proof}
  have hsum := sumAux_pair_eq_pair_of_perm rho
    Seg{dtk_index}.wireSeating (fun wire => wire)
    2214 13 150 4165 14 101
    {y_run1['start']} {y_run1['stride']} {y_run1['count']}
    {y_run2['start']} {y_run2['stride']} {y_run2['count']} hperm
  have hsumWithOne :
      (1 : SemanticF) +
          StrideRun.sumAux
            (fun wire => rho (Seg{dtk_index}.wireSeating wire))
            2214 13 150 +
          StrideRun.sumAux
            (fun wire => rho (Seg{dtk_index}.wireSeating wire))
            4165 14 101 =
        1 + (
          StrideRun.sumAux rho
            {y_run1['start']} {y_run1['stride']} {y_run1['count']} +
          StrideRun.sumAux rho
            {y_run2['start']} {y_run2['stride']} {y_run2['count']}) := by
    linear_combination hsum
  simpa only [
    sharedTransmissionComputed1,
    sharedTransmissionComputed1LC,
    {dtk_ns}.dtkOutY,
    {dtk_ns}.dtkAccY251,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, Seg{dtk_index}.localRho, Deployed.Templates.seated,
    zero_add, one_mul, add_zero] using hsumWithOne.symm

/--
The DTK x output and the following compression input contain exactly the same
global wires, even though the extractor groups them into different AP runs.
-/
theorem dtkOutX_eq_transmissionCompressInputX
    (rho : Nat → SemanticF) :
    {dtk_ns}.dtkOutX (Seg{dtk_index}.localRho rho) =
      {transmission_ns}.inputX (Seg{transmission_index}.localRho rho) := by
  have hperm :
      ((List.range 149).map (fun offset =>
          Seg{dtk_index}.wireSeating (2226 + offset * 13)) ++
        (List.range 101).map (fun offset =>
          Seg{dtk_index}.wireSeating (4164 + offset * 14)) ++
        [Seg{dtk_index}.wireSeating 2212]).Perm
        ((List.range 251).map (fun offset =>
          Seg{transmission_index}.wireSeating (1 + offset))) := by
{compress_x_perm_proof}
  simpa only [
    {dtk_ns}.dtkOutX,
    {dtk_ns}.dtkAccX251,
    {transmission_ns}.inputX,
    {transmission_rel}.relationLc0,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, Seg{dtk_index}.localRho,
    Seg{transmission_index}.localRho, Deployed.Templates.seated,
    zero_add, one_mul, add_zero] using
      sumAux_pair_residual_eq_of_perm rho
        Seg{dtk_index}.wireSeating Seg{transmission_index}.wireSeating
        2226 13 149 4164 14 101 2212 1 1 251 hperm

/-- The DTK y output is exactly the following compression input. -/
theorem dtkOutY_eq_transmissionCompressInputY
    (rho : Nat → SemanticF) :
    {dtk_ns}.dtkOutY (Seg{dtk_index}.localRho rho) =
      {transmission_ns}.inputY (Seg{transmission_index}.localRho rho) := by
  have hperm :
      ((List.range 150).map (fun offset =>
          Seg{dtk_index}.wireSeating (2214 + offset * 13)) ++
        (List.range 101).map (fun offset =>
          Seg{dtk_index}.wireSeating (4165 + offset * 14))).Perm
        ((List.range 251).map (fun offset =>
          Seg{transmission_index}.wireSeating (253 + offset))) := by
{compress_y_perm_proof}
  have hsum := sumAux_pair_eq_of_perm rho
    Seg{dtk_index}.wireSeating Seg{transmission_index}.wireSeating
    2214 13 150 4165 14 101 253 1 251 hperm
  have hsumWithOne :
      (1 : SemanticF) +
          StrideRun.sumAux
            (fun wire => rho (Seg{dtk_index}.wireSeating wire))
            2214 13 150 +
          StrideRun.sumAux
            (fun wire => rho (Seg{dtk_index}.wireSeating wire))
            4165 14 101 =
        1 + StrideRun.sumAux
          (fun wire => rho (Seg{transmission_index}.wireSeating wire))
          253 1 251 := by
    linear_combination hsum
  simpa only [
    {dtk_ns}.dtkOutY,
    {dtk_ns}.dtkAccY251,
    {transmission_ns}.inputY,
    {transmission_rel}.relationLc1,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, Seg{dtk_index}.localRho,
    Seg{transmission_index}.localRho, Deployed.Templates.seated,
    zero_add, one_mul, add_zero] using hsumWithOne

/-- The compiler-labelled compressed diversified generator is the gadget output. -/
theorem sharedDivGenFq_eq_compressOutput
    (rho : Nat → SemanticF) :
    sharedDivGenFq rho =
      {divgen_ns}.templateRho (Seg{divgen_index}.localRho rho) 912 -
        {divgen_ns}.templateRho (Seg{divgen_index}.localRho rho) 572 := by
  have hplus :
      Seg{divgen_index}.wireSeating 705 = {divgen_plus_wire} := by
    decide +kernel
  have hminus :
      Seg{divgen_index}.wireSeating 365 = {divgen_minus_wire} := by
    decide +kernel
  have hneg :
      ({modulus_minus_one} : SemanticF) = -1 := by
    decide +kernel
  simp only [
    sharedDivGenFq,
    sharedDivGenFqLC,
    {divgen_ns}.templateRho,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, Seg{divgen_index}.localRho, Deployed.Templates.seated,
    zero_add, one_mul, add_zero,
    if_pos (by decide +kernel : 231 ≤ 912 ∧ 912 ≤ 912),
    if_pos (by decide +kernel : 231 ≤ 572 ∧ 572 ≤ 912),
    hplus, hminus, hneg]
  ring

/-- The compiler-labelled compressed transmission key is the gadget output. -/
theorem sharedTransmissionFq_eq_compressOutput
    (rho : Nat → SemanticF) :
    sharedTransmissionFq rho =
      {transmission_ns}.templateRho
          (Seg{transmission_index}.localRho rho) 912 -
      {transmission_ns}.templateRho
          (Seg{transmission_index}.localRho rho) 572 := by
  have hplus :
      Seg{transmission_index}.wireSeating 1205 =
        {transmission_plus_wire} := by
    decide +kernel
  have hminus :
      Seg{transmission_index}.wireSeating 865 =
        {transmission_minus_wire} := by
    decide +kernel
  have hneg :
      ({modulus_minus_one} : SemanticF) = -1 := by
    decide +kernel
  simp only [
    sharedTransmissionFq,
    sharedTransmissionFqLC,
    {transmission_ns}.templateRho,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, Seg{transmission_index}.localRho, Deployed.Templates.seated,
    zero_add, one_mul, add_zero,
    if_pos (by decide +kernel : 231 ≤ 912 ∧ 912 ≤ 912),
    if_pos (by decide +kernel : 231 ≤ 572 ∧ 572 ≤ 912),
    hplus, hminus, hneg]
  ring

end Shieldd.GnarkFormal.Deployed.Contracts.{module}
"""


SEMANTIC_SEAM_PARTS = (
    ("DtkX", "/-- The compiler-labelled DTK x-coordinate"),
    ("DtkY", "/-- The compiler-labelled DTK y-coordinate"),
    ("CompressInputX", "/--\nThe DTK x output"),
    ("CompressInputY", "/-- The DTK y output"),
    ("DivGenFq", "/-- The compiler-labelled compressed diversified generator"),
    ("TransmissionFq", "/-- The compiler-labelled compressed transmission key"),
)


def split_semantic_seams(
    ir: dict, contents: str
) -> tuple[str, dict[str, str]]:
    """Split independent kernel certificates so each elaborates under its cap."""
    module = camel(ir["circuit"])
    starts = [contents.index(marker) for _, marker in SEMANTIC_SEAM_PARTS]
    namespace_end = (
        f"\nend Shieldd.GnarkFormal.Deployed.Contracts.{module}\n"
    )
    body_end = contents.rindex(namespace_end)
    header = contents[: starts[0]]
    parts: dict[str, str] = {}
    for index, (name, _) in enumerate(SEMANTIC_SEAM_PARTS):
        end = starts[index + 1] if index + 1 < len(starts) else body_end
        part_header = header
        if name in {"DivGenFq", "TransmissionFq"}:
            part_header = (
                "import ShielddGnarkFormal.ChoiceFreeZMod\n" + part_header
            ).replace(
                "open Shieldd.GnarkFormal\n",
                "open Shieldd.GnarkFormal\n"
                "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n\n"
                "attribute [-instance] ZMod.instField\n"
                f"local instance choiceFreeSemanticSeam{name}CommRing : "
                "CommRing SemanticF := ZMod.commRing _\n",
            )
        parts[f"SemanticSeam{name}.lean"] = (
            part_header + contents[starts[index] : end] + namespace_end
        )
    imports = "\n".join(
        f"import ShielddGnarkFormal.Deployed.Contracts.{module}."
        f"SemanticSeam{name}"
        for name, _ in SEMANTIC_SEAM_PARTS
    )
    wrapper = f"""{imports}

/-! Aggregate exact semantic seams for the {ir["circuit"]} deployment.
GENERATED by gen_note_reshape_family.py — do not edit by hand. -/
"""
    return wrapper, parts


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--ir", type=Path, required=True)
    parser.add_argument("--manifest", type=Path, required=True)
    parser.add_argument("--constraint-manifest", type=Path, required=True)
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
    constraint_manifest = load(args.constraint_manifest)
    check_semantic_providers(ir)
    module = camel(ir["circuit"])
    semantic_seams, semantic_seam_parts = split_semantic_seams(
        ir, render_semantic_seams(ir, constraint_manifest)
    )
    files = {
        args.out_dir / "Bounds.lean": render_bounds(ir),
        args.out_dir / "Capstone.lean": render_capstone(ir),
        args.out_dir / "CircuitFacts.lean": render_circuit_facts(ir),
        args.out_dir / "RoleBindings.lean": render_role_bindings(
            ir, constraint_manifest
        ),
        args.out_dir / "SemanticBindings.lean": render_semantic_bindings(
            ir, constraint_manifest
        ),
        args.out_dir / "SemanticSeams.lean": semantic_seams,
    }
    files.update(
        (args.out_dir / name, contents)
        for name, contents in semantic_seam_parts.items()
    )
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
