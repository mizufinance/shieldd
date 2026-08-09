#!/usr/bin/env python3
"""Generate exact semantic providers for the deployed depth-16 quad paths.

Asset-registry and compliance paths share the same fixed-domain Poseidon4
permutation, but their leaf linear combinations have different arities.  This
generator authenticates every canonical row, builds one abstract-input
Poseidon bridge, and seats each of the 32 deployed node permutations into that
bridge without transporting either path through a representative relation.
"""

from __future__ import annotations

import contextlib
import gzip
import hashlib
import io
import json
import re
import tempfile
from dataclasses import dataclass, replace
from pathlib import Path

import formal_json
import gen_poseidon_bridge as poseidon_bridge
import gen_withdrawal_registry_semantics as registry
import manifest_discovery as discovery
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
INVENTORY = ARTIFACTS / "certified-template-inventory.json"

ORDER = 8444461749428370424248824938781546531375899335154063827935233455917409239041
ROW_COUNT = 5857
LEVELS = 16
BLOCK_SIZE = 4
BLOCKS = LEVELS // BLOCK_SIZE
PART_SIZE = 80
BOOL_ROWS = range(0, 32)
RECOMPOSE_ROW = 32
SELECT_BASE = 33
LEVEL_ROWS = 364
POSEIDON_OFFSET = 14
POSEIDON_ROWS = 350
POSEIDON_SEGMENTS = 70
HELPER_CHUNK = 10

NODE_C = (
    7037051457856975353540687448984622109479916112628386523279361213264507699201,
    7238110070938603220784707090384182741179342287274911852515914390786350776321,
    7388904030749824121217721821433853214953911918259805849443329273927733084161,
    4691367638571316902360458299323081406319944075085591015519574142176338466134,
    7600015574485533381823942444903391878238309401638657445141710110325668315137,
)

COMMON_LEAF = "CertifiedQuadPathNodePoseidon"
COMMON_STEM = f"{COMMON_LEAF}Rows{POSEIDON_ROWS}"
COMMON_CONFIG = "certified_quad_path_node"
COMMON_EXTRACTED = f"Shieldd.GnarkFormal.Extracted.Deployed.{COMMON_STEM}"
COMMON_BRIDGE = f"Shieldd.GnarkFormal.Deployed.{COMMON_LEAF}"
COMMON_EXTRACTED_IMPORT = f"ShielddGnarkFormal.Extracted.Deployed.{COMMON_STEM}"
COMMON_BRIDGE_IMPORT = f"ShielddGnarkFormal.Deployed.{COMMON_LEAF}.SemanticBridge"

RECOVER_STEP = (
    "Shieldd.GnarkFormal.Deployed.StateCommitmentPathChoiceFree.recoverStep"
)
RECOVER_STEP_EQ = (
    "Shieldd.GnarkFormal.Deployed.StateCommitmentPathChoiceFree.recoverStep_eq"
)
PERM4 = "Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4"


@dataclass(frozen=True)
class PathDeployment:
    circuit: str
    args: tuple[str, ...]


@dataclass(frozen=True)
class PathTemplate:
    operation: str
    digest: str
    local_wire_count: int
    deployments: tuple[PathDeployment, ...]

    @property
    def key(self) -> str:
        return f"{self.operation}@{self.digest}"

    @property
    def name(self) -> str:
        return f"T{camel(self.operation)}_{self.digest}"

    @property
    def relation(self) -> str:
        return (
            "Shieldd.GnarkFormal.Deployed.Templates.Relations."
            f"{self.name}"
        )

    @property
    def relation_import(self) -> str:
        return self.relation.replace(
            "Shieldd.GnarkFormal", "ShielddGnarkFormal"
        )

    @property
    def namespace(self) -> str:
        return (
            "Shieldd.GnarkFormal.Deployed.Templates.Semantics."
            f"{self.name}"
        )

    @property
    def import_prefix(self) -> str:
        return self.namespace.replace(
            "Shieldd.GnarkFormal", "ShielddGnarkFormal"
        )


TEMPLATES = (
    PathTemplate(
        "gadget.asset_registry_path",
        "15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67",
        5848,
        (
            PathDeployment(
                "shielded_ics20_withdrawal",
                (
                    "leaf=asset.leaf.commitment",
                    "path=asset.path",
                    "position=asset.position",
                    "out=asset.root.computed",
                ),
            ),
            PathDeployment(
                "transfer",
                (
                    "leaf=asset.leaf.commitment",
                    "path=asset.path",
                    "position=asset.position",
                    "out=asset.root.computed",
                ),
            ),
        ),
    ),
    PathTemplate(
        "gadget.compliance_path",
        "3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b",
        5850,
        (
            PathDeployment(
                "shielded_ics20_withdrawal",
                (
                    "leaf=sender.leaf_commitment",
                    "path=sender.path",
                    "position=sender.position",
                    "out=sender.compliance_root",
                ),
            ),
            PathDeployment(
                "transfer",
                (
                    "leaf=sender.leaf_commitment",
                    "path=sender.path",
                    "position=sender.position",
                    "out=sender.compliance_root",
                ),
            ),
            PathDeployment(
                "transfer",
                (
                    "leaf=output0.recipient.leaf_commitment",
                    "path=output0.recipient.path",
                    "position=output0.recipient.position",
                    "out=output0.recipient.compliance_root",
                ),
            ),
        ),
    ),
)


def camel(text: str) -> str:
    result: list[str] = []
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


Lc = dict[int, int]
Row = tuple[Lc, Lc, Lc]


def lc_clean(value: Lc) -> Lc:
    return {
        wire: coefficient % ORDER
        for wire, coefficient in value.items()
        if coefficient % ORDER
    }


def lc_add(*values: Lc) -> Lc:
    result: Lc = {}
    for value in values:
        for wire, coefficient in value.items():
            result[wire] = result.get(wire, 0) + coefficient
    return lc_clean(result)


def lc_scale(coefficient: int, value: Lc) -> Lc:
    return lc_clean(
        {
            wire: coefficient * item_coefficient
            for wire, item_coefficient in value.items()
        }
    )


def lc_wire(wire: int, coefficient: int = 1) -> Lc:
    return {wire: coefficient % ORDER}


def singleton(side: Lc, label: str) -> int:
    if len(side) != 1:
        raise ValueError(f"{label}: expected singleton output, got {side}")
    wire, coefficient = next(iter(side.items()))
    if wire == 0 or coefficient != 1:
        raise ValueError(f"{label}: expected coefficient-one wire, got {side}")
    return wire


def _parse_canonical_line(line: str) -> Row:
    result = []
    for side in registry._parse_constraint(line):
        value: Lc = {}
        for coefficient, wire in side:
            reduced = int(coefficient, 0) % ORDER
            if reduced:
                value[wire] = reduced
        result.append(value)
    return tuple(result)  # type: ignore[return-value]


