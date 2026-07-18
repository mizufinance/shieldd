#!/usr/bin/env python3
"""Generate every direct normalized NoteReshape semantic provider."""

from __future__ import annotations

import argparse
import hashlib
import json
import pickle
import re
import subprocess
import sys
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[4]
LEAN = ROOT / "tools/gnark/lean"
INVENTORY = ROOT / "tools/gnark/artifacts/note-reshape-template-inventory.json"
OUT = LEAN / "ShielddGnarkFormal/Deployed/Templates/Semantics"
ORDER = 8444461749428370424248824938781546531375899335154063827935233455917409239041

BOOLEAN = "assert.boolean@469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc"

ACTIVE_RANGE = {
    "assert.active_range@18b8939dae25543d281e6aa5ebcc56c4fdd030a9a7e506b73e9157a2e4a8b549": (4, [0, 1], [5]),
    "assert.active_range@486bb61d926bd1688072104ae23c98ba7bcac3614cb3a0c6b005c31b6b4b4861": (8, [0, 1, 2, 3], [9, 10, 11]),
    "assert.active_range@20f60cd1d2731f356241de975318b0d5af7d0d8f6c6c620b7e11711c4f10405b": (8, [0, 1, 2, 3, 4, 5, 6], [9, 10, 11, 12, 13, 14]),
}

ZERO = {
    "assert.active_range@baf3daf107a8ecf86f8d62726be89a6f075a67383c9f7af467d6442f7c349553",
    "assert.dummy_suffix@ca693c9a644d7a101d49302f9052719ee7e0f45605900d8e80b3c59e6b2e2ddd",
}

ZERO_COMBINATION = {
    "assert.active_range@baf3daf107a8ecf86f8d62726be89a6f075a67383c9f7af467d6442f7c349553": "-h0",
    "assert.dummy_suffix@ca693c9a644d7a101d49302f9052719ee7e0f45605900d8e80b3c59e6b2e2ddd": "h0",
}

DUMMY_SUFFIX = {
    "assert.dummy_suffix@678ab00aaa272510d3b55f2636ec8baddc4168fde2671bdda7bcbce5baeb54cc": 4,
    "assert.dummy_suffix@a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9": 8,
}

ASSERT_EQ_NEW = "assert.eq@460e4d66ff383bde603d8cffb059ede8f489117c64d82168ec67187bae7e1bc3"

EQ_IF_RESIDUAL = {
    "assert.eq_if@36366df670e29c988b147701d72d7155b3720bdc777b4429912cc664e80b0b03": "((-1 : F) * rho 2 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 3 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 4 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 5 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 6 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 7)",
    "assert.eq_if@ce0e02a1deb2ef2e836cbed67d37f3678356db1d6c5cfaa61678d01652034f8f": "((-1 : F) * rho 2 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 3 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 4 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 5 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 6 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 7 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 8 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 9)",
}

EQ_IF_RESIDUAL_OUTPUT = {
    "assert.eq_if@36366df670e29c988b147701d72d7155b3720bdc777b4429912cc664e80b0b03": "rho 8",
    "assert.eq_if@ce0e02a1deb2ef2e836cbed67d37f3678356db1d6c5cfaa61678d01652034f8f": "rho 10",
}

EQ_IF_PRODUCT = "assert.eq_if@ddee3f5dbb25719dc8ce88820a48ef2b56159138d939c3b768c7bcfad396079d"

EQUIVALENT_IF = {
    "decaf.assert_equivalent_if@15b90c10255335c2e3dea5cc594b560b13a2e116f7c31cc0431980b3843c0350": ("rho 7", "rho 1 * rho 2", "rho 4 * rho 5"),
    "decaf.assert_equivalent_if@5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f": ("1 - rho 1", "rho 2 * rho 3", "rho 5 * rho 6"),
    "decaf.assert_equivalent_if@5be591435a6da60f6425c787fbbe584d1c91891985a42a1a1ae026592549eb3e": (
        "1 - rho 507",
        "",
        "",
    ),
}

DUMMY_MUX = "dummy.mux@6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce"

SYNTHETIC_DUMMY_NULLIFIER = {
    "gadget.synthetic_dummy_nullifier@5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b": 0,
    "gadget.synthetic_dummy_nullifier@ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907": 1,
    "gadget.synthetic_dummy_nullifier@58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32": 2,
    "gadget.synthetic_dummy_nullifier@3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6": 3,
    "gadget.synthetic_dummy_nullifier@b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144": 4,
    "gadget.synthetic_dummy_nullifier@64839ee66e275b88a07503fe67a1844f1fc184ce0fc2a0b6122562914cae6cfa": 5,
    "gadget.synthetic_dummy_nullifier@46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0": 6,
    "gadget.synthetic_dummy_nullifier@100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8": 7,
}

NULLIFIER_FIXED_INPUT_CONSTANT = (
    417784945642189241683731513330527942532284498692605186769747085266175822763
)

POSEIDON3_MDS = [
    [
        6333346312071277818186618704086159898531924501365547870951425091938056929281,
        6755569399542696339399059951025237225100719468123251062348186764733927391233,
        7037051457856975353540687448984622109479916112628386523279361213264507699201,
        7238110070938603220784707090384182741179342287274911852515914390786350776321,
    ],
    [
        6755569399542696339399059951025237225100719468123251062348186764733927391233,
        7037051457856975353540687448984622109479916112628386523279361213264507699201,
        7238110070938603220784707090384182741179342287274911852515914390786350776321,
        7388904030749824121217721821433853214953911918259805849443329273927733084161,
    ],
    [
        7037051457856975353540687448984622109479916112628386523279361213264507699201,
        7238110070938603220784707090384182741179342287274911852515914390786350776321,
        7388904030749824121217721821433853214953911918259805849443329273927733084161,
        4691367638571316902360458299323081406319944075085591015519574142176338466134,
    ],
    [
        7238110070938603220784707090384182741179342287274911852515914390786350776321,
        7388904030749824121217721821433853214953911918259805849443329273927733084161,
        4691367638571316902360458299323081406319944075085591015519574142176338466134,
        7600015574485533381823942444903391878238309401638657445141710110325668315137,
    ],
]

SYNTHETIC_DUMMY_NULLIFIER_LABEL = b"shieldd.note_reshape.synthetic_dummy.nullifier"
SYNTHETIC_DUMMY_NULLIFIER_DOMAIN = 4505177391167371668782402606211279728823173764000320688501210965528183505890
TRANSFER_SYNTHETIC_DUMMY_NULLIFIER_LABEL = b"shieldd.transfer.synthetic_dummy.nullifier"


def reduced_blake2b_domain(label: bytes) -> int:
    return int.from_bytes(hashlib.blake2b(label, digest_size=64).digest(), "little") % ORDER


if reduced_blake2b_domain(SYNTHETIC_DUMMY_NULLIFIER_LABEL) != SYNTHETIC_DUMMY_NULLIFIER_DOMAIN:
    raise SystemExit("NoteReshape synthetic-dummy nullifier domain pin drifted")
