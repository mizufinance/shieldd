#!/usr/bin/env python3
"""Generate direct normalized providers for small 2x1 representative templates."""

from __future__ import annotations

import json
import re
from pathlib import Path
from typing import Callable


ROOT = Path(__file__).resolve().parents[4]
LEAN = ROOT / "tools/gnark/lean"
IR = ROOT / "crates/core/component/shielded-pool/formal/note_reshape2x1-deployed-slice-ir.json"
RELATIONS = LEAN / "ShielddGnarkFormal/Deployed/Templates/Relations"
OUT = LEAN / "ShielddGnarkFormal/Deployed/Templates/Semantics"
BENCH = LEAN / "bench"
ORDER = 8444461749428370424248824938781546531375899335154063827935233455917409239041

SMALL_OPS = {"assert.eq", "decaf.assert_equivalent", "decaf.assert_on_curve"}


def camel(text: str) -> str:
    pieces = re.split(r"[._-]", text)
    return "".join(piece[:1].upper() + piece[1:] for piece in pieces)


def default_template_name(key: str) -> str:
    op, digest = key.split("@", 1)
    return f"T{camel(op)}_{digest}"


def templates() -> tuple[tuple[str, int, int], ...]:
    ir = json.loads(IR.read_text())
    first: dict[str, tuple[str, int, int]] = {}
    for segment in ir["segments"]:
        key = segment.get("template_key")
        if key and segment["op"] in SMALL_OPS:
            first.setdefault(key, (key, segment["constraint_count"], segment["local_wire_count"]))
    result = tuple(first.values())
    if len(result) != 11:
        raise ValueError(f"expected 11 small representative templates, found {len(result)}")
    expected = {"assert.eq": 6, "decaf.assert_equivalent": 4, "decaf.assert_on_curve": 1}
    actual = {op: sum(key.startswith(op + "@") for key, _, _ in result) for op in expected}
    if actual != expected:
        raise ValueError(f"small representative operation counts drifted: {actual}")
    return result


def _source(name: str) -> str:
    paths = list(RELATIONS.glob(f"{name}*.lean"))
    if not paths:
        raise ValueError(f"missing normalized relation {name}")
    return "\n".join(path.read_text() for path in paths)


def _segment_body(source: str) -> str:
    match = re.search(
        r"def relationSegment0 \(rho : Nat -> F\) \(k : Prop\) : Prop :=\n(.*?)(?=\n\ndef )",
        source,
        re.S,
    )
    if match is None:
        raise ValueError("small normalized relation lost relationSegment0")
    body = match.group(1).strip()
    if not body.endswith("∧ k"):
        raise ValueError("small normalized relation lost its CPS continuation")
    return body[:-3].rstrip()


def _conjuncts(body: str) -> list[str]:
    return [part.strip() for part in re.split(r"\s+∧\s+", body) if part.strip()]


def _equation(prop: str) -> tuple[str, str]:
    pieces = prop.split(" = ")
    if len(pieces) != 2:
        raise ValueError(f"expected one equation, got {prop!r}")
    return pieces[0].strip(), pieces[1].strip()


def _qualify_relation_atoms(expression: str, relation: str) -> str:
    """Qualify named linear-combination atoms copied from the relation body."""
    return re.sub(r"\b(relationLc[A-Za-z0-9]+)\b", rf"{relation}.\1", expression)


def _prelude(name: str, *, linear: bool) -> str:
    tactic = "\nimport Mathlib.Tactic.LinearCombination" if linear else ""
    return f"""import ShielddGnarkFormal.Deployed.Templates.Relations.{name}
import Mathlib.Data.ZMod.Basic{tactic}

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.{name}

def Order : Nat := {ORDER}
abbrev F := ZMod Order

"""


