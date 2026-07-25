#!/usr/bin/env python3
"""Generate the 24 deployed Poseidon4 node-hash slices for state commitment.

The full `gadget.state_commitment_path` segment is a 9,015-row Merkle path:
a leaf Poseidon1 (rows 0-229 slice-relative), a 48-bit decomposition
(230-278), then 24 levels of (14-row select block + 350-row Poseidon4 perm)
at stride 364 starting at slice offset 293. Node k hashes with domain
TCTDomain + (k+1); the levels differ only in the round-1 constants that fold
the constant domain lane's round-0 S-box, plus uniform wire offsets.

For each level this emits the CPS-segmented slice relation, the gendata
consumed by gen_poseidon_bridge.py, and the per-level deployed-bridge shim.
"""

import hashlib
import json
import pathlib
import re

from write_if_changed import write_if_changed

ROOT = pathlib.Path(__file__).resolve().parents[4]
LEAN_ROOT = ROOT / "tools/gnark/lean/ShielddGnarkFormal"
EXTRACTED = LEAN_ROOT / "Extracted/Deployed"
DEPLOYED = LEAN_ROOT / "Deployed"
SR1CS = ROOT / "tools/gnark/artifacts/note_reshape2x1/note_reshape2x1.sr1cs"
POSEIDON4 = LEAN_ROOT / "Poseidon4Bridge.lean"
VECTORS = ROOT / "tools/gnark/internal/primitives/vectors/phase05_vectors.json"

NODE0_START = 8173
STRIDE = 364
LEVELS = 24
WIDTH = 5
ORDER = "8444461749428370424248824938781546531375899335154063827935233455917409239041"

SEQ = [
    "6755569399542696339399059951025237225100719468123251062348186764733927391233",
    "7037051457856975353540687448984622109479916112628386523279361213264507699201",
    "7238110070938603220784707090384182741179342287274911852515914390786350776321",
    "7388904030749824121217721821433853214953911918259805849443329273927733084161",
    "4691367638571316902360458299323081406319944075085591015519574142176338466134",
    "7600015574485533381823942444903391878238309401638657445141710110325668315137",
    "2303035022571373752067861346940421781284336182314744680345972760704747974284",
    "7740756603642672888894756193883084320427907723891225175607297334590958469121",
    "7794887768703111160845069174259889105885445540142212764247907805462223912961",
]


def camel(op: str) -> str:
    out = []
    upper = True
    for ch in op:
        if ch in "._":
            upper = True
            continue
        if upper:
            out.append(ch.upper())
            upper = False
        else:
            out.append(ch)
    return "".join(out)


def parse_terms(group: str):
    terms = []
    rest = group.strip()
    while rest:
        m = re.match(r"\((\S+)\s+(\d+)\)\s*", rest)
        if not m:
            raise ValueError(f"bad term group: {group!r}")
        terms.append((m.group(1), int(m.group(2))))
        rest = rest[m.end() :]
    return terms


def parse_constraint(line: str):
    inner = line.strip()
    if not inner.startswith("(constraint ") or not inner.endswith(")"):
        raise ValueError(f"not a constraint: {line!r}")
    inner = inner[len("(constraint ") : -1]
    groups = re.findall(r"\[([^\]]*)\]", inner)
    if len(groups) != 3:
        raise ValueError(f"expected 3 sides: {line!r}")
    return tuple(parse_terms(g) for g in groups)


def side_expr(side):
    if not side:
        return "(0 : F)"
    parts = []
    for coeff, wire in side:
        lit = f"({coeff} : F)"
        if wire == 0:
            parts.append(lit)
        else:
            parts.append(f"{lit} * w{wire}")
    return " + ".join(parts)


def singleton_wire(side):
    if len(side) != 1 or side[0][0] != "1" or side[0][1] == 0:
        raise ValueError(f"expected singleton wire output, got {side!r}")
    return side[0][1]


def wires_in(sides):
    out = set()
    for side in sides:
        for _, wire in side:
            if wire != 0:
                out.add(wire)
    return out


