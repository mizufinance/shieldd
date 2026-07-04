#!/usr/bin/env python3
"""Generate deployed state-commitment-path adapters for consolidate2x1 segs 11/29.

Each seg is one 9015-row Merkle slice: leaf Poseidon1 (rows 0-229), 48-bit
position decomposition (230-277) + recompose (278), then 24 levels of
(14-row quad-select block + 350-row Poseidon4 perm; level k perm at row
293+364k). The 25 shared bridge trees (StateCommitmentPathLeaf / Node0..23)
bind their public wires universally, so one tree serves both instances.

Per-level Poseidon domains are TCTDomain+height (heights 1..24; the leaf uses
TCTDomain itself) — the deployed circuit diverges from the single-domain
abstract QuadPath24 here, so composition folds the per-height
`StateCommitmentPath.recover24H` via `recoverStep_eq` instead of citing
`concrete_circuit_sound24`.

All wire seats are parsed fail-closed from each instance's own contract
(`Seg{N}.lean`); cross-instance consistency is asserted against the shared
slice-module numbering (seg29 = seg11 seats +90 / internals +18700).
"""

from __future__ import annotations

import json
import re
from pathlib import Path
from types import SimpleNamespace

import gen_dtk_slice as dtk

ROOT = Path(__file__).resolve().parents[1]
FORMAL = ROOT / "ShielddGnarkFormal"
CONTRACTS = FORMAL / "Deployed/Contracts/Consolidate2x1"
EXTRACTED = FORMAL / "Extracted/Deployed"
HERE = Path(__file__).resolve().parent

ROW_COUNT = 9015
LEVELS = 24
BOOL_BASE_ROW, BOOL_COUNT, RECOMP_ROW = 230, 48, 278
SEL_I_OFFS = (0, 1, 2, 3)
SEL_T_OFFS = (5, 6, 8, 9, 11, 13)

CTX = "Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1"
SCP = "Shieldd.GnarkFormal.Deployed.StateCommitmentPath"
P4 = "Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4"
P1 = "Shieldd.GnarkFormal.Poseidon1Bridge.permSpec1"
LEAF_LIT = f"{SCP}.tctLeafDomainLit"
DOM_NUM = "545001158149490383238005163525397553024965043366546261617421270984613353336"
RECOVER_STEP = "Shieldd.GnarkFormal.QuadPath.recoverStep"

LEAF_STEM = "GadgetStateCommitmentPathLeaf230_c35850"
LEAF_ROW_COUNT, LEAF_SEGMENTS = 230, 46
NODE_ROW_COUNT, NODE_SEGMENTS = 350, 70

LEAF_C = (
    "5629641166285580282832549959187697687583932890102709218623488970611606159361",
    "6333346312071277818186618704086159898531924501365547870951425091938056929281",
)
NODE_C = (
    "7037051457856975353540687448984622109479916112628386523279361213264507699201",
    "7238110070938603220784707090384182741179342287274911852515914390786350776321",
    "7388904030749824121217721821433853214953911918259805849443329273927733084161",
    "4691367638571316902360458299323081406319944075085591015519574142176338466134",
    "7600015574485533381823942444903391878238309401638657445141710110325668315137",
)

INSTANCES = (11, 29)

HEADER_OPTS = [
    "set_option maxRecDepth 1000000",
    "set_option maxHeartbeats 20000000",
    "set_option linter.unusedVariables false",
]


def sel_base(k: int) -> int:
    return 279 + 364 * k


def perm_base(k: int) -> int:
    return 293 + 364 * k


def node_stem(k: int) -> str:
    gd = json.loads((HERE / f"state_commitment_node{k}_gendata.json").read_text())
    return gd["slice_stem"]


def cfg_for(seg: int) -> SimpleNamespace:
    dtk.SOURCE_CONTRACTS = CONTRACTS
    dtk.ROW_COUNT = ROW_COUNT
    return SimpleNamespace(seg=seg)


def row_wires(body: str) -> list[int]:
    return [int(w) for w in re.findall(r"rho (\d+)", body)]


def row_out(body: str) -> int:
    match = re.search(r"= \(\(1 : F\) \* rho (\d+)\)\s*$", body.rstrip())
    if match is None:
        raise ValueError(f"row has no singleton output: {body[-120:]!r}")
    return int(match.group(1))


