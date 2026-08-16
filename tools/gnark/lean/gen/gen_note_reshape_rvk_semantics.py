#!/usr/bin/env python3
"""Generate the direct normalized NoteReshape RVK semantic provider."""

from __future__ import annotations

import re
from dataclasses import dataclass
from functools import cache
from pathlib import Path

import rvk_recovery as rvk
from formal_json import read_json_object
from template_ir import SegmentTemplate


ROOT = Path(__file__).resolve().parents[4]
LEAN = ROOT / "tools/gnark/lean"
IR = ROOT / "crates/core/component/shielded-pool/formal/note_reshape1x8-deployed-slice-ir.json"
FORMAL_ROOT = LEAN / "ShielddGnarkFormal"
RELATIONS = LEAN / "ShielddGnarkFormal/Deployed/Templates/Relations"
OUT = LEAN / "ShielddGnarkFormal/Deployed/Templates/Semantics"
BENCH = LEAN / "bench"
FIXED_BASE_LITERAL = FORMAL_ROOT / "RvkFixedBaseLiteral.lean"
FIXED_BASE_LITERAL_CHOICE_FREE = FORMAL_ROOT / "RvkFixedBaseLiteralChoiceFree.lean"
FIXED_GEN = FORMAL_ROOT / "RvkFixedGenInst0"
FIXED_GEN_CHOICE_FREE = FORMAL_ROOT / "RvkFixedGenInst0ChoiceFree"
FIXED_GEN_FACADE = FORMAL_ROOT / "RvkFixedGenInst0.lean"
FIXED_GEN_CHOICE_FREE_FACADE = FORMAL_ROOT / "RvkFixedGenInst0ChoiceFree.lean"

KEY = "decaf.randomized_verification_key@1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f"
NAME = "TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f"
PROOF_RUNG_CHUNK_SIZE = 1
RELATION = f"Shieldd.GnarkFormal.Deployed.Templates.Relations.{NAME}"
RELATION_MODULE = RELATION.replace("Shieldd.GnarkFormal", "ShielddGnarkFormal")
NAMESPACE = f"Shieldd.GnarkFormal.Deployed.Templates.Semantics.{NAME}"
MODULE_PREFIX = f"ShielddGnarkFormal.Deployed.Templates.Semantics.{NAME}Rvk"
ORDER = 8444461749428370424248824938781546531375899335154063827935233455917409239041


@dataclass(frozen=True)
class StructuredLc:
    constant: int
    runs: tuple[tuple[int, int, int, int], ...]
    residual: tuple[tuple[int, int], ...]

    def flat_terms(self) -> tuple[tuple[int, int], ...]:
        terms = [(self.constant, 0)] if self.constant else []
        for coefficient, start, stride, count in self.runs:
            terms.extend((coefficient, start + stride * index) for index in range(count))
        terms.extend(self.residual)
        return tuple(terms)


def _structured_lcs(source: str) -> dict[int, StructuredLc]:
    pattern = re.compile(
        r"def relationLc(\d+) \(rho : Nat -> F\) : F :=\n\s*"
        r"Shieldd\.GnarkFormal\.StructuredLC\.eval rho \(\(\{ const := \((-?\d+) : F\), "
        r"runs := \[(.*?)\], residual := \[(.*?)\] \} : "
        r"Shieldd\.GnarkFormal\.StructuredLC F\)\)",
        re.S,
    )
    result: dict[int, StructuredLc] = {}
    for match in pattern.finditer(source):
        runs = tuple(
            (int(coeff), int(start), int(stride), int(count))
            for coeff, start, stride, count in re.findall(
                r"⟨\((-?\d+) : F\), (\d+), (\d+), (\d+)⟩", match.group(3)
            )
        )
        residual = tuple(
            (int(coeff), int(wire))
            for coeff, wire in re.findall(r"\(\((-?\d+) : F\), (\d+)\)", match.group(4))
        )
        if (match.group(3).strip() and not runs) or (match.group(4).strip() and not residual):
            raise ValueError(f"relationLc{match.group(1)} has an unparseable StructuredLC")
        result[int(match.group(1))] = StructuredLc(int(match.group(2)), runs, residual)
    return result


def _flat_shadow(source: str) -> str:
    """Give the reviewed certificate recovery a flat, Python-only LC view.

    Lean continues to consume the exact named StructuredLC definitions. This
    expansion exists only so the old coefficient-sensitive recovery code can
    calculate the same certificates without a flat↔StructuredLC proof bridge.
    """
    structured = _structured_lcs(source)
    if not structured:
        raise ValueError("normalized RVK relation has no named StructuredLC definitions")
    additions = []
    for index, lc in sorted(structured.items()):
        rendered = []
        for coefficient, wire in lc.flat_terms():
            if wire == 0:
                rendered.append(f"({coefficient} : F)")
            else:
                rendered.append(f"({coefficient} : F) * rho {wire}")
        body = " + ".join(rendered) if rendered else "(0 : F)"
        additions.append(
            f"def relationLc{index}Part0 (rho : Nat -> F) : F :=\n    {body}\n"
        )
    return source + "\n" + "\n".join(additions)