if reduced_blake2b_domain(TRANSFER_SYNTHETIC_DUMMY_NULLIFIER_LABEL) == SYNTHETIC_DUMMY_NULLIFIER_DOMAIN:
    raise SystemExit("NoteReshape and transfer synthetic-dummy domains must remain distinct")


def camel(text: str) -> str:
    result = []
    upper = True
    for char in text:
        if char in "._-":
            upper = True
        elif upper:
            result.append(char.upper())
            upper = False
        else:
            result.append(char)
    return "".join(result)


def template_name(key: str) -> str:
    op, digest = key.split("@", 1)
    return f"T{camel(op)}_{digest}"


def isolated_generated_files(module: str, function: str) -> dict[Path, str]:
    """Run one operation generator in a fresh bounded Python process.

    Several proof recoveries temporarily hold large SR1CS coefficient maps.
    Serial process isolation releases those arenas before the orchestrator
    retains the next operation's rendered sources.
    """
    with tempfile.NamedTemporaryFile(suffix=".pickle", delete=False) as handle:
        output_path = Path(handle.name)
    code = (
        "import importlib,pickle,sys; "
        "module=importlib.import_module(sys.argv[1]); "
        "outputs=getattr(module,sys.argv[2])(); "
        "pickle.dump(outputs,open(sys.argv[3],'wb'),protocol=pickle.HIGHEST_PROTOCOL)"
    )
    try:
        subprocess.run(
            [sys.executable, "-c", code, module, function, str(output_path)],
            cwd=Path(__file__).resolve().parent,
            check=True,
        )
        with output_path.open("rb") as source:
            outputs = pickle.load(source)
    finally:
        output_path.unlink(missing_ok=True)
    if not isinstance(outputs, dict) or not all(
        isinstance(path, Path) and isinstance(text, str)
        for path, text in outputs.items()
    ):
        raise SystemExit(f"{module}.{function}: invalid isolated generator result")
    return outputs


def conjunction(parts: list[str]) -> str:
    return " ∧\n  ".join(parts)


def extracted_segments(stem: str) -> dict[int, dict[str, list[str]]]:
    """Parse the already-reviewed five-row CPS extraction surface."""
    path = (
        LEAN
        / "ShielddGnarkFormal/Extracted/Deployed"
        / f"{stem}.lean"
    )
    text = path.read_text()
    segments = {}
    pattern = re.compile(
        r"def seg(\d+) \(([^)]*) : F\) \(k : .*?\) : Prop :=\n"
        r"∃ ([^:]+) : F,\n(.*?)(?=\n\ndef seg|\n\ndef relation|\n\nend )",
        re.S,
    )
    for match in pattern.finditer(text):
        body = match.group(4)
        continuation = [
            line.strip()
            for line in body.splitlines()
            if line.strip().startswith("k ")
        ]
        if not continuation:
            raise SystemExit(f"{stem}: segment {match.group(1)} has no continuation")
        segments[int(match.group(1))] = {
            "binders": match.group(2).split(),
            "witnesses": match.group(3).split(),
            "continuation": continuation[-1].split()[1:],
        }
    if not segments:
        raise SystemExit(f"{stem}: no extracted segments")
    return segments


def arrow_type(count: int, field: str = "F") -> str:
    return " → ".join([field] * count + ["Prop"])


def tuple_expr(parts: list[str]) -> str:
    return "⟨" + ", ".join(parts) + "⟩"


def poseidon3_rounds() -> list[tuple[str, list[int]]]:
    source = (LEAN / "ShielddGnarkFormal/Poseidon3Bridge.lean").read_text()
    body = source.split("def permSpec3", 1)[1].split("theorem perm3_uncps", 1)[0]
    rounds = []
    for line in body.splitlines():
        line = line.strip()
        if not line.startswith("let gate_"):
            continue
        kind = "fr4" if " := fr4 " in line else "pr4"
        constants = [int(value) for value in re.findall(r"\((\d+)\s*:F\)", line)][-4:]
        if len(constants) != 4:
            raise SystemExit(f"cannot parse Poseidon3 round constants: {line}")
        rounds.append((kind, constants))
    if len(rounds) != 39:
        raise SystemExit(f"expected 39 Poseidon3 rounds, found {len(rounds)}")
    return rounds


def render_poseidon3_trace() -> str:
    rounds = poseidon3_rounds()
    definitions = []
    for index, (kind, constants) in enumerate(rounds):
        vector = ", ".join(f"({value} : F)" for value in constants)
        definitions.append(f"def roundConstants{index} : List.Vector F 4 := vec![{vector}]")
        previous = "vec![domain, in0, in1, in2]" if index == 0 else f"state{index - 1} domain in0 in1 in2"
        definitions.append(
            f"def state{index} (domain in0 in1 in2 : F) : List.Vector F 4 :=\n"
            f"  {kind} ({previous}) roundConstants{index}"
        )
    return f"""import ShielddGnarkFormal.Deployed.NullifierDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace

open Shieldd.GnarkFormal.Poseidon3Bridge

abbrev Order : Nat :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order
abbrev F :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

/-- Reduced little-endian BLAKE2b-512 of
`shieldd.note_reshape.synthetic_dummy.nullifier`. -/
abbrev syntheticDummyNullifierDomainLit : F :=
  ({SYNTHETIC_DUMMY_NULLIFIER_DOMAIN} : F)

{chr(10).join(definitions)}

theorem output_eq_permSpec3 (domain in0 in1 in2 : F) :
    (state38 domain in0 in1 in2)[1] = permSpec3 domain in0 in1 in2 := by
  rfl

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace
"""


def render_poseidon3_scalar_base() -> str:
    """Render the shallow scalar endpoints for Poseidon3 round zero."""
    constants = poseidon3_rounds()[0][1]
    inputs = ["domain", "in0", "in1", "in2"]
    definitions = []
    for lane, coefficients in enumerate(POSEIDON3_MDS):
        coefficient_args = " ".join(f"({value} : F)" for value in coefficients)
        round_inputs = " ".join(
            f"(p17 ({value} + ({constant} : F)))"
            for value, constant in zip(inputs, constants)
        )
        definitions.append(
            f"def state0Lane{lane} (domain in0 in1 in2 : F) : F :=\n"
            f"  row4 {coefficient_args} {round_inputs}"
        )
    return f"""import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace
import ShielddGnarkFormal.Deployed.Poseidon3Link
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase

open Shieldd.GnarkFormal.Poseidon3Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon3Link

abbrev Order : Nat :=
  Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.Order
abbrev F :=
  Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

{chr(10).join(definitions)}

theorem state_eq_trace (domain in0 in1 in2 : F) :
    vec![state0Lane0 domain in0 in1 in2, state0Lane1 domain in0 in1 in2,
      state0Lane2 domain in0 in1 in2, state0Lane3 domain in0 in1 in2] =
      Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.state0
        domain in0 in1 in2 := by
  rfl

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase
"""


