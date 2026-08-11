#!/usr/bin/env python3
"""Recover and render exact support for the deployed Transfer ACK Window2 body."""

from __future__ import annotations

import argparse
import gzip
import re
from pathlib import Path

import formal_json
import window2_recovery as window2
from write_if_changed import write_if_changed


ROOT = Path(__file__).resolve().parents[4]
LEAN = ROOT / "tools/gnark/lean"
RELATIONS = LEAN / "ShielddGnarkFormal/Deployed/Templates/Relations"
OUT = LEAN / "ShielddGnarkFormal/Deployed/Templates/Semantics"
INVENTORY = ROOT / "tools/gnark/artifacts/certified-template-inventory.json"
CANONICAL = (
    ROOT
    / "tools/gnark/artifacts/proof-template-relations"
    / "e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.sr1cs.gz"
)

NAME = "TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1"
KEY = "decaf.ack@e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1"
ROW_COUNT = 3010
WIRE_COUNT = 3013
BITS = 251
ORDER = 8444461749428370424248824938781546531375899335154063827935233455917409239041
RELATION = f"Shieldd.GnarkFormal.Deployed.Templates.Relations.{NAME}"
RELATION_MODULE = RELATION.replace("Shieldd.GnarkFormal", "ShielddGnarkFormal")
NAMESPACE = f"Shieldd.GnarkFormal.Deployed.Templates.Semantics.{NAME}.AckSupport"
SEMANTICS_MODULE = f"ShielddGnarkFormal.Deployed.Templates.Semantics.{NAME}"
WINDOW_CHUNK = 6
MODULE_TAG = "AckWindow2"
BIT_WIRE_START = 1
LOW_BIT_BOOLEAN_ROW = 0

# Populated only after the canonical relation and its exact Window2 trace have
# both passed recovery.  The proof renderers deliberately consume that checked
# state instead of reparsing textual Lean expressions.
_CANONICAL_ROWS: list[window2.Row] = []
_TRACE: window2.Window2Trace


def _module(suffix: str) -> str:
    return SEMANTICS_MODULE + suffix


def _support_module(suffix: str) -> str:
    return _module(MODULE_TAG + suffix)


def _header(*imports: str) -> str:
    return (
        "".join(f"import {module}\n" for module in imports)
        + "\nset_option maxRecDepth 1000000\n"
        + "set_option maxHeartbeats 20000000\n\n"
        + f"namespace {NAMESPACE}\n\n"
        + "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n"
        + "open Bool (toZMod)\n\n"
    )


def _footer() -> str:
    return f"\nend {NAMESPACE}\n"


def _relation_source() -> str:
    shards = sorted(
        RELATIONS.glob(f"{NAME}Defs*.lean"),
        key=lambda path: int(path.stem.removeprefix(NAME + "Defs")),
    )
    facade = RELATIONS / f"{NAME}.lean"
    if not shards or not facade.is_file():
        raise ValueError("missing exact normalized ACK relation")
    indices = [int(path.stem.removeprefix(NAME + "Defs")) for path in shards]
    if indices != list(range(len(indices))):
        raise ValueError("ACK relation shards are not contiguous")
    source = "\n".join(path.read_text() for path in (*shards, facade))
    rows = {int(value) for value in re.findall(r"def relationRow(\d+) ", source)}
    if rows != set(range(ROW_COUNT)):
        raise ValueError("ACK normalized rows are not exact")
    return source


def _canonical_rows(path: Path = CANONICAL) -> list[window2.Row]:
    rows: list[window2.Row] = []
    with gzip.open(path, "rt") as source:
        for line in source:
            if not line.strip().startswith("(constraint "):
                continue
            sides: list[window2.Lc] = []
            for body in re.findall(r"\[([^]]*)\]", line):
                value: window2.Lc = {}
                for coefficient, wire in re.findall(
                    r"\((-?(?:0x[0-9a-fA-F]+|[0-9]+)) ([0-9]+)\)", body
                ):
                    index = int(wire)
                    value[index] = (
                        value.get(index, 0) + int(coefficient, 0)
                    ) % ORDER
                sides.append({
                    wire: coefficient
                    for wire, coefficient in value.items()
                    if coefficient
                })
            if len(sides) != 3:
                raise ValueError("ACK canonical row does not have three sides")
            rows.append((sides[0], sides[1], sides[2]))
    if len(rows) != ROW_COUNT:
        raise ValueError(
            f"ACK canonical relation has {len(rows)} rows, expected {ROW_COUNT}"
        )
    return rows


def _singleton(side: window2.Lc, label: str) -> int:
    if len(side) != 1:
        raise ValueError(f"ACK {label}: expected one wire, got {side}")
    wire, coefficient = next(iter(side.items()))
    if wire == 0 or coefficient != 1:
        raise ValueError(f"ACK {label}: expected a positive unit wire, got {side}")
    return wire


