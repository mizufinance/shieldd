"""Fail-closed discovery of deployed proof roles from manifests and slice IR."""

from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path

import formal_json

REPO_ROOT = Path(__file__).resolve().parents[4]
ARTIFACTS = REPO_ROOT / "tools/gnark/artifacts"
FORMAL = REPO_ROOT / "crates/core/component/shielded-pool/formal"
IR_FIELDS = {
    "schema",
    "circuit",
    "sr1cs_sha256_hex",
    "nb_constraints",
    "classes",
    "segments",
}
IR_CLASS_FIELDS = {
    "class_key",
    "op",
    "constraint_count",
    "shape_sha256_hex",
    "representative_segment_index",
    "instance_segment_indices",
    "distinct_constant_vectors",
}
IR_EMPTY_SEGMENT_FIELDS = {
    "index",
    "op",
    "kind",
    "start",
    "end",
    "constraint_count",
    "wire_roles",
}
IR_TEMPLATE_SEGMENT_FIELDS = IR_EMPTY_SEGMENT_FIELDS | {
    "class_key",
    "constant_vector_sha256_hex",
    "relation_sha256_hex",
    "wire_role_sha256_hex",
    "deployed_normalized_relation_sha256_hex",
    "proof_template_id",
    "template_equivalence_witness",
}
IR_WIRE_ROLE_FIELDS = {"input", "output", "internal"}
IR_TEMPLATE_WITNESS_FIELDS = {
    "proof_template_id",
    "canonical_local_to_deployed_wire_seating",
    "canonical_row_to_deployed_row",
    "row_transforms",
    "witness_sha256_hex",
}
IR_ROW_MAP_FIELDS = {"kind", "row_count"}


@dataclass(frozen=True)
class SegmentRole:
    """Stable identity and reviewed geometry for one deployed proof role."""

    op: str
    args: tuple[str, ...]
    kind: str
    constraint_count: int
    gadget_label: str | None = None
    bridge_theorem: str | None = None

    def __post_init__(self) -> None:
        if not self.op:
            raise ValueError("segment role op must be non-empty")
        if len(set(self.args)) != len(self.args):
            raise ValueError(f"{self.op}: segment role args contain duplicates")
        if not self.kind:
            raise ValueError(f"{self.op}: segment role kind must be non-empty")
        if self.constraint_count < 0:
            raise ValueError(f"{self.op}: segment role count must be non-negative")


@dataclass(frozen=True)
class DeployedTemplate:
    """One exact manifest/IR join and its local-to-deployed wire seating."""

    manifest_segment: dict
    ir_segment: dict
    wire_seating: tuple[int, ...]


def manifest_path(circuit: str) -> Path:
    return ARTIFACTS / circuit / f"{circuit}-manifest.json"


def ir_path(circuit: str) -> Path:
    return FORMAL / f"{circuit}-deployed-slice-ir.json"


def read_json_object(path: Path) -> dict:
    try:
        path.relative_to(REPO_ROOT)
        repo_owned = True
    except ValueError:
        repo_owned = False
    canonical = None
    if repo_owned and path.name.endswith("-manifest.json"):
        canonical = "pretty_go"
    elif repo_owned and path.name.endswith("-deployed-slice-ir.json"):
        canonical = "pretty"
    return formal_json.read_json_object(
        path, repo_owned=repo_owned, canonical=canonical
    )


def _require_int(value: object, label: str, *, minimum: int = 0) -> int:
    if not isinstance(value, int) or isinstance(value, bool) or value < minimum:
        raise ValueError(f"{label}: expected integer >= {minimum}, got {value!r}")
    return value


def _require_exact_fields(
    value: object, expected: set[str], label: str
) -> dict:
    if not isinstance(value, dict):
        raise ValueError(f"{label}: expected an object")
    actual = set(value)
    if actual != expected:
        raise ValueError(
            f"{label}: fields drifted; missing={sorted(expected - actual)}, "
            f"extra={sorted(actual - expected)}"
        )
    return value


def _require_sha256(value: object, label: str) -> str:
    if (
        not isinstance(value, str)
        or len(value) != 64
        or any(char not in "0123456789abcdef" for char in value)
    ):
        raise ValueError(f"{label}: expected a lowercase SHA-256 digest")
    return value


def _require_nonempty_string(value: object, label: str) -> str:
    if not isinstance(value, str) or not value:
        raise ValueError(f"{label}: expected a non-empty string")
    return value


