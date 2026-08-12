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
from dataclasses import dataclass
from pathlib import Path

from formal_json import read_known_formal_object
from write_if_changed import write_if_changed
from template_ir import SegmentTemplate

SEMANTICS = (
    Path(__file__).resolve().parents[1]
    / "ShielddGnarkFormal/Deployed/Templates/Semantics"
)
ROOT = Path(__file__).resolve().parents[4]
PREDICATE_CONSEQUENCE_ROSTER = (
    ROOT
    / "crates/core/component/shielded-pool/formal/"
    "fv-predicate-consequence-roster.json"
)
FAMILY_SHAPES = {
    "note_reshape1x8": (1, 8),
    "note_reshape8x1": (8, 1),
    "transfer": (2, 2),
    "shielded_ics20_withdrawal": (2, 1),
}
NOTE_RESHAPE_NON_IDENTITY_BINDINGS = (
    "auth.ak",
    "shared.div_gen",
    "shared.transmission.computed",
)
DIRECT_INVERSE_RELATION_DIGEST = (
    "50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd"
)
DIRECT_NON_IDENTITY_KEY = (
    f"assert.decaf_non_identity@{DIRECT_INVERSE_RELATION_DIGEST}"
)
DIRECT_NONZERO_KEY = f"assert.ne@{DIRECT_INVERSE_RELATION_DIGEST}"
STRUCTURED_NON_IDENTITY_KEY = (
    "assert.decaf_non_identity@"
    "6e9fd3a3eee2e21b49a710f750999a0e29d1babc1615c644cebbf294d8fb9e61"
)
NOTE_RESHAPE_REFINEMENT_ROOTS = {
    "note_reshape1x8": (
        "ShielddGnarkFormal.Deployed.NoteReshape1x8Soundness",
        "Shieldd.GnarkFormal.Deployed.NoteReshape1x8Refinement.C",
    ),
    "note_reshape8x1": (
        "ShielddGnarkFormal.Deployed.NoteReshape8x1Soundness",
        "Shieldd.GnarkFormal.Deployed.NoteReshape8x1Refinement.C",
    ),
}


def specification_theorem_name(predicate: str) -> str:
    return "specification_" + predicate.lower().replace("-", "_")


def predicate_consequence_roster(
    path: Path = PREDICATE_CONSEQUENCE_ROSTER,
) -> dict[str, tuple[str, tuple[tuple[str, str], ...]]]:
    data = load(path)
    if (
        not isinstance(data, dict)
        or set(data) != {"schema", "profiles"}
        or data.get("schema")
        != "shieldd.gnark.predicate_consequence_roster.v1"
    ):
        raise ValueError("unsupported predicate consequence roster schema")
    profiles = data.get("profiles")
    if not isinstance(profiles, list):
        raise ValueError("predicate consequence roster profiles are not an array")
    result = {}
    for row in profiles:
        if not isinstance(row, dict) or set(row) != {
            "profile",
            "path",
            "consequences",
        }:
            raise ValueError("predicate consequence roster row fields drifted")
        profile = row["profile"]
        source_path = row["path"]
        consequences = row["consequences"]
        if (
            not isinstance(profile, str)
            or profile in result
            or not isinstance(source_path, str)
            or not isinstance(consequences, list)
            or not consequences
        ):
            raise ValueError("invalid predicate consequence roster row")
        parsed = []
        for consequence in consequences:
            if (
                not isinstance(consequence, list)
                or len(consequence) != 2
                or not all(isinstance(item, str) for item in consequence)
            ):
                raise ValueError(
                    f"{profile}: invalid predicate consequence entry"
                )
            predicate, declaration = consequence
            expected = f"theorem {specification_theorem_name(predicate)}"
            if declaration != expected:
                raise ValueError(
                    f"{profile}: consequence symbol {declaration!r} "
                    f"does not match {expected!r}"
                )
            parsed.append((predicate, declaration))
        if len(parsed) != len(set(parsed)):
            raise ValueError(f"{profile}: duplicate predicate consequences")
        result[profile] = (source_path, tuple(parsed))
    return result


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
    return read_known_formal_object(path)


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


def render_bounds(
    ir: dict, generator: str = "gen_note_reshape_family.py"
) -> str:
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
GENERATED by {generator} — do not edit by hand. -/

namespace Shieldd.GnarkFormal.Deployed.Contracts.{module}

open Shieldd.GnarkFormal
open Shieldd.GnarkFormal.Deployed.Templates

{"\n".join(proofs)}
end Shieldd.GnarkFormal.Deployed.Contracts.{module}
"""


def render_capstone(
    ir: dict, generator: str = "gen_note_reshape_family.py"
) -> str:
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
GENERATED by {generator} — do not edit by hand. -/

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


def render_circuit_facts(
    ir: dict,
    groups: dict[str, list[dict]] | None = None,
    generator: str = "gen_note_reshape_family.py",
) -> str:
    circuit = ir["circuit"]
    module = camel(circuit)
    groups = phase_groups(ir) if groups is None else groups
    all_segments = sorted(s["index"] for s in constraint_segments(ir))
    grouped_segments = sorted(
        s["index"] for items in groups.values() for s in items
    )
    if all_segments != grouped_segments:
        raise ValueError(
            "circuit-fact grouping is not an exact partition: "
            f"expected={all_segments}, actual={grouped_segments}"
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
GENERATED by {generator} — do not edit by hand. -/

namespace Shieldd.GnarkFormal.Deployed.Contracts.{module}

open Shieldd.GnarkFormal

{"\n\n".join(structures)}

structure {module}CircuitFacts (rho : Nat → DeployedF) : Prop where
{"\n".join(fields)}

theorem {circuit}_circuitFacts (rho : Nat → DeployedF) (h : relationAll rho) :
    {module}CircuitFacts rho := by
  exact {{
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


def render_role_bindings(
    ir: dict,
    constraint_manifest: dict,
    generator: str = "gen_note_reshape_family.py",
) -> str:
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
GENERATED by {generator} — do not edit by hand. -/

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
    for binding in bindings:
        if not isinstance(binding, dict) or set(binding) != {
            "name",
            "expressions",
        }:
            raise ValueError(
                f"semantic binding has an unexpected field set: {binding!r}"
            )
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
            if not isinstance(expression, dict) or set(expression) != {
                "constant",
                "terms",
            }:
                raise ValueError(
                    "semantic binding expression has an unexpected field set: "
                    f"{expression!r}"
                )
            constant = expression.get("constant")
            if not isinstance(constant, str) or not constant.isdigit():
                raise ValueError(f"invalid semantic binding constant: {expression!r}")
            terms = expression.get("terms")
            if not isinstance(terms, list):
                raise ValueError(f"invalid semantic binding terms: {expression!r}")
            for term in terms:
                if not isinstance(term, dict) or set(term) != {
                    "wire_id",
                    "coefficient",
                }:
                    raise ValueError(
                        "semantic binding term has an unexpected field set: "
                        f"{term!r}"
                    )
            wire_ids = [term["wire_id"] for term in terms]
            if wire_ids != sorted(set(wire_ids)):
                raise ValueError("semantic binding wire IDs are not sorted and unique")
            for term in terms:
                coefficient = term["coefficient"]
                wire_id = term["wire_id"]
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


def render_semantic_bindings(
    ir: dict,
    constraint_manifest: dict,
    generator: str = "gen_note_reshape_family.py",
) -> str:
    circuit = ir["circuit"]
    module = camel(circuit)
    bindings = semantic_bindings(constraint_manifest, ir)
    definitions = []
    names = []
    for binding in bindings:
        base = lower_camel(binding["name"])
        expressions = binding["expressions"]
        binding_names = []
        for index, expression in enumerate(expressions):
            name = base if len(expressions) == 1 else f"{base}{index}"
            if name in names:
                raise ValueError(f"duplicate semantic binding Lean identifier: {name}")
            names.append(name)
            binding_names.append(name)
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
        if len(expressions) > 1:
            vector_name = f"{base}Vector"
            accessor_name = f"{base}At"
            for aggregate_name in (vector_name, accessor_name):
                if aggregate_name in names:
                    raise ValueError(
                        "duplicate semantic binding Lean identifier: "
                        f"{aggregate_name}"
                    )
                names.append(aggregate_name)
            values = "\n".join(
                f"    {name} rho," for name in binding_names
            )
            definitions.append(
                f"/-- Ordered compiler expressions for `{binding['name']}`. -/\n"
                f"def {vector_name} (rho : Nat → SemanticF) : "
                f"List.Vector SemanticF {len(expressions)} :=\n"
                f"  ⟨[\n{values}\n  ], rfl⟩\n\n"
                f"def {accessor_name} (rho : Nat → SemanticF) "
                f"(index : Fin {len(expressions)}) : SemanticF :=\n"
                f"  ({vector_name} rho)[index]"
            )
    return f"""import ShielddGnarkFormal.StructuredLC
