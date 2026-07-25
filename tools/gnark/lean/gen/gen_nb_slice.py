#!/usr/bin/env python3
"""Generate the deployed conservation net-balance adapter for consolidate2x1 seg46.

Sibling of `gen_dtk_slice.py` (see its module docstring for the StructuredLC
contract; the same rules apply verbatim). Seg46 is one instance (NB-1 shape):
three 128-bit amount range blocks (ZK-ASSUME-AMOUNT-RANGE), one linear
conservation row `in0 + in1 = out0`, and one fixed-base blinding ladder
(rvk rung shape, 251 bits) whose final accumulator IS the commitment output.

Bridge target is `ConservationNetBalanceCommitmentBridge.
decaf377_conservationNetBalanceCommitment_sound`.

Recovery layer below is self-checking (fail-closed asserts against the raw
`.sr1cs` rows).
"""

from __future__ import annotations

import hashlib
import json
import re
import os
from dataclasses import dataclass
from pathlib import Path
from types import SimpleNamespace

import gen_dtk_slice as dtk

ROOT = Path(__file__).resolve().parents[1]
FORMAL = ROOT / "ShielddGnarkFormal"
CONTRACTS = FORMAL / "Deployed/Contracts/Consolidate2x1"
CONTRACTS_SOURCE = Path(os.environ.get("NB_CONTRACTS_SOURCE", CONTRACTS))
EXTRACTED_DEPLOYED = FORMAL / "Extracted/Deployed"
SR1CS = ROOT.parent / "artifacts/consolidate2x1/consolidate2x1.sr1cs"

ORDER = 8444461749428370424248824938781546531375899335154063827935233455917409239041
NB_GX = 4661681602708190761543544705274244814260880986867766715334030151044279151219
NB_GYM1 = 4337336842509898676347982752646772244181661588533917621717979456142867120377
SEG_START, ROW_COUNT = 32840, 2193
OUT_X_WIRE, OUT_Y_WIRE = 33463, 33464
CONSERVATION_ROW = 387
IN0_WIRE, IN1_WIRE, OUT0_WIRE = 15, 105, 193

Lc = dict[int, int]


def sr1cs_rows() -> list[tuple[Lc, Lc, Lc]]:
    pat = re.compile(r"\(constraint \[(.*?)\] \[(.*?)\] \[(.*?)\]\)$")
    rows: list[tuple[Lc, Lc, Lc]] = []
    index = 0
    for line in SR1CS.read_text().splitlines():
        line = line.strip()
        if not line.startswith("(constraint "):
            continue
        if SEG_START <= index < SEG_START + ROW_COUNT:
            match = pat.match(line)
            if match is None:
                raise ValueError(f"unparseable constraint at sr1cs row {index}")
            sides = []
            for group in match.groups():
                lc: Lc = {}
                for coeff, wire in re.findall(r"\(([-0-9]+) (\d+)\)", group):
                    wire_index = int(wire)
                    value = (lc.get(wire_index, 0) + int(coeff)) % ORDER
                    if value:
                        lc[wire_index] = value
                    else:
                        lc.pop(wire_index, None)
                sides.append(lc)
            rows.append(tuple(sides))
        index += 1
    if len(rows) != ROW_COUNT:
        raise ValueError(f"expected {ROW_COUNT} seg46 rows, got {len(rows)}")
    return rows


def singleton_wire(side: Lc) -> int:
    if len(side) != 1:
        raise ValueError(f"expected singleton wire side, got {side}")
    wire, coeff = next(iter(side.items()))
    if wire == 0 or coeff != 1:
        raise ValueError(f"expected coefficient-one witness, got {side}")
    return wire


# Blinding fixed-base ladder (rvk shape). Seed term: bits[0] wire folded into
# every accumulator row (same encoding as rvk — see memory rvk-fixedbase-bit0).
# Amount range blocks (ZK-ASSUME-AMOUNT-RANGE): label, bit_base, booleanity
# row span (inclusive), recomposition row, amount wire.
AMOUNT_BLOCKS = (
    ("In0", 31277, (0, 127), 128, IN0_WIRE),
    ("In1", 31405, (129, 256), 257, IN1_WIRE),
    ("Out0", 31533, (258, 385), 386, OUT0_WIRE),
)

# Blinding fixed-base ladder (rvk shape). Seed term: bits[0] wire folded into
# every accumulator row (same encoding as rvk — see memory rvk-fixedbase-bit0).
BLIND_BIT_BASE = 31661          # booleanity wires 31661 .. 31911 (251 bits)
BLIND_BINARY_ROWS = (388, 638)
BLIND_COPY_ROW = 639            # 1*LcN = 1*rho 5
BLIND_WIRE = 5
# Accumulator wire pairs: 149 at stride 5, then 101 at stride 8 (250 rungs;
# rung k consumes bit wire BLIND_BIT_BASE+1+k).
BLIND_ACCS = tuple(
    [(31915 + 5 * k, 31916 + 5 * k) for k in range(149)]
    + [(32663 + 8 * j, 32664 + 8 * j) for j in range(101)]
)


@dataclass(frozen=True)
class BlindRung:
    """One fixed-base rung. 5-row shape (early) or 8-row shape (late; three
    extra rows materialize the wide accumulator sums into helper wires)."""

    index: int              # 0-based over the 250 accumulator rungs
    bit: int                # BLIND_BIT_BASE + 1 + index
    acc_x: int
    acc_y: int
    acc_x_row: int
    acc_y_row: int
    block_rows: tuple[int, ...]   # all rows of this rung, in order
    materialized: bool      # True for the 8-row shape


@dataclass(frozen=True)
class BlindSplitCert:
    k: int
    bit: int
    rows: tuple[int, ...]
    i67: int
    i68: int
    i69: int
    out_x: int
    i71: int
    out_y: int
    sdx: int
    sdy: int
    ak_x: int
    ak_y: int
    ev: int
    kv: int
    la: int
    lb: int
    rb: int
    cc: int
    px: int
    py: int
    qb0: int
    neg_gx: int
    neg_gym1: int