def _validate_segment_partition(
    payload: dict, *, label: str, circuit: str | None
) -> tuple[dict, ...]:
    actual_circuit = payload.get("circuit")
    if not isinstance(actual_circuit, str) or not actual_circuit:
        raise ValueError(f"{label}: missing circuit")
    if circuit is not None and actual_circuit != circuit:
        raise ValueError(
            f"{label}: circuit drifted: {actual_circuit!r} != {circuit!r}"
        )
    total = _require_int(payload.get("nb_constraints"), f"{label}.nb_constraints")
    segments = payload.get("segments")
    if not isinstance(segments, list) or not segments:
        raise ValueError(f"{label}: segments must be a non-empty list")

    expected_start = 0
    result: list[dict] = []
    for expected_index, raw in enumerate(segments, start=1):
        if not isinstance(raw, dict):
            raise ValueError(f"{label}: segment {expected_index} is not an object")
        index = _require_int(
            raw.get("index"), f"{label}: segment index", minimum=1
        )
        if index != expected_index:
            raise ValueError(
                f"{label}: non-contiguous segment index {index}; "
                f"expected {expected_index}"
            )
        start = _require_int(raw.get("start"), f"{label}: segment {index} start")
        end = _require_int(raw.get("end"), f"{label}: segment {index} end")
        count = _require_int(
            raw.get("constraint_count"),
            f"{label}: segment {index} constraint_count",
        )
        if start != expected_start:
            raise ValueError(
                f"{label}: segment {index} starts at {start}, "
                f"expected contiguous boundary {expected_start}"
            )
        if end < start or end - start != count:
            raise ValueError(
                f"{label}: segment {index} geometry drifted: "
                f"[{start}, {end}) has count {count}"
            )
        for field in ("op", "kind"):
            if not isinstance(raw.get(field), str) or not raw[field]:
                raise ValueError(f"{label}: segment {index} has invalid {field}")
        expected_start = end
        result.append(raw)
    if expected_start != total:
        raise ValueError(
            f"{label}: segment partition ends at {expected_start}, "
            f"not nb_constraints {total}"
        )
    return tuple(result)


def validate_manifest(
    payload: dict, *, circuit: str | None = None
) -> tuple[dict, ...]:
    schema = payload.get("schema")
    if schema != "shieldd.gnark.constraint_manifest.v1":
        raise ValueError(f"manifest: unsupported schema {schema!r}")
    segments = _validate_segment_partition(
        payload, label="manifest", circuit=circuit
    )
    for segment in segments:
        args = segment.get("args")
        if not isinstance(args, list) or not all(
            isinstance(arg, str) and arg for arg in args
        ):
            raise ValueError(
                f"manifest: segment {segment['index']} has invalid args"
            )
        if len(set(args)) != len(args):
            raise ValueError(
                f"manifest: segment {segment['index']} has duplicate args"
            )
    return segments


