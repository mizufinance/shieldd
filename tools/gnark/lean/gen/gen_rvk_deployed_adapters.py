#!/usr/bin/env python3
"""Generate consolidate2x1 RVK deployed-slice adapters for segments 13 and 31.

The deployed RVK slice has three pieces:

* rungs 1..149: fused fixed-base rows already handled by RvkFixedGenInst{0,1};
* rungs 150..250: split native-add rows plus select rows;
* final native add: ak + fixed-base ladder result.

The generated adapters keep the large selected-delta sums behind plain `def`s.
They unfold those defs only in same-field LC helper lemmas, never at the
Seg.F/EdwardsBridge.F boundary.
"""

from __future__ import annotations

import re
from dataclasses import dataclass
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CONTRACTS = ROOT / "ShielddGnarkFormal/Deployed/Contracts/Consolidate2x1"

GX = "4959445789346820725352484487855828915252512307947624787834978378872129235627"
GYM1 = "6060471950081851567114691557659790004756535011754163002297540472747064943287"
PREFIX_N = 149
TOTAL_N = 250
CONT_START = 150


INSTANCES = {
    13: dict(
        inst="Inst0",
        b0=10571,
        prefix_x1=10825,
        prefix_y1=10826,
        cont_x150=11573,
        cont_y150=11574,
        vbase=247,
        split_row0=997,
        split_lc0=739,
        out=(12380, 12381),
        akX=6,
        akY=7,
        lcx=1448,
        lcy=1447,
        lc46=1446,
        i75=12375,
        i76=12376,
        i77=12377,
        i78=12378,
        i79=12379,
        r1805=1805,
        tail=dict(pre=1806, x7=1807, y8=1808, d9=1809, outx=1810, outy=1811),
    ),
    31: dict(
        inst="Inst1",
        b0=29271,
        prefix_x1=29525,
        prefix_y1=29526,
        cont_x150=30273,
        cont_y150=30274,
        vbase=247,
        split_row0=997,
        split_lc0=739,
        out=(31080, 31081),
        akX=6,
        akY=7,
        lcx=1448,
        lcy=1447,
        lc46=1446,
        i75=31075,
        i76=31076,
        i77=31077,
        i78=31078,
        i79=31079,
        r1805=1805,
        tail=dict(pre=1806, x7=1807, y8=1808, d9=1809, outx=1810, outy=1811),
    ),
}


SEG_SRC: dict[int, str] = {}
FIXED_SRC: dict[str, str] = {}


def seg_src(seg: int) -> str:
    if seg not in SEG_SRC:
        SEG_SRC[seg] = (CONTRACTS / f"Seg{seg}.lean").read_text()
    return SEG_SRC[seg]


def fixed_src(inst: str) -> str:
    if inst not in FIXED_SRC:
        FIXED_SRC[inst] = (ROOT / f"ShielddGnarkFormal/RvkFixedGen{inst}.lean").read_text()
    return FIXED_SRC[inst]


def chunks(items, n):
    return [items[i:i + n] for i in range(0, len(items), n)]


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


def emit_acc_defs(L: list[str], seg: int, xy: str, cfg) -> None:
    wire = xwire if xy == "X" else ywire
    for k in range(1, TOTAL_N + 1):
        name = acc_def_name(seg, xy, k)
        if k == 1:
            rhs = f"rho {wire(cfg, k)}"
        else:
            rhs = f"{acc_def_name(seg, xy, k - 1)} rho + rho {wire(cfg, k)}"
        L.append(f"def {name} (rho : Nat -> Seg{seg}.F) : Seg{seg}.F := {rhs}")
    L.append("")
    for k in range(1, TOTAL_N + 1):
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