def poseidon3_scalar_round_name(gate: int) -> str:
    if not 1 <= gate <= 38:
        raise ValueError(f"Poseidon3 scalar round must be 1..38, got {gate}")
    return f"Poseidon3ScalarRound{gate:02d}"


def render_poseidon3_scalar_round(gate: int) -> str:
    """Render one shallow scalar Poseidon3 step and its vector correspondence."""
    rounds = poseidon3_rounds()
    kind, constants = rounds[gate]
    name = poseidon3_scalar_round_name(gate)
    previous_name = (
        "Poseidon3ScalarBase" if gate == 1 else poseidon3_scalar_round_name(gate - 1)
    )
    namespace = f"Shieldd.GnarkFormal.Deployed.Templates.Semantics.{name}"
    previous_ns = (
        f"Shieldd.GnarkFormal.Deployed.Templates.Semantics.{previous_name}"
    )
    previous_lanes = [
        f"{previous_ns}.state{gate - 1}Lane{lane} domain in0 in1 in2"
        for lane in range(4)
    ]
    if kind == "fr4":
        round_inputs = [
            f"(p17 ({previous_lanes[lane]} + ({constants[lane]} : F)))"
            for lane in range(4)
        ]
    else:
        round_inputs = [
            f"(p17 ({previous_lanes[0]} + ({constants[0]} : F)))",
            *[
                f"({previous_lanes[lane]} + ({constants[lane]} : F))"
                for lane in range(1, 4)
            ],
        ]
    definitions = []
    for lane, coefficients in enumerate(POSEIDON3_MDS):
        coefficient_args = " ".join(f"({value} : F)" for value in coefficients)
        definitions.append(
            f"def state{gate}Lane{lane} (domain in0 in1 in2 : F) : F :=\n"
            f"  row4 {coefficient_args} {' '.join(round_inputs)}"
        )
    final_theorem = ""
    if gate == 38:
        final_theorem = f"""

theorem output_eq_permSpec3 (domain in0 in1 in2 : F) :
    state38Lane1 domain in0 in1 in2 = permSpec3 domain in0 in1 in2 := by
  rw [← Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.output_eq_permSpec3]
  unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.state38
  rw [← {previous_ns}.state_eq_trace]
  rfl
"""
    return f"""import ShielddGnarkFormal.Deployed.Templates.Semantics.{previous_name}
import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace
import ShielddGnarkFormal.Deployed.Poseidon3Link
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace {namespace}

open Shieldd.GnarkFormal.Poseidon3Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon3Link

abbrev Order : Nat :=
  Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.Order
abbrev F :=
  Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

{chr(10).join(definitions)}

theorem state_eq_trace (domain in0 in1 in2 : F) :
    vec![state{gate}Lane0 domain in0 in1 in2, state{gate}Lane1 domain in0 in1 in2,
      state{gate}Lane2 domain in0 in1 in2, state{gate}Lane3 domain in0 in1 in2] =
      Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.state{gate}
        domain in0 in1 in2 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.state{gate}
  rw [← {previous_ns}.state_eq_trace]
  rfl{final_theorem}

end {namespace}
"""


def normalized_relation_rows(name: str) -> dict[int, tuple[str, list[int]]]:
    relation_dir = LEAN / "ShielddGnarkFormal/Deployed/Templates/Relations"
    text = "\n".join(
        path.read_text() for path in sorted(relation_dir.glob(f"{name}Defs*.lean"))
    )
    rows = {}
    for row in range(305):
        match = re.search(
            rf"def relationRow{row} .*? :=\n    (.*?)\n\n", text, re.S
        )
        if match is None:
            raise SystemExit(f"{name}: missing normalized relation row {row}")
        body = match.group(1)
        wires = [int(value) for value in re.findall(r"rho (\d+)", body)]
        rows[row] = (body, wires)
    return rows


def qualify_relation_atoms(expression: str, relation_ns: str) -> str:
    """Qualify named linear-combination atoms copied from a relation body."""
    return re.sub(r"\b(relationLc[A-Za-z0-9]+)\b", rf"{relation_ns}.\1", expression)


