#!/usr/bin/env python3
"""Generate note_reshape2x1 RVK deployed-slice adapters for segments 15 and 30
(Wave-2 layout: inst0 wires shifted -251, inst1 -954 vs the T1-d layout; pins
re-derived from note_reshape2x1-deployed-slice-ir.json).

The deployed RVK slice has three pieces:

* rungs 1..149: fused fixed-base rows already handled by RvkFixedGenInst{0,1};
* rungs 150..250: split native-add rows plus select rows;
* final native add: ak + fixed-base ladder result.

The generated adapters keep the large selected-delta sums behind plain `def`s.
They unfold those defs only in same-field LC helper lemmas, never at the
Seg.F/EdwardsBridge.F boundary.
"""

from __future__ import annotations

import argparse
import re
from dataclasses import dataclass
from pathlib import Path

from generated_contract_source import read_source
from types import SimpleNamespace

import gen_dtk_slice as dtk

ROOT = Path(__file__).resolve().parents[1]
CONTRACTS = ROOT / "ShielddGnarkFormal/Deployed/Contracts/NoteReshape2x1"

GX = "4959445789346820725352484487855828915252512307947624787834978378872129235627"
GYM1 = "6060471950081851567114691557659790004756535011754163002297540472747064943287"
PREFIX_N = 149
TOTAL_N = 250
CONT_START = 150
PREFIX_CHUNK_SIZE = 10
SPLIT_CHUNK_SIZE = 5
SPLIT_LEMMA_CHUNK_SIZE = 1
ACC_CHUNK_SIZE = 10


INSTANCES = {
    15: dict(
        inst="Inst0",
        b0=16130,
        prefix_x1=16384,
        prefix_y1=16385,
        cont_x150=17132,
        cont_y150=17133,
        vbase=247,
        split_row0=997,
        split_lc0=739,
        out=(17939, 17940),
        randomizer=97,
        akX=6,
        akY=7,
        lcx=1448,
        lcy=1447,
        lc46=1446,
        i75=17934,
        i76=17935,
        i77=17936,
        i78=17937,
        i79=17938,
        r1805=1805,
        tail=dict(pre=1806, x7=1807, y8=1808, d9=1809, outx=1810, outy=1811),
    ),
    30: dict(
        inst="Inst1",
        b0=28311,
        prefix_x1=28565,
        prefix_y1=28566,
        cont_x150=29313,
        cont_y150=29314,
        vbase=247,
        split_row0=997,
        split_lc0=739,
        out=(30120, 30121),
        randomizer=184,
        akX=6,
        akY=7,
        lcx=1448,
        lcy=1447,
        lc46=1446,
        i75=30115,
        i76=30116,
        i77=30117,
        i78=30118,
        i79=30119,
        r1805=1805,
        tail=dict(pre=1806, x7=1807, y8=1808, d9=1809, outx=1810, outy=1811),
    ),
}


SEG_SRC: dict[int, str] = {}
FIXED_SRC: dict[str, str] = {}


def seg_src(seg: int) -> str:
    if seg not in SEG_SRC:
        SEG_SRC[seg] = read_source(CONTRACTS, seg)
    return SEG_SRC[seg]


def fixed_src(inst: str) -> str:
    if inst not in FIXED_SRC:
        FIXED_SRC[inst] = (ROOT / f"ShielddGnarkFormal/RvkFixedGen{inst}.lean").read_text()
    return FIXED_SRC[inst]


def chunks(items, n):
    return [items[i:i + n] for i in range(0, len(items), n)]


def prefix_leaf_outputs(seg: int, prefix_chunks):
    for lemma_idx, chunk in enumerate(prefix_chunks):
        for cert in chunk:
            yield (
                f"RvkAdapterSeg{seg}PrefixStep{cert.k}.lean",
                cert,
                lemma_idx,
            )


def split_leaf_outputs(seg: int, certs):
    for index, cert in enumerate(certs):
        yield (
            f"RvkAdapterSeg{seg}Step{cert.k}.lean",
            cert,
            index // SPLIT_LEMMA_CHUNK_SIZE,
        )


def xwire(cfg, k: int) -> int:
    if k <= PREFIX_N:
        return cfg["prefix_x1"] + 5 * (k - 1)
    return cfg["cont_x150"] + 8 * (k - CONT_START)


def ywire(cfg, k: int) -> int:
    if k <= PREFIX_N:
        return cfg["prefix_y1"] + 5 * (k - 1)
    return cfg["cont_y150"] + 8 * (k - CONT_START)


def bitwire(cfg, k: int) -> int:
    return cfg["b0"] + k


def split_row(cfg, k: int) -> int:
    return cfg["split_row0"] + 8 * (k - CONT_START)


def split_lc(cfg, k: int) -> int:
    return cfg["split_lc0"] + 7 * (k - CONT_START)


def xwires_upto(cfg, k: int) -> list[int]:
    return [xwire(cfg, i) for i in range(1, k + 1)]


def ywires_upto(cfg, k: int) -> list[int]:
    return [ywire(cfg, i) for i in range(1, k + 1)]


def acc_def_name(seg: int, xy: str, k: int) -> str:
    return f"seg{seg}Acc{xy}{k}"


def acc_atom(seg: int, xy: str, k: int) -> str:
    return f"{acc_def_name(seg, xy, k)} rho"


def acc_defs_rw(seg: int, xy: str, k: int) -> str:
    return ", ".join(acc_def_name(seg, xy, j) for j in range(k, 0, -1))


def acc_sum_name(seg: int, xy: str, k: int) -> str:
    return f"{acc_def_name(seg, xy, k)}_sum"


def acc_weighted_name(seg: int, k: int) -> str:
    return f"seg{seg}AccWeighted{k}"


def acc_xy_def_name(seg: int, k: int) -> str:
    return f"seg{seg}AccXY{k}"


def acc_xy_atom(seg: int, k: int) -> str:
    return f"{acc_xy_def_name(seg, k)} rho"


def acc_xy_sum_name(seg: int, k: int) -> str:
    return f"{acc_xy_def_name(seg, k)}_sum"


def acc_xy_split_name(seg: int, k: int) -> str:
    return f"{acc_xy_def_name(seg, k)}_split"


def acc_sum_expr(cfg, xy: str, k: int) -> str:
    wire = xwire if xy == "X" else ywire
    expr = f"rho {wire(cfg, 1)}"
    for j in range(2, k + 1):
        expr = f"({expr} + rho {wire(cfg, j)})"
    return expr


def acc_xy_sum_expr(cfg, k: int) -> str:
    expr = f"rho {xwire(cfg, 1)} + rho {ywire(cfg, 1)}"
    for j in range(2, k + 1):
        expr = f"(({expr} + rho {xwire(cfg, j)}) + rho {ywire(cfg, j)})"
    return expr


def acc_weighted_expr(cfg, k: int) -> str:
    expr = f"cx * rho {xwire(cfg, 1)} + cy * rho {ywire(cfg, 1)}"
    for j in range(2, k + 1):
        expr = f"({expr} + cx * rho {xwire(cfg, j)}) + cy * rho {ywire(cfg, j)}"
    return expr


def emit_acc_defs(L: list[str], seg: int, xy: str, cfg, states: list[int]) -> None:
    wire = xwire if xy == "X" else ywire
    for k in states:
        name = acc_def_name(seg, xy, k)
        if k == 1:
            rhs = f"rho {wire(cfg, k)}"
        else:
            rhs = f"{acc_def_name(seg, xy, k - 1)} rho + rho {wire(cfg, k)}"
        L.append(f"def {name} (rho : Nat -> Seg{seg}.F) : Seg{seg}.F := {rhs}")
    L.append("")
    for k in states:
        L.append(f"theorem {acc_sum_name(seg, xy, k)} (rho : Nat -> Seg{seg}.F) :")
        L.append(f"    {acc_atom(seg, xy, k)} = {acc_sum_expr(cfg, xy, k)} := by")
        if k == 1:
            L.append("  rfl")
        else:
            L.append(f"  rw [{acc_def_name(seg, xy, k)}, {acc_sum_name(seg, xy, k - 1)}]")
        L.append("")


def emit_acc_xy_defs(L: list[str], seg: int, cfg) -> None:
    for k in range(1, TOTAL_N + 1):
        name = acc_xy_def_name(seg, k)
        if k == 1:
            rhs = f"rho {xwire(cfg, k)} + rho {ywire(cfg, k)}"
        else:
            rhs = f"({acc_xy_def_name(seg, k - 1)} rho + rho {xwire(cfg, k)}) + rho {ywire(cfg, k)}"
        L.append(f"def {name} (rho : Nat -> Seg{seg}.F) : Seg{seg}.F := {rhs}")
    L.append("")
    for k in range(1, TOTAL_N + 1):
        L.append(f"theorem {acc_xy_split_name(seg, k)} (rho : Nat -> Seg{seg}.F) :")
        L.append(f"    {acc_xy_atom(seg, k)} = {acc_atom(seg, 'X', k)} + {acc_atom(seg, 'Y', k)} := by")
        if k == 1:
            L.append(f"  rw [{acc_xy_def_name(seg, k)}, {acc_def_name(seg, 'X', k)}, {acc_def_name(seg, 'Y', k)}]")
            L.append("  rfl")
        else:
            L.append(
                f"  rw [{acc_xy_def_name(seg, k)}, {acc_xy_split_name(seg, k - 1)}, "
                f"{acc_def_name(seg, 'X', k)}, {acc_def_name(seg, 'Y', k)}]"
            )
            L.append("  ac_rfl")
        L.append("")


