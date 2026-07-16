#!/usr/bin/env python3
"""Generate the deployed DTK adapter for note_reshape2x1 segment 6.

Post-T1-d: DTK computation is hoisted into `Define()` and computed once, so
the three pre-T1-d instances (segments 16, 34, 45) collapse into a single
segment-6 instance. Generated Lean is split by semantic block so no theorem elaborates
the complete 6,329-row relation.

StructuredLC contract (see `AGENTS.md`, "Lean Circuit Proofs"): the base `Seg{N}.lean`
now renders wide accumulator rows as `StructuredLC.eval rho { const, runs, residual }`
(compact `StrideRun`s), not flat `relationLc*Part*` sums.  Adapter certificates MUST
consume those rows opaquely — `linear_combination`/`ring` treat `StructuredLC.eval`
as one atom.  Prove rung-to-rung recurrences over a SYMBOLIC index via the reused
`StrideRun.sumAux_succ` peel, then instantiate at the concrete rung; never `simp`/
`unfold` `StrideRun.sumAux` at a literal `count` (that expands all k terms
and hits max recursion depth).  Never bridge a flat LC to `StructuredLC.eval` in
Lean — the Rust extractor's parity gate (`contracts::structure_lc`) already proves
the compact form equals the raw (coeff,wire) multiset.  Debug obligations with
`scripts/lean-leaf-bench.sh` leaves, never full adapter rebuilds.
"""

from __future__ import annotations

import argparse
import re
import hashlib
import json
import os
from functools import lru_cache
from dataclasses import dataclass
from pathlib import Path

from generated_contract_source import read_source


ROOT = Path(__file__).resolve().parents[1]
REPO_ROOT = ROOT.parents[2]
FORMAL = ROOT / "ShielddGnarkFormal"
DEFAULT_CONTRACTS = FORMAL / "Deployed/Contracts/NoteReshape2x1"
SOURCE_CONTRACTS = Path(os.environ.get("DTK_CONTRACTS_SOURCE", DEFAULT_CONTRACTS))
OUTPUT_CONTRACTS = Path(os.environ.get("DTK_CONTRACTS_OUTPUT", DEFAULT_CONTRACTS))
DTK = FORMAL / "Deployed/Dtk"
OUTPUT_DTK = Path(os.environ.get("DTK_SHARED_OUTPUT", DTK))
EXTRACTED_DEPLOYED = FORMAL / "Extracted/Deployed"
SR1CS = ROOT.parent / "artifacts/note_reshape2x1/note_reshape2x1.sr1cs"
POSEIDON2 = FORMAL / "Poseidon2Bridge.lean"

ORDER = 8444461749428370424248824938781546531375899335154063827935233455917409239041
ROW_COUNT = 6077
LADDER_BITS = 251
# DTK segment's global row offset in the whole .sr1cs (was 13677 pre-T1-d;
# DTK hoisting into Define() moved it to the front of emission order).
DTK_GLOBAL_OFFSET = 1058


def write_generated(path: Path, contents: str) -> None:
    if path.exists() and path.read_text() == contents:
        return
    path.write_text(contents)


# Wire index of the seg5 (only, post-T1-d) instance. `delta` measures every
# instance's internal-witness offset relative to this base, so the
# ladder-accumulator seat arithmetic reuses seg5's layout shifted by `delta`.
# (Was 210 pre-T1-f; the shared divGen compress inserted 703 wires ahead.)
BASE_INTERNAL = 913


@dataclass(frozen=True)
class Instance:
    """Per-instance seating data: the wire offsets that reseat the seg16 proof
    shape onto seg34/seg45. Pure data — no emission logic lives here. The
    validator fails generation on a wiring typo instead of emitting a silently
    mis-seated (and later blowup-prone or unsound) adapter."""

    seg: int
    internal_base: int
    div_x: int
    div_y: int
    following_seg: int
    # Optional exact local seating.  Entry i is the deployed/template wire
    # represented by local wire i.  The reviewed deployed adapters leave this
    # unset and therefore retain their byte-identical affine seating.
    wire_seating: tuple[int, ...] | None = None

    def __post_init__(self) -> None:
        for name in ("seg", "internal_base", "div_x", "div_y", "following_seg"):
            val = getattr(self, name)
            if not isinstance(val, int) or val <= 0:
                raise ValueError(f"Instance.{name} must be a positive int, got {val!r}")
        # div wires are the consecutive (x, y) pair of the net-balance divisor.
        if self.wire_seating is None and self.div_y != self.div_x + 1:
            raise ValueError(
                f"Instance(seg={self.seg}): div_y ({self.div_y}) must be "
                f"div_x + 1 ({self.div_x + 1})"
            )
        # the following segment is always downstream of this one.
        if self.following_seg <= self.seg:
            raise ValueError(
                f"Instance(seg={self.seg}): following_seg ({self.following_seg}) "
                f"must be greater than seg"
            )
        # seg16 is the base layout; every instance sits at or beyond it.
        if self.internal_base < BASE_INTERNAL:
            raise ValueError(
                f"Instance(seg={self.seg}): internal_base ({self.internal_base}) "
                f"must be >= base {BASE_INTERNAL}"
            )
        if self.wire_seating is not None:
            if not self.wire_seating or self.wire_seating[0] != 0:
                raise ValueError(
                    f"Instance(seg={self.seg}): local wire zero must seat deployed wire zero"
                )
            if len(set(self.wire_seating)) != len(self.wire_seating):
                raise ValueError(
                    f"Instance(seg={self.seg}): wire seating must be injective"
                )

    @property
    def delta(self) -> int:
        return self.internal_base - BASE_INTERNAL


INSTANCES = (
    Instance(6, BASE_INTERNAL, 17, 18, 7),
)


_SOURCE_CACHE: dict[tuple[str, int], str] = {}
_RELATION_PARTS_CACHE: dict[tuple[str, int, int], tuple[tuple[int, ...], ...]] = {}


def source(seg: int) -> str:
    key = (str(SOURCE_CONTRACTS.resolve()), seg)
    if key not in _SOURCE_CACHE:
        _SOURCE_CACHE[key] = read_source(SOURCE_CONTRACTS, seg)
    return _SOURCE_CACHE[key]


def def_body(text: str, name: str) -> str:
    match = re.search(
        rf"def {re.escape(name)}(?: [^\n]*)? :=\n(.*?)(?=\n\ndef |\n/--|\nend )",
        text,
        re.S,
    )
    if not match:
        raise ValueError(f"missing definition {name}")
    return match.group(1)


def row_lc_defs(seg: int, row: int) -> list[str]:
    """relationLc* defs transitively referenced by a row body.

    The deployed extractor factors long linear combinations into named
    `relationLcN`/`relationLcNPartM` defs. Unfolding only the row leaves
    `Lc * Lc` unresolved, so a Poseidon S-box row whose factor is an inline
    MDS sum fails to match the (inlined) standalone obligation. Collect the
    Lc defs so they can be unfolded too.
    """
    text = source(seg)
    body = def_body(text, f"relationRow{row}")
    result: set[str] = set()
    pending = set(re.findall(r"\b(relationLc\w+) rho", body))
    while pending:
        name = pending.pop()
        if name in result:
            continue
        result.add(name)
        for nxt in re.findall(r"\b(relationLc\w+) rho", def_body(text, name)):
            if nxt not in result:
                pending.add(nxt)
    return sorted(result)


def relation_rows(seg: int) -> dict[int, str]:
    text = source(seg)
    rows = {
        int(match.group(1)): match.group(2)
        for match in re.finditer(
            r"def relationRow(\d+) \(rho : Nat -> F\) : Prop :=\n(.*?)(?=\n\ndef )",
            text,
            re.S,
        )
    }
    if set(rows) != set(range(ROW_COUNT)):
        raise ValueError(f"Seg{seg}: expected {ROW_COUNT} relation rows, got {len(rows)}")
    return rows


def relation_parts(seg: int) -> list[list[int]]:
    cache_key = (str(SOURCE_CONTRACTS.resolve()), seg, ROW_COUNT)
    cached = _RELATION_PARTS_CACHE.get(cache_key)
    if cached is not None:
        return [list(rows) for rows in cached]
    text = source(seg)
    parts = []
    for match in re.finditer(
        r"def relationPart(\d+) \(rho : Nat -> F\) : Prop :=\n(.*?)"
        r"(?=\n\ndef relationPart|\n\ndef relation \()",
        text,
        re.S,
    ):
        index = int(match.group(1))
        if index != len(parts):
            raise ValueError(f"Seg{seg}: non-contiguous relation part {index}")
        parts.append([int(row) for row in re.findall(r"relationRow(\d+) rho", match.group(2))])
    if [row for part in parts for row in part] != list(range(ROW_COUNT)):
        raise ValueError(f"Seg{seg}: relation parts do not cover rows exactly")
    _RELATION_PARTS_CACHE[cache_key] = tuple(tuple(rows) for rows in parts)
    return parts


def normalized_row(body: str, cfg: Instance) -> str:
    external = {cfg.div_x: "D0", cfg.div_y: "D1"}

    def wire_name(wire: int) -> str:
        if wire in external:
            return external[wire]
        if wire >= cfg.internal_base:
            return f"I{wire - cfg.internal_base}"
        return f"E{wire}"

    def replace_rho(match: re.Match[str]) -> str:
        return f"rho {wire_name(int(match.group(1)))}"

    def replace_run(match: re.Match[str]) -> str:
        return f"{match.group(1)}{wire_name(int(match.group(2)))}{match.group(3)}"

    def replace_residual(match: re.Match[str]) -> str:
        return f"{match.group(1)}{wire_name(int(match.group(2)))}{match.group(3)}"

    body = re.sub(r"rho (\d+)", replace_rho, body)
    body = re.sub(
        r"(⟨\(-?\d+ : F\), )(\d+)(, \d+, \d+⟩)", replace_run, body
    )
    return re.sub(
        r"(\(\(-?\d+ : F\), )(\d+)(\))", replace_residual, body
    )


def validate_normalized_shape() -> None:
    template = relation_rows(INSTANCES[0].seg)
    for cfg in INSTANCES[1:]:
        rows = relation_rows(cfg.seg)
        mismatches = [
            row
            for row in range(ROW_COUNT)
            if normalized_row(template[row], INSTANCES[0]) != normalized_row(rows[row], cfg)
        ]
        if mismatches:
            raise ValueError(f"Seg{cfg.seg}: normalized row mismatch at {mismatches[:10]}")


def output_wires(cfg: Instance) -> tuple[list[int], list[int]]:
    """Read the exact folded ladder output coordinates from the following assert-equivalent slice."""
    body = def_body(source(cfg.following_seg), "relation")
    wires = [int(wire) for wire in re.findall(r"rho (\d+)", body)]
    expected = 2 * LADDER_BITS + 6
    if len(wires) != expected:
        raise ValueError(
            f"Seg{cfg.following_seg}: expected {expected} output-relation wire uses, got {len(wires)}"
        )
    xs = wires[1 : 1 + LADDER_BITS]
    ys = wires[3 + LADDER_BITS : 3 + 2 * LADDER_BITS]
    if len(xs) != LADDER_BITS or len(ys) != LADDER_BITS:
        raise AssertionError("bad output wire split")
    return xs, ys


def emit_outputs() -> str:
    lines = [
        "import Mathlib.Data.ZMod.Basic\n\n",
        "import ShielddGnarkFormal.StructuredLC\n\n",
        "set_option maxRecDepth 1000000\n",
        "set_option maxHeartbeats 4000000\n\n",
        "/-! Generated opaque DTK ladder accumulators.  Keep these as plain `def`s: ",
        "the Seg.F/semantic-field boundary must not unfold the 251-term sums. -/\n\n",
        "namespace Shieldd.GnarkFormal.Deployed.Dtk.Outputs\n\n",
        f"abbrev Order : Nat := {ORDER}\n",
        "abbrev F := ZMod Order\n\n",
    ]
    for cfg in INSTANCES:
        xs, ys = output_wires(cfg)
        lines.append(f"def seg{cfg.seg}AccX0 (_rho : Nat -> F) : F := 0\n")
        lines.append(f"def seg{cfg.seg}AccY0 (_rho : Nat -> F) : F := 1\n")
        for k, _ in enumerate(zip(xs, ys, strict=True), start=1):
            lines.append(
                f"def seg{cfg.seg}AccX{k} (rho : Nat -> F) : F := "
                f"{compact_wire_expr(0, xs[:k], 'F')}\n"
            )
            lines.append(
                f"def seg{cfg.seg}AccY{k} (rho : Nat -> F) : F := "
                f"{compact_wire_expr(1, ys[:k], 'F')}\n"
            )
        lines.append(f"\ndef dtkOutX{cfg.seg} (rho : Nat -> F) : F := seg{cfg.seg}AccX251 rho\n")
        lines.append(f"def dtkOutY{cfg.seg} (rho : Nat -> F) : F := seg{cfg.seg}AccY251 rho\n\n")
    lines.append("end Shieldd.GnarkFormal.Deployed.Dtk.Outputs\n")
    return "".join(lines)


def chunks(items: list[str], size: int) -> list[list[str]]:
    return [items[index : index + size] for index in range(0, len(items), size)]


def emit_unpack(lines: list[str], cfg: Instance, keep_rows: set[int], hname: str = "h") -> None:
    parts = relation_parts(cfg.seg)
    part_names = [
        f"p{index}" if keep_rows.intersection(rows) else "_"
        for index, rows in enumerate(parts)
    ]
    lines.append(f"  unfold Seg{cfg.seg}.relation at {hname}\n")
    lines.append(f"  rcases {hname} with ⟨\n")
    for group in chunks(part_names, 10):
        lines.append("    " + ", ".join(group) + ",\n")
    lines[-1] = lines[-1].rstrip(",\n") + "\n"
    lines.append("  ⟩\n")
    for part_index, rows in enumerate(parts):
        if not keep_rows.intersection(rows):
            continue
        lines.append(f"  unfold Seg{cfg.seg}.relationPart{part_index} at p{part_index}\n")
        names = [f"r{row}" if row in keep_rows else "_" for row in rows]
        if len(names) == 1:
            lines.append(f"  have {names[0]} := p{part_index}\n")
        else:
            lines.append(f"  rcases p{part_index} with ⟨{', '.join(names)}⟩\n")


def bits_name(cfg: Instance, label: str) -> str:
    return f"seg{cfg.seg}{label}Bits"


def bits_field(cfg: Instance, label: str) -> str:
    """Element type of a bit vector.

    Canonical blocks feed the `CanonicalFqBits.F`-typed gadget (`trueFactor`,
    `block_hobl_of_truethread`, `canonicalFqBitsGadget`); their flags live in
    that field, so the bits must too — otherwise statements mixing `bits[j]!`
    with `flag j` fail typeclass resolution (`HSub Seg.F CanonicalFqBits.F`),
    the two `Order` defs being only defeq, not reducibly equal. Ivk/Scalar bits
    feed the LT/scalar ladders and stay in the segment field.
    """
    if label in ("Canon1", "Canon2"):
        return "Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F"
    return f"Seg{cfg.seg}.F"


def emit_base(cfg: Instance) -> str:
    bit_bases = {
        "Canon1": affine_internal_run(cfg, 21, 253, "Canon1 bits"),
        "Canon2": affine_internal_run(cfg, 363, 253, "Canon2 bits"),
        # T1-h: the ladder reuses the first 251 bits of the Ivk decomposition;
        # ScalarBits is the width-251 truncation of the same wire run.
        "Ivk": affine_internal_run(cfg, 977, 253, "Ivk bits"),
        "Scalar": affine_internal_run(cfg, 977, 251, "scalar bits"),
    }
    lines = [
        f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg{cfg.seg}\n",
        "import ShielddGnarkFormal.Deployed.Dtk.Outputs\n",
        "import ShielddGnarkFormal.Deployed.PrimeOrder\n",
        "import ShielddGnarkFormal.Extracted.CanonicalFqBits\n\n",
        "set_option maxRecDepth 1000000\n",
        "set_option maxHeartbeats 20000000\n\n",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n\n",
        f"instance seg{cfg.seg}DtkFactPrime : Fact (Nat.Prime Seg{cfg.seg}.Order) :=\n",
        "  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩\n\n",
    ]
    for label, base in bit_bases.items():
        width = 251 if label == "Scalar" else 253
        lines.append(
            f"def {bits_name(cfg, label)} (rho : Nat -> Seg{cfg.seg}.F) : "
            f"List.Vector {bits_field(cfg, label)} {width} :=\n"
            f"  List.Vector.ofFn (fun i : Fin {width} => rho ({base} + i.val))\n\n"
        )
        lines.append(
            f"theorem {bits_name(cfg, label)}_get (rho : Nat -> Seg{cfg.seg}.F) "
            f"(i : Nat) (hi : i < {width}) :\n"
            f"    ({bits_name(cfg, label)} rho)[i]! = rho ({base} + i) := by\n"
            f"  rw [getElem!_pos _ i (by simpa using hi)]\n"
            f"  conv_lhs => rw [List.Vector.getElem_def]\n"
            f"  simp only [{bits_name(cfg, label)}, List.Vector.toList_ofFn, "
            "List.getElem_ofFn]\n\n"
        )
    lines.append("end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n")
    return "".join(lines)


@dataclass(frozen=True)
class CanonicalBlock:
    label: str
    input_wire: int
    bit_base: int
    bit_row_start: int
    rec_row: int
    comparison_row_start: int


def canonical_blocks(cfg: Instance) -> tuple[CanonicalBlock, CanonicalBlock]:
    return (
        CanonicalBlock("Canon1", internal_wire(cfg, 20), internal_wire(cfg, 21), 28, 281, 282),
        CanonicalBlock("Canon2", internal_wire(cfg, 362), internal_wire(cfg, 363), 538, 791, 792),
    )


def flag_wire_map(block: CanonicalBlock, rows: dict[int, str]) -> tuple[dict[int, int], dict[int, int]]:
    """Return deployed flag wires and each bit's role-grouped chain row."""
    flags = {252: block.bit_base + 252}
    row_for_j: dict[int, int] = {}
    row = block.comparison_row_start
    for j in range(251, -1, -1):
        if ((ORDER - 1) >> j) & 1:
            row_for_j[j] = row
            wires = [int(wire) for wire in re.findall(r"rho (\d+)", rows[row])]
            if not wires:
                raise ValueError(f"canonical row {row} has no wires")
            flags[j] = wires[-1]
            row += 1
        else:
            flags[j] = flags[j + 1]
    for j in range(251, -1, -1):
        if (((ORDER - 1) >> j) & 1) == 0:
            row_for_j[j] = row
            row += 1
    if row != block.comparison_row_start + 252:
        raise ValueError(
            f"{block.label}: expected 252 canonical chain rows, ended at {row}"
        )
    return flags, row_for_j


def emit_flag_defs(lines: list[str], cfg: Instance, block: CanonicalBlock, flags: dict[int, int]) -> None:
    prefix = f"seg{cfg.seg}{block.label}"
    lines.append(
        f"def {prefix}Flag (rho : Nat -> Seg{cfg.seg}.F) : Nat -> "
        "Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F\n"
    )
    for index in range(253):
        lines.append(f"  | {index} => rho {flags[index]}\n")
    lines.append("  | _ => 1\n\n")


def lc_dependencies(seg: int, row: int) -> list[str]:
    text = source(seg)
    row_body = def_body(text, f"relationRow{row}")
    names: list[str] = []
    seen: set[str] = set()

    def visit(name: str) -> None:
        if name in seen:
            return
        seen.add(name)
        # Pre-order: a parent LC must be unfolded before its Part children, or
        # `unfold` fails to find the (still-hidden) child occurrences.
        names.append(name)
        body = def_body(text, name)
        for dependency in re.findall(r"\b(relationLc\d+(?:Part\d+)?) rho", body):
            visit(dependency)

    for name in re.findall(r"\b(relationLc\d+(?:Part\d+)?) rho", row_body):
        visit(name)
    return names


def emit_recomposition(
    lines: list[str], cfg: Instance, block: CanonicalBlock, bits: str, rec_hyp: str,
    width: int = 253,
) -> None:
    dependencies = lc_dependencies(cfg.seg, block.rec_row)
    unfolds = " ".join(
        [f"Seg{cfg.seg}.relationRow{block.rec_row}"]
        + [f"Seg{cfg.seg}.{name}" for name in dependencies]
    )
    lines.extend(
        [
            f"  have hrecover := recover_ofFn_eq_recBits rho {block.bit_base} {width}\n",
            f"  have hacc : powSumAcc rho 0 1 {block.bit_base} {width} = rho {block.input_wire} := by\n",
            f"    unfold {unfolds} at {rec_hyp}\n",
            f"    simp only [powSumAcc]\n",
            f"    linear_combination {rec_hyp}\n",
            f"  have hrec : recover_binary_zmod' {bits} = rho {block.input_wire} := by\n",
            f"    simp only [{bits_name(cfg, block.label)}]\n",
            f"    rw [hrecover]\n",
            "    rw [powSumAcc_eq] at hacc\n",
            "    simpa using hacc\n",
        ]
    )




def canon_prefix(cfg: Instance, block: CanonicalBlock) -> str:
    return f"seg{cfg.seg}{block.label}"