def _segment() -> dict:
    ir = read_json_object(IR, canonical="pretty")
    matches = [
        segment for segment in ir["segments"]
        if segment.get("proof_template_id") == KEY
        and segment.get("op") == "decaf.randomized_verification_key"
    ]
    if not matches:
        raise ValueError("missing deployed normalized RVK instance")
    expected = {
        "op": "decaf.randomized_verification_key",
        "proof_template_id": KEY,
        "constraint_count": 1812,
    }
    for segment in matches:
        for field, value in expected.items():
            if segment.get(field) != value:
                raise ValueError(f"RVK representative {field} drifted")
        seating = SegmentTemplate.parse(segment).canonical_wire_seating
        if len(seating) != 1815 or len(set(seating)) != 1815 or seating[0] != 0:
            raise ValueError("RVK normalized seating pin drifted")
    return min(matches, key=lambda item: item["template_equivalence_witness"]["witness_sha256_hex"])


@cache
def _relation_source() -> str:
    shards = sorted(
        RELATIONS.glob(f"{NAME}Defs*.lean"),
        key=lambda path: int(path.stem.removeprefix(NAME + "Defs")),
    )
    facade = RELATIONS / f"{NAME}.lean"
    if not shards or not facade.is_file():
        raise ValueError("missing exact normalized RVK relation")
    indices = [int(path.stem.removeprefix(NAME + "Defs")) for path in shards]
    if indices != list(range(len(indices))):
        raise ValueError("RVK relation shards are not contiguous")
    source = "\n".join(path.read_text() for path in (*shards, facade))
    rows = {int(value) for value in re.findall(r"def relationRow(\d+) ", source)}
    if rows != set(range(1812)):
        raise ValueError("RVK normalized rows are not exact")
    return source


@cache
def _structured_relation_lcs() -> dict[int, StructuredLc]:
    return _structured_lcs(_relation_source())


def _local_cfg() -> dict:
    """Immutable reviewed certificate coordinates in canonical template space."""
    _segment()
    return {
        "inst": "Inst0", "b0": 1, "prefix_x1": 256, "prefix_y1": 257,
        "cont_x150": 1004, "cont_y150": 1005, "vbase": 247,
        "split_row0": 997, "split_lc0": 739, "out": (1813, 1814),
        "randomizer": 252, "akX": 1807, "akY": 1808,
        "lcx": 1448, "lcy": 1447, "lc46": 1446,
        "i75": 1806, "i76": 1809, "i77": 1810, "i78": 1811,
        "i79": 1812, "r1805": 1805,
        "tail": {"pre": 1806, "x7": 1807, "y8": 1808, "d9": 1809,
                 "outx": 1810, "outy": 1811},
    }


def _base() -> str:
    return f"""import ShielddGnarkFormal.ChoiceFreeZMod
import {RELATION_MODULE}
import ShielddGnarkFormal.Deployed.PrimeOrder
import ShielddGnarkFormal.Decaf377Assumptions

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace {NAMESPACE}

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def Order : Nat := {ORDER}
abbrev F := ZMod Order

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def spec (rho : Nat → F) : Prop :=
  (rho 252).val < 2 ^ 251 ∧
    (EdwardsBridge.onCurve ⟨rho 1807, rho 1808⟩ →
      Shieldd.GnarkFormal.Decaf377Assumptions.RandomizedVerificationKeySpec
        ⟨rho 1807, rho 1808⟩ (rho 252) ⟨rho 1813, rho 1814⟩ ∧
      EdwardsBridge.onCurve ⟨rho 1813, rho 1814⟩)

end {NAMESPACE}
"""


def _compact_acc_rhs(cfg: dict, xy: str, k: int) -> str:
    prefix = cfg["prefix_x1" if xy == "X" else "prefix_y1"]
    continuation = cfg["cont_x150" if xy == "X" else "cont_y150"]
    run = "Shieldd.GnarkFormal.StrideRun.sumAux"
    if k <= rvk.PREFIX_N:
        return f"{run} rho {prefix} 5 {k}"
    return (
        f"{run} rho {prefix} 5 {rvk.PREFIX_N} + "
        f"{run} rho {continuation} 8 {k - rvk.PREFIX_N}"
    )


def _acc_flat_name(seg: int, xy: str, k: int) -> str:
    return f"{rvk.acc_def_name(seg, xy, k)}_flat"


def _uses_flat_continuation_frontier(k: int) -> bool:
    return rvk.CONT_START <= k < rvk.CONT_START + 7