def emit_acc_weighted_lemmas(L: list[str], seg: int, cfg, states: list[int]) -> None:
    for k in states:
        L.append(f"theorem {acc_weighted_name(seg, k)} (rho : Nat -> Seg{seg}.F) (cx cy : Seg{seg}.F) :")
        L.append(f"    cx * {acc_atom(seg, 'X', k)} + cy * {acc_atom(seg, 'Y', k)} =")
        L.append(f"      {acc_weighted_expr(cfg, k)} := by")
        if k == 1:
            L.append(f"  rw [{acc_def_name(seg, 'X', k)}, {acc_def_name(seg, 'Y', k)}]")
        else:
            L.append("  calc")
            L.append(f"    _ = (cx * {acc_atom(seg, 'X', k - 1)} + cy * {acc_atom(seg, 'Y', k - 1)}) +")
            L.append(f"        cx * rho {xwire(cfg, k)} + cy * rho {ywire(cfg, k)} := by")
            L.append(f"      rw [{acc_def_name(seg, 'X', k)}, {acc_def_name(seg, 'Y', k)}]")
            L.append("      ring")
            L.append(f"    _ = _ := by rw [{acc_weighted_name(seg, k - 1)}]")
        L.append("")


def parse_relation_parts(seg: int):
    parts = []
    for m in re.finditer(
        r"def relationPart(\d+) \(rho : Nat -> F\) : Prop :=\n(.*?)"
        r"(?=\n\ndef relationPart|\n\ndef relation |\Z)",
        seg_src(seg),
        re.S,
    ):
        idx = int(m.group(1))
        rows = [int(r) for r in re.findall(r"relationRow(\d+) rho", m.group(2))]
        if idx != len(parts):
            raise ValueError(f"non-contiguous part {idx} in Seg{seg}")
        parts.append(rows)
    return parts


def lc_part_count(seg: int, lc: int) -> int:
    return len(re.findall(rf"def relationLc{lc}Part(\d+) ", seg_src(seg)))


def lc_simp(seg: int, lc: int, indent: str = "  ") -> str:
    parts = ", ".join(f"Seg{seg}.relationLc{lc}Part{j}" for j in range(lc_part_count(seg, lc)))
    return f"{indent}simp only [Seg{seg}.relationLc{lc}, {parts}]"


def lc_body(seg: int, lc: int) -> str:
    bodies = []
    for j in range(lc_part_count(seg, lc)):
        bodies.append(lc_part_body(seg, lc, j))
    return "\n".join(bodies)


def lc_part_body(seg: int, lc: int, part: int) -> str:
    m = re.search(
        rf"def relationLc{lc}Part{part} \(rho : Nat -> F\) : F :=\n(.*?)(?=\n\ndef )",
        seg_src(seg),
        re.S,
    )
    if not m:
        raise ValueError(f"missing Seg{seg}.relationLc{lc}Part{part}")
    return m.group(1)


def lc_part_terms(seg: int, lc: int, part: int) -> tuple[dict[int, str], str]:
    body = lc_part_body(seg, lc, part)
    terms: dict[int, str] = {}
    for coeff, wire in re.findall(r"\((-?\d+) : F\)\s*\*\s*rho\s+(\d+)", body):
        terms[int(wire)] = coeff
    consts = re.findall(r"\((-?\d+) : F\)(?!\s*\*\s*rho)", body)
    const = "0"
    for c in consts:
        const = c if const == "0" else f"{const} + {c}"
    return terms, const


def lc_terms(seg: int, lc: int) -> tuple[dict[int, str], str]:
    body = lc_body(seg, lc)
    terms: dict[int, str] = {}
    for coeff, wire in re.findall(r"\((-?\d+) : F\)\s*\*\s*rho\s+(\d+)", body):
        terms[int(wire)] = coeff
    consts = re.findall(r"\((-?\d+) : F\)(?!\s*\*\s*rho)", body)
    const = "0"
    for c in consts:
        const = c if const == "0" else f"{const} + {c}"
    return terms, const


def row_body(seg: int, row: int) -> str:
    m = re.search(
        rf"def relationRow{row} \(rho : Nat -> F\) : Prop :=\n(.*?)(?=\n\ndef )",
        seg_src(seg),
        re.S,
    )
    if not m:
        raise ValueError(f"missing Seg{seg}.relationRow{row}")
    return m.group(1)


def row_lcs(seg: int, row: int) -> tuple[int, ...]:
    """Named LC atoms referenced by one exact relation row, in operand order."""
    return tuple(
        int(index)
        for index in re.findall(r"relationLc(\d+) rho", row_body(seg, row))
    )


def row_coeff(seg: int, row: int, wire: int) -> str:
    body = row_body(seg, row)
    m = re.search(rf"\((-?\d+) : F\)\s*\*\s*rho\s+{wire}\b", body)
    if not m:
        raise ValueError(f"missing coeff for wire {wire} in Seg{seg}.row{row}")
    return m.group(1)


def coeff(terms: dict[int, str], wire: int) -> str:
    return terms.get(wire, "0")


def common_coeff(terms: dict[int, str], wires: list[int], label: str) -> str:
    vals = {coeff(terms, w) for w in wires}
    if len(vals) != 1:
        sample = sorted(vals)[:5]
        raise ValueError(f"non-uniform coeff for {label}: {sample}")
    return vals.pop()


def is_zero(s: str) -> bool:
    return s == "0"


def mul(c: str, term: str) -> str:
    if c == "0":
        return "0"
    if c == "1":
        return term
    if c == "-1":
        return f"(-1)*{term}"
    return f"{c}*{term}"


def add(terms: list[str]) -> str:
    kept = [t for t in terms if not is_zero(t)]
    if not kept:
        return "0"
    return " + ".join(kept)


@dataclass
class SplitCert:
    k: int
    row: int
    lc: int
    lcs: tuple[int, int, int, int, int, int, int]
    bit: int
    i67: int
    i68: int
    i69: int
    outx: int
    i71: int
    outy: int
    sdx: int
    sdy: int
    akX: str
    akY: str
    ev: str
    kv: str
    la: str
    lb: str
    rb: str
    cc: str
    px: str
    py: str
    qb0: str
    negGX: str
    negGY: str
    f13: str
    f14l: str
    f14r: str
    f15: str
    f17: str
    fselx: str
    fsely: str


def split_cert(seg: int, cfg, k: int) -> SplitCert:
    row = split_row(cfg, k)
    row_atoms = tuple(row_lcs(seg, row + offset) for offset in range(8))
    expected_widths = (1, 2, 1, 0, 1, 0, 1, 1)
    if tuple(map(len, row_atoms)) != expected_widths:
        raise ValueError(
            f"k{k}: split row LC shape drifted: "
            f"{tuple(map(len, row_atoms))} != {expected_widths}"
        )
    lcs = (
        row_atoms[0][0],
        row_atoms[1][0],
        row_atoms[1][1],
        row_atoms[2][0],
        row_atoms[4][0],
        row_atoms[6][0],
        row_atoms[7][0],
    )
    lc = lcs[0]
    prev = k - 1
    xprev = acc_atom(seg, "X", prev)
    yprev = acc_atom(seg, "Y", prev)
    b0 = f"rho {cfg['b0']}"
    bit = bitwire(cfg, k)
    i67 = cfg["cont_x150"] - 6 + 8 * (k - CONT_START)
    i68 = i67 + 1
    i69 = i67 + 2
    outx = i67 + 3
    i71 = i67 + 4
    outy = i67 + 5
    sdx = i67 + 6
    sdy = i67 + 7

    t13, _ = lc_terms(seg, lcs[0])
    t14l, _ = lc_terms(seg, lcs[1])
    t14r, c14r = lc_terms(seg, lcs[2])
    t15, _ = lc_terms(seg, lcs[3])
    t17, _ = lc_terms(seg, lcs[4])
    tselx, _ = lc_terms(seg, lcs[5])
    tsely, csel_y = lc_terms(seg, lcs[6])

    xws = xwires_upto(cfg, prev)
    yws = ywires_upto(cfg, prev)

    kv = coeff(t13, cfg["b0"])
    la = common_coeff(t14l, xws, f"k{k} la")
    lb = coeff(t14l, cfg["b0"])
    akX = common_coeff(t14r, yws, f"k{k} akX")
    if c14r != akX:
        raise ValueError(f"k{k}: h14R const {c14r} != akX {akX}")
    rb = coeff(t14r, cfg["b0"])
    akY = common_coeff(t15, xws, f"k{k} akY")
    if common_coeff(t15, yws, f"k{k} akX in h15") != akX:
        raise ValueError(f"k{k}: h15 y coeff != akX")
    cc = coeff(t15, cfg["b0"])
    px = common_coeff(t17, xws, f"k{k} px")
    py = common_coeff(t17, yws, f"k{k} py")
    qb0 = coeff(t17, cfg["b0"])
    negGX = coeff(tselx, cfg["b0"])
    negGY = coeff(tsely, cfg["b0"])
    if csel_y != "-1":
        raise ValueError(f"k{k}: selectY const {csel_y}")
    ev = row_coeff(seg, row + 5, i67)

    return SplitCert(
        k=k, row=row, lc=lc, lcs=lcs, bit=bit, i67=i67, i68=i68, i69=i69, outx=outx,
        i71=i71, outy=outy, sdx=sdx, sdy=sdy, akX=akX, akY=akY, ev=ev, kv=kv,
        la=la, lb=lb, rb=rb, cc=cc, px=px, py=py, qb0=qb0, negGX=negGX,
        negGY=negGY,
        f13=add([xprev, yprev, mul(kv, b0), "1"]),
        f14l=add([mul(la, xprev), mul(lb, b0)]),
        f14r=add([mul(akX, yprev), akX, mul(rb, b0)]),
        f15=add([mul(akY, xprev), mul(akX, yprev), akX, mul(cc, b0)]),
        f17=add([mul(px, xprev), mul(py, yprev), py, mul(qb0, b0)]),
        fselx=add([mul(negGX, b0), mul("-1", xprev), f"rho {outx}"]),
        fsely=add(["(-1)", mul(negGY, b0), mul("-1", yprev), f"rho {outy}"]),
    )