def canon_component_header(
    cfg: Instance,
    block: CanonicalBlock,
    previous: str | None,
    base_component: str | None = None,
) -> list[str]:
    if previous is None:
        base_component = base_component or f"DtkAdapterSeg{cfg.seg}Base"
        imports = [
            f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.{base_component}\n",
            "import ShielddGnarkFormal.CanonicalFqBitsDeployedKernel\n",
            "import ShielddGnarkFormal.CanonicalFqBitsChainAcc\n",
            "import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.CompressAdapterCommon\n",
            "import ShielddGnarkFormal.RvkToBinary\n\n",
        ]
    else:
        imports = [
            f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.{previous}\n\n"
        ]
    return [
        *imports,
        "set_option maxRecDepth 1000000\n",
        "set_option maxHeartbeats 20000000\n",
        "set_option linter.unusedVariables false\n\n",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n\n",
        "open Shieldd.GnarkFormal.Extracted.CanonicalFqBits\n\n",
    ]


def emit_canon_recover(
    cfg: Instance,
    block: CanonicalBlock,
    previous: str | None,
    base_component: str | None = None,
) -> str:
    prefix = canon_prefix(cfg, block)
    bits = bits_name(cfg, block.label)
    lines = canon_component_header(cfg, block, previous, base_component)
    lines.append(
        f"theorem {prefix}_recover (rho : Nat -> Seg{cfg.seg}.F) "
        f"(h : Seg{cfg.seg}.relation rho) :\n"
        f"    recover_binary_zmod' ({bits} rho) = rho {block.input_wire} := by\n"
    )
    emit_unpack(lines, cfg, {block.rec_row})
    emit_recomposition(lines, cfg, block, f"({bits} rho)", f"r{block.rec_row}")
    lines.append("  exact hrec\n\nend Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n")
    return "".join(lines)


def emit_canon_binary(cfg: Instance, block: CanonicalBlock, previous: str) -> str:
    prefix = canon_prefix(cfg, block)
    bits = bits_name(cfg, block.label)
    bit_rows = list(range(block.bit_row_start, block.bit_row_start + 253))
    lines = canon_component_header(cfg, block, previous)
    lines.append(
        f"theorem {prefix}_binary (rho : Nat -> Seg{cfg.seg}.F) "
        f"(h : Seg{cfg.seg}.relation rho) : is_vector_binary ({bits} rho) := by\n"
    )
    emit_unpack(lines, cfg, set(bit_rows))
    for row in bit_rows:
        lines.append(f"  unfold Seg{cfg.seg}.relationRow{row} at r{row}\n")
    lines.extend([
        "  apply Shieldd.GnarkFormal.Extracted.CanonicalFqBits.isVectorBinary_of_booleanity\n",
        "  intro i hi\n",
        f"  have key := {bits}_get rho i hi\n",
        f"  have hgoal : rho ({block.bit_base} + i) * (1 - rho ({block.bit_base} + i)) = 0 := by\n",
        "    interval_cases i\n",
    ])
    for row in bit_rows:
        lines.append(f"    · linear_combination r{row}\n")
    lines.append("  exact key ▸ hgoal\n\nend Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n")
    return "".join(lines)


CANON_CHUNK_SIZE = 16


def canon_chunks() -> list[tuple[int, int]]:
    return [
        (start, min(start + CANON_CHUNK_SIZE, 253))
        for start in range(0, 253, CANON_CHUNK_SIZE)
    ]


def emit_canon_true_defs(
    cfg: Instance, block: CanonicalBlock, rows: dict[int, str], previous: str
) -> str:
    flags, _ = flag_wire_map(block, rows)
    lines = canon_component_header(cfg, block, previous)
    emit_flag_defs(lines, cfg, block, flags)
    lines.append("end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n")
    return "".join(lines)


def emit_canon_true_chunk(
    cfg: Instance, block: CanonicalBlock, rows: dict[int, str],
    previous: str, chunk_index: int,
) -> str:
    flags, row_for_j = flag_wire_map(block, rows)
    prefix = canon_prefix(cfg, block)
    bits = bits_name(cfg, block.label)
    start, end = canon_chunks()[chunk_index]
    used = {
        row_for_j[j]
        for j in range(start, min(end, 252))
        if ((ORDER - 1) >> j) & 1
    }
    lines = canon_component_header(cfg, block, previous)
    lines.append(
        f"theorem {prefix}_flag_step_chunk{chunk_index} "
        f"(rho : Nat -> Seg{cfg.seg}.F) "
        f"(h : Seg{cfg.seg}.relation rho) :\n"
        f"    ∀ m, {start} ≤ m → m < {end} → "
        f"{prefix}Flag rho m = trueFactor ({bits} rho) m * "
        f"{prefix}Flag rho (m + 1) := by\n"
    )
    if used:
        emit_unpack(lines, cfg, used)
        for row in sorted(used):
            lines.append(f"  unfold Seg{cfg.seg}.relationRow{row} at r{row}\n")
    lines.extend(["  intro m hmlo hmhi\n", "  interval_cases m\n"])
    for j in range(start, end):
        current = flags[j]
        nxt = 1 if j == 252 else flags[j + 1]
        bit_is_one = ((ORDER - 1) >> j) & 1
        if j == 252:
            lines.append(
                f"  · rw [show {prefix}Flag rho 252 = rho {current} from rfl, "
                f"show {prefix}Flag rho 253 = 1 from rfl]\n"
                "    have hb : pmBit 252 = true := by decide +kernel\n"
                "    simp only [trueFactor, hb, ↓reduceIte]\n"
                f"    erw [{bits}_get rho 252 (by omega)]\n"
                "    simp only [Nat.reduceAdd]\n"
                "    ring\n"
            )
        elif bit_is_one:
            row = row_for_j[j]
            lines.append(
                f"  · rw [show {prefix}Flag rho {j} = rho {current} from rfl, "
                f"show {prefix}Flag rho {j + 1} = rho {nxt} from rfl]\n"
                f"    have hb : pmBit {j} = true := by decide +kernel\n"
                "    simp only [trueFactor, hb, ↓reduceIte]\n"
                f"    erw [{bits}_get rho {j} (by omega)]\n"
                "    simp only [Nat.reduceAdd]\n"
                f"    linear_combination -r{row}\n"
            )
        else:
            lines.append(
                f"  · rw [show {prefix}Flag rho {j} = rho {current} from rfl, "
                f"show {prefix}Flag rho {j + 1} = rho {nxt} from rfl]\n"
                f"    have hb : pmBit {j} = false := by decide +kernel\n"
                f"    rw [show trueFactor ({bits} rho) {j} = 1 from by "
                "simp [trueFactor, hb]]\n"
                "    ring\n"
            )
    lines.append("\nend Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n")
    return "".join(lines)


def emit_canon_true_thread(
    cfg: Instance, block: CanonicalBlock, previous: str
) -> str:
    prefix = canon_prefix(cfg, block)
    bits = bits_name(cfg, block.label)
    chunks = canon_chunks()
    lines = canon_component_header(cfg, block, previous)
    lines.append(
        f"theorem {prefix}_flag_step (rho : Nat -> Seg{cfg.seg}.F) "
        f"(h : Seg{cfg.seg}.relation rho) :\n"
        f"    ∀ m, m < 253 → {prefix}Flag rho m = "
        f"trueFactor ({bits} rho) m * "
        f"{prefix}Flag rho (m + 1) := by\n"
        "  intro m hm\n"
    )
    for chunk_index, (_, end) in enumerate(chunks[:-1]):
        lines.extend([
            f"  by_cases h{chunk_index} : m < {end}\n",
            f"  · exact {prefix}_flag_step_chunk{chunk_index} rho h m (by omega) h{chunk_index}\n",
        ])
    last = len(chunks) - 1
    lines.append(
        f"  exact {prefix}_flag_step_chunk{last} rho h m (by omega) hm\n\n"
        "end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n"
    )
    return "".join(lines)


def emit_canon_compare_chunk(
    cfg: Instance, block: CanonicalBlock, rows: dict[int, str],
    previous: str, chunk_index: int,
) -> str:
    flags, row_for_j = flag_wire_map(block, rows)
    prefix = canon_prefix(cfg, block)
    bits = bits_name(cfg, block.label)
    start, end = canon_chunks()[chunk_index]
    used = {
        row_for_j[j]
        for j in range(start, end)
        if (((ORDER - 1) >> j) & 1) == 0
    }
    lines = canon_component_header(cfg, block, previous)
    lines.append(
        f"theorem {prefix}_compare_chunk{chunk_index} "
        f"(rho : Nat -> Seg{cfg.seg}.F) "
        f"(h : Seg{cfg.seg}.relation rho) :\n"
        f"    ∀ j, {start} ≤ j → j < {end} → pmBit j = false → "
        f"({bits} rho)[j]! * "
        f"(1 - ({bits} rho)[j]! - {prefix}Flag rho (j + 1)) = 0 := by\n"
    )
    if used:
        emit_unpack(lines, cfg, used)
        for row in sorted(used):
            lines.append(f"  unfold Seg{cfg.seg}.relationRow{row} at r{row}\n")
    lines.extend(["  intro j hjlo hjhi hpm\n", "  interval_cases j\n"])
    for j in range(start, end):
        if ((ORDER - 1) >> j) & 1:
            lines.append(
                f"  · have hb : pmBit {j} = true := by decide +kernel\n"
                "    simp [hb] at hpm\n"
            )
        else:
            row = row_for_j[j]
            nxt = flags[j + 1]
            lines.append(
                f"  · erw [{bits}_get rho {j} (by omega)]\n"
                "    simp only [Nat.reduceAdd]\n"
                f"    rw [show {prefix}Flag rho {j + 1} = rho {nxt} from rfl]\n"
                f"    linear_combination r{row}\n"
            )
    lines.append("\nend Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n")
    return "".join(lines)


def emit_canon_compare(
    cfg: Instance, block: CanonicalBlock, previous: str
) -> str:
    prefix = canon_prefix(cfg, block)
    bits = bits_name(cfg, block.label)
    chunks = canon_chunks()
    lines = canon_component_header(cfg, block, previous)
    lines.append(
        f"theorem {prefix}_compare (rho : Nat -> Seg{cfg.seg}.F) "
        f"(h : Seg{cfg.seg}.relation rho) :\n"
        f"    ∀ j, j < 253 → pmBit j = false → ({bits} rho)[j]! * "
        f"(1 - ({bits} rho)[j]! - {prefix}Flag rho (j + 1)) = 0 := by\n"
        "  intro j hj hpm\n"
    )
    for chunk_index, (_, end) in enumerate(chunks[:-1]):
        lines.extend([
            f"  by_cases h{chunk_index} : j < {end}\n",
            f"  · exact {prefix}_compare_chunk{chunk_index} rho h j (by omega) "
            f"h{chunk_index} hpm\n",
        ])
    last = len(chunks) - 1
    lines.append(
        f"  exact {prefix}_compare_chunk{last} rho h j (by omega) hj hpm\n\n"
        "end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n"
    )
    return "".join(lines)


def emit_canon_chain(cfg: Instance, block: CanonicalBlock, previous: str) -> str:
    prefix = canon_prefix(cfg, block)
    bits = bits_name(cfg, block.label)
    lines = canon_component_header(cfg, block, previous)
    lines.append(
        f"theorem {prefix}_chain (rho : Nat -> Seg{cfg.seg}.F) "
        f"(h : Seg{cfg.seg}.relation rho) (k : List.Vector Seg{cfg.seg}.F 253 -> Prop) "
        f"(hk : k ({bits} rho)) : chainK ({bits} rho) k 253 1 := by\n"
        f"  refine chainK_of_obligations ({bits} rho) k hk ?_\n"
        f"  refine block_hobl_of_truethread ({bits} rho) ({prefix}Flag rho) ?_ ?_ ?_ ?_\n"
        f"  · rfl\n"
        f"  · exact {prefix}_flag_step rho h\n"
        f"  · exact {prefix}_compare rho h\n"
        f"  · have hbinary := {prefix}_binary rho h\n"
        "    obtain ⟨bools, hbools⟩ := is_vector_binary_iff_exists_bool_vec.mp hbinary\n"
        "    intro j hj\n"
        f"    have hget : ({bits} rho)[j]! = Bool.toZMod bools[j]! := by\n"
        "      rw [hbools, getElem!_pos (bools.map Bool.toZMod) j (by simpa using hj), "
        "getElem!_pos bools j (by simpa using hj), List.Vector.getElem_map]\n"
        "    rw [hget]\n"
        "    cases bools[j]! <;> simp [Bool.toZMod_zero, Bool.toZMod_one]\n\n"
        "end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n"
    )
    return "".join(lines)


def emit_canon_block(
    cfg: Instance,
    block_index: int | None = None,
    *,
    block: CanonicalBlock | None = None,
    previous: str | None = None,
) -> str:
    rows = relation_rows(cfg.seg)
    if block is None:
        if block_index is None:
            raise ValueError("canonical block or block_index is required")
        block = canonical_blocks(cfg)[block_index]
    prefix = canon_prefix(cfg, block)
    bits = bits_name(cfg, block.label)
    previous = previous or f"DtkAdapterSeg{cfg.seg}{block.label}Chain"
    lines = canon_component_header(cfg, block, previous)
    lines.append(
        f"theorem {prefix}_canonical (rho : Nat -> Seg{cfg.seg}.F)\n"
        f"    (h : Seg{cfg.seg}.relation rho) (k : List.Vector Seg{cfg.seg}.F 253 -> Prop)\n"
        f"    (hk : k ({bits} rho)) :\n"
        f"    canonicalFqBitsGadget (rho {block.input_wire}) k := by\n"
        f"  exact canonicalFqBitsGadget_of_components (rho {block.input_wire}) ({bits} rho) k\n"
        f"    ({prefix}_recover rho h) ({prefix}_binary rho h) ({prefix}_chain rho h k hk)\n\n"
    )
    lines.append("end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n")
    return "".join(lines)


def emit_canon(cfg: Instance) -> str:
    return (
        f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1."
        f"DtkAdapterSeg{cfg.seg}Canon2\n"
    )


@dataclass(frozen=True)
class BinaryBlock:
    label: str
    input_wire: int
    bit_base: int
    width: int
    bit_row_start: int
    rec_row: int


def binary_blocks(cfg: Instance) -> tuple[BinaryBlock, ...]:
    return (
        BinaryBlock("Ivk", seat_wire(cfg, 9), internal_wire(cfg, 977), 253, 1322, 1575),
    )


def emit_binary_theorem(lines: list[str], cfg: Instance, block: BinaryBlock) -> None:
    bit_rows = list(range(block.bit_row_start, block.bit_row_start + block.width))
    keep = set(bit_rows + [block.rec_row])
    bits = bits_name(cfg, block.label)
    theorem = f"seg{cfg.seg}{block.label}_toBinary"
    lines.append(
        f"theorem {theorem} (rho : Nat -> Seg{cfg.seg}.F) (h : Seg{cfg.seg}.relation rho) :\n"
        f"    GatesDef.to_binary (rho {block.input_wire}) {block.width} ({bits} rho) := by\n"
    )
    emit_unpack(lines, cfg, keep)
    for row in bit_rows:
        lines.append(f"  unfold Seg{cfg.seg}.relationRow{row} at r{row}\n")
    dependencies = lc_dependencies(cfg.seg, block.rec_row)
    unfolds = " ".join(
        [f"Seg{cfg.seg}.relationRow{block.rec_row}"]
        + [f"Seg{cfg.seg}.{name}" for name in dependencies]
    )
    lines.extend(
        [
            f"  have hrecover := recover_ofFn_eq_recBits rho {block.bit_base} {block.width}\n",
            f"  have hacc : powSumAcc rho 0 1 {block.bit_base} {block.width} = "
            f"rho {block.input_wire} := by\n",
            f"    unfold {unfolds} at r{block.rec_row}\n",
            f"    simp only [powSumAcc]\n",
            f"    linear_combination r{block.rec_row}\n",
            f"  have hrec : recover_binary_zmod' ({bits} rho) = rho {block.input_wire} := by\n",
            f"    simp only [{bits}]\n",
            "    rw [hrecover]\n",
            "    rw [powSumAcc_eq] at hacc\n",
            "    simpa using hacc\n",
            f"  apply Shieldd.GnarkFormal.RvkToBinary.to_binary_of_deployed "
            f"(rho {block.input_wire}) ({bits} rho)\n",
            "  · intro i hi\n",
            f"    have key : ({bits} rho)[i] = rho ({block.bit_base} + i) := by\n",
            "      conv_lhs => rw [List.Vector.getElem_def]\n",
            f"      simp only [{bits}, List.Vector.toList_ofFn, List.getElem_ofFn]\n",
            # The goal's getElem (from `to_binary_of_deployed`'s `bits[i]` binder)
            # is not syntactically matched by `key`'s LHS — distinct GetElem
            # instance/proof terms — so `rw`/`simp only [key]` fail. Prove the
            # clean `rho`-form obligation and transport it with `key ▸`, which
            # rewrites the (instance-free) `rho (..)` side and unifies via the
            # motive against the goal.
            f"    have hgoal : rho ({block.bit_base} + i) "
            f"* (1 - rho ({block.bit_base} + i)) = 0 := by\n",
            "      interval_cases i\n",
        ]
    )
    for row in bit_rows:
        lines.append(f"      · linear_combination r{row}\n")
    lines.append("    exact key ▸ hgoal\n")
    lines.append("  · exact hrec\n\n")


def emit_bits(cfg: Instance) -> str:
    lines = [
        f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg{cfg.seg}Base\n",
        "import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.CompressAdapterCommon\n",
        "import ShielddGnarkFormal.RvkToBinary\n\n",
        "set_option maxRecDepth 1000000\n",
        "set_option maxHeartbeats 20000000\n",
        "set_option linter.unusedVariables false\n\n",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n\n",
    ]
    for block in binary_blocks(cfg):
        emit_binary_theorem(lines, cfg, block)
    lines.append("end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n")
    return "".join(lines)


def parse_terms(group: str) -> list[tuple[str, int]]:
    terms = []
    rest = group.strip()
    while rest:
        match = re.match(r"\((\S+)\s+(\d+)\)\s*", rest)
        if not match:
            raise ValueError(f"bad SR1CS term group: {group!r}")
        terms.append((match.group(1), int(match.group(2))))
        rest = rest[match.end() :]
    return terms


def parse_constraint(line: str) -> tuple[list[tuple[str, int]], ...]:
    inner = line.strip()
    if not inner.startswith("(constraint ") or not inner.endswith(")"):
        raise ValueError(f"not an SR1CS constraint: {line!r}")
    groups = re.findall(r"\[([^\]]*)\]", inner[len("(constraint ") : -1])
    if len(groups) != 3:
        raise ValueError(f"expected three SR1CS sides: {line!r}")
    return tuple(parse_terms(group) for group in groups)


Lc = dict[int, int]


@dataclass(frozen=True)
class LtcStep:
    n: int
    one: bool
    bit: int
    pe_in: Lc
    il_in: Lc
    pe_out: Lc
    il_out: Lc
    l: Lc | None
    il_mul: Lc | None
    l_row: int | None
    il_mul_row: int | None
    pe_row: int | None


@dataclass(frozen=True)
class LtcTrace:
    label: str
    bit_def: str
    start_row: int
    end_row: int
    pe: dict[int, Lc]
    il: dict[int, Lc]
    steps: dict[int, LtcStep]


@dataclass(frozen=True)
class ScalarRung:
    index: int
    bit: int
    delta_x: int
    delta_y: int
    select_x_row: int
    select_y_row: int
    add_rows: tuple[int, ...]
    double_rows: tuple[int, ...]
    sum_x: int
    sum_y: int
    cur_x: int
    cur_y: int
    next_cur_x: int
    next_cur_y: int


def lc_clean(value: Lc) -> Lc:
    return {wire: coeff % ORDER for wire, coeff in value.items() if coeff % ORDER}


def lc_add(*terms: tuple[Lc, int]) -> Lc:
    out: Lc = {}
    for value, scale in terms:
        for wire, coeff in value.items():
            out[wire] = (out.get(wire, 0) + scale * coeff) % ORDER
    return lc_clean(out)


def sr1cs_lc_rows() -> list[tuple[Lc, Lc, Lc]]:
    # Only the scalar ladder (rows 2717 onward) consumes raw SR1CS LCs here.
    # Earlier canonical/LT/Poseidon proofs consume the exact generated
    # relation instead.  Preserve row-number indexing with empty placeholders
    # without retaining the very wide LT accumulators in Python memory.
    scalar_row_start = 2717
    rows: list[tuple[Lc, Lc, Lc]] = [({}, {}, {}) for _ in range(scalar_row_start)]
    constraint_index = 0
    with SR1CS.open() as source_file:
        for line in source_file:
            if not line.strip().startswith("(constraint "):
                continue
            if constraint_index >= DTK_GLOBAL_OFFSET + ROW_COUNT:
                break
            local_row = constraint_index - DTK_GLOBAL_OFFSET
            if local_row >= scalar_row_start:
                row = parse_constraint(line)
                rows.append(tuple(
                    lc_clean({wire: int(coeff, 0) for coeff, wire in side})
                    for side in row
                ))
            constraint_index += 1
    if len(rows) != ROW_COUNT:
        raise ValueError("missing DTK SR1CS rows")
    return rows