def leaf_cont_wires() -> tuple[int, int]:
    """The two lane wires the leaf slice's continuation binds (seg11 numbering)."""
    text = (EXTRACTED / f"{LEAF_STEM}.lean").read_text()
    match = re.findall(r"=>\s*k (w\d+) (w\d+)\)", text)
    if not match:
        raise ValueError("leaf slice module: continuation args not found")
    return tuple(int(w[1:]) for w in match[-1])


def node_cont_wires(k: int) -> tuple[int, ...]:
    """The five s38_1 lane wires node k's continuation binds (seg11 numbering)."""
    text = (EXTRACTED / f"{node_stem(k)}.lean").read_text()
    match = re.findall(r"=>\s*k (w\d+) (w\d+) (w\d+) (w\d+) (w\d+)\)", text)
    if not match:
        raise ValueError(f"node{k} slice module: continuation args not found")
    return tuple(int(w[1:]) for w in match[-1])


def wire_map(seg: int, wire: int) -> int:
    if seg == 11:
        return wire
    return wire + 90 if wire < 1653 else wire + 18700


class Level:
    def __init__(self, seg: int, k: int, rows: dict[int, str]):
        base = sel_base(k)
        i0_wires = row_wires(rows[base])
        self.b0, self.b1, self.i0 = i0_wires[0], i0_wires[1], i0_wires[2]
        self.i1 = row_out(rows[base + 1])
        self.i2 = row_out(rows[base + 2])
        self.i3 = row_out(rows[base + 3])
        self.t = tuple(row_out(rows[base + off]) for off in SEL_T_OFFS)
        t0_wires = row_wires(rows[base + SEL_T_OFFS[0]])
        self.s0 = t0_wires[1]
        self.s1 = row_wires(rows[base + SEL_T_OFFS[1]])[2]
        self.s2 = row_wires(rows[base + SEL_T_OFFS[3]])[2]
        # fail-closed cross-checks
        assert self.s0 == wire_map(seg, 94 - 3 * k), (seg, k, self.s0)
        assert self.s1 == wire_map(seg, 95 - 3 * k), (seg, k, self.s1)
        assert self.s2 == wire_map(seg, 96 - 3 * k), (seg, k, self.s2)
        assert self.b0 == wire_map(seg, 1883 + 2 * k), (seg, k, self.b0)
        assert self.b1 == self.b0 + 1
        if k == 0:
            for lit in LEAF_C:
                assert lit in rows[base + SEL_T_OFFS[0]], (seg, k)
        else:
            assert NODE_C[0] in rows[base + SEL_T_OFFS[0]], (seg, k)
        self.lanes = tuple(wire_map(seg, w) for w in node_cont_wires(k))
        block_outs = {row_out(rows[perm_base(k) + i]) for i in range(NODE_ROW_COUNT)}
        assert all(w in block_outs for w in self.lanes), (seg, k, self.lanes)
        if k < LEVELS - 1:
            next_t0 = set(row_wires(rows[sel_base(k + 1) + SEL_T_OFFS[0]]))
            assert all(w in next_t0 for w in self.lanes), (seg, k, self.lanes)