def row_proof(seg: int, row: int) -> str:
    return f"(by simpa [Seg{seg}.relationRow{row}] using r{row})"


PREFIX_HYPOTHESES = ("v2", "addX", "addY", "selX", "selY")


@dataclass
class PrefixCert:
    k: int
    bit: int
    v2: int
    sx: int
    sy: int
    sdx: int
    sdy: int
    rows: dict[str, int]
    formulas: dict[str, str]


def rung_hypothesis(inst: str, k: int, name: str) -> str:
    theorem = f"rung{k}" if k == 1 else f"rung{k}_wide"
    source = fixed_src(inst)
    start = source.find(f"theorem {theorem}\n")
    if start < 0:
        raise ValueError(f"missing {theorem} in RvkFixedGen{inst}")
    end = source.find(":= by", start)
    if end < 0:
        raise ValueError(f"unterminated {theorem} in RvkFixedGen{inst}")
    prefix = f"(h_{name} : "
    for line in source[start:end].splitlines():
        stripped = line.strip()
        if stripped.startswith(prefix) and stripped.endswith(")"):
            return stripped[len(prefix):-1]
    raise ValueError(f"missing h_{name} in {theorem}")


def replace_identifiers(expr: str, replacements: dict[str, str]) -> str:
    for old in sorted(replacements, key=len, reverse=True):
        expr = re.sub(rf"\b{re.escape(old)}\b", replacements[old], expr)
    return expr


def prefix_cert(seg: int, cfg, k: int) -> PrefixCert:
    sdx = xwire(cfg, k)
    sdy = ywire(cfg, k)
    v2 = sdx - 3
    sx = sdx - 2
    sy = sdx - 1
    bit = bitwire(cfg, k)
    base = cfg["vbase"] + 5 * k
    rows = dict(zip(PREFIX_HYPOTHESES, range(base, base + 5), strict=True))
    replacements = {
        "b0": f"rho {cfg['b0']}",
        f"bit{k}": f"rho {bit}",
        "v2": f"rho {v2}",
        "sx": f"rho {sx}",
        "sy": f"rho {sy}",
        "sdx": f"rho {sdx}",
        "sdy": f"rho {sdy}",
    }
    if k > 1:
        replacements["d1x"] = acc_atom(seg, "X", k - 1)
        replacements["d1y"] = acc_atom(seg, "Y", k - 1)
    formulas = {
        name: replace_identifiers(rung_hypothesis(cfg["inst"], k, name), replacements)
        for name in PREFIX_HYPOTHESES
    }
    return PrefixCert(k, bit, v2, sx, sy, sdx, sdy, rows, formulas)


def prefix_ladder_rows(cfg) -> list[int]:
    rows = list(range(PREFIX_N + 1))
    for k in range(1, PREFIX_N + 1):
        base = cfg["vbase"] + 5 * k
        rows.extend(range(base, base + 5))
    return rows


def split_rows(cfg) -> list[int]:
    rows = list(range(CONT_START, TOTAL_N + 1))
    for k in range(CONT_START, TOTAL_N + 1):
        base = split_row(cfg, k)
        rows.extend(range(base, base + 8))
    return rows


def tail_rows(cfg) -> set[int]:
    return {cfg["r1805"], *(cfg["tail"][key] for key in ("pre", "x7", "y8", "d9", "outx", "outy"))}


def emit_unpack(L: list[str], seg: int, parts, keep_rows: set[int]) -> None:
    names = [f"p{i}" for i in range(len(parts))]
    L.append(f"  unfold Seg{seg}.relation at h")
    L.append("  rcases h with ⟨")
    for c in chunks(names, 10):
        L.append("    " + ", ".join(c) + ",")
    L[-1] = L[-1].rstrip(",")
    L.append("  ⟩")
    for i, rows in enumerate(parts):
        used = set(rows) & keep_rows
        if not used:
            continue
        L.append(f"  unfold Seg{seg}.relationPart{i} at p{i}")
        if len(rows) == 1:
            if rows[0] in keep_rows:
                L.append(f"  have r{rows[0]} := p{i}")
        else:
            inner = ", ".join(f"r{r}" if r in keep_rows else "_" for r in rows)
            L.append(f"  rcases p{i} with ⟨{inner}⟩")


def emit_lc_helper(L: list[str], seg: int, name: str, lc: int, formula: str, xk: int | None, yk: int | None) -> None:
    L.append(f"theorem {name} (rho : Nat -> Seg{seg}.F) :")
    L.append(f"    Seg{seg}.relationLc{lc} rho = {formula} := by")
    L.append(lc_simp(seg, lc))
    rws = []
    if xk:
        rws.append(acc_sum_name(seg, "X", xk))
    if yk:
        rws.append(acc_sum_name(seg, "Y", yk))
    if rws:
        L.append(f"  rw [{', '.join(rws)}]")
    L.append("  ring")
    L.append("")


def emit_split_lc_helpers(L: list[str], seg: int, cfg, certs: list[SplitCert]) -> None:
    for c in certs:
        prev = c.k - 1
        emit_lc_helper(L, seg, f"seg{seg}_lc{c.lcs[0]}", c.lcs[0], c.f13, prev, prev)
        emit_lc_helper(L, seg, f"seg{seg}_lc{c.lcs[1]}", c.lcs[1], c.f14l, prev, None)
        emit_lc_helper(L, seg, f"seg{seg}_lc{c.lcs[2]}", c.lcs[2], c.f14r, None, prev)
        emit_lc_helper(L, seg, f"seg{seg}_lc{c.lcs[3]}", c.lcs[3], c.f15, prev, prev)
        emit_lc_helper(L, seg, f"seg{seg}_lc{c.lcs[4]}", c.lcs[4], c.f17, prev, prev)
        emit_lc_helper(L, seg, f"seg{seg}_lc{c.lcs[5]}", c.lcs[5], c.fselx, prev, None)
        emit_lc_helper(L, seg, f"seg{seg}_lc{c.lcs[6]}", c.lcs[6], c.fsely, None, prev)


def point_x(seg: int, cfg, k: int) -> str:
    return f"{GX}*rho {cfg['b0']} + {acc_atom(seg, 'X', k)}"


def point_y(seg: int, cfg, k: int) -> str:
    return f"1+{GYM1}*rho {cfg['b0']} + {acc_atom(seg, 'Y', k)}"


def point_expr(seg: int, cfg, k: int) -> str:
    return f"(⟨({point_x(seg, cfg, k)} : Seg{seg}.F), ({point_y(seg, cfg, k)} : Seg{seg}.F)⟩ : EdwardsBridge.Point)"


