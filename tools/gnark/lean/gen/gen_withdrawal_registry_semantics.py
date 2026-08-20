#!/usr/bin/env python3
"""Generate exact constant-domain Poseidon template semantics.

These hash templates are constant-domain Poseidon permutations whose
domain-lane first S-box is folded by gnark.  Consequently, templates with the
same row count but different domains are not interchangeable.  This generator
reconstructs a CPS relation from each canonical normalized SR1CS, proves the
exact normalized rows imply that relation, and invokes the reviewed
width-parameterized Poseidon recovery emitter with the template's own domain.
"""

from __future__ import annotations

import contextlib
import gzip
import hashlib
import io
import json
import re
import tempfile
from dataclasses import dataclass
from pathlib import Path

import formal_json
import gen_poseidon_bridge as poseidon_bridge
import poseidon_recovery as poseidon
from lean_zmod_instances import named_instance_block
from poseidon_constants import rounds as poseidon_rounds
from write_if_changed import write_if_changed


ROOT = Path(__file__).resolve().parents[4]
LEAN = ROOT / "tools/gnark/lean"
FORMAL = LEAN / "ShielddGnarkFormal"
RELATIONS = FORMAL / "Deployed/Templates/Relations"
SEMANTICS = FORMAL / "Deployed/Templates/Semantics"
ARTIFACTS = ROOT / "tools/gnark/artifacts"
REGISTRY = ARTIFACTS / "proof-template-registry.json"
VECTORS = (
    ROOT / "tools/gnark/internal/primitives/vectors/phase05_vectors.json"
)
VECTOR_FIELDS = (
    "decaf377_companion_curve",
    "poseidon377",
    "decaf377_compress_vectors",
    "decaf377_encode_vectors",
    "dleq_fixture",
    "note_reshape_statements",
)
ORDER = 8444461749428370424248824938781546531375899335154063827935233455917409239041


@dataclass(frozen=True)
class HashTemplate:
    operation: str
    digest: str
    rate: int
    domain: int
    row_count: int
    local_wire_count: int
    output_wires: tuple[int, ...]

    @property
    def key(self) -> str:
        return f"{self.operation}@{self.digest}"

    @property
    def name(self) -> str:
        return f"T{camel(self.operation)}_{self.digest}"

    @property
    def leaf(self) -> str:
        return f"Certified{camel(self.operation)}_{self.digest[:12]}Poseidon"

    @property
    def stem(self) -> str:
        return f"{self.leaf}Rows{self.row_count}"

    @property
    def config_name(self) -> str:
        return f"template_{self.digest[:16]}"


HASH_TEMPLATES = (
    HashTemplate(
        "gadget.note_commitment",
        "252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c",
        5,
        1395601591349183338445327673196897598598470771863946901251414766570764147135,
        390,
        398,
        (372, 377, 382, 387, 392, 397),
    ),
    HashTemplate(
        "gadget.asset_registry_params_hash",
        "d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086",
        4,
        3087648872801978871068165188801234750107370627422529216418050362074203193020,
        350,
        356,
        (335, 340, 345, 350, 355),
    ),
    HashTemplate(
        "gadget.asset_registry_ring_hash",
        "fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2",
        5,
        2332157431640739955796532904592455296874484311567337797924969966168817210674,
        390,
        397,
        (371, 376, 381, 386, 391, 396),
    ),
    HashTemplate(
        "gadget.asset_registry_leaf_hash",
        "9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff",
        5,
        7414146286439358428123110060125696348906971675449116418017868010797147357618,
        390,
        396,
        (370, 375, 380, 385, 390, 395),
    ),
    HashTemplate(
        "gadget.asset_registry_leaf_hash",
        "9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744",
        5,
        7414146286439358428123110060125696348906971675449116418017868010797147357618,
        390,
        405,
        (379, 384, 389, 394, 399, 404),
    ),
    HashTemplate(
        "gadget.compliance_leaf",
        "712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024",
        7,
        7622592512688680933372249798274825146043518728282898866874410341055945679433,
        470,
        480,
        (444, 449, 454, 459, 464, 469, 474, 479),
    ),
)