import ProvenZk.Ext.Vector

/-! Compiler-derived exact semantic LCs for the {circuit} deployment.
GENERATED by {generator} — do not edit by hand. -/

namespace Shieldd.GnarkFormal.Deployed.Contracts.{module}

set_option maxRecDepth 100000

def SemanticOrder : Nat :=
  8444461749428370424248824938781546531375899335154063827935233455917409239041

abbrev SemanticF := ZMod SemanticOrder

{"\n\n".join(definitions)}

end Shieldd.GnarkFormal.Deployed.Contracts.{module}
"""


def validate_non_identity_seams(
    ir: dict,
    constraint_manifest: dict,
    binding_names: tuple[str, ...],
) -> list[dict[str, object]]:
    """Authenticate inverse rows against exact point-x semantic LCs."""

    circuit = ir["circuit"]
    segments = [
        segment
        for segment in constraint_segments(ir)
        if segment.get("op") == "assert.decaf_non_identity"
    ]
    if len(segments) != len(binding_names):
        raise ValueError(
            f"{circuit} Decaf non-identity segment count drifted: "
            f"{len(segments)} != {len(binding_names)}"
        )
    bindings = {
        binding["name"]: binding
        for binding in semantic_bindings(constraint_manifest, ir)
    }
    result: list[dict[str, object]] = []
    direct_template_keys: set[str] = set()
    structured_template_keys: set[str] = set()
    for segment, binding_name in zip(segments, binding_names, strict=True):
        template = SegmentTemplate.parse(segment)
        if not template.proof_template_id.startswith(
            "assert.decaf_non_identity@"
        ):
            raise ValueError(
                f"{circuit} segment {segment.get('index')} has a non-identity "
                "operation with a different template family"
            )
        seating = list(template.canonical_wire_seating)
        if segment.get("constraint_count") != 1:
            raise ValueError(
                f"{circuit} {binding_name} non-identity inverse-row shape drifted"
            )
        binding = bindings.get(binding_name)
        expressions = binding.get("expressions") if binding is not None else None
        if not isinstance(expressions, list) or len(expressions) != 2:
            raise ValueError(
                f"{circuit} missing two-coordinate binding {binding_name!r}"
            )
        x_expression = expressions[0]
        terms = x_expression.get("terms")
        if x_expression.get("constant") != "0" or not isinstance(terms, list):
            raise ValueError(
                f"{circuit} {binding_name} x-coordinate is not an exact zero-constant LC"
            )
        roles = segment.get("wire_roles")
        if (
            not isinstance(roles, dict)
            or not isinstance(roles.get("input"), list)
            or not isinstance(roles.get("output"), list)
            or not isinstance(roles.get("internal"), list)
        ):
            raise ValueError(
                f"{circuit} {binding_name} non-identity wire roles drifted"
            )
        base = lower_camel(binding_name)
        if len(terms) == 1 and terms[0].get("coefficient") == "1":
            if template.proof_template_id != DIRECT_NON_IDENTITY_KEY:
                raise ValueError(
                    f"{circuit} {binding_name} direct non-identity template drifted"
                )
            direct_template_keys.add(template.proof_template_id)
            if len(seating) != 3:
                raise ValueError(
                    f"{circuit} {binding_name} direct non-identity shape drifted"
                )
            x_wire = terms[0].get("wire_id")
            x_locals = [
                local for local in (1, 2) if seating[local] == x_wire
            ]
            if len(x_locals) != 1:
                raise ValueError(
                    f"{circuit} {binding_name} non-identity x seating drifted"
                )
            x_local = x_locals[0]
            inverse_local = 3 - x_local
            inverse_wire = seating[inverse_local]
            if (
                roles["output"]
                or x_wire not in roles["input"]
                or set(roles["input"]) | set(roles["internal"])
                    != {x_wire, inverse_wire}
                or set(roles["input"]) & set(roles["internal"])
            ):
                raise ValueError(
                    f"{circuit} {binding_name} non-identity wire roles drifted"
                )
            result.append(
                {
                    "kind": "direct",
                    "segment": segment,
                    "binding_name": binding_name,
                    "accessor": f"{base}0",
                    "theorem": f"{base}NonIdentity_of_exact",
                    "x_wire": x_wire,
                    "x_local": x_local,
                }
            )
            continue

        value_wires = [term.get("wire_id") for term in terms]
        if template.proof_template_id != STRUCTURED_NON_IDENTITY_KEY:
            raise ValueError(
                f"{circuit} {binding_name} structured non-identity template drifted"
            )
        if (
            not terms
            or any(term.get("coefficient") != "1" for term in terms)
            or any(not isinstance(wire, int) for wire in value_wires)
            or len(seating) != len(value_wires) + 2
            or seating[2:] != value_wires
            or seating[1] in value_wires
        ):
            raise ValueError(
                f"{circuit} {binding_name} structured non-identity seating drifted"
            )
        runs, residual = compact_semantic_expression(x_expression)
        if runs or residual != terms:
            raise ValueError(
                f"{circuit} {binding_name} structured non-identity LC drifted"
            )
        inverse_wire = seating[1]
        if (
            roles["output"]
            or not set(value_wires) <= set(roles["input"])
            or set(roles["input"]) | set(roles["internal"])
                != set(value_wires) | {inverse_wire}
            or set(roles["input"]) & set(roles["internal"])
        ):
            raise ValueError(
                f"{circuit} {binding_name} non-identity wire roles drifted"
            )
        structured_template_keys.add(template.proof_template_id)
        result.append(
            {
                "kind": "two_term",
                "segment": segment,
                "binding_name": binding_name,
                "accessor": f"{base}0",
                "theorem": f"{base}NonIdentity_of_exact",
                "template": template_name(template.proof_template_id),
                "value_local": 2,
                "value_count": len(value_wires),
                "value_wires": tuple(value_wires),
            }
        )
    if len(direct_template_keys) > 1 or len(structured_template_keys) > 1:
        raise ValueError(
            f"{circuit} Decaf non-identity rows have unreviewed template diversity"
        )
    return result


def validate_scalar_nonzero_seam(
    ir: dict,
    constraint_manifest: dict,
    binding_name: str,
) -> dict[str, object]:
    """Authenticate one inverse row against an exact scalar semantic binding."""

    circuit = ir["circuit"]
    bindings = {
        binding["name"]: binding
        for binding in semantic_bindings(constraint_manifest, ir)
    }
    binding = bindings.get(binding_name)
    expressions = binding.get("expressions") if binding is not None else None
    if not isinstance(expressions, list) or len(expressions) != 1:
        raise ValueError(
            f"{circuit} missing scalar binding {binding_name!r}"
        )
    expression = expressions[0]
    terms = expression.get("terms")
    if (
        expression.get("constant") != "0"
        or not isinstance(terms, list)
        or len(terms) != 1
        or terms[0].get("coefficient") != "1"
    ):
        raise ValueError(
            f"{circuit} {binding_name} is not one exact wire"
        )
    value_wire = terms[0].get("wire_id")
    matches: list[dict[str, object]] = []
    for segment in constraint_segments(ir):
        if segment.get("op") != "assert.ne":
            continue
        template = SegmentTemplate.parse(segment)
        if template.proof_template_id != DIRECT_NONZERO_KEY:
            continue
        seating = list(template.canonical_wire_seating)
        if segment.get("constraint_count") != 1 or len(seating) != 3:
            continue
        value_locals = [
            local for local in (1, 2) if seating[local] == value_wire
        ]
        if len(value_locals) != 1:
            continue
        value_local = value_locals[0]
        inverse_local = 3 - value_local
        inverse_wire = seating[inverse_local]
        roles = segment.get("wire_roles")
        if (
            not isinstance(roles, dict)
            or not isinstance(roles.get("input"), list)
            or not isinstance(roles.get("output"), list)
            or not isinstance(roles.get("internal"), list)
            or roles["output"]
            or value_wire not in roles["input"]
            or set(roles["input"]) | set(roles["internal"])
                != {value_wire, inverse_wire}
            or set(roles["input"]) & set(roles["internal"])
        ):
            raise ValueError(
                f"{circuit} {binding_name} nonzero wire roles drifted"
            )
        matches.append(
            {
                "segment": segment,
                "binding_name": binding_name,
                "accessor": lower_camel(binding_name),
                "theorem": f"{lower_camel(binding_name)}Nonzero_of_exact",
                "value_wire": value_wire,
                "value_local": value_local,
            }
        )
    if len(matches) != 1:
        raise ValueError(
            f"{circuit} {binding_name} exact nonzero row count drifted: "
            f"{len(matches)} != 1"
        )
    return matches[0]


def render_non_identity_seams(
    ir: dict,
    constraint_manifest: dict,
    binding_names: tuple[str, ...],
    scalar_nonzero_bindings: tuple[str, ...] = (),
    groups: dict[str, list[dict]] | None = None,
    generator: str = "gen_note_reshape_family.py",
) -> str:
    """Render exact R1CS-inverse-row to protocol point-x nonzero seams."""

    circuit = ir["circuit"]
    module = camel(circuit)
    groups = phase_groups(ir) if groups is None else groups
    group_by_segment = {
        segment["index"]: group
        for group, segments in groups.items()
        for segment in segments
    }
    seams = validate_non_identity_seams(
        ir, constraint_manifest, binding_names
    )
    theorems = []
    for seam in seams:
        segment = seam["segment"]
        index = segment["index"]
        accessor = seam["accessor"]
        theorem = seam["theorem"]
        try:
            group = group_by_segment[index]
        except KeyError as error:
            raise ValueError(
                f"{circuit} non-identity segment {index} is absent from "
                "the CircuitFacts grouping"
            ) from error
        if seam["kind"] == "direct":
            x_wire = seam["x_wire"]
            x_local = seam["x_local"]
            projection = "1" if x_local == 1 else "2"
            theorems.append(
                f"""theorem {theorem}
    (rho : Nat → SemanticF)
    (facts : {module}CircuitFacts rho) :
    {accessor} rho ≠ 0 := by
  have h := facts.{group}.AssertDecafNonIdentitySeg{index}.{projection}
  change Seg{index}.localRho rho {x_local} ≠ 0 at h
  have hseat : Seg{index}.wireSeating {x_local} = {x_wire} := by
    decide +kernel
  simpa only [
    {accessor}, {accessor}LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval,
    Seg{index}.localRho, Deployed.Templates.seated, hseat,
    zero_add, one_mul, add_zero] using h"""
            )
            continue

        if seam["kind"] == "two_term":
            wire1, wire2 = seam["value_wires"]
            theorems.append(
                f"""theorem {theorem}
    (rho : Nat → SemanticF)
    (facts : {module}CircuitFacts rho) :
    {accessor} rho ≠ 0 := by
  have h := facts.{group}.AssertDecafNonIdentitySeg{index}.2
  change Seg{index}.localRho rho 2 + Seg{index}.localRho rho 3 ≠ 0 at h
  have h1 : Seg{index}.wireSeating 2 = {wire1} := by
    decide +kernel
  have h2 : Seg{index}.wireSeating 3 = {wire2} := by
    decide +kernel
  simpa only [
    {accessor}, {accessor}LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval,
    Seg{index}.localRho, Deployed.Templates.seated, h1, h2,
    zero_add, one_mul, add_zero] using h"""
            )
            continue

        runs = seam["runs"]
        run1, run2 = runs
        value_local = seam["value_local"]
        value_count = seam["value_count"]
        template_relation = (
            "Deployed.Templates.Relations." + seam["template"]
        )
        theorems.append(
            f"""theorem {theorem}
    (rho : Nat → SemanticF)
    (facts : {module}CircuitFacts rho) :
    {accessor} rho ≠ 0 := by
  have h := facts.{group}.AssertDecafNonIdentitySeg{index}.2
  change {template_relation}.relationLc0
    (Seg{index}.localRho rho) ≠ 0 at h
  have hperm :
      ((List.range {run1['count']}).map
          (fun offset => {run1['start']} + offset * {run1['stride']}) ++
        (List.range {run2['count']}).map
          (fun offset => {run2['start']} + offset * {run2['stride']})).Perm
        ((List.range {value_count}).map
          (fun offset =>
            Seg{index}.wireSeating ({value_local} + offset))) := by
    decide +kernel
  have hsum := sumAux_pair_eq_of_perm rho
    (fun wire => wire) Seg{index}.wireSeating
    {run1['start']} {run1['stride']} {run1['count']}
    {run2['start']} {run2['stride']} {run2['count']}
    {value_local} 1 {value_count} hperm
  have hbind :
      {accessor} rho =
        {template_relation}.relationLc0
          (Seg{index}.localRho rho) := by
    simpa only [
      {accessor}, {accessor}LC,
      {template_relation}.relationLc0,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      Seg{index}.localRho, Deployed.Templates.seated,
      zero_add, one_mul, add_zero] using hsum
  rw [hbind]
  exact h"""
        )
    for binding_name in scalar_nonzero_bindings:
        seam = validate_scalar_nonzero_seam(
            ir, constraint_manifest, binding_name
        )
        segment = seam["segment"]
        index = segment["index"]
        accessor = seam["accessor"]
        theorem = seam["theorem"]
        value_wire = seam["value_wire"]
        value_local = seam["value_local"]
        projection = "1" if value_local == 1 else "2"
        try:
            group = group_by_segment[index]
        except KeyError as error:
            raise ValueError(
                f"{circuit} nonzero segment {index} is absent from "
                "the CircuitFacts grouping"
            ) from error
        theorems.append(
            f"""theorem {theorem}
    (rho : Nat → SemanticF)
    (facts : {module}CircuitFacts rho) :
    {accessor} rho ≠ 0 := by
  have h := facts.{group}.AssertNeSeg{index}.{projection}
  change Seg{index}.localRho rho {value_local} ≠ 0 at h
  have hseat : Seg{index}.wireSeating {value_local} = {value_wire} := by
    decide +kernel
  simpa only [
    {accessor}, {accessor}LC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    Seg{index}.localRho,
    Deployed.Templates.seated, hseat,
    zero_add, one_mul, add_zero] using h"""
        )
    return f"""import ShielddGnarkFormal.Deployed.Contracts.{module}.CircuitFacts