def shape_hash(rows):
    shape = []
    for l, r, o in rows:
        shape.append(f"{len(l)}:{len(r)}:{len(o)}|")
        for side in (l, r, o):
            for coeff, wire in side:
                shape.append(f"{coeff}@{wire},")
            shape.append(";")
    return hashlib.sha256("".join(shape).encode()).hexdigest()


def parse_round_constants():
    out = {}
    for line in POSEIDON4.read_text().splitlines():
        m = re.search(r"let gate_(\d+) := (?:fr5|pr5)", line)
        if not m:
            continue
        idx = int(m.group(1))
        arc = line.rsplit("vec![", 1)[1].split("]", 1)[0]
        vals = [int(x) for x in re.findall(r"\((\d+):F\)", arc)]
        if len(vals) != WIDTH:
            raise ValueError(f"gate_{idx} has {len(vals)} constants")
        out[idx] = vals
    if sorted(out) != list(range(39)):
        raise ValueError(f"missing Poseidon4 constants: {sorted(out)}")
    return {str(k): [str(x) for x in v] for k, v in out.items()}


def verify_sbox(rows, seg):
    chunk = rows[seg * 5 : seg * 5 + 5]
    outs = [singleton_wire(row[2]) for row in chunk]
    x = chunk[0][0]
    if chunk[0][1] != x:
        raise ValueError(f"seg {seg}: first row is not x*x")
    expected = [
        ([("1", outs[0])], [("1", outs[0])]),
        ([("1", outs[1])], [("1", outs[1])]),
        ([("1", outs[2])], [("1", outs[2])]),
    ]
    for idx, (el, er) in enumerate(expected, start=1):
        if chunk[idx][0] != el or chunk[idx][1] != er:
            raise ValueError(f"seg {seg}: square row {idx} is not chained")
    if chunk[4][0] != [("1", outs[3])] or chunk[4][1] != x:
        raise ValueError(f"seg {seg}: final row is not x16*x")
    return outs[-1], outs


def k_type(names):
    return " → ".join(["F"] * len(names)) + " → Prop"


def decl(names):
    return " ".join(f"(w{w} : F)" for w in names)


def use(names):
    return " ".join(f"w{w}" for w in names)


def emit_segment(seg, args, bvs, chunk):
    locals_ = [singleton_wire(row[2]) for row in chunk]
    lines = [
        f"def seg{seg} {decl(args)} (k : {k_type(bvs)}) : Prop :=\n",
        f"∃ {use(locals_)} : F,\n",
    ]
    constraints = [
        f"  ({side_expr(l)}) * ({side_expr(r)}) = ({side_expr(o)})"
        for l, r, o in chunk
    ]
    lines.append(" ∧\n".join(constraints))
    lines.append(f" ∧\n  k {use(bvs)}\n\n")
    return "".join(lines)


def emit_relation(args, bvs):
    lines = [f"def relation {decl(args[0])} (k : {k_type(bvs[-1])}) : Prop :=\n"]
    indent = "  "
    for seg in range(len(args)):
        lines.append(f"{indent}seg{seg} {use(args[seg])} (fun {use(bvs[seg])} =>\n")
        indent += "  "
    lines.append(f"{indent}k {use(bvs[-1])}" + ")" * len(args) + "\n\n")
    return "".join(lines)


def render_term(coeff, wire):
    if coeff == "1":
        return f"w{wire}"
    return f"({coeff} : F) * w{wire}"


def derive_spec_inputs(rows, cs):
    """Round-0 S-box input LCs with the raw rc0 constant stripped."""
    inputs = []
    for lane in range(4):
        side = rows[lane * 5][0]
        if side[0][1] != 0 or side[0][0] != cs["0"][lane + 1]:
            raise ValueError(f"lane {lane}: round-0 constant is not rc0[{lane + 1}]")
        for _, wire in side[1:]:
            if wire == 0:
                raise ValueError(f"lane {lane}: extra constant term in round-0 input")
        inputs.append(" + ".join(render_term(c, w) for c, w in side[1:]))
    return inputs