def emit_acc_weighted_lemmas(L: list[str], seg: int, cfg) -> None:
    for k in range(1, PREFIX_N + 1):
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
    lc = split_lc(cfg, k)
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

    t13, _ = lc_terms(seg, lc)
    t14l, _ = lc_terms(seg, lc + 1)
    t14r, c14r = lc_terms(seg, lc + 2)
    t15, _ = lc_terms(seg, lc + 3)
    t17, _ = lc_terms(seg, lc + 4)
    tselx, _ = lc_terms(seg, lc + 5)
    tsely, csel_y = lc_terms(seg, lc + 6)

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
        k=k, row=row, lc=lc, bit=bit, i67=i67, i68=i68, i69=i69, outx=outx,
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
        emit_lc_helper(L, seg, f"seg{seg}_lc{c.lc}", c.lc, c.f13, prev, prev)
        emit_lc_helper(L, seg, f"seg{seg}_lc{c.lc + 1}", c.lc + 1, c.f14l, prev, None)
        emit_lc_helper(L, seg, f"seg{seg}_lc{c.lc + 2}", c.lc + 2, c.f14r, None, prev)
        emit_lc_helper(L, seg, f"seg{seg}_lc{c.lc + 3}", c.lc + 3, c.f15, prev, prev)
        emit_lc_helper(L, seg, f"seg{seg}_lc{c.lc + 4}", c.lc + 4, c.f17, prev, prev)
        emit_lc_helper(L, seg, f"seg{seg}_lc{c.lc + 5}", c.lc + 5, c.fselx, prev, None)
        emit_lc_helper(L, seg, f"seg{seg}_lc{c.lc + 6}", c.lc + 6, c.fsely, None, prev)


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


def emit_prefix_step(L: list[str], seg: int, cfg, KNS: str, cert: PrefixCert) -> None:
    k = cert.k
    prev = k - 1
    prev_point = f"{KNS}.acc1 (rho {cfg['b0']} : Seg{seg}.F)" if k == 1 else point_expr(seg, cfg, prev)
    prev_proof = "hpSeed" if k == 1 else f"hp{prev}"
    rung = f"{KNS}.rung1" if k == 1 else f"{KNS}.rung{k}_wide"
    L.append(f"  have hbrow{k} : (1*(rho {cert.bit}))*(1 + (-1)*(rho {cert.bit})) = 0 := by")
    L.append(f"    simpa [Seg{seg}.relationRow{k}] using r{k}")
    if k > 1:
        L.append(f"  have hacc{k} : onCurve ({KNS}.acc{k} (rho {cfg['b0']} : Seg{seg}.F)")
        L.append(f"      ({acc_atom(seg, 'X', prev)} : Seg{seg}.F) ({acc_atom(seg, 'Y', prev)} : Seg{seg}.F)) := by")
        L.append(f"    simpa [{KNS}.acc{k}] using hp{prev}")
    hacc = "hpSeed" if k == 1 else f"hacc{k}"
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
        hacc,
    ])
    L.append(f"      {rung} " + " ".join(args))
    for name in PREFIX_HYPOTHESES:
        row = cert.rows[name]
        L.append(f"        (by simpa using seg{seg}_prefix_{k}_{name} rho r{row})")
    L.append(f"        hbrow{k}")
    L.append(f"  obtain ⟨b{k}, hb{k}⟩ := {KNS}.boolify (rho {cert.bit}) hbrow{k}")
    L.append(f"  have hrb{k} : RvkFixedBaseLadder.FixedStepRel {k} (toZMod b{k})")
    L.append(f"      ({prev_point}) {point_expr(seg, cfg, k)} := by")
    L.append(f"    rw [← hb{k}]")
    L.append(f"    exact hr{k}")
    L.append(f"  have hp{k} : onCurve {point_expr(seg, cfg, k)} :=")
    L.append(f"    (RvkFixedBaseLadder.fixedStep_semantic {k} b{k} _ _ {prev_proof} hrb{k}).2")


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
    L.append(f"    have hLc := seg{seg}_lc{c.lc} rho")
    L.append(f"    rw [hLc] at r{row}")
    L.append(f"    linear_combination -r{row}")
    L.append(f"  have h14_{k} : ({c.f14l}) * ({c.f14r}) = rho {c.i68} := by")
    L.append(f"    have hL := seg{seg}_lc{c.lc + 1} rho")
    L.append(f"    have hR := seg{seg}_lc{c.lc + 2} rho")
    L.append(f"    rw [hL, hR] at r{row + 1}")
    L.append(f"    linear_combination r{row + 1}")
    L.append(f"  have h15_{k} : {c.f15} = rho {c.i69} := by")
    L.append(f"    have hLc := seg{seg}_lc{c.lc + 3} rho")
    L.append(f"    rw [hLc] at r{row + 2}")
    L.append(f"    linear_combination r{row + 2}")
    L.append(f"  have h16_{k} : rho {c.outx} * (1 + rho {c.i68}) = rho {c.i69} := by")
    L.append(f"    linear_combination r{row + 3}")
    L.append(f"  have h17_{k} : {c.f17} = rho {c.i71} := by")
    L.append(f"    have hLc := seg{seg}_lc{c.lc + 4} rho")
    L.append(f"    rw [hLc] at r{row + 4}")
    L.append(f"    linear_combination r{row + 4}")
    L.append(f"  have h18_{k} : rho {c.outy} * (1 + (-1)*rho {c.i68}) = rho {c.i71} + {c.ev}*rho {c.i67} := by")
    L.append(f"    linear_combination r{row + 5}")
    L.append(f"  have hSelX_{k} : (1*rho {c.bit}) * ({c.fselx}) = rho {c.sdx} := by")
    L.append(f"    have hLc := seg{seg}_lc{c.lc + 5} rho")
    L.append(f"    rw [hLc] at r{row + 6}")
    L.append(f"    linear_combination r{row + 6}")
    L.append(f"  have hSelY_{k} : (1*rho {c.bit}) * ({c.fsely}) = rho {c.sdy} := by")
    L.append(f"    have hLc := seg{seg}_lc{c.lc + 6} rho")
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
    L.append(f"      (rho {c.sdx} : Seg{seg}.F) (rho {c.sdy} : Seg{seg}.F) hp{prev}")
    L.append(f"      (by rw [C_eq_L{k}]; simp only [L{k}])")
    for _ in range(9):
        L.append("      (by decide)")
    L.append(f"      h13_{k} h14_{k} h15_{k} h16_{k} h17_{k} h18_{k} hSelX_{k} hSelY_{k} hbrow{k}")
    L.append(f"  obtain ⟨b{k}, hb{k}⟩ := {KNS}.boolify (rho {c.bit}) hbrow{k}")
    L.append(f"  have hrb{k} : RvkFixedBaseLadder.FixedStepRel {k} (toZMod b{k}) {point_prev} {point_cur} := by")
    L.append(f"    rw [← hb{k}]")
    L.append(f"    exact hr{k}")
    L.append(f"  have hp{k} : onCurve {point_cur} :=")
    L.append(f"    (RvkFixedBaseLadder.fixedStep_semantic {k} b{k} _ _ hp{prev} hrb{k}).2")