def _recover_boundary(rows: list[window2.Row]) -> dict[str, object]:
    one = {0: 1}
    minus_one = ORDER - 1
    for index in range(BITS):
        expected = ({index + 1: 1}, {0: 1, index + 1: minus_one}, {})
        if rows[index] != expected:
            raise ValueError(f"ACK Boolean row {index} drifted")
    recomposition = rows[BITS]
    if recomposition[0] != one:
        raise ValueError("ACK recomposition row lost its unit multiplier")
    expected_bits = {
        index + 1: pow(2, index, ORDER) for index in range(BITS)
    }
    if recomposition[1] != expected_bits:
        raise ValueError("ACK recomposition coefficients or bit seating drifted")
    scalar = _singleton(recomposition[2], "scalar output")

    def affine_base(side: window2.Lc, label: str) -> tuple[int, int]:
        nonconstant = {wire: coefficient for wire, coefficient in side.items() if wire}
        if len(nonconstant) != 1:
            raise ValueError(f"ACK {label} is not one affine boundary wire")
        wire, coefficient = next(iter(nonconstant.items()))
        if coefficient != 1:
            raise ValueError(f"ACK {label} boundary coefficient drifted")
        return wire, side.get(0, 0)

    # Row 252 is the first `Double(base)` multiplication and therefore exposes
    # both exact affine boundary coordinates.
    base_x_lc, base_y_lc = rows[BITS + 1][0], rows[BITS + 1][1]
    base_x, base_x_const = affine_base(base_x_lc, "base X")
    base_y, base_y_const = affine_base(base_y_lc, "base Y")
    if base_x == base_y or scalar in {base_x, base_y}:
        raise ValueError("ACK scalar/base boundary wires alias")
    return {
        "scalar": scalar,
        "base_x": base_x,
        "base_y": base_y,
        "base_x_const": base_x_const,
        "base_y_const": base_y_const,
        "base": window2.PointLC.of(base_x_lc, base_y_lc),
    }


def _recover_window2(
    rows: list[window2.Row], boundary: dict[str, object]
) -> window2.Window2Trace:
    trace = window2.recover_window2(
        rows,
        start_row=BITS + 1,
        bit_wires=tuple(range(1, BITS + 1)),
        base=boundary["base"],
        order=ORDER,
        expected_end_row=ROW_COUNT,
    )
    if trace.owned_rows != tuple(range(BITS + 1, ROW_COUNT)):
        raise ValueError("ACK Window2 row ownership is not exhaustive")
    return trace


def _relation_parts(source: str) -> list[list[int]]:
    parts: list[list[int]] = []
    for match in re.finditer(
        r"def relationPart(\d+) \(rho : Nat -> F\) : Prop :=\n(.*?)"
        r"(?=\n\ndef relationPart|\n\ndef relation \()",
        source,
        re.S,
    ):
        index = int(match.group(1))
        if index != len(parts):
            raise ValueError(f"ACK non-contiguous relation part {index}")
        parts.append([
            int(row) for row in re.findall(r"relationRow(\d+) rho", match.group(2))
        ])
    if [row for part in parts for row in part] != list(range(ROW_COUNT)):
        raise ValueError("ACK relation parts do not own every row exactly")
    return parts


def _emit_unpack(lines: list[str], parts: list[list[int]], used: set[int]) -> None:
    names = [f"p{i}" if used.intersection(rows) else "_" for i, rows in enumerate(parts)]
    lines.append(f"  unfold {RELATION}.relation at h\n")
    lines.append("  rcases h with ⟨\n")
    for start in range(0, len(names), 10):
        lines.append("    " + ", ".join(names[start : start + 10]) + ",\n")
    lines[-1] = lines[-1].rstrip(",\n") + "\n"
    lines.append("  ⟩\n")
    for part_index, rows in enumerate(parts):
        if not used.intersection(rows):
            continue
        lines.append(
            f"  unfold {RELATION}.relationPart{part_index} at p{part_index}\n"
        )
        row_names = [f"r{row}" if row in used else "_" for row in rows]
        if len(row_names) == 1:
            lines.append(f"  have {row_names[0]} := p{part_index}\n")
        else:
            lines.append(f"  rcases p{part_index} with ⟨{', '.join(row_names)}⟩\n")
    for row in sorted(used):
        lines.append(f"  unfold {RELATION}.relationRow{row} at r{row}\n")


def _expr(value: window2.Lc) -> str:
    return window2.render_lc(value, order=ORDER, constant_unsigned=True)


def _point(value: window2.PointLC) -> str:
    return window2.render_point(value, order=ORDER, constant_unsigned=True)