# The lt-compare carry-chain recovery no longer lives here. It is done — and,
# crucially, *parity-gated* — in the trusted Rust extractor
# (`shieldd-constraint-coverage`, `ltchain::recover_lt_chain` +
# `verify_note_reshape2x1_lt_ladders`). The generator consumes the extractor's
# recovered seating as JSON, so a mis-seat is caught at extraction time against
# the raw rows rather than silently emitted into Lean.

LT_SEATING = (
    REPO_ROOT
    / "crates/core/component/shielded-pool/formal/note_reshape2x1-dtk-lt-seating.json"
)
LT_SEATING_SHA256 = LT_SEATING.with_suffix(LT_SEATING.suffix + ".sha256")
# label -> the extracted bit predicate the emitted Lean references.
LTC_BIT_DEF = {"R": "rBit", "Q4": "q4Bit"}
LTC_END_ROW = {"R": 2345, "Q4": 2715}


def _lt_seating() -> dict:
    """Read the canonical parity-gated LT seating with an exact byte pin."""
    if not LT_SEATING.is_file() or not LT_SEATING_SHA256.is_file():
        raise ValueError("missing canonical parity-gated DTK LT seating artifact")
    raw = LT_SEATING.read_bytes()
    expected = LT_SEATING_SHA256.read_text().strip()
    actual = hashlib.sha256(raw).hexdigest()
    if not re.fullmatch(r"[0-9a-f]{64}", expected) or actual != expected:
        raise ValueError(
            f"DTK LT seating digest drifted: expected {expected!r}, got {actual}"
        )
    return json.loads(raw)


def _lc_from_json(pairs) -> Lc:
    return lc_clean({wire: int(coeff) for coeff, wire in pairs}) if pairs else {}


def _trace_from_json(ladder: dict) -> LtcTrace:
    label = ladder["label"]
    one: Lc = {0: 1}
    pe: dict[int, Lc] = {253: one}
    il: dict[int, Lc] = {253: {}}
    steps: dict[int, LtcStep] = {}
    for rung in sorted(ladder["rungs"], key=lambda r: -r["n"]):
        n = rung["n"]
        pe_out = _lc_from_json(rung["pe_out"])
        il_out = _lc_from_json(rung["il_out"])
        steps[n] = LtcStep(
            n,
            rung["one"],
            rung["bit_wire"],
            _lc_from_json(rung["pe_in"]),
            _lc_from_json(rung["il_in"]),
            pe_out,
            il_out,
            _lc_from_json(rung["l"]) if rung["l"] is not None else None,
            _lc_from_json(rung["il_mul"]) if rung["il_mul"] is not None else None,
            rung["l_row"],
            rung["il_mul_row"],
            rung["pe_row"],
        )
        pe[n] = pe_out
        il[n] = il_out
    return LtcTrace(
        label, LTC_BIT_DEF[label], ladder["start_row"], ladder["end_row"], pe, il, steps
    )


def dtk_ltc_traces() -> tuple[LtcTrace, LtcTrace]:
    seating = _lt_seating()
    traces = {lad["label"]: _trace_from_json(lad) for lad in seating["ladders"]}
    r_trace, q4_trace = traces["R"], traces["Q4"]
    for trace in (r_trace, q4_trace):
        if trace.end_row != LTC_END_ROW[trace.label]:
            raise ValueError(
                f"{trace.label} ladder ended at row {trace.end_row}, "
                f"expected {LTC_END_ROW[trace.label]}"
            )
    return r_trace, q4_trace


def singleton_wire(side: Lc) -> int:
    if len(side) != 1:
        raise ValueError(f"expected singleton wire side, got {side}")
    wire, coeff = next(iter(side.items()))
    if wire == 0 or coeff != 1:
        raise ValueError(f"expected coefficient-one witness, got {side}")
    return wire


def dtk_scalar_rungs(
    rows: list[tuple[Lc, Lc, Lc]] | None = None,
    outputs: tuple[list[int], list[int]] | None = None,
) -> tuple[ScalarRung, ...]:
    """Recover scalar rungs, optionally reusing the caller's parsed SR1CS."""
    rows = sr1cs_lc_rows() if rows is None else rows
    xs, ys = output_wires(INSTANCES[0]) if outputs is None else outputs
    rungs: list[ScalarRung] = []
    cur_x, cur_y = 17, 18
    for index, (delta_x, delta_y) in enumerate(zip(xs, ys, strict=True)):
        bit = BASE_INTERNAL + 977 + index
        candidates = [
            row
            for row in range(2717, ROW_COUNT)
            if rows[row][2] == {delta_x: 1}
            and (bit in rows[row][0] or bit in rows[row][1])
        ]
        if len(candidates) != 1:
            raise ValueError(f"scalar rung {index}: selected-X rows {candidates}")
        select_x_row = candidates[0]
        select_y_row = select_x_row + 1
        if rows[select_y_row][2] != {delta_y: 1}:
            raise ValueError(f"scalar rung {index}: selected-Y row mismatch")
        add_rows = () if index == 0 else tuple(range(select_x_row - 6, select_x_row))
        double_rows = tuple(range(select_y_row + 1, select_y_row + 6))
        if index == 0:
            sum_x, sum_y = cur_x, cur_y
        else:
            sum_x = singleton_wire(rows[add_rows[4]][0])
            sum_y = singleton_wire(rows[add_rows[5]][0])
        next_cur_x = singleton_wire(rows[double_rows[3]][0])
        next_cur_y = singleton_wire(rows[double_rows[4]][0])
        rungs.append(ScalarRung(
            index, bit, delta_x, delta_y, select_x_row, select_y_row,
            add_rows, double_rows, sum_x, sum_y, cur_x, cur_y,
            next_cur_x, next_cur_y,
        ))
        cur_x, cur_y = next_cur_x, next_cur_y
    if rungs[0].select_x_row != 2719 or rungs[-1].double_rows[-1] != 6076:
        raise ValueError("scalar ladder does not span rows 2719..6076")
    return tuple(rungs)


def seated_lc(value: Lc, cfg: Instance) -> Lc:
    out: Lc = {}
    for wire, coeff in value.items():
        seated = wire if wire == 0 else seat_wire(cfg, wire)
        out[seated] = (out.get(seated, 0) + coeff) % ORDER
    return lc_clean(out)


def lc_expr(value: Lc, cfg: Instance) -> str:
    terms = []
    for wire, raw_coeff in sorted(seated_lc(value, cfg).items()):
        coeff = raw_coeff if raw_coeff <= ORDER // 2 else raw_coeff - ORDER
        if wire == 0:
            terms.append(f"({coeff} : Seg{cfg.seg}.F)")
        elif coeff == 1:
            terms.append(f"rho {wire}")
        elif coeff == -1:
            terms.append(f"(-1 : Seg{cfg.seg}.F) * rho {wire}")
        else:
            terms.append(f"({coeff} : Seg{cfg.seg}.F) * rho {wire}")
    return " + ".join(terms) if terms else f"(0 : Seg{cfg.seg}.F)"


STRUCTURED_LC_MIN_RUN = 16


@dataclass(frozen=True)
class CompactRun:
    coeff: int
    start: int
    stride: int
    count: int


@dataclass(frozen=True)
class CompactLc:
    constant: int
    runs: tuple[CompactRun, ...]
    residual: tuple[tuple[int, int], ...]


def compact_runs(coeff: int, wires: list[int]) -> tuple[list[CompactRun], list[tuple[int, int]]]:
    remaining = sorted(wires)
    runs: list[CompactRun] = []
    residual: list[tuple[int, int]] = []
    preferred: dict[int, int] = {}
    while remaining:
        start = remaining[0]
        available = set(remaining)
        best: tuple[int, int] | None = None
        for second in remaining[1:]:
            stride = second - start
            if stride == 0:
                continue
            count = 1
            wire = start
            while wire + stride in available:
                count += 1
                wire += stride
            selected = preferred.get(stride, count) if preferred.get(stride, count) <= count else count
            if selected >= STRUCTURED_LC_MIN_RUN and (best is None or selected > best[1]):
                best = (stride, selected)
        if best is None:
            residual.append((coeff, start))
            remaining.pop(0)
            continue
        stride, count = best
        preferred.setdefault(stride, count)
        runs.append(CompactRun(coeff, start, stride, count))
        for index in range(count):
            remaining.remove(start + index * stride)
    return runs, residual


def compact_lc(value: Lc, cfg: Instance) -> CompactLc | None:
    seated = seated_lc(value, cfg)
    constant = signed_coeff(seated.get(0, 0))
    by_coeff: dict[int, list[int]] = {}
    for wire, raw_coeff in seated.items():
        if wire != 0:
            by_coeff.setdefault(signed_coeff(raw_coeff), []).append(wire)
    runs: list[CompactRun] = []
    residual: list[tuple[int, int]] = []
    for coeff in sorted(by_coeff, key=lambda item: str(item)):
        coeff_runs, coeff_residual = compact_runs(coeff, by_coeff[coeff])
        runs.extend(coeff_runs)
        residual.extend(coeff_residual)
    if not runs:
        return None
    raw_cost = len(seated)
    compact_cost = (1 if constant else 0) + 4 * len(runs) + len(residual)
    if compact_cost * 2 >= raw_cost:
        return None
    return CompactLc(constant, tuple(runs), tuple(residual))


def compact_lc_expr(value: Lc, cfg: Instance) -> str:
    compact = compact_lc(value, cfg)
    if compact is None:
        return lc_expr(value, cfg)
    terms = [f"({compact.constant} : Seg{cfg.seg}.F)"]
    terms.extend(
        f"(({run.coeff} : Seg{cfg.seg}.F) * "
        "Shieldd.GnarkFormal.StrideRun.sumAux rho "
        f"{run.start} {run.stride} {run.count})"
        for run in compact.runs
    )
    terms.extend(
        f"(({coeff} : Seg{cfg.seg}.F) * rho {wire})"
        for coeff, wire in compact.residual
    )
    return " + ".join(terms)


def compact_wire_lc(constant: int, wires: list[int]) -> CompactLc | None:
    runs, residual = compact_runs(1, wires)
    if not runs:
        return None
    raw_cost = (1 if constant else 0) + len(wires)
    compact_cost = (1 if constant else 0) + 4 * len(runs) + len(residual)
    if compact_cost * 2 >= raw_cost:
        return None
    return CompactLc(constant, tuple(runs), tuple(residual))


def compact_wire_expr(constant: int, wires: list[int], field: str) -> str:
    compact = compact_wire_lc(constant, wires)
    if compact is None:
        terms = [f"({constant} : {field})"] if constant else []
        terms.extend(f"rho {wire}" for wire in wires)
        return " + ".join(terms) if terms else f"(0 : {field})"
    terms = [f"({compact.constant} : {field})"]
    terms.extend(
        f"(({run.coeff} : {field}) * Shieldd.GnarkFormal.StrideRun.sumAux "
        f"rho {run.start} {run.stride} {run.count})"
        for run in compact.runs
    )
    terms.extend(
        f"(({coeff} : {field}) * rho {wire})"
        for coeff, wire in compact.residual
    )
    return " + ".join(terms)


@dataclass(frozen=True)
class LtcAtomLayout:
    segments: tuple[tuple[int, ...], ...]
    atom_names: dict[tuple[tuple[int, int], ...], str]
    part_values: dict[str, Lc]
    top_parts: dict[str, tuple[str, ...]]
    top_values: dict[str, Lc]
    step_tops: dict[int, str]
    terminal_top: str


LTC_ATOM_LAYOUTS: dict[tuple[int, str], LtcAtomLayout] = {}


def parse_relation_lc(cfg: Instance, name: str) -> Lc:
    body = def_body(source(cfg.seg), name)
    if "Shieldd.GnarkFormal.StructuredLC.eval" in body:
        const_match = re.search(r"const := \((-?\d+) : F\)", body)
        if const_match is None:
            raise ValueError(f"{name}: malformed StructuredLC constant")
        value: Lc = {0: int(const_match.group(1)) % ORDER}
        runs = re.findall(
            r"⟨\((-?\d+) : F\), (\d+), (\d+), (\d+)⟩", body
        )
        residual = re.findall(r"\(\((-?\d+) : F\), (\d+)\)", body)
        for raw_coeff, raw_start, raw_stride, raw_count in runs:
            coeff = int(raw_coeff)
            start = int(raw_start)
            stride = int(raw_stride)
            for index in range(int(raw_count)):
                wire = start + stride * index
                value[wire] = (value.get(wire, 0) + coeff) % ORDER
        for raw_coeff, raw_wire in residual:
            wire = int(raw_wire)
            value[wire] = (value.get(wire, 0) + int(raw_coeff)) % ORDER
        return lc_clean(value)
    value: Lc = {}
    for raw_coeff, raw_wire in re.findall(
        r"\((-?\d+) : F\)(?: \* rho (\d+))?", body
    ):
        wire = int(raw_wire) if raw_wire else 0
        if wire == cfg.div_x:
            wire = 17
        elif wire == cfg.div_y:
            wire = 18
        elif wire >= cfg.internal_base:
            wire -= cfg.delta
        value[wire] = (value.get(wire, 0) + int(raw_coeff)) % ORDER
    return lc_clean(value)


def relation_lc_parts(seg: int, top: str) -> tuple[str, ...]:
    body = def_body(source(seg), top)
    parts = tuple(dict.fromkeys(re.findall(r"\b(relationLc\d+Part\d+) rho", body)))
    return parts or (top,)


def signed_coeff(raw: int) -> int:
    return raw if raw <= ORDER // 2 else raw - ORDER


def normalize_atom(value: Lc) -> tuple[tuple[tuple[int, int], ...], int]:
    items = tuple((wire, signed_coeff(coeff)) for wire, coeff in sorted(value.items()))
    if not items:
        raise ValueError("cannot normalize an empty LT atom")
    scale = -1 if items[0][1] < 0 else 1
    key = tuple((wire, coeff * scale) for wire, coeff in items)
    return key, scale


def ltc_atom_layout(cfg: Instance, trace: LtcTrace) -> LtcAtomLayout:
    cache_key = (cfg.seg, trace.label)
    if cache_key in LTC_ATOM_LAYOUTS:
        return LTC_ATOM_LAYOUTS[cache_key]
    step_tops: dict[int, str] = {}
    top_parts: dict[str, tuple[str, ...]] = {}
    part_values: dict[str, Lc] = {}
    top_values: dict[str, Lc] = {}

    def load_top(top: str) -> Lc:
        if top in top_values:
            return top_values[top]
        parts = relation_lc_parts(cfg.seg, top)
        top_parts[top] = parts
        total: Lc = {}
        for part in parts:
            value = parse_relation_lc(cfg, part)
            part_values[part] = value
            total = lc_add((total, 1), (value, 1))
        top_values[top] = total
        return total

    def row_tops(row: int) -> tuple[str, ...]:
        return tuple(dict.fromkeys(re.findall(
            r"\b(relationLc\d+) rho", def_body(source(cfg.seg), f"relationRow{row}"),
        )))

    for n, step in trace.steps.items():
        if not step.one or step.il_mul_row is None:
            continue
        matches = [
            top for top in row_tops(step.il_mul_row)
            if load_top(top) == trace.il[n + 1]
        ]
        if not matches:
            continue
        if len(matches) != 1:
            raise ValueError(f"{trace.label} step {n}: ambiguous IL LC {matches}")
        step_tops[n] = matches[0]
    terminal_row = 2717 if trace.label == "Q4" else 2345
    terminal_expected = (
        lc_add(({0: 1}, 1), (trace.il[0], -1))
        if trace.label == "Q4" else trace.il[0]
    )
    terminal_matches = [
        top for top in row_tops(terminal_row)
        if load_top(top) == terminal_expected
    ]
    if len(terminal_matches) != 1:
        raise ValueError(f"{trace.label}: terminal LC matches {terminal_matches}")
    terminal_top = terminal_matches[0]

    values = list(trace.il.values()) + list(part_values.values())
    wires = sorted({wire for value in values for wire in value if wire != 0})
    signatures = [
        tuple(wire in value for value in values)
        for wire in wires
    ]
    segments: list[tuple[int, ...]] = []
    start = 0
    for index in range(1, len(wires) + 1):
        membership_changed = index == len(wires) or signatures[index] != signatures[index - 1]
        size_bound = index - start == 16
        if membership_changed or size_bound:
            segments.append(tuple(wires[start:index]))
            start = index

    atom_names: dict[tuple[tuple[int, int], ...], str] = {}
    for value in values:
        for segment in segments:
            chunk = {wire: value[wire] for wire in segment if wire in value}
            if not chunk:
                continue
            key, _ = normalize_atom(chunk)
            if key not in atom_names:
                atom_names[key] = (
                    f"seg{cfg.seg}{trace.label}IlAtom{len(atom_names)}"
                )
    layout = LtcAtomLayout(
        tuple(segments), atom_names, part_values, top_parts, top_values,
        step_tops, terminal_top,
    )
    LTC_ATOM_LAYOUTS[cache_key] = layout
    return layout


def ltc_atom_terms(value: Lc, layout: LtcAtomLayout) -> list[str]:
    terms: list[str] = []
    constant = signed_coeff(value.get(0, 0))
    if constant:
        terms.append(str(constant))
    for segment in layout.segments:
        chunk = {wire: value[wire] for wire in segment if wire in value}
        if not chunk:
            continue
        key, scale = normalize_atom(chunk)
        terms.append(("-" if scale == -1 else "") + layout.atom_names[key])
    return terms


def ltc_atom_expr(value: Lc, cfg: Instance, layout: LtcAtomLayout) -> str:
    terms = []
    for term in ltc_atom_terms(value, layout):
        if term.lstrip("-").isdigit():
            terms.append(f"({term} : Seg{cfg.seg}.F)")
        elif term.startswith("-"):
            terms.append(f"(-1 : Seg{cfg.seg}.F) * {term[1:]} rho")
        else:
            terms.append(f"{term} rho")
    return " + ".join(terms) if terms else f"(0 : Seg{cfg.seg}.F)"


def ltc_atom_defs(lines: list[str], cfg: Instance, layout: LtcAtomLayout) -> None:
    for key, name in layout.atom_names.items():
        value = {wire: coeff % ORDER for wire, coeff in key}
        lines.append(
            f"def {name} (rho : Nat -> Seg{cfg.seg}.F) : Seg{cfg.seg}.F := "
            f"{lc_expr(value, cfg)}\n"
        )
    lines.append("\n")


def ltc_state_name(cfg: Instance, trace: LtcTrace, kind: str, index: int) -> str:
    return f"seg{cfg.seg}{trace.label}{kind}{index}"


def ltc_lc_atom_theorem(cfg: Instance, trace: LtcTrace, name: str) -> str:
    return f"seg{cfg.seg}{trace.label}{name}Atom"


def ltc_step_lc_theorem(cfg: Instance, trace: LtcTrace, n: int) -> str:
    return f"seg{cfg.seg}{trace.label}Step{n}IlLc"


def ltc_terminal_lc_theorem(cfg: Instance, trace: LtcTrace) -> str:
    return f"seg{cfg.seg}{trace.label}TerminalIlLc"


def ltc_state_atoms_theorem(cfg: Instance, trace: LtcTrace, index: int) -> str:
    return f"seg{cfg.seg}{trace.label}Il{index}Atoms"


def append_ltc_atom_terms(base: str, terms: list[str], cfg: Instance) -> str:
    expression = base
    for term in terms:
        expression += (
            f" + (-1 : Seg{cfg.seg}.F) * {term[1:]} rho"
            if term.startswith("-") else f" + {term} rho"
        )
    return expression