import ShielddGnarkFormal.Deployed.Contracts.{module}.SemanticBindings

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact inverse-row proofs for Decaf non-identity guards.
GENERATED by {generator} — do not edit by hand. -/

namespace Shieldd.GnarkFormal.Deployed.Contracts.{module}

open Shieldd.GnarkFormal

{"\n\n".join(theorems)}

end Shieldd.GnarkFormal.Deployed.Contracts.{module}
"""


def shared_crypto_segments(ir: dict) -> tuple[dict, dict, dict]:
    """Return the shared divgen compressor, DTK, and transmission compressor.

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
    if position < 2 or position + 2 >= len(segments):
        raise ValueError("shared DTK segment has incomplete neighboring crypto seams")
    divgen_compress = segments[position - 2]
    ivk_nonzero = segments[position - 1]
    dtk = segments[position]
    transmission_non_identity = segments[position + 1]
    transmission_compress = segments[position + 2]
    actual = (
        divgen_compress["op"],
        ivk_nonzero["op"],
        dtk["op"],
        transmission_non_identity["op"],
        transmission_compress["op"],
    )
    expected = (
        "decaf.compress_to_field",
        "assert.ne",
        "decaf.diversified_transmission_key",
        "assert.decaf_non_identity",
        "decaf.compress_to_field",
    )
    if actual != expected:
        raise ValueError(
            f"unexpected shared crypto segment sequence: {actual!r} != {expected!r}"
        )
    return divgen_compress, dtk, transmission_compress