def _defs(trace: window2.Window2Trace) -> str:
    lines = [
        f"import {RELATION_MODULE}\n",
        "import ShielddGnarkFormal.Deployed.PrimeOrder\n",
        "import ShielddGnarkFormal.ChoiceFreeZModCast\n",
        "import ShielddGnarkFormal.Window2ScalarMulBridge\n\n",
        "set_option maxRecDepth 1000000\n",
        "set_option maxHeartbeats 20000000\n\n",
        f"namespace {NAMESPACE}\n\n",
        "attribute [-instance] ZMod.instField\n",
        "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n\n",
        f"abbrev Order : Nat := {ORDER}\n",
        "abbrev F := EdwardsBridge.F\n\n",
        "local instance : Fact (Nat.Prime Order) :=\n",
        "  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩\n\n",
        "theorem order_cast_zero : (Order : F) = 0 := by\n",
        "  exact Shieldd.GnarkFormal.ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq\n",
        "    Order Order 0 (by decide) (by decide)\n\n",
        f"def scalarBits (rho : Nat → F) : List.Vector F {BITS} :=\n",
        f"  List.Vector.ofFn (fun i : Fin {BITS} => rho ({BIT_WIRE_START} + i.val))\n\n",
        f"theorem scalarBits_get (rho : Nat → F) (i : Nat) (hi : i < {BITS}) :\n",
        f"    (scalarBits rho)[i]! = rho ({BIT_WIRE_START} + i) := by\n",
        "  rw [getElem!_pos (scalarBits rho) i (by simpa using hi)]\n",
        "  conv_lhs => rw [List.Vector.getElem_def]\n",
        "  simp only [scalarBits, List.Vector.toList_ofFn, List.getElem_ofFn]\n\n",
        f"theorem rho_bit_of_map (rho : Nat → F) (bits : List.Vector Bool {BITS})\n",
        "    (hbits : scalarBits rho = bits.map Bool.toZMod)\n",
        f"    (i : Nat) (hi : i < {BITS}) :\n",
        f"    rho ({BIT_WIRE_START} + i) = Bool.toZMod bits[i]! := by\n",
        "  rw [← scalarBits_get rho i hi, hbits]\n",
        "  rw [getElem!_pos (bits.map Bool.toZMod) i (by simpa using hi),\n",
        "    getElem!_pos bits i (by simpa using hi), List.Vector.getElem_map]\n\n",
        "theorem scalarBits_get_of_map (rho : Nat → F)\n",
        f"    (bits : List.Vector Bool {BITS})\n",
        "    (hbits : scalarBits rho = bits.map Bool.toZMod)\n",
        f"    (i : Nat) (hi : i < {BITS}) :\n",
        "    (scalarBits rho)[i]! = Bool.toZMod bits[i]! := by\n",
        "  rw [scalarBits_get rho i hi]\n",
        "  exact rho_bit_of_map rho bits hbits i hi\n\n",
        f"def base (rho : Nat → F) : EdwardsBridge.Point := {_point(trace.base)}\n",
        f"def twice (rho : Nat → F) : EdwardsBridge.Point := {_point(trace.twice.output)}\n",
        f"def triple (rho : Nat → F) : EdwardsBridge.Point := {_point(trace.triple.output)}\n",
        f"def initial (rho : Nat → F) : EdwardsBridge.Point := {_point(trace.initial_lookup.output)}\n",
    ]
    for index, block in enumerate(trace.windows):
        lines.extend([
            f"def shiftOnce{index} (rho : Nat → F) : EdwardsBridge.Point := "
            f"{_point(block.first_double.output)}\n",
            f"def shifted{index} (rho : Nat → F) : EdwardsBridge.Point := "
            f"{_point(block.second_double.output)}\n",
            f"def digit{index} (rho : Nat → F) : EdwardsBridge.Point := "
            f"{_point(block.lookup.output)}\n",
            f"def acc{index + 1} (rho : Nat → F) : EdwardsBridge.Point := "
            f"{_point(block.addition.output)}\n",
        ])
    lines.append(
        f"def acc0 (rho : Nat → F) : EdwardsBridge.Point := "
        f"{_point(trace.initial_lookup.output)}\n"
    )
    if trace.tail is None:
        raise ValueError("ACK Window2 trace unexpectedly has no low-bit tail")
    lines.extend([
        f"def tailShift (rho : Nat → F) : EdwardsBridge.Point := "
        f"{_point(trace.tail.double.output)}\n",
        f"def tailSum (rho : Nat → F) : EdwardsBridge.Point := "
        f"{_point(trace.tail.addition.output)}\n",
        f"def output (rho : Nat → F) : EdwardsBridge.Point := {_point(trace.output)}\n\n",
        f"end {NAMESPACE}\n",
    ])
    return "".join(lines)


def _double_proof(
    name: str,
    block: window2.DoubleBlock,
    source_term: str,
    output_term: str,
    curve_hyp: str,
) -> str:
    r0, r1, r2, r3, r4 = block.rows
    xy = _singleton(_CANONICAL_ROWS[r0][2], f"double {r0} xy")
    xx = _singleton(_CANONICAL_ROWS[r1][2], f"double {r1} xx")
    yy = _singleton(_CANONICAL_ROWS[r2][2], f"double {r2} yy")
    sx, sy = _expr(block.source.x_lc()), _expr(block.source.y_lc())
    ox, oy = _expr(block.output.x_lc()), _expr(block.output.y_lc())
    source_def = source_term.split()[0]
    output_def = output_term.split()[0]
    return f"""  have {name} : EdwardsBridge.doubleSpec ({source_term}) ({output_term}) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      ({sx}) ({sy}) (rho {xy}) (rho {xx}) (rho {yy}) ({ox}) ({oy})
      (by simpa [{source_def}] using {curve_hyp})
      (by linear_combination r{r0})
      (by linear_combination r{r1})
      (by linear_combination r{r2})
      (by linear_combination r{r3})
      (by linear_combination r{r4})
    simpa [{source_def}, {output_def}] using hraw
"""


