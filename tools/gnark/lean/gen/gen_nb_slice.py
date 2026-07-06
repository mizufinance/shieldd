#!/usr/bin/env python3
"""Generate the deployed net-balance-commitment adapter for consolidate2x1 seg52.

Sibling of `gen_dtk_slice.py` (see its module docstring for the StructuredLC
contract; the same rules apply verbatim). Seg52 is one instance, not a seated
family: 2-in/1-out net balance = poseidonPerm1 prefix + encode-to-curve +
three variable-base value ladders (DTK rung shape, 128 rungs each) + one
fixed-base blinding ladder (rvk rung shape, 251 bits) + final Edwards add.

Bridge target is `NetBalanceCommitmentBridge.decaf377_netBalanceCommitment_sound`
(the non-"2" variant: zero+in0+in1+out0+blind legs — structurally exact for the
2x1 gate stream; only the zero leg is synthetic). The manifest's per-op
`bridge_theorem` string names the "2" variant because the op is shared with
transfer 2x2; the coverage gate pins inst52_bound + Seg52, not that string.

Recovery layer below is self-checking (fail-closed asserts against the raw
`.sr1cs` rows); emitters land in a follow-up.
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
SEG_START, ROW_COUNT = 47848, 8601
OUT_X_WIRE, OUT_Y_WIRE = 52987, 52988
FINAL_ADD_ROWS = range(8595, 8601)

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
        raise ValueError(f"expected {ROW_COUNT} seg52 rows, got {len(rows)}")
    return rows


def singleton_wire(side: Lc) -> int:
    if len(side) != 1:
        raise ValueError(f"expected singleton wire side, got {side}")
    wire, coeff = next(iter(side.items()))
    if wire == 0 or coeff != 1:
        raise ValueError(f"expected coefficient-one witness, got {side}")
    return wire


@dataclass(frozen=True)
class ValueLadder:
    """One 128-bit variable-base value ladder (DTK rung shape)."""

    label: str
    bit_base: int          # booleanity wires bit_base .. bit_base+127
    binary_rows: tuple[int, int]   # inclusive row span of the to_binary block
    copy_row: int          # 1*LcN = 1*rho(amount) recomposition/copy row
    amount_wire: int       # external amount wire
    acc_x_start: int       # accumulator AP: x_i = acc_x_start + 13*i
    row_lo: int
    row_hi: int            # exclusive search bound


VALUE_LADDERS = (
    ValueLadder("in0", 45808, (1416, 1543), 1544, 15, 45936, 1544, 3203),
    ValueLadder("in1", 47594, (3203, 3330), 3331, 105, 47722, 3331, 4996),
    ValueLadder("out0", 49386, (4996, 5123), 5124, 193, 49514, 5124, 6789),
)

# Blinding fixed-base ladder (rvk shape). Seed term: bits[0] wire folded into
# every accumulator row (same encoding as rvk — see memory rvk-fixedbase-bit0).
BLIND_BIT_BASE = 51178          # booleanity wires 51178 .. 51428 (251 bits)
BLIND_BINARY_ROWS = (6789, 7039)
BLIND_COPY_ROW = 7040           # 1*Lc13 = 1*rho 5
BLIND_WIRE = 5
# Accumulator wire pairs: 149 at stride 5, then 101 at stride 8 (250 rungs;
# rung k consumes bit wire BLIND_BIT_BASE+1+k).
BLIND_ACCS = tuple(
    [(51432 + 5 * k, 51433 + 5 * k) for k in range(149)]
    + [(52180 + 8 * j, 52181 + 8 * j) for j in range(101)]
)

ASSET_ID_WIRE = 16
POSEIDON_PREFIX_ROWS = (0, 232)
POSEIDON_ROW_COUNT = 230
POSEIDON_DOMAIN = 6888358618106443442961843809729175081075858965522240584763322653509542282215
POSEIDON_MODULE = "NetBalancePoseidon230_6eb4e5"
ENCODE_BINARY_ROWS = (258, 510)  # encode's 253-bit to_binary
ENCODE_COPY_ROW = 511            # 1*Lc9 = 1*rho 44814
ENCODE_INPUT_WIRE = 44814
ENCODE_BIT_BASE = 44818
ENCODE_OUTPUT_X = 45162
ENCODE_OUTPUT_Y = 45164
ENCODE_CANON = dtk.CanonicalBlock(
    "Canon", ENCODE_INPUT_WIRE, ENCODE_BIT_BASE, ENCODE_BINARY_ROWS[0],
    ENCODE_COPY_ROW, ENCODE_COPY_ROW + 1,
)


def generate_poseidon_shape() -> list[list[int]]:
    """Emit the compact 46-S-box width-2 Poseidon prefix and bridge metadata."""
    raw_rows = [
        dtk.parse_constraint(line.strip())
        for line in SR1CS.read_text().splitlines()
        if line.strip().startswith("(constraint ")
    ][SEG_START : SEG_START + POSEIDON_ROW_COUNT]
    if len(raw_rows) != POSEIDON_ROW_COUNT:
        raise ValueError("missing net-balance Poseidon rows")
    sboxes = [raw_rows[index : index + 5] for index in range(0, len(raw_rows), 5)]
    final_outputs: list[int] = []
    local_outputs: list[set[int]] = []
    for index, chunk in enumerate(sboxes):
        outputs = [dtk.singleton_output(row) for row in chunk]
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

    round_counts = [1, 2, 2, 2] + [1] * 31 + [2, 2, 2, 2]
    if sum(round_counts) != len(sboxes):
        raise AssertionError("bad Poseidon1 round count")
    groups: dict[str, list[str]] = {}
    seg2round: dict[str, int] = {}
    cursor = 0
    for round_index, count in enumerate(round_counts):
        groups[str(round_index)] = [
            f"w{wire}" for wire in final_outputs[cursor : cursor + count]
        ]
        for segment in range(cursor, cursor + count):
            seg2round[str(segment)] = round_index
        cursor += count

    required = set(int(wire[1:]) for wire in groups["38"])
    args: list[list[int]] = [[] for _ in sboxes]
    exits: list[list[int]] = [[] for _ in sboxes]
    for segment in range(len(sboxes) - 1, -1, -1):
        chunk = sboxes[segment]
        used = dtk.row_wires([(row[0], row[1], []) for row in chunk]) - local_outputs[segment]
        live_in = used | (required - local_outputs[segment])
        args[segment] = sorted(live_in)
        live_out = set(required)
        live_out.add(final_outputs[segment])
        exits[segment] = sorted(
            wire for wire in live_out if wire != final_outputs[segment]
        ) + [final_outputs[segment]]
        required = live_in

    shape: list[str] = []
    for row in raw_rows:
        for side in row:
            shape.append(str(len(side)) + ":")
            shape.extend(f"{coeff}@{wire}," for coeff, wire in side)
    digest = hashlib.sha256("".join(shape).encode()).hexdigest()
    module = f"NetBalancePoseidon230_{digest[:6]}"
    if module != POSEIDON_MODULE:
        raise ValueError(f"Poseidon shape changed: {module}")
    if args[0] != [ASSET_ID_WIRE]:
        raise ValueError(f"unexpected Poseidon live inputs {args[0]}")
    if exits[-1] != [44790, 44795]:
        raise ValueError(f"unexpected Poseidon exits {exits[-1]}")

    lines = [
        "import ProvenZk.Gates\n",
        "import ShielddGnarkFormal.Extracted.PoseidonHash1\n\n",
        "set_option linter.unusedVariables false\n",
        "set_option maxRecDepth 100000\n",
        "set_option maxHeartbeats 4000000\n\n",
        f"namespace Shieldd.GnarkFormal.Extracted.Deployed.{module}\n\n",
        "abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.PoseidonHash1.Order\n",
        "variable [Fact (Nat.Prime Order)]\n",
        "abbrev F := Shieldd.GnarkFormal.Extracted.PoseidonHash1.F\n\n",
    ]
    for segment, chunk in enumerate(sboxes):
        lines.append(dtk.emit_poseidon_segment(segment, args[segment], exits[segment], chunk))
    public_decl = " ".join(f"(w{wire} : F)" for wire in args[0])
    final_type = " -> ".join(["F"] * len(exits[-1])) + " -> Prop"
    lines.append(f"def relation {public_decl} (k : {final_type}) : Prop :=\n")
    indent = "  "
    for segment in range(len(sboxes)):
        use_args = " ".join(f"w{wire}" for wire in args[segment])
        use_exits = " ".join(f"w{wire}" for wire in exits[segment])
        lines.append(f"{indent}seg{segment} {use_args} (fun {use_exits} =>\n")
        indent += "  "
    lines.append(
        f"{indent}k " + " ".join(f"w{wire}" for wire in exits[-1])
        + ")" * len(sboxes) + "\n\n"
    )
    lines.append(f"end Shieldd.GnarkFormal.Extracted.Deployed.{module}\n")
    EXTRACTED_DEPLOYED.mkdir(parents=True, exist_ok=True)
    (EXTRACTED_DEPLOYED / f"{module}.lean").write_text("".join(lines))

    extracted = (FORMAL / "Extracted/NetBalanceCommitment.lean").read_text()
    poseidon_body = extracted.split("def poseidonPerm1", 1)[1].split(
        "def reducedStepOne", 1
    )[0]
    constant_rows = re.findall(
        r"vec!\[\((\d+):F\), \((\d+):F\)\]", poseidon_body
    )
    if len(constant_rows) != 39:
        raise ValueError(f"expected 39 Poseidon1 constant rows, got {len(constant_rows)}")
    constants = {
        str(index): list(values) for index, values in enumerate(constant_rows)
    }
    ranges: list[list[int]] = []
    current: list[int] = []
    cursor = 0
    for count in round_counts:
        segments = list(range(cursor, cursor + count))
        if current and len(current) + count > 8:
            ranges.append(current)
            current = []
        current.extend(segments)
        cursor += count
    if current:
        ranges.append(current)
    data = {
        "cs": constants,
        "groups": groups,
        "kind": {
            str(index): "full" if index < 4 or index >= 35 else "partial"
            for index in range(39)
        },
        "seg2round": seg2round,
        "ranges": ranges,
        "domain": str(POSEIDON_DOMAIN),
        "public_args": [f"w{ASSET_ID_WIRE}"],
        "spec_inputs": [f"w{ASSET_ID_WIRE}"],
        "seq": [
            "4222230874714185212124412469390773265687949667577031913967616727958704619521",
            "5629641166285580282832549959187697687583932890102709218623488970611606159361",
            "6333346312071277818186618704086159898531924501365547870951425091938056929281",
        ],
    }
    (Path(__file__).resolve().parent / "net_balance_gendata.json").write_text(
        json.dumps(data, indent=2) + "\n"
    )
    bridge = f"""import ShielddGnarkFormal.Extracted.Deployed.{module}