def emit_ltc_state_defs(
    lines: list[str], cfg: Instance, trace: LtcTrace, layout: LtcAtomLayout,
) -> None:
    ltc_atom_defs(lines, cfg, layout)
    for index in range(253, -1, -1):
        lines.append(
            f"def {ltc_state_name(cfg, trace, 'Pe', index)} "
            f"(rho : Nat -> Seg{cfg.seg}.F) : Seg{cfg.seg}.F := "
            f"{lc_expr(trace.pe[index], cfg)}\n"
        )
        if index == 253:
            il_expression = f"(0 : Seg{cfg.seg}.F)"
        else:
            out_terms = ltc_atom_terms(trace.il[index], layout)
            in_terms = ltc_atom_terms(trace.il[index + 1], layout)
            if out_terms[:len(in_terms)] != in_terms:
                raise ValueError(f"{trace.label} state {index}: IL atom prefix mismatch")
            il_expression = append_ltc_atom_terms(
                f"{ltc_state_name(cfg, trace, 'Il', index + 1)} rho",
                out_terms[len(in_terms):], cfg,
            )
        lines.append(
            f"def {ltc_state_name(cfg, trace, 'Il', index)} "
            f"(rho : Nat -> Seg{cfg.seg}.F) : Seg{cfg.seg}.F := {il_expression}\n"
        )
    for kind in ("Pe", "Il"):
        state = f"seg{cfg.seg}{trace.label}{kind}State"
        lines.append(f"\ndef {state} (rho : Nat -> Seg{cfg.seg}.F) : Nat -> Seg{cfg.seg}.F\n")
        for index in range(254):
            lines.append(
                f"  | {index} => {ltc_state_name(cfg, trace, kind, index)} rho\n"
            )
        lines.append("  | _ => 0\n")
    lines.append("\n")

    for index in range(253, -1, -1):
        il_name = ltc_state_name(cfg, trace, "Il", index)
        lines.append(
            f"theorem {ltc_state_atoms_theorem(cfg, trace, index)} "
            f"(rho : Nat -> Seg{cfg.seg}.F) : {il_name} rho = "
            f"{ltc_atom_expr(trace.il[index], cfg, layout)} := by\n"
        )
        if index == 253:
            lines.append("  rfl\n\n")
        else:
            lines.extend([
                f"  unfold {il_name}\n",
                f"  rw [{ltc_state_atoms_theorem(cfg, trace, index + 1)} rho] "
                "<;> simp only [zero_add]\n\n",
            ])

    emitted_parts: set[str] = set()
    for top, parts in layout.top_parts.items():
        for part in parts:
            if part in emitted_parts:
                continue
            emitted_parts.add(part)
            value = layout.part_values[part]
            atom_names = {
                term.lstrip("-") for term in ltc_atom_terms(value, layout)
                if not term.lstrip("-").isdigit()
            }
            lines.append(
                f"theorem {ltc_lc_atom_theorem(cfg, trace, part)} "
                f"(rho : Nat -> Seg{cfg.seg}.F) : Seg{cfg.seg}.{part} rho = "
                f"{ltc_atom_expr(value, cfg, layout)} := by\n"
                f"  unfold Seg{cfg.seg}.{part} {' '.join(sorted(atom_names))}\n"
                "  ring\n\n"
            )
        if parts != (top,):
            lines.append(
                f"theorem {ltc_lc_atom_theorem(cfg, trace, top)} "
                f"(rho : Nat -> Seg{cfg.seg}.F) : Seg{cfg.seg}.{top} rho = "
                f"{ltc_atom_expr(layout.top_values[top], cfg, layout)} := by\n"
                f"  unfold Seg{cfg.seg}.{top}\n"
            )
            rewrites = ", ".join(
                f"{ltc_lc_atom_theorem(cfg, trace, part)} rho" for part in parts
            )
            lines.append(f"  rw [{rewrites}] <;> ring\n\n")

    for n, top in layout.step_tops.items():
        il_in = ltc_state_name(cfg, trace, "Il", n + 1)
        lines.extend([
            f"theorem {ltc_step_lc_theorem(cfg, trace, n)} "
            f"(rho : Nat -> Seg{cfg.seg}.F) : Seg{cfg.seg}.{top} rho = "
            f"{il_in} rho := by\n",
            f"  rw [{ltc_lc_atom_theorem(cfg, trace, top)} rho]\n",
            f"  exact ({ltc_state_atoms_theorem(cfg, trace, n + 1)} rho).symm\n\n",
        ])
    terminal = layout.terminal_top
    terminal_rhs = (
        f"1 - {ltc_state_name(cfg, trace, 'Il', 0)} rho"
        if trace.label == "Q4" else
        f"{ltc_state_name(cfg, trace, 'Il', 0)} rho"
    )
    lines.extend([
        f"theorem {ltc_terminal_lc_theorem(cfg, trace)} "
        f"(rho : Nat -> Seg{cfg.seg}.F) : Seg{cfg.seg}.{terminal} rho = "
        f"{terminal_rhs} := by\n",
        f"  rw [{ltc_lc_atom_theorem(cfg, trace, terminal)} rho]\n",
    ])
    if trace.label == "Q4":
        lines.extend([
            f"  rw [{ltc_state_atoms_theorem(cfg, trace, 0)} rho]\n",
            "  ring\n\n",
        ])
    else:
        lines.append(
            f"  exact ({ltc_state_atoms_theorem(cfg, trace, 0)} rho).symm\n\n"
        )


def row_is_structured(seg: int, row: int) -> bool:
    """A row rendered as `StructuredLC.eval` (compact accumulator) rather than a
    flat product.  Only such rows need the StructuredLC→sumAux simp; emitting it
    on a flat row fails with `simp made no progress`."""
    text = source(seg)
    if "StructuredLC.eval" in def_body(text, f"relationRow{row}"):
        return True
    return any(
        "StructuredLC.eval" in def_body(text, name)
        for name in row_lc_defs(seg, row)
    )


def emit_row_unfold(lines: list[str], cfg: Instance, row: int) -> None:
    names = [f"Seg{cfg.seg}.relationRow{row}"] + [
        f"Seg{cfg.seg}.{name}" for name in lc_dependencies(cfg.seg, row)
    ]
    lines.append(f"  unfold {' '.join(names)} at r{row}\n")
    if row_is_structured(cfg.seg, row):
        lines.append(
            "  simp only [Shieldd.GnarkFormal.StructuredLC.eval, "
            "Shieldd.GnarkFormal.StructuredLC.sumRuns, "
            "Shieldd.GnarkFormal.StructuredLC.sumResidual, "
            f"Shieldd.GnarkFormal.StrideRun.eval] at r{row}\n"
        )


def emit_mul_equation(
    lines: list[str], cfg: Instance, row: int | None, unfold_names: list[str],
    *, bullet: bool = False,
) -> None:
    prefix = "    · " if bullet else "      "
    continuation = "      "
    if unfold_names:
        lines.append(f"{prefix}unfold {' '.join(unfold_names)}\n")
        prefix = continuation
    lines.append(f"{prefix}{'ring' if row is None else f'linear_combination r{row}'}\n")


def emit_ltc_step_have(
    lines: list[str], cfg: Instance, trace: LtcTrace, step: LtcStep
) -> None:
    n = step.n
    pe_in = ltc_state_name(cfg, trace, "Pe", n + 1)
    il_in = ltc_state_name(cfg, trace, "Il", n + 1)
    pe_out = ltc_state_name(cfg, trace, "Pe", n)
    il_out = ltc_state_name(cfg, trace, "Il", n)
    bit = f"rho {seat_wire(cfg, step.bit)}"
    prefix = f"hs{trace.label}{n}"
    if step.one:
        lines.extend([
            f"  have {prefix} :\n",
            f"      {pe_out} rho = {pe_in} rho * {bit} ∧\n",
            f"      {il_out} rho = {il_in} rho + {pe_in} rho * (1 - {bit}) -\n",
            f"        {il_in} rho * ({pe_in} rho * (1 - {bit})) := by\n",
            f"    have hl : {lc_expr(step.l or {}, cfg)} = "
            f"{pe_in} rho * (1 - {bit}) := by\n",
        ])
        emit_mul_equation(lines, cfg, step.l_row, [pe_in])
        lines.append(
            f"    have him : {lc_expr(step.il_mul or {}, cfg)} = "
            f"{il_in} rho * ({lc_expr(step.l or {}, cfg)}) := by\n"
        )
        emit_mul_equation(lines, cfg, step.il_mul_row, [il_in])
        lines.append(
            f"    have hacc : {il_out} rho = {il_in} rho + "
            f"({lc_expr(step.l or {}, cfg)}) - ({lc_expr(step.il_mul or {}, cfg)}) := by\n"
            f"      unfold {il_out} {il_in}\n"
            "      ring\n"
            "    constructor\n"
        )
        emit_mul_equation(lines, cfg, step.pe_row, [pe_out, pe_in], bullet=True)
        lines.extend([
            "    · rw [hacc, hl, him, hl]\n",
            "\n",
        ])
    else:
        lines.extend([
            f"  have {prefix} :\n",
            f"      {pe_out} rho = {pe_in} rho * (1 - {bit}) ∧\n",
            f"      {il_out} rho = {il_in} rho := by\n",
            "    constructor\n",
        ])
        emit_mul_equation(lines, cfg, step.pe_row, [pe_out, pe_in], bullet=True)
        lines.extend([
            f"    · unfold {il_out} {il_in}\n",
            "      ring\n",
            "\n",
        ])


def emit_ltc_steps(
    lines: list[str], cfg: Instance, trace: LtcTrace, terminal_rows: set[int]
) -> None:
    used_rows = {
        row
        for step in trace.steps.values()
        for row in (step.l_row, step.il_mul_row, step.pe_row)
        if row is not None
    } | terminal_rows
    emit_unpack(lines, cfg, used_rows)
    for row in sorted(used_rows):
        emit_row_unfold(lines, cfg, row)
    for n in range(252, -1, -1):
        emit_ltc_step_have(lines, cfg, trace, trace.steps[n])


def emit_ltc_step_function(lines: list[str], cfg: Instance, trace: LtcTrace) -> None:
    pe_state = f"seg{cfg.seg}{trace.label}PeState"
    il_state = f"seg{cfg.seg}{trace.label}IlState"
    bit_def = f"Shieldd.GnarkFormal.Extracted.IvkModR.{trace.bit_def}"
    bit_base = affine_internal_run(cfg, 977, 253, "Ivk bits")
    lines.extend([
        f"  have hsteps : ∀ n, n < 253 →\n",
        f"      if {bit_def} n then\n",
        f"        {pe_state} rho n = {pe_state} rho (n + 1) * rho "
        f"({bit_base} + n) ∧\n",
        f"        {il_state} rho n = {il_state} rho (n + 1) + "
        f"{pe_state} rho (n + 1) * (1 - rho ({bit_base} + n)) -\n",
        f"          {il_state} rho (n + 1) * ({pe_state} rho (n + 1) * "
        f"(1 - rho ({bit_base} + n)))\n",
        "      else\n",
        f"        {pe_state} rho n = {pe_state} rho (n + 1) * "
        f"(1 - rho ({bit_base} + n)) ∧\n",
        f"        {il_state} rho n = {il_state} rho (n + 1) := by\n",
        "    intro n hn\n",
        "    interval_cases n\n",
    ])
    for n in range(253):
        truth = trace.steps[n].one
        lines.extend([
            f"    · have hb : {bit_def} {n} = {'true' if truth else 'false'} := by "
            "decide +kernel\n",
            f"      simpa only [hb, {'if_true' if truth else 'if_false'}, "
            f"{pe_state}, {il_state}, Nat.reduceAdd] using hs{trace.label}{n}\n",
        ])


LTC_CHUNK_SIZE = 1


def ltc_chunks() -> list[tuple[int, int]]:
    return [
        (start, min(start + LTC_CHUNK_SIZE, 253))
        for start in range(0, 253, LTC_CHUNK_SIZE)
    ]


def ltc_component_header(cfg: Instance, previous: str) -> list[str]:
    return [
        f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.{previous}\n\n",
        "set_option maxRecDepth 1000000\n",
        "set_option maxHeartbeats 20000000\n",
        "set_option linter.unusedVariables false\n\n",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n\n",
    ]


def emit_ltc_defs(cfg: Instance, trace: LtcTrace, previous: str) -> str:
    lines = [
        f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.{previous}\n",
        "import ShielddGnarkFormal.Deployed.Dtk.LtConst\n",
        "import ShielddGnarkFormal.DtkBridge\n",
        "import ShielddGnarkFormal.CompressDeployedGadgets\n\n",
        "set_option maxRecDepth 1000000\n",
        "set_option maxHeartbeats 20000000\n",
        "set_option linter.unusedVariables false\n\n",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n\n",
    ]
    emit_ltc_state_defs(lines, cfg, trace, ltc_atom_layout(cfg, trace))
    lines.append("end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n")
    return "".join(lines)


def emit_ltc_step_range(
    lines: list[str], cfg: Instance, trace: LtcTrace, start: int, end: int,
    terminal_rows: set[int],
) -> None:
    used_rows = {
        row
        for n in range(start, end)
        for row in (
            trace.steps[n].l_row,
            trace.steps[n].il_mul_row,
            trace.steps[n].pe_row,
        )
        if row is not None
    } | terminal_rows
    emit_unpack(lines, cfg, used_rows)


def ltc_step_rows(step: LtcStep) -> list[int]:
    return [
        row for row in (step.l_row, step.il_mul_row, step.pe_row)
        if row is not None
    ]


def ltc_step_application(cfg: Instance, trace: LtcTrace, n: int) -> str:
    rows = " ".join(f"r{row}" for row in ltc_step_rows(trace.steps[n]))
    return f"seg{cfg.seg}{trace.label}Step{n} rho {rows}".rstrip()


def emit_ltc_step_theorem(
    lines: list[str], cfg: Instance, trace: LtcTrace, step: LtcStep,
    layout: LtcAtomLayout,
) -> None:
    n = step.n
    pe_in = ltc_state_name(cfg, trace, "Pe", n + 1)
    il_in = ltc_state_name(cfg, trace, "Il", n + 1)
    pe_out = ltc_state_name(cfg, trace, "Pe", n)
    il_out = ltc_state_name(cfg, trace, "Il", n)
    bit = f"rho {seat_wire(cfg, step.bit)}"
    theorem = f"seg{cfg.seg}{trace.label}Step{n}"
    args = " ".join(
        f"(r{row} : Seg{cfg.seg}.relationRow{row} rho)"
        for row in ltc_step_rows(step)
    )
    if step.one:
        out_terms = ltc_atom_terms(trace.il[n], layout)
        in_terms = ltc_atom_terms(trace.il[n + 1], layout)
        tail_terms = out_terms[len(in_terms):]
        if out_terms[:len(in_terms)] != in_terms or not tail_terms:
            raise ValueError(f"{trace.label} step {n}: IL atom prefix mismatch")
        if any(term.lstrip("-").isdigit() for term in tail_terms):
            raise ValueError(f"{trace.label} step {n}: invalid IL tail {tail_terms}")
        tail_rhs = append_ltc_atom_terms(f"{il_in} rho", tail_terms, cfg)
        tail_atoms = " ".join(term.lstrip("-") for term in tail_terms)
        lines.extend([
            f"theorem {theorem}L (rho : Nat -> Seg{cfg.seg}.F) "
            f"(r{step.l_row} : Seg{cfg.seg}.relationRow{step.l_row} rho) :\n",
            f"    {lc_expr(step.l or {}, cfg)} = {pe_in} rho * (1 - {bit}) := by\n",
            f"  unfold Seg{cfg.seg}.relationRow{step.l_row} at r{step.l_row}\n",
            f"  unfold {pe_in}\n",
            f"  linear_combination -r{step.l_row}\n\n",
            f"theorem {theorem}IlMul (rho : Nat -> Seg{cfg.seg}.F) "
            f"{'' if step.il_mul_row is None else f'(r{step.il_mul_row} : Seg{cfg.seg}.relationRow{step.il_mul_row} rho)'} :\n",
            f"    {lc_expr(step.il_mul or {}, cfg)} = {il_in} rho * "
            f"({lc_expr(step.l or {}, cfg)}) := by\n",
        ])
        if step.il_mul_row is None:
            atom_names = sorted({
                term.lstrip("-")
                for term in ltc_atom_terms(trace.il[n + 1], layout)
                if not term.lstrip("-").isdigit()
            })
            lines.extend([
                f"  rw [{ltc_state_atoms_theorem(cfg, trace, n + 1)} rho]\n",
            ])
            if atom_names:
                lines.append(f"  unfold {' '.join(atom_names)}\n")
            lines.append("  ring\n\n")
        elif n not in layout.step_tops:
            # Non-top one-step: the il_mul row inlines the fully-expanded
            # accumulator (no named relationLc equal to il[n+1]). A one-level
            # `unfold il_in` leaves the inner Il folded, so ring can't match the
            # raw row. Instead rewrite il_in via its (induction-proved) atoms
            # theorem, then unfold the IlAtom names down to raw wires.
            atom_names = sorted({
                term.lstrip("-")
                for term in ltc_atom_terms(trace.il[n + 1], layout)
                if not term.lstrip("-").isdigit()
            })
            emit_row_unfold(lines, cfg, step.il_mul_row)
            lines.append(
                f"  rw [{ltc_state_atoms_theorem(cfg, trace, n + 1)} rho]\n"
            )
            if atom_names:
                lines.append(f"  unfold {' '.join(atom_names)}\n")
            lines.append(f"  linear_combination -r{step.il_mul_row}\n\n")
        else:
            lines.extend([
                f"  unfold Seg{cfg.seg}.relationRow{step.il_mul_row} at r{step.il_mul_row}\n",
                f"  rw [{ltc_step_lc_theorem(cfg, trace, n)} rho] "
                f"at r{step.il_mul_row}\n",
                f"  linear_combination -r{step.il_mul_row}\n\n",
            ])
        lines.extend([
            f"theorem {theorem}Acc (rho : Nat -> Seg{cfg.seg}.F) :\n",
            f"    {il_out} rho = {il_in} rho + "
            f"({lc_expr(step.l or {}, cfg)}) - ({lc_expr(step.il_mul or {}, cfg)}) := by\n",
            f"  have hstate : {il_out} rho = {tail_rhs} := by rfl\n",
            "  rw [hstate]\n",
            f"  unfold {tail_atoms}\n",
            "  ring\n\n",
            f"theorem {theorem}Pe (rho : Nat -> Seg{cfg.seg}.F) "
            f"(r{step.pe_row} : Seg{cfg.seg}.relationRow{step.pe_row} rho) :\n",
            f"    {pe_out} rho = {pe_in} rho * {bit} := by\n",
            f"  unfold Seg{cfg.seg}.relationRow{step.pe_row} at r{step.pe_row}\n",
            f"  unfold {pe_out} {pe_in}\n",
            f"  linear_combination -r{step.pe_row}\n\n",
            f"theorem {theorem} (rho : Nat -> Seg{cfg.seg}.F) {args} :\n",
            f"    {pe_out} rho = {pe_in} rho * {bit} ∧\n",
            f"    {il_out} rho = {il_in} rho + {pe_in} rho * (1 - {bit}) -\n",
            f"      {il_in} rho * ({pe_in} rho * (1 - {bit})) := by\n",
            "  constructor\n",
            f"  · exact {theorem}Pe rho r{step.pe_row}\n",
            f"  · rw [{theorem}Acc rho, {theorem}L rho r{step.l_row}, "
            f"{theorem}IlMul rho{'' if step.il_mul_row is None else f' r{step.il_mul_row}'}, "
            f"{theorem}L rho r{step.l_row}]\n\n",
        ])
    else:
        pe_arg = (
            "" if step.pe_row is None else
            f"(r{step.pe_row} : Seg{cfg.seg}.relationRow{step.pe_row} rho)"
        )
        lines.extend([
            f"theorem {theorem}Pe (rho : Nat -> Seg{cfg.seg}.F) "
            f"{pe_arg} :\n",
            f"    {pe_out} rho = {pe_in} rho * (1 - {bit}) := by\n",
        ])
        if step.pe_row is None:
            lines.extend([
                f"  unfold {pe_out} {pe_in}\n",
                "  ring\n\n",
            ])
        else:
            lines.extend([
                f"  unfold Seg{cfg.seg}.relationRow{step.pe_row} at r{step.pe_row}\n",
                f"  unfold {pe_out} {pe_in}\n",
                f"  linear_combination -r{step.pe_row}\n\n",
            ])
        lines.extend([
            f"theorem {theorem} (rho : Nat -> Seg{cfg.seg}.F) {args} :\n",
            f"    {pe_out} rho = {pe_in} rho * (1 - {bit}) ∧\n",
            f"    {il_out} rho = {il_in} rho := by\n",
            f"  exact ⟨{theorem}Pe rho"
            f"{'' if step.pe_row is None else f' r{step.pe_row}'}, rfl⟩\n\n",
        ])


def emit_ltc_step_function_range(
    lines: list[str], cfg: Instance, trace: LtcTrace, start: int, end: int,
) -> None:
    pe_state = f"seg{cfg.seg}{trace.label}PeState"
    il_state = f"seg{cfg.seg}{trace.label}IlState"
    bit_def = f"Shieldd.GnarkFormal.Extracted.IvkModR.{trace.bit_def}"
    bit_base = affine_internal_run(cfg, 977, 253, "Ivk bits")
    lines.extend([
        "  have hsteps : ∀ n, " + str(start) + " ≤ n → n < " + str(end) + " →\n",
        f"      if {bit_def} n then\n",
        f"        {pe_state} rho n = {pe_state} rho (n + 1) * rho "
        f"({bit_base} + n) ∧\n",
        f"        {il_state} rho n = {il_state} rho (n + 1) + "
        f"{pe_state} rho (n + 1) * (1 - rho ({bit_base} + n)) -\n",
        f"          {il_state} rho (n + 1) * ({pe_state} rho (n + 1) * "
        f"(1 - rho ({bit_base} + n)))\n",
        "      else\n",
        f"        {pe_state} rho n = {pe_state} rho (n + 1) * "
        f"(1 - rho ({bit_base} + n)) ∧\n",
        f"        {il_state} rho n = {il_state} rho (n + 1) := by\n",
        "    intro n hnlo hnhi\n",
        "    interval_cases n\n",
    ])
    for n in range(start, end):
        truth = trace.steps[n].one
        # Discharge by `↓reduceIte` + defeq `exact`: `{pe,il}State rho k` is
        # iota-defeq to `seg{N}{T}{Pe,Il}k rho`, so we must NOT unfold the
        # 254-case state match functions via `simp only [..State..]` — that
        # forces a giant matcher splitter (~6GB+ RSS blowup per chunk).
        lines.extend([
            f"    · have hb : {bit_def} {n} = {'true' if truth else 'false'} := by "
            "decide +kernel\n",
            f"      simp only [hb, ↓reduceIte, Nat.reduceAdd]\n",
            f"      exact {ltc_step_application(cfg, trace, n)}\n",
        ])