class Instance:
    def __init__(self, seg: int):
        self.seg = seg
        self.cfg = cfg_for(seg)
        rows = dtk.relation_rows(seg)
        self.rows = rows
        self.commitment = row_wires(rows[0])[0]
        assert self.commitment == wire_map(seg, 23)
        self.position = row_wires(rows[RECOMP_ROW])[-1]
        assert self.position == wire_map(seg, 24)
        self.bits_base = row_wires(rows[BOOL_BASE_ROW])[0]
        assert self.bits_base == wire_map(seg, 1883)
        for j in range(BOOL_COUNT):
            wires = row_wires(rows[BOOL_BASE_ROW + j])
            assert wires[0] == wires[1] == self.bits_base + j, (seg, j)
        self.leaf_outs = tuple(row_out(rows[i]) for i in range(LEAF_ROW_COUNT))
        lw = leaf_cont_wires()
        self.leaf_lanes = tuple(wire_map(seg, w) for w in lw)
        assert all(w in self.leaf_outs for w in self.leaf_lanes)
        self.levels = [Level(seg, k, rows) for k in range(LEVELS)]

    @property
    def f(self) -> str:
        return f"Seg{self.seg}.F"

    def leaf_out_def(self) -> str:
        return f"seg{self.seg}ScpLeafOut"

    def node_out_def(self, k: int) -> str:
        return f"seg{self.seg}ScpNode{k}Out"

    def cur_expr(self, k: int) -> str:
        if k == 0:
            return f"({self.leaf_out_def()} rho)"
        return f"({self.node_out_def(k - 1)} rho)"

    def dom_expr(self, k: int) -> str:
        return f"(({DOM_NUM} : {self.f}) + ({k + 1} : {self.f}))"

    def perm_args(self, lv: Level) -> str:
        return (
            f"(rho {lv.s0} + rho {lv.t[0]}) (rho {lv.s1} + rho {lv.t[1]} + rho {lv.t[2]})\n"
            f"        (rho {lv.s1} + rho {lv.t[3]} + rho {lv.t[4]}) (rho {lv.s2} + rho {lv.t[5]})"
        )


def header(imports: list[str]) -> list[str]:
    return imports + [""] + HEADER_OPTS + ["", f"namespace {CTX}", ""]


def footer() -> list[str]:
    return ["", f"end {CTX}", ""]


def row_proof(inst: Instance, row: int, unfold_extra: str = "") -> str:
    extra = f"unfold {unfold_extra}; " if unfold_extra else ""
    return (
        f"(by {extra}unfold Seg{inst.seg}.relationRow{row} at r{row}; "
        f"linear_combination r{row})"
    )


def emit_refine_chain(
    lines: list[str], inst: Instance, stem: str, segments: int, first_row: int
) -> None:
    mod = f"Shieldd.GnarkFormal.Extracted.Deployed.{stem}"
    for segment in range(segments):
        lines.append(f"    unfold {mod}.seg{segment}")
        rows = [first_row + 5 * segment + j for j in range(5)]
        outs = ", ".join(f"rho {row_out(inst.rows[r])}" for r in rows)
        lines.append(f"    refine ⟨{outs},")
        proofs = ", ".join(row_proof(inst, r) for r in rows)
        lines.append(f"      {proofs}, ?_⟩")


def emit_base(inst: Instance) -> str:
    lines = header([
        f"import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg{inst.seg}",
        "import ShielddGnarkFormal.Deployed.PrimeOrderAssumption",
    ])
    lines += [
        f"instance seg{inst.seg}ScpFactPrime : Fact (Nat.Prime Seg{inst.seg}.Order) :=",
        "  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩",
        "",
        f"def {inst.leaf_out_def()} (rho : Nat -> {inst.f}) : {inst.f} :=",
        f"  ({LEAF_C[0]} : {inst.f}) * rho {inst.leaf_lanes[0]}",
        f"    + ({LEAF_C[1]} : {inst.f}) * rho {inst.leaf_lanes[1]}",
    ]
    for k, lv in enumerate(inst.levels):
        outs = lv.lanes
        lines += ["", f"def {inst.node_out_def(k)} (rho : Nat -> {inst.f}) : {inst.f} :="]
        terms = [
            f"({NODE_C[i]} : {inst.f}) * rho {outs[i]}" for i in range(5)
        ]
        lines.append("  " + terms[0])
        for term in terms[1:]:
            lines.append(f"    + {term}")
    return "\n".join(lines + footer())