def blind_rungs(rows: list[tuple[Lc, Lc, Lc]]) -> tuple[BlindRung, ...]:
    rungs: list[BlindRung] = []
    prev_end = BLIND_COPY_ROW
    for index, (acc_x, acc_y) in enumerate(BLIND_ACCS):
        acc_x_rows = [r for r in range(BLIND_COPY_ROW + 1, ROW_COUNT) if rows[r][2] == {acc_x: 1}]
        acc_y_rows = [r for r in range(BLIND_COPY_ROW + 1, ROW_COUNT) if rows[r][2] == {acc_y: 1}]
        if len(acc_x_rows) != 1 or len(acc_y_rows) != 1:
            raise ValueError(f"blind rung {index}: acc rows {acc_x_rows}/{acc_y_rows}")
        acc_x_row, acc_y_row = acc_x_rows[0], acc_y_rows[0]
        if acc_y_row != acc_x_row + 1:
            raise ValueError(f"blind rung {index}: non-adjacent acc rows")
        block = tuple(range(prev_end + 1, acc_y_row + 1))
        if len(block) not in (5, 8):
            raise ValueError(f"blind rung {index}: block of {len(block)} rows")
        bit = BLIND_BIT_BASE + 1 + index
        if not any(bit in rows[r][0] or bit in rows[r][1] for r in block):
            raise ValueError(f"blind rung {index}: bit wire {bit} absent from block")
        rungs.append(BlindRung(
            index, bit, acc_x, acc_y, acc_x_row, acc_y_row, block, len(block) == 8,
        ))
        prev_end = acc_y_row
    if prev_end != ROW_COUNT - 1:
        raise ValueError(
            f"blinding ladder ended at row {prev_end}, expected {ROW_COUNT - 1}")
    return tuple(rungs)


def lc_coeff(side: Lc, wire: int) -> int:
    return side.get(wire, 0)


def common_lc_coeff(side: Lc, wires: list[int], label: str) -> int:
    values = {lc_coeff(side, wire) for wire in wires}
    if len(values) != 1:
        raise ValueError(f"{label}: non-uniform coefficients {sorted(values)[:5]}")
    return values.pop()


def blind_split_cert(
    rows: list[tuple[Lc, Lc, Lc]], rungs: tuple[BlindRung, ...], k: int,
) -> BlindSplitCert:
    """Recover one late eight-row fixed-base rung without assuming unique terms."""
    if not 150 <= k <= 250:
        raise ValueError(f"split rung outside 150..250: {k}")
    rung = rungs[k - 1]
    if not rung.materialized or len(rung.block_rows) != 8:
        raise ValueError(f"rung {k} is not the split eight-row shape")
    r13, r14, r15, r16, r17, r18, rsel_x, rsel_y = rung.block_rows
    i67 = singleton_wire(rows[r13][2])
    i68 = singleton_wire(rows[r14][2])
    i69 = singleton_wire(rows[r15][2])
    out_x = singleton_wire(rows[r16][0])
    i71 = singleton_wire(rows[r17][2])
    out_y = singleton_wire(rows[r18][0])
    sdx = singleton_wire(rows[rsel_x][2])
    sdy = singleton_wire(rows[rsel_y][2])
    if (sdx, sdy) != (rung.acc_x, rung.acc_y):
        raise ValueError(f"rung {k}: selected deltas do not match recovered accumulators")
    x_prev = [item.acc_x for item in rungs[:k - 1]]
    y_prev = [item.acc_y for item in rungs[:k - 1]]
    t13 = rows[r13][1]
    t14_l, t14_r = rows[r14][0], rows[r14][1]
    t15 = rows[r15][1]
    t17 = rows[r17][1]
    tsel_x, tsel_y = rows[rsel_x][1], rows[rsel_y][1]
    if rows[r13][0] != {0: 1} or rows[r15][0] != {0: 1} or rows[r17][0] != {0: 1}:
        raise ValueError(f"rung {k}: expected constant-one materialization rows")
    if common_lc_coeff(t13, x_prev + y_prev, f"rung {k} h13 deltas") != 1:
        raise ValueError(f"rung {k}: h13 delta coefficient is not one")
    if lc_coeff(t13, 0) != 1:
        raise ValueError(f"rung {k}: h13 constant is not one")
    ak_x, ak_y = blind_gen_doubles()[k]
    cert = BlindSplitCert(
        k, rung.bit, rung.block_rows, i67, i68, i69, out_x, i71, out_y,
        sdx, sdy, ak_x, ak_y,
        lc_coeff(rows[r18][2], i67),
        lc_coeff(t13, BLIND_BIT_BASE),
        common_lc_coeff(t14_l, x_prev, f"rung {k} la"),
        lc_coeff(t14_l, BLIND_BIT_BASE),
        lc_coeff(t14_r, BLIND_BIT_BASE),
        lc_coeff(t15, BLIND_BIT_BASE),
        common_lc_coeff(t17, x_prev, f"rung {k} px"),
        common_lc_coeff(t17, y_prev, f"rung {k} py"),
        lc_coeff(t17, BLIND_BIT_BASE),
        lc_coeff(tsel_x, BLIND_BIT_BASE),
        lc_coeff(tsel_y, BLIND_BIT_BASE),
    )
    if lc_coeff(t14_r, 0) != cert.ak_x:
        raise ValueError(f"rung {k}: h14 constant does not match Cb.x")
    if common_lc_coeff(t14_r, y_prev, f"rung {k} h14 y") != cert.ak_x:
        raise ValueError(f"rung {k}: h14 y coefficient does not match Cb.x")
    if common_lc_coeff(t15, x_prev, f"rung {k} h15 x") != cert.ak_y:
        raise ValueError(f"rung {k}: h15 x coefficient does not match Cb.y")
    if common_lc_coeff(t15, y_prev, f"rung {k} h15 y") != cert.ak_x:
        raise ValueError(f"rung {k}: h15 y coefficient does not match Cb.x")
    if lc_coeff(t15, 0) != cert.ak_x or lc_coeff(t17, 0) != cert.py:
        raise ValueError(f"rung {k}: split constants do not match recovered point")
    if common_lc_coeff(tsel_x, x_prev, f"rung {k} select x") != ORDER - 1:
        raise ValueError(f"rung {k}: select-x accumulator coefficient is not -1")
    if common_lc_coeff(tsel_y, y_prev, f"rung {k} select y") != ORDER - 1:
        raise ValueError(f"rung {k}: select-y accumulator coefficient is not -1")
    return cert