def emit_tail_lc_helpers(L: list[str], seg: int, cfg) -> None:
    pX = point_x(seg, cfg, TOTAL_N)
    pY = point_y(seg, cfg, TOTAL_N)
    lcx, lcy, lc46 = cfg["lcx"], cfg["lcy"], cfg["lc46"]
    emit_lc_helper(L, seg, f"seg{seg}_lcx", lcx, pX, TOTAL_N, None)
    emit_lc_helper(L, seg, f"seg{seg}_lcy", lcy, pY, None, TOTAL_N)
    lc46_terms, lc46_const = lc_terms(seg, lc46)
    lc46_b0 = coeff(lc46_terms, cfg["b0"])
    if lc46_const != "1":
        raise ValueError(f"Seg{seg}.relationLc{lc46}: expected const 1, got {lc46_const}")
    if not all(coeff(lc46_terms, w) == "1" for w in xwires_upto(cfg, TOTAL_N) + ywires_upto(cfg, TOTAL_N)):
        raise ValueError(f"Seg{seg}.relationLc{lc46}: expected unit x/y coefficients")
    x_index = {xwire(cfg, k): k for k in range(1, TOTAL_N + 1)}
    y_index = {ywire(cfg, k): k for k in range(1, TOTAL_N + 1)}
    prev = 0
    part_count = lc_part_count(seg, lc46)
    for j in range(part_count):
        terms, const = lc_part_terms(seg, lc46, j)
        ks_x = sorted(x_index[w] for w in terms if w in x_index)
        ks_y = sorted(y_index[w] for w in terms if w in y_index)
        if ks_x != ks_y:
            raise ValueError(f"Seg{seg}.relationLc{lc46}Part{j}: x/y pair mismatch")
        if not ks_x or ks_x != list(range(prev + 1, ks_x[-1] + 1)):
            raise ValueError(f"Seg{seg}.relationLc{lc46}Part{j}: non-contiguous pair range")
        cur = ks_x[-1]
        for w, c in terms.items():
            if w == cfg["b0"]:
                if j != 0 or c != lc46_b0:
                    raise ValueError(f"Seg{seg}.relationLc{lc46}Part{j}: unexpected b0 coefficient")
            elif w in x_index or w in y_index:
                if c != "1":
                    raise ValueError(f"Seg{seg}.relationLc{lc46}Part{j}: non-unit pair coefficient")
            else:
                raise ValueError(f"Seg{seg}.relationLc{lc46}Part{j}: unexpected wire {w}")
        if j == 0:
            if const != "1":
                raise ValueError(f"Seg{seg}.relationLc{lc46}Part0: expected const 1, got {const}")
            L.append(f"theorem seg{seg}_lc46_part0 (rho : Nat -> Seg{seg}.F) :")
            L.append(f"    Seg{seg}.relationLc{lc46}Part0 rho = 1 + {lc46_b0}*rho {cfg['b0']} + {acc_atom(seg, 'X', cur)} + {acc_atom(seg, 'Y', cur)} := by")
        else:
            if const != "0" or coeff(terms, cfg["b0"]) != "0":
                raise ValueError(f"Seg{seg}.relationLc{lc46}Part{j}: unexpected const/b0")
            L.append(f"theorem seg{seg}_lc46_part{j} (rho : Nat -> Seg{seg}.F) :")
            L.append(f"    Seg{seg}.relationLc{lc46}Part{j} rho + ({acc_atom(seg, 'X', prev)} + {acc_atom(seg, 'Y', prev)}) = {acc_atom(seg, 'X', cur)} + {acc_atom(seg, 'Y', cur)} := by")
        L.append(f"  simp only [Seg{seg}.relationLc{lc46}Part{j}]")
        unfolds = (
            [acc_def_name(seg, "X", k) for k in range(cur, prev, -1)] +
            [acc_def_name(seg, "Y", k) for k in range(cur, prev, -1)]
        )
        if unfolds:
            L.append("  rw [" + ", ".join(unfolds) + "]")
        L.append("  ring")
        L.append("")
        prev = cur
    if prev != TOTAL_N:
        raise ValueError(f"Seg{seg}.relationLc{lc46}: final pair boundary {prev} != {TOTAL_N}")
    L.append(f"theorem seg{seg}_lc46_acc (rho : Nat -> Seg{seg}.F) :")
    L.append(f"    Seg{seg}.relationLc{lc46} rho = 1 + {lc46_b0}*rho {cfg['b0']} + {acc_atom(seg, 'X', TOTAL_N)} + {acc_atom(seg, 'Y', TOTAL_N)} := by")
    L.append(f"  simp only [Seg{seg}.relationLc{lc46}]")
    for j in range(part_count):
        L.append(f"  have h{j} := seg{seg}_lc46_part{j} rho")
    L.append("  linear_combination " + " + ".join(f"h{j}" for j in range(part_count)))
    L.append("")
    L.append(f"theorem seg{seg}_lc46 (rho : Nat -> Seg{seg}.F) :")
    L.append(f"    Seg{seg}.relationLc{lc46} rho = (Seg{seg}.relationLc{lcx} rho) + (Seg{seg}.relationLc{lcy} rho) := by")
    L.append(f"  rw [seg{seg}_lc46_acc rho, seg{seg}_lcx rho, seg{seg}_lcy rho]")
    L.append("  ring_nf")
    L.append(f"  rw [show ({int(GX) + int(GYM1)} : Seg{seg}.F) = ({lc46_b0} : Seg{seg}.F) from by decide]")
    L.append("")


def emit_prefix_row_lemma(L: list[str], seg: int, cert: PrefixCert, name: str) -> None:
    row = cert.rows[name]
    formula = cert.formulas[name]
    weighted = cert.k > 1 and name in ("addX", "addY")
    L.append(f"theorem seg{seg}_prefix_{cert.k}_{name} (rho : Nat -> Seg{seg}.F)")
    L.append(f"    (r{row} : Seg{seg}.relationRow{row} rho) :")
    L.append(f"    {formula} := by")
    if weighted:
        L.append(f"  rw [add_assoc, {acc_weighted_name(seg, cert.k - 1)}]")
    elif cert.k > 1:
        rws = []
        if acc_atom(seg, "X", cert.k - 1) in formula:
            rws.append(acc_sum_name(seg, "X", cert.k - 1))
        if acc_atom(seg, "Y", cert.k - 1) in formula:
            rws.append(acc_sum_name(seg, "Y", cert.k - 1))
        if rws:
            L.append(f"  rw [{', '.join(rws)}]")
    L.append(f"  unfold Seg{seg}.relationRow{row} at r{row}")
    for lc in sorted({int(n) for n in re.findall(r"relationLc(\d+) rho", row_body(seg, row))}):
        L.append(lc_simp(seg, lc, indent="  ") + f" at r{row}")
    L.append("  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,")
    L.append(f"    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r{row} ⊢")
    L.append(f"  exact r{row}")
    L.append("")


def prefix_step_rows(certs: list[PrefixCert], include_seed: bool) -> list[int]:
    rows = [0] if include_seed else []
    for cert in certs:
        rows.append(cert.k)
        rows.extend(cert.rows[name] for name in PREFIX_HYPOTHESES)
    return rows


def emit_prefix_leaf_proof(L: list[str], seg: int, cfg, KNS: str, cert: PrefixCert) -> None:
    k = cert.k
    prev = k - 1
    prev_point = f"{KNS}.acc1 (rho {cfg['b0']} : Seg{seg}.F)" if k == 1 else point_expr(seg, cfg, prev)
    rung = f"{KNS}.rung1" if k == 1 else f"{KNS}.rung{k}_wide"
    L.append(f"  have hbrow{k} : (1*(rho {cert.bit}))*(1 + (-1)*(rho {cert.bit})) = 0 := by")
    L.append(f"    simpa [Seg{seg}.relationRow{k}] using r{k}")
    L.append(f"  have hinput : onCurve ({prev_point}) := by")
    L.append("    exact hacc")
    L.append(f"  have hr{k} : RvkFixedBaseLadder.FixedStepRel {k} (rho {cert.bit})")
    L.append(f"      ({prev_point}) {point_expr(seg, cfg, k)} := by")
    L.append(
        f"    simpa [{KNS}.acc{k}, {acc_def_name(seg, 'X', k)}, "
        f"{acc_def_name(seg, 'Y', k)}, add_assoc] using"
    )
    args = [
        f"(rho {cfg['b0']} : Seg{seg}.F)",
        f"(rho {cert.bit} : Seg{seg}.F)",
    ]
    if k > 1:
        args.extend([
            f"({acc_atom(seg, 'X', prev)} : Seg{seg}.F)",
            f"({acc_atom(seg, 'Y', prev)} : Seg{seg}.F)",
        ])
    args.extend([
        f"(rho {cert.v2} : Seg{seg}.F)",
        f"(rho {cert.sx} : Seg{seg}.F)",
        f"(rho {cert.sy} : Seg{seg}.F)",
        f"(rho {cert.sdx} : Seg{seg}.F)",
        f"(rho {cert.sdy} : Seg{seg}.F)",
        "hinput",
    ])
    L.append(f"      {rung} " + " ".join(args))
    for name in PREFIX_HYPOTHESES:
        row = cert.rows[name]
        L.append(f"        (by simpa using seg{seg}_prefix_{k}_{name} rho r{row})")
    L.append(f"        hbrow{k}")
    L.append(f"  exact hr{k}")