def validate_ir(payload: dict, *, circuit: str | None = None) -> tuple[dict, ...]:
    _require_exact_fields(payload, IR_FIELDS, "deployed slice IR")
    schema = payload.get("schema")
    if schema != "shieldd.gnark.deployed_slice_ir.v3":
        raise ValueError(f"deployed slice IR: unsupported schema {schema!r}")
    actual_circuit = _require_nonempty_string(
        payload.get("circuit"), "deployed slice IR.circuit"
    )
    _require_sha256(
        payload.get("sr1cs_sha256_hex"),
        f"deployed slice IR {actual_circuit}.sr1cs_sha256_hex",
    )
    segments = _validate_segment_partition(
        payload, label="deployed slice IR", circuit=circuit
    )
    segment_by_index = {segment["index"]: segment for segment in segments}
    constraint_indices: set[int] = set()
    for segment in segments:
        index = segment["index"]
        count = segment["constraint_count"]
        expected_fields = (
            IR_TEMPLATE_SEGMENT_FIELDS if count > 0 else IR_EMPTY_SEGMENT_FIELDS
        )
        _require_exact_fields(
            segment, expected_fields, f"deployed slice IR segment {index}"
        )
        roles = _require_exact_fields(
            segment.get("wire_roles"),
            IR_WIRE_ROLE_FIELDS,
            f"deployed slice IR segment {index}.wire_roles",
        )
        all_role_wires: list[int] = []
        for role in ("input", "output", "internal"):
            wires = roles[role]
            if (
                not isinstance(wires, list)
                or not all(
                    isinstance(wire, int)
                    and not isinstance(wire, bool)
                    and wire > 0
                    for wire in wires
                )
                or wires != sorted(wires)
                or len(wires) != len(set(wires))
            ):
                raise ValueError(
                    f"deployed slice IR segment {index}: {role} wire role "
                    "must be a strictly ordered set of positive wire IDs"
                )
            all_role_wires.extend(wires)
        if len(all_role_wires) != len(set(all_role_wires)):
            raise ValueError(
                f"deployed slice IR segment {index}: wire roles overlap"
            )
        if count == 0:
            if all_role_wires:
                raise ValueError(
                    f"deployed slice IR segment {index}: empty segment owns wires"
                )
            continue

        constraint_indices.add(index)
        op = _require_nonempty_string(
            segment.get("op"), f"deployed slice IR segment {index}.op"
        )
        class_key = _require_nonempty_string(
            segment.get("class_key"),
            f"deployed slice IR segment {index}.class_key",
        )
        class_op, separator, class_suffix = class_key.rpartition("@")
        if (
            separator != "@"
            or class_op != op
            or len(class_suffix) != 16
            or any(char not in "0123456789abcdef" for char in class_suffix)
        ):
            raise ValueError(
                f"deployed slice IR segment {index}: malformed class key"
            )
        for field in (
            "constant_vector_sha256_hex",
            "relation_sha256_hex",
            "wire_role_sha256_hex",
            "deployed_normalized_relation_sha256_hex",
        ):
            _require_sha256(
                segment.get(field),
                f"deployed slice IR segment {index}.{field}",
            )
        proof_template_id = _require_nonempty_string(
            segment.get("proof_template_id"),
            f"deployed slice IR segment {index}.proof_template_id",
        )
        template_op, separator, template_digest = proof_template_id.rpartition("@")
        if separator != "@" or template_op != op:
            raise ValueError(
                f"deployed slice IR segment {index}: malformed proof-template ID"
            )
        _require_sha256(
            template_digest,
            f"deployed slice IR segment {index}.proof_template_id digest",
        )
        witness = _require_exact_fields(
            segment.get("template_equivalence_witness"),
            IR_TEMPLATE_WITNESS_FIELDS,
            f"deployed slice IR segment {index}.template_equivalence_witness",
        )
        if witness["proof_template_id"] != proof_template_id:
            raise ValueError(
                f"deployed slice IR segment {index}: witness template ID drifted"
            )
        seating = witness["canonical_local_to_deployed_wire_seating"]
        if (
            not isinstance(seating, list)
            or not seating
            or seating[0] != 0
            or not all(
                isinstance(wire, int)
                and not isinstance(wire, bool)
                and wire >= 0
                for wire in seating
            )
            or len(seating) != len(set(seating))
        ):
            raise ValueError(
                f"deployed slice IR segment {index}: malformed canonical seating"
            )
        if set(seating[1:]) != set(all_role_wires):
            raise ValueError(
                f"deployed slice IR segment {index}: canonical seating and "
                "wire-role partition differ"
            )
        row_map = _require_exact_fields(
            witness["canonical_row_to_deployed_row"],
            IR_ROW_MAP_FIELDS,
            f"deployed slice IR segment {index}.canonical_row_to_deployed_row",
        )
        if row_map != {"kind": "identity", "row_count": count}:
            raise ValueError(
                f"deployed slice IR segment {index}: non-canonical row map"
            )
        if witness["row_transforms"] != []:
            raise ValueError(
                f"deployed slice IR segment {index}: row transforms are not empty"
            )
        _require_sha256(
            witness["witness_sha256_hex"],
            f"deployed slice IR segment {index}.witness_sha256_hex",
        )

    classes = payload.get("classes")
    if not isinstance(classes, list) or not classes:
        raise ValueError("deployed slice IR.classes must be a non-empty list")
    class_keys: set[str] = set()
    covered_indices: set[int] = set()
    previous_key: str | None = None
    for position, raw_class in enumerate(classes):
        item = _require_exact_fields(
            raw_class,
            IR_CLASS_FIELDS,
            f"deployed slice IR class {position}",
        )
        class_key = _require_nonempty_string(
            item["class_key"], f"deployed slice IR class {position}.class_key"
        )
        op = _require_nonempty_string(
            item["op"], f"deployed slice IR class {class_key}.op"
        )
        shape = _require_sha256(
            item["shape_sha256_hex"],
            f"deployed slice IR class {class_key}.shape_sha256_hex",
        )
        if class_key != f"{op}@{shape[:16]}":
            raise ValueError(
                f"deployed slice IR class {class_key}: class key/shape drifted"
            )
        if class_key in class_keys or (
            previous_key is not None and class_key <= previous_key
        ):
            raise ValueError(
                "deployed slice IR classes must have unique sorted class keys"
            )
        class_keys.add(class_key)
        previous_key = class_key
        count = _require_int(
            item["constraint_count"],
            f"deployed slice IR class {class_key}.constraint_count",
            minimum=1,
        )
        indices = item["instance_segment_indices"]
        if (
            not isinstance(indices, list)
            or not indices
            or not all(
                isinstance(index, int)
                and not isinstance(index, bool)
                and index > 0
                for index in indices
            )
            or indices != sorted(indices)
            or len(indices) != len(set(indices))
        ):
            raise ValueError(
                f"deployed slice IR class {class_key}: malformed instance indices"
            )
        representative = _require_int(
            item["representative_segment_index"],
            f"deployed slice IR class {class_key}.representative_segment_index",
            minimum=1,
        )
        if representative != indices[0]:
            raise ValueError(
                f"deployed slice IR class {class_key}: representative is not first"
            )
        instances = []
        for index in indices:
            segment = segment_by_index.get(index)
            if (
                segment is None
                or segment.get("class_key") != class_key
                or segment.get("op") != op
                or segment.get("constraint_count") != count
            ):
                raise ValueError(
                    f"deployed slice IR class {class_key}: segment {index} drifted"
                )
            instances.append(segment)
        distinct_constants = _require_int(
            item["distinct_constant_vectors"],
            f"deployed slice IR class {class_key}.distinct_constant_vectors",
            minimum=1,
        )
        if distinct_constants != len(
            {segment["constant_vector_sha256_hex"] for segment in instances}
        ):
            raise ValueError(
                f"deployed slice IR class {class_key}: constant-vector count drifted"
            )
        overlap = covered_indices.intersection(indices)
        if overlap:
            raise ValueError(
                f"deployed slice IR classes overlap at segments {sorted(overlap)}"
            )
        covered_indices.update(indices)
    if covered_indices != constraint_indices:
        raise ValueError(
            "deployed slice IR classes do not exactly cover constraint segments"
        )
    return segments