def blind_gen_doubles() -> list[tuple[int, int]]:
    """`Lb i = 2^i * blindGen` for i = 0..250 (gnark doubleF over GF(ORDER))."""
    x = 4661681602708190761543544705274244814260880986867766715334030151044279151219
    y = 4337336842509898676347982752646772244181661588533917621717979456142867120378
    pts = [(x, y)]
    for _ in range(250):
        v, w = x * x % ORDER, y * y % ORDER
        x = 2 * x * y * pow(w - v, -1, ORDER) % ORDER
        y = (w + v) * pow(2 - (w - v), -1, ORDER) % ORDER
        pts.append((x, y))
    return pts


A_LIT = ORDER - 1


def emit_fixed_base_literal(rows: list[tuple[Lc, Lc, Lc]]) -> str:
    """Emit NbFixedBaseLiteral.lean: blindGen-double literals + kernel-decide
    doubling chain binding `Deployed.NetBalance.Cb` (mirror of
    RvkFixedBaseLiteral; same local names so the Rust rung emitter only swaps
    namespaces/constants)."""
    pts = blind_gen_doubles()
    # Fail-closed seed check: the b0 seed-fold coefficients in the first
    # blinding rung's acc rows must be -Lb0.x and -(Lb0.y - 1).
    acc_x0, acc_y0 = BLIND_ACCS[0]
    acc_x_row = next(r for r in range(BLIND_COPY_ROW + 1, ROW_COUNT)
                     if rows[r][2] == {acc_x0: 1})
    seed_x_coeffs = {side.get(BLIND_BIT_BASE) for side in rows[acc_x_row]}
    seed_y_coeffs = {side.get(BLIND_BIT_BASE) for side in rows[acc_x_row + 1]}
    if (ORDER - pts[0][0]) not in seed_x_coeffs:
        raise ValueError("blindGen.x seed coefficient absent from rung-0 acc-x row")
    if (ORDER - (pts[0][1] - 1)) not in seed_y_coeffs:
        raise ValueError("blindGen.y seed coefficient absent from rung-0 acc-y row")
    out = [
        "import ShielddGnarkFormal.Deployed.NetBalance.Ladder",
        "import ShielddGnarkFormal.RvkDeployedRung",
        "",
        "/-! # Literal binding for the fixed-base blinding constants (generated, i = 0..250)",
        "",
        "`L i` is the numeral point `2^i * blindGen` for the seg46 net-balance blinding",
        "ladder; `C_eq_L i` binds `Deployed.NetBalance.Cb` to these literals via kernel",
        "`decide` on the two `doubleSpec` equations + `doubleSpec_eq`. Mirror of",
        "`RvkFixedBaseLiteral` (see its docstring); no `native_decide`.",
        "Generated by gen/gen_nb_slice.py — do not edit. -/",
        "",
        "namespace Shieldd.GnarkFormal.NbFixedBaseLiteral",
        "",
        "open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)",
        "open Shieldd.GnarkFormal.EdwardsBridge (Point onCurve doubleF doubleSpec)",
        "open Shieldd.GnarkFormal.Deployed.NetBalance (Cb Cb_succ Cb_onCurve blindGen)",
        "",
        "set_option maxRecDepth 100000",
        "",
        "/-- `L i = 2^i * blindGen` numeral coordinates, one def per index (i = 0..250). -/",
    ]
    for i, (x, y) in enumerate(pts):
        out.append(f"def L{i} : Point := ⟨{x}, {y}⟩")
    out.append("")
    for i in range(250):
        lo, hi = f"L{i}", f"L{i + 1}"
        den = f"(({lo}).y*({lo}).y + ({lo}).x*({lo}).x*{A_LIT})"
        out.append(
            f"theorem dblX_{i} : ({hi}).x * {den} = 2*(({lo}).x*({lo}).y) := by decide"
        )
        out.append(
            f"theorem dblY_{i} : ({hi}).y * (2 - {den}) = ({lo}).y*({lo}).y"
            f" - ({lo}).x*({lo}).x*{A_LIT} := by decide"
        )
    out += [
        "",
        "section Binding",
        "",
        "open Shieldd.GnarkFormal.EdwardsBridge (doubleSpec_eq)",
        "open Shieldd.GnarkFormal.RvkDeployedRung (double_den_x_ne double_den_y_ne)",
        "",
        "variable [Fact (Nat.Prime Order)]",
        "",
        "instance : Fact (Nat.Prime Extracted.DecafEdwardsDouble.Order) := ‹_›",
        "instance : Fact (Nat.Prime Extracted.DecafEdwardsNeg.Order) := ‹_›",
        "",
        "theorem C_eq_L0 : Cb 0 = L0 := rfl",
    ]
    for i in range(250):
        out += [
            f"theorem C_eq_L{i + 1} : Cb {i + 1} = L{i + 1} := by",
            f"  have hoc : onCurve L{i} := C_eq_L{i} ▸ Cb_onCurve {i}",
            f"  have hds : doubleSpec L{i} L{i + 1} := ⟨Or.inl ⟨double_den_x_ne L{i} hoc,"
            f" dblX_{i}⟩, Or.inl ⟨double_den_y_ne L{i} hoc, dblY_{i}⟩⟩",
            f"  calc Cb {i + 1} = doubleF (Cb {i}) := Cb_succ {i}",
            f"    _ = doubleF L{i} := by rw [C_eq_L{i}]",
            f"    _ = L{i + 1} := (doubleSpec_eq L{i} L{i + 1} hoc hds).symm",
        ]
    out += ["", "end Binding", "", "end Shieldd.GnarkFormal.NbFixedBaseLiteral", ""]
    return "\n".join(out)