def render_synthetic_dummy_nullifier_lane_shards(key: str) -> dict[Path, str]:
    """Render one-scalar-per-leaf Poseidon proofs for a synthetic nullifier."""
    slot = SYNTHETIC_DUMMY_NULLIFIER[key]
    name = template_name(key)
    namespace = f"Shieldd.GnarkFormal.Deployed.Templates.Semantics.{name}"
    relation_ns = f"Shieldd.GnarkFormal.Deployed.Templates.Relations.{name}"
    relation_module = f"ShielddGnarkFormal.Deployed.Templates.Relations.{name}"
    trace_ns = "Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace"
    scalar_base_ns = (
        "Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase"
    )
    nullifier_ns = "Shieldd.GnarkFormal.Deployed.Nullifier"
    link_ns = "Shieldd.GnarkFormal.Deployed.Poseidon3Link"
    rows = normalized_relation_rows(name)
    extracted = extracted_segments("GadgetNullifier310_6eee7c")
    rounds = poseidon3_rounds()
    lane_projections = [".1", ".2.1", ".2.2.1", ".2.2.2"]

    gate_ranges = [
        (0, 1),
        (2, 3),
        (4, 14),
        (15, 24),
        (25, 34),
        (35, 35),
        (36, 36),
        (37, 37),
        (38, 38),
    ]
    gate_parts = {
        0: [0, 1],
        1: [2, 3, 4, 5],
        2: [6, 7, 8, 9],
        3: [10, 11, 12, 13],
        **{gate: [gate + 10] for gate in range(4, 35)},
        35: [45, 46, 47, 48],
        36: [49, 50, 51, 52],
        37: [53, 54, 55, 56],
        38: [57, 58, 59, 60],
    }
    old_segments_by_gate = {
        1: list(range(3, 7)),
        2: list(range(7, 11)),
        3: list(range(11, 15)),
        **{gate: [gate + 11] for gate in range(4, 35)},
        35: list(range(46, 50)),
        36: list(range(50, 54)),
        37: list(range(54, 58)),
        38: list(range(58, 62)),
    }

    if sorted(part for parts in gate_parts.values() for part in parts) != list(range(61)):
        raise SystemExit(f"{key}: synthetic nullifier parts are not exactly 0..60")

    def relation_lc_simp(part: int) -> str:
        body, _ = rows[part * 5]
        refs = sorted(set(re.findall(r"\b(relationLc\d+)\b", body)))
        definitions = [
            f"{relation_ns}.{ref}{suffix}"
            for ref in refs
            for suffix in ("", "Part0", "Part1")
        ]
        if not definitions:
            return ""
        return f"  simp only [{', '.join(definitions)}] at hp{part}"

    def old_expr(wire: str) -> str:
        number = int(wire[1:])
        if number == 8:
            return "(rho 1)"
        if number == 23:
            return "(rho 7)"
        if number == 24:
            return f"({slot} : F)"
        if number == 1347:
            return "(rho 6)"
        if number == 1352:
            return "(rho 12)"
        if number == 1357:
            return f"{namespace}.Fixed.slotLane"
        if 1358 <= number <= 1652:
            return f"(rho {number - 1345})"
        raise SystemExit(f"{key}: unmapped Poseidon3 trace wire {wire}")

    def part_helper(part: int, theorem_name: str = "sound") -> str:
        first_row = part * 5
        body, _ = rows[first_row]
        square = re.fullmatch(r"(.*) \* \1 = \(\(1 : F\) \* rho (\d+)\)", body)
        if square is None:
            raise SystemExit(f"{key}: cannot parse p17 input row {first_row}")
        input_expr = qualify_relation_atoms(square.group(1), relation_ns)
        row_outputs = [rows[row][1][-1] for row in range(first_row, first_row + 5)]
        q2, q4, q8, q16, q17 = row_outputs
        row_names = " ".join(
            f"{relation_ns}.relationRow{row}" for row in range(first_row, first_row + 5)
        )
        return f"""theorem {theorem_name} (rho : Nat → F)
    (h : {relation_ns}.relationPart{part} rho) :
    rho {q17} = Shieldd.GnarkFormal.Poseidon3Bridge.p17 ({input_expr}) := by
  unfold {relation_ns}.relationPart{part} {row_names} at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  exact {nullifier_ns}.p17_from_rows
    ({input_expr}) (rho {q2}) (rho {q4}) (rho {q8}) (rho {q16}) (rho {q17})
    (by linear_combination h0) (by linear_combination h1)
    (by linear_combination h2) (by linear_combination h3)
    (by linear_combination h4)
"""

    def state(gate: int) -> str:
        return (
            f"{trace_ns}.state{gate} {trace_ns}.syntheticDummyNullifierDomainLit "
            f"(rho 1) (rho 7) ({slot} : F)"
        )

    def gate_input_args(gate: int) -> list[str]:
        if gate == 0:
            return []
        indices = old_segments_by_gate[gate]
        return [old_expr(wire) for wire in extracted[indices[0]]["binders"]]

    def gate_witnesses(gate: int) -> list[str]:
        if gate == 0:
            return [
                f"{namespace}.Fixed.domainLane",
                "(rho 6)",
                "(rho 12)",
                f"{namespace}.Fixed.slotLane",
            ]
        return [
            old_expr(extracted[index]["witnesses"][-1])
            for index in old_segments_by_gate[gate]
        ]

    def st(gate: int) -> str:
        if gate == 0:
            return (
                f"{nullifier_ns}.st0 (rho 6) (rho 12) "
                f"{namespace}.Fixed.slotLane"
            )
        indices = old_segments_by_gate[gate]
        args = " ".join(
            old_expr(wire) for wire in extracted[indices[-1]]["continuation"]
        )
        return f"{nullifier_ns}.st{gate} {args}"

    def scalar_round_ns(gate: int) -> str:
        if gate == 0:
            return scalar_base_ns
        return (
            "Shieldd.GnarkFormal.Deployed.Templates.Semantics."
            f"{poseidon3_scalar_round_name(gate)}"
        )

    def scalar_state(gate: int, lane: int) -> str:
        return (
            f"{scalar_round_ns(gate)}.state{gate}Lane{lane} "
            f"{trace_ns}.syntheticDummyNullifierDomainLit "
            f"(rho 1) (rho 7) ({slot} : F)"
        )

    def scalar_endpoint(gate: int, lane: int) -> str:
        if gate == 0:
            return f"{namespace}.Fixed.s0_{lane} (rho 6) (rho 12)"
        else:
            indices = old_segments_by_gate[gate]
            args = " ".join(
                old_expr(wire) for wire in extracted[indices[-1]]["continuation"]
            )
        return f"{nullifier_ns}.s{gate}_{lane} {args}"

    def scalar_result(gate: int, lane: int) -> str:
        return f"{scalar_state(gate, lane)} = {scalar_endpoint(gate, lane)}"

    def gate_result(gate: int) -> str:
        return " ∧\n    ".join(scalar_result(gate, lane) for lane in range(4))

    def part_binders(parts: list[int]) -> str:
        return " ".join(
            f"(p{part} : {relation_ns}.relationPart{part} rho)" for part in parts
        )

    def previous_binders(gate: int) -> str:
        if gate == 0:
            return ""
        return "".join(
            f"\n    (hPrev{lane} : {scalar_result(gate - 1, lane)})" for lane in range(4)
        )

    def nullifier_round_module(gate: int) -> str:
        if gate == 0:
            return "ShielddGnarkFormal.Deployed.Nullifier.Base"
        if gate <= 34:
            return f"ShielddGnarkFormal.Deployed.Nullifier.Round{gate:02d}"
        return "ShielddGnarkFormal.Deployed.Nullifier.FullTail"

    def powers17(value: int) -> tuple[int, int, int, int, int]:
        q2 = pow(value % ORDER, 2, ORDER)
        q4 = pow(value % ORDER, 4, ORDER)
        q8 = pow(value % ORDER, 8, ORDER)
        q16 = pow(value % ORDER, 16, ORDER)
        return q2, q4, q8, q16, (q16 * (value % ORDER)) % ORDER

    def kernel_cert(left: int, right: int, unfolds: str = "") -> str:
        norm = f"norm_num [{unfolds}]" if unfolds else "norm_num"
        return (
            "(by\n"
            f"      {norm}\n"
            f"      exact (ZMod.natCast_eq_natCast_iff' {left} {right} Order).mpr (by decide))"
        )

    c0 = rounds[0][1]
    domain_base = SYNTHETIC_DUMMY_NULLIFIER_DOMAIN + c0[0]
    slot_base = slot + c0[3]
    domain_powers = powers17(domain_base)
    slot_powers = powers17(slot_base)
    domain_lane = domain_powers[-1]
    slot_lane = slot_powers[-1]
    domain_certs = [
        kernel_cert(
            domain_base * domain_base,
            domain_powers[0],
            f"{trace_ns}.syntheticDummyNullifierDomainLit, {trace_ns}.roundConstants0",
        ),
        kernel_cert(domain_powers[0] * domain_powers[0], domain_powers[1]),
        kernel_cert(domain_powers[1] * domain_powers[1], domain_powers[2]),
        kernel_cert(domain_powers[2] * domain_powers[2], domain_powers[3]),
        kernel_cert(
            domain_powers[3] * domain_base,
            domain_powers[4],
            f"{trace_ns}.syntheticDummyNullifierDomainLit, {trace_ns}.roundConstants0",
        ),
    ]
    slot_certs = [
        kernel_cert(slot_base * slot_base, slot_powers[0], f"{trace_ns}.roundConstants0"),
        kernel_cert(slot_powers[0] * slot_powers[0], slot_powers[1]),
        kernel_cert(slot_powers[1] * slot_powers[1], slot_powers[2]),
        kernel_cert(slot_powers[2] * slot_powers[2], slot_powers[3]),
        kernel_cert(
            slot_powers[3] * slot_base,
            slot_powers[4],
            f"{trace_ns}.roundConstants0",
        ),
    ]
    s0_constants = [
        (coefficients[0] * domain_lane + coefficients[3] * slot_lane) % ORDER
        for coefficients in POSEIDON3_MDS
    ]
    s0_definitions = []
    s0_lemmas = []
    for lane, (coefficients, constant) in enumerate(
        zip(POSEIDON3_MDS, s0_constants)
    ):
        m0, m1, m2, m3 = coefficients
        s0_definitions.append(
            f"def s0_{lane} (in0Lane in1Lane : F) : F :=\n"
            f"  ({constant} : F) + ({m1} : F) * in0Lane + ({m2} : F) * in1Lane"
        )
        constant_cert = kernel_cert(
            m0 * domain_lane + m3 * slot_lane,
            constant,
            "domainLane, slotLane",
        )
        s0_lemmas.append(
            f"""theorem s0_{lane}_sound (in0Lane in1Lane : F) :
    Shieldd.GnarkFormal.Deployed.Poseidon3Link.row4
      ({m0} : F) ({m1} : F) ({m2} : F) ({m3} : F)
      domainLane in0Lane in1Lane slotLane = s0_{lane} in0Lane in1Lane := by
  have hconstant :
      ({m0} : F) * domainLane + ({m3} : F) * slotLane = ({constant} : F) := by
    exact {constant_cert}
  unfold s0_{lane} Shieldd.GnarkFormal.Deployed.Poseidon3Link.row4
  rw [← hconstant]
  ring"""
        )
    s0_definitions_section = "\n" + chr(10).join(s0_definitions) + "\n"
    s0_lemmas_section = "\n" + chr(10).join(s0_lemmas) + "\n"
    ring_import = "\nimport Mathlib.Tactic.Ring"
    domain_p17_input = (
        f"{trace_ns}.syntheticDummyNullifierDomainLit + ({c0[0]} : F)"
    )
    slot_p17_input = f"({slot} : F) + ({c0[3]} : F)"
    fixed_namespace = f"{namespace}.Fixed"
    fixed = f"""import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace
import ShielddGnarkFormal.Deployed.Poseidon3Link
import ShielddGnarkFormal.Deployed.NullifierDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.NormNum{ring_import}

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace {fixed_namespace}

abbrev Order : Nat :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order
abbrev F :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def domainLane : F := ({domain_lane} : F)
def slotLane : F := ({slot_lane} : F)
{s0_definitions_section}
theorem domainLane_sound : domainLane = Shieldd.GnarkFormal.Poseidon3Bridge.p17
    ({domain_p17_input}) := by
  unfold domainLane
  exact {nullifier_ns}.p17_from_rows
    ({domain_p17_input})
    ({domain_powers[0]} : F) ({domain_powers[1]} : F) ({domain_powers[2]} : F)
    ({domain_powers[3]} : F) ({domain_powers[4]} : F)
    {domain_certs[0]} {domain_certs[1]} {domain_certs[2]}
    {domain_certs[3]} {domain_certs[4]}

theorem slotLane_sound : slotLane = Shieldd.GnarkFormal.Poseidon3Bridge.p17
    ({slot_p17_input}) := by
  unfold slotLane
  exact {nullifier_ns}.p17_from_rows
    ({slot_p17_input})
    ({slot_powers[0]} : F) ({slot_powers[1]} : F) ({slot_powers[2]} : F)
    ({slot_powers[3]} : F) ({slot_powers[4]} : F)
    {slot_certs[0]} {slot_certs[1]} {slot_certs[2]}
    {slot_certs[3]} {slot_certs[4]}
{s0_lemmas_section}
end {fixed_namespace}
"""

    outputs: dict[Path, str] = {}
    for part in range(61):
        part_namespace = f"{namespace}.Part{part}"
        part_leaf = f"""import {relation_module}
import ShielddGnarkFormal.Deployed.NullifierDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace {part_namespace}

abbrev Order : Nat :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order
abbrev F :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

{part_helper(part)}
end {part_namespace}
"""
        outputs[OUT / f"{name}Part{part}.lean"] = part_leaf
    outputs[OUT / f"{name}Fixed.lean"] = fixed
    for gate in range(39):
        parts = gate_parts[gate]
        facts = "\n".join(
            line
            for part in parts
            for line in (
                f"  have hp{part} := {namespace}.Part{part}.sound rho p{part}",
            )
            if line
        )
        imports = [
            *[
                f"import ShielddGnarkFormal.Deployed.Templates.Semantics.{name}Part{part}"
                for part in parts
            ],
            f"import ShielddGnarkFormal.Deployed.Templates.Semantics.{scalar_round_ns(gate).rsplit('.', 1)[-1]}",
            "import ShielddGnarkFormal.Deployed.PrimeOrderCertificate",
        ]
        if gate >= 1:
            imports.append(f"import {nullifier_round_module(gate)}")
        if gate <= 1:
            imports.append(
                f"import ShielddGnarkFormal.Deployed.Templates.Semantics.{name}Fixed"
            )
            imports.append("import Mathlib.Tactic.Ring")
        import_text = "\n".join(imports)
        for lane in range(4):
            lane_namespace = f"{namespace}.Round{gate}Lane{lane}"
            if gate == 0:
                proof = f"""  have hIn0 : Shieldd.GnarkFormal.Poseidon3Bridge.p17
      ((rho 1) + ({c0[1]} : F)) = rho 6 := by
    rw [show (rho 1) + ({c0[1]} : F) =
        ({c0[1]} : F) + (1 : F) * rho 1 by ring, ← hp0]
  have hIn1 : Shieldd.GnarkFormal.Poseidon3Bridge.p17
      ((rho 7) + ({c0[2]} : F)) = rho 12 := by
    rw [show (rho 7) + ({c0[2]} : F) =
        ({c0[2]} : F) + (1 : F) * rho 7 by ring, ← hp1]
  unfold {scalar_round_ns(0)}.state0Lane{lane}
  rw [← {fixed_namespace}.domainLane_sound, hIn0, hIn1,
      ← {fixed_namespace}.slotLane_sound]
  exact {fixed_namespace}.s0_{lane}_sound (rho 6) (rho 12)"""
            elif gate == 1:
                witnesses = gate_witnesses(gate)
                arg_proofs = []
                for box_lane, (witness, part) in enumerate(zip(witnesses, parts)):
                    first_row = part * 5
                    body, _ = rows[first_row]
                    square = re.fullmatch(
                        r"(.*) \* \1 = \(\(1 : F\) \* rho (\d+)\)", body
                    )
                    if square is None:
                        raise SystemExit(f"{key}: cannot parse gate-one part {part}")
                    input_expr = square.group(1)
                    left_constant = (
                        s0_constants[box_lane] + rounds[gate][1][box_lane]
                    )
                    right_constant = left_constant % ORDER
                    if not input_expr.startswith(f"(({right_constant} : F) +"):
                        raise SystemExit(
                            f"{key}: gate-one lane {box_lane} constant drift"
                        )
                    arg_proofs.extend(
                        [
                            f"  have ha{box_lane} : Shieldd.GnarkFormal.Poseidon3Bridge.p17 ({scalar_state(0, box_lane)} + ({rounds[gate][1][box_lane]} : F)) = {witness} := by",
                            f"    rw [hPrev{box_lane}]",
                            f"    rw [show {scalar_endpoint(0, box_lane)} + ({rounds[gate][1][box_lane]} : F) = {input_expr} by",
                            f"      unfold {fixed_namespace}.s0_{box_lane}",
                            f"      have hc : ({left_constant} : F) = ({right_constant} : F) :=",
                            f"        (ZMod.natCast_eq_natCast_iff' {left_constant} {right_constant} Order).mpr (by decide)",
                            f"      linear_combination hc, ← hp{part}]",
                        ]
                    )
                proof = f"""{chr(10).join(arg_proofs)}
  unfold {scalar_round_ns(gate)}.state{gate}Lane{lane} {nullifier_ns}.s{gate}_{lane}
  rw [{', '.join(f'ha{i}' for i in range(4))}]"""
            else:
                indices = old_segments_by_gate[gate]
                input_args = gate_input_args(gate)
                witnesses = gate_witnesses(gate)
                arg_proofs = []
                for box_lane, (witness, part) in enumerate(zip(witnesses, parts)):
                    first_row = part * 5
                    body, _ = rows[first_row]
                    refs = sorted(set(re.findall(r"\b(relationLc\d+)\b", body)))
                    if refs:
                        if len(refs) != 1:
                            raise SystemExit(f"{key}: gate {gate} part {part} has multiple LC inputs")
                        ref = refs[0]
                        definitions = ", ".join(
                            f"{relation_ns}.{name}"
                            for name in (ref, f"{ref}Part0", f"{ref}Part1")
                        )
                        input_expr = f"{relation_ns}.{ref} rho"
                        arg_eq = f"{nullifier_ns}.arg{gate}_{box_lane}_eq {' '.join(input_args)}"
                        arg_proofs.extend(
                            [
                                f"  have hArg{box_lane} : ({input_expr}) = {scalar_state(gate - 1, box_lane)} + ({rounds[gate][1][box_lane]} : F) := by",
                                f"    simp only [{definitions}]",
                                f"    rw [hPrev{box_lane}]",
                                f"    have hArgEq{box_lane} := {arg_eq}",
                                f"    linear_combination hArgEq{box_lane}",
                                f"  have ha{box_lane} : {witness} = Shieldd.GnarkFormal.Poseidon3Bridge.p17 ({scalar_state(gate - 1, box_lane)} + ({rounds[gate][1][box_lane]} : F)) := by",
                                f"    rw [hp{part}, hArg{box_lane}]",
                            ]
                        )
                    else:
                        arg_proofs.extend(
                            [
                                f"  have ha{box_lane} : {witness} = Shieldd.GnarkFormal.Poseidon3Bridge.p17 ({scalar_state(gate - 1, box_lane)} + ({rounds[gate][1][box_lane]} : F)) := by",
                                f"    rw [hp{part}, hPrev{box_lane}, ← {nullifier_ns}.arg{gate}_{box_lane}_eq {' '.join(input_args)}]",
                            ]
                        )
                if rounds[gate][0] == "fr4":
                    rewrites = ", ".join(f"← ha{i}" for i in range(4))
                else:
                    rewrites = "← ha0, hPrev1, hPrev2, hPrev3"
                close = f"""  unfold {scalar_round_ns(gate)}.state{gate}Lane{lane} {nullifier_ns}.s{gate}_{lane}
  rw [{rewrites}]"""
                proof = f"""{chr(10).join(arg_proofs)}
{close}"""
            leaf = f"""{import_text}

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace {lane_namespace}

abbrev Order : Nat := {trace_ns}.Order
abbrev F := {trace_ns}.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F) {part_binders(parts)}{previous_binders(gate)} :
    {scalar_result(gate, lane)} := by
{facts}
{proof}

end {lane_namespace}
"""
            outputs[OUT / f"{name}Round{gate}Lane{lane}.lean"] = leaf

    for range_index, (gate_start, gate_end) in enumerate(gate_ranges):
        imports = "\n".join(
            f"import ShielddGnarkFormal.Deployed.Templates.Semantics.{name}Round{gate}Lane{lane}"
            for gate in range(gate_start, gate_end + 1)
            for lane in range(4)
        )
        imports += "\nimport ShielddGnarkFormal.Deployed.PrimeOrderCertificate"
        parts = [
            part
            for gate in range(gate_start, gate_end + 1)
            for part in gate_parts[gate]
        ]
        lines = []
        for gate in range(gate_start, gate_end + 1):
            previous = ""
            if gate > 0:
                previous = " " + " ".join(
                    f"hPrev{lane}"
                    if gate == gate_start
                    else f"h{gate - 1}{projection}"
                    for lane, projection in enumerate(lane_projections)
                )
            args = " ".join(f"p{part}" for part in gate_parts[gate])
            for lane in range(4):
                lines.append(
                    f"  have h{gate}_{lane} := {namespace}.Round{gate}Lane{lane}.sound rho {args}{previous}"
                )
            lines.append(
                f"  have h{gate} : {gate_result(gate)} := "
                f"⟨{', '.join(f'h{gate}_{lane}' for lane in range(4))}⟩"
            )
        range_namespace = f"{namespace}.Range{range_index}"
        aggregator = f"""{imports}

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace {range_namespace}

abbrev Order : Nat := {trace_ns}.Order
abbrev F := {trace_ns}.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F) {part_binders(parts)}{previous_binders(gate_start)} :
    {gate_result(gate_end)} := by
{chr(10).join(lines)}
  exact h{gate_end}

end {range_namespace}
"""
        outputs[OUT / f"{name}Range{range_index}.lean"] = aggregator

    imports = "\n".join(
        f"import ShielddGnarkFormal.Deployed.Templates.Semantics.{name}Range{index}"
        for index in range(len(gate_ranges))
    )
    imports += "\nimport ShielddGnarkFormal.Deployed.PrimeOrderCertificate"
    threading = []
    for range_index, (gate_start, gate_end) in enumerate(gate_ranges):
        parts = [
            part
            for gate in range(gate_start, gate_end + 1)
            for part in gate_parts[gate]
        ]
        previous = ""
        if range_index > 0:
            previous = " " + " ".join(
                f"h{range_index - 1}{projection}" for projection in lane_projections
            )
        threading.append(
            f"  have h{range_index} := Range{range_index}.sound rho "
            f"{' '.join(f'p{part}' for part in parts)}{previous}"
        )
    main = f"""{imports}

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace {namespace}

abbrev Order : Nat := {trace_ns}.Order
abbrev F := {trace_ns}.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def relation (rho : Nat → F) : Prop := {relation_ns}.relation rho

def spec (rho : Nat → F) : Prop :=
  {nullifier_ns}.s38_1 (rho 292) (rho 297) (rho 302) (rho 307) =
    Shieldd.GnarkFormal.Poseidon3Bridge.permSpec3
      {trace_ns}.syntheticDummyNullifierDomainLit (rho 1) (rho 7) ({slot} : F)

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
  unfold relation {relation_ns}.relation at h
{chr(10).join(f'  rcases h with ⟨p{part}, h⟩' for part in range(60))}
  have p60 := h
{chr(10).join(threading)}
  unfold spec
  rw [← {scalar_round_ns(38)}.output_eq_permSpec3]
  rw [h{len(gate_ranges) - 1}.2.1]

end {namespace}
"""
    outputs[OUT / f"{name}.lean"] = main
    return outputs