def _add_proof(
    name: str,
    block: window2.AddBlock,
    left_term: str,
    right_term: str,
    output_term: str,
    left_curve: str,
    right_curve: str,
) -> str:
    r0, r1, r2, r3, r4, r5 = block.rows
    t0 = _singleton(_CANONICAL_ROWS[r0][2], f"add {r0} t0")
    t1 = _singleton(_CANONICAL_ROWS[r1][2], f"add {r1} t1")
    t2 = _singleton(_CANONICAL_ROWS[r2][2], f"add {r2} t2")
    t3 = _singleton(_CANONICAL_ROWS[r3][2], f"add {r3} t3")
    px, py = _expr(block.left.x_lc()), _expr(block.left.y_lc())
    qx, qy = _expr(block.right.x_lc()), _expr(block.right.y_lc())
    ox, oy = _expr(block.output.x_lc()), _expr(block.output.y_lc())
    unfold = ", ".join(dict.fromkeys(
        [left_term.split()[0], right_term.split()[0], output_term.split()[0]]
    ))
    left_def = left_term.split()[0]
    right_def = right_term.split()[0]
    return f"""  have {name} : EdwardsBridge.addSpec ({left_term}) ({right_term}) ({output_term}) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      ({px}) ({py}) ({qx}) ({qy})
      (rho {t0}) (rho {t1}) (rho {t2}) (rho {t3}) ({ox}) ({oy})
      (by simpa [{left_def}] using {left_curve})
      (by simpa [{right_def}] using {right_curve})
      (by linear_combination r{r0})
      (by linear_combination r{r1})
      (by linear_combination r{r2})
      (by linear_combination r{r3})
      (by linear_combination r{r4})
      (by linear_combination r{r5})
    simpa [{unfold}] using hraw
"""


def _lookup_proof(
    name: str,
    block: window2.LookupBlock,
    base_term: str,
    twice_term: str,
    triple_term: str,
    output_term: str,
) -> str:
    clauses: list[str] = []
    identity = window2.PointLC.of({}, {0: 1})
    for axis, offset in (("x", 0), ("y", 3)):
        r0, r1, r2 = block.rows[offset : offset + 3]
        first = _singleton(_CANONICAL_ROWS[r0][2], f"lookup {r0} first")
        second = _singleton(_CANONICAL_ROWS[r1][2], f"lookup {r1} second")
        i0 = _expr(getattr(identity, f"{axis}_lc")())
        i1 = _expr(getattr(_TRACE.twice.output, f"{axis}_lc")())
        tmp1 = f"rho {first} + ({i1}) - ({i0})"
        raw_constant = (
            getattr(_TRACE.triple.output, f"{axis}_lc")().get(0, 0)
            + getattr(identity, f"{axis}_lc")().get(0, 0)
            - getattr(_TRACE.base, f"{axis}_lc")().get(0, 0)
            - getattr(_TRACE.twice.output, f"{axis}_lc")().get(0, 0)
        )
        row_left, row_right, _ = _CANONICAL_ROWS[r0]
        low_lc = {block.low_wire: 1}
        if row_left == low_lc:
            row_constant = row_right.get(0, 0)
        elif row_right == low_lc:
            row_constant = row_left.get(0, 0)
        else:
            raise ValueError(f"lookup row {r0} lost its low-bit factor")
        delta = raw_constant - row_constant
        if delta % ORDER:
            raise ValueError(f"lookup row {r0} constant is not congruent")
        quotient = delta // ORDER
        order_adjustment = ""
        if quotient:
            sign = "+" if quotient > 0 else "-"
            magnitude = abs(quotient)
            factor = "" if magnitude == 1 else f"({magnitude} : F) * "
            order_adjustment = (
                f" {sign} {factor}(rho {block.low_wire}) * order_cast_zero"
            )
        clauses.append(f"""      · refine ⟨({tmp1}), rho {second}, ?_, ?_, ?_⟩
        · linear_combination r{r0}{order_adjustment}
        · linear_combination r{r1}
        · linear_combination r{r2}
""")
    unfold = ", ".join(dict.fromkeys([
        base_term.split()[0], twice_term.split()[0], triple_term.split()[0],
        output_term.split()[0],
    ]))
    return f"""  have {name} : Window2ScalarMulBridge.Lookup2Rel
      (rho {block.high_wire}) (rho {block.low_wire})
      ({base_term}) ({twice_term}) ({triple_term}) ({output_term}) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho {block.high_wire}) (rho {block.low_wire})
        {_point(_TRACE.base)} {_point(_TRACE.twice.output)}
        {_point(_TRACE.triple.output)} {_point(block.output)} := by
      constructor
{''.join(clauses)}    simpa [{unfold}] using hraw
"""


def _on_curve_after_double(
    name: str, source_term: str, output_term: str, source_curve: str, spec: str
) -> str:
    return f"""  have {name} : EdwardsBridge.onCurve ({output_term}) := by
    have heq := EdwardsBridge.doubleSpec_eq ({source_term}) ({output_term})
      {source_curve} {spec}
    rw [heq]
    exact EdwardsBridge.double_onCurve ({source_term}) {source_curve}
"""


