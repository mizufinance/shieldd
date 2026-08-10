#!/usr/bin/env python3
"""Generate exact normalized providers for certified conditional row gadgets."""

from __future__ import annotations

import json
import re
from dataclasses import dataclass
from pathlib import Path

import formal_json

ROOT = Path(__file__).resolve().parents[4]
LEAN = ROOT / "tools/gnark/lean"
INVENTORY = ROOT / "tools/gnark/artifacts/certified-template-inventory.json"
RELATIONS = LEAN / "ShielddGnarkFormal/Deployed/Templates/Relations"
OUT = LEAN / "ShielddGnarkFormal/Deployed/Templates/Semantics"
ORDER = 8444461749428370424248824938781546531375899335154063827935233455917409239041

OPS = {
    "assert.eq_if",
    "decaf.assert_equivalent_if",
    "select.field",
    "select.point",
}


@dataclass(frozen=True)
class Template:
    key: str
    op: str
    rows: int
    wires: int

    @property
    def name(self) -> str:
        op, digest = self.key.split("@", 1)
        pieces = re.split(r"[._-]", op)
        prefix = "".join(piece[:1].upper() + piece[1:] for piece in pieces)
        return f"T{prefix}_{digest}"


def templates() -> tuple[Template, ...]:
    inventory = formal_json.read_template_inventory(INVENTORY)
    result = []
    for item in inventory["templates"]:
        op = item["op"]
        rows = item["constraint_count"]
        if op in OPS or (op == "dummy.mux" and rows == 3):
            result.append(
                Template(
                    item["template_key"],
                    op,
                    rows,
                    item["local_wire_count"],
                )
            )
    result.sort(key=lambda template: template.key)
    keys = [template.key for template in result]
    if keys != sorted(set(keys)):
        raise ValueError("conditional template keys are not unique")
    return tuple(result)


def _source(name: str) -> str:
    paths = sorted(RELATIONS.glob(f"{name}*.lean"))
    if not paths:
        raise ValueError(f"missing normalized relation {name}")
    return "\n".join(path.read_text() for path in paths)


def _rows(name: str, expected: int) -> list[str]:
    source = _source(name)
    match = re.search(
        r"def relationSegment0 \(rho : Nat -> F\) \(k : Prop\) : Prop :=\n"
        r"(.*?)(?=\n\ndef )",
        source,
        re.S,
    )
    if match is None:
        raise ValueError(f"{name}: normalized relation lost relationSegment0")
    body = match.group(1).strip()
    if not body.endswith("∧ k"):
        raise ValueError(f"{name}: normalized relation lost its CPS continuation")
    rows = [
        part.strip()
        for part in re.split(r"\s+∧\s+", body[:-3].rstrip())
        if part.strip()
    ]
    if len(rows) != expected:
        raise ValueError(
            f"{name}: expected {expected} normalized rows, found {len(rows)}"
        )
    return rows


def _strip_outer(expression: str) -> str:
    result = expression.strip()
    while result.startswith("(") and result.endswith(")"):
        depth = 0
        encloses = True
        for index, char in enumerate(result):
            if char == "(":
                depth += 1
            elif char == ")":
                depth -= 1
                if depth < 0:
                    raise ValueError(f"unbalanced normalized expression {expression!r}")
                if depth == 0 and index != len(result) - 1:
                    encloses = False
                    break
        if depth != 0:
            raise ValueError(f"unbalanced normalized expression {expression!r}")
        if not encloses:
            break
        result = result[1:-1].strip()
    return result


def _split_top(expression: str, token: str) -> tuple[str, str]:
    text = _strip_outer(expression)
    depth = 0
    positions = []
    index = 0
    while index < len(text):
        char = text[index]
        if char == "(":
            depth += 1
        elif char == ")":
            depth -= 1
            if depth < 0:
                raise ValueError(f"unbalanced normalized expression {expression!r}")
        elif depth == 0 and text.startswith(token, index):
            positions.append(index)
            index += len(token)
            continue
        index += 1
    if depth != 0 or len(positions) != 1:
        raise ValueError(
            f"expected one top-level {token!r} in normalized expression {expression!r}"
        )
    position = positions[0]
    return (
        _strip_outer(text[:position]),
        _strip_outer(text[position + len(token):]),
    )