import ShielddGnarkFormal.Poseidon1Bridge

namespace Shieldd.GnarkFormal.Deployed.NetBalancePoseidon

open Shieldd.GnarkFormal.Poseidon1Bridge

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.{module}.Order)]

abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.{module}.F

def netBalanceDomainLit : F := ({POSEIDON_DOMAIN} : F)

theorem p17_from_rows (x v0 v1 v2 v3 v4 : F)
    (h0 : x * x = v0) (h1 : v0 * v0 = v1) (h2 : v1 * v1 = v2)
    (h3 : v2 * v2 = v3) (h4 : v3 * x = v4) :
    v4 = p17 x := by
  unfold p17
  rw [← h4, ← h3, ← h2, ← h1, ← h0]

end Shieldd.GnarkFormal.Deployed.NetBalancePoseidon
"""
    (FORMAL / "Deployed/NetBalancePoseidonDeployedBridge.lean").write_text(bridge)
    return [[dtk.singleton_output(row) for row in chunk] for chunk in sboxes]


def emit_poseidon_adapter(sbox_outputs: list[list[int]]) -> str:
    cfg = configure_contract_helpers()
    keep = set(range(POSEIDON_ROW_COUNT))
    lines = [
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Base",
        "import ShielddGnarkFormal.Deployed.NetBalancePoseidon.SemanticBridge",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 20000000",
        "set_option linter.unusedVariables false",
        "",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
        "def seg52PoseidonOut (rho : Nat -> Seg52.F) : Seg52.F :=",
        "  5629641166285580282832549959187697687583932890102709218623488970611606159361 * rho 44790 +",
        "    6333346312071277818186618704086159898531924501365547870951425091938056929281 * rho 44795",
        "",
        "theorem seg52_poseidon_eq (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :",
        "    seg52PoseidonOut rho =",
        "      Shieldd.GnarkFormal.Poseidon1Bridge.permSpec1",
        f"        ({POSEIDON_DOMAIN} : Seg52.F) (rho {ASSET_ID_WIRE}) := by",
    ]
    dtk.emit_unpack(lines, cfg, keep)
    relation = (
        "Shieldd.GnarkFormal.Extracted.Deployed."
        f"{POSEIDON_MODULE}.relation"
    )
    lines += [
        f"  have hrel : {relation} (rho {ASSET_ID_WIRE})",
        "      (fun x y => x = rho 44790 ∧ y = rho 44795) := by",
        f"    unfold {relation}",
    ]
    for segment, outputs in enumerate(sbox_outputs):
        lines.append(
            "    unfold Shieldd.GnarkFormal.Extracted.Deployed."
            f"{POSEIDON_MODULE}.seg{segment}"
        )
        lines.append(
            "    refine ⟨" + ", ".join(f"rho {wire}" for wire in outputs) + ", "
        )
        proofs = []
        for row in range(5 * segment, 5 * segment + 5):
            lcs = dtk.row_lc_defs(52, row)
            if lcs:
                names = " ".join(
                    [f"Seg52.relationRow{row}"] + [f"Seg52.{name}" for name in lcs]
                )
                proofs.append(
                    f"(by unfold {names} at r{row}; linear_combination r{row})"
                )
            else:
                proofs.append(f"(by simpa [Seg52.relationRow{row}] using r{row})")
        lines.append(", ".join(proofs) + ", ?_⟩")
    lines += [
        "    exact ⟨rfl, rfl⟩",
        "  have hs := Shieldd.GnarkFormal.Deployed.NetBalancePoseidon.relation_sound_permSpec "
        f"(rho {ASSET_ID_WIRE}) _ hrel",
        "  rcases hs with ⟨x, y, ⟨rfl, rfl⟩, hs⟩",
        "  simpa [seg52PoseidonOut,",
        "    Shieldd.GnarkFormal.Deployed.NetBalancePoseidon.s38_1,",
        "    Shieldd.GnarkFormal.Deployed.Poseidon1Link.row2,",
        "    Shieldd.GnarkFormal.Deployed.NetBalancePoseidon.netBalanceDomainLit] using hs",
        "",
        "end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
    ]
    return "\n".join(lines)


def emit_encode_pre() -> str:
    cfg = configure_contract_helpers()
    lines = [
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Poseidon",
        "import ShielddGnarkFormal.NetBalanceCommitmentBridge",
        "import ShielddGnarkFormal.CompressDeployedGadgets",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 20000000",
        "set_option linter.unusedVariables false",
        "",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
        "open Shieldd.GnarkFormal.DeployedGadgets",
        "",
        "def seg52YDen (rho : Nat -> Seg52.F) : Seg52.F :=",
        "  36517849 * rho 44817 - 1",
        "",
        "theorem seg52_encode_pre (rho : Nat -> Seg52.F) (h : Seg52.relation rho)",
        "    (k : Seg52.F -> Seg52.F -> Prop) (hk : k (rho 44814) (seg52YDen rho)) :",
        "    Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve.encodeSeg0",
        "      (seg52PoseidonOut rho) (rho 44799) (rho 44800) k := by",
    ]
    dtk.emit_unpack(lines, cfg, set(range(230, 258)))
    for row in range(230, 258):
        dtk.emit_row_unfold(lines, cfg, row)
    lines += [
        "  have hp0 : (8444461749428370424248824938781546531375899335154063827935233455917409239041 : Seg52.F) = 0 := by decide",
        "  have hws : GatesDef.is_bool (rho 44799) :=",
        "    is_bool_of_row _ (by linear_combination r233)",
        "  have hz : GatesDef.is_zero (rho 44798) (rho 44801) := by",
        "    refine is_zero_of_hint _ (rho 44802) _ ?_ ?_",
        "    · linear_combination -r234",
        "    · linear_combination r235",
        "  have hzBool : GatesDef.is_bool (rho 44801) := by",
        "    rcases hz with hz | hz",
        "    · rw [hz.2]; exact is_bool_of_row 0 (by ring)",
        "    · rw [hz.2]; exact is_bool_of_row 1 (by ring)",
        "  have hsel15 : GatesDef.select (rho 44801) 1 (rho 44798)",
        "      (rho 44798 + rho 44803) := by",
        "    refine select_of_row _ _ _ _ hzBool ?_",
        "    linear_combination -r236",
        "  have hinv16 : GatesDef.inv (rho 44798 + rho 44803) (rho 44804) :=",
        "    inv_of_mul _ _ (by linear_combination r237)",
        "  have hnotWs : GatesDef.is_bool (1 - rho 44799) := by",
        "    apply is_bool_of_row",
        "    linear_combination r241",
        "  have hnotZ : GatesDef.is_bool (1 - rho 44801) := by",
        "    apply is_bool_of_row",
        "    linear_combination r243",
        "  have hand22 : GatesDef.and (1 - rho 44799) (rho 44801) (rho 44807) := by",
        "    refine and_of_row _ _ _ hnotWs hzBool ?_",
        "    linear_combination -r242",
        "  have hand23 : GatesDef.and (1 - rho 44799) (1 - rho 44801) (rho 44808) := by",
        "    refine and_of_row _ _ _ hnotWs hnotZ ?_",
        "    linear_combination -r244",
        "  have hsel36 : GatesDef.select (rho 44799) 1 (-1) (-1 + 2 * rho 44799) := by",
        "    refine select_of_row _ _ _ _ hws ?_",
        "    ring",
        "  have hsel37 : GatesDef.select (rho 44799) 1 (seg52PoseidonOut rho)",
        "      (seg52PoseidonOut rho + rho 44812) := by",
        "    refine select_of_row _ _ _ _ hws ?_",
        "    unfold seg52PoseidonOut",
        "    linear_combination -r252 + (rho 44790 * rho 44799 + rho 44795 * rho 44799) * hp0",
        "  have hz31 : (51846360469424372753315419490737795860130232637253383835608017626494646496029159208 : Seg52.F) * rho 44796 - (73721756659725413972062831735380724728489729224093916166732287877872185443385920499235863720254620945400714281000442622466140288089673656635275829952593339392 : Seg52.F) * (rho 44796 * rho 44796) = 0 := by",
        "    linear_combination (rho 44796 * (6139688 : Seg52.F) - rho 44796 * rho 44796 * (8730190134938541092346690271902776538042097147509701931043324177298716948926374912 : Seg52.F)) * hp0",
        "  have hz32 : (17176035198337305442922109925481665644818579247703365826020264849336010392209394 : Seg52.F) * (rho 44797 * rho 44796) = 0 := by",
        "    linear_combination rho 44797 * rho 44796 * (2034 : Seg52.F) * hp0",
        "  unfold Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve.encodeSeg0",
        "  simp only [Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve.Gates,",
        "    GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub,",
        "    GatesDef.neg, GatesDef.eq]",
        "  refine ⟨rho 44796, ?_,",
        "    (2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 44796 : Seg52.F), rfl,",
        "    (3022 : Seg52.F), (by decide),",
        "    (3021 * (2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 44796) : Seg52.F), rfl,",
        "    (3021 * (2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 44796) - 3022 : Seg52.F), rfl,",
        "    (3022 * (2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 44796) : Seg52.F), rfl,",
        "    (3022 * (2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 44796) - 3021 : Seg52.F), rfl,",
        "    rho 44797, ?_,",
        "    (2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 44796 + 1 : Seg52.F), rfl,",
        "    (6042 : Seg52.F), rfl, (-6043 : Seg52.F), (by decide),",
        "    ((2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 44796 + 1) * (-6043) : Seg52.F), rfl,",
        "    rho 44798, ?_, hws, rho 44801, hz,",
        "    rho 44798 + rho 44803, hsel15, rho 44804, hinv16,",
        "    rho 44805, (by linear_combination -r238),",
        "    rho 44806, (by linear_combination -r239), (by linear_combination r240),",
        "    (1 - rho 44799 : Seg52.F), rfl, (1 - rho 44801 : Seg52.F), rfl,",
        "    rho 44807, hand22, rho 44808, hand23,",
        "    rho 44805 - rho 44804, rfl, rho 44809, (by linear_combination -r245),",
        "    (by linear_combination r246), rho 44810, (by linear_combination -r247),",
        "    (by linear_combination r248),",
        "    (2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 44804 : Seg52.F), rfl,",
        "    (rho 44805 - 2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 44804 : Seg52.F), rfl,",
        "    rho 44811, (by linear_combination -r249 + rho 44808 * rho 44804 * hp0), (by linear_combination r250),",
        "    rho 44799 + rho 44807, rfl, rho 44799 + rho 44807 + rho 44808, rfl,",
        "    (by linear_combination r251),",
        "    (-1 + 2 * rho 44799 : Seg52.F), hsel36,",
        "    seg52PoseidonOut rho + rho 44812, hsel37,",
        "    rho 44813, (by unfold seg52PoseidonOut; linear_combination -r253),",
        "    rho 44814, (by linear_combination -r254 + rho 44813 * rho 44796 * (2034 : Seg52.F) * hp0),",
        "    (6042 : Seg52.F), rfl, (-6043 : Seg52.F), (by decide), (1 - 2 * rho 44799 : Seg52.F), (by ring),",
        "    rho 44815, (by linear_combination -r255),",
        "    rho 44816, (by linear_combination -r256),",
        "    (2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 44796 - 1 : Seg52.F), rfl,",
        "    rho 44817, (by linear_combination -r257), (36517849 : Seg52.F), (by decide),",
        "    (36517849 * rho 44817 : Seg52.F), (by ring), seg52YDen rho, (by rfl), hk⟩",
        "  · unfold seg52PoseidonOut",
        "    linear_combination -r230",
        "  · linear_combination -r231 + hz31",
        "  · linear_combination -r232 + hz32",
        "",
        "end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
    ]
    return "\n".join(lines)


def emit_encode_post() -> str:
    cfg = configure_contract_helpers()
    lines = [
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Canon",
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52EncodePre",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 20000000",
        "set_option linter.unusedVariables false",
        "",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
        "open Shieldd.GnarkFormal.DeployedGadgets",
        "",
        "theorem seg52_encode_post (rho : Nat -> Seg52.F) (h : Seg52.relation rho)",
        "    (k : Seg52.F -> Seg52.F -> Prop) (hk : k (rho 45162) (rho 45164)) :",
        "    Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbEncodeSeg1K",
        "      (rho 44799) (rho 44814) (seg52YDen rho) k := by",
        "  have hrel := h",
    ]
    dtk.emit_unpack(lines, cfg, set(range(764, 776)))
    for row in range(764, 776):
        dtk.emit_row_unfold(lines, cfg, row)
    lines += [
        "  have hp0 : (8444461749428370424248824938781546531375899335154063827935233455917409239041 : Seg52.F) = 0 := by decide",
        "  have hz : GatesDef.is_zero (rho 44818 - rho 44799) (rho 45157) := by",
        "    refine is_zero_of_hint _ (rho 45158) _ ?_ ?_",
        "    · linear_combination -r764",
        "    · linear_combination r765",
        "  have hzBool : GatesDef.is_bool (rho 45157) := by",
        "    rcases hz with hz | hz",
        "    · rw [hz.2]; exact is_bool_of_row 0 (by ring)",
        "    · rw [hz.2]; exact is_bool_of_row 1 (by ring)",
        "  have hsel : GatesDef.select (rho 45157) (-rho 44814) (rho 44814)",
        "      (rho 44814 + rho 45159) := by",
        "    refine select_of_row _ _ _ _ hzBool ?_",
        "    linear_combination -r766",
        "  have hinvX : GatesDef.inv (1 - rho 45160) (rho 45161) :=",
        "    inv_of_mul _ _ (by linear_combination r768)",
        "  have hinvY : GatesDef.inv (seg52YDen rho) (rho 45163) := by",
        "    apply inv_of_mul",
        "    unfold seg52YDen",
        "    linear_combination r770",
        "  unfold Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbEncodeSeg1K",
        "  refine seg52Canon_canonical rho hrel _ ?_",
        "  simp only [Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve.Gates,",
        "    GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub,",
        "    GatesDef.neg, GatesDef.eq]",
        "  refine ⟨_, rfl, rho 45157, ?_,",
        "    -rho 44814, (by ring), rho 44814 + rho 45159, hsel,",
        "    rho 45160, (by linear_combination -r767),",
        "    (2 * (rho 44814 + rho 45159) : Seg52.F), rfl,",
        "    -rho 45160, (by linear_combination -rho 45160 * hp0),",
        "    (1 - rho 45160 : Seg52.F), (by ring),",
        "    -rho 45160, (by linear_combination -rho 45160 * hp0),",
        "    (1 + rho 45160 : Seg52.F), (by ring),",
        "    rho 45161, hinvX, rho 45162, (by linear_combination -r769),",
        "    rho 45163, hinvY, rho 45164, (by linear_combination -r771),",
        "    rho 45165, (by linear_combination -r772),",
        "    rho 45166, (by linear_combination -r773),",
        "    rho 45166 - rho 45165, rfl, (3021 * rho 45165 : Seg52.F), rfl,",
        "    rho 45167, (by linear_combination -r774), (1 + rho 45167 : Seg52.F), rfl,",
        "    (by linear_combination r775), hk⟩",
        "  · simp only [seg52CanonBits, List.Vector.getElem_def,",
        "      List.Vector.toList_ofFn, List.getElem_ofFn]",
        "    simpa using hz",
        "",
        "theorem seg52_value_base_onCurve (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :",
        "    EdwardsBridge.onCurve ⟨rho 45162, rho 45164⟩ := by",
    ]
    dtk.emit_unpack(lines, cfg, set(range(772, 776)), hname="h")
    for row in range(772, 776):
        dtk.emit_row_unfold(lines, cfg, row)
    lines += [
        "  simp only [EdwardsBridge.onCurve, EdwardsBridge.d]",
        "  linear_combination r775 - r772 + r773 - r774 -",
        "    (3021 : Seg52.F) * rho 45165 * r773 -",
        "    (3021 : Seg52.F) * rho 45164 * rho 45164 * r772",
        "",
        "end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
    ]
    return "\n".join(lines)


@dataclass(frozen=True)
class ScalarRung:
    """One variable-base rung: 6 add rows, selX/selY, 5 double rows."""

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


def value_rungs(rows: list[tuple[Lc, Lc, Lc]], ladder: ValueLadder) -> tuple[ScalarRung, ...]:
    """Mine the 128 DTK-shaped rungs of one value ladder (fail-closed)."""
    rungs: list[ScalarRung] = []
    cur_x = cur_y = 0
    for index in range(128):
        bit = ladder.bit_base + index
        delta_x = ladder.acc_x_start + 13 * index
        delta_y = delta_x + 1
        candidates = [
            row
            for row in range(ladder.row_lo, ladder.row_hi)
            if rows[row][2] == {delta_x: 1}
            and (bit in rows[row][0] or bit in rows[row][1])
        ]
        if len(candidates) != 1:
            raise ValueError(f"{ladder.label} rung {index}: selected-X rows {candidates}")
        select_x_row = candidates[0]
        select_y_row = select_x_row + 1
        if rows[select_y_row][2] != {delta_y: 1}:
            raise ValueError(f"{ladder.label} rung {index}: selected-Y row mismatch")
        add_rows = () if index == 0 else tuple(range(select_x_row - 6, select_x_row))
        double_rows = tuple(range(select_y_row + 1, select_y_row + 6))
        if index == 0:
            cur_x = singleton_wire(rows[double_rows[0]][0])
            cur_y = singleton_wire(rows[double_rows[0]][1])
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
    return tuple(rungs)


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
        acc_x_rows = [r for r in range(7041, 8601) if rows[r][2] == {acc_x: 1}]
        acc_y_rows = [r for r in range(7041, 8601) if rows[r][2] == {acc_y: 1}]
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
    if prev_end != 8593:
        raise ValueError(f"blinding ladder ended at row {prev_end}, expected 8593")
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
    seed_x_coeffs = {side.get(BLIND_BIT_BASE) for side in rows[7044]}
    seed_y_coeffs = {side.get(BLIND_BIT_BASE) for side in rows[7045]}
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
        "`L i` is the numeral point `2^i * blindGen` for the seg52 net-balance blinding",
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
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg52",
        "import ShielddGnarkFormal.Deployed.PrimeOrderAssumption",
        "import ShielddGnarkFormal.Extracted.CanonicalFqBits",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 20000000",
        "",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
        "instance seg52NbFactPrime : Fact (Nat.Prime Seg52.Order) :=",
        "  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩",
        "",
    ]
    bit_vectors = [
        ("seg52CanonBits", ENCODE_BIT_BASE, 253,
         "Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F"),
        *[(f"seg52{lad.label.capitalize()}Bits", lad.bit_base, 128, "Seg52.F")
          for lad in VALUE_LADDERS],
        ("seg52BlindBits", BLIND_BIT_BASE, 251, "Seg52.F"),
    ]
    for name, base, width, field in bit_vectors:
        out += [
            f"def {name} (rho : Nat -> Seg52.F) : List.Vector {field} {width} :=",
            f"  List.Vector.ofFn (fun i : Fin {width} => rho ({base} + i.val))",
            "",
            f"theorem {name}_get (rho : Nat -> Seg52.F) (i : Nat) (hi : i < {width}) :",
            f"    ({name} rho)[i]! = rho ({base} + i) := by",
            "  rw [getElem!_pos _ i (by simpa using hi)]",
            "  conv_lhs => rw [List.Vector.getElem_def]",
            f"  simp only [{name}, List.Vector.toList_ofFn, List.getElem_ofFn]",
            "",
        ]
    out += ["end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1", ""]
    return "\n".join(out)


def emit_canonical_modules() -> dict[str, str]:
    """Reuse the DTK canonical-chain emitter for the encode-to-curve block."""
    dtk.SOURCE_CONTRACTS = CONTRACTS_SOURCE
    dtk.ROW_COUNT = ROW_COUNT
    cfg = SimpleNamespace(seg=52)
    rows = dtk.relation_rows(52)
    stem = "NbAdapterSeg52Canon"
    modules = {
        f"{stem}Rec": dtk.emit_canon_recover(
            cfg, ENCODE_CANON, None, "NbAdapterSeg52Base"
        ),
        f"{stem}Binary": dtk.emit_canon_binary(
            cfg, ENCODE_CANON, f"{stem}Rec"
        ),
        f"{stem}TrueDefs": dtk.emit_canon_true_defs(
            cfg, ENCODE_CANON, rows, f"{stem}Binary"
        ),
    }
    previous = f"{stem}TrueDefs"
    for chunk_index, _ in enumerate(dtk.canon_chunks()):
        name = f"{stem}TrueChunk{chunk_index}"
        modules[name] = dtk.emit_canon_true_chunk(
            cfg, ENCODE_CANON, rows, previous, chunk_index
        )
        previous = name
    modules[f"{stem}True"] = dtk.emit_canon_true_thread(
        cfg, ENCODE_CANON, previous
    )
    previous = f"{stem}True"
    for chunk_index, _ in enumerate(dtk.canon_chunks()):
        name = f"{stem}CompareChunk{chunk_index}"
        modules[name] = dtk.emit_canon_compare_chunk(
            cfg, ENCODE_CANON, rows, previous, chunk_index
        )
        previous = name
    modules[f"{stem}Compare"] = dtk.emit_canon_compare(
        cfg, ENCODE_CANON, previous
    )
    modules[f"{stem}Chain"] = dtk.emit_canon_chain(
        cfg, ENCODE_CANON, f"{stem}Compare"
    )
    modules[stem] = dtk.emit_canon_block(
        cfg, block=ENCODE_CANON, previous=f"{stem}Chain"
    )
    return modules


VALUE_CHUNK_SIZE = 11


def configure_contract_helpers() -> SimpleNamespace:
    dtk.SOURCE_CONTRACTS = CONTRACTS_SOURCE
    dtk.ROW_COUNT = ROW_COUNT
    return SimpleNamespace(seg=52)


def value_prefix(ladder: ValueLadder) -> str:
    return f"seg52{ladder.label.capitalize()}"


def value_acc_name(ladder: ValueLadder, axis: str, index: int) -> str:
    return f"{value_prefix(ladder)}Acc{axis}{index}"


def value_chunks(rungs: tuple[ScalarRung, ...]) -> list[tuple[ScalarRung, ...]]:
    return [
        rungs[index:index + VALUE_CHUNK_SIZE]
        for index in range(0, len(rungs), VALUE_CHUNK_SIZE)
    ]


def emit_value_defs_module(
    ladders: dict[str, tuple[ScalarRung, ...]],
) -> str:
    out = [
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Base",
        "import ShielddGnarkFormal.Deployed.NetBalance.Ladder",
        "import ShielddGnarkFormal.RvkDeployedRung",
        "import ShielddGnarkFormal.StructuredLC",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 20000000",
        "set_option linter.unusedVariables false",
        "",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
    ]
    for ladder in VALUE_LADDERS:
        rungs = ladders[ladder.label]
        prefix = value_prefix(ladder)
        xs = [rung.delta_x for rung in rungs]
        ys = [rung.delta_y for rung in rungs]
        out += [
            f"def {prefix}AccX0 (_rho : Nat -> Seg52.F) : Seg52.F := 0",
            f"def {prefix}AccY0 (_rho : Nat -> Seg52.F) : Seg52.F := 1",
        ]
        for index in range(1, len(rungs) + 1):
            out += [
                f"def {prefix}AccX{index} (rho : Nat -> Seg52.F) : Seg52.F := "
                f"{dtk.compact_wire_expr(0, xs[:index], 'Seg52.F')}",
                f"def {prefix}AccY{index} (rho : Nat -> Seg52.F) : Seg52.F := "
                f"{dtk.compact_wire_expr(1, ys[:index], 'Seg52.F')}",
            ]
        out += [
            "",
            f"def {prefix}AccState (rho : Nat -> Seg52.F) : Nat -> EdwardsBridge.Point",
        ]
        for index in range(len(rungs) + 1):
            out.append(
                f"  | {index} => ⟨{prefix}AccX{index} rho, {prefix}AccY{index} rho⟩"
            )
        out += [
            "  | _ => ⟨0, 1⟩",
            "",
            f"def {prefix}CurState (rho : Nat -> Seg52.F) : Nat -> EdwardsBridge.Point",
            f"  | 0 => ⟨rho {rungs[0].cur_x}, rho {rungs[0].cur_y}⟩",
        ]
        for index, rung in enumerate(rungs, start=1):
            out.append(
                f"  | {index} => ⟨rho {rung.next_cur_x}, rho {rung.next_cur_y}⟩"
            )
        out += ["  | _ => ⟨0, 1⟩", ""]
    out += ["end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1", ""]
    return "\n".join(out)


def emit_value_row_projection(
    lines: list[str], name: str, keep_rows: set[int],
) -> None:
    cfg = configure_contract_helpers()
    ordered = sorted(keep_rows)
    conjunction = " ∧ ".join(f"Seg52.relationRow{row} rho" for row in ordered)
    lines += [
        f"theorem {name} (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :",
        f"    {conjunction} := by",
    ]
    dtk.emit_unpack(lines, cfg, keep_rows)
    lines += [f"  exact ⟨{', '.join(f'r{row}' for row in ordered)}⟩", ""]


def emit_value_rung(
    lines: list[str], ladder: ValueLadder, rung: ScalarRung,
    rows: list[tuple[Lc, Lc, Lc]],
) -> None:
    cfg = configure_contract_helpers()
    prefix = value_prefix(ladder)
    index = rung.index
    acc_x = value_acc_name(ladder, "X", index)
    acc_y = value_acc_name(ladder, "Y", index)
    next_acc_x = value_acc_name(ladder, "X", index + 1)
    next_acc_y = value_acc_name(ladder, "Y", index + 1)
    xs = [ladder.acc_x_start + 13 * i for i in range(128)]
    ys = [wire + 1 for wire in xs]
    current_x_compact = dtk.compact_wire_lc(0, xs[:index])
    current_y_compact = dtk.compact_wire_lc(1, ys[:index])
    next_x_compact = dtk.compact_wire_lc(0, xs[:index + 1])
    next_y_compact = dtk.compact_wire_lc(1, ys[:index + 1])
    ax, ay = f"{acc_x} rho", f"{acc_y} rho"
    nax, nay = f"{next_acc_x} rho", f"{next_acc_y} rho"
    cur_x, cur_y = f"rho {rung.cur_x}", f"rho {rung.cur_y}"
    next_cur_x, next_cur_y = f"rho {rung.next_cur_x}", f"rho {rung.next_cur_y}"
    sum_x, sum_y = f"rho {rung.sum_x}", f"rho {rung.sum_y}"
    rrows = dtk.rung_rows(rung, rows)
    projection = f"{prefix}_rows{index}"
    emit_value_row_projection(lines, projection, rrows)
    lines += [
        f"theorem {prefix}_rung{index} (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :",
        f"    ∀ (bit : Bool), rho {rung.bit} = Bool.toZMod bit →",
        f"      EdwardsBridge.onCurve ⟨{ax}, {ay}⟩ →",
        f"      EdwardsBridge.onCurve ⟨{cur_x}, {cur_y}⟩ →",
        "      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)",
        f"        ⟨{ax}, {ay}⟩ ⟨{cur_x}, {cur_y}⟩",
        f"        ⟨{nax}, {nay}⟩ ⟨{next_cur_x}, {next_cur_y}⟩ := by",
        f"  obtain ⟨{', '.join(f'r{row}' for row in sorted(rrows))}⟩ := {projection} rho h",
    ]
    for row in sorted(rrows):
        dtk.emit_row_unfold(lines, cfg, row)
    lines += [
        f"  intro bit hbit hacc hcur",
        f"  have hnextx : {nax} = {ax} + rho {rung.delta_x} := by",
        f"    unfold {next_acc_x} {acc_x}",
    ]
    dtk.emit_compact_acc_bridge(lines, next_x_compact, current_x_compact, "    ")
    lines += [
        f"  have hnexty : {nay} = {ay} + rho {rung.delta_y} := by",
        f"    unfold {next_acc_y} {acc_y}",
    ]
    dtk.emit_compact_acc_bridge(lines, next_y_compact, current_y_compact, "    ")
    if index == 0:
        lines += [
            "  have haddx :",
            f"      {sum_x} * (1 + 3021 * ({cur_y} * {ax}) * ({cur_x} * {ay})) =",
            f"        {cur_y} * {ax} + {cur_x} * {ay} := by",
            f"    unfold {acc_x} {acc_y}",
            "    ring",
            "  have haddy :",
            f"      {sum_y} * (1 - 3021 * ({cur_y} * {ax}) * ({cur_x} * {ay})) =",
            f"        (-1) * ({cur_y} * {ax}) - {cur_x} * {ay} +",
            f"          ({ay} - {ax} * (-1)) * ({cur_x} + {cur_y}) := by",
            f"    unfold {acc_x} {acc_y}",
            "    ring",
        ]
    else:
        a0, a1, a2, a3, a4, a5 = rung.add_rows
        t0 = singleton_wire(rows[a0][2])
        t1 = singleton_wire(rows[a1][2])
        t2 = singleton_wire(rows[a2][2])
        t3 = singleton_wire(rows[a3][2])
        acc_sum_row = dtk.acc_sum_row(rung, rows)
        if acc_sum_row is not None:
            acc_sum_wire = singleton_wire(rows[a0][0])
            lines += [
                f"  have hsum : {ax} + {ay} = rho {acc_sum_wire} := by",
                f"    unfold {acc_x} {acc_y}",
                f"    linear_combination r{acc_sum_row}",
                f"  have ha0 : ({cur_x} + {cur_y}) * ({ax} + {ay}) = rho {t0} := by",
                "    rw [hsum]",
                f"    linear_combination r{a0}",
            ]
        else:
            lines += [
                f"  have ha0 : ({cur_x} + {cur_y}) * ({ax} + {ay}) = rho {t0} := by",
                f"    unfold {acc_x} {acc_y}",
                f"    linear_combination r{a0}",
            ]
        lines += [
            f"  have ha1 : {cur_y} * {ax} = rho {t1} := by",
            f"    unfold {acc_x}",
            f"    linear_combination r{a1}",
            f"  have ha2 : {cur_x} * {ay} = rho {t2} := by",
            f"    unfold {acc_y}",
            f"    linear_combination r{a2}",
            f"  have ha3 : 3021 * rho {t1} * rho {t2} = rho {t3} := by",
            f"    linear_combination r{a3}",
            f"  have ha4 : {sum_x} * (1 + rho {t3}) = rho {t1} + rho {t2} := by",
            f"    linear_combination r{a4}",
            f"  have ha5 : {sum_y} * (1 - rho {t3}) = rho {t0} - rho {t1} - rho {t2} := by",
            f"    linear_combination r{a5}",
            "  have haddx :",
            f"      {sum_x} * (1 + 3021 * ({cur_y} * {ax}) * ({cur_x} * {ay})) =",
            f"        {cur_y} * {ax} + {cur_x} * {ay} := by",
            "    rw [ha1, ha2, ha3]",
            "    exact ha4",
            "  have haddy :",
            f"      {sum_y} * (1 - 3021 * ({cur_y} * {ax}) * ({cur_x} * {ay})) =",
            f"        (-1) * ({cur_y} * {ax}) - {cur_x} * {ay} +",
            f"          ({ay} - {ax} * (-1)) * ({cur_x} + {cur_y}) := by",
            "    rw [ha1, ha2, ha3]",
            "    calc",
            f"      {sum_y} * (1 - rho {t3}) = rho {t0} - rho {t1} - rho {t2} := ha5",
            f"      _ = (-1) * rho {t1} - rho {t2} + ({ay} - {ax} * (-1)) *",
            f"          ({cur_x} + {cur_y}) := by",
            "        rw [← ha0]",
            "        ring",
        ]
    lines += [
        f"  have hselx : {nax} = {ax} - Bool.toZMod bit * ({ax} - {sum_x}) := by",
        f"    have hd : rho {rung.delta_x} = Bool.toZMod bit * ({sum_x} - {ax}) := by",
        "      rw [← hbit]",
        f"      unfold {acc_x}",
        f"      linear_combination -r{rung.select_x_row}",
        "    rw [hnextx]",
        "    linear_combination hd",
        f"  have hsely : {nay} = {ay} - Bool.toZMod bit * ({ay} - {sum_y}) := by",
        f"    have hd : rho {rung.delta_y} = Bool.toZMod bit * ({sum_y} - {ay}) := by",
        "      rw [← hbit]",
        f"      unfold {acc_y}",
        f"      linear_combination -r{rung.select_y_row}",
        "    rw [hnexty]",
        "    linear_combination hd",
    ]
    d0, d1, d2, d3, d4 = rung.double_rows
    vxy = singleton_wire(rows[d0][2])
    vxx = singleton_wire(rows[d1][2])
    vyy = singleton_wire(rows[d2][2])
    lines += [
        f"  have hd0 : {cur_x} * {cur_y} = rho {vxy} := by linear_combination r{d0}",
        f"  have hd1 : {cur_x} * {cur_x} = rho {vxx} := by linear_combination r{d1}",
        f"  have hd2 : {cur_y} * {cur_y} = rho {vyy} := by linear_combination r{d2}",
        f"  have hd3 : {next_cur_x} * ({cur_y} * {cur_y} + {cur_x} * {cur_x} * (-1)) =",
        f"      2 * ({cur_x} * {cur_y}) := by",
        "    rw [hd0, hd1, hd2]",
        f"    linear_combination r{d3}",
        f"  have hd4 : {next_cur_y} * (2 - ({cur_y} * {cur_y} + {cur_x} * {cur_x} * (-1))) =",
        f"      {cur_y} * {cur_y} - {cur_x} * {cur_x} * (-1) := by",
        "    rw [hd1, hd2]",
        f"    linear_combination r{d4}",
        "  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel",
        f"    (Bool.toZMod bit) ⟨{ax}, {ay}⟩ ⟨{cur_x}, {cur_y}⟩",
        f"    ⟨{sum_x}, {sum_y}⟩ ⟨{nax}, {nay}⟩ ⟨{next_cur_x}, {next_cur_y}⟩",
        "    hacc hcur",
        "  · simpa [EdwardsBridge.d] using haddx",
        "  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy",
        "  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]",
        "  · exact hselx",
        "  · exact hsely",
        "  · simpa [EdwardsBridge.a_eq] using hd3",
        "  · simpa [EdwardsBridge.a_eq] using hd4",
        "",
    ]


def emit_value_hstep_chunk(
    lines: list[str], ladder: ValueLadder, chunk_index: int,
    subset: tuple[ScalarRung, ...],
) -> None:
    prefix = value_prefix(ladder)
    lo, hi = subset[0].index, subset[-1].index + 1
    lines += [
        f"theorem {prefix}_hstep_c{chunk_index} (rho : Nat -> Seg52.F)",
        "    (h : Seg52.relation rho) (bits : List.Vector Bool 128)",
        f"    (hbitAt : ∀ i, i < 128 → rho ({ladder.bit_base} + i) = Bool.toZMod bits[i]!) :",
        f"    ∀ i, {lo} ≤ i → i < {hi} →",
        f"      EdwardsBridge.onCurve ({prefix}AccState rho i) →",
        f"      EdwardsBridge.onCurve ({prefix}CurState rho i) →",
        "      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)",
        f"        ({prefix}AccState rho i) ({prefix}CurState rho i)",
        f"        ({prefix}AccState rho (i + 1)) ({prefix}CurState rho (i + 1)) := by",
        "  intro i hlo hhi hacc hcur",
        "  interval_cases i",
    ]
    for rung in subset:
        lines.append(
            f"  · exact {prefix}_rung{rung.index} rho h bits[{rung.index}]! "
            f"(hbitAt {rung.index} (by omega)) hacc hcur"
        )
    lines.append("")


def emit_value_chunk(
    ladder: ValueLadder, chunk_index: int, subset: tuple[ScalarRung, ...],
    rows: list[tuple[Lc, Lc, Lc]],
) -> str:
    lines = [
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 20000000",
        "set_option linter.unusedVariables false",
        "",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
    ]
    for rung in subset:
        emit_value_rung(lines, ladder, rung, rows)
    emit_value_hstep_chunk(lines, ladder, chunk_index, subset)
    lines += ["end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1", ""]
    return "\n".join(lines)


def emit_value_ladder(
    ladder: ValueLadder, rungs: tuple[ScalarRung, ...],
) -> str:
    prefix = value_prefix(ladder)
    chunks = value_chunks(rungs)
    lines = [
        *[
            f"import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1."
            f"NbAdapterSeg52{ladder.label.capitalize()}R{index}"
            for index in range(len(chunks))
        ],
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 20000000",
        "set_option linter.unusedVariables false",
        "",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
        f"theorem {prefix}_ladder (rho : Nat -> Seg52.F) (h : Seg52.relation rho)",
        "    (bits : List.Vector Bool 128)",
        f"    (hbits : seg52{ladder.label.capitalize()}Bits rho = bits.map Bool.toZMod)",
        "    (k : List.Vector Seg52.F 4 → Prop)",
        f"    (hk : k vec![({prefix}AccState rho 128).x, ({prefix}AccState rho 128).y,",
        f"      ({prefix}CurState rho 128).x, ({prefix}CurState rho 128).y])",
        f"    (hbase : EdwardsBridge.onCurve ⟨rho {rungs[0].cur_x}, rho {rungs[0].cur_y}⟩) :",
        "    Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbLadderK",
        f"      (seg52{ladder.label.capitalize()}Bits rho) k 128 0 ⟨0, 1⟩",
        f"      ⟨rho {rungs[0].cur_x}, rho {rungs[0].cur_y}⟩ ∧",
        f"    EdwardsBridge.onCurve ({prefix}AccState rho 128) := by",
        "  have hbitAt : ∀ i, i < 128 →",
        f"      rho ({ladder.bit_base} + i) = Bool.toZMod bits[i]! := by",
        "    intro i hi",
        f"    rw [← seg52{ladder.label.capitalize()}Bits_get rho i hi, hbits]",
        "    rw [getElem!_pos (bits.map Bool.toZMod) i (by simpa using hi),",
        "      getElem!_pos bits i (by simpa using hi), List.Vector.getElem_map]",
        "  have hstep : ∀ i, i < 128 →",
        f"      EdwardsBridge.onCurve ({prefix}AccState rho i) →",
        f"      EdwardsBridge.onCurve ({prefix}CurState rho i) →",
        "      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)",
        f"        ({prefix}AccState rho i) ({prefix}CurState rho i)",
        f"        ({prefix}AccState rho (i + 1)) ({prefix}CurState rho (i + 1)) := by",
        "    intro i hi hacc hcur",
    ]
    for chunk_index, subset in enumerate(chunks):
        hi_c = subset[-1].index + 1
        lo_arg = "(by omega)" if chunk_index == 0 else f"hb{chunk_index - 1}"
        if chunk_index == len(chunks) - 1:
            lines.append(
                f"    exact {prefix}_hstep_c{chunk_index} rho h bits hbitAt i "
                f"{lo_arg} hi hacc hcur"
            )
        else:
            lines += [
                f"    rcases Nat.lt_or_ge i {hi_c} with hb{chunk_index}|hb{chunk_index}",
                f"    · exact {prefix}_hstep_c{chunk_index} rho h bits hbitAt i "
                f"{lo_arg} hb{chunk_index} hacc hcur",
            ]
    lines += [
        "  constructor",
        "  · rw [hbits]",
        "    apply Shieldd.GnarkFormal.Deployed.NetBalance.stateTrace_to_nbLadderK",
        f"      bits k ({prefix}AccState rho) ({prefix}CurState rho) hstep",
        "      (by intro _; exact hk) 128 0 (by omega)",
        "    · exact EdwardsBridge.identity_onCurve",
        "    · exact hbase",
        "  · exact Shieldd.GnarkFormal.Deployed.NetBalance.stateTrace_final_onCurve",
        f"      bits ({prefix}AccState rho) ({prefix}CurState rho) hstep",
        "      EdwardsBridge.identity_onCurve hbase",
        "",
        "end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
    ]
    return "\n".join(lines)


def emit_value_modules(
    seating: dict,
) -> dict[str, str]:
    modules = {
        "NbAdapterSeg52ValueDefs": emit_value_defs_module(seating["value"]),
    }
    for ladder in VALUE_LADDERS:
        rungs = seating["value"][ladder.label]
        for chunk_index, subset in enumerate(value_chunks(rungs)):
            modules[f"NbAdapterSeg52{ladder.label.capitalize()}R{chunk_index}"] = (
                emit_value_chunk(ladder, chunk_index, subset, seating["rows"])
            )
        modules[f"NbAdapterSeg52{ladder.label.capitalize()}"] = (
            emit_value_ladder(ladder, rungs)
        )
    return modules


BLIND_CHUNK_SIZE = 10


def blind_delta_name(axis: str, index: int) -> str:
    return f"seg52BlindDelta{axis}{index}"


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
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Base",
        "import ShielddGnarkFormal.Deployed.NetBalance.Ladder",
        "import ShielddGnarkFormal.NbFixedGenSeg52",
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
        lines.append(f"def {blind_delta_name(axis, 0)} (_rho : Nat -> Seg52.F) : Seg52.F := 0")
        for index in range(1, len(wires) + 1):
            lines.append(
                f"def {blind_delta_name(axis, index)} (rho : Nat -> Seg52.F) : Seg52.F := "
                f"{dtk.compact_wire_expr(0, wires[:index], 'Seg52.F')}"
            )
        lines.append("")
    lines += [
        "def seg52BlindAccState (rho : Nat -> Seg52.F) : Nat -> EdwardsBridge.Point",
        "  | 0 => ⟨0, 1⟩",
        "  | 1 => Shieldd.GnarkFormal.Deployed.NetBalance.seedAcc (rho 51178)",
    ]
    for state in range(2, 252):
        delta = state - 1
        lines.append(
            f"  | {state} => ⟨(({NB_GX} : Seg52.F) * rho 51178 + "
            f"{blind_delta_name('X', delta)} rho : Seg52.F), "
            f"((1 : Seg52.F) + ({NB_GYM1} : Seg52.F) * rho 51178 + "
            f"{blind_delta_name('Y', delta)} rho : Seg52.F)⟩"
        )
    lines += [
        "  | _ => ⟨0, 1⟩",
        "",
        "end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
    ]
    return "\n".join(lines)


def emit_blind_projection(
    lines: list[str], k: int, keep_rows: set[int],
) -> None:
    emit_value_row_projection(lines, f"seg52Blind_rows{k}", keep_rows)


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
        f"theorem seg52Blind_rung{k} (rho : Nat -> Seg52.F) (h : Seg52.relation rho)",
        f"    (bit : Bool) (hbitValue : rho {rung.bit} = Bool.toZMod bit)",
        f"    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho {k})) :",
        "    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel",
        f"      {k} (Bool.toZMod bit) (seg52BlindAccState rho {k})",
        f"      (seg52BlindAccState rho {k + 1}) := by",
        f"  obtain ⟨{', '.join(f'r{row}' for row in sorted(keep))}⟩ := seg52Blind_rows{k} rho h",
    ]
    for row in sorted(keep):
        dtk.emit_row_unfold(lines, cfg, row)
    emit_blind_delta_step(lines, rungs, k)
    previous = k - 1
    if k == 1:
        # Arm 1 of seg52BlindAccState is `seedAcc (rho 51178)`; `x + DeltaX0`
        # (i.e. `x + 0`) is not defeq for opaque ZMod terms, so state the
        # acc1-shaped pair without the zero delta.
        prev_pair = [
            f"    (Bool.toZMod bit) ⟨(({NB_GX} : Seg52.F) * rho 51178 : Seg52.F),",
            f"      ((1 : Seg52.F) + ({NB_GYM1} : Seg52.F) * rho 51178 : Seg52.F)⟩",
        ]
    else:
        prev_pair = [
            f"    (Bool.toZMod bit) ⟨(({NB_GX} : Seg52.F) * rho 51178 + {blind_delta_name('X', previous)} rho : Seg52.F),",
            f"      ((1 : Seg52.F) + ({NB_GYM1} : Seg52.F) * rho 51178 + {blind_delta_name('Y', previous)} rho : Seg52.F)⟩",
        ]
    lines += [
        f"  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel {k}",
        *prev_pair,
        f"    ⟨(({NB_GX} : Seg52.F) * rho 51178 + {blind_delta_name('X', k)} rho : Seg52.F),",
        f"      ((1 : Seg52.F) + ({NB_GYM1} : Seg52.F) * rho 51178 + {blind_delta_name('Y', k)} rho : Seg52.F)⟩",
        # k=1: next-state deltas are single wires, defeq by delta unfold; the
        # hnext rewrites would introduce a non-defeq `Delta0 + wire` shape.
        ("  rw [← hbitValue]" if k == 1 else "  rw [hnextx, hnexty, ← hbitValue]"),
    ]
    r_v2, r_add_x, r_add_y, r_sel_x, r_sel_y = rung.block_rows
    v2 = singleton_wire(rows[r_v2][2])
    sx = singleton_wire(rows[r_add_x][0])
    sy = singleton_wire(rows[r_add_y][0])
    theorem = "rung1" if k == 1 else f"rung{k}_wide"
    args = ["(rho 51178)", f"(rho {rung.bit})"]
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
        f"  apply Shieldd.GnarkFormal.NbFixedGenSeg52.{theorem} {' '.join(args)} hacc",
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
        f"theorem seg52Blind_rung{k} (rho : Nat -> Seg52.F) (h : Seg52.relation rho)",
        f"    (bit : Bool) (hbitValue : rho {cert.bit} = Bool.toZMod bit)",
        f"    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho {k})) :",
        "    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel",
        f"      {k} (Bool.toZMod bit) (seg52BlindAccState rho {k})",
        f"      (seg52BlindAccState rho {k + 1}) := by",
        f"  obtain ⟨{', '.join(f'r{row}' for row in sorted(keep))}⟩ := seg52Blind_rows{k} rho h",
    ]
    for row in sorted(keep):
        dtk.emit_row_unfold(lines, cfg, row)
    emit_blind_delta_step(lines, rungs, k)
    previous = k - 1
    dx = f"{blind_delta_name('X', previous)} rho"
    dy = f"{blind_delta_name('Y', previous)} rho"
    lines += [
        f"  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel {k}",
        f"    (Bool.toZMod bit) ⟨(({NB_GX} : Seg52.F) * rho 51178 + {dx} : Seg52.F),",
        f"      ((1 : Seg52.F) + ({NB_GYM1} : Seg52.F) * rho 51178 + {dy} : Seg52.F)⟩",
        f"    ⟨(({NB_GX} : Seg52.F) * rho 51178 + {blind_delta_name('X', k)} rho : Seg52.F),",
        f"      ((1 : Seg52.F) + ({NB_GYM1} : Seg52.F) * rho 51178 + {blind_delta_name('Y', k)} rho : Seg52.F)⟩",
        "  rw [hnextx, hnexty, ← hbitValue]",
        # splitRung_stepRel's select-Y third arg is left-associated
        # ((1+g*b0+d1y) + sdy); reassociate the goal to match.
        f"  rw [← add_assoc ((1 : Seg52.F) + ({NB_GYM1} : Seg52.F) * rho 51178)",
        f"    ({dy}) (rho {cert.sdy})]",
        "  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel",
        f"    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb {k})",
        f"    ({NB_GX} : Seg52.F) ({NB_GYM1} : Seg52.F)",
        f"    ({cert.ak_x} : Seg52.F) ({cert.ak_y} : Seg52.F)",
        f"    ({cert.ev} : Seg52.F) ({cert.kv} : Seg52.F)",
        f"    ({cert.la} : Seg52.F) ({cert.lb} : Seg52.F)",
        f"    ({cert.rb} : Seg52.F) ({cert.cc} : Seg52.F)",
        f"    ({cert.px} : Seg52.F) ({cert.py} : Seg52.F)",
        f"    ({cert.qb0} : Seg52.F) ({cert.neg_gx} : Seg52.F) ({cert.neg_gym1} : Seg52.F)",
        f"    (rho 51178) ({dx}) ({dy}) (rho {cert.bit})",
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
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs",
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
        f"theorem seg52Blind_hstep_c{chunk_index} (rho : Nat -> Seg52.F)",
        "    (h : Seg52.relation rho) (bits : List.Vector Bool 251)",
        "    (hbitAt : ∀ i, i < 251 → rho (51178 + i) = Bool.toZMod bits[i]!) :",
        f"    ∀ i, {lo} ≤ i → i < {hi} →",
        "      EdwardsBridge.onCurve (seg52BlindAccState rho i) →",
        "      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i",
        "        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)",
        "        (seg52BlindAccState rho (i + 1)) := by",
        "  intro i hlo hhi hacc",
        "  interval_cases i",
    ]
    for rung in subset:
        k = rung.index + 1
        lines.append(
            f"  · exact seg52Blind_rung{k} rho h bits[{k}]! "
            f"(hbitAt {k} (by omega)) hacc"
        )
    lines += ["", "end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1", ""]
    return "\n".join(lines)


def emit_blind_ladder(rungs: tuple[BlindRung, ...]) -> str:
    chunks = blind_chunks(rungs)
    lines = [
        *[
            f"import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindR{index}"
            for index in range(len(chunks))
        ],
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 20000000",
        "set_option linter.unusedVariables false",
        "",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
        "theorem seg52Blind_ladder (rho : Nat -> Seg52.F) (h : Seg52.relation rho)",
        "    (bits : List.Vector Bool 251)",
        "    (hbits : seg52BlindBits rho = bits.map Bool.toZMod)",
        "    (k : List.Vector Seg52.F 4 → Prop)",
        "    (hk : k vec![(seg52BlindAccState rho 251).x,",
        "      (seg52BlindAccState rho 251).y,",
        "      (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 251).x,",
        "      (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 251).y]) :",
        "    Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbLadderK",
        "      (seg52BlindBits rho) k 251 0 ⟨0, 1⟩",
        "      Shieldd.GnarkFormal.Deployed.NetBalance.blindGen ∧",
        "    EdwardsBridge.onCurve (seg52BlindAccState rho 251) := by",
        "  have hbitAt : ∀ i, i < 251 →",
        "      rho (51178 + i) = Bool.toZMod bits[i]! := by",
        "    intro i hi",
        "    rw [← seg52BlindBits_get rho i hi, hbits]",
        "    rw [getElem!_pos (bits.map Bool.toZMod) i (by simpa using hi),",
        "      getElem!_pos bits i (by simpa using hi), List.Vector.getElem_map]",
        "  have hstep : ∀ i, i < 251 →",
        "      EdwardsBridge.onCurve (seg52BlindAccState rho i) →",
        "      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i",
        "        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)",
        "        (seg52BlindAccState rho (i + 1)) := by",
        "    intro i hi hacc",
        "    by_cases hzero : i = 0",
        "    · subst i",
        "      have hb0 : rho 51178 = Bool.toZMod bits[0]! := by",
        "        simpa using hbitAt 0 (by omega)",
        "      simpa [seg52BlindAccState, hb0] using",
        "        (Shieldd.GnarkFormal.Deployed.NetBalance.seedStepRel bits[0]!)",
        "    ·",
    ]
    for chunk_index, subset in enumerate(chunks):
        hi_c = subset[-1].index + 2
        lo_arg = "(by omega)" if chunk_index == 0 else f"hb{chunk_index - 1}"
        if chunk_index == len(chunks) - 1:
            lines.append(
                f"      exact seg52Blind_hstep_c{chunk_index} rho h bits hbitAt i "
                f"{lo_arg} hi hacc"
            )
        else:
            lines += [
                f"      rcases Nat.lt_or_ge i {hi_c} with hb{chunk_index}|hb{chunk_index}",
                f"      · exact seg52Blind_hstep_c{chunk_index} rho h bits hbitAt i "
                f"{lo_arg} hb{chunk_index} hacc",
            ]
    lines += [
        "  constructor",
        "  · rw [hbits]",
        "    apply Shieldd.GnarkFormal.Deployed.NetBalance.fixedTrace_to_nbLadderK",
        "      bits k (seg52BlindAccState rho) hstep (by intro _; exact hk)",
        "      251 0 (by omega)",
        "    exact EdwardsBridge.identity_onCurve",
        "  · exact Shieldd.GnarkFormal.Deployed.NetBalance.fixedTrace_final_onCurve",
        "      bits (seg52BlindAccState rho) hstep EdwardsBridge.identity_onCurve",
        "",
        "end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
    ]
    return "\n".join(lines)


def emit_blind_modules(seating: dict) -> dict[str, str]:
    rungs = seating["blind"]
    modules = {"NbAdapterSeg52BlindDefs": emit_blind_defs_module(rungs)}
    for chunk_index, subset in enumerate(blind_chunks(rungs)):
        modules[f"NbAdapterSeg52BlindR{chunk_index}"] = emit_blind_chunk(
            chunk_index, subset, rungs, seating["rows"]
        )
    modules["NbAdapterSeg52Blind"] = emit_blind_ladder(rungs)
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
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Base",
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.CompressAdapterCommon",
        "import ShielddGnarkFormal.RvkToBinary",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 20000000",
        "set_option linter.unusedVariables false",
        "",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
        f"theorem {bits_name}_toBinary (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :",
        f"    GatesDef.to_binary (rho {input_wire}) {width} ({bits_name} rho) := by",
    ]
    dtk.emit_unpack(lines, cfg, set(rows + [rec_row]))
    for row in rows:
        lines.append(f"  unfold Seg52.relationRow{row} at r{row}\n")
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
    for ladder in VALUE_LADDERS:
        name = f"seg52{ladder.label.capitalize()}Bits"
        modules[f"NbAdapterSeg52{ladder.label.capitalize()}Bits"] = emit_to_binary_module(
            ladder.label.capitalize(), name, ladder.bit_base, 128,
            ladder.binary_rows, ladder.copy_row, ladder.amount_wire,
        )
    modules["NbAdapterSeg52BlindBits"] = emit_to_binary_module(
        "Blind", "seg52BlindBits", BLIND_BIT_BASE, 251,
        BLIND_BINARY_ROWS, BLIND_COPY_ROW, BLIND_WIRE,
    )
    return modules


def emit_adds() -> str:
    cfg = configure_contract_helpers()
    rows = [*range(4990, 4996), *range(6783, 6789), *range(8595, 8601)]
    lines = [
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52In0",
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52In1",
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Out0",
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Blind",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 20000000",
        "set_option linter.unusedVariables false",
        "",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
    ]

    def theorem(
        name: str, row0: int, p: str, q: str, out: str, temps: tuple[int, int, int, int],
        state_defs: list[str], final: bool = False,
        sum_wire_row: int | None = None, p_sum: str | None = None,
    ) -> None:
        t0, t1, t2, t3 = temps

        def pt(e: str) -> str:
            # Anonymous constructors need an expected type at every use site.
            return f"(⟨{e[1:-1]}⟩ : EdwardsBridge.Point)" if e.startswith("⟨") else e

        def comps(e: str) -> tuple[str, str] | None:
            # Split a top-level anonymous constructor into its two components.
            if not e.startswith("⟨"):
                return None
            depth = 0
            for i, ch in enumerate(e):
                if ch in "⟨([":
                    depth += 1
                elif ch in "⟩)]":
                    depth -= 1
                elif ch == "," and depth == 1:
                    return f"({e[1:i].strip()})", f"({e[i + 1:-1].strip()})"
            return None

        rc = comps(out)
        p, q, out = pt(p), pt(q), pt(out)
        # p/q stay projection-form so h0–h2 leaves are homogeneous; out is
        # always a literal pair, and its components sit next to numerals in
        # h4/h5, so they must be the raw Seg52.F wires.
        px, py = f"({p}).x", f"({p}).y"
        qx, qy = f"({q}).x", f"({q}).y"
        rx, ry = rc if rc else (f"({out}).x", f"({out}).y")
        lines.extend([
            f"theorem {name} (rho : Nat -> Seg52.F) (h : Seg52.relation rho)",
            f"    (hp : EdwardsBridge.onCurve ({p})) (hq : EdwardsBridge.onCurve ({q}))" +
            (" :" if final else " (k : Seg52.F -> Seg52.F -> Prop) (hk : k " + rx + " " + ry + ") :"),
            ("    EdwardsBridge.addSpec (" + p + ") (" + q + ") (" + out + ") := by") if final else
            ("    Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbAddK " +
             px + " " + py + " " + qx + " " + qy + " k ∧\n" +
             "    EdwardsBridge.addSpec (" + p + ") (" + q + ") (" + out + ") := by"),
        ])
        rows_needed = set(range(row0, row0 + 6))
        if sum_wire_row is not None:
            rows_needed.add(sum_wire_row)
        dtk.emit_unpack(lines, cfg, rows_needed)
        for row in sorted(rows_needed):
            dtk.emit_row_unfold(lines, cfg, row)
        eqs = [
            f"  have h0 : ({px} + {py}) * ({qx} + {qy}) = rho {t0} := by",
            f"  have h1 : {px} * {qy} = rho {t1} := by",
            f"  have h2 : {py} * {qx} = rho {t2} := by",
            f"  have h3 : (3021 : Seg52.F) * rho {t1} * rho {t2} = rho {t3} := by",
            f"  have h4 : {rx} * ((1 : Seg52.F) + rho {t3}) = rho {t1} + rho {t2} := by",
            f"  have h5 : {ry} * ((1 : Seg52.F) - rho {t3}) = rho {t0} - rho {t1} - rho {t2} := by",
        ]
        for index, head in enumerate(eqs):
            lines.append(head)
            if state_defs:
                lines.append("    try simp only [" + ", ".join(state_defs) + "]")
            if index == 0 and sum_wire_row is not None:
                # Row coefficients are reduced mod p while the AccState literals
                # sum above p; ring works over ZZ, so discharge the p-multiple
                # residual with a decided characteristic fact.
                lines.extend([
                    "    have hchar : (8444461749428370424248824938781546531375899335154063827935233455917409239041 : Seg52.F) = 0 := by decide",
                    f"    first",
                    f"    | linear_combination r{row0} + ({p_sum}) * r{sum_wire_row} + (({p_sum}) * rho 51178) * hchar",
                    f"    | linear_combination r{row0} + ({p_sum}) * r{sum_wire_row} - (({p_sum}) * rho 51178) * hchar",
                ])
            else:
                lines.append(f"    linear_combination r{row0 + index}")
        lines.extend([
            "  have hadd := Shieldd.GnarkFormal.Deployed.NetBalance.addSpec_of_rows",
            f"    {px} {py} {qx} {qy} (rho {t0}) (rho {t1}) (rho {t2}) (rho {t3})",
            f"    {rx} {ry} hp hq h0 h1 h2 h3 h4 h5",
        ])
        if final:
            lines.append("  exact hadd")
        else:
            lines.extend([
                "  exact ⟨Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbAddK_of_addSpec",
                f"    ({p}) ({q}) ({out}) k hadd hk, hadd⟩",
            ])
        lines.append("")

    theorem(
        "seg52_add_inputs", 4990,
        "seg52In0AccState rho 128", "seg52In1AccState rho 128", "⟨rho 49384, rho 49385⟩",
        (49380, 49381, 49382, 49383),
        ["seg52In0AccState", "seg52In0AccX128", "seg52In0AccY128",
         "seg52In1AccState", "seg52In1AccX128", "seg52In1AccY128"],
    )
    theorem(
        "seg52_add_output", 6783, "⟨rho 49384, rho 49385⟩",
        "⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩",
        "⟨rho 51176, rho 51177⟩", (51172, 51173, 51174, 51175),
        ["seg52Out0AccState", "seg52Out0AccX128", "seg52Out0AccY128"],
    )
    theorem(
        "seg52_final_addSpec", 8595, "⟨rho 51176, rho 51177⟩",
        "seg52BlindAccState rho 251", "⟨rho 52987, rho 52988⟩",
        (52983, 52984, 52985, 52986),
        ["seg52BlindAccState", "seg52BlindDeltaX250", "seg52BlindDeltaY250"],
        final=True,
        sum_wire_row=8594, p_sum="rho 51176 + rho 51177",
    )
    lines += ["end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1", ""]
    return "\n".join(lines)


def emit_top() -> str:
    return f"""import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Nb
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52EncodePost
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Adds
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52In0Bits
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52In1Bits
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Out0Bits
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindBits

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.NetBalanceCommitmentBridge