def emit_q4_guard_theorem(
    lines: list[str], cfg: Instance, trace: LtcTrace,
) -> None:
    q_guard_wires = [seat_wire(cfg, wire) for wire in (3115, 3116, 3117)]
    q_il0 = ltc_state_name(cfg, trace, "Il", 0)
    lines.extend([
        f"theorem seg{cfg.seg}Q4Guard (rho : Nat -> Seg{cfg.seg}.F) (k : Prop) "
        f"(r2715 : Seg{cfg.seg}.relationRow2715 rho) "
        f"(r2716 : Seg{cfg.seg}.relationRow2716 rho) "
        f"(r2717 : Seg{cfg.seg}.relationRow2717 rho) "
        f"(r2718 : Seg{cfg.seg}.relationRow2718 rho) (hk : k) :\n",
        "    Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k "
        f"({q_il0} rho) := by\n",
    ])
    for row in (2715, 2716, 2717, 2718):
        lines.append(f"  unfold Seg{cfg.seg}.relationRow{row} at r{row}\n")
    lines.extend([
        "  unfold Shieldd.GnarkFormal.DtkBridge.ivkGuardK\n",
        "  simp only [Shieldd.GnarkFormal.Extracted.IvkModR.Gates, GatesGnark9, "
        "GatesGnark8, GatesDef.sub, GatesDef.mul, GatesDef.eq]\n",
        f"  refine ⟨_, rfl, rho {q_guard_wires[0]}, ?_, "
        f"_, rfl, rho {q_guard_wires[2]}, ?_, ?_, hk⟩\n",
        "  · refine Shieldd.GnarkFormal.DeployedGadgets.is_zero_of_hint "
        f"_ (rho {q_guard_wires[1]}) (rho {q_guard_wires[0]}) ?_ ?_\n",
        "    · linear_combination -r2715\n",
        "    · linear_combination r2716\n",
        f"  · rw [{ltc_terminal_lc_theorem(cfg, trace)} rho] at r2717\n",
        "    linear_combination -r2717\n",
        "  · linear_combination r2718\n\n",
    ])


def emit_r_final_theorem(
    lines: list[str], cfg: Instance, trace: LtcTrace,
) -> None:
    r_il0 = ltc_state_name(cfg, trace, "Il", 0)
    lines.extend([
        f"theorem seg{cfg.seg}RFinal (rho : Nat -> Seg{cfg.seg}.F) "
        f"(r2345 : Seg{cfg.seg}.relationRow2345 rho) : {r_il0} rho = 1 := by\n",
    ])
    lines.append(f"  unfold Seg{cfg.seg}.relationRow2345 at r2345\n")
    lines.extend([
        f"  rw [{ltc_terminal_lc_theorem(cfg, trace)} rho] at r2345\n",
        "  linear_combination r2345\n\n",
    ])


def emit_ltc_chunk(
    cfg: Instance, trace: LtcTrace, chunk_index: int, previous: str,
) -> str:
    start, end = ltc_chunks()[chunk_index]
    span = end - start
    is_q4 = trace.label == "Q4"
    terminal_rows = {2715, 2716, 2717, 2718} if is_q4 and start == 0 else set()
    terminal_rows |= {2345} if not is_q4 and start == 0 else set()
    pe_state = f"seg{cfg.seg}{trace.label}PeState"
    il_state = f"seg{cfg.seg}{trace.label}IlState"
    bit_def = f"Shieldd.GnarkFormal.Extracted.IvkModR.{trace.bit_def}"
    continuation = (
        f"Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k"
        if is_q4 else
        f"Shieldd.GnarkFormal.DtkBridge.rContK (seg{cfg.seg}IvkBits rho) (rho 10) k"
    )
    theorem = f"seg{cfg.seg}_{'q4' if is_q4 else 'r'}_chunk{chunk_index}"
    lines = ltc_component_header(cfg, previous)
    layout = ltc_atom_layout(cfg, trace)
    for n in range(start, end):
        emit_ltc_step_theorem(lines, cfg, trace, trace.steps[n], layout)
    if start == 0 and is_q4:
        emit_q4_guard_theorem(lines, cfg, trace)
    elif start == 0:
        emit_r_final_theorem(lines, cfg, trace)
    lines.append(
        f"theorem {theorem} (rho : Nat -> Seg{cfg.seg}.F) "
        f"(h : Seg{cfg.seg}.relation rho) (k : Prop) "
    )
    if is_q4:
        lines.append("(hk : k) :\n")
    else:
        lines.append(
            "(hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec "
            f"(seg{cfg.seg}IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit\n"
            "    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) "
            f"253 (1 : Seg{cfg.seg}.F) (0 : Seg{cfg.seg}.F)) :\n"
        )
    lines.append(
        "    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec "
        f"(seg{cfg.seg}IvkBits rho) {bit_def}\n"
        f"      ({continuation}) {end} ({pe_state} rho {end}) ({il_state} rho {end}) := by\n"
    )
    if start != 0:
        # Consume the previous chunk while `h : relation` is still intact;
        # emit_ltc_step_range below destructs `h` via rcases.
        prior = f"seg{cfg.seg}_{'q4' if is_q4 else 'r'}_chunk{chunk_index - 1}"
        lines.append(
            f"  have htail := {prior} rho h k {'hk' if is_q4 else 'hq4'}\n"
        )
    emit_ltc_step_range(lines, cfg, trace, start, end, terminal_rows)

    if start == 0 and is_q4:
        q_il0 = ltc_state_name(cfg, trace, "Il", 0)
        lines.extend([
            f"  have hguard := seg{cfg.seg}Q4Guard rho k r2715 r2716 r2717 r2718 hk\n",
            "  have htail : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec "
            f"(seg{cfg.seg}IvkBits rho) {bit_def} ({continuation}) 0 "
            f"({pe_state} rho 0) ({il_state} rho 0) := by\n",
            f"    simpa only [Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec] "
            f"using hguard\n",
        ])
    elif start == 0:
        r_il0 = ltc_state_name(cfg, trace, "Il", 0)
        lines.extend([
            f"  have hfinal := seg{cfg.seg}RFinal rho r2345\n",
            "  have htailCont : Shieldd.GnarkFormal.DtkBridge.rContK "
            f"(seg{cfg.seg}IvkBits rho) (rho 10) k ({r_il0} rho) := ⟨hfinal, hq4⟩\n",
            "  have htail : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec "
            f"(seg{cfg.seg}IvkBits rho) {bit_def} ({continuation}) 0 "
            f"({pe_state} rho 0) ({il_state} rho 0) := by\n",
            f"    simpa only [Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec] "
            f"using htailCont\n",
        ])

    emit_ltc_step_function_range(lines, cfg, trace, start, end)
    lines.extend([
        "  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec\n",
        f"    (seg{cfg.seg}IvkBits rho) {bit_def} ({continuation})\n",
        f"    ({pe_state} rho) ({il_state} rho) {start} {span}\n",
        f"    (by intro n hnlo hnhi; have key := seg{cfg.seg}IvkBits_get rho n (by omega); "
        "erw [key]; exact hsteps n hnlo hnhi) htail (by omega)\n",
        "  simpa only [Nat.reduceAdd] using ht\n\n",
        "end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n",
    ])
    return "".join(lines)


def emit_ltc(cfg: Instance) -> str:
    last = len(ltc_chunks()) - 1
    lines = ltc_component_header(
        cfg, f"DtkAdapterSeg{cfg.seg}LtRChunk{last}"
    )
    lines.extend([
        f"theorem seg{cfg.seg}Q4PeState_terminal (rho : Nat -> Seg{cfg.seg}.F) : "
        f"seg{cfg.seg}Q4PeState rho 253 = (1 : Seg{cfg.seg}.F) := by rfl\n",
        f"theorem seg{cfg.seg}Q4IlState_terminal (rho : Nat -> Seg{cfg.seg}.F) : "
        f"seg{cfg.seg}Q4IlState rho 253 = (0 : Seg{cfg.seg}.F) := by rfl\n",
        f"theorem seg{cfg.seg}RPeState_terminal (rho : Nat -> Seg{cfg.seg}.F) : "
        f"seg{cfg.seg}RPeState rho 253 = (1 : Seg{cfg.seg}.F) := by rfl\n",
        f"theorem seg{cfg.seg}RIlState_terminal (rho : Nat -> Seg{cfg.seg}.F) : "
        f"seg{cfg.seg}RIlState rho 253 = (0 : Seg{cfg.seg}.F) := by rfl\n\n",
        f"theorem seg{cfg.seg}_q4_ladder (rho : Nat -> Seg{cfg.seg}.F) "
        f"(h : Seg{cfg.seg}.relation rho) (k : Prop) (hk : k) :\n",
        "    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec "
        f"(seg{cfg.seg}IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit\n",
        "      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) "
        f"253 (1 : Seg{cfg.seg}.F) (0 : Seg{cfg.seg}.F) := by\n",
        f"  have ht := seg{cfg.seg}_q4_chunk{last} rho h k hk\n",
        f"  rw [seg{cfg.seg}Q4PeState_terminal, seg{cfg.seg}Q4IlState_terminal] at ht\n",
        "  exact ht\n\n",
        f"theorem seg{cfg.seg}_r_ladder (rho : Nat -> Seg{cfg.seg}.F) "
        f"(h : Seg{cfg.seg}.relation rho) (k : Prop)\n",
        "    (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec "
        f"(seg{cfg.seg}IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit\n",
        "      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) "
        f"253 (1 : Seg{cfg.seg}.F) (0 : Seg{cfg.seg}.F)) :\n",
        "    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec "
        f"(seg{cfg.seg}IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit\n",
        f"      (Shieldd.GnarkFormal.DtkBridge.rContK (seg{cfg.seg}IvkBits rho) (rho 10) k) "
        f"253 (1 : Seg{cfg.seg}.F) (0 : Seg{cfg.seg}.F) := by\n",
        f"  have ht := seg{cfg.seg}_r_chunk{last} rho h k hq4\n",
        f"  rw [seg{cfg.seg}RPeState_terminal, seg{cfg.seg}RIlState_terminal] at ht\n",
        "  exact ht\n\n",
        "end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n",
    ])
    return "".join(lines)


def scalar_acc_lcs(rungs: tuple[ScalarRung, ...]) -> tuple[list[Lc], list[Lc]]:
    xs: list[Lc] = [{ }]
    ys: list[Lc] = [{0: 1}]
    for rung in rungs:
        xs.append(lc_add((xs[-1], 1), ({rung.delta_x: 1}, 1)))
        ys.append(lc_add((ys[-1], 1), ({rung.delta_y: 1}, 1)))
    return xs, ys


def scalar_flat_name(cfg: Instance, axis: str, index: int) -> str:
    return f"seg{cfg.seg}LadderFlat{axis}{index}"


def scalar_acc_name(cfg: Instance, axis: str, index: int) -> str:
    return f"seg{cfg.seg}Acc{axis}{index}"


def emit_compact_acc_bridge(
    lines: list[str], current_compact: CompactLc | None,
    previous_compact: CompactLc | None, indent: str,
) -> None:
    if current_compact is None and previous_compact is None:
        lines.append(f"{indent}ring\n")
        return

    previous_runs = {
        (run.coeff, run.start, run.stride): run for run in previous_compact.runs
    } if previous_compact else {}
    changed_run: tuple[CompactRun, CompactRun] | None = None
    new_run: CompactRun | None = None
    if current_compact:
        for run in current_compact.runs:
            old = previous_runs.get((run.coeff, run.start, run.stride))
            if old is None:
                new_run = run
            elif run.count == old.count + 1:
                changed_run = (old, run)
            elif run.count != old.count:
                raise ValueError(f"unsupported compact accumulator run change: {old} -> {run}")
    if changed_run is not None:
        old, _ = changed_run
        lines.append(
            f"{indent}rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho "
            f"{old.start} {old.stride} {old.count}]\n"
        )
        # `ring` (not `norm_num`) closes both the const-0 (accX) and const-1
        # (accY) successor goals; norm_num leaves the `1 + …` associativity for
        # accY unsolved.
        lines.append(f"{indent}ring\n")
        return
    elif new_run is not None:
        if new_run.coeff != 1:
            raise ValueError(f"new accumulator run has coefficient {new_run.coeff}")
        # A run appears for the first time (its wires were flat residual singletons
        # at the previous prefix, then reach STRUCTURED_LC_MIN_RUN and collapse to
        # one `sumAux`).  Expand the fresh `sumAux count` back to its flat terms so
        # `ring` matches the residual RHS.  Peel with the symbolic step lemma
        # `sumAux_succ` (count → count-1) down to `sumAux_zero`, never
        # `simp only [sumAux]` — unfolding the recursive fuel def at a literal count
        # is the O(count) blowup the leaf-bench/linter forbid.  The peel is bounded
        # (count == MIN_RUN) and every rewrite names a step lemma, not the def.
        peels = ", ".join(
            f"Shieldd.GnarkFormal.StrideRun.sumAux_succ rho "
            f"{new_run.start} {new_run.stride} {n}"
            for n in range(new_run.count - 1, -1, -1)
        )
        lines.append(
            f"{indent}rw [{peels}, "
            f"Shieldd.GnarkFormal.StrideRun.sumAux_zero rho "
            f"{new_run.start} {new_run.stride}]\n"
        )
    lines.append(f"{indent}ring\n")


def emit_scalar_defs(
    lines: list[str], cfg: Instance, rungs: tuple[ScalarRung, ...]
) -> None:
    acc_state = f"seg{cfg.seg}LadderAccState"
    cur_state = f"seg{cfg.seg}LadderCurState"
    lines.append(
        f"def {acc_state} (rho : Nat -> Seg{cfg.seg}.F) : Nat -> EdwardsBridge.Point\n"
    )
    for index in range(252):
        lines.append(
            f"  | {index} => ⟨({scalar_acc_name(cfg, 'X', index)} rho : Seg{cfg.seg}.F), "
            f"({scalar_acc_name(cfg, 'Y', index)} rho : Seg{cfg.seg}.F)⟩\n"
        )
    lines.append("  | _ => ⟨0, 1⟩\n\n")
    lines.append(
        f"def {cur_state} (rho : Nat -> Seg{cfg.seg}.F) : Nat -> EdwardsBridge.Point\n"
    )
    lines.append(
        f"  | 0 => ⟨(rho {cfg.div_x} : Seg{cfg.seg}.F), (rho {cfg.div_y} : Seg{cfg.seg}.F)⟩\n"
    )
    for index, rung in enumerate(rungs, start=1):
        lines.append(
            f"  | {index} => ⟨(rho {seat_wire(cfg, rung.next_cur_x)} : Seg{cfg.seg}.F), "
            f"(rho {seat_wire(cfg, rung.next_cur_y)} : Seg{cfg.seg}.F)⟩\n"
        )
    lines.append("  | _ => ⟨0, 1⟩\n\n")


def acc_sum_row(
    rung: ScalarRung, rows: list[tuple[Lc, Lc, Lc]]
) -> int | None:
    """Row defining the collapsed accumulator-sum wire used by `ha0`.

    `None` when the rung's `a0` keeps accX+accY as a literal two-wire sum
    (low indices) — those need no extra row.  Otherwise the unique linear row
    whose output is the single acc-sum wire.
    """
    if rung.index == 0:
        return None
    a0_lhs = rows[rung.add_rows[0]][0]
    if len(a0_lhs) != 1:
        return None
    wire = singleton_wire(a0_lhs)
    matches = [r for r in range(len(rows)) if rows[r][2] == {wire: 1}]
    if len(matches) != 1:
        raise ValueError(
            f"scalar rung {rung.index}: acc-sum wire {wire} rows {matches}"
        )
    return matches[0]


def rung_rows(rung: ScalarRung, rows: list[tuple[Lc, Lc, Lc]]) -> set[int]:
    """Relation rows a single rung's StepRel proof consumes.

    Rung 0 derives its add-step via `unfold; ring` and references no add rows;
    every rung uses its double rows and the two select rows.
    """
    s = set(rung.double_rows) | {rung.select_x_row, rung.select_y_row}
    if rung.index != 0:
        s |= set(rung.add_rows)
    sum_row = acc_sum_row(rung, rows)
    if sum_row is not None:
        s.add(sum_row)
    return s


def emit_row_projection(
    lines: list[str], cfg: Instance, name: str, keep_rows: set[int]
) -> None:
    """Emit a projection lemma `name rho h : relationRow_a rho ∧ … ∧ row_z rho`.

    The full 80-part `unfold relation; rcases` destructure is expensive (~3.6GB
    plateau) but bounded.  Confining it to a lemma whose STATEMENT is just the
    narrow row conjunction keeps the destructured 80-part context out of the
    rung's StepRel proof — carrying that context through the rung tactics is
    what balloons to 11GB.  The rung then `obtain`s its ~13 rows for free.
    """
    ordered = sorted(keep_rows)
    conj = " ∧ ".join(f"Seg{cfg.seg}.relationRow{row} rho" for row in ordered)
    lines.extend([
        f"theorem {name} "
        f"(rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) "
        f"(h : Seg{cfg.seg}.relation rho) :\n",
        f"    {conj} := by\n",
    ])
    emit_unpack(lines, cfg, keep_rows)
    lines.append(f"  exact ⟨{', '.join(f'r{row}' for row in ordered)}⟩\n\n")