@dataclass(frozen=True)
class SharedCryptoBindings:
    """Compiler binding and generated Lean accessor names for DTK seams."""

    transmission_computed: str = "shared.transmission.computed"
    divgen_fq: str = "shared.div_gen_fq"
    transmission_fq: str = "shared.transmission.fq"
    transmission_computed_accessor: str = "sharedTransmissionComputed"
    divgen_fq_accessor: str = "sharedDivGenFq"
    transmission_fq_accessor: str = "sharedTransmissionFq"


def render_semantic_seams(
    ir: dict,
    constraint_manifest: dict,
    *,
    crypto_segments: tuple[dict, dict, dict] | None = None,
    bindings: SharedCryptoBindings = SharedCryptoBindings(),
    seating_module: str | None = None,
    generator: str = "gen_note_reshape_family.py",
) -> str:
    """Render exact DTK/compression joins from authenticated segment roles.

    NoteReshape discovers the compress/IVK-guard/DTK/point-guard/compress
    sequence. `CompressToField` owns the diversified-generator curve check, so
    no duplicate top-level on-curve segment is required.
    Other circuits must pass their already authenticated compression, DTK, and
    transmission-compression segments explicitly; this renderer never mutates
    an unrelated segment to manufacture that sequence.
    """
    circuit = ir["circuit"]
    module = camel(circuit)
    if crypto_segments is None:
        divgen_compress, dtk, transmission_compress = shared_crypto_segments(ir)
    else:
        divgen_compress, dtk, transmission_compress = crypto_segments
        actual = (
            divgen_compress.get("op"),
            dtk.get("op"),
            transmission_compress.get("op"),
        )
        expected = (
            "decaf.compress_to_field",
            "decaf.diversified_transmission_key",
            "decaf.compress_to_field",
        )
        if actual != expected:
            raise ValueError(
                "explicit shared crypto roles have unexpected operations: "
                f"{actual!r} != {expected!r}"
            )
        exact_by_index = {
            segment["index"]: segment for segment in constraint_segments(ir)
        }
        selected_indices = (
            divgen_compress.get("index"),
            dtk.get("index"),
            transmission_compress.get("index"),
        )
        if len(set(selected_indices)) != 3 or any(
            exact_by_index.get(index) != segment
            for index, segment in zip(
                selected_indices, crypto_segments, strict=True
            )
        ):
            raise ValueError(
                "explicit shared crypto roles are not distinct exact IR "
                "segments"
            )
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
    dtk_ns = f"Deployed.Templates.Semantics.{dtk_template}.DtkWindowSupport"
    divgen_ns = f"Deployed.Templates.Semantics.{divgen_template}"
    transmission_ns = f"Deployed.Templates.Semantics.{transmission_template}"
    transmission_rel = (
        f"Deployed.Templates.Relations.{transmission_template}"
    )
    seating_import = ""
    compress_x_perm_proof = "    decide +kernel"
    compress_y_perm_proof = "    decide +kernel"
    seating_modules = {
        "note_reshape1x8":
            "Shieldd.GnarkFormal.Deployed.NoteReshape1x8DtkSeating",
        "note_reshape8x1":
            "Shieldd.GnarkFormal.Deployed.NoteReshape8x1DtkSeating",
    }
    if seating_module is None:
        seating_module = seating_modules.get(circuit)
    if seating_module is not None:
        seating_import = (
            "\nimport " +
            seating_module.replace(
                "Shieldd.GnarkFormal.", "ShielddGnarkFormal.", 1
            )
        )
        compress_x_perm_proof = f"    exact {seating_module}.compressXPerm"
        compress_y_perm_proof = f"    exact {seating_module}.compressYPerm"
    binding_by_name = {
        binding["name"]: binding
        for binding in semantic_bindings(constraint_manifest, ir)
    }
    transmission_binding = binding_by_name.get(
        bindings.transmission_computed
    )
    if transmission_binding is None or len(transmission_binding["expressions"]) != 2:
        raise ValueError(
            "missing two-coordinate shared transmission binding "
            f"{bindings.transmission_computed!r}"
        )
    dtk_seating = SegmentTemplate.parse(dtk).canonical_wire_seating
    window_output_locals = ((4961, 4969), (4962, 4970))
    transmission_terms = []
    for coordinate, expression in enumerate(transmission_binding["expressions"]):
        runs, residual = compact_semantic_expression(expression)
        if (
            expression["constant"] != "0"
            or runs
            or len(residual) != 2
            or any(term["coefficient"] != "1" for term in residual)
        ):
            raise ValueError(
                "shared transmission binding no longer has the reviewed "
                f"Window2 two-term form at coordinate {coordinate}"
            )
        local_pair = window_output_locals[coordinate]
        if local_pair[-1] >= len(dtk_seating):
            raise ValueError("DTK Window2 output locals exceed exact seating")
        expected_wires = tuple(dtk_seating[local] for local in local_pair)
        actual_wires = tuple(term["wire_id"] for term in residual)
        if actual_wires != expected_wires:
            raise ValueError(
                "shared transmission binding no longer matches the exact "
                f"DTK Window2 output at coordinate {coordinate}"
            )
        transmission_terms.append(actual_wires)
    (x_wire1, x_wire2), (y_wire1, y_wire2) = transmission_terms
    compression_seating = SegmentTemplate.parse(
        transmission_compress
    ).canonical_wire_seating
    for coordinate, (locals_, expected_wires) in enumerate(zip(
        ((1, 2), (4, 5)), transmission_terms, strict=True
    )):
        actual_wires = tuple(compression_seating[local] for local in locals_)
        if actual_wires != expected_wires:
            raise ValueError(
                "shared transmission binding no longer matches the exact "
                f"compression input at coordinate {coordinate}"
            )
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
        bindings.divgen_fq, divgen_compress, 365, 705
    )
    transmission_minus_wire, transmission_plus_wire = compression_output_wires(
        bindings.transmission_fq,
        transmission_compress,
        367,
        707,
    )
    transmission_accessor = bindings.transmission_computed_accessor
    divgen_fq_accessor = bindings.divgen_fq_accessor
    transmission_fq_accessor = bindings.transmission_fq_accessor
    return f"""import ShielddGnarkFormal.Deployed.Contracts.{module}.Seg{divgen_index}
import ShielddGnarkFormal.Deployed.Contracts.{module}.Seg{dtk_index}
import ShielddGnarkFormal.Deployed.Contracts.{module}.Seg{transmission_index}
import ShielddGnarkFormal.Deployed.Contracts.{module}.SemanticBindings{seating_import}

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact compiler-LC and cross-segment seams for the {circuit} deployment.
GENERATED by {generator} — do not edit by hand. -/

namespace Shieldd.GnarkFormal.Deployed.Contracts.{module}

open Shieldd.GnarkFormal

/-- The compiler-labelled DTK x-coordinate is the exact DTK gadget output LC. -/
theorem {transmission_accessor}0_eq_dtkOutX
    (rho : Nat → SemanticF) :
    {transmission_accessor}0 rho =
      ({dtk_ns}.output (Seg{dtk_index}.localRho rho)).x := by
  have h1 : Seg{dtk_index}.wireSeating 4961 = {x_wire1} := by
    decide +kernel
  have h2 : Seg{dtk_index}.wireSeating 4969 = {x_wire2} := by
    decide +kernel
  simpa only [
    {transmission_accessor}0,
    {transmission_accessor}0LC,
    {dtk_ns}.output,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, Seg{dtk_index}.localRho, Deployed.Templates.seated,
    h1, h2, zero_add, one_mul, add_zero]

/-- The compiler-labelled DTK y-coordinate is the exact DTK gadget output LC. -/
theorem {transmission_accessor}1_eq_dtkOutY
    (rho : Nat → SemanticF) :
    {transmission_accessor}1 rho =
      ({dtk_ns}.output (Seg{dtk_index}.localRho rho)).y := by
  have h1 : Seg{dtk_index}.wireSeating 4962 = {y_wire1} := by
    decide +kernel
  have h2 : Seg{dtk_index}.wireSeating 4970 = {y_wire2} := by
    decide +kernel
  simpa only [
    {transmission_accessor}1,
    {transmission_accessor}1LC,
    {dtk_ns}.output,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, Seg{dtk_index}.localRho, Deployed.Templates.seated,
    h1, h2, zero_add, one_mul, add_zero]

/--
The DTK Window2 x output and the following compression input are the same
exact two global wires.
-/
theorem dtkOutX_eq_transmissionCompressInputX
    (rho : Nat → SemanticF) :
    ({dtk_ns}.output (Seg{dtk_index}.localRho rho)).x =
      {transmission_ns}.inputX (Seg{transmission_index}.localRho rho) := by
  have hdtk1 : Seg{dtk_index}.wireSeating 4961 = {x_wire1} := by
    decide +kernel
  have hdtk2 : Seg{dtk_index}.wireSeating 4969 = {x_wire2} := by
    decide +kernel
  have hcompress1 : Seg{transmission_index}.wireSeating 1 = {x_wire1} := by
    decide +kernel
  have hcompress2 : Seg{transmission_index}.wireSeating 2 = {x_wire2} := by
    decide +kernel
  simpa only [
    {dtk_ns}.output,
    {transmission_ns}.inputX,
    Seg{dtk_index}.localRho,
    Seg{transmission_index}.localRho, Deployed.Templates.seated,
    hdtk1, hdtk2, hcompress1, hcompress2, one_mul]

/-- The DTK y output is exactly the following compression input. -/
theorem dtkOutY_eq_transmissionCompressInputY
    (rho : Nat → SemanticF) :
    ({dtk_ns}.output (Seg{dtk_index}.localRho rho)).y =
      {transmission_ns}.inputY (Seg{transmission_index}.localRho rho) := by
  have hdtk1 : Seg{dtk_index}.wireSeating 4962 = {y_wire1} := by
    decide +kernel
  have hdtk2 : Seg{dtk_index}.wireSeating 4970 = {y_wire2} := by
    decide +kernel
  have hcompress1 : Seg{transmission_index}.wireSeating 4 = {y_wire1} := by
    decide +kernel
  have hcompress2 : Seg{transmission_index}.wireSeating 5 = {y_wire2} := by
    decide +kernel
  simpa only [
    {dtk_ns}.output,
    {transmission_ns}.inputY,
    Seg{dtk_index}.localRho,
    Seg{transmission_index}.localRho, Deployed.Templates.seated,
    hdtk1, hdtk2, hcompress1, hcompress2, one_mul]

/-- The compiler-labelled compressed diversified generator is the gadget output. -/
theorem {divgen_fq_accessor}_eq_compressOutput
    (rho : Nat → SemanticF) :
    {divgen_fq_accessor} rho =
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
    {divgen_fq_accessor},
    {divgen_fq_accessor}LC,
    {divgen_ns}.templateRho,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, Seg{divgen_index}.localRho, Deployed.Templates.seated,
    zero_add, one_mul, add_zero,
    if_pos (by decide +kernel : 231 ≤ 912 ∧ 912 ≤ 912),
    if_pos (by decide +kernel : 231 ≤ 572 ∧ 572 ≤ 912),
    hplus, hminus, hneg]
  ring

/-- The compiler-labelled compressed transmission key is the gadget output. -/
theorem {transmission_fq_accessor}_eq_compressOutput
    (rho : Nat → SemanticF) :
    {transmission_fq_accessor} rho =
      {transmission_ns}.templateRho
          (Seg{transmission_index}.localRho rho) 912 -
      {transmission_ns}.templateRho
          (Seg{transmission_index}.localRho rho) 572 := by
  have hplus :
      Seg{transmission_index}.wireSeating 707 =
        {transmission_plus_wire} := by
    decide +kernel
  have hminus :
      Seg{transmission_index}.wireSeating 367 =
        {transmission_minus_wire} := by
    decide +kernel
  have hneg :
      ({modulus_minus_one} : SemanticF) = -1 := by
    decide +kernel
  simp only [
    {transmission_fq_accessor},
    {transmission_fq_accessor}LC,
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
    ("CompressInputX", "/--\nThe DTK Window2 x output"),
    ("CompressInputY", "/-- The DTK y output"),
    ("DivGenFq", "/-- The compiler-labelled compressed diversified generator"),
    ("TransmissionFq", "/-- The compiler-labelled compressed transmission key"),
)


def split_semantic_seams(
    ir: dict,
    contents: str,
    *,
    generator: str = "gen_note_reshape_family.py",
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
GENERATED by {generator} — do not edit by hand. -/
"""
    return wrapper, parts


