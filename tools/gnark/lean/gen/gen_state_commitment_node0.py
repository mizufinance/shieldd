#!/usr/bin/env python3
"""Generate the first deployed Poseidon4 node-hash slice for state commitment.

The full `gadget.state_commitment_path` segment is a 9,015-row Merkle path. This
pilot extracts the first node hash only: global rows [2093,2443), i.e. the 350
deployed rows after the leaf hash, position bits, and first select block. It is
exactly 70 five-row Poseidon S-box chains.
"""

import hashlib
import json
import pathlib
import re

ROOT = pathlib.Path(__file__).resolve().parents[4]
LEAN_ROOT = ROOT / "tools/gnark/lean/ShielddGnarkFormal"
EXTRACTED = LEAN_ROOT / "Extracted/Deployed"
DEPLOYED = LEAN_ROOT / "Deployed"
SR1CS = ROOT / "tools/gnark/artifacts/consolidate2x1/consolidate2x1.sr1cs"
POSEIDON4 = LEAN_ROOT / "Poseidon4Bridge.lean"
VECTORS = ROOT / "tools/gnark/internal/primitives/vectors/phase05_vectors.json"

OP = "gadget.state_commitment_path.node0"
START = 2093
END = 2443
WIDTH = 5
ORDER = "8444461749428370424248824938781546531375899335154063827935233455917409239041"


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


def main():
    sr1cs_rows = [
        line.strip()
        for line in SR1CS.read_text().splitlines()
        if line.strip().startswith("(constraint ")
    ]
    rows = [parse_constraint(line) for line in sr1cs_rows[START:END]]
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
    module = f"{camel(OP)}{len(rows)}_{sh[:6]}"
    if module != "GadgetStateCommitmentPathNode0350_28e5d0":
        raise ValueError(f"unexpected module stem {module}")

    lean = [
        "import ProvenZk.Gates\n",
        "import ShielddGnarkFormal.Extracted.PoseidonHash4\n\n",
        "set_option linter.unusedVariables false\n",
        "set_option maxRecDepth 100000\n",
        "set_option maxHeartbeats 50000000\n\n",
        f"/-! Auto-generated CPS-segmented deployed-slice relation for `{OP}` ",
        "(size 350, 70 segments of 5 rows).\n",
        "Generated from consolidate2x1.sr1cs global rows [2093,2443); do not edit by hand. -/\n\n",
        f"namespace Shieldd.GnarkFormal.Extracted.Deployed.{module}\n\n",
        "abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.PoseidonHash4.Order\n",
        "variable [Fact (Nat.Prime Order)]\n",
        "abbrev F := Shieldd.GnarkFormal.Extracted.PoseidonHash4.F\n\n",
    ]
    for seg in range(70):
        lean.append(emit_segment(seg, args[seg], bvs[seg], rows[seg * 5 : seg * 5 + 5]))
    lean.append(emit_relation(args, bvs))
    lean.append(f"end Shieldd.GnarkFormal.Extracted.Deployed.{module}\n")
    EXTRACTED.mkdir(parents=True, exist_ok=True)
    (EXTRACTED / f"{module}.lean").write_text("".join(lean))

    vectors = json.loads(VECTORS.read_text())
    domain = int(vectors["poseidon377"]["tct_domain"]) + 1
    gendata = {
        "cs": parse_round_constants(),
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
        "spec_inputs": [
            "w94 + w1935",
            "w95 + w1936 + w1937",
            "w95 + w1938 + w1939",
            "w96 + w1940",
        ],
        "seq": [
            "6755569399542696339399059951025237225100719468123251062348186764733927391233",
            "7037051457856975353540687448984622109479916112628386523279361213264507699201",
            "7238110070938603220784707090384182741179342287274911852515914390786350776321",
            "7388904030749824121217721821433853214953911918259805849443329273927733084161",
            "4691367638571316902360458299323081406319944075085591015519574142176338466134",
            "7600015574485533381823942444903391878238309401638657445141710110325668315137",
            "2303035022571373752067861346940421781284336182314744680345972760704747974284",
            "7740756603642672888894756193883084320427907723891225175607297334590958469121",
            "7794887768703111160845069174259889105885445540142212764247907805462223912961",
        ],
    }
    (pathlib.Path(__file__).resolve().parent / "state_commitment_node0_gendata.json").write_text(
        json.dumps(gendata, indent=2) + "\n"
    )

    shim = f"""import ShielddGnarkFormal.Extracted.Deployed.{module}
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Keystone

namespace Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode0

open Shieldd.GnarkFormal.Poseidon4Bridge

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.{module}.Order)]

abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.{module}.F

def tctNode1DomainLit : F := ({domain} : F)

theorem p17_from_rows (x v0 v1 v2 v3 v4 : F)
    (h0 : x * x = v0) (h1 : v0 * v0 = v1) (h2 : v1 * v1 = v2)
    (h3 : v2 * v2 = v3) (h4 : v3 * x = v4) :
    v4 = p17 x :=
  Shieldd.GnarkFormal.Deployed.StateCommitmentPath.p17_from_rows x v0 v1 v2 v3 v4 h0 h1 h2 h3 h4

end Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode0
"""
    (DEPLOYED / "StateCommitmentPathNode0DeployedBridge.lean").write_text(shim)

    print(f"generated {module}.lean and state_commitment_node0_gendata.json")


if __name__ == "__main__":
    main()