def _split_top_all(expression: str, token: str) -> tuple[str, ...]:
    text = _strip_outer(expression)
    depth = 0
    start = 0
    parts = []
    index = 0
    while index < len(text):
        char = text[index]
        if char == "(":
            depth += 1
        elif char == ")":
            depth -= 1
            if depth < 0:
                raise ValueError(f"unbalanced normalized expression {expression!r}")
        elif depth == 0 and text.startswith(token, index):
            parts.append(_strip_outer(text[start:index]))
            index += len(token)
            start = index
            continue
        index += 1
    if depth != 0:
        raise ValueError(f"unbalanced normalized expression {expression!r}")
    parts.append(_strip_outer(text[start:]))
    return tuple(parts)


def _equation(row: str) -> tuple[str, str]:
    return _split_top(row, " = ")


def _product(expression: str) -> tuple[str, str]:
    return _split_top(expression, " * ")


def _compact(expression: str) -> str:
    return re.sub(r"\s+", "", _strip_outer(expression))


def _wire(expression: str) -> int | None:
    compact = _compact(expression)
    for pattern in (
        r"rho(\d+)",
        r"\(1:F\)\*rho(\d+)",
        r"1\*rho(\d+)",
    ):
        match = re.fullmatch(pattern, compact)
        if match is not None:
            return int(match.group(1))
    try:
        left, right = _product(expression)
    except ValueError:
        return None
    if _compact(left) in {"1", "1:F", "(1:F)"}:
        return _wire(right)
    if _compact(right) in {"1", "1:F", "(1:F)"}:
        return _wire(left)
    return None


def _is_one_minus_wire(expression: str, wire: int) -> bool:
    """Recognize the extractor's normalized affine complement of one wire."""

    compact = _compact(expression)
    compact = compact.replace("(1:F)", "1").replace("(-1:F)", "-1")
    return compact in {
        f"1+-1*rho{wire}",
        f"-1*rho{wire}+1",
        f"1-rho{wire}",
    }


def _qualify(expression: str, relation: str) -> str:
    return re.sub(
        r"\b(relationLc[A-Za-z0-9]+)\b",
        rf"{relation}.\1",
        expression,
    )


def _other_factor(
    factors: tuple[str, str],
    *,
    wire: int,
    label: str,
) -> str:
    matching = [index for index, factor in enumerate(factors) if _wire(factor) == wire]
    if len(matching) != 1:
        raise ValueError(f"{label}: expected exactly one temporary wire {wire}")
    return factors[1 - matching[0]]


def _prelude(template: Template) -> tuple[str, str, str]:
    name = template.name
    relation = f"Shieldd.GnarkFormal.Deployed.Templates.Relations.{name}"
    namespace = f"Shieldd.GnarkFormal.Deployed.Templates.Semantics.{name}"
    prelude = f"""import ShielddGnarkFormal.Deployed.Templates.Relations.{name}
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace {namespace}

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def Order : Nat := {ORDER}
abbrev F := ZMod Order

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def relation (rho : Nat → F) : Prop :=
  {relation}.relation rho

"""
    return prelude, relation, namespace


def _unfold(relation: str) -> str:
    return (
        f"unfold relation {relation}.relation "
        f"{relation}.relationSegment0 at h"
    )


def _render_eq_if(template: Template, rows: list[str], relation: str) -> str:
    if len(rows) != 2:
        raise ValueError(f"{template.key}: conditional equality must have two rows")
    left, temporary = _equation(rows[0])
    guard, residual = _product(left)
    temporary_wire = _wire(temporary)
    close_left, close_right = _equation(rows[1])
    if (
        temporary_wire is None
        or _wire(close_left) != temporary_wire
        or _compact(close_right) not in {"0", "0:F", "(0:F)"}
    ):
        raise ValueError(f"{template.key}: conditional equality temporary is not closed")
    guard = _qualify(guard, relation)
    residual = _qualify(residual, relation)
    return f"""def guard (rho : Nat → F) : F :=
  {guard}

def residual (rho : Nat → F) : F :=
  {residual}

def spec (rho : Nat → F) : Prop :=
  guard rho = 0 ∨ residual rho = 0

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
  {_unfold(relation)}
  rcases h with ⟨h0, h1, _⟩
  have hproduct : guard rho * residual rho = 0 := by
    unfold guard residual
    linear_combination h0 + h1
  exact mul_eq_zero.mp hproduct
"""