def _note_commitment_consequence(theorem_name: str, predicate: str) -> str:
    return f"""/-- `{predicate}` for the exact deployed relation. -/
theorem {theorem_name}
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    ∀ input ∈ (action rho).inputs,
      match input with
      | .real real =>
          Protocol.NoteReshape.Concrete.noteCommitment
            (action rho).shared real.blinding real.amount real.commitment
      | .dummy _ => True := by
  intro input member
  have fact := (circuitFacts_of_relationAll rho h).inputsBound input member
  cases input with
  | real real =>
      exact fact
  | dummy _ =>
      trivial
"""


def _output_commitment_consequence(theorem_name: str, predicate: str) -> str:
    return f"""/-- `{predicate}` for the exact deployed relation. -/
theorem {theorem_name}
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    ∀ output ∈ (action rho).outputs,
      Protocol.NoteReshape.Concrete.noteCommitment
        (action rho).shared output.blinding output.amount output.commitment := by
  intro output member
  exact (circuitFacts_of_relationAll rho h).outputsBound output member
"""


def _selector_boolean_consequence(
    circuit: str,
    root_namespace: str,
) -> str:
    count = FAMILY_SHAPES[circuit][0]
    selectors = [
        f"Witness.syntheticSpends{index}IsDummy rho" for index in range(count)
    ]
    conclusion = " ∧\n      ".join(
        f"({selector} = 0 ∨ {selector} = 1)" for selector in selectors
    )
    hypotheses = ", ".join(f"h{index}" for index in range(count))
    if count == 4:
        alternatives = "selected | selected"
    elif count == 8:
        alternatives = " | ".join("selected" for _ in range(7))
    else:
        raise ValueError(f"{circuit}: selector consequence has unsupported shape")
    rewrites = ", ".join(f"h{index}" for index in range(count))
    return f"""/-- `CIR-SELECTOR-BOOLEAN` for the exact deployed relation. -/
theorem specification_cir_selector_boolean
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    {conclusion} := by
  have selectorFacts :=
    {root_namespace}.selectorFacts rho
      ({circuit}_circuitFacts rho h)
  rcases selectorFacts with {alternatives}
  all_goals
    rcases selected with ⟨{hypotheses}⟩
    simp [{rewrites}]
"""