def emit_scalar_rung(
    lines: list[str], cfg: Instance, rung: ScalarRung,
    rows: list[tuple[Lc, Lc, Lc]],
) -> None:
    index = rung.index
    acc_x = scalar_acc_name(cfg, "X", index)
    acc_y = scalar_acc_name(cfg, "Y", index)
    next_acc_x = scalar_acc_name(cfg, "X", index + 1)
    next_acc_y = scalar_acc_name(cfg, "Y", index + 1)
    output_xs, output_ys = output_wires(cfg)
    if output_xs[index] != seat_wire(cfg, rung.delta_x):
        raise ValueError(f"Seg{cfg.seg} rung {index}: X accumulator wire mismatch")
    if output_ys[index] != seat_wire(cfg, rung.delta_y):
        raise ValueError(f"Seg{cfg.seg} rung {index}: Y accumulator wire mismatch")
    current_x_compact = compact_wire_lc(0, output_xs[:index])
    current_y_compact = compact_wire_lc(1, output_ys[:index])
    next_x_compact = compact_wire_lc(0, output_xs[:index + 1])
    next_y_compact = compact_wire_lc(1, output_ys[:index + 1])
    cur_x = f"rho {seat_wire(cfg, rung.cur_x)}"
    cur_y = f"rho {seat_wire(cfg, rung.cur_y)}"
    next_cur_x = f"rho {seat_wire(cfg, rung.next_cur_x)}"
    next_cur_y = f"rho {seat_wire(cfg, rung.next_cur_y)}"
    sum_x = f"rho {seat_wire(cfg, rung.sum_x)}"
    sum_y = f"rho {seat_wire(cfg, rung.sum_y)}"
    bit_wire = seat_wire(cfg, rung.bit)
    # The acc defs return Outputs.F regardless of rho.  The rung theorem types
    # `rho : Nat -> Outputs.F` (the acc field) so products `rho i * accX rho`
    # are homogeneous (Outputs.F * Outputs.F).  `Seg.relation rho` still
    # elaborates by codomain-defeq, and `linear_combination` on Seg.F rows
    # closes Outputs.F goals because ring matches atoms up to defeq.  Plain
    # applied forms (no ascription — ascription cannot retype the def result).
    ax = f"{acc_x} rho"
    ay = f"{acc_y} rho"
    nax = f"{next_acc_x} rho"
    nay = f"{next_acc_y} rho"
    rrows = rung_rows(rung, rows)
    proj_name = f"seg{cfg.seg}_rows{index}"
    emit_row_projection(lines, cfg, proj_name, rrows)
    lines.extend([
        f"theorem seg{cfg.seg}_rung{index} "
        f"(rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) "
        f"(h : Seg{cfg.seg}.relation rho) :\n",
        f"    ∀ (bit : Bool), rho {bit_wire} = Bool.toZMod bit →\n",
        f"      EdwardsBridge.onCurve ⟨({acc_x} rho : Seg{cfg.seg}.F), "
        f"({acc_y} rho : Seg{cfg.seg}.F)⟩ →\n",
        f"      EdwardsBridge.onCurve ⟨({cur_x} : Seg{cfg.seg}.F), "
        f"({cur_y} : Seg{cfg.seg}.F)⟩ →\n",
        "      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)\n",
        f"        ⟨({acc_x} rho : Seg{cfg.seg}.F), ({acc_y} rho : Seg{cfg.seg}.F)⟩\n",
        f"        ⟨({cur_x} : Seg{cfg.seg}.F), ({cur_y} : Seg{cfg.seg}.F)⟩\n",
        f"        ⟨({next_acc_x} rho : Seg{cfg.seg}.F), ({next_acc_y} rho : Seg{cfg.seg}.F)⟩\n",
        f"        ⟨({next_cur_x} : Seg{cfg.seg}.F), ({next_cur_y} : Seg{cfg.seg}.F)⟩ := by\n",
    ])
    ordered_rows = sorted(rrows)
    lines.append(
        f"  obtain ⟨{', '.join(f'r{row}' for row in ordered_rows)}⟩ := "
        f"{proj_name} rho h\n"
    )
    for row in ordered_rows:
        emit_row_unfold(lines, cfg, row)
    lines.extend([
        f"  have hrung{index} (bit : Bool) (hbit : rho {bit_wire} = "
        "Bool.toZMod bit)\n",
        f"      (hacc : EdwardsBridge.onCurve ⟨({acc_x} rho : Seg{cfg.seg}.F), "
        f"({acc_y} rho : Seg{cfg.seg}.F)⟩)\n",
        f"      (hcur : EdwardsBridge.onCurve ⟨({cur_x} : Seg{cfg.seg}.F), "
        f"({cur_y} : Seg{cfg.seg}.F)⟩) :\n",
        "      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)\n",
        f"        ⟨({acc_x} rho : Seg{cfg.seg}.F), ({acc_y} rho : Seg{cfg.seg}.F)⟩\n",
        f"        ⟨({cur_x} : Seg{cfg.seg}.F), ({cur_y} : Seg{cfg.seg}.F)⟩\n",
        f"        ⟨({next_acc_x} rho : Seg{cfg.seg}.F), ({next_acc_y} rho : Seg{cfg.seg}.F)⟩\n",
        f"        ⟨({next_cur_x} : Seg{cfg.seg}.F), ({next_cur_y} : Seg{cfg.seg}.F)⟩ := by\n",
        f"    have hnextx : {nax} = {ax} + rho {seat_wire(cfg, rung.delta_x)} := by\n",
        f"      unfold {next_acc_x} {acc_x}\n",
    ])
    emit_compact_acc_bridge(
        lines, next_x_compact, current_x_compact, "      "
    )
    lines.extend([
        f"    have hnexty : {nay} = {ay} + rho {seat_wire(cfg, rung.delta_y)} := by\n",
        f"      unfold {next_acc_y} {acc_y}\n",
    ])
    emit_compact_acc_bridge(
        lines, next_y_compact, current_y_compact, "      "
    )
    if index == 0:
        lines.extend([
            "    have haddx :\n",
            f"        {sum_x} * (1 + 3021 * ({cur_y} * {ax}) * "
            f"({cur_x} * {ay})) =\n",
            f"          {cur_y} * {ax} + {cur_x} * {ay} := by\n",
            f"      unfold {acc_x} {acc_y}\n      ring\n",
            "    have haddy :\n",
            f"        {sum_y} * (1 - 3021 * ({cur_y} * {ax}) * "
            f"({cur_x} * {ay})) =\n",
            f"          (-1) * ({cur_y} * {ax}) - {cur_x} * {ay} +\n",
            f"            ({ay} - {ax} * (-1)) * ({cur_x} + {cur_y}) := by\n",
            f"      unfold {acc_x} {acc_y}\n      ring\n",
        ])
    else:
        a0, a1, a2, a3, a4, a5 = rung.add_rows
        t0 = seat_wire(cfg, singleton_wire(rows[a0][2]))
        t1 = seat_wire(cfg, singleton_wire(rows[a1][2]))
        t2 = seat_wire(cfg, singleton_wire(rows[a2][2]))
        t3 = seat_wire(cfg, singleton_wire(rows[a3][2]))
        # `a0` is `(accSum) * (curX + curY) = rho t0`.  At low rung indices the
        # deployed circuit keeps `accSum` as the literal two-wire sum
        # accX+accY; at high indices it collapses it to one wire.  In the
        # collapsed case, proving ha0 by unfolding both Flats into the product
        # yields a ~150×150-monomial polynomial that overruns ring's simp step
        # budget.  Keep the factor narrow: collapse accX+accY to its single
        # defining wire first (linear, via the row that defines it), then
        # linear_combination on the single-wire product.
        a_sum = acc_sum_row(rung, rows)
        if a_sum is not None:
            acc_sum_seat = seat_wire(cfg, singleton_wire(rows[a0][0]))
            lines.extend([
                f"    have hsum : {ax} + {ay} = rho {acc_sum_seat} := by\n",
                f"      unfold {acc_x} {acc_y}\n",
                f"      linear_combination r{a_sum}\n",
                f"    have ha0 : ({cur_x} + {cur_y}) * ({ax} + {ay}) = rho {t0} := by\n",
                f"      rw [hsum]\n",
                f"      linear_combination r{a0}\n",
            ])
        else:
            lines.extend([
                f"    have ha0 : ({cur_x} + {cur_y}) * ({ax} + {ay}) = rho {t0} := by\n",
                f"      unfold {acc_x} {acc_y}\n",
                f"      linear_combination r{a0}\n",
            ])
        lines.extend([
            f"    have ha1 : {cur_y} * {ax} = rho {t1} := by\n",
            f"      unfold {acc_x}\n",
            f"      linear_combination r{a1}\n",
            f"    have ha2 : {cur_x} * {ay} = rho {t2} := by\n",
            f"      unfold {acc_y}\n",
            f"      linear_combination r{a2}\n",
            f"    have ha3 : 3021 * rho {t1} * rho {t2} = rho {t3} := by\n",
            f"      linear_combination r{a3}\n",
            f"    have ha4 : {sum_x} * (1 + rho {t3}) = rho {t1} + rho {t2} := by\n",
            f"      linear_combination r{a4}\n",
            f"    have ha5 : {sum_y} * (1 - rho {t3}) = rho {t0} - rho {t1} - rho {t2} := by\n",
            f"      linear_combination r{a5}\n",
            "    have haddx :\n",
            f"        {sum_x} * (1 + 3021 * ({cur_y} * {ax}) * "
            f"({cur_x} * {ay})) =\n",
            f"          {cur_y} * {ax} + {cur_x} * {ay} := by\n",
            "      rw [ha1, ha2, ha3]\n      exact ha4\n",
            "    have haddy :\n",
            f"        {sum_y} * (1 - 3021 * ({cur_y} * {ax}) * "
            f"({cur_x} * {ay})) =\n",
            f"          (-1) * ({cur_y} * {ax}) - {cur_x} * {ay} +\n",
            f"            ({ay} - {ax} * (-1)) * ({cur_x} + {cur_y}) := by\n",
            "      rw [ha1, ha2, ha3]\n",
            "      calc\n",
            f"        {sum_y} * (1 - rho {t3}) = rho {t0} - rho {t1} - rho {t2} := ha5\n",
            f"        _ = (-1) * rho {t1} - rho {t2} + "
            f"({ay} - {ax} * (-1)) * ({cur_x} + {cur_y}) := by\n",
            "          rw [← ha0]\n          ring\n",
        ])
    lines.extend([
        f"    have hselx : {nax} = {ax} - "
        f"Bool.toZMod bit * ({ax} - {sum_x}) := by\n",
        f"      have hd : rho {seat_wire(cfg, rung.delta_x)} = "
        f"Bool.toZMod bit * ({sum_x} - {ax}) := by\n",
        f"        rw [← hbit]\n",
        f"        unfold {acc_x}\n",
        f"        linear_combination -r{rung.select_x_row}\n",
        "      rw [hnextx]\n",
        "      linear_combination hd\n",
        f"    have hsely : {nay} = {ay} - "
        f"Bool.toZMod bit * ({ay} - {sum_y}) := by\n",
        f"      have hd : rho {seat_wire(cfg, rung.delta_y)} = "
        f"Bool.toZMod bit * ({sum_y} - {ay}) := by\n",
        f"        rw [← hbit]\n",
        f"        unfold {acc_y}\n",
        f"        linear_combination -r{rung.select_y_row}\n",
        "      rw [hnexty]\n",
        "      linear_combination hd\n",
    ])
    d0, d1, d2, d3, d4 = rung.double_rows
    vxy = seat_wire(cfg, singleton_wire(rows[d0][2]))
    vxx = seat_wire(cfg, singleton_wire(rows[d1][2]))
    vyy = seat_wire(cfg, singleton_wire(rows[d2][2]))
    lines.extend([
        f"    have hd0 : {cur_x} * {cur_y} = rho {vxy} := by linear_combination r{d0}\n",
        f"    have hd1 : {cur_x} * {cur_x} = rho {vxx} := by linear_combination r{d1}\n",
        f"    have hd2 : {cur_y} * {cur_y} = rho {vyy} := by linear_combination r{d2}\n",
        f"    have hd3 : {next_cur_x} * ({cur_y} * {cur_y} + {cur_x} * {cur_x} * (-1)) = "
        f"2 * ({cur_x} * {cur_y}) := by\n",
        "      rw [hd0, hd1, hd2]\n",
        f"      linear_combination r{d3}\n",
        f"    have hd4 : {next_cur_y} * (2 - ({cur_y} * {cur_y} + {cur_x} * {cur_x} * (-1))) = "
        f"{cur_y} * {cur_y} - {cur_x} * {cur_x} * (-1) := by\n",
        "      rw [hd1, hd2]\n",
        f"      linear_combination r{d4}\n",
        "    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel\n",
        f"      (Bool.toZMod bit) ⟨({acc_x} rho : Seg{cfg.seg}.F), ({acc_y} rho : Seg{cfg.seg}.F)⟩\n",
        f"      ⟨({cur_x} : Seg{cfg.seg}.F), ({cur_y} : Seg{cfg.seg}.F)⟩\n",
        f"      ⟨({sum_x} : Seg{cfg.seg}.F), ({sum_y} : Seg{cfg.seg}.F)⟩\n",
        f"      ⟨({next_acc_x} rho : Seg{cfg.seg}.F), ({next_acc_y} rho : Seg{cfg.seg}.F)⟩\n",
        f"      ⟨({next_cur_x} : Seg{cfg.seg}.F), ({next_cur_y} : Seg{cfg.seg}.F)⟩\n",
        "      hacc hcur\n",
        "    · simpa [EdwardsBridge.d] using haddx\n",
        "    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy\n",
        "    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]\n",
        "    · exact hselx\n",
        "    · exact hsely\n",
        "    · simpa [EdwardsBridge.a_eq] using hd3\n",
        "    · simpa [EdwardsBridge.a_eq] using hd4\n",
    ])
    lines.append(f"  exact hrung{index}\n\n")


# Rungs per Scalar chunk module.  Each rung emits a projection lemma (a full
# `unfold relation; rcases` at a ~3.6GB plateau) plus its StepRel theorem, so a
# module's peak RSS grows with the rung count.  At 32 rungs a chunk peaked at
# ~15.5GB — over the 12GB machine-safety ceiling.  11 rungs keeps a chunk to
# 2*11+1 = 23 theorems (under the lint R5 `--max-theorems 24` proxy for that
# ceiling) and its peak RSS well under it.
SCALAR_CHUNK_SIZE = 11


def scalar_chunks(
    rungs: tuple[ScalarRung, ...]
) -> list[tuple[ScalarRung, ...]]:
    """Partition the 251 rung lemmas into independent build units.

    Each chunk is its own Lean module so it elaborates in a separate, cached
    `lean` process with bounded RSS — the 251 rung *proof terms* never coexist
    in one process.  The assembly module then loads only their signatures.
    """
    return [
        rungs[i : i + SCALAR_CHUNK_SIZE]
        for i in range(0, len(rungs), SCALAR_CHUNK_SIZE)
    ]


def emit_scalar_defs_module(
    cfg: Instance, rungs: tuple[ScalarRung, ...]
) -> str:
    """Shared `Flat`/`_eq`/AccState/CurState defs imported by every chunk
    and the assembly, so the rung proofs (which `rw [...Flat_eq]`) resolve
    them from a single cached olean."""
    lines = [
        f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg{cfg.seg}Bits\n",
        "import ShielddGnarkFormal.Deployed.Dtk.Ladder\n\n",
        "import ShielddGnarkFormal.StructuredLC\n\n",
        "set_option maxRecDepth 1000000\n",
        "set_option maxHeartbeats 20000000\n",
        "set_option linter.unusedVariables false\n\n",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n\n",
        "open Shieldd.GnarkFormal.Deployed.Dtk.Outputs\n\n",
    ]
    emit_scalar_defs(lines, cfg, rungs)
    lines.append(
        "end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n"
    )
    return "".join(lines)


def emit_scalar_hstep_chunk(
    lines: list[str],
    cfg: Instance,
    chunk_index: int,
    subset: tuple[ScalarRung, ...],
) -> None:
    """Per-chunk `StepRel`-dispatch lemma over this chunk's index range.

    Each bullet discharges one index by `exact seg{N}_rung{N} …`: the
    `seg{N}LadderAccState/CurState` applications reduce to the concrete
    accumulator points by *kernel* defeq (cheap `rfl` on the Nat match),
    so we never invoke `simp only [<252-arm match>]` — that triggers the
    catastrophic splitter-equation generation.  Keeping the dispatch to
    `SCALAR_CHUNK_SIZE` indices per cached module bounds RSS.
    """
    acc_state = f"seg{cfg.seg}LadderAccState"
    cur_state = f"seg{cfg.seg}LadderCurState"
    base = affine_internal_run(cfg, 977, 251, "scalar bits")
    lo = subset[0].index
    hi = subset[-1].index + 1
    lines.extend([
        f"theorem seg{cfg.seg}_hstep_c{chunk_index} "
        f"(rho : Nat -> Seg{cfg.seg}.F) (h : Seg{cfg.seg}.relation rho)\n",
        "    (bits : List.Vector Bool 251)\n",
        f"    (hbitAt : ∀ i, i < 251 → rho ({base} + i) = Bool.toZMod bits[i]!) :\n",
        f"    ∀ i, {lo} ≤ i → i < {hi} →\n",
        f"      EdwardsBridge.onCurve ({acc_state} rho i) →\n",
        f"      EdwardsBridge.onCurve ({cur_state} rho i) →\n",
        "      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)\n",
        f"        ({acc_state} rho i) ({cur_state} rho i)\n",
        f"        ({acc_state} rho (i + 1)) ({cur_state} rho (i + 1)) := by\n",
        "  intro i hlo hhi hacc hcur\n",
        "  interval_cases i\n",
    ])
    for rung in subset:
        index = rung.index
        lines.append(
            f"  · exact seg{cfg.seg}_rung{index} rho h bits[{index}]! "
            f"(hbitAt {index} (by omega)) hacc hcur\n"
        )


def emit_scalar_chunk(
    cfg: Instance,
    chunk_index: int,
    subset: tuple[ScalarRung, ...],
    rows: list[tuple[Lc, Lc, Lc]],
) -> str:
    lines = [
        f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg{cfg.seg}ScalarDefs\n\n",
        "set_option maxRecDepth 1000000\n",
        "set_option maxHeartbeats 20000000\n",
        "set_option linter.unusedVariables false\n\n",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n\n",
        "open Shieldd.GnarkFormal.Deployed.Dtk.Outputs\n\n",
    ]
    for rung in subset:
        emit_scalar_rung(lines, cfg, rung, rows)
    emit_scalar_hstep_chunk(lines, cfg, chunk_index, subset)
    lines.append(
        "end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n"
    )
    return "".join(lines)


def emit_scalar(cfg: Instance, rungs: tuple[ScalarRung, ...]) -> str:
    scalar_bit_base = affine_internal_run(cfg, 977, 251, "scalar bits")
    lines = [
        f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg{cfg.seg}ScalarDefs\n",
    ]
    for chunk_index in range(len(scalar_chunks(rungs))):
        lines.append(
            f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg{cfg.seg}ScalarR{chunk_index}\n"
        )
    lines.extend([
        "\n",
        "set_option maxRecDepth 1000000\n",
        "set_option maxHeartbeats 20000000\n",
        "set_option linter.unusedVariables false\n\n",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n\n",
        "open Shieldd.GnarkFormal.Deployed.Dtk.Outputs\n\n",
    ])
    lines.append(
        f"theorem seg{cfg.seg}_scalar_ladder (rho : Nat -> Seg{cfg.seg}.F) "
        f"(h : Seg{cfg.seg}.relation rho)\n"
        "    (bits : List.Vector Bool 251)\n"
        f"    (hbits : seg{cfg.seg}ScalarBits rho = bits.map Bool.toZMod)\n"
        f"    (hdiv : Specs.onCurveAt (rho {cfg.div_x}) (rho {cfg.div_y})) :\n"
        "    Shieldd.GnarkFormal.DtkBridge.dtkLadderK "
        f"(seg{cfg.seg}ScalarBits rho)\n"
        "      (Shieldd.GnarkFormal.ScalarMulBridge.finalKWithOutputCurve\n"
        f"        (dtkOutX{cfg.seg} rho : Seg{cfg.seg}.F) (dtkOutY{cfg.seg} rho : Seg{cfg.seg}.F))\n"
        f"      251 0 ⟨0, 1⟩ ⟨(rho {cfg.div_x} : Seg{cfg.seg}.F), "
        f"(rho {cfg.div_y} : Seg{cfg.seg}.F)⟩ := by\n"
    )
    acc_state = f"seg{cfg.seg}LadderAccState"
    cur_state = f"seg{cfg.seg}LadderCurState"
    lines.extend([
        "  have hbitAt : ∀ i, i < 251 → rho "
        f"({scalar_bit_base} + i) = Bool.toZMod bits[i]! := by\n",
        "    intro i hi\n",
        f"    rw [← seg{cfg.seg}ScalarBits_get rho i hi, hbits]\n",
        "    rw [getElem!_pos (bits.map Bool.toZMod) i (by simpa using hi), "
        "getElem!_pos bits i (by simpa using hi), List.Vector.getElem_map]\n",
        "  have hstep : ∀ i, i < 251 →\n",
        f"      EdwardsBridge.onCurve ({acc_state} rho i) →\n",
        f"      EdwardsBridge.onCurve ({cur_state} rho i) →\n",
        "      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)\n",
        f"        ({acc_state} rho i) ({cur_state} rho i)\n",
        f"        ({acc_state} rho (i + 1)) ({cur_state} rho (i + 1)) := by\n",
        "    intro i hi hacc hcur\n",
    ])
    # Range dispatch into the per-chunk hstep lemmas.  No 251-way
    # `interval_cases` and no matcher `simp` in this module — each chunk lemma
    # already discharged its `SCALAR_CHUNK_SIZE` indices in its own cached process.
    chunks = scalar_chunks(rungs)
    for chunk_index, subset in enumerate(chunks):
        hi_c = subset[-1].index + 1
        lo_var = "(by omega)" if chunk_index == 0 else f"hb{chunk_index - 1}"
        if chunk_index == len(chunks) - 1:
            lines.append(
                f"    exact seg{cfg.seg}_hstep_c{chunk_index} rho h bits hbitAt i "
                f"{lo_var} hi hacc hcur\n"
            )
        else:
            lines.append(
                f"    rcases Nat.lt_or_ge i {hi_c} with hb{chunk_index}|hb{chunk_index}\n"
            )
            lines.append(
                f"    · exact seg{cfg.seg}_hstep_c{chunk_index} rho h bits hbitAt i "
                f"{lo_var} hb{chunk_index} hacc hcur\n"
            )
    lines.extend([
        "  have hfinal : EdwardsBridge.onCurve "
        f"({acc_state} rho 251) →\n",
        "      Shieldd.GnarkFormal.ScalarMulBridge.finalKWithOutputCurve\n",
        f"        (dtkOutX{cfg.seg} rho : Seg{cfg.seg}.F) (dtkOutY{cfg.seg} rho : Seg{cfg.seg}.F)\n",
        f"        vec![({acc_state} rho 251).x, ({acc_state} rho 251).y,\n",
        f"          ({cur_state} rho 251).x, ({cur_state} rho 251).y] := by\n",
        "    intro hacc\n",
        "    unfold Shieldd.GnarkFormal.ScalarMulBridge.finalKWithOutputCurve GatesDef.eq\n",
        "    refine ⟨rfl, rfl, ?_⟩\n",
        "    apply Shieldd.GnarkFormal.Deployed.Dtk.outputCurveGates_of_onCurve\n",
        "    have hacc' : EdwardsBridge.onCurve "
        f"⟨({scalar_acc_name(cfg, 'X', 251)} rho : Seg{cfg.seg}.F), "
        f"({scalar_acc_name(cfg, 'Y', 251)} rho : Seg{cfg.seg}.F)⟩ := hacc\n",
        f"    simpa only [dtkOutX{cfg.seg}, dtkOutY{cfg.seg}] using hacc'\n",
        "  rw [hbits]\n",
        "  apply Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_to_dtkLadderK\n",
        f"    bits _ ({acc_state} rho) ({cur_state} rho) hstep hfinal 251 0 (by omega)\n",
        "  · show EdwardsBridge.onCurve "
        f"⟨({scalar_acc_name(cfg, 'X', 0)} rho : Seg{cfg.seg}.F), "
        f"({scalar_acc_name(cfg, 'Y', 0)} rho : Seg{cfg.seg}.F)⟩\n",
        f"    simpa only [{scalar_acc_name(cfg, 'X', 0)}, "
        f"{scalar_acc_name(cfg, 'Y', 0)}] using EdwardsBridge.identity_onCurve\n",
        "  · show EdwardsBridge.onCurve "
        f"⟨(rho {cfg.div_x} : Seg{cfg.seg}.F), (rho {cfg.div_y} : Seg{cfg.seg}.F)⟩\n",
        "    simpa only [Specs.onCurveAt] using hdiv\n\n",
        "end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n",
    ])
    return "".join(lines)