def _on_curve_after_add(
    name: str,
    left_term: str,
    right_term: str,
    output_term: str,
    left_curve: str,
    right_curve: str,
    spec: str,
) -> str:
    return f"""  have {name} : EdwardsBridge.onCurve ({output_term}) := by
    have heq := EdwardsBridge.addSpec_eq ({left_term}) ({right_term}) ({output_term})
      {left_curve} {right_curve} {spec}
    rw [heq]
    exact EdwardsBridge.add_onCurve ({left_term}) ({right_term}) {left_curve} {right_curve}
"""


def _bits(parts: list[list[int]], scalar: int) -> str:
    lines = [
        _header(
            _support_module("Defs"),
            "ShielddGnarkFormal.Deployed.Templates.Semantics.BinaryRecomposition",
            "ShielddGnarkFormal.RvkToBinaryChoiceFree",
        ),
        "theorem ack_toBinary (rho : Nat → F)\n",
        f"    (h : {RELATION}.relation rho) :\n",
        f"    GatesDef.to_binary (rho {scalar}) 251 (scalarBits rho) := by\n",
    ]
    _emit_unpack(lines, parts, set(range(252)))
    lc_names = " ".join(
        f"{RELATION}.relationLc0Part{i}" for i in range(8)
    )
    lines.extend([
        "  have hrecover := recover_ofFn_eq_recBits rho 1 251\n",
        f"  have hacc : powSumAcc rho 0 1 1 251 = rho {scalar} := by\n",
        f"    unfold {RELATION}.relationLc0 {lc_names} at r251\n",
        "    simp only [powSumAcc]\n",
        "    linear_combination r251\n",
        f"  have hrec : recover_binary_zmod' (scalarBits rho) = rho {scalar} := by\n",
        "    simp only [scalarBits]\n",
        "    rw [hrecover]\n",
        "    rw [powSumAcc_eq] at hacc\n",
        "    simpa using hacc\n",
        "  apply Shieldd.GnarkFormal.RvkToBinaryChoiceFree.to_binary_of_deployed\n",
        f"      (rho {scalar}) (scalarBits rho)\n",
        "  · intro i hi\n",
        "    have key : (scalarBits rho)[i] = rho (1 + i) := by\n",
        "      conv_lhs => rw [List.Vector.getElem_def]\n",
        "      simp only [scalarBits, List.Vector.toList_ofFn, List.getElem_ofFn]\n",
        "    have hgoal : rho (1 + i) * (1 - rho (1 + i)) = 0 := by\n",
        "      interval_cases i\n",
    ])
    lines.extend(f"      · linear_combination r{i}\n" for i in range(BITS))
    lines.extend([
        "    rw [key]\n",
        "    exact hgoal\n",
        "  · exact hrec\n",
        _footer(),
    ])
    return "".join(lines)


def _prelude(parts: list[list[int]], trace: window2.Window2Trace) -> str:
    used = set(trace.twice.rows + trace.triple.rows + trace.initial_lookup.rows)
    lines = [
        _header(_support_module("Defs")),
        "theorem table_and_initial (rho : Nat → F)\n",
        f"    (h : {RELATION}.relation rho)\n",
        "    (hbase : EdwardsBridge.onCurve (base rho)) :\n",
        "    Window2ScalarMulBridge.TableRel (base rho) (twice rho) (triple rho) ∧\n",
        "      Window2ScalarMulBridge.Lookup2Rel\n",
        f"        (scalarBits rho)[{BITS - 1}]! (scalarBits rho)[{BITS - 2}]!\n",
        "        (base rho) (twice rho) (triple rho) (initial rho) := by\n",
    ]
    _emit_unpack(lines, parts, used)
    lines.append(_double_proof(
        "htwice", trace.twice, "base rho", "twice rho", "hbase"
    ))
    lines.append(_on_curve_after_double(
        "htwiceOn", "base rho", "twice rho", "hbase", "htwice"
    ))
    lines.append(_add_proof(
        "htriple", trace.triple, "twice rho", "base rho", "triple rho",
        "htwiceOn", "hbase"
    ))
    lines.append(_lookup_proof(
        "hlookup", trace.initial_lookup, "base rho", "twice rho",
        "triple rho", "initial rho"
    ))
    lines.extend([
        "  refine ⟨⟨htwice, htriple⟩, ?_⟩\n",
        "  simpa only [scalarBits_get] using hlookup\n",
        _footer(),
    ])
    return "".join(lines)