def emit_base() -> str:
    """Shared bit-vector seating and the deployed prime instance."""
    out = [
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg46",
        "import ShielddGnarkFormal.Deployed.PrimeOrderAssumption",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 20000000",
        "",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
        "instance seg46NbFactPrime : Fact (Nat.Prime Seg46.Order) :=",
        "  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩",
        "",
    ]
    bit_vectors = [
        *[(f"seg46{label}Bits", bit_base, 128, "Seg46.F")
          for label, bit_base, _, _, _ in AMOUNT_BLOCKS],
        ("seg46BlindBits", BLIND_BIT_BASE, 251, "Seg46.F"),
    ]
    for name, base, width, field in bit_vectors:
        out += [
            f"def {name} (rho : Nat -> Seg46.F) : List.Vector {field} {width} :=",
            f"  List.Vector.ofFn (fun i : Fin {width} => rho ({base} + i.val))",
            "",
            f"theorem {name}_get (rho : Nat -> Seg46.F) (i : Nat) (hi : i < {width}) :",
            f"    ({name} rho)[i]! = rho ({base} + i) := by",
            "  rw [getElem!_pos _ i (by simpa using hi)]",
            "  conv_lhs => rw [List.Vector.getElem_def]",
            f"  simp only [{name}, List.Vector.toList_ofFn, List.getElem_ofFn]",
            "",
        ]
    out += ["end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1", ""]
    return "\n".join(out)


def configure_contract_helpers() -> SimpleNamespace:
    dtk.SOURCE_CONTRACTS = CONTRACTS_SOURCE
    dtk.ROW_COUNT = ROW_COUNT
    return SimpleNamespace(seg=46)


BLIND_CHUNK_SIZE = 10


def blind_delta_name(axis: str, index: int) -> str:
    return f"seg46BlindDelta{axis}{index}"


def blind_chunks(
    rungs: tuple[BlindRung, ...],
) -> list[tuple[BlindRung, ...]]:
    return [
        rungs[index:index + BLIND_CHUNK_SIZE]
        for index in range(0, len(rungs), BLIND_CHUNK_SIZE)
    ]


def emit_blind_defs_module(rungs: tuple[BlindRung, ...]) -> str:
    xs = [rung.acc_x for rung in rungs]
    ys = [rung.acc_y for rung in rungs]
    lines = [
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg46Base",
        "import ShielddGnarkFormal.Deployed.NetBalance.Ladder",
        "import ShielddGnarkFormal.NbFixedGenSeg46",
        "import ShielddGnarkFormal.NbFixedBaseLiteral",
        "import ShielddGnarkFormal.RvkFixedSplitRung",
        "import ShielddGnarkFormal.StructuredLC",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 20000000",
        "set_option linter.unusedVariables false",
        "",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
    ]
    for axis, wires in (("X", xs), ("Y", ys)):
        lines.append(f"def {blind_delta_name(axis, 0)} (_rho : Nat -> Seg46.F) : Seg46.F := 0")
        for index in range(1, len(wires) + 1):
            lines.append(
                f"def {blind_delta_name(axis, index)} (rho : Nat -> Seg46.F) : Seg46.F := "
                f"{dtk.compact_wire_expr(0, wires[:index], 'Seg46.F')}"
            )
        lines.append("")
    lines += [
        "def seg46BlindAccState (rho : Nat -> Seg46.F) : Nat -> EdwardsBridge.Point",
        "  | 0 => ⟨0, 1⟩",
        "  | 1 => Shieldd.GnarkFormal.Deployed.NetBalance.seedAcc (rho 31661)",
    ]
    for state in range(2, 252):
        delta = state - 1
        lines.append(
            f"  | {state} => ⟨(({NB_GX} : Seg46.F) * rho 31661 + "
            f"{blind_delta_name('X', delta)} rho : Seg46.F), "
            f"((1 : Seg46.F) + ({NB_GYM1} : Seg46.F) * rho 31661 + "
            f"{blind_delta_name('Y', delta)} rho : Seg46.F)⟩"
        )
    lines += [
        "  | _ => ⟨0, 1⟩",
        "",
        "end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
    ]
    return "\n".join(lines)


def emit_value_row_projection(
    lines: list[str], name: str, keep_rows: set[int],
) -> None:
    cfg = configure_contract_helpers()
    ordered = sorted(keep_rows)
    conjunction = " ∧ ".join(f"Seg46.relationRow{row} rho" for row in ordered)
    lines += [
        f"theorem {name} (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :",
        f"    {conjunction} := by",
    ]
    dtk.emit_unpack(lines, cfg, keep_rows)
    lines += [f"  exact ⟨{', '.join(f'r{row}' for row in ordered)}⟩", ""]


def emit_blind_projection(
    lines: list[str], k: int, keep_rows: set[int],
) -> None:
    emit_value_row_projection(lines, f"seg46Blind_rows{k}", keep_rows)


def emit_blind_delta_step(
    lines: list[str], rungs: tuple[BlindRung, ...], k: int,
) -> None:
    previous = k - 1
    x_prev = dtk.compact_wire_lc(0, [r.acc_x for r in rungs[:previous]])
    y_prev = dtk.compact_wire_lc(0, [r.acc_y for r in rungs[:previous]])
    x_next = dtk.compact_wire_lc(0, [r.acc_x for r in rungs[:k]])
    y_next = dtk.compact_wire_lc(0, [r.acc_y for r in rungs[:k]])
    lines += [
        f"  have hnextx : {blind_delta_name('X', k)} rho =",
        f"      {blind_delta_name('X', previous)} rho + rho {rungs[k - 1].acc_x} := by",
        f"    unfold {blind_delta_name('X', k)} {blind_delta_name('X', previous)}",
    ]
    dtk.emit_compact_acc_bridge(lines, x_next, x_prev, "    ")
    lines += [
        f"  have hnexty : {blind_delta_name('Y', k)} rho =",
        f"      {blind_delta_name('Y', previous)} rho + rho {rungs[k - 1].acc_y} := by",
        f"    unfold {blind_delta_name('Y', k)} {blind_delta_name('Y', previous)}",
    ]
    dtk.emit_compact_acc_bridge(lines, y_next, y_prev, "    ")