def emit_adapter(cfg: Instance) -> str:
    w = lambda offset: internal_wire(cfg, offset)
    keep = set(range(28)) | {534, 535, 536, 537, 1044, 1045} | set(range(1317, 1322))
    lines = [
        f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg{cfg.seg}Canon\n",
        f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg{cfg.seg}Lt\n",
        f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg{cfg.seg}Poseidon\n",
        f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg{cfg.seg}Scalar\n",
        "import ShielddGnarkFormal.Deployed.Dtk.Compose\n",
        "import ShielddGnarkFormal.CompressDeployedGadgets\n\n",
        "set_option maxRecDepth 1000000\n",
        "set_option maxHeartbeats 20000000\n",
        "set_option linter.unusedVariables false\n\n",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n\n",
        "open Shieldd.GnarkFormal.Deployed.Dtk.Outputs\n",
        "open Shieldd.GnarkFormal.DeployedGadgets\n\n",
        f"theorem seg{cfg.seg}_dtkSeg0 (rho : Nat -> Seg{cfg.seg}.F) "
        f"(h : Seg{cfg.seg}.relation rho)\n",
        f"    (hdiv : Specs.onCurveAt (rho {cfg.div_x}) (rho {cfg.div_y})) :\n",
        "    Shieldd.GnarkFormal.DtkBridge.dtkSeg0\n",
        f"      (rho 8) (rho 6) (rho 7) (rho {cfg.div_x}) (rho {cfg.div_y})\n",
        f"      (rho {w(7)}) (rho {w(8)}) (rho 9) (rho 10)\n",
        "      (fun ivkBits => Shieldd.GnarkFormal.DtkBridge.dtkTailK ivkBits (rho 10)\n",
        "        (∃ scalarBits, GatesDef.to_binary (rho 9) 251 scalarBits ∧\n",
        "          Shieldd.GnarkFormal.DtkBridge.dtkLadderK scalarBits\n",
        "            (Shieldd.GnarkFormal.ScalarMulBridge.finalKWithOutputCurve\n",
        f"              (dtkOutX{cfg.seg} rho : Seg{cfg.seg}.F) "
        f"(dtkOutY{cfg.seg} rho : Seg{cfg.seg}.F))\n",
        f"            251 0 ⟨0, 1⟩ ⟨(rho {cfg.div_x} : Seg{cfg.seg}.F), "
        f"(rho {cfg.div_y} : Seg{cfg.seg}.F)⟩)) := by\n",
        f"  have hIvkBinary := seg{cfg.seg}Ivk_toBinary rho h\n",
        # T1-h: the deployed ladder reuses the Ivk decomposition's first 251
        # bits. Run the LT chains once with a trivial continuation to obtain
        # `laddersTail`, then synthesize the 251-bit `to_binary` witness from
        # the 253-bit one (r < 2^251 forces bits 251/252 to zero).
        f"  have hq4T := seg{cfg.seg}_q4_ladder rho h True trivial\n",
        f"  have hrT := seg{cfg.seg}_r_ladder rho h True hq4T\n",
        "  have htailT := Shieldd.GnarkFormal.DtkBridge.dtkSeg1_build\n",
        f"    (seg{cfg.seg}IvkBits rho) (rho 10) True hrT\n",
        "  change Shieldd.GnarkFormal.DtkBridge.dtkTailK "
        f"(seg{cfg.seg}IvkBits rho) (rho 10) True at htailT\n",
        "  have hladders := (Shieldd.GnarkFormal.DtkBridge.dtkTailK_laddersTail\n",
        "    _ _ _ htailT).1\n",
        f"  have hScalarBinary : GatesDef.to_binary (rho 9) 251 (seg{cfg.seg}ScalarBits rho) :=\n",
        "    Shieldd.GnarkFormal.Extracted.IvkModR.laddersTail_to_binary_251 (rho 10) (rho 9)\n",
        f"      (seg{cfg.seg}IvkBits rho) (seg{cfg.seg}ScalarBits rho) hIvkBinary hladders\n",
        "      (by\n",
        "        intro i\n",
        f"        simp only [seg{cfg.seg}ScalarBits, seg{cfg.seg}IvkBits, "
        "List.Vector.get_ofFn,\n",
        "          List.Vector.getElem_def, List.Vector.toList_ofFn, List.getElem_ofFn])\n",
        "  obtain ⟨scalarBool, hScalarEq⟩ := "
        "is_vector_binary_iff_exists_bool_vec.mp hScalarBinary.2\n",
        f"  have hScalarLadder := seg{cfg.seg}_scalar_ladder rho h scalarBool hScalarEq hdiv\n",
        "  let scalarTail : Prop := ∃ scalarBits, GatesDef.to_binary (rho 9) 251 scalarBits ∧\n",
        "    Shieldd.GnarkFormal.DtkBridge.dtkLadderK scalarBits\n",
        "      (Shieldd.GnarkFormal.ScalarMulBridge.finalKWithOutputCurve\n",
        f"        (dtkOutX{cfg.seg} rho : Seg{cfg.seg}.F) "
        f"(dtkOutY{cfg.seg} rho : Seg{cfg.seg}.F))\n",
        f"      251 0 ⟨0, 1⟩ ⟨(rho {cfg.div_x} : Seg{cfg.seg}.F), "
        f"(rho {cfg.div_y} : Seg{cfg.seg}.F)⟩\n",
        "  have hScalarTail : scalarTail := ⟨_, hScalarBinary, hScalarLadder⟩\n",
        f"  have hq4 := seg{cfg.seg}_q4_ladder rho h scalarTail hScalarTail\n",
        f"  have hr := seg{cfg.seg}_r_ladder rho h scalarTail hq4\n",
        "  have htail := Shieldd.GnarkFormal.DtkBridge.dtkSeg1_build\n",
        f"    (seg{cfg.seg}IvkBits rho) (rho 10) scalarTail hr\n",
        "  change Shieldd.GnarkFormal.DtkBridge.dtkTailK "
        f"(seg{cfg.seg}IvkBits rho) (rho 10) scalarTail at htail\n",
        f"  have hposeidon := seg{cfg.seg}_poseidon_eq rho h\n",
        f"  have hP0 : (8444461749428370424248824938781546531375899335154063827935233455917409239041 : Seg{cfg.seg}.F) = 0 := by decide\n",
        f"  have hcm : (5602780471396575806509277699913763570037463653793953144491313093258883571225 : Seg{cfg.seg}.F) = -2841681278031794617739547238867782961338435681360110683443920362658525667816 := by decide\n",
        f"  have hcanon1 := seg{cfg.seg}Canon1_canonical rho h\n",
        f"  have hcanon2 := seg{cfg.seg}Canon2_canonical rho h\n",
    ]
    emit_unpack(lines, cfg, keep)
    for row in sorted(keep):
        emit_row_unfold(lines, cfg, row)
    lines.extend([
        f"  have hws : GatesDef.is_bool (rho {w(7)}) :=\n",
        f"    is_bool_of_row _ (by linear_combination r8)\n",
        f"  have hz : GatesDef.is_zero (rho {w(6)}) (rho {w(9)}) := by\n",
        f"    refine is_zero_of_hint _ (rho {w(10)}) _ ?_ ?_\n",
        "    · linear_combination -r9\n",
        "    · linear_combination r10\n",
        f"  have hzBool : GatesDef.is_bool (rho {w(9)}) :=\n",
        f"    is_bool_of_row _ (by linear_combination r18)\n",
        f"  have hsel15 : GatesDef.select (rho {w(9)}) 1 (rho {w(6)}) "
        f"(rho {w(6)} + rho {w(11)}) := by\n",
        "    refine select_of_row _ _ _ _ hzBool ?_\n",
        "    linear_combination -r11\n",
        f"  have hinv : GatesDef.inv (rho {w(6)} + rho {w(11)}) (rho {w(12)}) :=\n",
        f"    inv_of_mul _ _ (by linear_combination r12)\n",
        f"  have hnotWs : GatesDef.is_bool (1 - rho {w(7)}) := by\n",
        "    unfold GatesDef.is_bool\n",
        "    linear_combination r8\n",
        f"  have hnotZ : GatesDef.is_bool (1 - rho {w(9)}) := by\n",
        "    unfold GatesDef.is_bool\n",
        "    linear_combination r18\n",
        f"  have hand22 : GatesDef.and (1 - rho {w(7)}) (rho {w(9)}) (rho {w(15)}) := by\n",
        "    refine and_of_row _ _ _ hnotWs hzBool ?_\n",
        "    linear_combination -r17\n",
        f"  have hand23 : GatesDef.and (1 - rho {w(7)}) (1 - rho {w(9)}) (rho {w(16)}) := by\n",
        "    refine and_of_row _ _ _ hnotWs hnotZ ?_\n",
        "    linear_combination -r19\n",
        "  unfold Shieldd.GnarkFormal.DtkBridge.dtkSeg0\n",
        "  simp only [Shieldd.GnarkFormal.Extracted.DecafDtk.Gates, GatesGnark9, "
        "GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub, GatesDef.neg, GatesDef.eq]\n",
        f"  refine ⟨rho {w(0)}, (by first | linear_combination r0 | linear_combination -r0),\n",
        f"    rho {w(1)}, (by first | linear_combination r1 | linear_combination -r1),\n",
        f"    rho {w(1)} - rho {w(0)}, rfl, (3021 : Seg{cfg.seg}.F) * rho {w(0)}, rfl,\n",
        f"    rho {w(2)}, (by first | linear_combination r2 | linear_combination -r2), (1 : Seg{cfg.seg}.F) + rho {w(2)}, rfl,\n",
        "    (by first | linear_combination r3 | linear_combination -r3),\n",
        f"    rho {cfg.div_x} * rho {cfg.div_x}, rfl,\n",
        f"    rho {cfg.div_y} * rho {cfg.div_y}, rfl,\n",
        f"    rho {cfg.div_y} * rho {cfg.div_y} - rho {cfg.div_x} * rho {cfg.div_x}, rfl,\n",
        f"    (3021 : Seg{cfg.seg}.F) * (rho {cfg.div_x} * rho {cfg.div_x}), rfl,\n",
        f"    (3021 : Seg{cfg.seg}.F) * (rho {cfg.div_x} * rho {cfg.div_x}) * "
        f"(rho {cfg.div_y} * rho {cfg.div_y}), rfl,\n",
        f"    (1 : Seg{cfg.seg}.F) + (3021 : Seg{cfg.seg}.F) * (rho {cfg.div_x} * rho {cfg.div_x}) * "
        f"(rho {cfg.div_y} * rho {cfg.div_y}), rfl,\n",
        f"    (by have h' := hdiv; simp only [Specs.onCurveAt] at h'; "
        f"linear_combination h'),\n",
        f"    rho {w(5)}, (by first | linear_combination r6 | linear_combination -r6), rho {w(1)}, (by first | linear_combination r1 | linear_combination -r1),\n",
        f"    rho {w(1)} - rho {w(5)}, rfl, (3021 : Seg{cfg.seg}.F) * rho {w(5)}, rfl,\n",
        f"    rho {w(2)}, (by first"
        f" | linear_combination r2 + (3021 : Seg{cfg.seg}.F) * rho {w(1)} * (r6 - r0)"
        f" | linear_combination r2 - (3021 : Seg{cfg.seg}.F) * rho {w(1)} * (r6 - r0)"
        f" | linear_combination -r2 + (3021 : Seg{cfg.seg}.F) * rho {w(1)} * (r6 - r0)"
        f" | linear_combination -r2 - (3021 : Seg{cfg.seg}.F) * rho {w(1)} * (r6 - r0)),\n",
        f"    (1 : Seg{cfg.seg}.F) + rho {w(2)}, rfl, (by first"
        f" | linear_combination r3 + (r6 - r0)"
        f" | linear_combination r3 - (r6 - r0)"
        f" | linear_combination -r3 + (r6 - r0)"
        f" | linear_combination -r3 - (r6 - r0)),\n",
        f"    rho {w(3)}, (by first | linear_combination r4 | linear_combination -r4),\n",
        f"    rho 6 + rho {w(3)}, rfl, rho 6 - rho {w(3)}, rfl,\n",
        f"    rho {w(4)}, (by first | linear_combination r5 | linear_combination -r5), (-3022 : Seg{cfg.seg}.F) * rho {w(4)}, "
        f"(by first | rfl | (rw [show (8444461749428370424248824938781546531375899335154063827935233455917409236019 : Seg{cfg.seg}.F) = -3022 from by decide]; ring)),\n",
        f"    rho {w(6)}, (by first | linear_combination r7 | linear_combination -r7), hws, rho {w(9)}, hz,\n",
        f"    rho {w(6)} + rho {w(11)}, hsel15, rho {w(12)}, hinv,\n",
        f"    rho {w(13)}, (by first | linear_combination r13 | linear_combination -r13), rho {w(14)}, "
        f"(by first | linear_combination r14 | linear_combination -r14), (by first | linear_combination r15 | linear_combination -r15),\n",
        f"    (1 : Seg{cfg.seg}.F) - rho {w(7)}, rfl, (1 : Seg{cfg.seg}.F) - rho {w(9)}, rfl, rho {w(15)}, hand22,\n",
        f"    rho {w(16)}, hand23, rho {w(13)} - rho {w(12)}, rfl,\n",
        f"    rho {w(17)}, (by first | linear_combination r20 | linear_combination -r20), (by first | linear_combination r21 | linear_combination -r21),\n",
        f"    rho {w(18)}, (by first | linear_combination r22 | linear_combination -r22), (by first | linear_combination r23 | linear_combination -r23),\n",
        f"    (2841681278031794617739547238867782961338435681360110683443920362658525667816 : Seg{cfg.seg}.F) * rho {w(12)}, rfl,\n",
        f"    rho {w(13)} - (2841681278031794617739547238867782961338435681360110683443920362658525667816 : Seg{cfg.seg}.F) * rho {w(12)}, rfl,\n",
        f"    rho {w(19)}, (by simp only [hcm] at r24 ⊢; first"
        f" | linear_combination r24 | linear_combination -r24"
        f" | linear_combination (2 : Seg{cfg.seg}.F) * r24 | linear_combination (-2 : Seg{cfg.seg}.F) * r24"
        f" | linear_combination (3 : Seg{cfg.seg}.F) * r24 | linear_combination (-3 : Seg{cfg.seg}.F) * r24"
        f" | linear_combination (4 : Seg{cfg.seg}.F) * r24 | linear_combination (-4 : Seg{cfg.seg}.F) * r24),"
        f" (by first | linear_combination r25 | linear_combination -r25),\n",
        f"    rho {w(7)} + rho {w(15)}, rfl, rho {w(7)} + rho {w(15)} + rho {w(16)}, rfl,\n",
        f"    (by first | linear_combination r26 | linear_combination -r26), rho {w(20)}, (by first | linear_combination r27 | linear_combination -r27), ?_⟩\n",
        f"  apply hcanon1\n",
        f"  have hb1 : (seg{cfg.seg}Canon1Bits rho)[0]! = rho {w(21)} :=\n",
        f"    seg{cfg.seg}Canon1Bits_get rho 0 (by omega)\n",
        f"  have hb1Bool : GatesDef.is_bool (1 - rho {w(21)}) := by\n",
        "    unfold GatesDef.is_bool\n",
        "    first | linear_combination r534 | linear_combination -r534\n",
        f"  have hsel40 : GatesDef.select (1 - rho {w(21)}) (rho {w(20)}) (-rho {w(20)}) "
        f"(rho {w(360)} - rho {w(20)}) := by\n",
        "    refine select_of_row _ _ _ _ hb1Bool ?_\n",
        "    first | linear_combination r535 | linear_combination -r535\n",
        f"  refine ⟨(1 : Seg{cfg.seg}.F) - rho {w(21)}, (by simpa [hb1]), -rho {w(20)}, (by ring),\n",
        f"    rho {w(360)} - rho {w(20)}, hsel40,\n",
        f"    rho {w(360)} - rho {w(20)} - rho {w(3)}, rfl,\n",
        f"    (-3022 : Seg{cfg.seg}.F) * rho {w(8)}, "
        f"(by first | rfl | (rw [show (8444461749428370424248824938781546531375899335154063827935233455917409236019 : Seg{cfg.seg}.F) = -3022 from by decide]; ring)), "
        f"rho {w(361)}, (by first | linear_combination r536 | linear_combination -r536),\n",
        f"    rho {w(362)}, (by first | linear_combination r537 | linear_combination -r537), ?_⟩\n",
        f"  apply hcanon2\n",
        f"  have hb2 : (seg{cfg.seg}Canon2Bits rho)[0]! = rho {w(363)} :=\n",
        f"    seg{cfg.seg}Canon2Bits_get rho 0 (by omega)\n",
        f"  have hb2Bool : GatesDef.is_bool (1 - rho {w(363)}) := by\n",
        "    unfold GatesDef.is_bool\n",
        "    first | linear_combination r1044 | linear_combination -r1044\n",
        f"  have hsel48 : GatesDef.select (1 - rho {w(363)}) (rho {w(362)}) (-rho {w(362)}) "
        f"(rho {w(702)} - rho {w(362)}) := by\n",
        "    refine select_of_row _ _ _ _ hb2Bool ?_\n",
        "    first | linear_combination r1045 | linear_combination -r1045\n",
        f"  refine ⟨(1 : Seg{cfg.seg}.F) - rho {w(363)}, (by simpa [hb2]), -rho {w(362)}, (by ring),\n",
        f"    rho {w(702)} - rho {w(362)}, hsel48, ?_⟩\n",
        f"  refine Shieldd.GnarkFormal.DtkBridge.perm2_intro ?_\n",
        f"  refine ⟨(2111115437357092606062206234695386632838870926408408195193685246394721360383 : Seg{cfg.seg}.F) * rho 10, rfl,\n",
        f"    (2111115437357092606062206234695386632838870926408408195193685246394721360383 : Seg{cfg.seg}.F) * rho 10 + rho 9, rfl,\n",
        f"    (by first | linear_combination hposeidon | linear_combination (2 : Seg{cfg.seg}.F) * hposeidon | linear_combination -hposeidon | linear_combination (-2 : Seg{cfg.seg}.F) * hposeidon), rho 10 - (1 : Seg{cfg.seg}.F), rfl,\n",
        f"    rho {w(973)}, (by first | linear_combination r1317 | linear_combination -r1317), rho 10 - (2 : Seg{cfg.seg}.F), rfl,\n",
        f"    rho {w(974)}, (by first | linear_combination r1318 | linear_combination -r1318), rho 10 - (3 : Seg{cfg.seg}.F), rfl,\n",
        f"    rho {w(975)}, (by first | linear_combination r1319 | linear_combination -r1319), rho 10 - (4 : Seg{cfg.seg}.F), rfl,\n",
        f"    rho {w(976)}, (by first | linear_combination r1320 | linear_combination -r1320), (by first | linear_combination r1321 | linear_combination -r1321),\n",
        f"    seg{cfg.seg}IvkBits rho, hIvkBinary, ?_⟩\n",
        "  simpa [scalarTail] using htail\n\n",
        f"theorem seg{cfg.seg}_sound (rho : Nat -> Seg{cfg.seg}.F) "
        f"(h : Seg{cfg.seg}.relation rho) : Specs.deployedSpec{cfg.seg} rho := by\n",
        "  intro hdiv\n",
        f"  have hseg0 := seg{cfg.seg}_dtkSeg0 rho h hdiv\n",
        "  have hcircuit := Shieldd.GnarkFormal.Deployed.Dtk.dtk_circuit_of_seg0\n",
        f"    (rho 8) (rho 6) (rho 7) (rho {cfg.div_x}) (rho {cfg.div_y})\n",
        f"    (rho {w(7)}) (rho {w(8)}) (rho 9) (rho 10)\n",
        f"    (dtkOutX{cfg.seg} rho : Seg{cfg.seg}.F) (dtkOutY{cfg.seg} rho : Seg{cfg.seg}.F) hseg0\n",
        "  have hdiv' : EdwardsBridge.onCurve "
        f"⟨(rho {cfg.div_x} : Seg{cfg.seg}.F), (rho {cfg.div_y} : Seg{cfg.seg}.F)⟩ := by\n",
        "    simpa only [Specs.onCurveAt, EdwardsBridge.onCurve, EdwardsBridge.d] using hdiv\n",
        "  have hcircuit' : Shieldd.GnarkFormal.Decaf377Assumptions."
        "DiversifiedTransmissionKeyCircuit\n",
        f"      (rho 8) ⟨rho 6, rho 7⟩ ⟨rho {cfg.div_x}, rho {cfg.div_y}⟩ (rho 9) (rho 10)\n",
        f"      ⟨dtkOutX{cfg.seg} rho, dtkOutY{cfg.seg} rho⟩ :=\n",
        f"    ⟨rho {w(7)}, rho {w(8)}, hcircuit⟩\n",
        "  refine ⟨Shieldd.GnarkFormal.DtkBridge.decaf377_diversifiedTransmissionKey_sound\n",
        "    (rho 8) ⟨rho 6, rho 7⟩ "
        f"⟨rho {cfg.div_x}, rho {cfg.div_y}⟩ (rho 9) (rho 10)\n",
        f"    ⟨dtkOutX{cfg.seg} rho, dtkOutY{cfg.seg} rho⟩ hdiv' hcircuit', ?_⟩\n",
        "  simpa only [Specs.onCurveAt, EdwardsBridge.onCurve, EdwardsBridge.d] using\n",
        "    Shieldd.GnarkFormal.DtkBridge.decaf377_diversifiedTransmissionKey_onCurve\n",
        "      (rho 8) ⟨rho 6, rho 7⟩ "
        f"⟨rho {cfg.div_x}, rho {cfg.div_y}⟩ (rho 9) (rho 10)\n",
        f"      ⟨dtkOutX{cfg.seg} rho, dtkOutY{cfg.seg} rho⟩ hdiv' hcircuit'\n\n",
        "end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n",
    ])
    return "".join(lines)