def _window_theorem(
    parts: list[list[int]], trace: window2.Window2Trace,
    index: int, block: window2.WindowBlock,
) -> str:
    high = block.high_index
    low = high - 1
    used = set(
        block.first_double.rows + block.second_double.rows
        + block.lookup.rows + block.addition.rows
    )
    lines: list[str] = [
        f"theorem window{index} (rho : Nat → F)\n",
        f"    (h : {RELATION}.relation rho)\n",
        f"    (bits : List.Vector Bool {BITS})\n",
        "    (hbits : scalarBits rho = bits.map Bool.toZMod)\n",
        "    (hbase : EdwardsBridge.onCurve (base rho))\n",
        "    (htable : Window2ScalarMulBridge.TableRel\n",
        "      (base rho) (twice rho) (triple rho))\n",
        f"    (hacc : EdwardsBridge.onCurve (acc{index} rho)) :\n",
        "    Window2ScalarMulBridge.WindowRel\n",
        f"        (scalarBits rho)[{high}]! (scalarBits rho)[{low}]!\n",
        f"        (base rho) (twice rho) (triple rho) (acc{index} rho)\n",
        f"        (acc{index + 1} rho) ∧\n",
        f"      EdwardsBridge.onCurve (acc{index + 1} rho) := by\n",
    ]
    _emit_unpack(lines, parts, used)
    lines.append(_double_proof(
        "hshift1", block.first_double, f"acc{index} rho",
        f"shiftOnce{index} rho", "hacc"
    ))
    lines.append(_on_curve_after_double(
        "hshift1On", f"acc{index} rho", f"shiftOnce{index} rho",
        "hacc", "hshift1"
    ))
    lines.append(_double_proof(
        "hshift2", block.second_double, f"shiftOnce{index} rho",
        f"shifted{index} rho", "hshift1On"
    ))
    lines.append(_on_curve_after_double(
        "hshift2On", f"shiftOnce{index} rho", f"shifted{index} rho",
        "hshift1On", "hshift2"
    ))
    lines.append(_lookup_proof(
        "hlookup", block.lookup, "base rho", "twice rho", "triple rho",
        f"digit{index} rho"
    ))
    lines.extend([
        f"  have hhigh : rho {block.lookup.high_wire} =\n",
        f"      Bool.toZMod bits[{high}]! := by\n",
        f"    simpa only using rho_bit_of_map rho bits hbits {high} (by decide +kernel)\n",
        f"  have hlow : rho {block.lookup.low_wire} =\n",
        f"      Bool.toZMod bits[{low}]! := by\n",
        f"    simpa only using rho_bit_of_map rho bits hbits {low} (by decide +kernel)\n",
        "  rcases Window2ScalarMulBridge.tableRel_semantic\n",
        "      (base rho) (twice rho) (triple rho) hbase htable with\n",
        "    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩\n",
        "  have hlookupBool := hlookup\n",
        "  rw [hhigh, hlow] at hlookupBool\n",
        "  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic\n",
        f"    bits[{high}]! bits[{low}]! (base rho) (twice rho) (triple rho)\n",
        f"    (digit{index} rho) htwiceEq htripleEq hlookupBool\n",
        f"  have hdigitOn : EdwardsBridge.onCurve (digit{index} rho) := by\n",
        "    rw [hdigit]\n",
        f"    cases bits[{high}]! <;> cases bits[{low}]!\n",
        "    · exact EdwardsBridge.identity_onCurve\n",
        "    · exact hbase\n",
        "    · simpa [htwiceEq] using htwiceOn\n",
        "    · simpa [htripleEq] using htripleOn\n",
    ])
    lines.append(_add_proof(
        "hadd", block.addition, f"shifted{index} rho", f"digit{index} rho",
        f"acc{index + 1} rho", "hshift2On", "hdigitOn"
    ))
    lines.append(_on_curve_after_add(
        "hnextOn", f"shifted{index} rho", f"digit{index} rho",
        f"acc{index + 1} rho", "hshift2On", "hdigitOn", "hadd"
    ))
    lines.extend([
        "  have hwindowRaw : Window2ScalarMulBridge.WindowRel\n",
        f"      (rho {block.lookup.high_wire}) (rho {block.lookup.low_wire})\n",
        f"      (base rho) (twice rho) (triple rho) (acc{index} rho)\n",
        f"      (acc{index + 1} rho) :=\n",
        f"    ⟨shiftOnce{index} rho, shifted{index} rho, digit{index} rho,\n",
        "      hshift1, hshift2, hlookup, hadd⟩\n",
        "  refine ⟨?_, hnextOn⟩\n",
        "  simpa only [scalarBits_get] using hwindowRaw\n",
    ])
    return "".join(lines)


def _windows(
    parts: list[list[int]], trace: window2.Window2Trace,
    start: int, stop: int,
) -> str:
    lines = [_header(_support_module("Defs"))]
    for index in range(start, stop):
        lines.append(_window_theorem(parts, trace, index, trace.windows[index]))
        lines.append("\n")
    lines.append(_footer())
    return "".join(lines)