theorem seg52_nbBody (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    nbBody (rho 45162) (rho 45164) (rho 15) (rho 105) (rho 193) (rho 5)
      (rho 52987) (rho 52988) := by
  have hbase := seg52_value_base_onCurve rho h
  have hIn0Bin := seg52In0Bits_toBinary rho h
  have hIn1Bin := seg52In1Bits_toBinary rho h
  have hOut0Bin := seg52Out0Bits_toBinary rho h
  have hBlindBin := seg52BlindBits_toBinary rho h
  obtain ⟨in0Bool, hIn0Eq⟩ := is_vector_binary_iff_exists_bool_vec.mp hIn0Bin.2
  obtain ⟨in1Bool, hIn1Eq⟩ := is_vector_binary_iff_exists_bool_vec.mp hIn1Bin.2
  obtain ⟨out0Bool, hOut0Eq⟩ := is_vector_binary_iff_exists_bool_vec.mp hOut0Bin.2
  obtain ⟨blindBool, hBlindEq⟩ := is_vector_binary_iff_exists_bool_vec.mp hBlindBin.2
  have hP1On := (seg52In0_ladder rho h in0Bool hIn0Eq (fun _ => True)
    True.intro hbase).2
  have hP2On := (seg52In1_ladder rho h in1Bool hIn1Eq (fun _ => True)
    True.intro hbase).2
  have hP3On := (seg52Out0_ladder rho h out0Bool hOut0Eq (fun _ => True)
    True.intro hbase).2
  have hAdd1 := (seg52_add_inputs rho h hP1On hP2On (fun _ _ => True) True.intro).2
  have hA1Eq := EdwardsBridge.addSpec_eq
    (seg52In0AccState rho 128) (seg52In1AccState rho 128)
    ⟨rho 49384, rho 49385⟩ hP1On hP2On hAdd1
  have hA1On : EdwardsBridge.onCurve ⟨rho 49384, rho 49385⟩ :=
    hA1Eq ▸ EdwardsBridge.add_onCurve _ _ hP1On hP2On
  have hNegOn : EdwardsBridge.onCurve
      ⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩ := by
    simpa [EdwardsBridge.negF] using
      EdwardsBridge.neg_onCurve (seg52Out0AccState rho 128) hP3On
  have hAdd2 := (seg52_add_output rho h hA1On hNegOn (fun _ _ => True) True.intro).2
  have hA2Eq := EdwardsBridge.addSpec_eq ⟨rho 49384, rho 49385⟩
    ⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩
    ⟨rho 51176, rho 51177⟩ hA1On hNegOn hAdd2
  have hA2On : EdwardsBridge.onCurve ⟨rho 51176, rho 51177⟩ :=
    hA2Eq ▸ EdwardsBridge.add_onCurve _ _ hA1On hNegOn
  have hBlindOn := (seg52Blind_ladder rho h blindBool hBlindEq (fun _ => True)
    True.intro).2
  have hFinalAdd := seg52_final_addSpec rho h hA2On hBlindOn
  have hOutEq := EdwardsBridge.addSpec_eq ⟨rho 51176, rho 51177⟩
    (seg52BlindAccState rho 251) ⟨rho 52987, rho 52988⟩
    hA2On hBlindOn hFinalAdd
  have hOutOn : EdwardsBridge.onCurve ⟨rho 52987, rho 52988⟩ :=
    hOutEq ▸ EdwardsBridge.add_onCurve _ _ hA2On hBlindOn
  have hFinalK : nbFinalK (rho 51176) (rho 51177)
      (seg52BlindAccState rho 251).x (seg52BlindAccState rho 251).y
      (rho 52987) (rho 52988) :=
    nbFinalK_of_addSpec ⟨rho 51176, rho 51177⟩ (seg52BlindAccState rho 251)
      ⟨rho 52987, rho 52988⟩ hFinalAdd hOutOn
  unfold nbBody
  apply Shieldd.GnarkFormal.Deployed.NetBalance.zeroLadderK128
    ⟨rho 45162, rho 45164⟩ hbase
  intro _ _
  refine ⟨seg52In0Bits rho, hIn0Bin, ?_⟩
  refine (seg52In0_ladder rho h in0Bool hIn0Eq _ ?_ hbase).1
  refine ⟨seg52In1Bits rho, hIn1Bin, ?_⟩
  refine (seg52In1_ladder rho h in1Bool hIn1Eq _ ?_ hbase).1
  refine ⟨seg52Out0Bits rho, hOut0Bin, ?_⟩
  refine (seg52Out0_ladder rho h out0Bool hOut0Eq _ ?_ hbase).1
  refine nbAddK_of_addSpec ⟨0, 1⟩ (seg52In0AccState rho 128)
    (seg52In0AccState rho 128) _ 
    (Shieldd.GnarkFormal.Deployed.NetBalance.identity_addSpec _) ?_
  refine (seg52_add_inputs rho h hP1On hP2On _ ?_).1
  refine ⟨-(seg52Out0AccState rho 128).x, ?_, ?_⟩
  · simp [Extracted.NetBalanceCommitment.Gates, GatesGnark9, GatesGnark8,
      GatesDef.neg]
  refine (seg52_add_output rho h hA1On hNegOn _ ?_).1
  refine ⟨seg52BlindBits rho, hBlindBin, ?_⟩
  refine (seg52Blind_ladder rho h blindBool hBlindEq _ ?_).1
  simpa using hFinalK

theorem seg52_sound (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Specs.deployedSpec52 rho := by
  have hbody := seg52_nbBody rho h
  have hpost := seg52_encode_post rho h
    (fun vgX vgY => nbBody vgX vgY (rho 15) (rho 105) (rho 193) (rho 5)
      (rho 52987) (rho 52988)) hbody
  have hpre := seg52_encode_pre rho h
    (fun T YDen => nbEncodeSeg1K (rho 44799) T YDen
      (fun vgX vgY => nbBody vgX vgY (rho 15) (rho 105) (rho 193) (rho 5)
        (rho 52987) (rho 52988))) hpost
  rw [seg52_poseidon_eq rho h] at hpre
  have hposeidon := (Shieldd.GnarkFormal.Poseidon1Bridge.perm1_uncps
    ({POSEIDON_DOMAIN} : Seg52.F) (rho 16)
    (fun gate_0 => Extracted.DecafEncodeToCurve.encodeSeg0 gate_0
      (rho 44799) (rho 44800)
      (fun T YDen => nbEncodeSeg1K (rho 44799) T YDen
        (fun vgX vgY => nbBody vgX vgY (rho 15) (rho 105) (rho 193) (rho 5)
          (rho 52987) (rho 52988))))).mpr hpre
  have hcircuit := (nb_circuit_eq (rho 15) (rho 105) (rho 193) (rho 16)
    (rho 5) (rho 44799) (rho 44800) (rho 52987) (rho 52988)).mpr hposeidon
  apply Shieldd.GnarkFormal.NetBalanceCommitmentBridge.decaf377_netBalanceCommitment_sound
    (rho 15) (rho 105) (rho 193) (rho 16) (rho 5) ⟨rho 52987, rho 52988⟩
  exact ⟨rho 44799, rho 44800, hcircuit⟩

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
"""


def recover() -> dict:
    """Run the full fail-closed recovery; returns the seating structures."""
    rows = sr1cs_rows()
    value = {lad.label: value_rungs(rows, lad) for lad in VALUE_LADDERS}
    blind = blind_rungs(rows)
    # Division-form Edwards add: out sits on the A side (out * (1 ± d·t) = …).
    if rows[8599][0] != {OUT_X_WIRE: 1} or rows[8600][0] != {OUT_Y_WIRE: 1}:
        raise ValueError("final add rows do not constrain the pinned output wires")
    return {"rows": rows, "value": value, "blind": blind}


def main() -> None:
    seating = recover()
    poseidon_sboxes = generate_poseidon_shape()
    print("wrote net-balance Poseidon slice and semantic-bridge metadata")
    (CONTRACTS / "NbAdapterSeg52Poseidon.lean").write_text(
        emit_poseidon_adapter(poseidon_sboxes)
    )
    print("wrote seg52 Poseidon adapter")
    (CONTRACTS / "NbAdapterSeg52EncodePre.lean").write_text(emit_encode_pre())
    (CONTRACTS / "NbAdapterSeg52EncodePost.lean").write_text(emit_encode_post())
    print("wrote seg52 encode adapters")
    for label, rungs in seating["value"].items():
        span = (rungs[0].select_x_row, rungs[-1].double_rows[-1])
        print(f"value ladder {label}: 128 rungs, rows {span[0]}..{span[1]}")
    blind = seating["blind"]
    n_late = sum(1 for r in blind if r.materialized)
    print(f"blinding ladder: {len(blind)} rungs ({len(blind) - n_late} 5-row, {n_late} 8-row)")
    literal = emit_fixed_base_literal(seating["rows"])
    (FORMAL / "NbFixedBaseLiteral.lean").write_text(literal)
    print(f"wrote NbFixedBaseLiteral.lean ({len(literal.splitlines())} lines)")
    (CONTRACTS / "NbAdapterSeg52Base.lean").write_text(emit_base())
    for module, contents in emit_canonical_modules().items():
        (CONTRACTS / f"{module}.lean").write_text(contents)
    print("wrote seg52 base and canonical-chain modules")
    for module, contents in emit_value_modules(seating).items():
        (CONTRACTS / f"{module}.lean").write_text(contents)
    print("wrote seg52 value-ladder modules")
    for module, contents in emit_blind_modules(seating).items():
        (CONTRACTS / f"{module}.lean").write_text(contents)
    print("wrote seg52 blinding-ladder modules")
    for module, contents in emit_to_binary_modules().items():
        (CONTRACTS / f"{module}.lean").write_text(contents)
    print("wrote seg52 to-binary modules")
    (CONTRACTS / "NbAdapterSeg52Adds.lean").write_text(emit_adds())
    print("wrote seg52 add adapters")
    (CONTRACTS / "NbAdapterSeg52.lean").write_text(emit_top())
    print("wrote seg52 top adapter")


if __name__ == "__main__":
    main()