def emit_blind_fused_rung(
    lines: list[str], rungs: tuple[BlindRung, ...], k: int,
    rows: list[tuple[Lc, Lc, Lc]],
) -> None:
    cfg = configure_contract_helpers()
    rung = rungs[k - 1]
    bit_row = BLIND_BINARY_ROWS[0] + k
    keep = set(rung.block_rows) | {bit_row}
    emit_blind_projection(lines, k, keep)
    lines += [
        f"theorem seg46Blind_rung{k} (rho : Nat -> Seg46.F) (h : Seg46.relation rho)",
        f"    (bit : Bool) (hbitValue : rho {rung.bit} = Bool.toZMod bit)",
        f"    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho {k})) :",
        "    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel",
        f"      {k} (Bool.toZMod bit) (seg46BlindAccState rho {k})",
        f"      (seg46BlindAccState rho {k + 1}) := by",
        f"  obtain ⟨{', '.join(f'r{row}' for row in sorted(keep))}⟩ := seg46Blind_rows{k} rho h",
    ]
    for row in sorted(keep):
        dtk.emit_row_unfold(lines, cfg, row)
    emit_blind_delta_step(lines, rungs, k)
    previous = k - 1
    if k == 1:
        # Arm 1 of seg46BlindAccState is `seedAcc (rho 31661)`; `x + DeltaX0`
        # (i.e. `x + 0`) is not defeq for opaque ZMod terms, so state the
        # acc1-shaped pair without the zero delta.
        prev_pair = [
            f"    (Bool.toZMod bit) ⟨(({NB_GX} : Seg46.F) * rho 31661 : Seg46.F),",
            f"      ((1 : Seg46.F) + ({NB_GYM1} : Seg46.F) * rho 31661 : Seg46.F)⟩",
        ]
    else:
        prev_pair = [
            f"    (Bool.toZMod bit) ⟨(({NB_GX} : Seg46.F) * rho 31661 + {blind_delta_name('X', previous)} rho : Seg46.F),",
            f"      ((1 : Seg46.F) + ({NB_GYM1} : Seg46.F) * rho 31661 + {blind_delta_name('Y', previous)} rho : Seg46.F)⟩",
        ]
    lines += [
        f"  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel {k}",
        *prev_pair,
        f"    ⟨(({NB_GX} : Seg46.F) * rho 31661 + {blind_delta_name('X', k)} rho : Seg46.F),",
        f"      ((1 : Seg46.F) + ({NB_GYM1} : Seg46.F) * rho 31661 + {blind_delta_name('Y', k)} rho : Seg46.F)⟩",
        # k=1: next-state deltas are single wires, defeq by delta unfold; the
        # hnext rewrites would introduce a non-defeq `Delta0 + wire` shape.
        ("  rw [← hbitValue]" if k == 1 else "  rw [hnextx, hnexty, ← hbitValue]"),
    ]
    r_v2, r_add_x, r_add_y, r_sel_x, r_sel_y = rung.block_rows
    v2 = singleton_wire(rows[r_v2][2])
    sx = singleton_wire(rows[r_add_x][0])
    sy = singleton_wire(rows[r_add_y][0])
    theorem = "rung1" if k == 1 else f"rung{k}_wide"
    args = ["(rho 31661)", f"(rho {rung.bit})"]
    if k > 1:
        args += [
            f"({blind_delta_name('X', previous)} rho)",
            f"({blind_delta_name('Y', previous)} rho)",
        ]
    args += [f"(rho {v2})", f"(rho {sx})", f"(rho {sy})", f"(rho {rung.acc_x})", f"(rho {rung.acc_y})"]
    def seat(row: int, deltas: str) -> list[str]:
        if k == 1:
            return [f"  · linear_combination r{row}"]
        return [f"  · unfold {deltas}", f"    linear_combination r{row}"]

    both = f"{blind_delta_name('X', previous)} {blind_delta_name('Y', previous)}"
    lines += [
        f"  apply Shieldd.GnarkFormal.NbFixedGenSeg46.{theorem} {' '.join(args)} hacc",
        *seat(r_v2, both),
        *seat(r_add_x, both),
        *seat(r_add_y, both),
        *seat(r_sel_x, blind_delta_name('X', previous)),
        *seat(r_sel_y, blind_delta_name('Y', previous)),
        f"  · linear_combination r{bit_row}",
        "",
    ]