def emit_split_step(L: list[str], seg: int, cfg, KNS: str, c: SplitCert) -> None:
    k = c.k
    prev = k - 1
    row = c.row
    point_prev = point_expr(seg, cfg, prev)
    point_cur = point_expr(seg, cfg, k)
    L.append(f"  have hbrow{k} : (1*(rho {c.bit}))*(1 + (-1)*(rho {c.bit})) = 0 := by")
    L.append(f"    simpa [Seg{seg}.relationRow{k}] using r{k}")
    for off in range(8):
        L.append(f"  unfold Seg{seg}.relationRow{row + off} at r{row + off}")
    L.append(f"  have h13_{k} : rho {c.i67} = {c.f13} := by")
    L.append(f"    have hLc := seg{seg}_lc{c.lcs[0]} rho")
    L.append(f"    rw [hLc] at r{row}")
    L.append(f"    linear_combination -r{row}")
    L.append(f"  have h14_{k} : ({c.f14l}) * ({c.f14r}) = rho {c.i68} := by")
    L.append(f"    have hL := seg{seg}_lc{c.lcs[1]} rho")
    L.append(f"    have hR := seg{seg}_lc{c.lcs[2]} rho")
    L.append(f"    rw [hL, hR] at r{row + 1}")
    L.append(f"    linear_combination r{row + 1}")
    L.append(f"  have h15_{k} : {c.f15} = rho {c.i69} := by")
    L.append(f"    have hLc := seg{seg}_lc{c.lcs[3]} rho")
    L.append(f"    rw [hLc] at r{row + 2}")
    L.append(f"    linear_combination r{row + 2}")
    L.append(f"  have h16_{k} : rho {c.outx} * (1 + rho {c.i68}) = rho {c.i69} := by")
    L.append(f"    linear_combination r{row + 3}")
    L.append(f"  have h17_{k} : {c.f17} = rho {c.i71} := by")
    L.append(f"    have hLc := seg{seg}_lc{c.lcs[4]} rho")
    L.append(f"    rw [hLc] at r{row + 4}")
    L.append(f"    linear_combination r{row + 4}")
    L.append(f"  have h18_{k} : rho {c.outy} * (1 + (-1)*rho {c.i68}) = rho {c.i71} + {c.ev}*rho {c.i67} := by")
    L.append(f"    linear_combination r{row + 5}")
    L.append(f"  have hSelX_{k} : (1*rho {c.bit}) * ({c.fselx}) = rho {c.sdx} := by")
    L.append(f"    have hLc := seg{seg}_lc{c.lcs[5]} rho")
    L.append(f"    rw [hLc] at r{row + 6}")
    L.append(f"    linear_combination r{row + 6}")
    L.append(f"  have hSelY_{k} : (1*rho {c.bit}) * ({c.fsely}) = rho {c.sdy} := by")
    L.append(f"    have hLc := seg{seg}_lc{c.lcs[6]} rho")
    L.append(f"    rw [hLc] at r{row + 7}")
    L.append(f"    linear_combination r{row + 7}")
    L.append(f"  have hr{k} : RvkFixedBaseLadder.FixedStepRel {k} (rho {c.bit}) {point_prev} {point_cur} := by")
    L.append(
        f"    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, "
        f"{acc_def_name(seg, 'X', k)}, {acc_def_name(seg, 'Y', k)}, add_assoc] using "
        f"RvkFixedSplitRung.splitRung_fixedStepRel {k}"
    )
    L.append(f"      ({c.akX} : EdwardsBridge.F) ({c.akY} : EdwardsBridge.F) ({c.ev} : EdwardsBridge.F)")
    L.append(f"      ({c.kv} : EdwardsBridge.F) ({c.la} : EdwardsBridge.F) ({c.lb} : EdwardsBridge.F)")
    L.append(f"      ({c.rb} : EdwardsBridge.F) ({c.cc} : EdwardsBridge.F) ({c.px} : EdwardsBridge.F)")
    L.append(f"      ({c.py} : EdwardsBridge.F) ({c.qb0} : EdwardsBridge.F)")
    L.append(f"      ({c.negGX} : EdwardsBridge.F) ({c.negGY} : EdwardsBridge.F)")
    L.append(f"      (rho {cfg['b0']} : Seg{seg}.F) ({acc_atom(seg, 'X', prev)} : Seg{seg}.F)")
    L.append(f"      ({acc_atom(seg, 'Y', prev)} : Seg{seg}.F) (rho {c.bit} : Seg{seg}.F)")
    L.append(f"      (rho {c.i67} : Seg{seg}.F) (rho {c.i68} : Seg{seg}.F) (rho {c.i69} : Seg{seg}.F)")
    L.append(f"      (rho {c.i71} : Seg{seg}.F) (rho {c.outx} : Seg{seg}.F) (rho {c.outy} : Seg{seg}.F)")
    L.append(f"      (rho {c.sdx} : Seg{seg}.F) (rho {c.sdy} : Seg{seg}.F) hacc")
    L.append(f"      (by rw [C_eq_L{k}]; simp only [L{k}])")
    for _ in range(9):
        L.append("      (by decide)")
    L.append(f"      h13_{k} h14_{k} h15_{k} h16_{k} h17_{k} h18_{k} hSelX_{k} hSelY_{k} hbrow{k}")
    L.append(f"  exact hr{k}")


def module_header(seg: int, with_opens: bool = True) -> list[str]:
    lines = [
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 20000000",
        "set_option linter.unusedVariables false",
        "",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1",
        "",
    ]
    if with_opens:
        lines.extend([
        "open EdwardsBridge",
        "open Bool (toZMod)",
        "open Shieldd.GnarkFormal.RvkFixedBaseLiteral",
        "",
        ])
    return lines


def module_footer() -> list[str]:
    return ["", "end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1", ""]


def acc_state_chunks() -> list[list[int]]:
    return chunks(list(range(1, TOTAL_N + 1)), ACC_CHUNK_SIZE)


def acc_weighted_chunks() -> list[list[int]]:
    return chunks(list(range(1, PREFIX_N + 1)), ACC_CHUNK_SIZE)


def emit_acc_defs_module(
    seg: int, cfg, xy: str, states: list[int], previous_module: str
) -> str:
    L: list[str] = [
        f"import {previous_module}",
        "",
        *module_header(seg, with_opens=False),
    ]
    emit_acc_defs(L, seg, xy, cfg, states)
    L.extend(module_footer())
    return "\n".join(L)


def emit_acc_weighted_module(
    seg: int, cfg, states: list[int], previous_module: str
) -> str:
    L: list[str] = [
        f"import {previous_module}",
        "",
        *module_header(seg, with_opens=False),
    ]
    emit_acc_weighted_lemmas(L, seg, cfg, states)
    L.extend(module_footer())
    return "\n".join(L)


def emit_acc_module(seg: int, cfg, previous_module: str) -> str:
    L: list[str] = [
        f"import {previous_module}",
        "",
        *module_header(seg, with_opens=False),
    ]
    b0 = cfg["b0"]
    L.extend([
        f"def seg{seg}RvkBits (rho : Nat -> Seg{seg}.F) : List.Vector Seg{seg}.F 251 :=",
        f"  List.Vector.ofFn (fun i : Fin 251 => rho ({b0} + i.val))",
        "",
        f"theorem seg{seg}RvkBits_get (rho : Nat -> Seg{seg}.F) (i : Nat) (hi : i < 251) :",
        f"    (seg{seg}RvkBits rho)[i]! = rho ({b0} + i) := by",
        "  rw [getElem!_pos _ i (by simpa using hi)]",
        "  conv_lhs => rw [List.Vector.getElem_def]",
        f"  simp only [seg{seg}RvkBits, List.Vector.toList_ofFn, List.getElem_ofFn]",
        "",
        f"def seg{seg}RvkAcc (rho : Nat -> Seg{seg}.F) : Nat -> EdwardsBridge.Point",
        "  | 0 => ⟨0, 1⟩",
        f"  | 1 => ⟨({GX} : Seg{seg}.F) * rho {b0},",
        f"      (1 : Seg{seg}.F) + ({GYM1} : Seg{seg}.F) * rho {b0}⟩",
    ])
    for state in range(2, TOTAL_N + 2):
        L.append(f"  | {state} => {point_expr(seg, cfg, state - 1)}")
    L.extend(["  | _ => ⟨0, 1⟩", ""])
    L.extend(module_footer())
    return "\n".join(L)


def emit_bits_module(seg: int, cfg) -> str:
    bit_base = cfg["b0"]
    randomizer = cfg["randomizer"]
    rows = list(range(251))
    block = dtk.CanonicalBlock("Rvk", randomizer, bit_base, 0, 251, 252)
    helper_cfg = SimpleNamespace(seg=seg)
    L: list[str] = [
        f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg{seg}Acc\n",
        "import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.CompressAdapterCommon\n",
        "import ShielddGnarkFormal.RvkToBinary\n\n",
        "set_option maxRecDepth 1000000\n",
        "set_option maxHeartbeats 20000000\n",
        "set_option linter.unusedVariables false\n\n",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n\n",
        f"theorem seg{seg}RvkBits_toBinary (rho : Nat -> Seg{seg}.F) "
        f"(h : Seg{seg}.relation rho) :\n",
        f"    GatesDef.to_binary (rho {randomizer}) 251 (seg{seg}RvkBits rho) := by\n",
    ]
    unpack: list[str] = []
    emit_unpack(unpack, seg, parse_relation_parts(seg), set(rows + [251]))
    L.extend(line + "\n" for line in unpack)
    for row in rows:
        L.append(f"  unfold Seg{seg}.relationRow{row} at r{row}\n")
    dtk.emit_recomposition(L, helper_cfg, block, f"(seg{seg}RvkBits rho)", "r251", 251)
    L.extend([
        f"  apply Shieldd.GnarkFormal.RvkToBinary.to_binary_of_deployed "
        f"(rho {randomizer}) (seg{seg}RvkBits rho)\n",
        "  · intro i hi\n",
        f"    have key := seg{seg}RvkBits_get rho i hi\n",
        f"    have hgoal : rho ({bit_base} + i) * (1 - rho ({bit_base} + i)) = 0 := by\n",
        "      interval_cases i\n",
    ])
    for row in rows:
        L.append(f"      · linear_combination r{row}\n")
    L.extend([
        f"    have key' : (seg{seg}RvkBits rho)[i] = rho ({bit_base} + i) := by\n",
        f"      rw [← getElem!_pos (seg{seg}RvkBits rho) i (by simpa using hi)]\n",
        "      exact key\n",
        "    exact key' ▸ hgoal\n",
        "  · exact hrec\n\n",
        "end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n",
    ])
    return "".join(L)