def _registry_entry(template: PathTemplate) -> dict:
    payload = formal_json.read_template_registry(REGISTRY)
    entries = payload if isinstance(payload, list) else payload["templates"]
    matches = [
        entry
        for entry in entries
        if entry["proof_template_id"] == template.key
    ]
    if len(matches) != 1:
        raise ValueError(
            f"{template.key}: expected one canonical registry entry"
        )
    entry = matches[0]
    expected = {
        "op": template.operation,
        "canonical_relation_sha256_hex": template.digest,
        "row_count": ROW_COUNT,
        "local_wire_count": template.local_wire_count,
    }
    for field, value in expected.items():
        if entry.get(field) != value:
            raise ValueError(
                f"{template.key}: registry {field} drifted: "
                f"{entry.get(field)!r} != {value!r}"
            )
    return entry


def canonical_rows(template: PathTemplate) -> list[Row]:
    entry = _registry_entry(template)
    path = ARTIFACTS / entry["canonical_relation_file"]
    compressed = path.read_bytes()
    with gzip.GzipFile(fileobj=io.BytesIO(compressed), mode="rb") as stream:
        raw = stream.read()
    if hashlib.sha256(raw).hexdigest() != template.digest:
        raise ValueError(f"{template.key}: canonical relation digest mismatch")
    lines = raw.decode().splitlines()
    if len(lines) != ROW_COUNT:
        raise ValueError(
            f"{template.key}: expected {ROW_COUNT} rows, got {len(lines)}"
        )
    rows = [_parse_canonical_line(line) for line in lines]
    wires = {
        wire
        for row in rows
        for side in row
        for wire in side
    }
    expected_wires = set(range(template.local_wire_count))
    if wires != expected_wires:
        raise ValueError(
            f"{template.key}: local wire namespace drifted: "
            f"missing={sorted(expected_wires - wires)[:3]} "
            f"extra={sorted(wires - expected_wires)[:3]}"
        )
    return rows


def _validate_inventory(template: PathTemplate) -> None:
    payload = formal_json.read_template_inventory(INVENTORY)
    entries = [
        entry
        for entry in payload["templates"]
        if entry["template_key"] == template.key
    ]
    if len(entries) != 1:
        raise ValueError(
            f"{template.key}: expected one certified inventory entry"
        )
    entry = entries[0]
    expected_header = {
        "op": template.operation,
        "constraint_count": ROW_COUNT,
    }
    for field, value in expected_header.items():
        if entry.get(field) != value:
            raise ValueError(
                f"{template.key}: inventory {field} drifted: "
                f"{entry.get(field)!r} != {value!r}"
            )
    actual = tuple(
        (
            instance["circuit"],
            instance["segment_index"],
            instance["constraint_count"],
        )
        for instance in entry["instances"]
    )
    expected = []
    role = discovery.SegmentRole(
        op=template.operation,
        args=(),
        kind="gadget",
        constraint_count=ROW_COUNT,
        gadget_label="gadget-quad-path-16",
        bridge_theorem=(
            "Shieldd.GnarkFormal.Poseidon4Bridge."
            "quadPath16_circuit_sound"
        ),
    )
    for deployment in template.deployments:
        manifest = discovery.read_json_object(
            discovery.manifest_path(deployment.circuit)
        )
        segment = discovery.find_segment(
            manifest,
            replace(role, args=deployment.args),
            circuit=deployment.circuit,
        )
        expected.append(
            (
                deployment.circuit,
                segment["index"],
                segment["constraint_count"],
            )
        )
    expected_instances = tuple(expected)
    if actual != expected_instances:
        raise ValueError(
            f"{template.key}: deployed instance roster drifted: "
            f"{actual} != {expected_instances}"
        )


def select_base(level: int) -> int:
    return SELECT_BASE + LEVEL_ROWS * level


def poseidon_base(level: int) -> int:
    return select_base(level) + POSEIDON_OFFSET


@dataclass(frozen=True)
class Level:
    index: int
    b0: int
    b1: int
    i: tuple[int, int, int, int]
    s: tuple[int, int, int]
    t: tuple[int, int, int, int, int, int]
    current: Lc
    poseidon_inputs: tuple[Lc, Lc, Lc, Lc]
    outputs: tuple[int, int, int, int, int]


@dataclass(frozen=True)
class PathInstance:
    template: PathTemplate
    rows: list[Row]
    leaf: Lc
    levels: tuple[Level, ...]

    @property
    def bits(self) -> tuple[int, ...]:
        return tuple(range(1, 33))

    @property
    def position(self) -> int:
        return 33


def node_output_lc(outputs: tuple[int, ...]) -> Lc:
    if len(outputs) != len(NODE_C):
        raise ValueError("node output lane count drifted")
    return {
        wire: coefficient
        for wire, coefficient in zip(outputs, NODE_C, strict=True)
    }