def emit_blind_split_rung(
    lines: list[str], rungs: tuple[BlindRung, ...], cert: BlindSplitCert,
) -> None:
    cfg = configure_contract_helpers()
    k = cert.k
    bit_row = BLIND_BINARY_ROWS[0] + k
    keep = set(cert.rows) | {bit_row}
    emit_blind_projection(lines, k, keep)
    lines += [
        f"theorem seg46Blind_rung{k} (rho : Nat -> Seg46.F) (h : Seg46.relation rho)",
        f"    (bit : Bool) (hbitValue : rho {cert.bit} = Bool.toZMod bit)",
        f"    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho {k})) :",
        "    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel",
        f"      {k} (Bool.toZMod bit) (seg46BlindAccState rho {k})",
        f"      (seg46BlindAccState rho {k + 1}) := by",
        f"  obtain ⟨{', '.join(f'r{row}' for row in sorted(keep))}⟩ := seg46Blind_rows{k} rho h",
    ]
    for row in sorted(keep):
        dtk.emit_row_unfold(lines, cfg, row)
    emit_blind_delta_step(lines, rungs, k)
    previous = k - 1
    dx = f"{blind_delta_name('X', previous)} rho"
    dy = f"{blind_delta_name('Y', previous)} rho"
    lines += [
        f"  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel {k}",
        f"    (Bool.toZMod bit) ⟨(({NB_GX} : Seg46.F) * rho 31661 + {dx} : Seg46.F),",
        f"      ((1 : Seg46.F) + ({NB_GYM1} : Seg46.F) * rho 31661 + {dy} : Seg46.F)⟩",
        f"    ⟨(({NB_GX} : Seg46.F) * rho 31661 + {blind_delta_name('X', k)} rho : Seg46.F),",
        f"      ((1 : Seg46.F) + ({NB_GYM1} : Seg46.F) * rho 31661 + {blind_delta_name('Y', k)} rho : Seg46.F)⟩",
        "  rw [hnextx, hnexty, ← hbitValue]",
        # splitRung_stepRel's select-Y third arg is left-associated
        # ((1+g*b0+d1y) + sdy); reassociate the goal to match.
        f"  rw [← add_assoc ((1 : Seg46.F) + ({NB_GYM1} : Seg46.F) * rho 31661)",
        f"    ({dy}) (rho {cert.sdy})]",
        "  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel",
        f"    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb {k})",
        f"    ({NB_GX} : Seg46.F) ({NB_GYM1} : Seg46.F)",
        f"    ({cert.ak_x} : Seg46.F) ({cert.ak_y} : Seg46.F)",
        f"    ({cert.ev} : Seg46.F) ({cert.kv} : Seg46.F)",
        f"    ({cert.la} : Seg46.F) ({cert.lb} : Seg46.F)",
        f"    ({cert.rb} : Seg46.F) ({cert.cc} : Seg46.F)",
        f"    ({cert.px} : Seg46.F) ({cert.py} : Seg46.F)",
        f"    ({cert.qb0} : Seg46.F) ({cert.neg_gx} : Seg46.F) ({cert.neg_gym1} : Seg46.F)",
        f"    (rho 31661) ({dx}) ({dy}) (rho {cert.bit})",
        f"    (rho {cert.i67}) (rho {cert.i68}) (rho {cert.i69}) (rho {cert.i71})",
        f"    (rho {cert.out_x}) (rho {cert.out_y}) (rho {cert.sdx}) (rho {cert.sdy}) hacc",
        f"    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve {k})",
        f"    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L{k}]; rfl)",
        "    (by decide) (by decide) (by decide) (by decide)",
        "    (by decide) (by decide) (by decide) (by decide) (by decide)",
        f"    (by unfold {blind_delta_name('X', previous)} {blind_delta_name('Y', previous)};",
        f"        first | linear_combination r{cert.rows[0]} | linear_combination -r{cert.rows[0]})",
        f"    (by unfold {blind_delta_name('X', previous)} {blind_delta_name('Y', previous)};",
        f"        first | linear_combination r{cert.rows[1]} | linear_combination -r{cert.rows[1]})",
        f"    (by unfold {blind_delta_name('X', previous)} {blind_delta_name('Y', previous)};",
        f"        first | linear_combination r{cert.rows[2]} | linear_combination -r{cert.rows[2]})",
        f"    (by first | linear_combination r{cert.rows[3]} | linear_combination -r{cert.rows[3]})",
        f"    (by unfold {blind_delta_name('X', previous)} {blind_delta_name('Y', previous)};",
        f"        first | linear_combination r{cert.rows[4]} | linear_combination -r{cert.rows[4]})",
        f"    (by first | linear_combination r{cert.rows[5]} | linear_combination -r{cert.rows[5]})",
        f"    (by unfold {blind_delta_name('X', previous)}; first | linear_combination r{cert.rows[6]} | linear_combination -r{cert.rows[6]})",
        f"    (by unfold {blind_delta_name('Y', previous)}; first | linear_combination r{cert.rows[7]} | linear_combination -r{cert.rows[7]})",
        f"    (by linear_combination r{bit_row})",
        "",
    ]


def emit_blind_chunk(
    chunk_index: int, subset: tuple[BlindRung, ...],
    rungs: tuple[BlindRung, ...], rows: list[tuple[Lc, Lc, Lc]],
) -> str:
    lines = [
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg46BlindDefs",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 20000000",
        "set_option linter.unusedVariables false",
        "",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
    ]
    for rung in subset:
        k = rung.index + 1
        if rung.materialized:
            emit_blind_split_rung(lines, rungs, blind_split_cert(rows, rungs, k))
        else:
            emit_blind_fused_rung(lines, rungs, k, rows)
    lo, hi = subset[0].index + 1, subset[-1].index + 2
    lines += [
        f"theorem seg46Blind_hstep_c{chunk_index} (rho : Nat -> Seg46.F)",
        "    (h : Seg46.relation rho) (bits : List.Vector Bool 251)",
        "    (hbitAt : ∀ i, i < 251 → rho (31661 + i) = Bool.toZMod bits[i]!) :",
        f"    ∀ i, {lo} ≤ i → i < {hi} →",
        "      EdwardsBridge.onCurve (seg46BlindAccState rho i) →",
        "      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i",
        "        (Bool.toZMod bits[i]!) (seg46BlindAccState rho i)",
        "        (seg46BlindAccState rho (i + 1)) := by",
        "  intro i hlo hhi hacc",
        "  interval_cases i",
    ]
    for rung in subset:
        k = rung.index + 1
        lines.append(
            f"  · exact seg46Blind_rung{k} rho h bits[{k}]! "
            f"(hbitAt {k} (by omega)) hacc"
        )
    lines += ["", "end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1", ""]
    return "\n".join(lines)