def emit_leaf(inst: Instance) -> str:
    ns = "Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf"
    mod = f"Shieldd.GnarkFormal.Extracted.Deployed.{LEAF_STEM}"
    lines = header([
        f"import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg{inst.seg}Base",
        "import ShielddGnarkFormal.Deployed.StateCommitmentPathLeaf.SemanticBridge",
        "import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection",
    ])
    lines += [
        f"theorem seg{inst.seg}_scp_leaf_eq (rho : Nat -> {inst.f}) (h : Seg{inst.seg}.relation rho) :",
        f"    {inst.leaf_out_def()} rho = {P1} ({DOM_NUM} : {inst.f}) (rho {inst.commitment}) := by",
    ]
    dtk.emit_unpack(lines_sp(lines), inst.cfg, set(range(LEAF_ROW_COUNT)))
    lines += [
        f"  have hrel : {mod}.relation (rho {inst.commitment})",
        f"      (fun x y => x = rho {inst.leaf_lanes[0]} ∧ y = rho {inst.leaf_lanes[1]}) := by",
        f"    unfold {mod}.relation",
    ]
    emit_refine_chain(lines, inst, LEAF_STEM, LEAF_SEGMENTS, 0)
    lines += [
        "    exact ⟨rfl, rfl⟩",
        f"  have hs := {ns}.relation_sound_permSpec (rho {inst.commitment}) _ hrel",
        "  rcases hs with ⟨x, y, ⟨rfl, rfl⟩, hs⟩",
        f"  simpa [{inst.leaf_out_def()}, {ns}.s38_1,",
        "    Shieldd.GnarkFormal.Deployed.Poseidon1Link.row2,",
        f"    {ns}.tctLeafDomainLit, {LEAF_LIT}] using hs",
    ]
    return "\n".join(lines + footer())


def lines_sp(lines: list[str]) -> list[str]:
    """emit_unpack appends newline-terminated lines; adapt to our list-of-str."""

    class _Adapter(list):
        def append(self, item):
            list.append(lines, item.rstrip("\n"))

        def __setitem__(self, idx, item):
            lines[idx] = item.rstrip("\n")

        def __getitem__(self, idx):
            return lines[idx] + "\n"

    return _Adapter()


def emit_node(inst: Instance, k: int) -> str:
    lv = inst.levels[k]
    ns = f"Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode{k}"
    stem = node_stem(k)
    mod = f"Shieldd.GnarkFormal.Extracted.Deployed.{stem}"
    pub = f"(rho {lv.s0}) (rho {lv.s1}) (rho {lv.s2}) " + " ".join(
        f"(rho {t})" for t in lv.t
    )
    outs = lv.lanes
    kfun = (
        "fun o0 o1 o2 o3 o4 => "
        + " ∧ ".join(f"o{i} = rho {outs[i]}" for i in range(5))
    )
    lines = header([
        f"import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg{inst.seg}Base",
        f"import ShielddGnarkFormal.Deployed.StateCommitmentPathNode{k}.SemanticBridge",
        "import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection",
    ])
    lines += [
        f"theorem seg{inst.seg}_scp_node{k}_eq (rho : Nat -> {inst.f}) (h : Seg{inst.seg}.relation rho) :",
        f"    {inst.node_out_def(k)} rho =",
        f"      {P4} {inst.dom_expr(k)}",
        f"        {inst.perm_args(lv)} := by",
    ]
    dtk.emit_unpack(
        lines_sp(lines), inst.cfg,
        set(range(perm_base(k), perm_base(k) + NODE_ROW_COUNT)),
    )
    lines += [
        f"  have hrel : {mod}.relation {pub}",
        f"      ({kfun}) := by",
        f"    unfold {mod}.relation",
    ]
    emit_refine_chain(lines, inst, stem, NODE_SEGMENTS, perm_base(k))
    lines += [
        "    exact ⟨rfl, rfl, rfl, rfl, rfl⟩",
        f"  have hs := {ns}.relation_sound_permSpec {pub} _ hrel",
        f"  have hd : {ns}.tctNode{k + 1}DomainLit = ({DOM_NUM} : {ns}.F) + ({k + 1} : {ns}.F) := by",
        "    decide",
        "  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩",
        "  rw [hd] at hs",
        f"  simpa [{inst.node_out_def(k)}, {ns}.s38_1,",
        "    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs",
    ]
    return "\n".join(lines + footer())