def _recover_level(
    rows: list[Row],
    level: int,
    previous: Lc | None,
    final_offsets: tuple[int, ...],
) -> Level:
    base = select_base(level)
    row0 = rows[base]
    if row0[0].get(0) != 1 or row0[1].get(0) != 1:
        raise ValueError(f"path level {level}: selector constants drifted")
    b0_candidates = [
        wire
        for wire, coefficient in row0[0].items()
        if wire and coefficient == ORDER - 1
    ]
    b1_candidates = [
        wire
        for wire, coefficient in row0[1].items()
        if wire and coefficient == ORDER - 1
    ]
    if len(b0_candidates) != 1 or len(b1_candidates) != 1:
        raise ValueError(f"path level {level}: bit seating drifted")
    b0, b1 = b0_candidates[0], b1_candidates[0]
    if (b0, b1) != (1 + 2 * level, 2 + 2 * level):
        raise ValueError(
            f"path level {level}: expected bits "
            f"{1 + 2 * level}/{2 + 2 * level}, got {b0}/{b1}"
        )
    i = tuple(
        singleton(rows[base + offset][2], f"path level {level} i{offset}")
        for offset in range(4)
    )
    t_offsets = (5, 6, 8, 9, 11, 13)
    t = tuple(
        singleton(rows[base + offset][2], f"path level {level} t{index}")
        for index, offset in enumerate(t_offsets)
    )

    t0_right = rows[base + 5][1]
    negative = [
        wire
        for wire, coefficient in t0_right.items()
        if wire and coefficient == ORDER - 1
    ]
    if len(negative) != 1:
        raise ValueError(f"path level {level}: sibling-0 recovery drifted")
    s0 = negative[0]
    current = lc_add(t0_right, lc_wire(s0))
    if previous is not None and current != previous:
        raise ValueError(
            f"path level {level}: current node does not consume level "
            f"{level - 1} output"
        )

    t1_right = rows[base + 6][1]
    if t1_right.get(s0) != 1:
        raise ValueError(f"path level {level}: sibling-0 select drifted")
    s1_candidates = [
        wire
        for wire, coefficient in t1_right.items()
        if wire != s0 and coefficient == ORDER - 1
    ]
    if len(s1_candidates) != 1:
        raise ValueError(f"path level {level}: sibling-1 recovery drifted")
    s1 = s1_candidates[0]

    t3_right = rows[base + 9][1]
    if t3_right.get(s1) != ORDER - 1:
        raise ValueError(f"path level {level}: sibling-1 select drifted")
    s2_candidates = [
        wire
        for wire, coefficient in t3_right.items()
        if wire != s1 and coefficient == 1
    ]
    if len(s2_candidates) != 1:
        raise ValueError(f"path level {level}: sibling-2 recovery drifted")
    s2 = s2_candidates[0]

    expected_select = (
        (
            lc_add(lc_wire(0), lc_scale(-1, lc_wire(b0))),
            lc_add(lc_wire(0), lc_scale(-1, lc_wire(b1))),
            lc_wire(i[0]),
        ),
        (
            lc_wire(b0),
            lc_add(lc_wire(0), lc_scale(-1, lc_wire(b1))),
            lc_wire(i[1]),
        ),
        (
            lc_wire(b1),
            lc_add(lc_wire(0), lc_scale(-1, lc_wire(b0))),
            lc_wire(i[2]),
        ),
        (lc_wire(b0), lc_wire(b1), lc_wire(i[3])),
        (lc_wire(i[0]), lc_add(current, lc_scale(-1, lc_wire(s0))), lc_wire(t[0])),
        (
            lc_wire(i[0]),
            lc_add(lc_wire(s0), lc_scale(-1, lc_wire(s1))),
            lc_wire(t[1]),
        ),
        (
            lc_wire(i[1]),
            lc_add(
                current,
                lc_scale(-1, lc_wire(s1)),
                lc_scale(-1, lc_wire(t[1])),
            ),
            lc_wire(t[2]),
        ),
        (
            lc_wire(b1),
            lc_add(lc_wire(s2), lc_scale(-1, lc_wire(s1))),
            lc_wire(t[3]),
        ),
        (
            lc_wire(i[2]),
            lc_add(
                current,
                lc_scale(-1, lc_wire(s1)),
                lc_scale(-1, lc_wire(t[3])),
            ),
            lc_wire(t[4]),
        ),
        (
            lc_wire(i[3]),
            lc_add(current, lc_scale(-1, lc_wire(s2))),
            lc_wire(t[5]),
        ),
    )
    select_rows = (0, 1, 2, 3, 5, 6, 8, 9, 11, 13)
    for expected, offset in zip(expected_select, select_rows, strict=True):
        if rows[base + offset] != expected:
            raise ValueError(
                f"path level {level}: select row {base + offset} drifted"
            )

    inputs = (
        lc_add(lc_wire(s0), lc_wire(t[0])),
        lc_add(lc_wire(s1), lc_wire(t[1]), lc_wire(t[2])),
        lc_add(lc_wire(s1), lc_wire(t[3]), lc_wire(t[4])),
        lc_add(lc_wire(s2), lc_wire(t[5])),
    )
    pbase = poseidon_base(level)
    outputs = tuple(
        singleton(
            rows[pbase + offset][2],
            f"path level {level} final Poseidon lane {index}",
        )
        for index, offset in enumerate(final_offsets)
    )
    return Level(
        level,
        b0,
        b1,
        i,  # type: ignore[arg-type]
        (s0, s1, s2),
        t,  # type: ignore[arg-type]
        current,
        inputs,
        outputs,  # type: ignore[arg-type]
    )


def _validate_path_prefix(template: PathTemplate, rows: list[Row]) -> None:
    for offset in BOOL_ROWS:
        expected = (
            lc_wire(1 + offset),
            lc_add(lc_wire(0), lc_scale(-1, lc_wire(1 + offset))),
            {},
        )
        if rows[offset] != expected:
            raise ValueError(
                f"{template.key}: boolean row {offset} drifted"
            )
    expected_bits = {
        1 + offset: 1 << offset
        for offset in range(32)
    }
    if rows[RECOMPOSE_ROW] != (
        lc_wire(0),
        expected_bits,
        lc_wire(33),
    ):
        raise ValueError(f"{template.key}: position recomposition drifted")


def _generic_node_rows(
    reference_rows: list[Row],
) -> tuple[list[Row], tuple[int, ...], tuple[int, ...]]:
    """Abstract the four selected children from one exact node permutation."""
    all_outputs = tuple(
        singleton(row[2], f"generic node source row {row_index}")
        for row_index, row in enumerate(reference_rows)
    )
    if len(set(all_outputs)) != len(all_outputs):
        raise ValueError("generic node source redefines an output wire")
    output_set = set(all_outputs)
    generic: list[Row] = []
    target_outputs: list[int] = []
    target_to_generic: dict[int, int] = {}
    first_round_constants = poseidon_rounds(4)[0][1]
    first_rows = {
        5 * lane: (lane + 1, first_round_constants[lane + 1])
        for lane in range(4)
    }
    boundary_sources: dict[tuple[tuple[int, int], ...], Lc] = {}
    for row_index, (input_wire, constant) in first_rows.items():
        source = reference_rows[row_index][0]
        if source.get(0) != constant:
            raise ValueError(
                f"generic node source row {row_index}: "
                "round-0 constant drifted"
            )
        dependencies = {wire for wire in source if wire in output_set}
        if dependencies:
            raise ValueError(
                f"generic node source row {row_index}: boundary input "
                f"depends on Poseidon output wires {sorted(dependencies)}"
            )
        boundary_sources[tuple(sorted(source.items()))] = {
            0: constant,
            input_wire: 1,
        }
    for row_index, (row, target_output) in enumerate(
        zip(reference_rows, all_outputs, strict=True)
    ):
        if target_output in target_to_generic:
            raise ValueError(
                f"generic node source row {row_index}: "
                f"output wire {target_output} is redefined"
            )
        target_outputs.append(target_output)
        generic_output = 5 + row_index

        def rewrite(side: Lc) -> Lc:
            boundary = boundary_sources.get(tuple(sorted(side.items())))
            if boundary is not None:
                return boundary
            result: Lc = {}
            for wire, coefficient in side.items():
                if wire == 0:
                    result[0] = coefficient
                elif wire in target_to_generic:
                    result[target_to_generic[wire]] = coefficient
                else:
                    raise ValueError(
                        f"generic node source row {row_index}: "
                        f"unresolved boundary wire {wire}"
                    )
            return result

        generic.append(
            (
                rewrite(row[0]),
                rewrite(row[1]),
                {generic_output: 1},
            )
        )
        target_to_generic[target_output] = generic_output
    used = {
        wire
        for row in generic
        for side in row
        for wire in side
    }
    if used != set(range(355)):
        raise ValueError(
            "generic node local namespace is not exactly 0..354"
        )
    return (
        generic,
        tuple(target_outputs),
        tuple(target_to_generic.values()),
    )