def emit_lemma_module(seg: int, cfg, certs: list[SplitCert], idx: int, include_tail: bool) -> str:
    L: list[str] = [
        f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg{seg}Acc",
        *([] if not include_tail else ["import Mathlib.Tactic"]),
        "",
        *module_header(seg, with_opens=False),
    ]
    emit_split_lc_helpers(L, seg, cfg, certs)
    if include_tail:
        emit_tail_lc_helpers(L, seg, cfg)
    L.extend(module_footer())
    return "\n".join(L)


def emit_prefix_lemma_module(seg: int, certs: list[PrefixCert], idx: int) -> str:
    L: list[str] = [
        f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg{seg}Acc",
        "import Mathlib.Tactic",
        "",
        *module_header(seg, with_opens=False),
    ]
    for cert in certs:
        for name in PREFIX_HYPOTHESES:
            emit_prefix_row_lemma(L, seg, cert, name)
    L.extend(module_footer())
    return "\n".join(L) + "\n"


def emit_prefix_leaf_module(seg: int, cfg, cert: PrefixCert, lemma_idx: int) -> str:
    inst = cfg["inst"]
    KNS = f"Shieldd.GnarkFormal.RvkFixedGen{inst}"
    L: list[str] = [
        f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg{seg}PrefixLemmas{lemma_idx}",
        f"import ShielddGnarkFormal.RvkFixedGen{inst}",
        "import ShielddGnarkFormal.RvkFixedBaseLadder",
        "import ShielddGnarkFormal.Deployed.PrimeOrder",
        "",
        *module_header(seg),
    ]
    L.append(f"theorem seg{seg}_prefix_step{cert.k} (rho : Nat -> Seg{seg}.F)")
    for row in prefix_step_rows([cert], False):
        L.append(f"    (r{row} : Seg{seg}.relationRow{row} rho)")
    L.append(f"    (hacc : onCurve (seg{seg}RvkAcc rho {cert.k})) :")
    L.append(f"    RvkFixedBaseLadder.FixedStepRel {cert.k} (rho {cert.bit})")
    L.append(f"      (seg{seg}RvkAcc rho {cert.k}) (seg{seg}RvkAcc rho ({cert.k} + 1)) := by")
    emit_prefix_leaf_proof(L, seg, cfg, KNS, cert)
    L.extend(module_footer())
    return "\n".join(L) + "\n"


def emit_prefix_step_module(seg: int, cfg, certs: list[PrefixCert], idx: int) -> str:
    first = certs[0].k
    last = certs[-1].k
    L: list[str] = [
        *[
            f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg{seg}PrefixStep{cert.k}"
            for cert in certs
        ],
        "",
        *module_header(seg),
    ]
    L.append(f"theorem seg{seg}_prefix_steps{idx} (rho : Nat -> Seg{seg}.F)")
    for row in prefix_step_rows(certs, False):
        L.append(f"    (r{row} : Seg{seg}.relationRow{row} rho)")
    L.append(f"    : ∀ i, {first} ≤ i → i ≤ {last} → onCurve (seg{seg}RvkAcc rho i) →")
    L.append("        RvkFixedBaseLadder.FixedStepRel i")
    L.append(f"          (rho ({cfg['b0']} + i)) (seg{seg}RvkAcc rho i) (seg{seg}RvkAcc rho (i + 1)) := by")
    L.append("  intro i hlo hhi hacc")
    L.append("  interval_cases i")
    for cert in certs:
        args = " ".join(f"r{row}" for row in prefix_step_rows([cert], False))
        L.append(f"  · exact seg{seg}_prefix_step{cert.k} rho {args} hacc")
    L.extend(module_footer())
    return "\n".join(L) + "\n"


def step_rows_for(certs: list[SplitCert]) -> list[int]:
    rows: list[int] = []
    for c in certs:
        rows.append(c.k)
        rows.extend(range(c.row, c.row + 8))
    return rows


def emit_split_leaf_module(seg: int, cfg, cert: SplitCert, lemma_idx: int) -> str:
    inst = cfg["inst"]
    KNS = f"Shieldd.GnarkFormal.RvkFixedGen{inst}"
    L: list[str] = [
        f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg{seg}",
        f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg{seg}Acc",
        f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg{seg}Lemmas{lemma_idx}",
        f"import ShielddGnarkFormal.RvkFixedGen{inst}",
        "import ShielddGnarkFormal.RvkFixedSplitRung",
        "import ShielddGnarkFormal.RvkFixedBaseLiteral",
        "import ShielddGnarkFormal.RvkFixedBaseLadder",
        "import ShielddGnarkFormal.Deployed.PrimeOrder",
        "",
        *module_header(seg),
    ]
    L.append(f"theorem seg{seg}_step{cert.k} (rho : Nat -> Seg{seg}.F)")
    for row in step_rows_for([cert]):
        L.append(f"    (r{row} : Seg{seg}.relationRow{row} rho)")
    L.append(f"    (hacc : onCurve (seg{seg}RvkAcc rho {cert.k})) :")
    L.append(f"    RvkFixedBaseLadder.FixedStepRel {cert.k} (rho {cert.bit})")
    L.append(f"      (seg{seg}RvkAcc rho {cert.k}) (seg{seg}RvkAcc rho ({cert.k} + 1)) := by")
    emit_split_step(L, seg, cfg, KNS, cert)
    L.extend(module_footer())
    return "\n".join(L) + "\n"


def emit_step_module(seg: int, cfg, certs: list[SplitCert], idx: int) -> str:
    prev = certs[0].k - 1
    last = certs[-1].k
    L: list[str] = [
        *[
            f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg{seg}Step{cert.k}"
            for cert in certs
        ],
        "",
        *module_header(seg),
    ]
    L.append(f"theorem seg{seg}_steps{idx} (rho : Nat -> Seg{seg}.F)")
    for row in step_rows_for(certs):
        L.append(f"    (r{row} : Seg{seg}.relationRow{row} rho)")
    L.append(f"    : ∀ i, {prev + 1} ≤ i → i ≤ {last} → onCurve (seg{seg}RvkAcc rho i) →")
    L.append("        RvkFixedBaseLadder.FixedStepRel i")
    L.append(f"          (rho ({cfg['b0']} + i)) (seg{seg}RvkAcc rho i) (seg{seg}RvkAcc rho (i + 1)) := by")
    L.append("  intro i hlo hhi hacc")
    L.append("  interval_cases i")
    for cert in certs:
        args = " ".join(f"r{row}" for row in step_rows_for([cert]))
        L.append(f"  · exact seg{seg}_step{cert.k} rho {args} hacc")
    L.extend(module_footer())
    return "\n".join(L) + "\n"


def emit_ladder_module(seg: int, cfg, prefix_chunks: list[list[PrefixCert]]) -> str:
    L: list[str] = [
        f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg{seg}",
        f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg{seg}Acc",
        *[
            f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg{seg}PrefixSteps{i}"
            for i in range(len(prefix_chunks))
        ],
        "",
        *module_header(seg),
    ]
    rows = prefix_ladder_rows(cfg)
    L.append(f"theorem seg{seg}_prefix_steps (rho : Nat -> Seg{seg}.F)")
    for row in rows:
        L.append(f"    (r{row} : Seg{seg}.relationRow{row} rho)")
    L.append(f"    : ∀ i, 1 ≤ i → i ≤ {PREFIX_N} → onCurve (seg{seg}RvkAcc rho i) →")
    L.append("        RvkFixedBaseLadder.FixedStepRel i")
    L.append(f"          (rho ({cfg['b0']} + i)) (seg{seg}RvkAcc rho i) (seg{seg}RvkAcc rho (i + 1)) := by")
    for idx, certs in enumerate(prefix_chunks):
        first = certs[0].k
        last = certs[-1].k
        L.append(f"  have hs{idx} := seg{seg}_prefix_steps{idx} rho")
        for row_chunk in chunks([f"r{row}" for row in prefix_step_rows(certs, False)], 10):
            L.append("      " + " ".join(row_chunk))
    L.append("  intro i hlo hhi hacc")
    for idx, certs in enumerate(prefix_chunks):
        last = certs[-1].k
        if idx == len(prefix_chunks) - 1:
            L.append(f"  exact hs{idx} i (by omega) (by omega) hacc")
        else:
            L.append(f"  by_cases hi{idx} : i ≤ {last}")
            L.append(f"  · exact hs{idx} i (by omega) hi{idx} hacc")
    L.extend(module_footer())
    return "\n".join(L) + "\n"