EXACT_SHARED_PREDICATES = frozenset(
    {
        "ASSET-LEAF-HASH",
        "ASSET-PARAMETERS-HASH",
        "ASSET-POLICY-KEY-ENCODING",
        "ASSET-REGISTRY-GAP-ORDERING",
        "ASSET-REGISTRY-MEMBERSHIP",
        "ASSET-REGULATED-BOOLEAN",
        "ASSET-RING-HASH",
        "ROUTING-PARAMETERS",
        "ROUTING-TAG-DERIVATION",
    }
)


def _segments_for_exact_predicate(ir: dict, predicate: str) -> list[dict]:
    segments = constraint_segments(ir)
    by_index = {segment["index"]: segment for segment in segments}

    def one(op: str) -> dict:
        matches = [segment for segment in segments if segment["op"] == op]
        if len(matches) != 1:
            raise ValueError(
                f"{ir['circuit']}: expected one {op} segment, got {len(matches)}"
            )
        return matches[0]

    def adjacent(index: int, op: str) -> int:
        segment = by_index.get(index)
        if segment is None or segment["op"] != op:
            actual = None if segment is None else segment["op"]
            raise ValueError(
                f"{ir['circuit']}: exact segment {index} for {predicate} "
                f"must be {op}, got {actual}"
            )
        return index

    params = one("gadget.asset_registry_params_hash")
    ring = one("gadget.asset_registry_ring_hash")
    selected_indices: set[int]
    if predicate == "ASSET-LEAF-HASH":
        selected_indices = {one("gadget.asset_registry_leaf_hash")["index"]}
    elif predicate == "ASSET-PARAMETERS-HASH":
        selected_indices = {params["index"]}
    elif predicate == "ASSET-POLICY-KEY-ENCODING":
        selected_indices = {
            adjacent(params["index"] - 1, "decaf.compress_to_field"),
            params["index"],
            adjacent(ring["index"] - 1, "decaf.compress_to_field"),
            ring["index"],
        }
    elif predicate == "ASSET-REGISTRY-GAP-ORDERING":
        gap = one("gadget.asset_registry_gap")
        selected_indices = {
            gap["index"],
            adjacent(gap["index"] + 1, "assert.eq"),
        }
    elif predicate == "ASSET-REGISTRY-MEMBERSHIP":
        path = one("gadget.asset_registry_path")
        selected_indices = {
            path["index"],
            adjacent(path["index"] + 1, "assert.eq"),
        }
    elif predicate == "ASSET-REGULATED-BOOLEAN":
        selected_indices = {
            adjacent(params["index"] - 2, "assert.boolean")
        }
    elif predicate == "ASSET-RING-HASH":
        selected_indices = {ring["index"]}
    elif predicate == "ROUTING-PARAMETERS":
        selected_indices = {
            segment["index"]
            for segment in segments
            if segment["op"]
            in {
                "routing.precision.select",
                "routing.parameters.hash",
                "routing.parameters.bind",
            }
        }
    elif predicate == "ROUTING-TAG-DERIVATION":
        selected_indices = {
            segment["index"]
            for segment in segments
            if segment["op"] == "routing.route_word"
            or segment["op"].startswith("routing.tag.")
        }
    else:
        raise ValueError(f"no exact segment selector for {predicate}")
    try:
        selected = [by_index[index] for index in sorted(selected_indices)]
    except KeyError as error:
        raise ValueError(
            f"{ir['circuit']}: missing adjacent exact segment {error.args[0]} "
            f"for {predicate}"
        ) from error
    return selected


def _exact_segment_consequence(ir: dict, predicate: str) -> str:
    groups = phase_groups(ir)
    segment_groups = {
        segment["index"]: group
        for group, segments in groups.items()
        for segment in segments
    }
    selected = _segments_for_exact_predicate(ir, predicate)
    if not selected:
        raise ValueError(f"{ir['circuit']}: no exact segments for {predicate}")
    selected.sort(key=lambda segment: segment["index"])
    contracts = [
        f"Seg{segment['index']}.contract.spec rho" for segment in selected
    ]
    projections = [
        f"facts.{segment_groups[segment['index']]}."
        f"{camel(segment['op'])}Seg{segment['index']}"
        for segment in selected
    ]
    conclusion = " ∧\n      ".join(contracts)
    if len(projections) == 1:
        proof = f"  exact {projections[0]}"
    else:
        proof = "  exact\n    ⟨" + ",\n      ".join(projections) + "⟩"
    theorem_name = specification_theorem_name(predicate)
    return f"""/-- `{predicate}` for the exact deployed relation. -/
theorem {theorem_name}
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    {conclusion} := by
  have facts := {ir['circuit']}_circuitFacts rho h
{proof}
"""