def _tail(parts: list[list[int]], trace: window2.Window2Trace) -> str:
    if trace.tail is None:
        raise ValueError("ACK Window2 trace unexpectedly has no low-bit tail")
    tail = trace.tail
    used = {
        LOW_BIT_BOOLEAN_ROW,
        *tail.double.rows,
        *tail.addition.rows,
        *tail.select_rows,
    }
    lines = [
        _header(_support_module("Defs")),
        "theorem final_relation (rho : Nat → F)\n",
        f"    (h : {RELATION}.relation rho)\n",
        "    (hbase : EdwardsBridge.onCurve (base rho))\n",
        f"    (hacc : EdwardsBridge.onCurve (acc{len(trace.windows)} rho)) :\n",
        "    Window2ScalarMulBridge.FinalRel (scalarBits rho)[0]!\n",
        f"      (base rho) (acc{len(trace.windows)} rho) (output rho) := by\n",
    ]
    _emit_unpack(lines, parts, used)
    lines.append(_double_proof(
        "hshift", tail.double, f"acc{len(trace.windows)} rho",
        "tailShift rho", "hacc"
    ))
    lines.append(_on_curve_after_double(
        "hshiftOn", f"acc{len(trace.windows)} rho", "tailShift rho",
        "hacc", "hshift"
    ))
    lines.append(_add_proof(
        "hsum", tail.addition, "tailShift rho", "base rho", "tailSum rho",
        "hshiftOn", "hbase"
    ))
    rx, ry = tail.select_rows
    lines.extend([
        f"  have hbit : GatesDef.is_bool (rho {trace.tail.low_wire}) := by\n",
        "    unfold GatesDef.is_bool\n",
        f"    linear_combination r{LOW_BIT_BOOLEAN_ROW}\n",
        f"  have hselectX : GatesDef.select (rho {trace.tail.low_wire})\n",
        "      (tailSum rho).x (tailShift rho).x (output rho).x := by\n",
        "    refine ⟨hbit, ?_⟩\n",
        "    unfold tailSum tailShift output\n",
        f"    linear_combination -r{rx}\n",
        f"  have hselectY : GatesDef.select (rho {trace.tail.low_wire})\n",
        "      (tailSum rho).y (tailShift rho).y (output rho).y := by\n",
        "    refine ⟨hbit, ?_⟩\n",
        "    unfold tailSum tailShift output\n",
        f"    linear_combination -r{ry}\n",
        f"  have hraw : Window2ScalarMulBridge.FinalRel (rho {trace.tail.low_wire})\n",
        f"      (base rho) (acc{len(trace.windows)} rho) (output rho) :=\n",
        "    ⟨tailShift rho, tailSum rho, hshift, hsum, hselectX, hselectY⟩\n",
        "  simpa only [scalarBits_get] using hraw\n",
        _footer(),
    ])
    return "".join(lines)


def _body(trace: window2.Window2Trace) -> str:
    chunk_count = (len(trace.windows) + WINDOW_CHUNK - 1) // WINDOW_CHUNK
    imports = [
        _support_module("Prelude"),
        *(
            _support_module(f"Windows{index:02d}")
            for index in range(chunk_count)
        ),
        _support_module("Tail"),
    ]
    lines = [
        _header(*imports),
        "theorem body_relation (rho : Nat → F)\n",
        f"    (h : {RELATION}.relation rho)\n",
        f"    (bits : List.Vector Bool {BITS})\n",
        "    (hbits : scalarBits rho = bits.map Bool.toZMod)\n",
        "    (hbase : EdwardsBridge.onCurve (base rho)) :\n",
        f"    Window2ScalarMulBridge.BodyRelOdd {(BITS - 1) // 2}\n",
        "      (scalarBits rho) (base rho) (output rho) := by\n",
        "  rcases table_and_initial rho h hbase with ⟨htable, hlookup⟩\n",
        "  rcases Window2ScalarMulBridge.tableRel_semantic\n",
        "      (base rho) (twice rho) (triple rho) hbase htable with\n",
        "    ⟨htwice, htriple, htwiceOn, htripleOn⟩\n",
        "  have hlookupBool : Window2ScalarMulBridge.Lookup2Rel\n",
        f"      (Bool.toZMod bits[{BITS - 1}]!)\n",
        f"      (Bool.toZMod bits[{BITS - 2}]!)\n",
        "      (base rho) (twice rho) (triple rho) (initial rho) := by\n",
        f"    rw [← scalarBits_get_of_map rho bits hbits {BITS - 1} (by decide +kernel),\n",
        f"      ← scalarBits_get_of_map rho bits hbits {BITS - 2} (by decide +kernel)]\n",
        "    exact hlookup\n",
        "  have hinitial := Window2ScalarMulBridge.lookup2Rel_semantic\n",
        f"    bits[{BITS - 1}]! bits[{BITS - 2}]! (base rho) (twice rho) (triple rho)\n",
        "    (initial rho) htwice htriple hlookupBool\n",
        "  have hinitialOn : EdwardsBridge.onCurve (initial rho) := by\n",
        "    rw [hinitial]\n",
        f"    cases bits[{BITS - 1}]! <;> cases bits[{BITS - 2}]!\n",
        "    · exact EdwardsBridge.identity_onCurve\n",
        "    · exact hbase\n",
        "    · simpa [htwice] using htwiceOn\n",
        "    · simpa [htriple] using htripleOn\n",
        "  have hacc0 : EdwardsBridge.onCurve (acc0 rho) := by\n",
        "    simpa [acc0, initial] using hinitialOn\n",
    ]
    for index in range(len(trace.windows)):
        lines.extend([
            f"  rcases window{index} rho h bits hbits hbase htable hacc{index} with\n",
            f"    ⟨hwindow{index}, hacc{index + 1}⟩\n",
        ])
    lines.extend([
        f"  have hfinal := final_relation rho h hbase hacc{len(trace.windows)}\n",
        "  refine ⟨twice rho, triple rho, initial rho, htable, hlookup, ?_⟩\n",
    ])
    for index in range(len(trace.windows)):
        lines.extend([
            "  rw [Window2ScalarMulBridge.WindowLadderK]\n",
            f"  refine ⟨acc{index + 1} rho, hwindow{index}, ?_⟩\n",
        ])
    lines.extend([
        "  simpa only [Window2ScalarMulBridge.WindowLadderK] using hfinal\n",
        _footer(),
    ])
    return "".join(lines)