def _render_equivalent_if(
    template: Template,
    rows: list[str],
    relation: str,
) -> str:
    if len(rows) == 3:
        left, left_temporary = _equation(rows[0])
        right, right_temporary = _equation(rows[1])
        final_left, final_right = _equation(rows[2])
        if (
            _wire(final_left) != _wire(left_temporary)
            or _wire(final_right) != _wire(right_temporary)
        ):
            raise ValueError(f"{template.key}: equivalence products are not joined")
        left = _qualify(left, relation)
        right = _qualify(right, relation)
        return f"""def leftCrossProduct (rho : Nat → F) : F :=
  {left}

def rightCrossProduct (rho : Nat → F) : F :=
  {right}

def spec (rho : Nat → F) : Prop :=
  leftCrossProduct rho = rightCrossProduct rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
  {_unfold(relation)}
  rcases h with ⟨h0, h1, h2, _⟩
  unfold spec leftCrossProduct rightCrossProduct
  linear_combination h0 - h1 + h2
"""
    if len(rows) not in (5, 6):
        raise ValueError(
            f"{template.key}: unsupported conditional equivalence row count"
        )
    offset = len(rows) - 5
    left, left_temporary = _equation(rows[offset])
    right, right_temporary = _equation(rows[offset + 1])
    left_wire = _wire(left_temporary)
    right_wire = _wire(right_temporary)
    if left_wire is None or right_wire is None:
        raise ValueError(f"{template.key}: equivalence product outputs are not wires")
    gated_left, gated_left_output = _equation(rows[offset + 2])
    gated_right, gated_right_output = _equation(rows[offset + 3])
    guard_left = _other_factor(
        _product(gated_left),
        wire=left_wire,
        label=f"{template.key}: left gate",
    )
    guard_right = _other_factor(
        _product(gated_right),
        wire=right_wire,
        label=f"{template.key}: right gate",
    )
    if _compact(guard_left) != _compact(guard_right):
        raise ValueError(f"{template.key}: equivalence gates use different guards")
    selector = None
    if offset:
        boolean_left, boolean_right = _equation(rows[0])
        if _compact(boolean_right) not in {"0", "0:F", "(0:F)"}:
            raise ValueError(
                f"{template.key}: selector Boolean row has a nonzero output"
            )
        boolean_factors = _product(boolean_left)
        candidates = [
            (factor, other)
            for factor, other in (
                (boolean_factors[0], boolean_factors[1]),
                (boolean_factors[1], boolean_factors[0]),
            )
            if _wire(factor) is not None
            and _is_one_minus_wire(other, _wire(factor))
        ]
        if len(candidates) != 1:
            raise ValueError(
                f"{template.key}: selector Boolean row is not x * (1 - x) = 0"
            )
        selector, boolean_guard = candidates[0]
        if _compact(boolean_guard) != _compact(guard_left):
            raise ValueError(
                f"{template.key}: Boolean selector and equivalence guard disagree"
            )
    final_left, final_right = _equation(rows[offset + 4])
    if (
        _wire(final_left) != _wire(gated_left_output)
        or _wire(final_right) != _wire(gated_right_output)
    ):
        raise ValueError(f"{template.key}: gated equivalence outputs are not joined")
    guard = _qualify(guard_left, relation)
    left = _qualify(left, relation)
    right = _qualify(right, relation)
    hypotheses = ", ".join(f"h{index}" for index in range(len(rows)))
    boolean_defs = ""
    spec_expression = (
        "guard rho = 0 ∨ leftCrossProduct rho = rightCrossProduct rho"
    )
    boolean_intro = ""
    if selector is not None:
        selector = _qualify(selector, relation)
        boolean_defs = f"""def selector (rho : Nat → F) : F :=
  {selector}

def selectorIsBoolean (rho : Nat → F) : Prop :=
  selector rho = 0 ∨ selector rho = 1

"""
        spec_expression = (
            "selectorIsBoolean rho ∧\n"
            "    (guard rho = 0 ∨ leftCrossProduct rho = rightCrossProduct rho)"
        )
        boolean_intro = """  constructor
  · unfold selectorIsBoolean
    have hboolean : selector rho * (1 - selector rho) = 0 := by
      unfold selector
      linear_combination h0
    rcases mul_eq_zero.mp hboolean with hzero | hone
    · exact Or.inl hzero
    · right
      linear_combination -hone
"""
    core_proof = f"""have hproduct :
    guard rho * (leftCrossProduct rho - rightCrossProduct rho) = 0 := by
  unfold guard leftCrossProduct rightCrossProduct
  linear_combination
    ({guard}) * h{offset} - ({guard}) * h{offset + 1} +
    h{offset + 2} - h{offset + 3} + h{offset + 4}
rcases mul_eq_zero.mp hproduct with hdisabled | hequivalent
· exact Or.inl hdisabled
· right
  linear_combination hequivalent"""
    core_lines = core_proof.splitlines()
    if selector is None:
        rendered_core_proof = "\n".join(f"  {line}" for line in core_lines)
    else:
        rendered_core_proof = (
            f"  · {core_lines[0]}\n"
            + "\n".join(f"    {line}" for line in core_lines[1:])
        )
    return f"""def guard (rho : Nat → F) : F :=
  {guard}

{boolean_defs}\
def leftCrossProduct (rho : Nat → F) : F :=
  {left}

def rightCrossProduct (rho : Nat → F) : F :=
  {right}

def spec (rho : Nat → F) : Prop :=
  {spec_expression}

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
  {_unfold(relation)}
  rcases h with ⟨{hypotheses}, _⟩
  unfold spec
{boolean_intro}{rendered_core_proof}
"""


