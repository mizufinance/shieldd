#!/usr/bin/env python3
"""Generate direct normalized providers for small certified templates."""

from __future__ import annotations

import re
from dataclasses import dataclass
from pathlib import Path
from typing import Callable

from formal_json import read_json_object

ROOT = Path(__file__).resolve().parents[4]
LEAN = ROOT / "tools/gnark/lean"
INVENTORY = ROOT / "tools/gnark/artifacts/certified-template-inventory.json"
RELATIONS = LEAN / "ShielddGnarkFormal/Deployed/Templates/Relations"
OUT = LEAN / "ShielddGnarkFormal/Deployed/Templates/Semantics"
BENCH = LEAN / "bench"
ORDER = 8444461749428370424248824938781546531375899335154063827935233455917409239041

REQUIRED_SMALL_OPS = {
    "assert.eq",
    "decaf.assert_equivalent",
    "decaf.assert_on_curve",
}
INVERSE_ROW_OPS = {"assert.ne", "assert.decaf_non_identity"}
SMALL_OPS = REQUIRED_SMALL_OPS | INVERSE_ROW_OPS


@dataclass(frozen=True)
class InverseRowLayout:
    row_count: int
    local_wire_count: int
    left: str
    right: str
    factors: tuple[str, str]
    nonzero_factors: tuple[str, str]


COMPOSITE_NON_IDENTITY_KEY = (
    "assert.decaf_non_identity@"
    "6e9fd3a3eee2e21b49a710f750999a0e29d1babc1615c644cebbf294d8fb9e61"
)
INVERSE_ROW_LAYOUTS = {
    COMPOSITE_NON_IDENTITY_KEY: InverseRowLayout(
        row_count=1,
        local_wire_count=4,
        left=(
            "((1 : F) * rho 1) * "
            "((1 : F) * rho 2 + (1 : F) * rho 3)"
        ),
        right="((1 : F))",
        factors=(
            "((1 : F) * rho 1)",
            "((1 : F) * rho 2 + (1 : F) * rho 3)",
        ),
        nonzero_factors=("rho 1", "(rho 2 + rho 3)"),
    ),
}


def camel(text: str) -> str:
    pieces = re.split(r"[._-]", text)
    return "".join(piece[:1].upper() + piece[1:] for piece in pieces)


def default_template_name(key: str) -> str:
    op, digest = key.split("@", 1)
    return f"T{camel(op)}_{digest}"


def templates() -> tuple[tuple[str, int, int], ...]:
    inventory = read_json_object(INVENTORY, canonical="pretty")
    result = tuple(
        (
            template["template_key"],
            template["constraint_count"],
            template["local_wire_count"],
        )
        for template in inventory["templates"]
        if template["op"] in SMALL_OPS
    )
    if not result:
        raise ValueError("certified inventory has no small direct templates")
    keys = [key for key, _, _ in result]
    if keys != sorted(set(keys)):
        raise ValueError("small direct template keys are not sorted and unique")
    actual = {
        op
        for key, _, _ in result
        for op in SMALL_OPS
        if key.startswith(op + "@")
    }
    if not REQUIRED_SMALL_OPS <= actual:
        raise ValueError(
            "small direct operations incomplete: "
            f"missing={sorted(REQUIRED_SMALL_OPS - actual)}"
        )
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


def _inverse_factors(left: str) -> tuple[str, str] | None:
    """Return the two reviewed factors of a normalized inverse row."""

    direct = re.fullmatch(
        r"(\(\(1 : F\) \* rho \d+\)) \* "
        r"(\(\(1 : F\) \* rho \d+\))",
        left,
    )
    if direct is not None:
        expected = {
            "((1 : F) * rho 1)",
            "((1 : F) * rho 2)",
        }
        if {direct.group(1), direct.group(2)} != expected:
            return None
        return "((1 : F) * rho 1)", "((1 : F) * rho 2)"
    structured = re.fullmatch(
        r"(\(\(1 : F\) \* rho \d+\)) \* "
        r"\((relationLc[A-Za-z0-9]+ rho)\)",
        left,
    )
    if structured is not None:
        if structured.group(1) != "((1 : F) * rho 1)":
            return None
        return structured.group(1), structured.group(2)
    structured_reversed = re.fullmatch(
        r"\((relationLc[A-Za-z0-9]+ rho)\) \* "
        r"(\(\(1 : F\) \* rho \d+\))",
        left,
    )
    if structured_reversed is not None:
        if structured_reversed.group(2) != "((1 : F) * rho 1)":
            return None
        return structured_reversed.group(2), structured_reversed.group(1)
    return None


def _nonzero_factor(factor: str, relation: str) -> str:
    direct = re.fullmatch(r"\(\(1 : F\) \* rho (\d+)\)", factor)
    if direct is not None:
        return f"rho {direct.group(1)}"
    if re.fullmatch(r"relationLc[A-Za-z0-9]+ rho", factor):
        return _qualify_relation_atoms(factor, relation)
    raise ValueError(f"unsupported normalized inverse factor {factor!r}")


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


def _inverse_row_prelude(name: str) -> str:
    return f"""import ShielddGnarkFormal.Deployed.Templates.Relations.{name}
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZMod

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.{name}

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def Order : Nat := {ORDER}
abbrev F := ZMod Order

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

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
    elif op in INVERSE_ROW_OPS:
        if row_count != 1 or local_wire_count < 3:
            raise ValueError(f"{key}: inverse assertion shape drifted")
        left, right = _equation(rows[0])
        layout = INVERSE_ROW_LAYOUTS.get(key)
        if layout is not None:
            if (
                row_count != layout.row_count
                or local_wire_count != layout.local_wire_count
            ):
                raise ValueError(f"{key}: inverse assertion shape drifted")
            if (left, right) != (layout.left, layout.right):
                raise ValueError(f"{key}: inverse assertion row drifted")
            factors = layout.factors
            left_nonzero, right_nonzero = layout.nonzero_factors
        else:
            factors = _inverse_factors(left)
            if factors is None or right != "((1 : F))":
                raise ValueError(f"{key}: inverse assertion row drifted")
            structured = any(
                factor.startswith("relationLc") for factor in factors
            )
            if (structured and local_wire_count == 3) or (
                not structured and local_wire_count != 3
            ):
                raise ValueError(f"{key}: inverse assertion shape drifted")
            left_nonzero = _nonzero_factor(factors[0], relation)
            right_nonzero = _nonzero_factor(factors[1], relation)
        semantic = f"""def spec (rho : Nat -> F) : Prop :=
  {left_nonzero} ≠ 0 ∧ {right_nonzero} ≠ 0

theorem sound (rho : Nat -> F) (h : {relation}.relation rho) : spec rho := by
  unfold {relation}.relation {relation}.relationSegment0 at h
  constructor
  · intro hx
    have h01 : (0 : F) = 1 := by
      simpa only [hx, one_mul, zero_mul, mul_zero] using h.1
    exact zero_ne_one h01
  · intro hx
    have h01 : (0 : F) = 1 := by
      simpa only [hx, one_mul, zero_mul, mul_zero] using h.1
    exact zero_ne_one h01
"""
        prelude = _inverse_row_prelude(name)
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
    if len(outputs) != 2 * len(templates()):
        raise ValueError("direct provider/import file ownership is incomplete")
    return outputs