def _ack(boundary: dict[str, object]) -> str:
    scalar = int(boundary["scalar"])
    return _header(
        _module("AckWindow2Bits"),
        _module("AckWindow2Body"),
        "ShielddGnarkFormal.AckBridge",
        "ShielddGnarkFormal.ChoiceFreeBinary",
    ) + f"""def bodyCircuit (rho : Nat → F) : Prop :=
  GatesDef.to_binary (rho {scalar}) 251 (scalarBits rho) ∧
    Window2ScalarMulBridge.BodyRel251
      (scalarBits rho) (base rho) (output rho)

def spec (rho : Nat → F) : Prop :=
  AckBridge.AckWindow2BodySpec
    ⟨(base rho).x, (base rho).y⟩ (rho {scalar})
    ⟨(output rho).x, (output rho).y⟩

theorem relation_sound (rho : Nat → F)
    (h : {RELATION}.relation rho) : spec rho := by
  unfold spec AckBridge.AckWindow2BodySpec
  intro hbase
  have hbaseEdwards : EdwardsBridge.onCurve (base rho) := by
    exact (AckBridge.toProtocolPoint_onCurve_iff
      (Decaf377Assumptions.Point.mk (base rho).x (base rho).y)).1
        (by simpa only [AckBridge.toProtocolPoint] using hbase)
  have hbinary := ack_toBinary rho h
  rcases ChoiceFreeBinary.exists_bool_vector_of_to_binary
      ScalarMulBridge.pow251_lt_order hbinary with
    ⟨bits, hbits, _⟩
  have hbody := body_relation rho h bits hbits hbaseEdwards
  exact AckBridge.ack_window2_body_sound
    ⟨(base rho).x, (base rho).y⟩ (rho {scalar})
    ⟨(output rho).x, (output rho).y⟩
    ⟨scalarBits rho, hbinary, hbody⟩ hbase
""" + _footer()


def _facade() -> str:
    facade_namespace = (
        f"Shieldd.GnarkFormal.Deployed.Templates.Semantics.{NAME}"
    )
    return f"""import {_module("AckWindow2Ack")}

namespace {facade_namespace}

abbrev F := {NAMESPACE}.F

def spec (rho : Nat → F) : Prop :=
  {NAMESPACE}.spec rho

theorem sound (rho : Nat → F) (h : {RELATION}.relation rho) : spec rho := by
  exact {NAMESPACE}.relation_sound rho h

end {facade_namespace}
"""


def _window2_layout(
    boundary: dict[str, object], trace: window2.Window2Trace
) -> str:
    bx, by = boundary["base_x"], boundary["base_y"]
    return _header(_support_module("Defs")) + f"""theorem reviewed_layout :
    ({trace.start_row}, {trace.end_row}, {len(trace.windows)}, {bx}, {by}) =
      (252, 3010, 124, {bx}, {by}) := by
  rfl
""" + _footer()


def generated_research_files(out: Path = OUT) -> dict[Path, str]:
    # Require agreement between extracted Lean and canonical SR1CS encodings.
    global _CANONICAL_ROWS, _TRACE
    relation_source = _relation_source()
    rows = _canonical_rows()
    boundary = _recover_boundary(rows)
    trace = _recover_window2(rows, boundary)
    parts = _relation_parts(relation_source)
    _CANONICAL_ROWS = rows
    _TRACE = trace
    outputs = {
        out / f"{NAME}AckWindow2Defs.lean": _defs(trace),
        out / f"{NAME}AckWindow2Bits.lean": _bits(
            parts, int(boundary["scalar"])
        ),
        out / f"{NAME}AckWindow2Prelude.lean": _prelude(parts, trace),
        out / f"{NAME}AckWindow2Tail.lean": _tail(parts, trace),
        out / f"{NAME}AckWindow2Body.lean": _body(trace),
        out / f"{NAME}AckWindow2Ack.lean": _ack(boundary),
        out / f"{NAME}AckWindow2Layout.lean": _window2_layout(boundary, trace),
        out / f"{NAME}.lean": _facade(),
    }
    for chunk, start in enumerate(range(0, len(trace.windows), WINDOW_CHUNK)):
        stop = min(start + WINDOW_CHUNK, len(trace.windows))
        outputs[out / f"{NAME}AckWindow2Windows{chunk:02d}.lean"] = _windows(
            parts, trace, start, stop
        )
    return outputs


def generated_files(out: Path = OUT) -> dict[Path, str]:
    inventory = formal_json.read_template_inventory(INVENTORY)
    active = {template["template_key"] for template in inventory["templates"]}
    return generated_research_files(out) if KEY in active else {}


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    outputs = generated_files()
    if args.check:
        stale = [
            str(path)
            for path, source in outputs.items()
            if not path.is_file() or path.read_text() != source
        ]
        if stale:
            raise SystemExit("stale ACK Window2 support:\n" + "\n".join(stale))
        return
    for path, source in outputs.items():
        path.parent.mkdir(parents=True, exist_ok=True)
        if write_if_changed(path, source):
            print(f"wrote {path}")


if __name__ == "__main__":
    main()