def gen_level(level, sr1cs_rows, cs, tct_domain):
    op = f"gadget.state_commitment_path.node{level}"
    start = NODE0_START + STRIDE * level
    end = start + 350
    rows = [parse_constraint(line) for line in sr1cs_rows[start:end]]
    if len(rows) != 350:
        raise ValueError(f"expected 350 rows, got {len(rows)}")

    final_outputs = []
    local_outputs = []
    for seg in range(70):
        final, locals_ = verify_sbox(rows, seg)
        final_outputs.append(final)
        local_outputs.append(set(locals_))

    round_counts = [4, 5, 5, 5] + [1] * 31 + [5, 5, 5, 5]
    if sum(round_counts) != 70:
        raise AssertionError("bad round count table")
    groups = {}
    seg2round = {}
    pos = 0
    for rnd, count in enumerate(round_counts):
        groups[str(rnd)] = [f"w{w}" for w in final_outputs[pos : pos + count]]
        for seg in range(pos, pos + count):
            seg2round[str(seg)] = rnd
        pos += count

    required = set(int(w[1:]) for w in groups["38"])
    args = [None] * 70
    bvs = [None] * 70
    for seg in range(69, -1, -1):
        chunk = rows[seg * 5 : seg * 5 + 5]
        uses = wires_in([row[0] for row in chunk] + [row[1] for row in chunk])
        uses -= local_outputs[seg]
        live_in = uses | (required - local_outputs[seg])
        args[seg] = sorted(live_in)
        live_out = set(required)
        live_out.add(final_outputs[seg])
        b = sorted(w for w in live_out if w != final_outputs[seg])
        b.append(final_outputs[seg])
        bvs[seg] = b
        required = live_in

    for seg in range(69):
        available = set(args[0]) | set(bvs[seg])
        missing = set(args[seg + 1]) - available
        if missing:
            raise ValueError(f"seg {seg + 1} args not in previous continuation: {sorted(missing)}")

    sh = shape_hash(rows)
    module = f"{camel(op)}350_{sh[:6]}"

    lean = [
        "import ShielddGnarkFormal.ChoiceFreeZMod\n",
        "import ProvenZk.Gates\n",
        "import ShielddGnarkFormal.Extracted.PoseidonHash4\n\n",
        "set_option linter.unusedVariables false\n",
        "set_option maxRecDepth 100000\n",
        "set_option maxHeartbeats 50000000\n\n",
        f"/-! Auto-generated CPS-segmented deployed-slice relation for `{op}` ",
        "(size 350, 70 segments of 5 rows).\n",
        f"Generated from note_reshape2x1.sr1cs global rows [{start},{end}); do not edit by hand. -/\n\n",
        f"namespace Shieldd.GnarkFormal.Extracted.Deployed.{module}\n\n",
        "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n\n",
        "abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.PoseidonHash4.Order\n",
        "variable [Fact (Nat.Prime Order)]\n",
        "abbrev F := Shieldd.GnarkFormal.Extracted.PoseidonHash4.F\n\n",
    ]
    for seg in range(70):
        lean.append(emit_segment(seg, args[seg], bvs[seg], rows[seg * 5 : seg * 5 + 5]))
    lean.append(emit_relation(args, bvs))
    lean.append(f"end Shieldd.GnarkFormal.Extracted.Deployed.{module}\n")
    EXTRACTED.mkdir(parents=True, exist_ok=True)
    write_if_changed(EXTRACTED / f"{module}.lean", "".join(lean))

    domain = (tct_domain + 1 + level) % int(ORDER)
    gendata = {
        "slice_stem": module,
        "cs": cs,
        "groups": groups,
        "kind": {str(i): ("full" if i < 4 or i >= 35 else "partial") for i in range(39)},
        "seg2round": seg2round,
        "ranges": [
            list(range(0, 4)),
            list(range(4, 9)),
            list(range(9, 14)),
            list(range(14, 19)),
            list(range(19, 25)),
            list(range(25, 31)),
            list(range(31, 37)),
            list(range(37, 43)),
            list(range(43, 50)),
            list(range(50, 55)),
            list(range(55, 60)),
            list(range(60, 65)),
            list(range(65, 70)),
        ],
        "domain": str(domain),
        "public_args": [f"w{w}" for w in args[0]],
        "spec_inputs": derive_spec_inputs(rows, cs),
        "seq": SEQ,
    }
    gd_path = pathlib.Path(__file__).resolve().parent / f"state_commitment_node{level}_gendata.json"
    write_if_changed(gd_path, json.dumps(gendata, indent=2) + "\n")

    shim = f"""import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Extracted.Deployed.{module}
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Keystone

namespace Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode{level}

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Shieldd.GnarkFormal.Poseidon4Bridge

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.{module}.Order)]

abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.{module}.F

def tctNode{level + 1}DomainLit : F := ({domain} : F)

theorem p17_from_rows (x v0 v1 v2 v3 v4 : F)
    (h0 : x * x = v0) (h1 : v0 * v0 = v1) (h2 : v1 * v1 = v2)
    (h3 : v2 * v2 = v3) (h4 : v3 * x = v4) :
    v4 = p17 x := by
  unfold p17
  rw [← h4, ← h3, ← h2, ← h1, ← h0]

end Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode{level}
"""
    write_if_changed(DEPLOYED / f"StateCommitmentPathNode{level}DeployedBridge.lean", shim)
    return module