def find_segment(
    payload: dict, role: SegmentRole, *, circuit: str | None = None
) -> dict:
    """Resolve exactly one op/args role, then authenticate all reviewed fields."""

    segments = validate_manifest(payload, circuit=circuit)
    candidates = [
        segment
        for segment in segments
        if segment["op"] == role.op
        and tuple(segment["args"]) == role.args
    ]
    role_label = f"{role.op}({', '.join(role.args)})"
    if not candidates:
        raise ValueError(f"{role_label}: deployed role is missing")
    if len(candidates) != 1:
        indices = [segment["index"] for segment in candidates]
        raise ValueError(
            f"{role_label}: deployed role is ambiguous at segments {indices}"
        )
    segment = candidates[0]
    expected = {
        "kind": role.kind,
        "constraint_count": role.constraint_count,
    }
    if role.gadget_label is not None:
        expected["gadget_label"] = role.gadget_label
    if role.bridge_theorem is not None:
        expected["bridge_theorem"] = role.bridge_theorem
    for field, value in expected.items():
        if segment.get(field) != value:
            raise ValueError(
                f"{role_label}: segment {segment['index']} {field} drifted: "
                f"{segment.get(field)!r} != {value!r}"
            )
    return segment


def join_ir_template(
    manifest_segment: dict,
    ir_payload: dict,
    *,
    proof_template_id: str,
    local_wire_count: int,
    circuit: str | None = None,
) -> DeployedTemplate:
    """Join one manifest role to the exact normalized-template witness in IR."""

    operation, separator, digest = proof_template_id.rpartition("@")
    if (
        separator != "@"
        or not operation
        or len(digest) != 64
        or any(char not in "0123456789abcdef" for char in digest)
    ):
        raise ValueError("proof_template_id must be an op@lowercase-sha256 key")
    if operation != manifest_segment.get("op"):
        raise ValueError(
            f"proof_template_id operation {operation!r} does not match "
            f"manifest op {manifest_segment.get('op')!r}"
        )
    _require_int(local_wire_count, "local_wire_count", minimum=1)
    segments = validate_ir(ir_payload, circuit=circuit)
    index = _require_int(
        manifest_segment.get("index"), "manifest segment index", minimum=1
    )
    matches = [segment for segment in segments if segment["index"] == index]
    if len(matches) != 1:
        raise ValueError(
            f"segment {index}: expected one deployed slice IR segment, "
            f"found {len(matches)}"
        )
    segment = matches[0]
    for field in ("op", "kind", "start", "end", "constraint_count"):
        if segment.get(field) != manifest_segment.get(field):
            raise ValueError(
                f"segment {index}: manifest/IR {field} mismatch: "
                f"{manifest_segment.get(field)!r} != {segment.get(field)!r}"
            )
    if segment.get("proof_template_id") != proof_template_id:
        raise ValueError(
            f"segment {index}: proof_template_id drifted: "
            f"{segment.get('proof_template_id')!r} != {proof_template_id!r}"
        )
    if segment.get("deployed_normalized_relation_sha256_hex") != digest:
        raise ValueError(
            f"segment {index}: deployed normalized relation digest does not "
            "match proof_template_id"
        )
    witness = segment.get("template_equivalence_witness")
    if not isinstance(witness, dict):
        raise ValueError(f"segment {index}: missing template equivalence witness")
    if witness.get("proof_template_id") != proof_template_id:
        raise ValueError(
            f"segment {index}: witness proof_template_id does not match"
        )
    seating = witness.get("canonical_local_to_deployed_wire_seating")
    if (
        not isinstance(seating, list)
        or len(seating) != local_wire_count
        or not all(
            isinstance(wire, int)
            and not isinstance(wire, bool)
            and wire >= 0
            for wire in seating
        )
    ):
        raise ValueError(
            f"segment {index}: expected {local_wire_count} non-negative "
            "canonical wire seats"
        )
    if seating[0] != 0:
        raise ValueError(f"segment {index}: local wire zero is not seated at zero")
    if len(set(seating)) != len(seating):
        raise ValueError(f"segment {index}: canonical wire seating is not injective")
    row_map = witness.get("canonical_row_to_deployed_row")
    expected_row_map = {
        "kind": "identity",
        "row_count": manifest_segment["constraint_count"],
    }
    if row_map != expected_row_map:
        raise ValueError(
            f"segment {index}: canonical row seating drifted: "
            f"{row_map!r} != {expected_row_map!r}"
        )
    if witness.get("row_transforms") != []:
        raise ValueError(f"segment {index}: unexpected canonical row transforms")
    digest = witness.get("witness_sha256_hex")
    if (
        not isinstance(digest, str)
        or len(digest) != 64
        or any(char not in "0123456789abcdef" for char in digest)
    ):
        raise ValueError(f"segment {index}: malformed witness digest")
    return DeployedTemplate(
        manifest_segment, segment, tuple(seating)
    )