def emit_steps(inst: Instance) -> str:
    imports = [
        f"import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg{inst.seg}Leaf"
    ] + [
        f"import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg{inst.seg}Node{k}"
        for k in range(LEVELS)
    ]
    lines = header(imports)
    for k, lv in enumerate(inst.levels):
        base = sel_base(k)
        keep = [base + off for off in SEL_I_OFFS + SEL_T_OFFS]
        cur = inst.cur_expr(k)
        cur_unfold = inst.leaf_out_def() if k == 0 else inst.node_out_def(k - 1)
        hi_rows = [base + off for off in SEL_I_OFFS]
        ht_rows = [base + off for off in SEL_T_OFFS]
        # hypotheses mentioning `cur`: h0 (t0), h2 (t2), h4 (t4), h5 (t5)
        cur_needed = {ht_rows[0], ht_rows[2], ht_rows[4], ht_rows[5]}
        lines += [
            f"theorem seg{inst.seg}_scp_step{k} (rho : Nat -> {inst.f}) (h : Seg{inst.seg}.relation rho) :",
            f"    {inst.node_out_def(k)} rho =",
            f"      {RECOVER_STEP} {P4} {inst.dom_expr(k)}",
            f"        {cur} (rho {lv.s0}) (rho {lv.s1}) (rho {lv.s2})",
            f"        (rho {lv.b0}) (rho {lv.b1}) := by",
            f"  have hnode := seg{inst.seg}_scp_node{k}_eq rho h",
        ]
        dtk.emit_unpack(lines_sp(lines), inst.cfg, set(keep))
        proofs = [row_proof(inst, r) for r in hi_rows]
        proofs += [
            row_proof(inst, r, unfold_extra=cur_unfold if r in cur_needed else "")
            for r in ht_rows
        ]
        lines += [
            "  exact hnode.trans",
            f"    ({SCP}.recoverStep_eq {P4} {inst.dom_expr(k)}",
            f"      {cur} (rho {lv.s0}) (rho {lv.s1}) (rho {lv.s2})",
            f"      (rho {lv.b0}) (rho {lv.b1})",
            f"      (rho {lv.i0}) (rho {lv.i1}) (rho {lv.i2}) (rho {lv.i3})",
            "      " + " ".join(f"(rho {t})" for t in lv.t),
        ]
        for proof in proofs:
            lines.append(f"      {proof}")
        lines[-1] += ")"
        lines.append("")
    # booleanity + recompose
    lines += [
        f"theorem seg{inst.seg}_scp_bits_bool (rho : Nat -> {inst.f}) (h : Seg{inst.seg}.relation rho) :",
        f"    ∀ i : Nat, i < {BOOL_COUNT} →",
        f"      rho ({inst.bits_base} + i) = 0 ∨ rho ({inst.bits_base} + i) = 1 := by",
    ]
    dtk.emit_unpack(
        lines_sp(lines), inst.cfg,
        set(range(BOOL_BASE_ROW, BOOL_BASE_ROW + BOOL_COUNT)),
    )
    for j in range(BOOL_COUNT):
        row = BOOL_BASE_ROW + j
        wire = inst.bits_base + j
        lines += [
            f"  have hb{j} : rho {wire} = 0 ∨ rho {wire} = 1 :=",
            f"    (mul_eq_zero.mp (show rho {wire} * (1 - rho {wire}) = 0 by",
            f"      unfold Seg{inst.seg}.relationRow{row} at r{row}; "
            f"linear_combination r{row})).imp",
            "      id (fun hx => by linear_combination -hx)",
        ]
    lines += [
        "  intro i hi",
        "  interval_cases i",
    ]
    for j in range(BOOL_COUNT):
        lines.append(f"  · simpa using hb{j}")
    lines += [
        "",
        f"theorem seg{inst.seg}_scp_recompose (rho : Nat -> {inst.f}) (h : Seg{inst.seg}.relation rho) :",
        f"    rho {inst.position} = {recompose_sum(inst, inst.f)} := by",
    ]
    dtk.emit_unpack(lines_sp(lines), inst.cfg, {RECOMP_ROW})
    lines += [
        f"  unfold Seg{inst.seg}.relationRow{RECOMP_ROW} at r{RECOMP_ROW}",
        f"  linear_combination -r{RECOMP_ROW}",
    ]
    return "\n".join(lines + footer())


def recompose_sum(inst: Instance, ftype: str) -> str:
    terms = [
        f"({1 << j} : {ftype}) * rho ({inst.bits_base} + {j})"
        for j in range(BOOL_COUNT)
    ]
    return "\n      ".join(
        [terms[0]] + [f"+ {t}" for t in terms[1:]]
    )