AUTHORITATIVE_DOMAIN_KEYS = {
    "gadget.note_commitment": "note_commit_domain",
    "gadget.asset_registry_params_hash": "imt_params_domain",
    "gadget.asset_registry_ring_hash": "imt_ring_domain",
    "gadget.asset_registry_leaf_hash": "imt_leaf_domain",
    "gadget.compliance_leaf": "compliance_leaf_domain",
}


def camel(text: str) -> str:
    out: list[str] = []
    upper = True
    for char in text:
        if char in "._-":
            upper = True
        elif upper:
            out.append(char.upper())
            upper = False
        else:
            out.append(char)
    return "".join(out)


def _validate_authoritative_domain(template: HashTemplate) -> None:
    try:
        vector_key = AUTHORITATIVE_DOMAIN_KEYS[template.operation]
    except KeyError as error:
        raise ValueError(
            f"{template.key}: no authoritative domain-vector key"
        ) from error
    vectors = formal_json.read_json_object(
        VECTORS,
        expected_fields=VECTOR_FIELDS,
        canonical="pretty",
    )
    domain = int(vectors["poseidon377"][vector_key]) % ORDER
    if template.domain != domain:
        raise ValueError(
            f"{template.key}: domain pin drifted from {vector_key}: "
            f"{template.domain} != {domain}"
        )


def _parse_terms(group: str) -> list[tuple[str, int]]:
    terms: list[tuple[str, int]] = []
    rest = group.strip()
    while rest:
        match = re.match(r"\((\S+)\s+(\d+)\)\s*", rest)
        if match is None:
            raise ValueError(f"bad canonical term group: {group!r}")
        terms.append((match.group(1), int(match.group(2))))
        rest = rest[match.end() :]
    return terms


def _parse_constraint(line: str):
    inner = line.strip()
    if not inner.startswith("(constraint ") or not inner.endswith(")"):
        raise ValueError(f"not a canonical constraint: {line!r}")
    groups = re.findall(r"\[([^\]]*)\]", inner[len("(constraint ") : -1])
    if len(groups) != 3:
        raise ValueError(f"canonical constraint does not have three sides: {line!r}")
    return tuple(_parse_terms(group) for group in groups)


def _registry_entry(template: HashTemplate) -> dict:
    payload = formal_json.read_template_registry(REGISTRY)
    entries = payload["templates"]
    matches = [entry for entry in entries if entry["proof_template_id"] == template.key]
    if len(matches) != 1:
        raise ValueError(f"{template.key}: expected one canonical registry entry")
    entry = matches[0]
    expected = {
        "op": template.operation,
        "canonical_relation_sha256_hex": template.digest,
        "row_count": template.row_count,
        "local_wire_count": template.local_wire_count,
    }
    for field, value in expected.items():
        if entry.get(field) != value:
            raise ValueError(
                f"{template.key}: registry {field} drifted: "
                f"{entry.get(field)!r} != {value!r}"
            )
    return entry


def _canonical_rows(template: HashTemplate):
    entry = _registry_entry(template)
    path = ARTIFACTS / entry["canonical_relation_file"]
    formal_json.RepoPathAudit().inspect(
        path, label=f"{template.key} canonical relation"
    )
    compressed = path.read_bytes()
    with gzip.GzipFile(fileobj=io.BytesIO(compressed), mode="rb") as stream:
        raw = stream.read()
    digest = hashlib.sha256(raw).hexdigest()
    if digest != template.digest:
        raise ValueError(
            f"{template.key}: canonical relation digest mismatch: {digest}"
        )
    lines = raw.decode().splitlines()
    if not lines or any(
        not line.startswith("(constraint ") or not line.endswith(")")
        for line in lines
    ):
        raise ValueError(f"{template.key}: malformed canonical SR1CS")
    rows = [_parse_constraint(line) for line in lines]
    if len(rows) != template.row_count:
        raise ValueError(
            f"{template.key}: canonical relation has {len(rows)} rows, "
            f"expected {template.row_count}"
        )
    wires = {
        wire
        for row in rows
        for side in row
        for _, wire in side
    }
    expected_wires = set(range(template.local_wire_count))
    if wires != expected_wires:
        raise ValueError(
            f"{template.key}: local-wire namespace drifted: "
            f"missing={sorted(expected_wires - wires)[:3]} "
            f"extra={sorted(wires - expected_wires)[:3]}"
        )
    return rows