def module_header(seg: int, with_opens: bool = True) -> list[str]:
    lines = [
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 20000000",
        "set_option linter.unusedVariables false",
        "",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
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
    return ["", "end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1", ""]


def emit_acc_module(seg: int, cfg) -> str:
    L: list[str] = [
        f"import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg{seg}",
        "",
        *module_header(seg, with_opens=False),
    ]
    emit_acc_defs(L, seg, "X", cfg)
    emit_acc_defs(L, seg, "Y", cfg)
    emit_acc_weighted_lemmas(L, seg, cfg)
    L.extend(module_footer())
    return "\n".join(L)


def emit_lemma_module(seg: int, cfg, certs: list[SplitCert], idx: int, include_tail: bool) -> str:
    L: list[str] = [
        f"import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg{seg}Acc",
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
        f"import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg{seg}Acc",
        "import Mathlib.Tactic",
        "",
        *module_header(seg, with_opens=False),
    ]
    for cert in certs:
        for name in PREFIX_HYPOTHESES:
            emit_prefix_row_lemma(L, seg, cert, name)
    L.extend(module_footer())
    return "\n".join(L) + "\n"


def emit_prefix_step_module(seg: int, cfg, certs: list[PrefixCert], idx: int) -> str:
    inst = cfg["inst"]
    KNS = f"Shieldd.GnarkFormal.RvkFixedGen{inst}"
    first = certs[0].k
    last = certs[-1].k
    include_seed = first == 1
    L: list[str] = [
        f"import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg{seg}PrefixLemmas{idx}",
        f"import ShielddGnarkFormal.RvkFixedGen{inst}",
        "import ShielddGnarkFormal.RvkFixedBaseLadder",
        "import ShielddGnarkFormal.Deployed.PrimeOrderAssumption",
        "",
        *module_header(seg),
    ]
    L.append(f"theorem seg{seg}_prefix_steps{idx} (rho : Nat -> Seg{seg}.F)")
    if not include_seed:
        L.append(f"    (hp{first - 1} : onCurve {point_expr(seg, cfg, first - 1)})")
    for row in prefix_step_rows(certs, include_seed):
        L.append(f"    (r{row} : Seg{seg}.relationRow{row} rho)")
    L.append(f"    : onCurve {point_expr(seg, cfg, last)} := by")
    if include_seed:
        b0 = cfg["b0"]
        L.append(f"  have hbrow0 : (1*(rho {b0}))*(1 + (-1)*(rho {b0})) = 0 := by")
        L.append(f"    simpa [Seg{seg}.relationRow0] using r0")
        L.append(f"  have hseed : (rho {b0}) * (rho {b0}) = rho {b0} := by")
        L.append("    linear_combination -hbrow0")
        L.append(f"  have hpSeed : onCurve ({KNS}.acc1 (rho {b0} : Seg{seg}.F)) :=")
        L.append(f"    {KNS}.seed_onCurve (rho {b0} : Seg{seg}.F) (by simpa using hseed)")
    for cert in certs:
        emit_prefix_step(L, seg, cfg, KNS, cert)
    L.append(f"  exact hp{last}")
    L.extend(module_footer())
    return "\n".join(L) + "\n"


def step_rows_for(certs: list[SplitCert]) -> list[int]:
    rows: list[int] = []
    for c in certs:
        rows.append(c.k)
        rows.extend(range(c.row, c.row + 8))
    return rows


def emit_step_module(seg: int, cfg, certs: list[SplitCert], idx: int) -> str:
    inst = cfg["inst"]
    KNS = f"Shieldd.GnarkFormal.RvkFixedGen{inst}"
    prev = certs[0].k - 1
    last = certs[-1].k
    L: list[str] = [
        f"import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg{seg}",
        f"import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg{seg}Acc",
        f"import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg{seg}Lemmas{idx}",
        f"import ShielddGnarkFormal.RvkFixedGen{inst}",
        "import ShielddGnarkFormal.RvkFixedSplitRung",
        "import ShielddGnarkFormal.RvkFixedBaseLiteral",
        "import ShielddGnarkFormal.RvkFixedBaseLadder",
        "import ShielddGnarkFormal.Deployed.PrimeOrderAssumption",
        "",
        *module_header(seg),
    ]
    L.append(f"theorem seg{seg}_steps{idx} (rho : Nat -> Seg{seg}.F)")
    L.append(f"    (hp{prev} : onCurve {point_expr(seg, cfg, prev)})")
    for row in step_rows_for(certs):
        L.append(f"    (r{row} : Seg{seg}.relationRow{row} rho)")
    L.append(f"    : onCurve {point_expr(seg, cfg, last)} := by")
    for cert in certs:
        emit_split_step(L, seg, cfg, KNS, cert)
    L.append(f"  exact hp{last}")
    L.extend(module_footer())
    return "\n".join(L) + "\n"


def emit_ladder_module(seg: int, cfg, prefix_chunks: list[list[PrefixCert]]) -> str:
    L: list[str] = [
        f"import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg{seg}",
        f"import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg{seg}Acc",
        *[
            f"import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg{seg}PrefixSteps{i}"
            for i in range(len(prefix_chunks))
        ],
        "",
        *module_header(seg),
    ]
    rows = prefix_ladder_rows(cfg)
    L.append(f"theorem seg{seg}_ladder_onCurve (rho : Nat -> Seg{seg}.F)")
    for row in rows:
        L.append(f"    (r{row} : Seg{seg}.relationRow{row} rho)")
    L.append(f"    : onCurve {point_expr(seg, cfg, PREFIX_N)} := by")
    for idx, certs in enumerate(prefix_chunks):
        first = certs[0].k
        last = certs[-1].k
        L.append(f"  have hp{last} : onCurve {point_expr(seg, cfg, last)} :=")
        if first == 1:
            L.append(f"    seg{seg}_prefix_steps{idx} rho")
        else:
            L.append(f"    seg{seg}_prefix_steps{idx} rho hp{first - 1}")
        for row_chunk in chunks([f"r{row}" for row in prefix_step_rows(certs, first == 1)], 10):
            L.append("      " + " ".join(row_chunk))
    L.append(f"  exact hp{PREFIX_N}")
    L.extend(module_footer())
    return "\n".join(L) + "\n"


def emit_adapter(seg: int, cfg, certs: list[SplitCert], lemma_count: int) -> str:
    inst = cfg["inst"]
    KNS = f"Shieldd.GnarkFormal.RvkFixedGen{inst}"
    parts = parse_relation_parts(seg)
    keep_rows = set(prefix_ladder_rows(cfg)) | set(split_rows(cfg)) | tail_rows(cfg)

    L: list[str] = [
        f"import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg{seg}",
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Rvk",
        f"import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg{seg}Acc",
        f"import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg{seg}Ladder",
        *[
            f"import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg{seg}Lemmas{i}"
            for i in range(lemma_count)
        ],
        *[
            f"import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg{seg}Steps{i}"
            for i in range(lemma_count)
        ],
        f"import ShielddGnarkFormal.RvkFixedGen{inst}",
        "import ShielddGnarkFormal.RvkFixedSplitRung",
        "import ShielddGnarkFormal.RvkFixedBaseLiteral",
        "import ShielddGnarkFormal.RvkFixedBaseLadder",
        "import ShielddGnarkFormal.RvkDeployedRung",
        "import ShielddGnarkFormal.Deployed.PrimeOrderAssumption",
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
    ])
    emit_unpack(L, seg, parts, keep_rows)
    L.append(f"  have hp{PREFIX_N} : onCurve {point_expr(seg, cfg, PREFIX_N)} :=")
    L.append(f"    seg{seg}_ladder_onCurve rho")
    for c in chunks([f"r{row}" for row in prefix_ladder_rows(cfg)], 10):
        L.append("      " + " ".join(c))
    for idx, chunk in enumerate(chunks(certs, 10)):
        prev = chunk[0].k - 1
        last = chunk[-1].k
        L.append(f"  have hp{last} : onCurve {point_expr(seg, cfg, last)} :=")
        L.append(f"    seg{seg}_steps{idx} rho hp{prev}")
        for c in chunks([f"r{row}" for row in step_rows_for(chunk)], 9):
            L.append("      " + " ".join(c))

    AK_X, AK_Y = f"rho {akX}", f"rho {akY}"
    OX, OY = f"rho {outX}", f"rho {outY}"
    L.append(f"  have hLcx : {LCX} = {point_x(seg, cfg, TOTAL_N)} := seg{seg}_lcx rho")
    L.append(f"  have hLcy : {LCY} = {point_y(seg, cfg, TOTAL_N)} := seg{seg}_lcy rho")
    L.append(f"  have hp' : onCurve (⟨{LCX}, {LCY}⟩ : EdwardsBridge.Point) := by")
    L.append(f"    rw [hLcx, hLcy]; exact hp{TOTAL_N}")
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
    L.append(f"  exact RvkDeployedRung.addSpec_onCurve hakC hp' hadd")
    L.extend(module_footer())
    return "\n".join(L) + "\n"