def _emit_compact_acc_defs(
    lines: list[str], seg: int, xy: str, cfg: dict, states: list[int]
) -> None:
    """Emit constant-size normalized accumulator atoms.

    Each definition is the exact arithmetic-progression sum already present in
    the extractor-owned StructuredLC.  No flat sum or relation bridge is
    introduced in Lean.
    """
    for k in states:
        name = rvk.acc_def_name(seg, xy, k)
        lines.append(
            f"def {name} (rho : Nat -> Seg{seg}.F) : "
            f"Seg{seg}.F := {_compact_acc_rhs(cfg, xy, k)}"
        )
        if k > 1:
            previous = rvk.acc_def_name(seg, xy, k - 1)
            prefix = cfg["prefix_x1" if xy == "X" else "prefix_y1"]
            continuation = cfg["cont_x150" if xy == "X" else "cont_y150"]
            if k <= rvk.PREFIX_N:
                appended = prefix + (k - 1) * 5
                step = (
                    "Shieldd.GnarkFormal.StrideRun.sumAux_succ "
                    f"rho {prefix} 5 {k - 1}"
                )
                finish = ""
            else:
                appended = continuation + (k - rvk.CONT_START) * 8
                step = (
                    "Shieldd.GnarkFormal.StrideRun.sumAux_succ "
                    f"rho {continuation} 8 {k - rvk.CONT_START}"
                )
                finish = (
                    "  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, "
                    "zero_add, add_assoc]\n"
                )
            lines.append(f"theorem {name}_succ (rho : Nat -> Seg{seg}.F) :")
            lines.append(f"    {name} rho = {previous} rho + rho {appended} := by")
            lines.append(f"  unfold {name} {previous}")
            lines.append(f"  rw [{step}]")
            if finish:
                lines.extend(finish.rstrip().splitlines())
        if _uses_flat_continuation_frontier(k):
            prefix = cfg["prefix_x1" if xy == "X" else "prefix_y1"]
            continuation = cfg["cont_x150" if xy == "X" else "cont_y150"]
            terms = " + ".join(
                f"rho {continuation + offset * 8}"
                for offset in range(k - rvk.PREFIX_N)
            )
            lines.append(f"theorem {_acc_flat_name(seg, xy, k)} (rho : Nat -> Seg{seg}.F) :")
            lines.append(
                f"    {name} rho = Shieldd.GnarkFormal.StrideRun.sumAux "
                f"rho {prefix} 5 {rvk.PREFIX_N} + {terms} := by"
            )
            if k == rvk.CONT_START:
                previous = rvk.acc_def_name(seg, xy, k - 1)
                lines.append(f"  rw [{name}_succ]")
                lines.append(f"  unfold {previous}")
                lines.append("  ring")
            else:
                previous_flat = _acc_flat_name(seg, xy, k - 1)
                lines.append(f"  rw [{name}_succ, {previous_flat}]")
    lines.append("")


def _structured_simp_names(seg: int, lc: int, xk: int | None, yk: int | None) -> list[str]:
    names = [
        f"Seg{seg}.relationLc{lc}",
        "Shieldd.GnarkFormal.StructuredLC.eval",
        "Shieldd.GnarkFormal.StructuredLC.sumRuns",
        "Shieldd.GnarkFormal.StrideRun.eval",
        "Shieldd.GnarkFormal.StructuredLC.sumResidual",
    ]
    if xk is not None:
        names.append(
            _acc_flat_name(seg, "X", xk)
            if _uses_flat_continuation_frontier(xk)
            else rvk.acc_def_name(seg, "X", xk)
        )
    if yk is not None:
        names.append(
            _acc_flat_name(seg, "Y", yk)
            if _uses_flat_continuation_frontier(yk)
            else rvk.acc_def_name(seg, "Y", yk)
        )
    return names


def _emit_structured_lc_helper(
    lines: list[str],
    seg: int,
    name: str,
    lc: int,
    formula: str,
    xk: int | None,
    yk: int | None,
) -> None:
    if lc not in _structured_relation_lcs():
        raise ValueError(f"relationLc{lc} is not an exact named StructuredLC atom")
    lines.append(f"theorem {name} (rho : Nat -> Seg{seg}.F) :")
    lines.append(f"    Seg{seg}.relationLc{lc} rho = {formula} := by")
    lines.append(f"  simp only [{', '.join(_structured_simp_names(seg, lc, xk, yk))}]")
    lines.append("  ring")
    lines.append("")


def _emit_structured_split_helpers(
    lines: list[str], seg: int, _cfg: dict, certs: list[rvk.SplitCert]
) -> None:
    for cert in certs:
        prev = cert.k - 1
        formulas = (
            (cert.f13, prev, prev),
            (cert.f14l, prev, None),
            (cert.f14r, None, prev),
            (cert.f15, prev, prev),
            (cert.f17, prev, prev),
            (cert.fselx, prev, None),
            (cert.fsely, None, prev),
        )
        for lc, (formula, xk, yk) in zip(cert.lcs, formulas, strict=True):
            _emit_structured_lc_helper(
                lines, seg, f"seg{seg}_lc{lc}", lc, formula, xk, yk
            )