def _singleton_wire(side: list[tuple[str, int]]) -> int:
    if len(side) != 1 or side[0][0] != "1" or side[0][1] == 0:
        raise ValueError(f"expected singleton output wire, got {side!r}")
    return side[0][1]


def _wires_in(sides) -> set[int]:
    return {
        wire
        for side in sides
        for _, wire in side
        if wire != 0
    }


def _side_expr(side: list[tuple[str, int]]) -> str:
    if not side:
        return "(0 : F)"
    terms = []
    for coefficient, wire in side:
        literal = f"({coefficient} : F)"
        terms.append(literal if wire == 0 else f"{literal} * w{wire}")
    return " + ".join(terms)


def _verify_sbox(rows, segment: int) -> tuple[int, tuple[int, ...]]:
    chunk = rows[5 * segment : 5 * segment + 5]
    if len(chunk) != 5:
        raise ValueError(f"S-box segment {segment} is truncated")
    outputs = tuple(_singleton_wire(row[2]) for row in chunk)
    source = chunk[0][0]
    if chunk[0][1] != source:
        raise ValueError(f"S-box segment {segment}: first row is not x*x")
    for index in range(1, 4):
        expected = [("1", outputs[index - 1])]
        if chunk[index][0] != expected or chunk[index][1] != expected:
            raise ValueError(
                f"S-box segment {segment}: square row {index} is not chained"
            )
    if (
        chunk[4][0] != [("1", outputs[3])]
        or chunk[4][1] != source
    ):
        raise ValueError(f"S-box segment {segment}: final row is not x16*x")
    return outputs[-1], outputs