def emit_blind_ladder(rungs: tuple[BlindRung, ...]) -> str:
    chunks = blind_chunks(rungs)
    lines = [
        *[
            f"import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg46BlindR{index}"
            for index in range(len(chunks))
        ],
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 20000000",
        "set_option linter.unusedVariables false",
        "",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
        "theorem seg46Blind_ladder (rho : Nat -> Seg46.F) (h : Seg46.relation rho)",
        "    (bits : List.Vector Bool 251)",
        "    (hbits : seg46BlindBits rho = bits.map Bool.toZMod)",
        "    (k : List.Vector Seg46.F 4 → Prop)",
        "    (hk : k vec![(seg46BlindAccState rho 251).x,",
        "      (seg46BlindAccState rho 251).y,",
        "      (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 251).x,",
        "      (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 251).y]) :",
        "    Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbLadderK",
        "      (seg46BlindBits rho) k 251 0 ⟨0, 1⟩",
        "      Shieldd.GnarkFormal.Deployed.NetBalance.blindGen ∧",
        "    EdwardsBridge.onCurve (seg46BlindAccState rho 251) := by",
        "  have hbitAt : ∀ i, i < 251 →",
        "      rho (31661 + i) = Bool.toZMod bits[i]! := by",
        "    intro i hi",
        "    rw [← seg46BlindBits_get rho i hi, hbits]",
        "    rw [getElem!_pos (bits.map Bool.toZMod) i (by simpa using hi),",
        "      getElem!_pos bits i (by simpa using hi), List.Vector.getElem_map]",
        "  have hstep : ∀ i, i < 251 →",
        "      EdwardsBridge.onCurve (seg46BlindAccState rho i) →",
        "      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i",
        "        (Bool.toZMod bits[i]!) (seg46BlindAccState rho i)",
        "        (seg46BlindAccState rho (i + 1)) := by",
        "    intro i hi hacc",
        "    by_cases hzero : i = 0",
        "    · subst i",
        "      have hb0 : rho 31661 = Bool.toZMod bits[0]! := by",
        "        simpa using hbitAt 0 (by omega)",
        "      simpa [seg46BlindAccState, hb0] using",
        "        (Shieldd.GnarkFormal.Deployed.NetBalance.seedStepRel bits[0]!)",
        "    ·",
    ]
    for chunk_index, subset in enumerate(chunks):
        hi_c = subset[-1].index + 2
        lo_arg = "(by omega)" if chunk_index == 0 else f"hb{chunk_index - 1}"
        if chunk_index == len(chunks) - 1:
            lines.append(
                f"      exact seg46Blind_hstep_c{chunk_index} rho h bits hbitAt i "
                f"{lo_arg} hi hacc"
            )
        else:
            lines += [
                f"      rcases Nat.lt_or_ge i {hi_c} with hb{chunk_index}|hb{chunk_index}",
                f"      · exact seg46Blind_hstep_c{chunk_index} rho h bits hbitAt i "
                f"{lo_arg} hb{chunk_index} hacc",
            ]
    lines += [
        "  constructor",
        "  · rw [hbits]",
        "    apply Shieldd.GnarkFormal.Deployed.NetBalance.fixedTrace_to_nbLadderK",
        "      bits k (seg46BlindAccState rho) hstep (by intro _; exact hk)",
        "      251 0 (by omega)",
        "    exact EdwardsBridge.identity_onCurve",
        "  · exact Shieldd.GnarkFormal.Deployed.NetBalance.fixedTrace_final_onCurve",
        "      bits (seg46BlindAccState rho) hstep EdwardsBridge.identity_onCurve",
        "",
        "end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
    ]
    return "\n".join(lines)


def emit_blind_modules(seating: dict) -> dict[str, str]:
    rungs = seating["blind"]
    modules = {"NbAdapterSeg46BlindDefs": emit_blind_defs_module(rungs)}
    for chunk_index, subset in enumerate(blind_chunks(rungs)):
        modules[f"NbAdapterSeg46BlindR{chunk_index}"] = emit_blind_chunk(
            chunk_index, subset, rungs, seating["rows"]
        )
    modules["NbAdapterSeg46Blind"] = emit_blind_ladder(rungs)
    return modules


def emit_to_binary_module(
    label: str, bits_name: str, bit_base: int, width: int,
    bit_rows: tuple[int, int], rec_row: int, input_wire: int,
) -> str:
    cfg = configure_contract_helpers()
    rows = list(range(bit_rows[0], bit_rows[1] + 1))
    if len(rows) != width:
        raise ValueError(f"{label}: {len(rows)} booleanity rows for width {width}")
    block = dtk.CanonicalBlock(label, input_wire, bit_base, bit_rows[0], rec_row, rec_row + 1)
    lines = [
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg46Base",
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.CompressAdapterCommon",
        "import ShielddGnarkFormal.RvkToBinary",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 20000000",
        "set_option linter.unusedVariables false",
        "",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
        f"theorem {bits_name}_toBinary (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :",
        f"    GatesDef.to_binary (rho {input_wire}) {width} ({bits_name} rho) := by",
    ]
    dtk.emit_unpack(lines, cfg, set(rows + [rec_row]))
    for row in rows:
        lines.append(f"  unfold Seg46.relationRow{row} at r{row}\n")
    dtk.emit_recomposition(lines, cfg, block, f"({bits_name} rho)", f"r{rec_row}", width)
    lines += [
        f"  apply Shieldd.GnarkFormal.RvkToBinary.to_binary_of_deployed (rho {input_wire}) ({bits_name} rho)",
        "  · intro i hi",
        f"    have key := {bits_name}_get rho i hi",
        f"    have hgoal : rho ({bit_base} + i) * (1 - rho ({bit_base} + i)) = 0 := by",
        "      interval_cases i",
    ]
    for row in rows:
        lines.append(f"      · linear_combination r{row}")
    lines += [
        f"    have key' : ({bits_name} rho)[i] = rho ({bit_base} + i) := by",
        f"      rw [← getElem!_pos ({bits_name} rho) i (by simpa using hi)]",
        "      exact key",
        "    exact key' ▸ hgoal",
        "  · exact hrec",
        "",
        "end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
    ]
    return "\n".join(lines)


def emit_to_binary_modules() -> dict[str, str]:
    modules = {}
    for label, bit_base, bit_rows, rec_row, amount_wire in AMOUNT_BLOCKS:
        modules[f"NbAdapterSeg46{label}Bits"] = emit_to_binary_module(
            label, f"seg46{label}Bits", bit_base, 128,
            bit_rows, rec_row, amount_wire,
        )
    modules["NbAdapterSeg46BlindBits"] = emit_to_binary_module(
        "Blind", "seg46BlindBits", BLIND_BIT_BASE, 251,
        BLIND_BINARY_ROWS, BLIND_COPY_ROW, BLIND_WIRE,
    )
    return modules


def emit_conservation() -> str:
    """Single linear conservation row: in0 + in1 = out0."""
    cfg = configure_contract_helpers()
    lines = [
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg46Base",
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.CompressAdapterCommon",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 20000000",
        "set_option linter.unusedVariables false",
        "",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
        "theorem seg46_conservation (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :",
        f"    rho {IN0_WIRE} + rho {IN1_WIRE} = rho {OUT0_WIRE} := by",
    ]
    dtk.emit_unpack(lines, cfg, {CONSERVATION_ROW})
    lines += [
        f"  unfold Seg46.relationRow{CONSERVATION_ROW} at r{CONSERVATION_ROW}",
        f"  linear_combination r{CONSERVATION_ROW}",
        "",
        "end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
    ]
    return "\n".join(lines)