def _emit_structured_prefix_row_lemma(
    lines: list[str], seg: int, cert: rvk.PrefixCert, name: str
) -> None:
    row = cert.rows[name]
    formula = cert.formulas[name]
    lines.append(f"theorem seg{seg}_prefix_{cert.k}_{name} (rho : Nat -> Seg{seg}.F)")
    lines.append(f"    (r{row} : Seg{seg}.relationRow{row} rho) :")
    lines.append(f"    {formula} := by")
    lines.append(f"  unfold Seg{seg}.relationRow{row} at r{row}")
    simplifiers: list[str] = []
    row_lcs = tuple(dict.fromkeys(rvk.row_lcs(seg, row)))
    for lc in row_lcs:
        simplifiers.extend(_structured_simp_names(
            seg,
            lc,
            cert.k - 1 if cert.k > 1 else None,
            cert.k - 1 if cert.k > 1 else None,
        ))
    if cert.k > 1:
        simplifiers.extend([
            rvk.acc_def_name(seg, "X", cert.k - 1),
            rvk.acc_def_name(seg, "Y", cert.k - 1),
        ])
        if not row_lcs:
            simplifiers.extend([
                "Shieldd.GnarkFormal.StrideRun.sumAux",
                "zero_add",
                "Nat.reduceAdd",
                "Nat.reduceMul",
            ])
    simplifiers = list(dict.fromkeys(simplifiers))
    simplifiers.insert(0, "one_mul")
    lines.append(f"  simp only [{', '.join(simplifiers)}] at r{row} ⊢")
    lines.append(f"  ring_nf at r{row} ⊢")
    lines.append(f"  exact r{row}")
    lines.append("")


def _emit_structured_tail_helpers(
    lines: list[str], seg: int, cfg: dict
) -> None:
    point_x = rvk.point_x(seg, cfg, rvk.TOTAL_N)
    point_y = rvk.point_y(seg, cfg, rvk.TOTAL_N)
    lcx, lcy, lc46 = cfg["lcx"], cfg["lcy"], cfg["lc46"]
    lc46_terms, lc46_const = rvk.lc_terms(seg, lc46)
    lc46_b0 = rvk.coeff(lc46_terms, cfg["b0"])
    if lc46_const != "1":
        raise ValueError(f"Seg{seg}.relationLc{lc46}: expected const 1, got {lc46_const}")
    combined = (
        f"1 + {lc46_b0}*rho {cfg['b0']} + "
        f"{rvk.acc_atom(seg, 'X', rvk.TOTAL_N)} + "
        f"{rvk.acc_atom(seg, 'Y', rvk.TOTAL_N)}"
    )
    _emit_structured_lc_helper(
        lines, seg, f"seg{seg}_lc46_acc", lc46, combined,
        rvk.TOTAL_N, rvk.TOTAL_N,
    )
    _emit_structured_lc_helper(
        lines, seg, f"seg{seg}_lcx", lcx, point_x, rvk.TOTAL_N, None
    )
    _emit_structured_lc_helper(
        lines, seg, f"seg{seg}_lcy", lcy, point_y, None, rvk.TOTAL_N
    )
    lines.append(f"theorem seg{seg}_lc46 (rho : Nat -> Seg{seg}.F) :")
    lines.append(
        f"    Seg{seg}.relationLc{lc46} rho = "
        f"Seg{seg}.relationLc{lcx} rho + Seg{seg}.relationLc{lcy} rho := by"
    )
    lines.append(
        f"  rw [seg{seg}_lc46_acc rho, seg{seg}_lcx rho, seg{seg}_lcy rho]"
    )
    lines.append("  ring_nf")
    lines.append(
        f"  rw [show ({int(rvk.GX) + int(rvk.GYM1)} : Seg{seg}.F) = "
        f"({lc46_b0} : Seg{seg}.F) from by decide]"
    )
    lines.append("")


def _choice_free_fixed_base_literal(source: str) -> str:
    source = "import ShielddGnarkFormal.ChoiceFreeZMod\n" + source
    replacements = (
        (
            "ShielddGnarkFormal.RvkFixedBaseConstants",
            "ShielddGnarkFormal.RvkFixedBaseConstantsChoiceFree",
        ),
        (
            "Shieldd.GnarkFormal.RvkFixedBaseConstants",
            "Shieldd.GnarkFormal.RvkFixedBaseConstantsChoiceFree",
        ),
        (
            "RvkFixedBaseRung.",
            "RvkFixedBaseRungChoiceFree.",
        ),
        (
            "RvkFixedBaseLadder.",
            "RvkFixedBaseLadderChoiceFree.",
        ),
        (
            "Shieldd.GnarkFormal.RvkFixedBaseLiteral",
            "Shieldd.GnarkFormal.RvkFixedBaseLiteralChoiceFree",
        ),
    )
    for old, new in replacements:
        source = source.replace(old, new)
    anchor = "namespace Shieldd.GnarkFormal.RvkFixedBaseLiteralChoiceFree\n\n"
    if source.count(anchor) != 1:
        raise ValueError("choice-free RVK literal namespace anchor drifted")
    return source.replace(
        anchor,
        anchor + "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n\n",
        1,
    )