def root_lc(inst: Instance, ftype: str) -> str:
    outs = inst.levels[-1].lanes
    terms = [f"({NODE_C[i]} : {ftype}) * rho {outs[i]}" for i in range(5)]
    return "\n      ".join([terms[0]] + [f"+ {t}" for t in terms[1:]])


def emit_head(inst: Instance) -> str:
    lines = header([
        f"import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg{inst.seg}Steps",
    ])
    lines += [
        f"theorem seg{inst.seg}_sound (rho : Nat -> {inst.f}) (h : Seg{inst.seg}.relation rho) :",
        f"    Seg{inst.seg}.spec rho := by",
        f"  unfold Seg{inst.seg}.spec Specs.deployedSpec{inst.seg}",
        f"  have e := seg{inst.seg}_scp_leaf_eq rho h",
        f"  have a0 := seg{inst.seg}_scp_step0 rho h",
        "  rw [e] at a0",
    ]
    for k in range(1, LEVELS):
        lines += [
            f"  have a{k} := seg{inst.seg}_scp_step{k} rho h",
            f"  rw [a{k - 1}] at a{k}",
        ]
    lines += [
        f"  refine ⟨seg{inst.seg}_scp_bits_bool rho h, seg{inst.seg}_scp_recompose rho h, ?_⟩",
        f"  simpa [{inst.node_out_def(LEVELS - 1)}, {SCP}.recover24H, {LEAF_LIT}] using a{LEVELS - 1}",
    ]
    return "\n".join(lines + footer())


def spec_text(inst: Instance) -> str:
    seg = inst.seg
    return f"""/-- Deployed state-commitment Merkle path endpoint (seg{seg}): the position
bits are boolean and recompose to the position input, and the root output LC
equals the 24-level per-height-domain quad-Merkle recovery of the committed
leaf hash. -/
def deployedSpec{seg} (rho : Nat → DeployedF) : Prop :=
  (∀ i : Nat, i < {BOOL_COUNT} →
      rho ({inst.bits_base} + i) = 0 ∨ rho ({inst.bits_base} + i) = 1) ∧
  rho {inst.position} = {recompose_sum(inst, 'DeployedF')} ∧
  {root_lc(inst, 'DeployedF')}
    = Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recover24H
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4
      (fun k => (545001158149490383238005163525397553024965043366546261617421270984613353336 : DeployedF)
        + ((k + 1 : Nat) : DeployedF))
      (Shieldd.GnarkFormal.Poseidon1Bridge.permSpec1
        (545001158149490383238005163525397553024965043366546261617421270984613353336 : DeployedF)
        (rho {inst.commitment}))
      (fun k => rho ({inst.levels[0].s0} - 3 * k)) (fun k => rho ({inst.levels[0].s1} - 3 * k))
      (fun k => rho ({inst.levels[0].s2} - 3 * k))
      (fun k => rho ({inst.bits_base} + 2 * k)) (fun k => rho ({inst.bits_base + 1} + 2 * k))
"""


def main() -> None:
    specs = []
    for seg in INSTANCES:
        inst = Instance(seg)
        (CONTRACTS / f"ScpAdapterSeg{seg}Base.lean").write_text(emit_base(inst) + "\n")
        (CONTRACTS / f"ScpAdapterSeg{seg}Leaf.lean").write_text(emit_leaf(inst) + "\n")
        for k in range(LEVELS):
            (CONTRACTS / f"ScpAdapterSeg{seg}Node{k}.lean").write_text(
                emit_node(inst, k) + "\n"
            )
        (CONTRACTS / f"ScpAdapterSeg{seg}Steps.lean").write_text(emit_steps(inst) + "\n")
        (CONTRACTS / f"ScpAdapterSeg{seg}.lean").write_text(emit_head(inst) + "\n")
        specs.append(spec_text(inst))
        print(f"seg{seg}: emitted Base + Leaf + {LEVELS} nodes + Steps + head")
    (HERE / "scp_specs_snippet.txt").write_text("\n".join(specs))
    print("spec snippet -> gen/scp_specs_snippet.txt")


if __name__ == "__main__":
    main()