def side_expr(side: list[tuple[str, int]]) -> str:
    if not side:
        return "(0 : F)"
    terms = []
    for coeff, wire in side:
        literal = f"({coeff} : F)"
        terms.append(literal if wire == 0 else f"{literal} * w{wire}")
    return " + ".join(terms)


def singleton_output(row: tuple[list[tuple[str, int]], ...]) -> int:
    side = row[2]
    if len(side) != 1 or side[0][0] != "1" or side[0][1] == 0:
        raise ValueError(f"expected singleton S-box output, got {side!r}")
    return side[0][1]


def row_wires(rows: list[tuple[list[tuple[str, int]], ...]]) -> set[int]:
    return {
        wire
        for row in rows
        for side in row
        for _, wire in side
        if wire != 0
    }


def poseidon_constants() -> dict[str, list[str]]:
    constants: dict[str, list[str]] = {}
    for line in POSEIDON2.read_text().splitlines():
        match = re.search(r"let gate_(\d+) := (?:fr3|pr3).*vec!\[(.*)\]", line)
        if not match:
            continue
        values = re.findall(r"\((\d+):F\)", match.group(2))
        if len(values) != 3:
            raise ValueError(f"Poseidon2 gate {match.group(1)} has {len(values)} constants")
        constants[match.group(1)] = values
    if sorted(map(int, constants)) != list(range(39)):
        raise ValueError("failed to parse all Poseidon2 round constants")
    return constants


def emit_poseidon_segment(
    segment: int,
    args: list[int],
    exits: list[int],
    rows: list[tuple[list[tuple[str, int]], ...]],
) -> str:
    locals_ = [singleton_output(row) for row in rows]
    k_type = " -> ".join(["F"] * len(exits)) + " -> Prop"
    arg_decl = " ".join(f"(w{wire} : F)" for wire in args)
    exit_use = " ".join(f"w{wire}" for wire in exits)
    local_use = " ".join(f"w{wire}" for wire in locals_)
    constraints = [
        f"  ({side_expr(row[0])}) * ({side_expr(row[1])}) = ({side_expr(row[2])})"
        for row in rows
    ]
    return (
        f"def seg{segment} {arg_decl} (k : {k_type}) : Prop :=\n"
        f"  ∃ {local_use} : F,\n"
        + " ∧\n".join(constraints)
        + f" ∧\n  k {exit_use}\n\n"
    )


def generate_poseidon_shape(*, write_auxiliary: bool = True) -> tuple[str, list[list[int]]]:
    start = DTK_GLOBAL_OFFSET + 1046
    rows = []
    constraint_index = 0
    with SR1CS.open() as source_file:
        for line in source_file:
            if not line.strip().startswith("(constraint "):
                continue
            if constraint_index >= start + 270:
                break
            if constraint_index >= start:
                rows.append(parse_constraint(line))
            constraint_index += 1
    if len(rows) != 270:
        raise ValueError("missing DTK Poseidon rows")
    sboxes = [rows[index : index + 5] for index in range(0, len(rows), 5)]
    final_outputs = []
    local_outputs = []
    for index, chunk in enumerate(sboxes):
        outputs = [singleton_output(row) for row in chunk]
        if chunk[0][0] != chunk[0][1]:
            raise ValueError(f"Poseidon S-box {index}: first row is not x*x")
        for offset in range(1, 4):
            expected = [("1", outputs[offset - 1])]
            if chunk[offset][0] != expected or chunk[offset][1] != expected:
                raise ValueError(f"Poseidon S-box {index}: broken square chain")
        if chunk[4][0] != [("1", outputs[3])] or chunk[4][1] != chunk[0][0]:
            raise ValueError(f"Poseidon S-box {index}: broken x16*x row")
        final_outputs.append(outputs[-1])
        local_outputs.append(set(outputs))

    round_counts = [2, 3, 3, 3] + [1] * 31 + [3, 3, 3, 3]
    if sum(round_counts) != len(sboxes):
        raise AssertionError("bad Poseidon2 round count")
    groups: dict[str, list[str]] = {}
    seg2round: dict[str, int] = {}
    cursor = 0
    for round_index, count in enumerate(round_counts):
        groups[str(round_index)] = [f"w{wire}" for wire in final_outputs[cursor : cursor + count]]
        for segment in range(cursor, cursor + count):
            seg2round[str(segment)] = round_index
        cursor += count

    required = set(int(wire[1:]) for wire in groups["38"])
    args: list[list[int]] = [[] for _ in sboxes]
    exits: list[list[int]] = [[] for _ in sboxes]
    for segment in range(len(sboxes) - 1, -1, -1):
        chunk = sboxes[segment]
        used = row_wires([(row[0], row[1], []) for row in chunk]) - local_outputs[segment]
        live_in = used | (required - local_outputs[segment])
        args[segment] = sorted(live_in)
        live_out = set(required)
        live_out.add(final_outputs[segment])
        exits[segment] = sorted(wire for wire in live_out if wire != final_outputs[segment]) + [
            final_outputs[segment]
        ]
        required = live_in

    shape = []
    for row in rows:
        for side in row:
            shape.append(str(len(side)) + ":")
            shape.extend(f"{coeff}@{wire}," for coeff, wire in side)
    digest = hashlib.sha256("".join(shape).encode()).hexdigest()
    module = f"DtkIvkPoseidon270_{digest[:6]}"
    lines = [
        "import ProvenZk.Gates\n",
        "import ShielddGnarkFormal.Extracted.Poseidon2\n\n",
        "set_option linter.unusedVariables false\n",
        "set_option maxRecDepth 100000\n",
        "set_option maxHeartbeats 4000000\n\n",
        f"namespace Shieldd.GnarkFormal.Extracted.Deployed.{module}\n\n",
        "abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Poseidon2.Order\n",
        "variable [Fact (Nat.Prime Order)]\n",
        "abbrev F := Shieldd.GnarkFormal.Extracted.Poseidon2.F\n\n",
    ]
    for segment, chunk in enumerate(sboxes):
        lines.append(emit_poseidon_segment(segment, args[segment], exits[segment], chunk))
    public_decl = " ".join(f"(w{wire} : F)" for wire in args[0])
    final_type = " -> ".join(["F"] * len(exits[-1])) + " -> Prop"
    lines.append(f"def relation {public_decl} (k : {final_type}) : Prop :=\n")
    indent = "  "
    for segment in range(len(sboxes)):
        use_args = " ".join(f"w{wire}" for wire in args[segment])
        use_exits = " ".join(f"w{wire}" for wire in exits[segment])
        lines.append(f"{indent}seg{segment} {use_args} (fun {use_exits} =>\n")
        indent += "  "
    lines.append(f"{indent}k " + " ".join(f"w{wire}" for wire in exits[-1]) + ")" * len(sboxes) + "\n\n")
    lines.append(f"end Shieldd.GnarkFormal.Extracted.Deployed.{module}\n")
    if write_auxiliary:
        EXTRACTED_DEPLOYED.mkdir(parents=True, exist_ok=True)
        write_generated(EXTRACTED_DEPLOYED / f"{module}.lean", "".join(lines))

    if args[0] != [8, 1275, 1615]:
        raise ValueError(f"unexpected DTK Poseidon live inputs {args[0]}")
    ranges: list[list[int]] = []
    current_range: list[int] = []
    cursor = 0
    for count in round_counts:
        round_segments = list(range(cursor, cursor + count))
        if current_range and len(current_range) + count > 8:
            ranges.append(current_range)
            current_range = []
        current_range.extend(round_segments)
        cursor += count
    if current_range:
        ranges.append(current_range)

    data = {
        "cs": poseidon_constants(),
        "groups": groups,
        "kind": {str(index): ("full" if index < 4 or index >= 35 else "partial") for index in range(39)},
        "seg2round": seg2round,
        "ranges": ranges,
        "domain": "9361307723838134966014044876631201920149619",
        "public_args": ["w8", "w1275", "w1615"],
        "spec_inputs": ["w8", "w1615 - w1275"],
        "seq": [
            "5629641166285580282832549959187697687583932890102709218623488970611606159361",
            "6333346312071277818186618704086159898531924501365547870951425091938056929281",
            "6755569399542696339399059951025237225100719468123251062348186764733927391233",
            "7037051457856975353540687448984622109479916112628386523279361213264507699201",
            "7238110070938603220784707090384182741179342287274911852515914390786350776321",
        ],
    }
    if write_auxiliary:
        write_generated(
            Path(__file__).resolve().parent / "dtk_ivk_gendata.json",
            json.dumps(data, indent=2) + "\n",
        )

    bridge = f"""import ShielddGnarkFormal.Extracted.Deployed.{module}
import ShielddGnarkFormal.Poseidon2Bridge

namespace Shieldd.GnarkFormal.Deployed.DtkIvkPoseidon

open Shieldd.GnarkFormal.Poseidon2Bridge

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.{module}.Order)]

abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.{module}.F

def ivkDomainLit : F := (9361307723838134966014044876631201920149619 : F)

theorem p17_from_rows (x v0 v1 v2 v3 v4 : F)
    (h0 : x * x = v0) (h1 : v0 * v0 = v1) (h2 : v1 * v1 = v2)
    (h3 : v2 * v2 = v3) (h4 : v3 * x = v4) :
    v4 = p17 x := by
  unfold p17
  rw [← h4, ← h3, ← h2, ← h1, ← h0]

end Shieldd.GnarkFormal.Deployed.DtkIvkPoseidon
"""
    if write_auxiliary:
        write_generated(FORMAL / "Deployed/DtkIvkPoseidonDeployedBridge.lean", bridge)
    return module, [[singleton_output(row) for row in chunk] for chunk in sboxes]


@lru_cache(maxsize=None)
def wire_inverse(cfg: Instance) -> dict[int, int]:
    if cfg.wire_seating is None:
        return {}
    return {wire: local for local, wire in enumerate(cfg.wire_seating)}


def seat_wire(cfg: Instance, template_wire: int) -> int:
    if cfg.wire_seating is not None:
        try:
            return wire_inverse(cfg)[template_wire]
        except KeyError as exc:
            raise ValueError(
                f"Instance(seg={cfg.seg}): deployed wire {template_wire} "
                "is absent from the exact local seating"
            ) from exc
    if template_wire == 17:
        return cfg.div_x
    if template_wire == 18:
        return cfg.div_y
    if template_wire >= BASE_INTERNAL:
        return template_wire + cfg.delta
    return template_wire


def internal_wire(cfg: Instance, offset: int) -> int:
    """Seat one wire from the reviewed DTK internal-witness layout."""
    return seat_wire(cfg, BASE_INTERNAL + offset)


def affine_internal_run(cfg: Instance, offset: int, count: int, label: str) -> int:
    """Return a run base after proving its exact local seating is affine.

    Symbolic Lean vector indices use `base + i`; a normalized first-occurrence
    seating may reorder unrelated boundary wires, so generation must establish
    consecutiveness for each run instead of assuming the whole witness is a
    global delta shift.
    """
    wires = [internal_wire(cfg, offset + index) for index in range(count)]
    if any(wire != wires[0] + index for index, wire in enumerate(wires)):
        raise ValueError(
            f"Instance(seg={cfg.seg}): {label} is not an affine local-wire run"
        )
    return wires[0]


def emit_poseidon_adapter(
    cfg: Instance, module: str, sbox_outputs: list[list[int]]
) -> str:
    first_row = 1046
    final_row = 1316
    keep = set(range(first_row, final_row + 1))
    final_outputs = [outputs[-1] for outputs in sbox_outputs[-3:]]
    compressed_pos = seat_wire(cfg, 1275)
    compressed_neg = seat_wire(cfg, 1615)
    lines = [
        f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg{cfg.seg}Base\n",
        "import ShielddGnarkFormal.Deployed.DtkIvkPoseidon.SemanticBridge\n\n",
        "set_option maxRecDepth 1000000\n",
        "set_option maxHeartbeats 20000000\n",
        "set_option linter.unusedVariables false\n\n",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n\n",
        f"theorem seg{cfg.seg}_poseidon_eq (rho : Nat -> Seg{cfg.seg}.F) "
        f"(h : Seg{cfg.seg}.relation rho) :\n",
        "    rho 9 + "
        "2111115437357092606062206234695386632838870926408408195193685246394721360383 * rho 10 =\n",
        "      Shieldd.GnarkFormal.Poseidon2Bridge.permSpec2\n",
        "        (9361307723838134966014044876631201920149619 : Seg"
        f"{cfg.seg}.F) (rho 8) (rho {compressed_neg} - rho {compressed_pos}) := by\n",
    ]
    emit_unpack(lines, cfg, keep)
    relation = f"Shieldd.GnarkFormal.Extracted.Deployed.{module}.relation"
    pin = "fun x y z => " + " ∧ ".join(
        [f"x = rho {seat_wire(cfg, final_outputs[0])}",
         f"y = rho {seat_wire(cfg, final_outputs[1])}",
         f"z = rho {seat_wire(cfg, final_outputs[2])}"]
    )
    lines.append(
        f"  have hrel : {relation} (rho 8) (rho {compressed_pos}) (rho {compressed_neg}) "
        f"({pin}) := by\n"
    )
    lines.append(f"    unfold {relation}\n")
    for segment, outputs in enumerate(sbox_outputs):
        lines.append(f"    unfold Shieldd.GnarkFormal.Extracted.Deployed.{module}.seg{segment}\n")
        seated = [seat_wire(cfg, wire) for wire in outputs]
        lines.append("    refine ⟨" + ", ".join(f"rho {wire}" for wire in seated) + ", ")
        row_start = first_row + 5 * segment
        proofs = []
        for row in range(row_start, row_start + 5):
            lcs = row_lc_defs(cfg.seg, row)
            if lcs:
                names = " ".join(
                    [f"Seg{cfg.seg}.relationRow{row}"]
                    + [f"Seg{cfg.seg}.{name}" for name in lcs]
                )
                proofs.append(
                    f"(by unfold {names} at r{row}; linear_combination r{row})"
                )
            else:
                proofs.append(f"(by simpa [Seg{cfg.seg}.relationRow{row}] using r{row})")
        lines.append(", ".join(proofs))
        lines.append(", ?_⟩\n")
    lines.append("    exact ⟨rfl, rfl, rfl⟩\n")
    lines.extend(
        [
            "  have hs := Shieldd.GnarkFormal.Deployed.DtkIvkPoseidon."
            f"relation_sound_permSpec (rho 8) (rho {compressed_pos}) (rho {compressed_neg}) _ hrel\n",
            "  rcases hs with ⟨x, y, z, ⟨rfl, rfl, rfl⟩, hs⟩\n",
            f"  unfold Seg{cfg.seg}.relationRow{final_row} at r{final_row}\n",
            "  unfold Shieldd.GnarkFormal.Deployed.DtkIvkPoseidon.s38_1 "
            "Shieldd.GnarkFormal.Deployed.Poseidon2Link.row3 "
            "Shieldd.GnarkFormal.Deployed.DtkIvkPoseidon.ivkDomainLit at hs\n",
            f"  linear_combination -r{final_row} + hs\n\n",
            "end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n",
        ]
    )
    return "".join(lines)


def generate(
    *,
    output_contracts: Path = OUTPUT_CONTRACTS,
    output_dtk: Path = OUTPUT_DTK,
    adapters_only: bool = False,
) -> None:
    validate_normalized_shape()
    ltc_traces = dtk_ltc_traces()
    scalar_rungs = dtk_scalar_rungs()
    poseidon_module, poseidon_sboxes = generate_poseidon_shape(
        write_auxiliary=not adapters_only
    )
    output_contracts.mkdir(parents=True, exist_ok=True)
    if not adapters_only:
        output_dtk.mkdir(parents=True, exist_ok=True)
        write_generated(output_dtk / "Outputs.lean", emit_outputs())
    for cfg in INSTANCES:
        write_generated(output_contracts / f"DtkAdapterSeg{cfg.seg}Base.lean", emit_base(cfg))
        previous: str | None = None
        for block in canonical_blocks(cfg):
            component = f"DtkAdapterSeg{cfg.seg}{block.label}"
            write_generated(
                output_contracts / f"{component}Rec.lean",
                emit_canon_recover(cfg, block, previous),
            )
            write_generated(
                output_contracts / f"{component}Binary.lean",
                emit_canon_binary(cfg, block, f"{component}Rec"),
            )
            rows = relation_rows(cfg.seg)
            true_defs = f"{component}TrueDefs"
            write_generated(
                output_contracts / f"{true_defs}.lean",
                emit_canon_true_defs(cfg, block, rows, f"{component}Binary"),
            )
            previous_true = true_defs
            for chunk_index, _ in enumerate(canon_chunks()):
                true_chunk = f"{component}TrueChunk{chunk_index}"
                write_generated(
                    output_contracts / f"{true_chunk}.lean",
                    emit_canon_true_chunk(
                        cfg, block, rows, previous_true, chunk_index
                    ),
                )
                previous_true = true_chunk
            write_generated(
                output_contracts / f"{component}True.lean",
                emit_canon_true_thread(cfg, block, previous_true),
            )
            previous_compare = f"{component}True"
            for chunk_index, _ in enumerate(canon_chunks()):
                compare_chunk = f"{component}CompareChunk{chunk_index}"
                write_generated(
                    output_contracts / f"{compare_chunk}.lean",
                    emit_canon_compare_chunk(
                        cfg, block, rows, previous_compare, chunk_index
                    ),
                )
                previous_compare = compare_chunk
            write_generated(
                output_contracts / f"{component}Compare.lean",
                emit_canon_compare(cfg, block, previous_compare),
            )
            write_generated(
                output_contracts / f"{component}Chain.lean",
                emit_canon_chain(cfg, block, f"{component}Compare"),
            )
            write_generated(
                output_contracts / f"{component}.lean",
                emit_canon_block(cfg, 0 if block.label == "Canon1" else 1),
            )
            previous = component
        write_generated(output_contracts / f"DtkAdapterSeg{cfg.seg}Canon.lean", emit_canon(cfg))
        write_generated(output_contracts / f"DtkAdapterSeg{cfg.seg}Bits.lean", emit_bits(cfg))
        write_generated(
            output_contracts / f"DtkAdapterSeg{cfg.seg}Poseidon.lean",
            emit_poseidon_adapter(cfg, poseidon_module, poseidon_sboxes),
        )
        r_trace, q4_trace = ltc_traces
        q4_defs = f"DtkAdapterSeg{cfg.seg}LtQ4Defs"
        write_generated(
            output_contracts / f"{q4_defs}.lean",
            emit_ltc_defs(cfg, q4_trace, f"DtkAdapterSeg{cfg.seg}Base"),
        )
        previous_lt = q4_defs
        for trace in (q4_trace,):
            for chunk_index, _ in enumerate(ltc_chunks()):
                component = (
                    f"DtkAdapterSeg{cfg.seg}Lt{trace.label}Chunk{chunk_index}"
                )
                write_generated(
                    output_contracts / f"{component}.lean",
                    emit_ltc_chunk(cfg, trace, chunk_index, previous_lt),
                )
                previous_lt = component
        r_defs = f"DtkAdapterSeg{cfg.seg}LtRDefs"
        write_generated(
            output_contracts / f"{r_defs}.lean",
            emit_ltc_defs(cfg, r_trace, previous_lt),
        )
        previous_lt = r_defs
        for chunk_index, _ in enumerate(ltc_chunks()):
            component = f"DtkAdapterSeg{cfg.seg}LtRChunk{chunk_index}"
            write_generated(
                output_contracts / f"{component}.lean",
                emit_ltc_chunk(cfg, r_trace, chunk_index, previous_lt),
            )
            previous_lt = component
        write_generated(output_contracts / f"DtkAdapterSeg{cfg.seg}Lt.lean", emit_ltc(cfg))
        scalar_rows = sr1cs_lc_rows()
        write_generated(
            output_contracts / f"DtkAdapterSeg{cfg.seg}ScalarDefs.lean",
            emit_scalar_defs_module(cfg, scalar_rungs),
        )
        for chunk_index, subset in enumerate(scalar_chunks(scalar_rungs)):
            write_generated(
                output_contracts / f"DtkAdapterSeg{cfg.seg}ScalarR{chunk_index}.lean",
                emit_scalar_chunk(cfg, chunk_index, subset, scalar_rows),
            )
        write_generated(
            output_contracts / f"DtkAdapterSeg{cfg.seg}Scalar.lean",
            emit_scalar(cfg, scalar_rungs),
        )
        write_generated(output_contracts / f"DtkAdapterSeg{cfg.seg}.lean", emit_adapter(cfg))
    print(
        "generated DTK outputs/base/canonical/bit/lt/scalar modules and "
        f"{poseidon_module}; normalized row shape verified"
    )


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--adapter-out",
        type=Path,
        help=(
            "emit only DtkAdapterSeg*.lean into this directory; source inputs "
            "still come from DTK_CONTRACTS_SOURCE"
        ),
    )
    args = parser.parse_args()
    if args.adapter_out is None:
        generate()
    else:
        generate(output_contracts=args.adapter_out, adapters_only=True)

if __name__ == "__main__":
    main()