def _choice_free_fixed_gen(source: str) -> str:
    source = "import ShielddGnarkFormal.ChoiceFreeZMod\n" + source
    replacements = (
        (
            "ShielddGnarkFormal.RvkFixedGenInst0",
            "ShielddGnarkFormal.RvkFixedGenInst0ChoiceFree",
        ),
        (
            "Shieldd.GnarkFormal.RvkFixedGenInst0",
            "Shieldd.GnarkFormal.RvkFixedGenInst0ChoiceFree",
        ),
        (
            "ShielddGnarkFormal.RvkFixedBaseRung",
            "ShielddGnarkFormal.RvkFixedBaseRungChoiceFree",
        ),
        (
            "Shieldd.GnarkFormal.RvkFixedBaseRung",
            "Shieldd.GnarkFormal.RvkFixedBaseRungChoiceFree",
        ),
        (
            "ShielddGnarkFormal.RvkFixedBaseLiteral",
            "ShielddGnarkFormal.RvkFixedBaseLiteralChoiceFree",
        ),
        (
            "Shieldd.GnarkFormal.RvkFixedBaseLiteral",
            "Shieldd.GnarkFormal.RvkFixedBaseLiteralChoiceFree",
        ),
        (
            "ShielddGnarkFormal.RvkFixedBaseLadder",
            "ShielddGnarkFormal.RvkFixedBaseLadderChoiceFree",
        ),
        (
            "Shieldd.GnarkFormal.RvkFixedBaseLadder",
            "Shieldd.GnarkFormal.RvkFixedBaseLadderChoiceFree",
        ),
        (
            "Shieldd.GnarkFormal.RvkFixedBaseConstants",
            "Shieldd.GnarkFormal.RvkFixedBaseConstantsChoiceFree",
        ),
        (
            "RvkFixedBaseRung.",
            "RvkFixedBaseRungChoiceFree.",
        ),
        (
            "RvkFixedBaseLadder.",
            "RvkFixedBaseLadderChoiceFree.",
        ),
    )
    for old, new in replacements:
        source = source.replace(old, new)
    anchor = "namespace Shieldd.GnarkFormal.RvkFixedGenInst0ChoiceFree\n"
    if source.count(anchor) != 1:
        raise ValueError("choice-free RVK fixed-gen namespace anchor drifted")
    return source.replace(
        anchor,
        anchor + "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n",
        1,
    )


def _choice_free_fixed_gen_facade(source: str) -> str:
    old = "ShielddGnarkFormal.RvkFixedGenInst0."
    new = "ShielddGnarkFormal.RvkFixedGenInst0ChoiceFree."
    if source.count(old) != 31:
        raise ValueError("RVK fixed-gen facade import set drifted")
    return source.replace(old, new)