def singleton_binding_wires(
    manifest: dict, name: str, *, count: int
) -> tuple[int, ...]:
    """Read one semantic binding made only of coefficient-one singleton wires."""

    _require_int(count, f"{name} expression count", minimum=1)
    bindings = manifest.get("semantic_bindings")
    if not isinstance(bindings, list):
        raise ValueError("manifest: semantic_bindings must be a list")
    matches = [
        binding
        for binding in bindings
        if isinstance(binding, dict) and binding.get("name") == name
    ]
    if len(matches) != 1:
        raise ValueError(
            f"semantic binding {name!r}: expected one entry, found {len(matches)}"
        )
    expressions = matches[0].get("expressions")
    if not isinstance(expressions, list) or len(expressions) != count:
        raise ValueError(
            f"semantic binding {name!r}: expected {count} expressions"
        )
    wires: list[int] = []
    for index, expression in enumerate(expressions):
        if not isinstance(expression, dict) or expression.get("constant") != "0":
            raise ValueError(
                f"semantic binding {name!r}[{index}]: nonzero or malformed constant"
            )
        terms = expression.get("terms")
        if not isinstance(terms, list) or len(terms) != 1:
            raise ValueError(
                f"semantic binding {name!r}[{index}]: expected one term"
            )
        term = terms[0]
        if (
            not isinstance(term, dict)
            or term.get("coefficient") != "1"
            or not isinstance(term.get("wire_id"), int)
            or isinstance(term.get("wire_id"), bool)
            or term["wire_id"] <= 0
        ):
            raise ValueError(
                f"semantic binding {name!r}[{index}]: "
                "expected coefficient-one nonzero wire"
            )
        wires.append(term["wire_id"])
    if len(set(wires)) != len(wires):
        raise ValueError(f"semantic binding {name!r}: duplicate wires")
    return tuple(wires)


def inverse_seating(
    seating: tuple[int, ...], deployed_wires: tuple[int, ...], *, label: str
) -> tuple[int, ...]:
    inverse = {wire: local for local, wire in enumerate(seating)}
    result: list[int] = []
    for wire in deployed_wires:
        try:
            result.append(inverse[wire])
        except KeyError as error:
            raise ValueError(
                f"{label}: deployed wire {wire} is absent from canonical seating"
            ) from error
    if len(set(result)) != len(result):
        raise ValueError(f"{label}: canonical seats are not distinct")
    return tuple(result)