def _generic_template(output_wires: tuple[int, ...]) -> registry.HashTemplate:
    return registry.HashTemplate(
        "certified.quad_path_node",
        "0" * 64,
        4,
        0,
        POSEIDON_ROWS,
        355,
        output_wires,
    )


def _registry_rows(rows: list[Row]):
    """Render normalized LCs in the canonical term shape registry helpers use."""
    return [
        tuple(
            [
                (str(coefficient), wire)
                for wire, coefficient in sorted(side.items())
            ]
            for side in row
        )
        for row in rows
    ]


def _build_common_bridge(
    generic_rows: list[Row],
) -> tuple[dict[Path, str], dict, list[list[int]], list[list[int]], dict]:
    provisional = _generic_template((0, 0, 0, 0, 0))
    round_kinds = [
        kind for kind, _ in poseidon_rounds(provisional.rate)
    ]
    counts = [
        (5 - 1 if index == 0 else 5)
        if kind.startswith("fr")
        else 1
        for index, kind in enumerate(round_kinds)
    ]
    cursor = 0
    finals = []
    for count in counts:
        finals.append(
            tuple(
                singleton(
                    generic_rows[5 * segment + 4][2],
                    "generic Poseidon final S-box",
                )
                for segment in range(cursor, cursor + count)
            )
        )
        cursor += count
    output_wires = finals[-1]
    template = _generic_template(output_wires)
    rows = _registry_rows(generic_rows)
    groups, segment_to_round, local_outputs = registry._round_layout(
        template, rows
    )
    arguments, continuations = registry._cps_layout(
        template, rows, groups, local_outputs
    )
    source = registry._emit_cps_source(
        template, rows, arguments, continuations
    )
    source = source.replace(template.stem, COMMON_STEM)
    gendata = registry._gendata(
        template,
        rows,
        arguments,
        groups,
        segment_to_round,
    )
    if tuple(int(value) for value in gendata["seq"][1:6]) != NODE_C:
        raise ValueError(
            "generic node root projection drifted from MDS lane 1"
        )
    outputs: dict[Path, str] = {}
    with tempfile.TemporaryDirectory(
        prefix="certified-quad-path-node-"
    ) as temp_name:
        temp = Path(temp_name)
        extracted_dir = temp / "Extracted/Deployed"
        deployed_dir = temp / "Deployed"
        generator_dir = temp / "gen"
        extracted_dir.mkdir(parents=True)
        generator_dir.mkdir(parents=True)
        source_path = extracted_dir / f"{COMMON_STEM}.lean"
        source_path.write_text(source)
        (generator_dir / f"{COMMON_CONFIG}_gendata.json").write_text(
            json.dumps(gendata, indent=2) + "\n"
        )
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
        poseidon_bridge.CONFIGS[COMMON_CONFIG] = {
            "W": 5,
            "leaf": COMMON_LEAF,
            "slice_stem": COMMON_STEM,
            "choice_free_zmod": True,
            "link": "Poseidon4Link",
            "bridge_ns": "Poseidon4Bridge",
            "deployed_bridge": f"{COMMON_LEAF}DeployedBridge",
            "spec": "permSpec4",
            "domain_sym": "domainLit",
            "extracted_ns": (
                "Shieldd.GnarkFormal.Extracted.PoseidonHash4"
            ),
        }
        try:
            with contextlib.redirect_stdout(io.StringIO()):
                poseidon_bridge.build(COMMON_CONFIG)
            segments = poseidon.parse_segments(COMMON_STEM)
            if len(segments) != POSEIDON_SEGMENTS:
                raise ValueError("generic node CPS segment count drifted")
            outputs[FORMAL / "Extracted/Deployed" / source_path.name] = (
                source_path.read_text()
            )
            for path in sorted(deployed_dir.rglob("*.lean")):
                outputs[
                    FORMAL / "Deployed" / path.relative_to(deployed_dir)
                ] = path.read_text()
        finally:
            (
                poseidon_bridge.ROOT,
                poseidon_bridge.EXTRACTED,
                poseidon_bridge.DEPLOYED,
                poseidon_bridge.HERE,
                poseidon.EXTRACTED,
            ) = saved
            poseidon_bridge.CONFIGS.pop(COMMON_CONFIG, None)
    shim_template = registry.HashTemplate(
        template.operation,
        template.digest,
        template.rate,
        template.domain,
        template.row_count,
        template.local_wire_count,
        template.output_wires,
    )
    shim = registry._shim(shim_template)
    shim = shim.replace(template.leaf, COMMON_LEAF)
    shim = shim.replace(template.stem, COMMON_STEM)
    outputs[
        FORMAL / "Deployed" / f"{COMMON_LEAF}DeployedBridge.lean"
    ] = shim
    return outputs, segments, arguments, continuations, gendata


def _instantiate_generic(
    generic_rows: list[Row],
    arguments: list[list[int]],
    final_wires: tuple[int, ...],
    target_rows: list[Row],
    inputs: tuple[Lc, ...],
) -> dict[int, int | Lc]:
    if len(target_rows) != POSEIDON_ROWS or len(inputs) != 4:
        raise ValueError("node specialization shape drifted")
    mapping: dict[int, int | Lc] = {
        wire: inputs[index]
        for index, wire in enumerate(arguments[0])
    }
    if set(arguments[0]) != {1, 2, 3, 4}:
        raise ValueError(
            f"generic node public arguments drifted: {arguments[0]}"
        )
    target_outputs: set[int] = set()
    for row_index, target_row in enumerate(target_rows):
        generic_output = singleton(
            generic_rows[row_index][2],
            f"generic row {row_index}",
        )
        target_output = singleton(
            target_row[2], f"target row {row_index}"
        )
        if target_output in target_outputs:
            raise ValueError(
                f"target row {row_index}: output wire "
                f"{target_output} is redefined"
            )

        def instantiate(side: Lc) -> Lc:
            result: Lc = {}
            for wire, coefficient in side.items():
                if wire == 0:
                    term = {0: coefficient}
                else:
                    try:
                        mapped = mapping[wire]
                    except KeyError as error:
                        raise ValueError(
                            f"generic row {row_index}: wire {wire} "
                            "used before definition"
                        ) from error
                    term = (
                        mapped
                        if isinstance(mapped, dict)
                        else {mapped: 1}
                    )
                    term = lc_scale(coefficient, term)
                result = lc_add(result, term)
            return result

        instantiated = (
            instantiate(generic_rows[row_index][0]),
            instantiate(generic_rows[row_index][1]),
            {target_output: 1},
        )
        if instantiated != target_row:
            raise ValueError(
                f"node specialization failed at row {row_index}"
            )
        mapping[generic_output] = target_output
        target_outputs.add(target_output)
    for wire in final_wires:
        if not isinstance(mapping.get(wire), int):
            raise ValueError("generic final lane is not seated to a wire")
    return mapping