def _common_factor(
    first: tuple[str, str],
    second: tuple[str, str],
    label: str,
) -> tuple[str, str, str]:
    matches = [
        (left_index, right_index)
        for left_index, left in enumerate(first)
        for right_index, right in enumerate(second)
        if _compact(left) == _compact(right)
    ]
    if len(matches) != 1:
        raise ValueError(f"{label}: expected one shared selector factor")
    left_index, right_index = matches[0]
    return first[left_index], first[1 - left_index], second[1 - right_index]


def _render_select(template: Template, rows: list[str], relation: str) -> str:
    if len(rows) not in (2, 3):
        raise ValueError(f"{template.key}: point selection must have two or three rows")
    offset = len(rows) - 2
    left_x, output_x = _equation(rows[offset])
    left_y, output_y = _equation(rows[offset + 1])
    selector, delta_x, delta_y = _common_factor(
        _product(left_x),
        _product(left_y),
        template.key,
    )
    if offset:
        boolean_left, boolean_right = _equation(rows[0])
        if _compact(boolean_right) not in {"0", "0:F", "(0:F)"}:
            raise ValueError(f"{template.key}: selector Boolean row has nonzero output")
        selector_wire = _wire(selector)
        if selector_wire is None:
            raise ValueError(f"{template.key}: selector is not a local wire")
        factors = _product(boolean_left)
        if not (
            (
                _compact(factors[0]) == _compact(selector)
                and _is_one_minus_wire(factors[1], selector_wire)
            )
            or (
                _compact(factors[1]) == _compact(selector)
                and _is_one_minus_wire(factors[0], selector_wire)
            )
        ):
            raise ValueError(
                f"{template.key}: Boolean row does not constrain the point selector"
            )
    selector = _qualify(selector, relation)
    delta_x = _qualify(delta_x, relation)
    delta_y = _qualify(delta_y, relation)
    output_x = _qualify(output_x, relation)
    output_y = _qualify(output_y, relation)
    boolean_spec = ""
    boolean_proof = ""
    spec_prefix = ""
    if offset:
        boolean_spec = f"""def selectorIsBoolean (rho : Nat → F) : Prop :=
  selector rho = 0 ∨ selector rho = 1

"""
        spec_prefix = "selectorIsBoolean rho ∧\n    "
        boolean_proof = f"""  constructor
  · have hboolean : selector rho * (1 - selector rho) = 0 := by
      unfold selector
      linear_combination h0
    rcases mul_eq_zero.mp hboolean with hzero | hone
    · exact Or.inl hzero
    · right
      linear_combination -hone
  · constructor
    · unfold selectedX selector deltaX
      exact h1.symm
    · unfold selectedY selector deltaY
      exact h2.symm
"""
        hypotheses = "h0, h1, h2"
    else:
        boolean_proof = """  constructor
  · unfold selectedX selector deltaX
    exact h0.symm
  · unfold selectedY selector deltaY
    exact h1.symm
"""
        hypotheses = "h0, h1"
    return f"""def selector (rho : Nat → F) : F :=
  {selector}

def deltaX (rho : Nat → F) : F :=
  {delta_x}

def deltaY (rho : Nat → F) : F :=
  {delta_y}

def selectedX (rho : Nat → F) : F :=
  {output_x}

def selectedY (rho : Nat → F) : F :=
  {output_y}

{boolean_spec}def spec (rho : Nat → F) : Prop :=
  {spec_prefix}selectedX rho = selector rho * deltaX rho ∧
    selectedY rho = selector rho * deltaY rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
  {_unfold(relation)}
  rcases h with ⟨{hypotheses}, _⟩
  unfold spec
{boolean_proof}"""