def render_small_provider(key: str) -> str:
    name = template_name(key)
    namespace = f"Shieldd.GnarkFormal.Deployed.Templates.Semantics.{name}"
    relation_namespace = f"Shieldd.GnarkFormal.Deployed.Templates.Relations.{name}"
    relation_module = f"ShielddGnarkFormal.Deployed.Templates.Relations.{name}"
    imports = (
        f"import {relation_module}\n"
        "import ShielddGnarkFormal.Deployed.PrimeOrderCertificate\n"
        "import Mathlib.Tactic.LinearCombination"
    )
    prelude = f"""{imports}

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace {namespace}

def Order : Nat := {ORDER}
abbrev F := ZMod Order

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def relation (rho : Nat -> F) : Prop :=
  {relation_namespace}.relation rho

"""
    simplify = (
        f"simp only [relation, {relation_namespace}.relation, "
        f"{relation_namespace}.relationSegment0] at h"
    )
    if key == BOOLEAN:
        body = f"""def spec (rho : Nat -> F) : Prop :=
  rho 1 = 0 ∨ rho 1 = 1

theorem sound (rho : Nat -> F) (h : relation rho) : spec rho := by
  {simplify}
  unfold spec
  obtain ⟨h0, _⟩ := h
  have hb : rho 1 * (1 - rho 1) = 0 := by
    linear_combination h0
  rcases mul_eq_zero.mp hb with hzero | hone
  · exact Or.inl hzero
  · right
    linear_combination -hone
"""
    elif key in ZERO:
        body = f"""def spec (rho : Nat -> F) : Prop :=
  rho 1 = 0

theorem sound (rho : Nat -> F) (h : relation rho) : spec rho := by
  {simplify}
  unfold spec
  obtain ⟨h0, _⟩ := h
  linear_combination {ZERO_COMBINATION[key]}
"""
    elif key in ACTIVE_RANGE:
        flag_count, allowed, intermediates = ACTIVE_RANGE[key]
        active = " + ".join(f"rho {i}" for i in range(1, flag_count + 1))
        product = " * ".join(f"(({active}) - {value})" for value in allowed)
        relation_factors = [f"({value} - ({active}))" for value in reversed(allowed)]
        h_names = [f"h{i}" for i in range(len(intermediates) + 1)]
        combination = []
        sign = "-" if len(relation_factors) % 2 else ""
        for index, h_name in enumerate(h_names[:-1]):
            suffix = " * ".join(relation_factors[index + 2 :])
            coefficient = f"({suffix}) * " if suffix else ""
            combination.append(f"{sign}{coefficient}{h_name}")
        combination.append(f"{sign}{h_names[-1]}")
        body = f"""def activeCount (rho : Nat -> F) : F :=
  {active}

def spec (rho : Nat -> F) : Prop :=
  {product} = 0

theorem sound (rho : Nat -> F) (h : relation rho) : spec rho := by
  {simplify}
  obtain ⟨{', '.join(h_names)}, _⟩ := h
  simp only [spec]
  linear_combination {' + '.join(combination)}
"""
    elif key in DUMMY_SUFFIX:
        flag_count = DUMMY_SUFFIX[key]
        specs = ["rho 1 = 0"]
        proofs = ["  · linear_combination h0"]
        for index in range(flag_count - 1):
            current = 1 if index == 0 else 2 * index
            following = 2 * (index + 1)
            intermediate = 2 * index + 3
            specs.append(f"rho {current} * (1 - rho {following}) = 0")
            proofs.append(
                f"  · calc\n"
                f"      rho {current} * (1 - rho {following}) = rho {intermediate} := by "
                f"linear_combination h{2 * index + 1}\n"
                f"      _ = 0 := by linear_combination h{2 * index + 2}"
            )
        h_names = [f"h{i}" for i in range(2 * flag_count - 1)]
        proof_script = "\n".join(
            [f"  constructor\n{proof}" for proof in proofs[:-1]] + [proofs[-1]]
        )
        body = f"""def spec (rho : Nat -> F) : Prop :=
  {conjunction(specs)}

theorem sound (rho : Nat -> F) (h : relation rho) : spec rho := by
  {simplify}
  simp only [spec]
  obtain ⟨{', '.join(h_names)}, _⟩ := h
{proof_script}
"""
    elif key == ASSERT_EQ_NEW:
        body = f"""def spec (rho : Nat -> F) : Prop :=
  rho 1 = rho 2 + rho 3

theorem sound (rho : Nat -> F) (h : relation rho) : spec rho := by
  {simplify}
  unfold spec
  obtain ⟨h0, _⟩ := h
  linear_combination h0
"""
    elif key in EQ_IF_RESIDUAL:
        residual = EQ_IF_RESIDUAL[key]
        output = EQ_IF_RESIDUAL_OUTPUT[key]
        body = f"""def residual (rho : Nat -> F) : F :=
  {residual}

def spec (rho : Nat -> F) : Prop :=
  rho 1 = 1 ∨ residual rho = 0

theorem sound (rho : Nat -> F) (h : relation rho) : spec rho := by
  {simplify}
  obtain ⟨h0, h1, _⟩ := h
  have hp : (1 - rho 1) * residual rho = 0 := by
    calc
      (1 - rho 1) * residual rho = {output} := by
        simp only [residual]
        linear_combination h0
      _ = 0 := by linear_combination h1
  rcases mul_eq_zero.mp hp with henabled | heq
  · left
    linear_combination -henabled
  · exact Or.inr heq
"""
    elif key == EQ_IF_PRODUCT:
        body = f"""def spec (rho : Nat -> F) : Prop :=
  rho 1 = 0 ∨ rho 2 = 0

theorem sound (rho : Nat -> F) (h : relation rho) : spec rho := by
  {simplify}
  obtain ⟨h0, h1, _⟩ := h
  apply mul_eq_zero.mp
  calc
    rho 1 * rho 2 = rho 3 := by linear_combination h0
    _ = 0 := by linear_combination h1
"""
    elif key in EQUIVALENT_IF:
        enabled, left, right = EQUIVALENT_IF[key]
        if key == "decaf.assert_equivalent_if@5be591435a6da60f6425c787fbbe584d1c91891985a42a1a1ae026592549eb3e":
            left = f"rho 1 * {relation_namespace}.relationLc0 rho"
            right = f"rho 254 * {relation_namespace}.relationLc1 rho"
        offset = 1 if key.split("@", 1)[1].startswith("5153b90") else 0
        h_names = [f"h{i}" for i in range(5 + offset)]
        body = f"""def spec (rho : Nat -> F) : Prop :=
  {enabled} = 0 ∨ {left} = {right}

theorem sound (rho : Nat -> F) (h : relation rho) : spec rho := by
  {simplify}
  simp only [spec]
  obtain ⟨{', '.join(h_names)}, _⟩ := h
  have hp : ({enabled}) * (({left}) - ({right})) = 0 := by
    linear_combination
      ({enabled}) * h{offset} - ({enabled}) * h{offset + 1} +
      h{offset + 2} - h{offset + 3} + h{offset + 4}
  rcases mul_eq_zero.mp hp with hdisabled | heq
  · exact Or.inl hdisabled
  · right
    linear_combination heq
"""
    elif key == DUMMY_MUX:
        left = "(6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) * rho 2 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 3 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 4 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 5"
        right = "(6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) * rho 7 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 8 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 9 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 10"
        body = f"""def spec (rho : Nat -> F) : Prop :=
  rho 6 = (1 - rho 1) * ({left}) ∧
  rho 11 = rho 1 * ({right})

theorem sound (rho : Nat -> F) (h : relation rho) : spec rho := by
  {simplify}
  simp only [spec]
  obtain ⟨h0, h1, _⟩ := h
  constructor
  · linear_combination -h0
  · linear_combination -h1
"""
    else:
        raise SystemExit(f"no small semantic proof renderer for {key}")
    return f"{prelude}{body}\nend {namespace}\n"