def recover_instance(
    template: PathTemplate,
    rows: list[Row],
    generic_rows: list[Row],
    arguments: list[list[int]],
    final_wires: tuple[int, ...],
) -> tuple[PathInstance, tuple[dict[int, int | Lc], ...]]:
    _validate_path_prefix(template, rows)
    mappings = []
    levels = []
    previous = None
    final_offsets = tuple(
        5 * segment + 4
        for segment in range(
            POSEIDON_SEGMENTS - 5, POSEIDON_SEGMENTS
        )
    )
    for level in range(LEVELS):
        pbase = poseidon_base(level)
        target = rows[pbase : pbase + POSEIDON_ROWS]
        first_sources = tuple(
            lc_add(
                target[5 * lane][0],
                lc_scale(
                    -1,
                    {0: poseidon_rounds(4)[0][1][lane + 1]},
                ),
            )
            for lane in range(4)
        )
        recovered = _recover_level(
            rows, level, previous, final_offsets
        )
        if first_sources != recovered.poseidon_inputs:
            raise ValueError(
                f"{template.key}: level {level} Poseidon inputs "
                "do not match the select block"
            )
        mapping = _instantiate_generic(
            generic_rows,
            arguments,
            final_wires,
            target,
            recovered.poseidon_inputs,
        )
        mapped_final = tuple(
            mapping[wire] for wire in final_wires
        )
        if mapped_final != recovered.outputs:
            raise ValueError(
                f"{template.key}: level {level} final lanes drifted"
            )
        mappings.append(mapping)
        levels.append(recovered)
        previous = node_output_lc(recovered.outputs)
    leaf = levels[0].current
    return (
        PathInstance(template, rows, leaf, tuple(levels)),
        tuple(mappings),
    )


def _coefficient_literal(coefficient: int) -> int:
    reduced = coefficient % ORDER
    return reduced if reduced <= ORDER // 2 else reduced - ORDER


def _signed_certificate_coefficients(value: Lc) -> tuple[tuple[int, int], ...]:
    pairs: list[tuple[int, int]] = []
    for coefficient in value.values():
        reduced = coefficient % ORDER
        literal = _coefficient_literal(coefficient)
        pair = (reduced, literal)
        if reduced != literal and pair not in pairs:
            pairs.append(pair)
    return tuple(pairs)


def lc_expr(value: Lc) -> str:
    terms = []
    for wire, coefficient in sorted(value.items()):
        literal = _coefficient_literal(coefficient)
        if wire == 0:
            terms.append(f"({literal} : F)")
        elif literal == 1:
            terms.append(f"rho {wire}")
        elif literal == -1:
            terms.append(f"(-1 : F) * rho {wire}")
        else:
            terms.append(f"({literal} : F) * rho {wire}")
    return " + ".join(terms) if terms else "(0 : F)"


def _mapped_expr(value: int | Lc) -> str:
    return lc_expr(value) if isinstance(value, dict) else f"rho {value}"


def _map_wire(mapping: dict[int, int | Lc], wire_name: str) -> str:
    wire = int(wire_name[1:])
    try:
        return _mapped_expr(mapping[wire])
    except KeyError as error:
        raise ValueError(f"generic wire {wire} is not seated") from error


def _relation_lc_names(template: PathTemplate) -> dict[int, tuple[str, ...]]:
    return registry._relation_lc_names(template.name)


def _header(template: PathTemplate, imports: list[str]) -> list[str]:
    return [
        *(f"import {item}" for item in imports),
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 50000000",
        "set_option linter.unusedVariables false",
        "",
        f"namespace {template.namespace}",
        "",
        "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod",
        "",
    ]


def _footer(template: PathTemplate) -> list[str]:
    return ["", f"end {template.namespace}", ""]


def _unpack(
    lines: list[str],
    template: PathTemplate,
    keep_rows: set[int],
    hname: str = "h",
) -> None:
    part_count = (ROW_COUNT + PART_SIZE - 1) // PART_SIZE
    part_rows = [
        list(range(first, min(first + PART_SIZE, ROW_COUNT)))
        for first in range(0, ROW_COUNT, PART_SIZE)
    ]
    names = [
        f"p{index}" if keep_rows.intersection(rows) else "_"
        for index, rows in enumerate(part_rows)
    ]
    lines.append(f"  unfold {template.relation}.relation at {hname}")
    lines.append(f"  rcases {hname} with ⟨")
    for start in range(0, part_count, 8):
        suffix = "," if start + 8 < part_count else ""
        lines.append(
            "    "
            + ", ".join(names[start : start + 8])
            + suffix
        )
    lines.append("  ⟩")
    for part, rows in enumerate(part_rows):
        selected = keep_rows.intersection(rows)
        if not selected:
            continue
        lines.append(
            f"  unfold {template.relation}.relationPart{part} at p{part}"
        )
        row_names = [
            f"r{row}" if row in selected else "_"
            for row in rows
        ]
        if len(row_names) == 1:
            lines.append(f"  have {row_names[0]} := p{part}")
        else:
            lines.append(
                f"  rcases p{part} with ⟨{', '.join(row_names)}⟩"
            )


def _row_proof(
    template: PathTemplate,
    row: int,
    lc_names: dict[int, tuple[str, ...]],
    *,
    unfold_defs: tuple[str, ...] = (),
    rewrite_lemmas: tuple[str, ...] = (),
) -> str:
    commands = [
        *(f"unfold {name}" for name in unfold_defs),
        *(["rw [" + ", ".join(rewrite_lemmas) + "]"] if rewrite_lemmas else []),
        f"unfold {template.relation}.relationRow{row} at r{row}",
    ]
    names = lc_names.get(row, ())
    if names:
        commands.append(
            "try simp only ["
            + ", ".join(
                f"{template.relation}.{name}" for name in names
            )
            + f"] at r{row}"
        )
    commands.append(f"linear_combination r{row}")
    return "(by " + "; ".join(commands) + ")"