def _rewrite(source: str) -> str:
    old_root = "ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1"
    source = "import ShielddGnarkFormal.ChoiceFreeZMod\n" + source
    source = source.replace(old_root + ".RvkAdapterSeg15", MODULE_PREFIX)
    source = source.replace(old_root + ".Seg15", RELATION_MODULE)
    replacements = (
        (
            "ShielddGnarkFormal.RvkFixedGenInst0",
            "ShielddGnarkFormal.RvkFixedGenInst0ChoiceFree",
        ),
        (
            "Shieldd.GnarkFormal.RvkFixedGenInst0",
            "Shieldd.GnarkFormal.RvkFixedGenInst0ChoiceFree",
        ),
        (
            "ShielddGnarkFormal.RvkFixedSplitRung",
            "ShielddGnarkFormal.RvkFixedSplitRungChoiceFree",
        ),
        (
            "Shieldd.GnarkFormal.RvkFixedSplitRung",
            "Shieldd.GnarkFormal.RvkFixedSplitRungChoiceFree",
        ),
        (
            "ShielddGnarkFormal.RvkFixedBaseLiteral",
            "ShielddGnarkFormal.RvkFixedBaseLiteralChoiceFree",
        ),
        (
            "Shieldd.GnarkFormal.RvkFixedBaseLiteral",
            "Shieldd.GnarkFormal.RvkFixedBaseLiteralChoiceFree",
        ),
        (
            "ShielddGnarkFormal.RvkFixedBaseLadder",
            "ShielddGnarkFormal.RvkFixedBaseLadderChoiceFree",
        ),
        (
            "Shieldd.GnarkFormal.RvkFixedBaseLadder",
            "Shieldd.GnarkFormal.RvkFixedBaseLadderChoiceFree",
        ),
        (
            "Shieldd.GnarkFormal.RvkFixedBaseConstants",
            "Shieldd.GnarkFormal.RvkFixedBaseConstantsChoiceFree",
        ),
        (
            "ShielddGnarkFormal.RvkFixedRun",
            "ShielddGnarkFormal.RvkFixedRunChoiceFree",
        ),
        (
            "Shieldd.GnarkFormal.RvkFixedRun",
            "Shieldd.GnarkFormal.RvkFixedRunChoiceFree",
        ),
        (
            "RvkFixedSplitRung.",
            "RvkFixedSplitRungChoiceFree.",
        ),
        (
            "RvkFixedBaseLadder.",
            "RvkFixedBaseLadderChoiceFree.",
        ),
    )
    for old, new in replacements:
        source = source.replace(old, new)
    source = source.replace(
        "import ShielddGnarkFormal.RvkToBinary\n",
        "import ShielddGnarkFormal.RvkToBinaryChoiceFree\n",
    )
    source = source.replace(
        "Shieldd.GnarkFormal.RvkToBinary.to_binary_of_deployed",
        "Shieldd.GnarkFormal.RvkToBinaryChoiceFree.to_binary_of_deployed",
    )
    source = source.replace(
        "import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Rvk\n", ""
    )
    source = source.replace(
        "import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.CompressAdapterCommon",
        "import ShielddGnarkFormal.Deployed.Templates.Semantics.BinaryRecomposition",
    )
    source = source.replace(
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1", f"namespace {NAMESPACE}"
    ).replace(
        "end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1", f"end {NAMESPACE}"
    )
    namespace_anchor = f"namespace {NAMESPACE}\n"
    if source.count(namespace_anchor) != 1:
        raise ValueError("normalized RVK namespace anchor drifted")
    source = source.replace(
        namespace_anchor,
        namespace_anchor + "\nopen scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n",
        1,
    )
    source = source.replace("Seg15.F", "F")
    source = source.replace("Seg15.", RELATION + ".")
    source = source.replace("seg15", "rvk")
    is_provider = "theorem rvk_sound " in source
    source = source.replace("theorem rvk_sound ", "theorem sound ")
    source = source.replace(
        f"(h : {RELATION}.relation rho) : {RELATION}.spec rho := by",
        f"(h : {RELATION}.relation rho) : spec rho := by",
    )
    source = source.replace(
        f"  unfold {RELATION}.spec Specs.deployedSpec15", "  unfold spec"
    )
    old_sound_prefix = """  unfold spec
  intro hak
  have hbin := rvkRvkBits_toBinary rho h
"""
    new_sound_prefix = """  unfold spec
  have hbin := rvkRvkBits_toBinary rho h
  have hscalarRange :=
    Shieldd.GnarkFormal.ChoiceFreeBinary.range_of_to_binary
      Shieldd.GnarkFormal.ScalarMulBridge.pow251_lt_order hbin
  refine ⟨hscalarRange, ?_⟩
  intro hak
"""
    if is_provider:
        if source.count(old_sound_prefix) != 1:
            raise ValueError("normalized RVK soundness prefix drifted")
        source = source.replace(old_sound_prefix, new_sound_prefix, 1)
    classical_bit_model = f"""  rw [Gates.to_binary_iff_eq_fin_to_bits_le_of_pow_length_lt
    (N := Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd.Order)
    Shieldd.GnarkFormal.ScalarMulBridge.pow251_lt_order] at hbin
  rcases hbin with ⟨hscalarLt, hbits⟩
  let bitsBool := Fin.toBitsLE (⟨(rho 252).val, hscalarLt⟩ : Fin (2 ^ 251))
  have hbitAt : ∀ i, i < 251 →
      rho (1 + i) = Bool.toZMod bitsBool[i]! := by
    intro i hi
    rw [← rvkRvkBits_get rho i hi, hbits]
    change (bitsBool.map Bool.toZMod)[i]! = Bool.toZMod bitsBool[i]!
    rw [getElem!_pos (bitsBool.map Bool.toZMod) i (by simpa using hi),
      getElem!_pos bitsBool i (by simpa using hi), List.Vector.getElem_map]
"""
    constructive_bit_model = f"""  obtain ⟨bitsBool, hbits, hscalarValue⟩ :=
    Shieldd.GnarkFormal.ChoiceFreeBinary.exists_bool_vector_of_to_binary
      Shieldd.GnarkFormal.ScalarMulBridge.pow251_lt_order hbin
  have hbitAt : ∀ i, i < 251 →
      rho (1 + i) = Bool.toZMod bitsBool[i]! := by
    intro i hi
    rw [← rvkRvkBits_get rho i hi, hbits]
    change (bitsBool.map Bool.toZMod)[i]! = Bool.toZMod bitsBool[i]!
    rw [getElem!_pos (bitsBool.map Bool.toZMod) i (by simpa using hi),
      getElem!_pos bitsBool i (by simpa using hi), List.Vector.getElem_map]
"""
    classical_scalar_bridge = """    (by
      intro i _ hi
      exact Shieldd.GnarkFormal.ScalarMulBridge.toBitsLE_get!_eq_testBit
        (rho 252).val hscalarLt i hi)
"""
    constructive_scalar_bridge = """    (by
      intro i _ hi
      rw [hscalarValue]
      exact (Shieldd.GnarkFormal.ScalarMulBridge.ofBitsLE_testBit
        bitsBool i hi).symm)
"""
    if "have hspec : Shieldd.GnarkFormal.Decaf377Assumptions.RandomizedVerificationKeySpec" in source:
        if source.count(classical_bit_model) != 1:
            raise ValueError("normalized RVK bit recovery shape drifted")
        if source.count(classical_scalar_bridge) != 1:
            raise ValueError("normalized RVK scalar bit bridge shape drifted")
        source = source.replace(
            classical_bit_model,
            constructive_bit_model,
            1,
        ).replace(
            classical_scalar_bridge,
            constructive_scalar_bridge,
            1,
        )
    stale_rfl = (
        "      Shieldd.GnarkFormal.RvkBridge.genYNat]\n"
        "    rfl\n"
    )
    if "have hspec : Shieldd.GnarkFormal.Decaf377Assumptions.RandomizedVerificationKeySpec" in source:
        if source.count(stale_rfl) != 1:
            raise ValueError("normalized RVK final simplification shape drifted")
        source = source.replace(
            stale_rfl,
            "      Shieldd.GnarkFormal.RvkBridge.genYNat]\n",
            1,
        )
    return source