def _round_layout(template: HashTemplate, rows):
    width = template.rate + 1
    round_kinds = [kind for kind, _ in poseidon_rounds(template.rate)]
    expected_counts = [
        (width - 1 if index == 0 else width) if kind.startswith("fr") else 1
        for index, kind in enumerate(round_kinds)
    ]
    if sum(expected_counts) * 5 != template.row_count:
        raise ValueError(f"{template.key}: Poseidon round-count pin drifted")
    finals = []
    local_outputs = []
    for segment in range(template.row_count // 5):
        final, outputs = _verify_sbox(rows, segment)
        finals.append(final)
        local_outputs.append(set(outputs))
    groups: dict[str, list[str]] = {}
    segment_to_round: dict[str, int] = {}
    cursor = 0
    for round_index, count in enumerate(expected_counts):
        groups[str(round_index)] = [
            f"w{wire}" for wire in finals[cursor : cursor + count]
        ]
        for segment in range(cursor, cursor + count):
            segment_to_round[str(segment)] = round_index
        cursor += count
    if tuple(int(wire[1:]) for wire in groups[str(len(round_kinds) - 1)]) != (
        template.output_wires
    ):
        raise ValueError(
            f"{template.key}: final Poseidon lanes drifted from "
            f"{template.output_wires}"
        )
    return groups, segment_to_round, local_outputs


def _cps_layout(template: HashTemplate, rows, groups, local_outputs):
    segment_count = template.row_count // 5
    required = {int(wire[1:]) for wire in groups["38"]}
    arguments: list[list[int]] = [[] for _ in range(segment_count)]
    continuations: list[list[int]] = [[] for _ in range(segment_count)]
    for segment in range(segment_count - 1, -1, -1):
        chunk = rows[5 * segment : 5 * segment + 5]
        uses = _wires_in(
            [row[0] for row in chunk] + [row[1] for row in chunk]
        )
        uses -= local_outputs[segment]
        live_in = uses | (required - local_outputs[segment])
        arguments[segment] = sorted(live_in)
        live_out = set(required)
        live_out.add(_singleton_wire(chunk[-1][2]))
        continuation = sorted(
            wire
            for wire in live_out
            if wire != _singleton_wire(chunk[-1][2])
        )
        continuation.append(_singleton_wire(chunk[-1][2]))
        continuations[segment] = continuation
        required = live_in
    for segment in range(segment_count - 1):
        available = set(arguments[0]) | set(continuations[segment])
        missing = set(arguments[segment + 1]) - available
        if missing:
            raise ValueError(
                f"{template.key}: CPS segment {segment + 1} loses "
                f"live wires {sorted(missing)}"
            )
    return arguments, continuations


def _decl(wires: list[int]) -> str:
    if not wires:
        raise ValueError("generated CPS segment has no live-in wires")
    return f"({' '.join(f'w{wire}' for wire in wires)} : F)"


def _use(wires: list[int]) -> str:
    return " ".join(f"w{wire}" for wire in wires)


def _arrow_type(count: int) -> str:
    return " → ".join(["F"] * count + ["Prop"])


def _emit_cps_source(template: HashTemplate, rows, arguments, continuations) -> str:
    lines = [
        "import ShielddGnarkFormal.ChoiceFreeZMod\n",
        "import ProvenZk.Gates\n",
        f"import ShielddGnarkFormal.Extracted.PoseidonHash{template.rate}\n\n",
        "set_option linter.unusedVariables false\n",
        "set_option maxRecDepth 1000000\n",
        "set_option maxHeartbeats 50000000\n\n",
        f"namespace Shieldd.GnarkFormal.Extracted.Deployed.{template.stem}\n\n",
        "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n\n",
        f"abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.PoseidonHash{template.rate}.Order\n",
        "variable [Fact (Nat.Prime Order)]\n",
        f"abbrev F := Shieldd.GnarkFormal.Extracted.PoseidonHash{template.rate}.F\n\n",
    ]
    for segment, (args, exits) in enumerate(zip(arguments, continuations)):
        chunk = rows[5 * segment : 5 * segment + 5]
        witnesses = [_singleton_wire(row[2]) for row in chunk]
        lines.extend(
            [
                f"def seg{segment} {_decl(args)} "
                f"(k : {_arrow_type(len(exits))}) : Prop :=\n",
                f"∃ {_use(witnesses)} : F,\n",
            ]
        )
        constraints = [
            f"    ({_side_expr(left)}) * ({_side_expr(right)}) = "
            f"({_side_expr(output)})"
            for left, right, output in chunk
        ]
        lines.append(" ∧\n".join(constraints))
        lines.append(f" ∧\n    k {_use(exits)}\n\n")
    lines.append(
        f"def relation {_decl(arguments[0])} "
        f"(k : {_arrow_type(len(continuations[-1]))}) : Prop :=\n"
    )
    indent = "  "
    for segment, args in enumerate(arguments):
        lines.append(
            f"{indent}seg{segment} {_use(args)} "
            f"(fun {_use(continuations[segment])} =>\n"
        )
        indent += "  "
    lines.append(
        f"{indent}k {_use(continuations[-1])}"
        + ")" * len(arguments)
        + "\n\n"
    )
    lines.append(
        f"end Shieldd.GnarkFormal.Extracted.Deployed.{template.stem}\n"
    )
    return "".join(lines)


def _render_term(coefficient: str, wire: int) -> str:
    if wire == 0:
        return f"({coefficient} : F)"
    if coefficient == "1":
        return f"w{wire}"
    return f"({coefficient} : F) * w{wire}"


def _spec_inputs(template: HashTemplate, rows) -> list[str]:
    constants = {
        index: tuple(str(value) for value in values)
        for index, (_, values) in enumerate(poseidon_rounds(template.rate))
    }
    result = []
    for lane in range(template.rate):
        side = rows[5 * lane][0]
        expected_constant = constants[0][lane + 1]
        if not side or side[0] != (expected_constant, 0):
            raise ValueError(
                f"{template.key}: lane {lane} lost its round-0 constant"
            )
        if any(wire == 0 for _, wire in side[1:]):
            raise ValueError(
                f"{template.key}: lane {lane} has an extra constant input"
            )
        result.append(
            " + ".join(
                _render_term(coefficient, wire)
                for coefficient, wire in side[1:]
            )
        )
    if any(not expression for expression in result):
        raise ValueError(f"{template.key}: empty Poseidon input expression")
    return result


def _mds_sequence(rate: int) -> list[int]:
    vectors = formal_json.read_json_object(
        VECTORS,
        expected_fields=VECTOR_FIELDS,
        canonical="pretty",
    )["poseidon377"][f"rate_{rate}"]
    width = rate + 1
    matrix = [int(value) for value in vectors["mds"]]
    if len(matrix) != width * width:
        raise ValueError(f"Poseidon rate {rate}: malformed MDS matrix")
    sequence = matrix[:width] + [
        matrix[row * width + width - 1] for row in range(1, width)
    ]
    for row in range(width):
        for column in range(width):
            if matrix[row * width + column] != sequence[row + column]:
                raise ValueError(
                    f"Poseidon rate {rate}: MDS matrix is not Hankel"
                )
    return sequence


def _ranges(segment_to_round: dict[str, int]) -> list[list[int]]:
    """Keep generated range theorems small and end only at round boundaries."""
    by_round: list[list[int]] = []
    for round_index in range(39):
        segments = sorted(
            int(segment)
            for segment, owner in segment_to_round.items()
            if owner == round_index
        )
        if not segments:
            raise ValueError(f"Poseidon round {round_index} has no S-box rows")
        by_round.append(segments)
    ranges: list[list[int]] = []
    current: list[int] = []
    for segments in by_round:
        if current and len(current) + len(segments) > 8:
            ranges.append(current)
            current = []
        current.extend(segments)
    if current:
        ranges.append(current)
    return ranges


def _gendata(template: HashTemplate, rows, arguments, groups, segment_to_round):
    kinds_and_constants = poseidon_rounds(template.rate)
    return {
        "cs": {
            str(index): [str(value) for value in values]
            for index, (_, values) in enumerate(kinds_and_constants)
        },
        "groups": groups,
        "kind": {
            str(index): ("full" if function.startswith("fr") else "partial")
            for index, (function, _) in enumerate(kinds_and_constants)
        },
        "seg2round": segment_to_round,
        "ranges": _ranges(segment_to_round),
        "domain": str(template.domain),
        "public_args": [f"w{wire}" for wire in arguments[0]],
        "spec_inputs": _spec_inputs(template, rows),
        "seq": [str(value) for value in _mds_sequence(template.rate)],
    }


def _shim(template: HashTemplate) -> str:
    return f"""import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Extracted.Deployed.{template.stem}
import ShielddGnarkFormal.Poseidon{template.rate}Bridge
import ShielddGnarkFormal.Deployed.PrimeOrder

namespace Shieldd.GnarkFormal.Deployed.{template.leaf}

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Shieldd.GnarkFormal.Poseidon{template.rate}Bridge

instance : Fact (Nat.Prime
    Shieldd.GnarkFormal.Extracted.Deployed.{template.stem}.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

abbrev F :=
  Shieldd.GnarkFormal.Extracted.Deployed.{template.stem}.F

def domainLit : F := ({template.domain} : F)

theorem p17_from_rows (x v0 v1 v2 v3 v4 : F)
    (h0 : x * x = v0) (h1 : v0 * v0 = v1)
    (h2 : v1 * v1 = v2) (h3 : v2 * v2 = v3)
    (h4 : v3 * x = v4) :
    v4 = p17 x := by
  unfold p17{f" Poseidon377.Fixed5.p17" if template.rate == 5 else ""}
  rw [← h4, ← h3, ← h2, ← h1, ← h0]

end Shieldd.GnarkFormal.Deployed.{template.leaf}
"""


def _relation_lc_names(name: str) -> dict[int, tuple[str, ...]]:
    source = "\n".join(
        path.read_text() for path in sorted(RELATIONS.glob(f"{name}*.lean"))
    )
    all_names = tuple(
        sorted(set(re.findall(r"def (relationLc[A-Za-z0-9]+) ", source)))
    )
    result = {}
    row_pattern = re.compile(
        r"def relationRow(\d+) \(rho[^\n]*\) : Prop :=\n"
        r"(.*?)(?=\n\ndef |\Z)",
        re.DOTALL,
    )
    for match in row_pattern.finditer(source):
        references = set(
            re.findall(r"\b(relationLc\d+)\b", match.group(2))
        )
        result[int(match.group(1))] = tuple(
            candidate
            for candidate in all_names
            if any(
                candidate == reference
                or candidate.startswith(reference + "Part")
                for reference in references
            )
        )
    if len(result) == 0:
        raise ValueError(f"{name}: normalized relation rows are missing")
    return result


def _rho_expression(expression: str) -> str:
    return re.sub(r"\bw(\d+)\b", r"rho \1", expression)


def _provider(
    template: HashTemplate,
    segments,
    arguments,
    continuations,
    gendata,
) -> str:
    name = template.name
    namespace = (
        "Shieldd.GnarkFormal.Deployed.Templates.Semantics." + name
    )
    relation = (
        "Shieldd.GnarkFormal.Deployed.Templates.Relations." + name
    )
    relation_import = relation.replace(
        "Shieldd.GnarkFormal", "ShielddGnarkFormal"
    )
    extracted = (
        "Shieldd.GnarkFormal.Extracted.Deployed." + template.stem
    )
    bridge = f"Shieldd.GnarkFormal.Deployed.{template.leaf}"
    segment_count = template.row_count // 5
    mapping = {
        wire: wire
        for segment in segments.values()
        for field in ("binders", "witnesses", "cont")
        for name_ in segment[field]
        for wire in [int(name_[1:])]
    }
    helpers = poseidon.emit_part_helpers(
        "template",
        relation,
        template.stem,
        extracted,
        segments,
        mapping,
        0,
        segment_count - 1,
        _relation_lc_names(name),
        "providerAddSemigroup",
    ).replace(f"{relation}.F", "F")
    final_wires = [int(wire[1:]) for wire in gendata["groups"]["38"]]
    spec_inputs = [
        _rho_expression(expression) for expression in gendata["spec_inputs"]
    ]
    public_inputs = [f"(rho {wire})" for wire in arguments[0]]
    output = f"{bridge}.s38_1 " + " ".join(
        f"(rho {wire})" for wire in final_wires
    )
    spec = f"""def output (rho : Nat → F) : F :=
  {output}

def spec (rho : Nat → F) : Prop :=
  output rho =
    Shieldd.GnarkFormal.Poseidon{template.rate}Bridge.permSpec{template.rate}
      ({template.domain} : F)
      {' '.join(f'({expression})' for expression in spec_inputs)}

"""
    final_names = [f"w{wire}" for wire in final_wires]
    final_equalities = " ∧ ".join(
        f"{wire} = rho {wire[1:]}" for wire in final_names
    )
    final_rewrites = ", ".join(
        f"← h{wire}" for wire in final_names
    )
    relation_to = f"""theorem template_relation_to_poseidon
    (rho : Nat → F) (h : {relation}.relation rho) :
    {extracted}.relation {' '.join(public_inputs)}
      (fun {' '.join(final_names)} => {final_equalities}) := by
  unfold {relation}.relation at h
{poseidon.rcases_parts(segment_count)}
  unfold {extracted}.relation
{poseidon.emit_apply_chain("template", 0, segment_count - 1)}
  exact ⟨{', '.join('rfl' for _ in final_names)}⟩

"""
    sound = f"""theorem sound (rho : Nat → F)
    (h : {relation}.relation rho) : spec rho := by
  have hExtracted := template_relation_to_poseidon rho h
  rcases {bridge}.relation_sound_permSpec
      {' '.join(public_inputs)} _ hExtracted with
    ⟨{', '.join(final_names)}, hk, hperm⟩
  rcases hk with ⟨{', '.join(f'h{wire}' for wire in final_names)}⟩
  unfold spec output
  rw [{final_rewrites}]
  exact hperm

"""
    return f"""import {relation_import}
import ShielddGnarkFormal.Deployed.{template.leaf}.SemanticBridge
import ShielddGnarkFormal.Deployed.PrimeOrder
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace {namespace}

def Order : Nat := {ORDER}
abbrev F := ZMod Order

instance templateFactPrime : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

{named_instance_block("provider", include_add_semigroup=True)}
{spec}{helpers}{relation_to}{sound}
end {namespace}
"""


def _hash_outputs(template: HashTemplate) -> dict[Path, str]:
    _validate_authoritative_domain(template)
    rows = _canonical_rows(template)
    groups, segment_to_round, local_outputs = _round_layout(template, rows)
    arguments, continuations = _cps_layout(
        template, rows, groups, local_outputs
    )
    cps_source = _emit_cps_source(
        template, rows, arguments, continuations
    )
    gendata = _gendata(
        template, rows, arguments, groups, segment_to_round
    )
    outputs: dict[Path, str] = {}
    with tempfile.TemporaryDirectory(
        prefix=f"poseidon-template-{template.digest[:8]}-"
    ) as temp_name:
        temp = Path(temp_name)
        extracted_dir = temp / "Extracted/Deployed"
        deployed_dir = temp / "Deployed"
        generator_dir = temp / "gen"
        extracted_dir.mkdir(parents=True)
        generator_dir.mkdir(parents=True)
        source_path = extracted_dir / f"{template.stem}.lean"
        source_path.write_text(cps_source)
        (
            generator_dir / f"{template.config_name}_gendata.json"
        ).write_text(json.dumps(gendata, indent=2) + "\n")
        saved = (
            poseidon_bridge.ROOT,
            poseidon_bridge.EXTRACTED,
            poseidon_bridge.DEPLOYED,
            poseidon_bridge.HERE,
            poseidon.EXTRACTED,
        )
        poseidon_bridge.ROOT = temp
        poseidon_bridge.EXTRACTED = extracted_dir
        poseidon_bridge.DEPLOYED = deployed_dir
        poseidon_bridge.HERE = generator_dir
        poseidon.EXTRACTED = extracted_dir
        poseidon_bridge.CONFIGS[template.config_name] = {
            "W": template.rate + 1,
            "leaf": template.leaf,
            "slice_stem": template.stem,
            "choice_free_zmod": True,
            "link": f"Poseidon{template.rate}Link",
            "bridge_ns": f"Poseidon{template.rate}Bridge",
            "deployed_bridge": f"{template.leaf}DeployedBridge",
            "spec": f"permSpec{template.rate}",
            "domain_sym": "domainLit",
            "extracted_ns": (
                "Shieldd.GnarkFormal.Extracted."
                f"PoseidonHash{template.rate}"
            ),
        }
        try:
            with contextlib.redirect_stdout(io.StringIO()):
                poseidon_bridge.build(template.config_name)
            segments = poseidon.parse_segments(template.stem)
            if len(segments) != template.row_count // 5:
                raise ValueError(
                    f"{template.key}: generated CPS segment count drifted"
                )
            outputs[
                FORMAL / "Extracted/Deployed" / source_path.name
            ] = source_path.read_text()
            for path in sorted(deployed_dir.rglob("*.lean")):
                relative = path.relative_to(deployed_dir)
                outputs[FORMAL / "Deployed" / relative] = path.read_text()
        finally:
            (
                poseidon_bridge.ROOT,
                poseidon_bridge.EXTRACTED,
                poseidon_bridge.DEPLOYED,
                poseidon_bridge.HERE,
                poseidon.EXTRACTED,
            ) = saved
            poseidon_bridge.CONFIGS.pop(template.config_name, None)
    outputs[
        FORMAL / "Deployed" / f"{template.leaf}DeployedBridge.lean"
    ] = _shim(template)
    outputs[SEMANTICS / f"{template.name}.lean"] = _provider(
        template, segments, arguments, continuations, gendata
    )
    return outputs


def generated_files() -> dict[Path, str]:
    outputs: dict[Path, str] = {}
    for template in HASH_TEMPLATES:
        generated = _hash_outputs(template)
        overlap = set(outputs) & set(generated)
        if overlap:
            raise ValueError(
                "Poseidon template generators overlap: "
                + ", ".join(str(path) for path in sorted(overlap))
            )
        outputs.update(generated)
    combined = "\n".join(outputs.values())
    for forbidden in (
        "representativeRho",
        "representativeSeating",
        "Classical.choice",
        "native_decide",
    ):
        if forbidden in combined:
            raise ValueError(
                f"Poseidon template provider contains forbidden {forbidden}"
            )
    return outputs


def main() -> None:
    for path, source in generated_files().items():
        write_if_changed(path, source)


if __name__ == "__main__":
    main()