LEAF_START = 7880  # global row of the leaf Poseidon1 (230 rows, 46 chains)


def gen_leaf(sr1cs_rows, tct_domain):
    """Leaf Poseidon1 slice: same W=2 gadget shape as net_balance, domain TCTDomain."""
    op = "gadget.state_commitment_path.leaf"
    start, end = LEAF_START, LEAF_START + 230
    rows = [parse_constraint(line) for line in sr1cs_rows[start:end]]
    nb = json.loads((pathlib.Path(__file__).resolve().parent / "net_balance_gendata.json").read_text())

    final_outputs = []
    local_outputs = []
    for seg in range(46):
        final, locals_ = verify_sbox(rows, seg)
        final_outputs.append(final)
        local_outputs.append(set(locals_))

    round_counts = [1, 2, 2, 2] + [1] * 31 + [2, 2, 2, 2]
    if sum(round_counts) != 46:
        raise AssertionError("bad leaf round count table")
    groups = {}
    seg2round = {}
    pos = 0
    for rnd, count in enumerate(round_counts):
        groups[str(rnd)] = [f"w{w}" for w in final_outputs[pos : pos + count]]
        for seg in range(pos, pos + count):
            seg2round[str(seg)] = rnd
        pos += count

    required = set(int(w[1:]) for w in groups["38"])
    args = [None] * 46
    bvs = [None] * 46
    for seg in range(45, -1, -1):
        chunk = rows[seg * 5 : seg * 5 + 5]
        uses = wires_in([row[0] for row in chunk] + [row[1] for row in chunk])
        uses -= local_outputs[seg]
        live_in = uses | (required - local_outputs[seg])
        args[seg] = sorted(live_in)
        live_out = set(required)
        live_out.add(final_outputs[seg])
        b = sorted(w for w in live_out if w != final_outputs[seg])
        b.append(final_outputs[seg])
        bvs[seg] = b
        required = live_in

    for seg in range(45):
        available = set(args[0]) | set(bvs[seg])
        missing = set(args[seg + 1]) - available
        if missing:
            raise ValueError(f"leaf seg {seg + 1} args not in previous continuation: {sorted(missing)}")

    sh = shape_hash(rows)
    module = f"{camel(op)}230_{sh[:6]}"

    lean = [
        "import ShielddGnarkFormal.ChoiceFreeZMod\n",
        "import ProvenZk.Gates\n",
        "import ShielddGnarkFormal.Extracted.PoseidonHash1\n\n",
        "set_option linter.unusedVariables false\n",
        "set_option maxRecDepth 100000\n",
        "set_option maxHeartbeats 50000000\n\n",
        f"/-! Auto-generated CPS-segmented deployed-slice relation for `{op}` ",
        "(size 230, 46 segments of 5 rows).\n",
        f"Generated from note_reshape2x1.sr1cs global rows [{start},{end}); do not edit by hand. -/\n\n",
        f"namespace Shieldd.GnarkFormal.Extracted.Deployed.{module}\n\n",
        "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n\n",
        "abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.PoseidonHash1.Order\n",
        "variable [Fact (Nat.Prime Order)]\n",
        "abbrev F := Shieldd.GnarkFormal.Extracted.PoseidonHash1.F\n\n",
    ]
    for seg in range(46):
        lean.append(emit_segment(seg, args[seg], bvs[seg], rows[seg * 5 : seg * 5 + 5]))
    lean.append(emit_relation(args, bvs))
    lean.append(f"end Shieldd.GnarkFormal.Extracted.Deployed.{module}\n")
    write_if_changed(EXTRACTED / f"{module}.lean", "".join(lean))

    # round-0 lane-1 input LC (lane 0 is the folded domain)
    side = rows[0][0]
    if side[0][1] != 0 or side[0][0] != nb["cs"]["0"][1]:
        raise ValueError("leaf round-0 constant is not rc0[1]")
    spec_inputs = [" + ".join(render_term(c, w) for c, w in side[1:])]

    domain = tct_domain % int(ORDER)
    gendata = {
        "slice_stem": module,
        "cs": nb["cs"],
        "groups": groups,
        "kind": nb["kind"],
        "seg2round": seg2round,
        "ranges": nb["ranges"],
        "domain": str(domain),
        "public_args": [f"w{w}" for w in args[0]],
        "spec_inputs": spec_inputs,
        "seq": nb["seq"],
    }
    write_if_changed(
        pathlib.Path(__file__).resolve().parent / "state_commitment_leaf_gendata.json",
        json.dumps(gendata, indent=2) + "\n",
    )

    shim = f"""import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Extracted.Deployed.{module}
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Keystone
import ShielddGnarkFormal.Poseidon1Bridge

namespace Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Shieldd.GnarkFormal.Poseidon1Bridge

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.{module}.Order)]

abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.{module}.F

def tctLeafDomainLit : F := ({domain} : F)

theorem p17_from_rows (x v0 v1 v2 v3 v4 : F)
    (h0 : x * x = v0) (h1 : v0 * v0 = v1) (h2 : v1 * v1 = v2)
    (h3 : v2 * v2 = v3) (h4 : v3 * x = v4) :
    v4 = p17 x := by
  unfold p17
  rw [← h4, ← h3, ← h2, ← h1, ← h0]

end Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf
"""
    write_if_changed(DEPLOYED / "StateCommitmentPathLeafDeployedBridge.lean", shim)
    return module


def main():
    sr1cs_rows = [
        line.strip()
        for line in SR1CS.read_text().splitlines()
        if line.strip().startswith("(constraint ")
    ]
    cs = parse_round_constants()
    vectors = json.loads(VECTORS.read_text())
    tct_domain = int(vectors["poseidon377"]["tct_domain"])
    stems = {}
    for level in range(LEVELS):
        stems[level] = gen_level(level, sr1cs_rows, cs, tct_domain)
    if stems[0] != "GadgetStateCommitmentPathNode0350_9a4a8f":
        raise ValueError(f"node0 regeneration drifted: {stems[0]}")
    leaf = gen_leaf(sr1cs_rows, tct_domain)
    print("generated node slices:", " ".join(stems[k] for k in sorted(stems)))
    print("generated leaf slice:", leaf)


if __name__ == "__main__":
    main()
