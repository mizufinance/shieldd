#!/usr/bin/env python3
"""Generate consolidate2x1 adapters for deployed compress_to_field slices."""

from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CONTRACTS = ROOT / "ShielddGnarkFormal/Deployed/Contracts/Consolidate2x1"
BRIDGE = ROOT / "ShielddGnarkFormal/Deployed/CompressToField/Bridge.lean"
COMMON_OUT = CONTRACTS / "CompressAdapterCommon.lean"
AGG_OUT = CONTRACTS / "CompressAdapters.lean"

SEGMENTS = [
    # seg, x, y, internal wire offset for base wires 210..912
    # Post-T1-d: re-derived from consolidate2x1-deployed-slice-ir.json (do not
    # reuse pre-hoist offsets; the DTK/NB hoists shifted everything downstream).
    (8, 17, 18, 5816),
    (17, 12, 13, 17990),
    (24, 107, 108, 18700),
    (33, 102, 103, 30874),
    (40, 195, 196, 31584),
    (50, 40715, 40716, 40509),
]


def chunks(items: list[str], n: int) -> list[list[str]]:
    return [items[i : i + n] for i in range(0, len(items), n)]


def parse_bridge_hyps() -> list[tuple[int, str]]:
    src = BRIDGE.read_text()
    out: list[tuple[int, str]] = []
    for m in re.finditer(r"\(h(\d+) : (.*?)\)\n", src, re.S):
        out.append((int(m.group(1)), re.sub(r"\s+", " ", m.group(2).strip())))
    return out


def bridge_row_for_hyp(h: int) -> int:
    if 0 <= h <= 280:
        return h
    if 535 <= h <= 1043:
        return h - 253
    if 1298 <= h <= 1551:
        return h - 506
    raise ValueError(f"unexpected bridge hypothesis h{h}")


def parse_relation_parts(seg: int) -> list[list[int]]:
    src = (CONTRACTS / f"Seg{seg}.lean").read_text()
    parts: list[list[int]] = []
    for m in re.finditer(
        r"def relationPart(\d+) \(rho : Nat -> F\) : Prop :=\n(.*?)(?=\n\ndef relationPart|\n\ndef relation |\Z)",
        src,
        re.S,
    ):
        idx = int(m.group(1))
        rows = [int(r) for r in re.findall(r"relationRow(\d+) rho", m.group(2))]
        if idx != len(parts):
            raise ValueError(f"non-contiguous relationPart in Seg{seg}: got {idx}, want {len(parts)}")
        parts.append(rows)
    return parts


def seated_type(seg: int, h_type: str) -> str:
    h_type = h_type.replace(": F", f": Seg{seg}.F")
    h_type = re.sub(r"\brho (\d+)", rf"seg{seg}Rho rho \1", h_type)
    return h_type


def emit_part_unpack(lines: list[str], seg: int, parts: list[list[int]]) -> None:
    part_names = [f"p{i}" for i in range(len(parts))]
    lines.append(f"  unfold Seg{seg}.relation at h")
    lines.append("  rcases h with ⟨")
    for chunk in chunks(part_names, 8):
        lines.append("    " + ", ".join(chunk) + ",")
    lines[-1] = lines[-1].rstrip(",")
    lines.append("  ⟩")
    for i, rows in enumerate(parts):
        if len(rows) == 1:
            lines.append(f"  unfold Seg{seg}.relationPart{i} at p{i}")
            lines.append(f"  have r{rows[0]} := p{i}")
        else:
            lines.append(f"  unfold Seg{seg}.relationPart{i} at p{i}")
            lines.append(f"  rcases p{i} with ⟨{', '.join(f'r{r}' for r in rows)}⟩")


def emit_rho_def(lines: list[str], seg: int, x: int, y: int, offset: int) -> None:
    lines.append(f"def seg{seg}Rho (rho : Nat → Seg{seg}.F) : Nat → Seg{seg}.F")
    lines.append("| 0 => 1")
    lines.append(f"| 17 => rho {x}")
    lines.append(f"| 18 => rho {y}")
    lines.append(f"| i => if 210 ≤ i ∧ i ≤ 912 then rho (i + {offset}) else rho i")
    lines.append("")


def emit_recomp_helpers(lines: list[str]) -> None:
    lines.extend(
        [
            "def recBits {n : Nat} (rho : Nat → ZMod n) (base width : Nat) : ZMod n :=",
            "  match width with",
            "  | 0 => 0",
            "  | width + 1 => rho base + 2 * recBits rho (base + 1) width",
            "",
            "def powSumAcc {n : Nat} (rho : Nat → ZMod n) (acc pow : ZMod n) (base width : Nat) : ZMod n :=",
            "  match width with",
            "  | 0 => acc",
            "  | width + 1 => powSumAcc rho (acc + pow * rho base) (2 * pow) (base + 1) width",
            "",
            "theorem powSumAcc_eq {n : Nat} (rho : Nat → ZMod n) (acc pow : ZMod n) (base width : Nat) :",
            "    powSumAcc rho acc pow base width = acc + pow * recBits rho base width := by",
            "  induction width generalizing acc pow base with",
            "  | zero => simp [powSumAcc, recBits]",
            "  | succ width ih =>",
            "      simp [powSumAcc, recBits, ih]",
            "      ring",
            "",
            "theorem recover_ofFn_eq_recBits {n : Nat} (rho : Nat → ZMod n) (base width : Nat) :",
            "    recover_binary_zmod' (List.Vector.ofFn (fun i : Fin width => rho (base + i.val))) =",
            "      recBits rho base width := by",
            "  induction width generalizing base with",
            "  | zero => simp [recover_binary_zmod', recBits]",
            "  | succ width ih =>",
            "      simp only [recover_binary_zmod', recBits, List.Vector.head_ofFn, List.Vector.tail_ofFn]",
            "      have htail : (List.Vector.ofFn fun i : Fin width => rho (base + ↑i.succ)) =",
            "          (List.Vector.ofFn fun i : Fin width => rho (base + 1 + ↑i)) := by",
            "        apply List.Vector.ext",
            "        intro i",
            "        simp [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]",
            "      rw [htail, ih (base + 1)]",
            "      simp",
            "",
        ]
    )