def emit_trace_setup(L: list[str], seg: int, cfg, certs: list[SplitCert]) -> None:
    L.append("  rw [Gates.to_binary_iff_eq_fin_to_bits_le_of_pow_length_lt")
    L.append("    (N := Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd.Order)")
    L.append("    Shieldd.GnarkFormal.ScalarMulBridge.pow251_lt_order] at hbin")
    L.append("  rcases hbin with ⟨hscalarLt, hbits⟩")
    L.append(f"  let bitsBool := Fin.toBitsLE (⟨(rho {cfg['randomizer']}).val, hscalarLt⟩ : Fin (2 ^ 251))")
    L.append("  have hbitAt : ∀ i, i < 251 →")
    L.append(f"      rho ({cfg['b0']} + i) = Bool.toZMod bitsBool[i]! := by")
    L.append("    intro i hi")
    L.append(f"    rw [← seg{seg}RvkBits_get rho i hi, hbits]")
    L.append("    change (bitsBool.map Bool.toZMod)[i]! = Bool.toZMod bitsBool[i]!")
    L.append("    rw [getElem!_pos (bitsBool.map Bool.toZMod) i (by simpa using hi),")
    L.append("      getElem!_pos bitsBool i (by simpa using hi), List.Vector.getElem_map]")
    L.append("  have hstep : ∀ i, i < 251 → onCurve (seg" + str(seg) + "RvkAcc rho i) →")
    L.append("      RvkFixedBaseLadder.FixedStepRel i (Bool.toZMod bitsBool[i]!)")
    L.append(f"        (seg{seg}RvkAcc rho i) (seg{seg}RvkAcc rho (i + 1)) := by")
    L.append("    intro i hi hacc")
    L.append("    by_cases hzero : i = 0")
    L.append("    · subst i")
    L.append("      change RvkFixedBaseLadder.FixedStepRel 0 (Bool.toZMod bitsBool[0]!) ⟨0, 1⟩")
    L.append(f"        (⟨({GX} : Seg{seg}.F) * rho {cfg['b0']},")
    L.append(f"          (1 : Seg{seg}.F) + ({GYM1} : Seg{seg}.F) * rho {cfg['b0']}⟩ : EdwardsBridge.Point)")
    L.append(f"      rw [hbitAt 0 (by omega)]")
    L.append("      simpa [")
    L.append("        Shieldd.GnarkFormal.RvkFixedRun.seedAcc,")
    L.append("        Shieldd.GnarkFormal.RvkFixedBaseConstants.C,")
    L.append("        Shieldd.GnarkFormal.RvkFixedBaseConstants.generator,")
    L.append("        Shieldd.GnarkFormal.RvkBridge.genXNat,")
    L.append("        Shieldd.GnarkFormal.RvkBridge.genYNat] using")
    L.append("        (Shieldd.GnarkFormal.RvkFixedRun.seedStepRel bitsBool[0]!)")
    L.append("    · rw [← hbitAt i hi]")
    L.append(f"      by_cases hprefix : i ≤ {PREFIX_N}")
    L.append("      · exact hsPrefix i (by omega) hprefix hacc")
    split_chunks = chunks(certs, SPLIT_CHUNK_SIZE)
    for idx, chunk in enumerate(split_chunks):
        last = chunk[-1].k
        if idx == len(split_chunks) - 1:
            L.append(f"      exact hsTail{idx} i (by omega) (by omega) hacc")
        else:
            L.append(f"      by_cases htail{idx} : i ≤ {last}")
            L.append(f"      · exact hsTail{idx} i (by omega) htail{idx} hacc")
    L.append("  have htrace := Shieldd.GnarkFormal.RvkFixedRun.trace_final_semantic")
    L.append(f"    bitsBool (seg{seg}RvkAcc rho) hstep EdwardsBridge.identity_onCurve")


def emit_adapter(seg: int, cfg, certs: list[SplitCert], step_count: int) -> str:
    inst = cfg["inst"]
    KNS = f"Shieldd.GnarkFormal.RvkFixedGen{inst}"
    parts = parse_relation_parts(seg)
    keep_rows = set(prefix_ladder_rows(cfg)) | set(split_rows(cfg)) | tail_rows(cfg)

    L: list[str] = [
        f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg{seg}",
        "import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Rvk",
        f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg{seg}Acc",
        f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg{seg}Bits",
        f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg{seg}Ladder",
        *[
            f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg{seg}Lemmas{i}"
            for i in range(step_count)
        ],
        *[
            f"import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg{seg}Steps{i}"
            for i in range(step_count)
        ],
        f"import ShielddGnarkFormal.RvkFixedGen{inst}",
        "import ShielddGnarkFormal.RvkFixedSplitRung",
        "import ShielddGnarkFormal.RvkFixedBaseLiteral",
        "import ShielddGnarkFormal.RvkFixedBaseLadder",
        "import ShielddGnarkFormal.RvkFixedRun",
        "import ShielddGnarkFormal.RvkDeployedRung",
        "import ShielddGnarkFormal.Deployed.PrimeOrder",
        "",
        *module_header(seg),
    ]

    t = cfg["tail"]
    outX, outY = cfg["out"]
    akX, akY = cfg["akX"], cfg["akY"]
    lcx, lcy, lc46 = cfg["lcx"], cfg["lcy"], cfg["lc46"]
    i75, i76, i77, i78, i79 = cfg["i75"], cfg["i76"], cfg["i77"], cfg["i78"], cfg["i79"]
    r1805 = cfg["r1805"]
    LCX = f"Seg{seg}.relationLc{lcx} rho"
    LCY = f"Seg{seg}.relationLc{lcy} rho"
    LC46 = f"Seg{seg}.relationLc{lc46} rho"

    L.extend([
        f"theorem seg{seg}_sound (rho : Nat -> Seg{seg}.F)",
        f"    (h : Seg{seg}.relation rho) : Seg{seg}.spec rho := by",
        f"  unfold Seg{seg}.spec Specs.deployedSpec{seg}",
        "  intro hak",
        f"  have hbin := seg{seg}RvkBits_toBinary rho h",
    ])
    emit_unpack(L, seg, parts, keep_rows)
    L.append(f"  have hsPrefix := seg{seg}_prefix_steps rho")
    for c in chunks([f"r{row}" for row in prefix_ladder_rows(cfg)], 10):
        L.append("      " + " ".join(c))
    for idx, chunk in enumerate(chunks(certs, SPLIT_CHUNK_SIZE)):
        L.append(f"  have hsTail{idx} := seg{seg}_steps{idx} rho")
        for c in chunks([f"r{row}" for row in step_rows_for(chunk)], 9):
            L.append("      " + " ".join(c))
    emit_trace_setup(L, seg, cfg, certs)

    AK_X, AK_Y = f"rho {akX}", f"rho {akY}"
    OX, OY = f"rho {outX}", f"rho {outY}"
    L.append(f"  have hLcx : {LCX} = {point_x(seg, cfg, TOTAL_N)} := seg{seg}_lcx rho")
    L.append(f"  have hLcy : {LCY} = {point_y(seg, cfg, TOTAL_N)} := seg{seg}_lcy rho")
    L.append(f"  have hp' : onCurve (⟨{LCX}, {LCY}⟩ : EdwardsBridge.Point) := by")
    L.append(f"    rw [hLcx, hLcy]")
    L.append("    exact htrace.2")
    L.append(f"  have hLc46 : {LC46} = ({LCX}) + ({LCY}) := seg{seg}_lc46 rho")
    for key in ("x7", "y8", "d9", "outx", "outy", "pre"):
        L.append(f"  unfold Seg{seg}.relationRow{t[key]} at r{t[key]}")
    L.append(f"  unfold Seg{seg}.relationRow{r1805} at r{r1805}")
    L.append(f"  have e7 : rho {i77} = {AK_X} * ({LCY}) := by linear_combination -r{t['x7']}")
    L.append(f"  have e8 : rho {i78} = {AK_Y} * ({LCX}) := by linear_combination -r{t['y8']}")
    L.append(f"  have e9 : rho {i79} = 3021 * rho {i77} * rho {i78} := by linear_combination -r{t['d9']}")
    L.append(f"  have hG : {LC46} = rho {i75} := by linear_combination r{r1805}")
    L.append(f"  have e75 : rho {i75} = {LC46} := hG.symm")
    L.append(f"  have e76 : rho {i76} = rho {i75} * ({AK_X} + {AK_Y}) := by linear_combination -r{t['pre']}")
    L.append(f"  have hakC : onCurve (⟨{AK_X}, {AK_Y}⟩ : EdwardsBridge.Point) := hak")
    L.append(f"  have hadd : addSpec ⟨{AK_X}, {AK_Y}⟩ (⟨{LCX}, {LCY}⟩ : EdwardsBridge.Point) ⟨{OX}, {OY}⟩ := by")
    L.append(f"    apply RvkDeployedRung.deployedTail_addSpec ({AK_X}) ({AK_Y}) ({OX}) ({OY}) _ hakC hp'")
    L.append("    · simp only [EdwardsBridge.d]")
    L.append(f"      rw [e9, e7, e8] at r{t['outx']}")
    L.append(f"      linear_combination r{t['outx']}")
    L.append("    · simp only [EdwardsBridge.d]")
    L.append("      rw [show (EdwardsBridge.a : EdwardsBridge.F) = -1 from by decide]")
    L.append(f"      rw [e9, e7, e8, e76, e75, hLc46] at r{t['outy']}")
    L.append(f"      linear_combination r{t['outy']}")
    L.append(f"  have hstate : seg{seg}RvkAcc rho 251 =")
    L.append(f"      (⟨{LCX}, {LCY}⟩ : EdwardsBridge.Point) := by")
    L.append(f"    change {point_expr(seg, cfg, TOTAL_N)} = _")
    L.append("    rw [hLcx, hLcy]")
    L.append("  have htraceModel : (⟨" + LCX + ", " + LCY + "⟩ : EdwardsBridge.Point) =")
    L.append("      Shieldd.GnarkFormal.ScalarMulBridge.scalarMulFromBits bitsBool 251 0 ⟨0, 1⟩")
    L.append("        (Shieldd.GnarkFormal.RvkFixedBaseConstants.C 0) := by")
    L.append("    rw [← hstate]")
    L.append("    exact htrace.1")
    L.append("  have heq := EdwardsBridge.addSpec_eq")
    L.append(f"    ⟨{AK_X}, {AK_Y}⟩ (⟨{LCX}, {LCY}⟩ : EdwardsBridge.Point)")
    L.append(f"    ⟨{OX}, {OY}⟩ hakC hp' hadd")
    L.append("  have hmodel := Shieldd.GnarkFormal.ScalarMulBridge.scalarMulFromBits_toA")
    L.append(f"    bitsBool (rho {cfg['randomizer']}) 251 0 ⟨0, 1⟩")
    L.append("    (Shieldd.GnarkFormal.RvkFixedBaseConstants.C 0) (by omega)")
    L.append("    (by")
    L.append("      intro i _ hi")
    L.append("      exact Shieldd.GnarkFormal.ScalarMulBridge.toBitsLE_get!_eq_testBit")
    L.append(f"        (rho {cfg['randomizer']}).val hscalarLt i hi)")
    L.append(f"  have hfinal : Shieldd.GnarkFormal.Decaf377Assumptions.Point.mk ({OX}) ({OY}) =")
    L.append(f"      Shieldd.GnarkFormal.ScalarMulBridge.toA (EdwardsBridge.addF ⟨{AK_X}, {AK_Y}⟩")
    L.append("        (Shieldd.GnarkFormal.ScalarMulBridge.scalarMulFromBits bitsBool 251 0 ⟨0, 1⟩")
    L.append("          (Shieldd.GnarkFormal.RvkFixedBaseConstants.C 0))) := by")
    L.append("    rw [← htraceModel, ← heq]")
    L.append("    rfl")
    L.append("  have hspec : Shieldd.GnarkFormal.Decaf377Assumptions.RandomizedVerificationKeySpec")
    L.append(f"      ⟨{AK_X}, {AK_Y}⟩ (rho {cfg['randomizer']}) ⟨{OX}, {OY}⟩ := by")
    L.append("    show Shieldd.GnarkFormal.Decaf377Assumptions.Point.mk _ _ =")
    L.append("      Shieldd.GnarkFormal.Decaf377Assumptions.rvk _ _")
    L.append("    rw [hfinal, Shieldd.GnarkFormal.ScalarMulBridge.toA_addF, hmodel]")
    L.append("    simp only [Shieldd.GnarkFormal.Decaf377Assumptions.rvk,")
    L.append("      Shieldd.GnarkFormal.Decaf377Assumptions.scalarMulLE,")
    L.append("      Shieldd.GnarkFormal.Decaf377Assumptions.generator,")
    L.append("      Shieldd.GnarkFormal.Decaf377Assumptions.identity,")
    L.append("      Shieldd.GnarkFormal.ScalarMulBridge.toA,")
    L.append("      Shieldd.GnarkFormal.RvkFixedBaseConstants.C,")
    L.append("      Shieldd.GnarkFormal.RvkFixedBaseConstants.generator,")
    L.append("      Shieldd.GnarkFormal.RvkBridge.genXNat,")
    L.append("      Shieldd.GnarkFormal.RvkBridge.genYNat]")
    L.append("    rfl")
    L.append("  exact ⟨hspec, RvkDeployedRung.addSpec_onCurve hakC hp' hadd⟩")
    L.extend(module_footer())
    return "\n".join(L) + "\n"