def emit_top() -> str:
    return f"""import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Nb
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg46In0Bits
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg46In1Bits
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg46Out0Bits
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg46BlindBits
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg46Blind
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg46Conserv
import ShielddGnarkFormal.ConservationNetBalanceCommitmentBridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.NetBalanceCommitmentBridge
open Shieldd.GnarkFormal.ConservationNetBalanceCommitmentBridge

theorem seg46_conservBody (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    conservBody (rho {IN0_WIRE}) (rho {IN1_WIRE}) (rho {OUT0_WIRE}) (rho {BLIND_WIRE})
      (rho {OUT_X_WIRE}) (rho {OUT_Y_WIRE}) := by
  have hIn0Bin := seg46In0Bits_toBinary rho h
  have hIn1Bin := seg46In1Bits_toBinary rho h
  have hOut0Bin := seg46Out0Bits_toBinary rho h
  have hBlindBin := seg46BlindBits_toBinary rho h
  obtain ⟨blindBool, hBlindEq⟩ := is_vector_binary_iff_exists_bool_vec.mp hBlindBin.2
  have hcons := seg46_conservation rho h
  have hLadder := seg46Blind_ladder rho h blindBool hBlindEq
    (fun s =>
      Extracted.ConservationNetBalanceCommitment.Gates.eq s[0] (rho {OUT_X_WIRE}) ∧
      Extracted.ConservationNetBalanceCommitment.Gates.eq s[1] (rho {OUT_Y_WIRE}) ∧
      True)
    ⟨by simp only [Extracted.ConservationNetBalanceCommitment.Gates, GatesGnark9,
        GatesGnark8, GatesDef.eq]; rfl,
      by simp only [Extracted.ConservationNetBalanceCommitment.Gates, GatesGnark9,
        GatesGnark8, GatesDef.eq]; rfl,
      True.intro⟩
  unfold conservBody
  refine ⟨seg46In0Bits rho, hIn0Bin, ?_⟩
  refine ⟨(0 : Seg46.F) + rho {IN0_WIRE}, by
    simp only [Extracted.ConservationNetBalanceCommitment.Gates, GatesGnark9,
      GatesGnark8, GatesDef.add], ?_⟩
  refine ⟨seg46In1Bits rho, hIn1Bin, ?_⟩
  refine ⟨(0 : Seg46.F) + rho {IN0_WIRE} + rho {IN1_WIRE}, by
    simp only [Extracted.ConservationNetBalanceCommitment.Gates, GatesGnark9,
      GatesGnark8, GatesDef.add], ?_⟩
  refine ⟨seg46Out0Bits rho, hOut0Bin, ?_⟩
  refine ⟨(0 : Seg46.F) + rho {OUT0_WIRE}, by
    simp only [Extracted.ConservationNetBalanceCommitment.Gates, GatesGnark9,
      GatesGnark8, GatesDef.add], ?_⟩
  refine ⟨by
    simp only [Extracted.ConservationNetBalanceCommitment.Gates, GatesGnark9,
      GatesGnark8, GatesDef.eq]
    linear_combination hcons, ?_⟩
  exact ⟨seg46BlindBits rho, hBlindBin, hLadder.1⟩

theorem seg46_sound (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Specs.deployedSpec46 rho := by
  have hbody := seg46_conservBody rho h
  have hcircuit := (conserv_circuit_eq (rho {IN0_WIRE}) (rho {IN1_WIRE})
    (rho {OUT0_WIRE}) (rho {BLIND_WIRE}) (rho {OUT_X_WIRE}) (rho {OUT_Y_WIRE})).mpr hbody
  exact Shieldd.GnarkFormal.ConservationNetBalanceCommitmentBridge.decaf377_conservationNetBalanceCommitment_sound
    (rho {IN0_WIRE}) (rho {IN1_WIRE}) (rho {OUT0_WIRE}) (rho {BLIND_WIRE})
    ⟨rho {OUT_X_WIRE}, rho {OUT_Y_WIRE}⟩ hcircuit

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
"""


def recover() -> dict:
    """Run the full fail-closed recovery; returns the seating structures."""
    rows = sr1cs_rows()
    for label, bit_base, bit_rows, rec_row, amount_wire in AMOUNT_BLOCKS:
        for offset, row in enumerate(range(bit_rows[0], bit_rows[1] + 1)):
            wire = bit_base + offset
            a, b, c = rows[row]
            if wire not in a and wire not in b:
                raise ValueError(f"{label}: bit wire {wire} absent from row {row}")
        a, b, c = rows[rec_row]
        if c != {amount_wire: 1}:
            raise ValueError(
                f"{label}: recomposition row {rec_row} does not target wire "
                f"{amount_wire}: {c}")
    a, b, c = rows[CONSERVATION_ROW]
    if a != {0: 1} or b != {IN0_WIRE: 1, IN1_WIRE: 1} or c != {OUT0_WIRE: 1}:
        raise ValueError(
            f"conservation row {CONSERVATION_ROW} shape mismatch: {rows[CONSERVATION_ROW]}")
    blind = blind_rungs(rows)
    if BLIND_ACCS[-1] != (OUT_X_WIRE, OUT_Y_WIRE):
        raise ValueError("final blind accumulator pair is not the pinned output wires")
    return {"rows": rows, "blind": blind}


def main() -> None:
    seating = recover()
    blind = seating["blind"]
    n_late = sum(1 for r in blind if r.materialized)
    print(f"blinding ladder: {len(blind)} rungs ({len(blind) - n_late} 5-row, {n_late} 8-row)")
    literal = emit_fixed_base_literal(seating["rows"])
    (FORMAL / "NbFixedBaseLiteral.lean").write_text(literal)
    print(f"wrote NbFixedBaseLiteral.lean ({len(literal.splitlines())} lines)")
    (CONTRACTS / "NbAdapterSeg46Base.lean").write_text(emit_base())
    print("wrote seg46 base module")
    for module, contents in emit_blind_modules(seating).items():
        (CONTRACTS / f"{module}.lean").write_text(contents)
    print("wrote seg46 blinding-ladder modules")
    for module, contents in emit_to_binary_modules().items():
        (CONTRACTS / f"{module}.lean").write_text(contents)
    print("wrote seg46 to-binary modules")
    (CONTRACTS / "NbAdapterSeg46Conserv.lean").write_text(emit_conservation())
    print("wrote seg46 conservation module")
    (CONTRACTS / "NbAdapterSeg46.lean").write_text(emit_top())
    print("wrote seg46 top adapter")


if __name__ == "__main__":
    main()