def emit_recomp_lemma(lines: list[str], seg: int, which: int, row: int, base: int, inp: int) -> None:
    lines.append(f"theorem seg{seg}_hrec{which} (rho : Nat → Seg{seg}.F)")
    lines.append(f"    (h : Seg{seg}.relationRow{row} rho) :")
    lines.append(
        f"    recover_binary_zmod' (List.Vector.ofFn (fun i : Fin 253 => seg{seg}Rho rho ({base} + i.val))) = "
        f"seg{seg}Rho rho {inp} := by"
    )
    lines.append(f"  have hrec := recover_ofFn_eq_recBits (seg{seg}Rho rho) {base} 253")
    lines.append(f"  have hacc : powSumAcc (seg{seg}Rho rho) 0 1 {base} 253 = seg{seg}Rho rho {inp} := by")
    lines.append(f"    unfold Seg{seg}.relationRow{row} at h")
    lines.append(f"    simpa [powSumAcc, seg{seg}Rho] using h")
    lines.append("  rw [hrec]")
    lines.append("  rw [powSumAcc_eq] at hacc")
    lines.append(f"  simpa [seg{seg}Rho] using hacc")
    lines.append("")


def emit_segment(lines: list[str], seg: int, hyps: list[tuple[int, str]]) -> None:
    parts = parse_relation_parts(seg)
    lines.append(f"theorem seg{seg}_sound (rho : Nat → Seg{seg}.F) (h : Seg{seg}.relation rho) : Seg{seg}.spec rho := by")
    emit_part_unpack(lines, seg, parts)
    lines.append("  change Shieldd.GnarkFormal.Extracted.DecafCompressToField.Relation")
    lines.append(f"    (seg{seg}Rho rho 17) (seg{seg}Rho rho 18) (seg{seg}Rho rho 912 - seg{seg}Rho rho 572)")
    arg_holes = ["?_"] * (len(hyps) + 3)
    lines.append("  refine Shieldd.GnarkFormal.Extracted.DecafCompressToField.inst_compress_deployed_sound")
    lines.append(f"    (seg{seg}Rho rho)")
    for chunk in chunks(arg_holes, 24):
        lines.append("    " + " ".join(chunk))
    for h, _typ in hyps:
        row = bridge_row_for_hyp(h)
        lines.append(f"  · unfold Seg{seg}.relationRow{row} at r{row}")
        lines.append(f"    simpa [seg{seg}Rho, mul_eq_zero] using r{row}")
    lines.append(f"  · exact seg{seg}_hrec1 rho r281")
    lines.append(f"  · exact seg{seg}_hrec2 rho r791")
    lines.append("  · rfl")
    lines.append("")


def main() -> None:
    hyps = parse_bridge_hyps()
    common: list[str] = [
        "import ShielddGnarkFormal.Deployed.CompressToField.Bridge",
        "import Mathlib.Tactic.Ring",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 20000000",
        "set_option linter.unusedVariables false",
        "",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
        "open Shieldd.GnarkFormal.Extracted.DecafCompressToField",
        "",
    ]
    emit_recomp_helpers(common)
    common.append("end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1")
    COMMON_OUT.write_text("\n".join(common) + "\n")

    aggregate: list[str] = []
    for seg, *_ in SEGMENTS:
        aggregate.append(f"import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.CompressAdapterSeg{seg}")

        lines: list[str] = [
            "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.CompressAdapterCommon",
            f"import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg{seg}",
            "import ShielddGnarkFormal.Deployed.PrimeOrderAssumption",
            "",
            "set_option maxRecDepth 1000000",
            "set_option maxHeartbeats 20000000",
            "set_option linter.unusedVariables false",
            "",
            "namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
            "",
            "open Shieldd.GnarkFormal.Extracted.DecafCompressToField",
            "",
            f"instance seg{seg}FactPrime : Fact (Nat.Prime Seg{seg}.Order) :=",
            "  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩",
            "",
        ]
        x, y, offset = next((a, b, c) for s, a, b, c in SEGMENTS if s == seg)
        emit_rho_def(lines, seg, x, y, offset)
        emit_recomp_lemma(lines, seg, 1, 281, 231, 230)
        emit_recomp_lemma(lines, seg, 2, 791, 573, 572)
        emit_segment(lines, seg, hyps)
        lines.append("end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1")
        (CONTRACTS / f"CompressAdapterSeg{seg}.lean").write_text("\n".join(lines) + "\n")

    AGG_OUT.write_text("\n".join(aggregate) + "\n")


if __name__ == "__main__":
    main()