def write_generated(path: Path, contents: str) -> None:
    if path.exists() and path.read_text() == contents:
        return
    path.write_text(contents)


def generate(*, output_contracts: Path = CONTRACTS) -> None:
    output_contracts.mkdir(parents=True, exist_ok=True)
    for seg, cfg in INSTANCES.items():
        certs = [split_cert(seg, cfg, k) for k in range(CONT_START, TOTAL_N + 1)]
        prefix_certs = [prefix_cert(seg, cfg, k) for k in range(1, PREFIX_N + 1)]
        prefix_chunks = chunks(prefix_certs, PREFIX_CHUNK_SIZE)
        module_root = "ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1"
        previous_module = f"{module_root}.Seg{seg}"
        for xy in ("X", "Y"):
            for idx, states in enumerate(acc_state_chunks()):
                name = f"RvkAdapterSeg{seg}Acc{xy}{idx}"
                out = output_contracts / f"{name}.lean"
                write_generated(
                    out,
                    emit_acc_defs_module(seg, cfg, xy, states, previous_module),
                )
                print(f"wrote {out}")
                previous_module = f"{module_root}.{name}"
        for idx, states in enumerate(acc_weighted_chunks()):
            name = f"RvkAdapterSeg{seg}AccWeighted{idx}"
            out = output_contracts / f"{name}.lean"
            write_generated(
                out,
                emit_acc_weighted_module(seg, cfg, states, previous_module),
            )
            print(f"wrote {out}")
            previous_module = f"{module_root}.{name}"
        acc = output_contracts / f"RvkAdapterSeg{seg}Acc.lean"
        write_generated(acc, emit_acc_module(seg, cfg, previous_module))
        print(f"wrote {acc}")
        bits = output_contracts / f"RvkAdapterSeg{seg}Bits.lean"
        write_generated(bits, emit_bits_module(seg, cfg))
        print(f"wrote {bits}")
        for idx, chunk in enumerate(prefix_chunks):
            out = output_contracts / f"RvkAdapterSeg{seg}PrefixLemmas{idx}.lean"
            write_generated(out, emit_prefix_lemma_module(seg, chunk, idx))
            print(f"wrote {out}")
            out = output_contracts / f"RvkAdapterSeg{seg}PrefixSteps{idx}.lean"
            write_generated(out, emit_prefix_step_module(seg, cfg, chunk, idx))
            print(f"wrote {out}")
        for filename, cert, lemma_idx in prefix_leaf_outputs(seg, prefix_chunks):
            out = output_contracts / filename
            write_generated(out, emit_prefix_leaf_module(seg, cfg, cert, lemma_idx))
            print(f"wrote {out}")
        ladder = output_contracts / f"RvkAdapterSeg{seg}Ladder.lean"
        write_generated(ladder, emit_ladder_module(seg, cfg, prefix_chunks))
        print(f"wrote {ladder}")
        lemma_chunks = chunks(certs, SPLIT_LEMMA_CHUNK_SIZE)
        for idx, chunk in enumerate(lemma_chunks):
            out = output_contracts / f"RvkAdapterSeg{seg}Lemmas{idx}.lean"
            write_generated(out, emit_lemma_module(seg, cfg, chunk, idx, include_tail=(idx == len(lemma_chunks) - 1)))
            print(f"wrote {out}")
        chunks_ = chunks(certs, SPLIT_CHUNK_SIZE)
        for idx, chunk in enumerate(chunks_):
            out = output_contracts / f"RvkAdapterSeg{seg}Steps{idx}.lean"
            write_generated(out, emit_step_module(seg, cfg, chunk, idx))
            print(f"wrote {out}")
        for filename, cert, lemma_idx in split_leaf_outputs(seg, certs):
            out = output_contracts / filename
            write_generated(out, emit_split_leaf_module(seg, cfg, cert, lemma_idx))
            print(f"wrote {out}")
        out = output_contracts / f"RvkAdapterSeg{seg}.lean"
        write_generated(out, emit_adapter(seg, cfg, certs, len(chunks_)))
        print(f"wrote {out}")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--adapter-out",
        type=Path,
        default=CONTRACTS,
        help="emit the complete RvkAdapterSeg*.lean family into this directory",
    )
    args = parser.parse_args()
    generate(output_contracts=args.adapter_out)


if __name__ == "__main__":
    main()