def render_specification_consequences(
    ir: dict,
    roster: dict[str, tuple[str, tuple[tuple[str, str], ...]]] | None = None,
    generator: str = "gen_note_reshape_family.py",
) -> str:
    circuit = ir["circuit"]
    module = camel(circuit)
    if circuit not in NOTE_RESHAPE_REFINEMENT_ROOTS:
        raise ValueError(f"{circuit}: no NoteReshape refinement root")
    root_module, root_namespace = NOTE_RESHAPE_REFINEMENT_ROOTS[circuit]
    roster = predicate_consequence_roster() if roster is None else roster
    if circuit not in roster:
        raise ValueError(f"{circuit}: predicate consequence roster entry missing")
    source_path, consequences = roster[circuit]
    expected_path = (
        "tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts/"
        f"{module}/SpecificationConsequences.lean"
    )
    if source_path != expected_path:
        raise ValueError(
            f"{circuit}: predicate consequence path {source_path!r} "
            f"does not match {expected_path!r}"
        )

    common = {
        "CIR-SHAPE-FIXED": """/-- `CIR-SHAPE-FIXED` for the exact deployed relation. -/
theorem specification_cir_shape_fixed
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    Protocol.NoteReshape.canonicalShape (action rho) :=
  (circuitFacts_of_relationAll rho h).shape
""",
        "DEC-BALANCE-COMMITMENT-DERIVATION": """/-- `DEC-BALANCE-COMMITMENT-DERIVATION` for the exact deployed relation. -/
theorem specification_dec_balance_commitment_derivation
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    Protocol.Common.Decaf.equivalent
      (Protocol.Common.Decaf.scalarMulLE 251
        Protocol.Common.Decaf.valueBlindingGenerator
        (action rho).balanceBlinding)
      (action rho).balanceCommitment := by
  have fact := (circuitFacts_of_relationAll rho h).valueConserved
  change Protocol.NoteReshape.Concrete.conservation (action rho) at fact
  exact fact.2.2.2.2
""",
        "DEC-BALANCE-COMMITMENT-ENCODING": """/-- `DEC-BALANCE-COMMITMENT-ENCODING` for the exact deployed relation. -/
theorem specification_dec_balance_commitment_encoding
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    ∃ balanceFq,
      Protocol.Common.Decaf.compressesTo
        (action rho).balanceCommitment balanceFq := by
  have fact := (circuitFacts_of_relationAll rho h).statementBound
  change Protocol.NoteReshape.Concrete.statementBinding (action rho) at fact
  rcases fact with ⟨balanceFq, _, compressed, _, _⟩
  exact ⟨balanceFq, compressed⟩
""",
        "DEC-DIVERSIFIED-GENERATOR-ENCODING": """/-- `DEC-DIVERSIFIED-GENERATOR-ENCODING` for the exact deployed relation. -/
theorem specification_dec_diversified_generator_encoding
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    Protocol.Common.Decaf.compressesTo
      (action rho).shared.diversifiedGenerator
      (action rho).shared.diversifiedGeneratorEncoding := by
  have fact := (circuitFacts_of_relationAll rho h).canonicalAddress
  change
    Protocol.NoteReshape.Concrete.canonicalTransmission
      (action rho).authorization (action rho).shared at fact
  exact fact.1.2.2.1
""",
        "DEC-INCOMING-VIEWING-KEY-NONZERO": """/-- `DEC-INCOMING-VIEWING-KEY-NONZERO` for the exact deployed relation. -/
theorem specification_dec_incoming_viewing_key_nonzero
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    Protocol.Common.Decaf.incomingViewingKeyNonzero
      (action rho).authorization.ivkReduced := by
  have fact := (circuitFacts_of_relationAll rho h).canonicalAddress
  change
    Protocol.NoteReshape.Concrete.canonicalTransmission
      (action rho).authorization (action rho).shared at fact
  exact fact.2.1
""",
        "DEC-SPEND-RK-DERIVATION": """/-- `DEC-SPEND-RK-DERIVATION` for the exact deployed relation. -/
theorem specification_dec_spend_rk_derivation
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    ∀ input ∈ (action rho).inputs,
      match input with
      | .real real =>
          ∃ computed,
            Protocol.Common.Decaf.randomizedVerificationKey
              (action rho).authorization.authorizationKey
              real.randomizer computed ∧
            Protocol.Common.Decaf.equivalent
              computed real.randomizedVerificationKey
      | .dummy _ => True := by
  intro input member
  have fact :=
    (circuitFacts_of_relationAll rho h).authorizationKeys input member
  cases input with
  | real real =>
      exact fact
  | dummy _ =>
      trivial
""",
        "DEC-SPEND-RK-ENCODING": """/-- `DEC-SPEND-RK-ENCODING` for the exact deployed relation. -/
theorem specification_dec_spend_rk_encoding
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    ∃ rkFqs,
      List.Forall₂
        (fun input rkFq =>
          Protocol.Common.Decaf.compressesTo input.rk rkFq)
        (action rho).inputs rkFqs := by
  have fact := (circuitFacts_of_relationAll rho h).statementBound
  change Protocol.NoteReshape.Concrete.statementBinding (action rho) at fact
  rcases fact with ⟨_, rkFqs, _, compressed, _⟩
  exact ⟨rkFqs, compressed⟩
""",
        "DEC-TRANSMISSION-KEY-DERIVATION": """/-- `DEC-TRANSMISSION-KEY-DERIVATION` for the exact deployed relation. -/
theorem specification_dec_transmission_key_derivation
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    Protocol.Common.Decaf.diversifiedTransmissionKey
      (action rho).authorization.nullifierKey
      (action rho).authorization.authorizationKey
      (action rho).shared.diversifiedGenerator
      (action rho).authorization.ivkReduced
      (action rho).authorization.ivkQuotientA
      (action rho).shared.transmission := by
  have fact := (circuitFacts_of_relationAll rho h).canonicalAddress
  change
    Protocol.NoteReshape.Concrete.canonicalTransmission
      (action rho).authorization (action rho).shared at fact
  exact fact.1.2.2.2.1
""",
        "DEC-TRANSMISSION-KEY-ENCODING": """/-- `DEC-TRANSMISSION-KEY-ENCODING` for the exact deployed relation. -/
theorem specification_dec_transmission_key_encoding
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    Protocol.Common.Decaf.compressesTo
      (action rho).shared.transmission
      (action rho).shared.transmissionEncoding := by
  have fact := (circuitFacts_of_relationAll rho h).canonicalAddress
  change
    Protocol.NoteReshape.Concrete.canonicalTransmission
      (action rho).authorization (action rho).shared at fact
  exact fact.1.2.2.2.2
""",
        "DEC-TRANSMISSION-KEY-NONIDENTITY": """/-- `DEC-TRANSMISSION-KEY-NONIDENTITY` for the exact deployed relation. -/
theorem specification_dec_transmission_key_nonidentity
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    Protocol.Common.Decaf.transmissionKeyNonIdentity
      (action rho).shared.transmission := by
  have fact := (circuitFacts_of_relationAll rho h).canonicalAddress
  change
    Protocol.NoteReshape.Concrete.canonicalTransmission
      (action rho).authorization (action rho).shared at fact
  exact fact.2.2
""",
        "NOTE-SPEND-NULLIFIER-DERIVATION": """/-- `NOTE-SPEND-NULLIFIER-DERIVATION` for the exact deployed relation. -/
theorem specification_note_spend_nullifier_derivation
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    ∀ input ∈ (action rho).inputs,
      match input with
      | .real real =>
          Protocol.NoteReshape.Concrete.realNullifier
            (action rho).authorization real
      | .dummy _ => True := by
  intro input member
  have fact := (circuitFacts_of_relationAll rho h).membership input member
  cases input with
  | real real =>
      exact fact.2
  | dummy _ =>
      trivial
""",
        "SCT-SPEND-MEMBERSHIP": """/-- `SCT-SPEND-MEMBERSHIP` for the exact deployed relation. -/
theorem specification_sct_spend_membership
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    ∀ input ∈ (action rho).inputs,
      match input with
      | .real real =>
          Protocol.NoteReshape.Concrete.member (action rho).anchor real
      | .dummy _ => True := by
  intro input member
  have fact := (circuitFacts_of_relationAll rho h).membership input member
  cases input with
  | real real =>
      exact fact.1
  | dummy _ =>
      trivial
""",
        "VALUE-AMOUNT-128-RANGE": """/-- `VALUE-AMOUNT-128-RANGE` for the exact deployed relation. -/
theorem specification_value_amount_128_range
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    (∀ input ∈ (action rho).inputs, input.amount.val < 2 ^ 128) ∧
      ∀ output ∈ (action rho).outputs, output.amount.val < 2 ^ 128 := by
  have fact := (circuitFacts_of_relationAll rho h).valueConserved
  change Protocol.NoteReshape.Concrete.conservation (action rho) at fact
  exact ⟨fact.1, fact.2.1⟩
""",
        "VALUE-CONSERVATION": """/-- `VALUE-CONSERVATION` for the exact deployed relation. -/
theorem specification_value_conservation
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    ((action rho).inputs.map Protocol.NoteReshape.Input.amount).sum =
      ((action rho).outputs.map Protocol.NoteReshape.Output.amount).sum := by
  have fact := (circuitFacts_of_relationAll rho h).valueConserved
  change Protocol.NoteReshape.Concrete.conservation (action rho) at fact
  exact fact.2.2.2.1
""",
        "CIR-DUMMY-ORDER-COUNT": """/-- `CIR-DUMMY-ORDER-COUNT` for the exact deployed relation. -/
theorem specification_cir_dummy_order_count
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    Protocol.NoteReshape.canonicalShape (action rho) ∧
      Protocol.NoteReshape.realPrefix (action rho) ∧
      Protocol.NoteReshape.dummySlotIndicesCanonical
        Protocol.NoteReshape.Concrete.circuitPrimitives (action rho) := by
  let facts := circuitFacts_of_relationAll rho h
  exact ⟨facts.shape, facts.padding, facts.dummySlotIndicesCanonical⟩
""",
        "DUMMY-AMOUNT-ZERO": """/-- `DUMMY-AMOUNT-ZERO` for the exact deployed relation. -/
theorem specification_dummy_amount_zero
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    ∀ input ∈ (action rho).inputs,
      match input with
      | .real _ => True
      | .dummy dummy => dummy.amount = 0 := by
  intro input member
  have fact := (circuitFacts_of_relationAll rho h).membership input member
  cases input with
  | real _ =>
      trivial
  | dummy dummy =>
      exact fact.1
""",
        "DUMMY-NULLIFIER-DOMAIN-BINDING": """/-- `DUMMY-NULLIFIER-DOMAIN-BINDING` for the exact deployed relation. -/
theorem specification_dummy_nullifier_domain_binding
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    ∀ input ∈ (action rho).inputs,
      match input with
      | .real _ => True
      | .dummy dummy =>
          Protocol.NoteReshape.Concrete.dummyNullifier dummy := by
  intro input member
  have fact := (circuitFacts_of_relationAll rho h).membership input member
  cases input with
  | real _ =>
      trivial
  | dummy dummy =>
      exact fact.2
""",
    }
    for predicate in (
        "NOTE-SPEND-ASSET-BINDING",
        "NOTE-SPEND-COMMITMENT",
        "NOTE-SPEND-OWNER-BINDING",
    ):
        common[predicate] = _note_commitment_consequence(
            specification_theorem_name(predicate), predicate
        )
    for predicate in (
        "NOTE-OUTPUT-ASSET-BINDING",
        "NOTE-OUTPUT-COMMITMENT",
        "NOTE-OUTPUT-OWNER-BINDING",
    ):
        common[predicate] = _output_commitment_consequence(
            specification_theorem_name(predicate), predicate
        )
    for predicate in EXACT_SHARED_PREDICATES:
        common[predicate] = _exact_segment_consequence(ir, predicate)
    if circuit == "note_reshape8x1":
        common["CIR-SELECTOR-BOOLEAN"] = _selector_boolean_consequence(
            circuit, root_namespace
        )

    predicates = [predicate for predicate, _ in consequences]
    missing = [predicate for predicate in predicates if predicate not in common]
    if missing:
        raise ValueError(
            f"{circuit}: no exact consequence renderer for {missing}"
        )
    declarations = []
    for predicate, declaration in consequences:
        theorem_name = declaration.removeprefix("theorem ")
        source = common[predicate]
        if source.count(f"theorem {theorem_name}") != 1:
            raise ValueError(
                f"{circuit}: rendered consequence {predicate} does not "
                f"define exactly {declaration!r}"
            )
        declarations.append(source.rstrip())

    rendered = f"""import {root_module}

set_option maxRecDepth 1000000
set_option maxHeartbeats 8000000

/-! Predicate-specific {circuit} consequences.
GENERATED by {generator} — do not edit by hand. -/

namespace Shieldd.GnarkFormal.Deployed.Contracts.{module}

open Shieldd.GnarkFormal
open Protocol

private abbrev action (rho : Nat → DeployedF) :=
  {root_namespace}.action rho

/-- Exact relation to the complete handwritten NoteReshape circuit facts. -/
theorem circuitFacts_of_relationAll
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    Protocol.NoteReshape.CircuitFacts
      Protocol.NoteReshape.Concrete.circuitPrimitives
      (action rho) :=
  Deployed.NoteReshapeRefinement.circuitFacts_refine
    (action rho)
    ({root_namespace}.deployedRelation_to_circuitFacts rho h)

{"\n\n".join(declarations)}

end Shieldd.GnarkFormal.Deployed.Contracts.{module}
"""
    if rendered.count("\ntheorem specification_") != len(consequences):
        raise ValueError(f"{circuit}: predicate consequence count drifted")
    return rendered


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
        args.out_dir / "SpecificationConsequences.lean":
            render_specification_consequences(ir),
        args.out_dir / "RoleBindings.lean": render_role_bindings(
            ir, constraint_manifest
        ),
        args.out_dir / "SemanticBindings.lean": render_semantic_bindings(
            ir, constraint_manifest
        ),
        args.out_dir / "SemanticSeams.lean": semantic_seams,
    }
    if any(
        segment.get("op") == "assert.decaf_non_identity"
        for segment in constraint_segments(ir)
    ):
        files[args.out_dir / "NonIdentitySeams.lean"] = (
            render_non_identity_seams(
                ir,
                constraint_manifest,
                NOTE_RESHAPE_NON_IDENTITY_BINDINGS,
                ("auth.ivk_reduced",),
            )
        )
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