def emit_base(instance: PathInstance) -> str:
    template = instance.template
    lines = _header(
        template,
        [
            template.relation_import,
            "ShielddGnarkFormal.ChoiceFreeZModCast",
            "ShielddGnarkFormal.Deployed.PrimeOrder",
            "ShielddGnarkFormal.QuadPathSpec",
            "Mathlib.Tactic.LinearCombination",
        ],
    )
    lines += [
        f"def Order : Nat := {ORDER}",
        "abbrev F := ZMod Order",
        "",
        "instance templateFactPrime : Fact (Nat.Prime Order) :=",
        "  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩",
        "",
        named_instance_block(
            "quadPathProvider", include_add_semigroup=True
        ).rstrip(),
        "",
        "theorem order_cast_zero : (Order : F) = 0 := by",
        "  exact Shieldd.GnarkFormal.ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq",
        "    Order Order 0 (by decide) (by decide)",
        "",
    ]
    for index, coefficient in enumerate(NODE_C):
        literal = _coefficient_literal(coefficient)
        lines += [
            f"theorem nodeCoeff{index} : ({coefficient} : F) = ({literal} : F) := by",
            "  have hzero := order_cast_zero",
            "  unfold Order at hzero",
            "  linear_combination hzero",
            "",
        ]
    for index, (coefficient, literal) in enumerate(
        _signed_certificate_coefficients(instance.leaf)
    ):
        lines += [
            f"theorem leafCoeff{index} : ({coefficient} : F) = ({literal} : F) := by",
            "  have hzero := order_cast_zero",
            "  unfold Order at hzero",
            "  linear_combination hzero",
            "",
        ]
    lines += [
        "def leaf (rho : Nat → F) : F :=",
        f"  {lc_expr(instance.leaf)}",
        "",
        "def bits (rho : Nat → F) : List.Vector F 32 :=",
        "  List.Vector.ofFn (fun i : Fin 32 => rho (1 + i.val))",
        "",
        "def path (rho : Nat → F) : List.Vector (List.Vector F 3) 16 :=",
        "  vec![",
    ]
    for index, level in enumerate(instance.levels):
        suffix = "," if index + 1 < LEVELS else ""
        lines.append(
            "    vec!["
            + ", ".join(f"rho {wire}" for wire in level.s)
            + "]"
            + suffix
        )
    lines += ["  ]", ""]
    for level in instance.levels:
        lines += [
            f"def nodeOut{level.index} (rho : Nat → F) : F :=",
            f"  {lc_expr(node_output_lc(level.outputs))}",
            "",
        ]
    return "\n".join(lines + _footer(template))


def emit_node_helpers(
    instance: PathInstance,
    mapping: dict[int, int | Lc],
    segments: dict,
    level: int,
    chunk: int,
    lc_names: dict[int, tuple[str, ...]],
) -> str:
    template = instance.template
    first = chunk * HELPER_CHUNK
    last = min(first + HELPER_CHUNK, POSEIDON_SEGMENTS)
    lines = _header(
        template,
        [
            f"{template.import_prefix}QuadPathBase",
            COMMON_EXTRACTED_IMPORT,
            "Mathlib.Tactic.LinearCombination",
        ],
    )
    pbase = poseidon_base(level)
    for segment_index in range(first, last):
        segment = segments[segment_index]
        rows = [
            pbase + 5 * segment_index + offset
            for offset in range(5)
        ]
        continuation_type = " → ".join(
            ["F"] * len(segment["cont"]) + ["Prop"]
        )
        lines += [
            f"theorem node{level}_seg{segment_index} "
            "(rho : Nat → F)",
            f"    (next : {continuation_type})",
        ]
        for row in rows:
            lines.append(
                f"    (r{row} : "
                f"{template.relation}.relationRow{row} rho)"
            )
        tail_args = " ".join(
            f"({_map_wire(mapping, wire)})"
            for wire in segment["cont"]
        )
        input_args = " ".join(
            f"({_map_wire(mapping, wire)})"
            for wire in segment["binders"]
        )
        witnesses = [
            _map_wire(mapping, wire)
            for wire in segment["witnesses"]
        ]
        proofs = [
            _row_proof(template, row, lc_names)
            for row in rows
        ]
        lines += [
            f"    (tail : next {tail_args}) :",
            f"    {COMMON_EXTRACTED}.seg{segment_index} "
            f"{input_args} next := by",
            "  exact ⟨"
            + ", ".join([*witnesses, *proofs, "tail"])
            + "⟩",
            "",
        ]
    return "\n".join(lines + _footer(template))


def _node_relation_proof(
    mapping: dict[int, int | Lc],
    segments: dict,
    level: int,
    pbase: int,
) -> str:
    final_equalities = [
        "rfl" for _ in segments[POSEIDON_SEGMENTS - 1]["cont"]
    ]
    proof = "⟨" + ", ".join(final_equalities) + "⟩"
    for segment_index in reversed(range(POSEIDON_SEGMENTS)):
        rows = [
            pbase + 5 * segment_index + offset
            for offset in range(5)
        ]
        proof = (
            f"node{level}_seg{segment_index} rho _ "
            + " ".join(f"r{row}" for row in rows)
            + f" ({proof})"
        )
    return proof


def emit_node(
    instance: PathInstance,
    mapping: dict[int, int | Lc],
    segments: dict,
    gendata: dict,
    level: int,
) -> str:
    template = instance.template
    lv = instance.levels[level]
    final_generic = list(gendata["groups"]["38"])
    final_target = [
        _map_wire(mapping, wire) for wire in final_generic
    ]
    public = [
        _map_wire(mapping, f"w{wire}")
        for wire in sorted(
            int(value[1:]) for value in gendata["public_args"]
        )
    ]
    continuation = (
        "fun "
        + " ".join(final_generic)
        + " => "
        + " ∧ ".join(
            f"{wire} = {target}"
            for wire, target in zip(
                final_generic, final_target, strict=True
            )
        )
    )
    lines = _header(
        template,
        [
            f"{template.import_prefix}QuadPathBase",
            *[
                f"{template.import_prefix}QuadPathNode{level}Rows{chunk}"
                for chunk in range(
                    (POSEIDON_SEGMENTS + HELPER_CHUNK - 1)
                    // HELPER_CHUNK
                )
            ],
            COMMON_BRIDGE_IMPORT,
            "Mathlib.Tactic.LinearCombination",
        ],
    )
    lines += [
        f"theorem node{level}_eq (rho : Nat → F)",
        f"    (h : {template.relation}.relation rho) :",
        f"    nodeOut{level} rho =",
        f"      {PERM4} (0 : F)",
        "        " + " ".join(f"({value})" for value in public) + " := by",
    ]
    pbase = poseidon_base(level)
    _unpack(
        lines,
        template,
        set(range(pbase, pbase + POSEIDON_ROWS)),
    )
    lines += [
        f"  have hrel : {COMMON_EXTRACTED}.relation",
        "      " + " ".join(f"({value})" for value in public),
        f"      ({continuation}) := by",
        f"    unfold {COMMON_EXTRACTED}.relation",
        "    exact "
        + _node_relation_proof(
            mapping, segments, level, pbase
        ),
        f"  rcases {COMMON_BRIDGE}.relation_sound_permSpec",
        "      "
        + " ".join(f"({value})" for value in public)
        + " _ hrel with",
        "    ⟨"
        + ", ".join(final_generic)
        + ", hk, hperm⟩",
        "  rcases hk with ⟨"
        + ", ".join(f"h{wire}" for wire in final_generic)
        + "⟩",
    ]
    lines += [
        f"  unfold {COMMON_BRIDGE}.s38_1",
        "    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5 at hperm",
        "  rw ["
        + ", ".join(
            f"nodeCoeff{index}" for index in range(len(NODE_C))
        )
        + "] at hperm",
        f"  simpa [nodeOut{level}, {COMMON_BRIDGE}.domainLit,",
        "    "
        + ", ".join(f"h{wire}" for wire in final_generic)
        + "] using hperm",
    ]
    return "\n".join(lines + _footer(template))