def render(key: str, row_count: int, local_wire_count: int, name: str) -> str:
    source = _source(name)
    body = _segment_body(source)
    rows = _conjuncts(body)
    relation = f"Shieldd.GnarkFormal.Deployed.Templates.Relations.{name}"
    op = key.split("@", 1)[0]
    rho_wires = {int(wire) for wire in re.findall(r"rho (\d+)", body)}
    if rho_wires and max(rho_wires) >= local_wire_count:
        raise ValueError(f"{key}: normalized relation references out-of-range local wire")
    if len(rows) != row_count:
        raise ValueError(f"{key}: expected {row_count} direct rows, found {len(rows)}")
    if op == "decaf.assert_on_curve":
        if row_count != 4:
            raise ValueError(f"{key}: on-curve row count drifted")
        semantic = """def spec (rho : Nat -> F) : Prop :=
  Shieldd.GnarkFormal.Deployed.Templates.Simple.onCurveSpec rho

theorem sound (rho : Nat -> F) (h : RELATION.relation rho) : spec rho := by
  unfold RELATION.relation RELATION.relationSegment0 at h
  rcases h with ⟨h0, h1, h2, h3, _⟩
  exact Shieldd.GnarkFormal.Deployed.Templates.Simple.onCurveSound rho ⟨h0, h1, h2, h3⟩
""".replace("RELATION", relation)
        prelude = _prelude(name, linear=False).replace(
            f"import ShielddGnarkFormal.Deployed.Templates.Relations.{name}",
            f"import ShielddGnarkFormal.Deployed.Templates.Relations.{name}\nimport ShielddGnarkFormal.Deployed.Templates.Simple",
        )
    elif op == "assert.eq":
        if row_count != 1:
            raise ValueError(f"{key}: equality row count drifted")
        left, right = _equation(rows[0])
        semantic = f"""def spec (rho : Nat -> F) : Prop :=
  {right} = {left}

theorem sound (rho : Nat -> F) (h : {relation}.relation rho) : spec rho := by
  unfold {relation}.relation {relation}.relationSegment0 at h
  exact h.1.symm
"""
        prelude = _prelude(name, linear=False)
    elif op == "decaf.assert_equivalent":
        if row_count != 3:
            raise ValueError(f"{key}: equivalence row count drifted")
        left0, _ = _equation(rows[0])
        left1, _ = _equation(rows[1])
        left0 = _qualify_relation_atoms(left0, relation)
        left1 = _qualify_relation_atoms(left1, relation)
        semantic = f"""def spec (rho : Nat -> F) : Prop :=
  {left0} = {left1}

theorem sound (rho : Nat -> F) (h : {relation}.relation rho) : spec rho := by
  unfold {relation}.relation {relation}.relationSegment0 at h
  rcases h with ⟨h0, h1, h2, _⟩
  unfold spec
  linear_combination h0 - h1 + h2
"""
        prelude = _prelude(name, linear=True)
    else:
        raise ValueError(f"unsupported direct representative operation {op}")
    rendered = prelude + semantic + f"\nend Shieldd.GnarkFormal.Deployed.Templates.Semantics.{name}\n"
    for marker in ("NoteReshape2x1", "representativeRho", "representativeSeating"):
        if marker in rendered:
            raise ValueError(f"{key}: retained forbidden transport marker {marker}")
    return rendered


def generated_files(
    out: Path = OUT,
    bench: Path = BENCH,
    template_name_fn: Callable[[str], str] = default_template_name,
) -> dict[Path, str]:
    outputs: dict[Path, str] = {}
    for key, row_count, local_wire_count in templates():
        name = template_name_fn(key)
        outputs[out / f"{name}.lean"] = render(key, row_count, local_wire_count, name)
        outputs[bench / f"NoteReshapeTemplate{name}Import.lean"] = (
            f"import ShielddGnarkFormal.Deployed.Templates.Semantics.{name}\n"
        )
    if len(outputs) != 22:
        raise ValueError(f"expected 22 direct provider/import files, found {len(outputs)}")
    return outputs