def main():
    for seg, cfg in INSTANCES.items():
        certs = [split_cert(seg, cfg, k) for k in range(CONT_START, TOTAL_N + 1)]
        prefix_certs = [prefix_cert(seg, cfg, k) for k in range(1, PREFIX_N + 1)]
        prefix_chunks = chunks(prefix_certs, 10)
        acc = CONTRACTS / f"RvkAdapterSeg{seg}Acc.lean"
        acc.write_text(emit_acc_module(seg, cfg))
        print(f"wrote {acc}")
        for idx, chunk in enumerate(prefix_chunks):
            out = CONTRACTS / f"RvkAdapterSeg{seg}PrefixLemmas{idx}.lean"
            out.write_text(emit_prefix_lemma_module(seg, chunk, idx))
            print(f"wrote {out}")
            out = CONTRACTS / f"RvkAdapterSeg{seg}PrefixSteps{idx}.lean"
            out.write_text(emit_prefix_step_module(seg, cfg, chunk, idx))
            print(f"wrote {out}")
        ladder = CONTRACTS / f"RvkAdapterSeg{seg}Ladder.lean"
        ladder.write_text(emit_ladder_module(seg, cfg, prefix_chunks))
        print(f"wrote {ladder}")
        chunk_size = 10
        chunks_ = chunks(certs, chunk_size)
        for idx, chunk in enumerate(chunks_):
            out = CONTRACTS / f"RvkAdapterSeg{seg}Lemmas{idx}.lean"
            out.write_text(emit_lemma_module(seg, cfg, chunk, idx, include_tail=(idx == len(chunks_) - 1)))
            print(f"wrote {out}")
            out = CONTRACTS / f"RvkAdapterSeg{seg}Steps{idx}.lean"
            out.write_text(emit_step_module(seg, cfg, chunk, idx))
            print(f"wrote {out}")
        out = CONTRACTS / f"RvkAdapterSeg{seg}.lean"
        out.write_text(emit_adapter(seg, cfg, certs, len(chunks_)))
        print(f"wrote {out}")


if __name__ == "__main__":
    main()