def emit_step(
    instance: PathInstance,
    level: int,
    lc_names: dict[int, tuple[str, ...]],
) -> str:
    template = instance.template
    lv = instance.levels[level]
    base = select_base(level)
    select_rows = [
        base + offset for offset in (0, 1, 2, 3, 5, 6, 8, 9, 11, 13)
    ]
    current = "leaf rho" if level == 0 else f"nodeOut{level - 1} rho"
    unfold_current = "leaf" if level == 0 else f"nodeOut{level - 1}"
    lines = _header(
        template,
        [
            f"{template.import_prefix}QuadPathNode{level}",
            (
                "ShielddGnarkFormal.Deployed.StateCommitmentPath."
                "ProjectionChoiceFree"
            ),
            "Mathlib.Tactic.LinearCombination",
        ],
    )
    lines += [
        f"theorem step{level} (rho : Nat → F)",
        f"    (h : {template.relation}.relation rho) :",
        f"    nodeOut{level} rho =",
        f"      {RECOVER_STEP} {PERM4} (0 : F)",
        f"        ({current}) (rho {lv.s[0]}) (rho {lv.s[1]}) "
        f"(rho {lv.s[2]})",
        f"        (rho {lv.b0}) (rho {lv.b1}) := by",
        f"  have hnode := node{level}_eq rho h",
    ]
    _unpack(lines, template, set(select_rows))
    proofs = []
    signed_rewrites = tuple(
        f"← {'leafCoeff' if level == 0 else 'nodeCoeff'}{index}"
        for index in range(
            len(_signed_certificate_coefficients(instance.leaf))
            if level == 0
            else len(NODE_C)
        )
    )
    for row in select_rows:
        extra = (
            (unfold_current,)
            if row in (
                base + 5,
                base + 8,
                base + 11,
                base + 13,
            )
            else ()
        )
        proofs.append(
            _row_proof(
                template,
                row,
                lc_names,
                unfold_defs=extra,
                rewrite_lemmas=(
                    signed_rewrites
                    if extra
                    else ()
                ),
            )
        )
    lines += [
        "  exact hnode.trans",
        f"    ({RECOVER_STEP_EQ} {PERM4} (0 : F)",
        f"      ({current}) (rho {lv.s[0]}) (rho {lv.s[1]}) "
        f"(rho {lv.s[2]})",
        f"      (rho {lv.b0}) (rho {lv.b1})",
        "      "
        + " ".join(f"(rho {wire})" for wire in lv.i),
        "      "
        + " ".join(f"(rho {wire})" for wire in lv.t),
    ]
    for proof in proofs:
        lines.append(f"      {proof}")
    lines[-1] += ")"
    return "\n".join(lines + _footer(template))


def emit_bits(
    instance: PathInstance,
    lc_names: dict[int, tuple[str, ...]],
) -> str:
    template = instance.template
    lines = _header(
        template,
        [
            f"{template.import_prefix}QuadPathBase",
            "Mathlib.Tactic.IntervalCases",
            "Mathlib.Tactic.LinearCombination",
        ],
    )
    lines += [
        "theorem bits_bool (rho : Nat → F)",
        f"    (h : {template.relation}.relation rho) :",
        "    ∀ i : Nat, i < 32 →",
        "      rho (1 + i) = 0 ∨ rho (1 + i) = 1 := by",
    ]
    _unpack(lines, template, set(BOOL_ROWS))
    for row in BOOL_ROWS:
        wire = 1 + row
        lines += [
            f"  have hb{row} : rho {wire} = 0 ∨ rho {wire} = 1 :=",
            "    (mul_eq_zero.mp "
            f"(show rho {wire} * (1 - rho {wire}) = 0 by",
            f"      unfold {template.relation}.relationRow{row} at r{row}",
            f"      linear_combination r{row})).imp",
            "      id (fun hx => by linear_combination -hx)",
        ]
    lines += ["  intro i hi", "  interval_cases i"]
    for row in BOOL_ROWS:
        lines.append(f"  · simpa using hb{row}")
    recompose_terms = [
        f"({1 << offset} : F) * rho {1 + offset}"
        for offset in range(32)
    ]
    lines += [
        "",
        "theorem position_recompose (rho : Nat → F)",
        f"    (h : {template.relation}.relation rho) :",
        "    rho 33 =",
        "      "
        + "\n      + ".join(recompose_terms)
        + " := by",
    ]
    _unpack(lines, template, {RECOMPOSE_ROW})
    lines += [
        f"  unfold {template.relation}.relationRow{RECOMPOSE_ROW} "
        f"at r{RECOMPOSE_ROW}",
        f"  linear_combination -r{RECOMPOSE_ROW}",
    ]
    return "\n".join(lines + _footer(template))


def emit_recovery(instance: PathInstance) -> str:
    template = instance.template
    lines = _header(
        template,
        [
            f"{template.import_prefix}QuadPathBase",
            "ShielddGnarkFormal.Poseidon4Bridge",
        ],
    )
    for level in range(LEVELS):
        current = "leaf rho" if level == 0 else f"recovered{level - 1} rho"
        lines += [
            f"def recovered{level} (rho : Nat → F) : F :=",
            f"  Shieldd.GnarkFormal.QuadPath.recoverStep {PERM4} (0 : F)",
            f"    ({current}) (path rho)[{level}][0] "
            f"(path rho)[{level}][1] (path rho)[{level}][2]",
            f"    (bits rho)[{2 * level}] (bits rho)[{2 * level + 1}]",
            "",
        ]
    lines += [
        "theorem recovered15_eq_recover16 (rho : Nat → F) :",
        "    recovered15 rho =",
        "      Shieldd.GnarkFormal.QuadPath.recover16",
        f"        {PERM4} (0 : F) (leaf rho) (path rho) (bits rho) := by",
        "  rfl",
    ]
    return "\n".join(lines + _footer(template))


def emit_block(instance: PathInstance, block: int) -> str:
    template = instance.template
    start = block * BLOCK_SIZE
    end = start + BLOCK_SIZE
    lines = _header(
        template,
        [
            f"{template.import_prefix}QuadPathRecovery",
            *[
                f"{template.import_prefix}QuadPathStep{level}"
                for level in range(start, end)
            ],
        ],
    )
    signature = [
        f"theorem block{block} (rho : Nat → F)",
        f"    (h : {template.relation}.relation rho)",
    ]
    if start:
        signature.append(
            f"    (hStart : nodeOut{start - 1} rho = "
            f"recovered{start - 1} rho)"
        )
    signature += [
        f"    : nodeOut{end - 1} rho = recovered{end - 1} rho := by",
        f"  have a{start} := step{start} rho h",
    ]
    if start:
        signature.append(f"  rw [hStart] at a{start}")
    signature.append(
        f"  change nodeOut{start} rho = recovered{start} rho at a{start}"
    )
    lines += signature
    for level in range(start + 1, end):
        lines += [
            f"  have a{level} := step{level} rho h",
            f"  rw [a{level - 1}] at a{level}",
            f"  change nodeOut{level} rho = recovered{level} rho at a{level}",
        ]
    lines.append(f"  exact a{end - 1}")
    return "\n".join(lines + _footer(template))