def _render_field_select(
    template: Template,
    rows: list[str],
    relation: str,
) -> str:
    if len(rows) != 1:
        raise ValueError(f"{template.key}: field selection must have one row")
    left, output = _equation(rows[0])
    selector, delta = _product(left)
    selector = _qualify(selector, relation)
    delta = _qualify(delta, relation)
    output = _qualify(output, relation)
    return f"""def selector (rho : Nat → F) : F :=
  {selector}

def delta (rho : Nat → F) : F :=
  {delta}

def selected (rho : Nat → F) : F :=
  {output}

def spec (rho : Nat → F) : Prop :=
  selected rho = selector rho * delta rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
  {_unfold(relation)}
  rcases h with ⟨h0, _⟩
  unfold spec selected selector delta
  simpa [mul_assoc] using h0.symm
"""


def _render_dummy_mux(template: Template, rows: list[str], relation: str) -> str:
    if len(rows) != 3:
        raise ValueError(f"{template.key}: deployed dummy mux must have three rows")
    real, real_output = _equation(rows[0])
    synthetic, synthetic_output = _equation(rows[1])
    output, combined = _equation(rows[2])
    real_wire = _wire(real_output)
    synthetic_wire = _wire(synthetic_output)
    if real_wire is None or synthetic_wire is None:
        raise ValueError(f"{template.key}: mux contributions are not wires")
    combined_wires = tuple(_wire(term) for term in _split_top_all(combined, " + "))
    if (
        len(combined_wires) != 2
        or None in combined_wires
        or sorted(combined_wires) != sorted((real_wire, synthetic_wire))
    ):
        raise ValueError(f"{template.key}: mux contributions are not combined exactly")
    real = _qualify(real, relation)
    synthetic = _qualify(synthetic, relation)
    output = _qualify(output, relation)
    return f"""def realContribution (rho : Nat → F) : F :=
  {real}

def syntheticContribution (rho : Nat → F) : F :=
  {synthetic}

def output (rho : Nat → F) : F :=
  {output}

def spec (rho : Nat → F) : Prop :=
  output rho = realContribution rho + syntheticContribution rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
  {_unfold(relation)}
  rcases h with ⟨h0, h1, h2, _⟩
  unfold spec output realContribution syntheticContribution
  linear_combination -h0 - h1 + h2
"""


def render(template: Template) -> str:
    rows = _rows(template.name, template.rows)
    prelude, relation, namespace = _prelude(template)
    if template.op == "assert.eq_if":
        body = _render_eq_if(template, rows, relation)
    elif template.op == "decaf.assert_equivalent_if":
        body = _render_equivalent_if(template, rows, relation)
    elif template.op == "select.field":
        body = _render_field_select(template, rows, relation)
    elif template.op == "select.point":
        body = _render_select(template, rows, relation)
    elif template.op == "dummy.mux":
        body = _render_dummy_mux(template, rows, relation)
    else:
        raise ValueError(f"{template.key}: unsupported conditional operation")
    rendered = f"{prelude}{body}\nend {namespace}\n"
    for marker in (
        "spec := relation",
        "fun _ h => h",
        "representativeRho",
        "representativeSeating",
    ):
        if marker in rendered:
            raise ValueError(f"{template.key}: forbidden semantic marker {marker!r}")
    return rendered


def generated_files() -> dict[Path, str]:
    outputs = {
        OUT / f"{template.name}.lean": render(template)
        for template in templates()
    }
    if len(outputs) != len(templates()):
        raise ValueError("conditional semantic provider ownership is incomplete")
    return outputs