def _use_compact_acc_recurrence(source: str, k: int) -> str:
    old = f"rvkAccX{k}, rvkAccY{k}, add_assoc"
    new = f"rvkAccX{k}_succ, rvkAccY{k}_succ, add_assoc"
    if source.count(old) != 1:
        raise ValueError(
            f"RVK step {k} did not expose exactly one accumulator rewrite site"
        )
    return source.replace(old, new, 1)


def generated_files(out: Path = OUT, bench: Path = BENCH) -> dict[Path, str]:
    old_source = rvk.SEG_SRC.get(15)
    rvk.SEG_SRC[15] = _flat_shadow(_relation_source())
    old_split_chunk_size = rvk.SPLIT_CHUNK_SIZE
    rvk.SPLIT_CHUNK_SIZE = PROOF_RUNG_CHUNK_SIZE
    old_emit_acc_defs = rvk.emit_acc_defs
    old_emit_split_lc_helpers = rvk.emit_split_lc_helpers
    old_emit_prefix_row_lemma = rvk.emit_prefix_row_lemma
    old_emit_tail_lc_helpers = rvk.emit_tail_lc_helpers
    rvk.emit_acc_defs = _emit_compact_acc_defs
    rvk.emit_split_lc_helpers = _emit_structured_split_helpers
    rvk.emit_prefix_row_lemma = _emit_structured_prefix_row_lemma
    rvk.emit_tail_lc_helpers = _emit_structured_tail_helpers
    try:
        cfg = _local_cfg()
        tail_atoms = {
            "lc46": rvk.row_lcs(15, 1805),
            "lcy": rvk.row_lcs(15, 1807),
            "lcx": rvk.row_lcs(15, 1808),
        }
        for field, atoms in tail_atoms.items():
            if len(atoms) != 1:
                raise ValueError(f"RVK tail {field} row does not reference exactly one LC atom")
            cfg[field] = atoms[0]
        certs = [rvk.split_cert(15, cfg, k) for k in range(rvk.CONT_START, rvk.TOTAL_N + 1)]
        prefix_certs = [rvk.prefix_cert(15, cfg, k) for k in range(1, rvk.PREFIX_N + 1)]
        prefix_chunks = rvk.chunks(prefix_certs, PROOF_RUNG_CHUNK_SIZE)
        outputs: dict[Path, str] = {
            out / f"{NAME}RvkBase.lean": _base(),
            FIXED_BASE_LITERAL_CHOICE_FREE:
                _choice_free_fixed_base_literal(FIXED_BASE_LITERAL.read_text()),
            FIXED_GEN_CHOICE_FREE_FACADE:
                _choice_free_fixed_gen_facade(FIXED_GEN_FACADE.read_text()),
        }
        for path in sorted(FIXED_GEN.glob("*.lean")):
            outputs[FIXED_GEN_CHOICE_FREE / path.name] = _choice_free_fixed_gen(
                path.read_text()
            )
        previous = f"{MODULE_PREFIX}Base"
        for xy in ("X", "Y"):
            for index, states in enumerate(rvk.acc_state_chunks()):
                suffix = f"Acc{xy}{index}"
                outputs[out / f"{NAME}Rvk{suffix}.lean"] = _rewrite(
                    rvk.emit_acc_defs_module(15, cfg, xy, states, previous)
                )
                previous = MODULE_PREFIX + suffix
        outputs[out / f"{NAME}RvkAcc.lean"] = _rewrite(rvk.emit_acc_module(15, cfg, previous))
        outputs[out / f"{NAME}RvkBits.lean"] = _rewrite(rvk.emit_bits_module(15, cfg))
        for index, chunk in enumerate(prefix_chunks):
            outputs[out / f"{NAME}RvkPrefixLemmas{index}.lean"] = _rewrite(
                rvk.emit_prefix_lemma_module(15, chunk, index)
            )
            outputs[out / f"{NAME}RvkPrefixSteps{index}.lean"] = _rewrite(
                rvk.emit_prefix_step_module(15, cfg, chunk, index)
            )
        for filename, cert, lemma_index in rvk.prefix_leaf_outputs(15, prefix_chunks):
            suffix = filename.removeprefix("RvkAdapterSeg15").removesuffix(".lean")
            source = _rewrite(rvk.emit_prefix_leaf_module(15, cfg, cert, lemma_index))
            if cert.k > 1:
                source = _use_compact_acc_recurrence(source, cert.k)
            outputs[out / f"{NAME}Rvk{suffix}.lean"] = source
        outputs[out / f"{NAME}RvkLadder.lean"] = _rewrite(
            rvk.emit_ladder_module(15, cfg, prefix_chunks)
        )
        lemma_chunks = rvk.chunks(certs, PROOF_RUNG_CHUNK_SIZE)
        for index, chunk in enumerate(lemma_chunks):
            outputs[out / f"{NAME}RvkLemmas{index}.lean"] = _rewrite(
                rvk.emit_lemma_module(15, cfg, chunk, index, index == len(lemma_chunks) - 1)
            )
        step_chunks = rvk.chunks(certs, PROOF_RUNG_CHUNK_SIZE)
        for index, chunk in enumerate(step_chunks):
            outputs[out / f"{NAME}RvkSteps{index}.lean"] = _rewrite(
                rvk.emit_step_module(15, cfg, chunk, index)
            )
        for filename, cert, lemma_index in rvk.split_leaf_outputs(15, certs):
            suffix = filename.removeprefix("RvkAdapterSeg15").removesuffix(".lean")
            source = _rewrite(rvk.emit_split_leaf_module(15, cfg, cert, lemma_index))
            source = _use_compact_acc_recurrence(source, cert.k)
            outputs[out / f"{NAME}Rvk{suffix}.lean"] = source
        provider_path = out / f"{NAME}.lean"
        outputs[provider_path] = _rewrite(rvk.emit_adapter(15, cfg, certs, len(step_chunks)))
        outputs[provider_path] = outputs[provider_path].replace(
            f"import {RELATION_MODULE}\n",
            f"import {RELATION_MODULE}\nimport {MODULE_PREFIX}Base\n",
            1,
        )
    finally:
        rvk.SPLIT_CHUNK_SIZE = old_split_chunk_size
        rvk.emit_acc_defs = old_emit_acc_defs
        rvk.emit_split_lc_helpers = old_emit_split_lc_helpers
        rvk.emit_prefix_row_lemma = old_emit_prefix_row_lemma
        rvk.emit_tail_lc_helpers = old_emit_tail_lc_helpers
        if old_source is None:
            rvk.SEG_SRC.pop(15, None)
        else:
            rvk.SEG_SRC[15] = old_source

    candidates = (
        "PrefixStep1", "PrefixStep75", "PrefixStep149", "PrefixLemmas0",
        "Step150", "Step200", "Step250", "Steps20", "AccX0", "AccY24",
        "Ladder", "",
    )
    for suffix in candidates:
        module = NAME if not suffix else f"{NAME}Rvk{suffix}"
        outputs[bench / f"NoteReshapeTemplate{module}Import.lean"] = (
            f"import ShielddGnarkFormal.Deployed.Templates.Semantics.{module}\n"
        )

    combined = "\n".join(outputs.values())
    for marker in (
        "NoteReshape2x1",
        "representativeRho",
        "representativeSeating",
        "relationLcPart",
        "Seg15.",
    ):
        if marker in combined:
            raise ValueError(f"direct RVK provider retained transport marker {marker}")
    if "RandomizedVerificationKeySpec" not in outputs[provider_path] or "onCurve" not in outputs[provider_path]:
        raise ValueError("direct RVK provider omitted equality or on-curve semantics")
    return outputs