def emit_blocks_facade(instance: PathInstance) -> str:
    template = instance.template
    return "\n".join(
        _header(
            template,
            [
                *[
                    f"{template.import_prefix}QuadPathBlock{block}"
                    for block in range(BLOCKS)
                ],
                f"{template.import_prefix}QuadPathBits",
            ],
        )
        + _footer(template)
    )


def emit_main(instance: PathInstance) -> str:
    template = instance.template
    lines = _header(
        template,
        [
            f"{template.import_prefix}QuadPathBlocks",
            "ShielddGnarkFormal.ChoiceFreeBinary",
            "ShielddGnarkFormal.Deployed.Templates.Semantics.BinaryRecomposition",
            "Mathlib.Tactic.Ring",
        ],
    )
    lines += [
        "def output (rho : Nat → F) : F := nodeOut15 rho",
        "",
        "def spec (rho : Nat → F) : Prop :=",
        "  (∀ i : Nat, i < 32 →",
        "      rho (1 + i) = 0 ∨ rho (1 + i) = 1) ∧",
        "  rho 33 =",
    ]
    terms = [
        f"({1 << offset} : F) * rho {1 + offset}"
        for offset in range(32)
    ]
    lines.append("    " + "\n    + ".join(terms) + " ∧")
    lines += [
        "  output rho =",
        "    Shieldd.GnarkFormal.QuadPath.recover16",
        f"      {PERM4} (0 : F) (leaf rho) (path rho) (bits rho)",
        "",
        "/-- The explicit Boolean rows and recomposition row form `to_binary`. -/",
        "theorem toBinary_of_spec (rho : Nat → F) (h : spec rho) :",
        "    GatesDef.to_binary (rho 33) 32 (bits rho) := by",
        "  apply Shieldd.GnarkFormal.ChoiceFreeBinary.to_binary_of_get",
        "  · rw [bits, recover_ofFn_eq_recBits, h.2.1]",
        "    simp [BinaryRecomposition.recBits]",
        "    ring",
        "  · intro i hi",
        "    simpa only [bits, List.Vector.getElem_def,",
        "      List.Vector.toList_ofFn, List.getElem_ofFn] using h.1 i hi",
        "",
        "theorem sound (rho : Nat → F)",
        f"    (h : {template.relation}.relation rho) : spec rho := by",
        "  have a3 := block0 rho h",
    ]
    for block in range(1, BLOCKS):
        end = (block + 1) * BLOCK_SIZE - 1
        previous = block * BLOCK_SIZE - 1
        lines += [
            f"  have a{end} := block{block} rho h a{previous}",
        ]
    lines += [
        "  refine ⟨bits_bool rho h, position_recompose rho h, ?_⟩",
        "  change nodeOut15 rho =",
        "    Shieldd.GnarkFormal.QuadPath.recover16",
        f"      {PERM4} (0 : F) (leaf rho) (path rho) (bits rho)",
        "  exact a15.trans (recovered15_eq_recover16 rho)",
    ]
    return "\n".join(lines + _footer(template))


def _template_outputs(
    instance: PathInstance,
    mappings: tuple[dict[int, int | Lc], ...],
    segments: dict,
    gendata: dict,
) -> dict[Path, str]:
    template = instance.template
    lc_names = _relation_lc_names(template)
    outputs: dict[Path, str] = {
        SEMANTICS / f"{template.name}QuadPathBase.lean": emit_base(
            instance
        ),
        SEMANTICS / f"{template.name}QuadPathBits.lean": emit_bits(
            instance, lc_names
        ),
    }
    for level, mapping in enumerate(mappings):
        for chunk in range(
            (POSEIDON_SEGMENTS + HELPER_CHUNK - 1) // HELPER_CHUNK
        ):
            outputs[
                SEMANTICS
                / f"{template.name}QuadPathNode{level}Rows{chunk}.lean"
            ] = emit_node_helpers(
                instance,
                mapping,
                segments,
                level,
                chunk,
                lc_names,
            )
        outputs[
            SEMANTICS / f"{template.name}QuadPathNode{level}.lean"
        ] = emit_node(
            instance, mapping, segments, gendata, level
        )
        outputs[
            SEMANTICS / f"{template.name}QuadPathStep{level}.lean"
        ] = emit_step(instance, level, lc_names)
    outputs[
        SEMANTICS / f"{template.name}QuadPathRecovery.lean"
    ] = emit_recovery(instance)
    for block in range(BLOCKS):
        outputs[
            SEMANTICS / f"{template.name}QuadPathBlock{block}.lean"
        ] = emit_block(instance, block)
    outputs[
        SEMANTICS / f"{template.name}QuadPathBlocks.lean"
    ] = emit_blocks_facade(instance)
    outputs[SEMANTICS / f"{template.name}.lean"] = emit_main(instance)
    expected = (
        2
        + LEVELS
        * (
            (POSEIDON_SEGMENTS + HELPER_CHUNK - 1) // HELPER_CHUNK
            + 2
        )
        + BLOCKS
        + 3
    )
    if len(outputs) != expected:
        raise ValueError(
            f"{template.key}: expected {expected} generated files, "
            f"got {len(outputs)}"
        )
    return outputs


def generated_files() -> dict[Path, str]:
    for template in TEMPLATES:
        _validate_inventory(template)
    rows_by_template = {
        template: canonical_rows(template)
        for template in TEMPLATES
    }
    reference = rows_by_template[TEMPLATES[0]][
        poseidon_base(0) : poseidon_base(0) + POSEIDON_ROWS
    ]
    generic_rows, _, _ = _generic_node_rows(reference)
    common, segments, arguments, _, gendata = _build_common_bridge(
        generic_rows
    )
    final_wires = tuple(
        int(wire[1:]) for wire in gendata["groups"]["38"]
    )
    outputs = dict(common)
    for template in TEMPLATES:
        instance, mappings = recover_instance(
            template,
            rows_by_template[template],
            generic_rows,
            arguments,
            final_wires,
        )
        generated = _template_outputs(
            instance, mappings, segments, gendata
        )
        overlap = set(outputs) & set(generated)
        if overlap:
            raise ValueError(
                "quad-path generators overlap: "
                + ", ".join(str(path) for path in sorted(overlap))
            )
        outputs.update(generated)
    combined = "\n".join(outputs.values())
    for forbidden in (
        "representativeRho",
        "representativeSeating",
        "Classical.choice",
        "native_decide",
        "axiom ",
        "sorry",
        "spec := relation",
    ):
        if forbidden in combined:
            raise ValueError(
                f"quad-path provider contains forbidden {forbidden}"
            )
    return outputs


def main() -> None:
    for path, source in generated_files().items():
        write_if_changed(path, source)


if __name__ == "__main__":
    main()