def generated_files() -> dict[Path, str]:
    inventory = json.loads(INVENTORY.read_text())
    outputs = {
        OUT / "Poseidon3Trace.lean": render_poseidon3_trace(),
        OUT / "Poseidon3ScalarBase.lean": render_poseidon3_scalar_base(),
    }
    outputs.update(
        {
            OUT / f"{poseidon3_scalar_round_name(gate)}.lean":
                render_poseidon3_scalar_round(gate)
            for gate in range(1, 39)
        }
    )

    def merge(label: str, rendered: dict[Path, str]) -> None:
        for path, source in rendered.items():
            previous = outputs.get(path)
            if previous is not None and previous != source:
                raise SystemExit(f"{label}: conflicting generated output {path}")
            outputs[path] = source

    # Recover the two SR1CS-backed ladder families first, before retaining the
    # much larger statement/provider source map.
    merge("normalized DTK", isolated_generated_files(
        "gen_note_reshape_dtk_semantics", "generated_files"
    ))
    merge("normalized RVK", isolated_generated_files(
        "gen_note_reshape_rvk_semantics", "generated_files"
    ))
    merge("normalized NB", isolated_generated_files(
        "gen_note_reshape_nb_semantics", "generated_nb_semantic_files"
    ))
    merge("dummy RVK", isolated_generated_files(
        "gen_note_reshape_dummy_rvk_semantics", "generated_dummy_rvk_semantic_files"
    ))
    merge("direct representatives", isolated_generated_files(
        "gen_note_reshape_direct_representatives", "generated_files"
    ))
    merge("Poseidon representatives", isolated_generated_files(
        "gen_note_reshape_poseidon_representatives", "generated_files"
    ))
    merge("normalized SCP", isolated_generated_files(
        "gen_note_reshape_scp_semantics", "generated_files"
    ))
    # Render DTK before the NB recovery's large Python coefficient cache.  The
    # returned sources are small, but constructing DTK after NB needlessly
    # combines both generators' transient peaks on memory-constrained builders.
    merge("normalized compress", isolated_generated_files(
        "gen_note_reshape_compress_semantics", "generated_files"
    ))
    merge("statement hashes", isolated_generated_files(
        "gen_note_reshape_statement_hash_semantics", "generated_files"
    ))

    missing = []
    for template in inventory["templates"]:
        key = template["template_key"]
        provider = OUT / f"{template_name(key)}.lean"
        if provider in outputs:
            continue
        if key in SYNTHETIC_DUMMY_NULLIFIER:
            merge(key, render_synthetic_dummy_nullifier_lane_shards(key))
            continue
        try:
            outputs[provider] = render_small_provider(key)
        except SystemExit:
            missing.append(key)

    expected_mains = {
        OUT / f"{template_name(template['template_key'])}.lean"
        for template in inventory["templates"]
    }
    actual_mains = expected_mains & outputs.keys()
    if len(expected_mains) != 51 or actual_mains != expected_mains:
        raise SystemExit(
            "direct normalized provider main set drifted: "
            f"expected={len(expected_mains)} "
            f"missing={sorted(expected_mains - actual_mains)} "
            f"extra={sorted(actual_mains - expected_mains)}"
        )
    if missing:
        raise SystemExit(f"missing direct normalized providers: {missing}")
    for path, source in outputs.items():
        for marker in ("representativeRho", "representativeSeating"):
            if marker in source:
                raise SystemExit(
                    f"generated provider transport marker leaked in {path}: {marker}"
                )
    return outputs


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    outputs = generated_files()
    managed = {
        *OUT.glob("T*.lean"),
        *OUT.glob("Poseidon3*.lean"),
        OUT / "BinaryRecomposition.lean",
        OUT / "CompressToFieldCommon.lean",
        *(LEAN / "bench").glob("NoteReshapeTemplate*.lean"),
    }
    unexpected = sorted(managed - set(outputs))
    if args.check:
        stale = [str(path) for path, text in outputs.items() if not path.exists() or path.read_text() != text]
        errors = []
        if stale:
            errors.append("stale template semantic providers:\n" + "\n".join(stale))
        if unexpected:
            errors.append("unexpected template semantic providers:\n" + "\n".join(map(str, unexpected)))
        if errors:
            raise SystemExit("\n".join(errors))
        return
    OUT.mkdir(parents=True, exist_ok=True)
    for path in unexpected:
        path.unlink()
        print(f"removed {path}")
    for path, text in outputs.items():
        path.write_text(text)
        print(f"wrote {path}")


if __name__ == "__main__":
    main()
