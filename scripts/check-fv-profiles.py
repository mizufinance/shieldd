#!/usr/bin/env python3
"""Validate the canonical FV profile catalog and certification claims."""

from __future__ import annotations

import argparse
import hashlib
import json
import posixpath
import re
import subprocess
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
GNARK = ROOT / "tools" / "gnark"
CATALOG = GNARK / "fv_profiles.json"
LEAN = GNARK / "lean"
CIRCUIT_FORMAL = ROOT / "crates" / "core" / "component" / "shielded-pool" / "formal"

# Family labels and shapes come from the generated Go runtime registries below.
# This table pins only the canonical witness ABI for each runtime family.
PROFILE_ABI = {
    "note_reshape2x1": (
        3,
        "internal/testfixtures/vectors/note_reshape2x1_witness_v3.bin",
    ),
    "note_reshape4x1": (
        3,
        "internal/testfixtures/vectors/note_reshape4x1_witness_v3.bin",
    ),
    "note_reshape8x1": (
        3,
        "internal/testfixtures/vectors/note_reshape8x1_witness_v3.bin",
    ),
    "note_reshape1x8": (
        3,
        "internal/testfixtures/vectors/note_reshape1x8_witness_v3.bin",
    ),
    "transfer": (
        11,
        "internal/testfixtures/vectors/transfer_witness_v11.bin",
    ),
    "shielded_ics20_withdrawal": (
        6,
        "internal/testfixtures/vectors/shielded_ics20_withdrawal_witness_v6.bin",
    ),
}

GENERATED = GNARK / "internal" / "generated"
TRANSFER_FAMILIES = GNARK / "transfer_families.json"
NOTE_RESHAPE_FAMILIES = GNARK / "note_reshape_families.json"
WITHDRAWAL_FAMILIES = GNARK / "shielded_ics20_withdrawal_families.json"

# Promotion is intentionally closed over the exact backend implemented by
# check-lean-circuit-fv.sh. Adding a circuit requires extending that backend
# and this registry in the same change.
CERTIFICATION_ROOTS = {
    "note_reshape2x1": "ShielddGnarkFormal.Deployed.NoteReshape2x1Refinement",
    "note_reshape4x1": "ShielddGnarkFormal.Deployed.NoteReshape4x1Soundness",
    "note_reshape8x1": "ShielddGnarkFormal.Deployed.NoteReshape8x1Soundness",
    "note_reshape1x8": "ShielddGnarkFormal.Deployed.NoteReshape1x8Soundness",
}

WITNESS_MAGIC = {
    "note_reshape": b"PNWG",
    "transfer": b"PTWG",
    "shielded_ics20_withdrawal": b"PIWG",
}

MANIFEST_FIELDS = {
    "schema",
    "circuit",
    "shape",
    "nb_constraints",
    "nb_public_variables",
    "nb_secret_variables",
    "nb_internal_variables",
    "sr1cs_sha256_hex",
    "breakdown",
    "segments",
    "semantic_bindings",
    "witness_wires",
}

METADATA_FIELD_ORDER = (
    "schema",
    "curve",
    "circuit",
    "proving_key_size_bytes",
    "verifying_key_size_bytes",
    "nb_constraints",
    "nb_public_variables",
    "nb_secret_variables",
    "proving_key_sha256_hex",
    "verifying_key_binary_sha256_hex",
    "verifying_key_json_sha256_hex",
)
METADATA_FIELDS = set(METADATA_FIELD_ORDER)

SEGMENT_KINDS = {"adapter", "gadget", "glue", "marker", "unclassified"}
SEGMENT_REQUIRED_FIELDS = {
    "index",
    "op",
    "kind",
    "start",
    "end",
    "constraint_count",
}
SEGMENT_OPTIONAL_FIELDS = {
    "args",
    "gadget_label",
    "bridge_theorem",
    "input_wire_ids",
    "output_wire_ids",
    "classification_note",
}


def fail(message: str) -> None:
    raise SystemExit(f"FV profile check failed: {message}")


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def load_json(path: Path, label: str) -> object:
    def object_without_duplicates(
        pairs: list[tuple[str, object]],
    ) -> dict[str, object]:
        result: dict[str, object] = {}
        for key, value in pairs:
            if key in result:
                fail(f"{label}: duplicate JSON key {key!r}")
            result[key] = value
        return result

    try:
        raw = path.read_text(encoding="utf-8")
        return json.loads(
            raw,
            object_pairs_hook=object_without_duplicates,
            parse_constant=lambda value: fail(
                f"{label}: non-finite JSON number {value!r}"
            ),
        )
    except (OSError, UnicodeError, json.JSONDecodeError) as error:
        fail(f"{label}: cannot load strict JSON: {error}")


def validate_canonical_metadata_json(
    metadata: dict[str, object], raw: str, label: str
) -> None:
    canonical = (
        json.dumps(
            {field: metadata[field] for field in METADATA_FIELD_ORDER},
            indent=2,
            allow_nan=False,
        )
        + "\n"
    )
    if raw != canonical:
        fail(f"{label}: circuit metadata is not canonical two-space-indented JSON")


def parse_generated_go_registry(
    path: Path,
    variable: str,
    kind: str,
    *,
    expected_fields: set[str] | None = None,
) -> dict[str, tuple[str, int, int]]:
    """Read the literal family slice that the Go prover runtime iterates."""

    try:
        source = path.read_text(encoding="utf-8")
    except (OSError, UnicodeError) as error:
        fail(f"{variable}: cannot read generated Go registry: {error}")
    declaration = re.search(
        rf"(?m)^var[ \t]+{re.escape(variable)}[ \t]*="
        r"[ \t]*\[\][A-Za-z_][A-Za-z0-9_]*[ \t]*\{[ \t]*$",
        source,
    )
    if declaration is None:
        fail(f"{variable}: generated Go registry declaration is missing or nonliteral")
    closing = re.search(r"(?m)^}[ \t]*$", source[declaration.end() :])
    if closing is None:
        fail(f"{variable}: generated Go registry has no closing brace")
    body = source[declaration.end() : declaration.end() + closing.start()]
    entries = list(re.finditer(r"\{([^{}]*)\}", body, flags=re.DOTALL))
    residue = re.sub(r"\{[^{}]*\}", "", body, flags=re.DOTALL)
    if not entries or residue.strip(" \t\r\n,"):
        fail(f"{variable}: generated Go registry must contain only literal entries")

    field_pattern = re.compile(
        r"\s*([A-Za-z_][A-Za-z0-9_]*)\s*:\s*"
        r"(\"(?:\\.|[^\"\\])*\"|[A-Za-z_][A-Za-z0-9_]*|[0-9]+)"
        r"\s*(?:,|$)",
        flags=re.DOTALL,
    )

    def parse_fields(entry: str, index: int) -> dict[str, str]:
        fields: dict[str, str] = {}
        offset = 0
        while entry[offset:].strip():
            match = field_pattern.match(entry, offset)
            if match is None:
                fail(f"{variable}: entry {index} is not a literal struct value")
            field, value = match.groups()
            if field in fields:
                fail(f"{variable}: entry {index} duplicates field {field}")
            fields[field] = value
            offset = match.end()
        if expected_fields is not None and set(fields) != expected_fields:
            fail(f"{variable}: entry {index} has an unexpected field set")
        return fields

    def string_field(fields: dict[str, str], field: str, index: int) -> str:
        value = fields.get(field, "")
        match = re.fullmatch(r'"([^"\\]+)"', value)
        if match is None:
            fail(f"{variable}: entry {index} must contain a literal {field} field")
        return match.group(1)

    def int_field(fields: dict[str, str], field: str, index: int) -> int:
        token = fields.get(field, "")
        if re.fullmatch(r"[0-9]+", token) is None:
            fail(f"{variable}: entry {index} must contain a literal {field} field")
        value = int(token)
        if value <= 0:
            fail(f"{variable}: entry {index} has nonpositive {field}")
        return value

    profiles: dict[str, tuple[str, int, int]] = {}
    for index, match in enumerate(entries, start=1):
        fields = parse_fields(match.group(1), index)
        label = string_field(fields, "Label", index)
        if re.fullmatch(r"[a-z0-9_]+", label) is None:
            fail(f"{variable}: entry {index} has invalid label {label!r}")
        n_in = int_field(fields, "NIn", index)
        n_out = int_field(fields, "NOut", index)
        if label in profiles:
            fail(f"{variable}: duplicate runtime family label {label!r}")
        profiles[label] = (kind, n_in, n_out)
    return profiles


def load_json_family_registry(
    path: Path,
    label: str,
    kind: str,
    *,
    top_fields: set[str],
    family_fields: set[str],
) -> dict[str, tuple[str, int, int]]:
    data = load_json(path, label)
    if not isinstance(data, dict) or set(data) != top_fields:
        fail(f"{label}: family registry has an unexpected field set")
    families = data.get("families")
    if not isinstance(families, list) or not families:
        fail(f"{label}: families must be a nonempty array")

    profiles: dict[str, tuple[str, int, int]] = {}
    for index, family in enumerate(families, start=1):
        if not isinstance(family, dict) or set(family) != family_fields:
            fail(f"{label}: family {index} has an unexpected field set")
        family_label = family.get("label")
        if (
            not isinstance(family_label, str)
            or re.fullmatch(r"[a-z0-9_]+", family_label) is None
        ):
            fail(f"{label}: family {index} has an invalid label")
        n_in = family.get("n_in")
        n_out = family.get("n_out")
        if type(n_in) is not int or n_in <= 0:
            fail(f"{label}: family {family_label} has invalid n_in")
        if type(n_out) is not int or n_out <= 0:
            fail(f"{label}: family {family_label} has invalid n_out")
        if family_label in profiles:
            fail(f"{label}: duplicate family label {family_label!r}")
        profiles[family_label] = (kind, n_in, n_out)
    return profiles


def load_runtime_profiles() -> dict[str, tuple[str, int, int]]:
    """Load and cross-check every family accepted by the Go prover runtime."""

    transfer_data = load_json(TRANSFER_FAMILIES, "transfer family registry")
    if (
        not isinstance(transfer_data, dict)
        or transfer_data.get("schema") != "shieldd.transfer_families.v1"
    ):
        fail("transfer family registry: unsupported family registry schema")
    transfer_json = load_json_family_registry(
        TRANSFER_FAMILIES,
        "transfer family registry",
        "transfer",
        top_fields={"schema", "families"},
        family_fields={
            "label",
            "artifact_name",
            "bundled_lib_basename",
            "n_in",
            "n_out",
        },
    )
    note_reshape_data = load_json(NOTE_RESHAPE_FAMILIES, "note reshape registry")
    if (
        not isinstance(note_reshape_data, dict)
        or note_reshape_data.get("schema") != "shieldd.note_reshape_families.v1"
    ):
        fail("note reshape registry: unsupported family registry schema")
    note_reshape_json = load_json_family_registry(
        NOTE_RESHAPE_FAMILIES,
        "note reshape registry",
        "note_reshape",
        top_fields={"schema", "families"},
        family_fields={
            "id",
            "rust_name",
            "label",
            "artifact_name",
            "input_padding",
            "output_padding",
            "n_in",
            "n_out",
            "min_real_inputs",
            "max_real_inputs",
            "min_real_outputs",
            "max_real_outputs",
        },
    )
    withdrawal_data = load_json(
        WITHDRAWAL_FAMILIES, "shielded ICS-20 withdrawal registry"
    )
    if (
        not isinstance(withdrawal_data, dict)
        or withdrawal_data.get("schema")
        != "shieldd.shielded_ics20_withdrawal_families.v1"
    ):
        fail(
            "shielded ICS-20 withdrawal registry: "
            "unsupported family registry schema"
        )
    withdrawal_json = load_json_family_registry(
        WITHDRAWAL_FAMILIES,
        "shielded ICS-20 withdrawal registry",
        "shielded_ics20_withdrawal",
        top_fields={"schema", "families"},
        family_fields={
            "id",
            "rust_name",
            "label",
            "artifact_name",
            "bundled_lib_basename",
            "n_in",
            "n_out",
        },
    )

    transfer_go = parse_generated_go_registry(
        GENERATED / "transfer_families_generated.go",
        "TransferFamilies",
        "transfer",
        expected_fields={
            "Label",
            "ArtifactName",
            "NIn",
            "NOut",
            "BundledLibBasename",
        },
    )
    note_reshape_go = parse_generated_go_registry(
        GENERATED / "note_reshape_families_generated.go",
        "NoteReshapeFamilies",
        "note_reshape",
        expected_fields={
            "ID",
            "Label",
            "ArtifactName",
            "InputPadding",
            "OutputPadding",
            "NIn",
            "NOut",
            "MinRealInputs",
            "MaxRealInputs",
            "MinRealOutputs",
            "MaxRealOutputs",
        },
    )
    withdrawal_go = parse_generated_go_registry(
        GENERATED / "shielded_ics20_withdrawal_families_generated.go",
        "ShieldedIcs20WithdrawalFamilies",
        "shielded_ics20_withdrawal",
        expected_fields={
            "ID",
            "Label",
            "ArtifactName",
            "NIn",
            "NOut",
            "BundledLibBasename",
        },
    )
    if transfer_json != transfer_go:
        fail("transfer family JSON/generated Go registry mismatch")
    if note_reshape_json != note_reshape_go:
        fail("note reshape family JSON/generated Go registry mismatch")
    if withdrawal_json != withdrawal_go:
        fail("shielded ICS-20 withdrawal JSON/generated Go registry mismatch")

    runtime: dict[str, tuple[str, int, int]] = {}
    for registry_name, registry in (
        ("transfer", transfer_go),
        ("note reshape", note_reshape_go),
        ("shielded ICS-20 withdrawal", withdrawal_go),
    ):
        overlap = sorted(set(runtime) & set(registry))
        if overlap:
            fail(
                f"{registry_name} runtime registry duplicates family labels {overlap}"
            )
        runtime.update(registry)
    return runtime


def validate_registry_completeness(
    catalog_labels: set[str],
    runtime_profiles: dict[str, tuple[str, int, int]],
    profile_abi: dict[str, tuple[int, str]] = PROFILE_ABI,
) -> None:
    runtime_labels = set(runtime_profiles)
    abi_labels = set(profile_abi)
    if abi_labels != runtime_labels:
        missing = sorted(runtime_labels - abi_labels)
        extra = sorted(abi_labels - runtime_labels)
        fail(f"runtime/profile ABI mismatch: missing={missing}, extra={extra}")
    if catalog_labels != runtime_labels:
        missing = sorted(runtime_labels - catalog_labels)
        extra = sorted(catalog_labels - runtime_labels)
        fail(f"catalog/runtime registry mismatch: missing={missing}, extra={extra}")


def require_nonnegative_int(label: str, field: str, value: object) -> int:
    if type(value) is not int or value < 0:
        fail(f"{label}: {field} must be a nonnegative integer")
    return value


def require_sha256(label: str, field: str, value: object) -> str:
    if not isinstance(value, str) or re.fullmatch(r"[0-9a-f]{64}", value) is None:
        fail(f"{label}: {field} must be a lowercase SHA-256 digest")
    return value


def require_nonempty_string(label: str, field: str, value: object) -> str:
    if not isinstance(value, str) or not value:
        fail(f"{label}: {field} must be a nonempty string")
    return value


def validate_manifest_segments(
    label: str,
    segments: object,
    breakdown: dict[str, object],
    total_constraints: int,
) -> None:
    if not isinstance(segments, list) or not segments:
        fail(f"{label}: manifest.segments must be a nonempty array")

    constraints_by_kind = breakdown.get("constraints_by_kind")
    segments_by_kind = breakdown.get("segments_by_kind")
    if not isinstance(constraints_by_kind, dict) or not isinstance(
        segments_by_kind, dict
    ):
        fail(f"{label}: constraint manifest has invalid kind totals")

    computed_constraints: dict[str, int] = {}
    computed_segments: dict[str, int] = {}
    expected_start = 0
    allowed_fields = SEGMENT_REQUIRED_FIELDS | SEGMENT_OPTIONAL_FIELDS
    for expected_index, segment in enumerate(segments, start=1):
        if not isinstance(segment, dict):
            fail(f"{label}: manifest segment {expected_index} must be an object")
        fields = set(segment)
        if not SEGMENT_REQUIRED_FIELDS.issubset(fields) or not fields.issubset(
            allowed_fields
        ):
            fail(f"{label}: manifest segment {expected_index} has invalid fields")
        if segment.get("index") != expected_index:
            fail(f"{label}: manifest segment indices must be contiguous")
        require_nonempty_string(
            label, f"segments[{expected_index - 1}].op", segment.get("op")
        )
        kind = segment.get("kind")
        if kind not in SEGMENT_KINDS:
            fail(
                f"{label}: manifest segment {expected_index} has invalid kind {kind!r}"
            )
        for field in ("args", "input_wire_ids", "output_wire_ids"):
            if field not in segment:
                continue
            value = segment[field]
            if not isinstance(value, list):
                fail(
                    f"{label}: segments[{expected_index - 1}].{field} "
                    "must be an array"
                )
            if field == "args":
                if not all(isinstance(item, str) for item in value):
                    fail(
                        f"{label}: segments[{expected_index - 1}].args "
                        "must contain strings"
                    )
            elif not all(type(item) is int and item > 0 for item in value):
                fail(
                    f"{label}: segments[{expected_index - 1}].{field} "
                    "must contain positive wire ids"
                )
        for field in ("gadget_label", "bridge_theorem", "classification_note"):
            if field in segment and not isinstance(segment[field], str):
                fail(
                    f"{label}: segments[{expected_index - 1}].{field} "
                    "must be a string"
                )

        start = require_nonnegative_int(
            label, f"segments[{expected_index - 1}].start", segment.get("start")
        )
        end = require_nonnegative_int(
            label, f"segments[{expected_index - 1}].end", segment.get("end")
        )
        count = require_nonnegative_int(
            label,
            f"segments[{expected_index - 1}].constraint_count",
            segment.get("constraint_count"),
        )
        if start != expected_start:
            fail(f"{label}: manifest segment ranges are not contiguous")
        if end < start or count != end - start:
            fail(f"{label}: manifest segment {expected_index} has an invalid range")
        expected_start = end
        computed_constraints[kind] = computed_constraints.get(kind, 0) + count
        computed_segments[kind] = computed_segments.get(kind, 0) + 1

    if expected_start != total_constraints:
        fail(f"{label}: manifest segments do not cover every constraint")
    if set(constraints_by_kind) != set(computed_constraints) or set(
        segments_by_kind
    ) != set(computed_segments):
        fail(f"{label}: constraint manifest kind buckets do not match its segments")
    for kind, expected in computed_constraints.items():
        actual = require_nonnegative_int(
            label, f"constraints_by_kind.{kind}", constraints_by_kind.get(kind)
        )
        if actual != expected:
            fail(f"{label}: constraint total for {kind} is inconsistent")
    for kind, expected in computed_segments.items():
        actual = require_nonnegative_int(
            label, f"segments_by_kind.{kind}", segments_by_kind.get(kind)
        )
        if actual != expected:
            fail(f"{label}: segment total for {kind} is inconsistent")

    unclassified_constraints = require_nonnegative_int(
        label,
        "breakdown.unclassified_constraints",
        breakdown.get("unclassified_constraints"),
    )
    unclassified_segments = require_nonnegative_int(
        label,
        "breakdown.unclassified_segments",
        breakdown.get("unclassified_segments"),
    )
    if unclassified_constraints != computed_constraints.get("unclassified", 0):
        fail(f"{label}: unclassified constraint total is inconsistent")
    if unclassified_segments != computed_segments.get("unclassified", 0):
        fail(f"{label}: unclassified segment total is inconsistent")


def validate_manifest_witness_wires(
    label: str,
    wires: object,
    public_variables: int,
    secret_variables: int,
) -> None:
    if not isinstance(wires, list):
        fail(f"{label}: manifest.witness_wires must be an array")
    expected_count = public_variables - 1 + secret_variables
    if len(wires) != expected_count:
        fail(
            f"{label}: witness wire count {len(wires)} != "
            f"public-plus-secret count {expected_count}"
        )

    paths: set[str] = set()
    public_count = 0
    secret_count = 0
    for expected_id, wire in enumerate(wires, start=1):
        if not isinstance(wire, dict) or set(wire) != {
            "wire_id",
            "path",
            "visibility",
            "constraint_rows",
        }:
            fail(f"{label}: witness wire {expected_id} has invalid fields")
        if wire.get("wire_id") != expected_id:
            fail(f"{label}: witness wire ids must be contiguous")
        path = require_nonempty_string(
            label, f"witness_wires[{expected_id - 1}].path", wire.get("path")
        )
        if path in paths:
            fail(f"{label}: duplicate witness wire path {path!r}")
        paths.add(path)
        visibility = wire.get("visibility")
        if visibility == "public":
            public_count += 1
        elif visibility == "secret":
            secret_count += 1
        else:
            fail(
                f"{label}: witness wire {expected_id} has invalid visibility "
                f"{visibility!r}"
            )
        require_nonnegative_int(
            label,
            f"witness_wires[{expected_id - 1}].constraint_rows",
            wire.get("constraint_rows"),
        )
    if public_count != public_variables - 1 or secret_count != secret_variables:
        fail(f"{label}: witness wire visibility totals are inconsistent")


def validate_witness_header(
    label: str,
    kind: str,
    expected_version: int,
    witness_bytes: bytes,
) -> None:
    if len(witness_bytes) < 12:
        fail(f"{label}: witness is too short for its canonical header")
    expected_magic = WITNESS_MAGIC[kind]
    if witness_bytes[:4] != expected_magic:
        fail(
            f"{label}: witness magic {witness_bytes[:4]!r} != {expected_magic!r}"
        )
    witness_version = int.from_bytes(witness_bytes[4:8], "little")
    if witness_version != expected_version:
        fail(
            f"{label}: witness header version {witness_version} != "
            f"catalog version {expected_version}"
        )
    encoded_length = int.from_bytes(witness_bytes[8:12], "little")
    if encoded_length != len(witness_bytes):
        fail(
            f"{label}: witness header length {encoded_length} != "
            f"file length {len(witness_bytes)}"
        )


def profile_path(
    label: str,
    field: str,
    value: object,
    *,
    root: Path,
) -> Path:
    if not isinstance(value, str) or not value:
        fail(f"{label}: {field} must be a non-empty relative path")
    if (
        Path(value).is_absolute()
        or "\\" in value
        or posixpath.normpath(value) != value
        or any(character in value for character in "\t\r\n")
    ):
        fail(f"{label}: {field} must be a normalized relative path")
    path = (GNARK / value).resolve()
    if not path.is_relative_to(root.resolve()):
        fail(f"{label}: {field} escapes {root}")
    return path


def load_profiles() -> list[dict[str, object]]:
    data = load_json(CATALOG, "catalog")
    if not isinstance(data, dict) or set(data) != {"schema", "profiles"}:
        fail("catalog must contain exactly schema and profiles")
    if data.get("schema") != "shieldd.gnark.fv_profiles.v1":
        fail(f"unsupported schema {data.get('schema')!r}")
    profiles = data.get("profiles")
    if not isinstance(profiles, list) or not profiles:
        fail("profiles must be a non-empty array")
    return profiles


def validate_profile(
    profile: dict[str, object],
    runtime_profiles: dict[str, tuple[str, int, int]] | None = None,
) -> None:
    if not isinstance(profile, dict):
        fail("each profile must be an object")
    required = {
        "label",
        "kind",
        "n_in",
        "n_out",
        "witness_format_version",
        "witness",
        "artifact_dir",
        "manifest",
        "status",
        "theorem_root",
        "coverage_report",
    }
    if set(profile) != required:
        fail(
            f"{profile.get('label', '<unknown>')}: fields "
            f"{sorted(profile)} != {sorted(required)}"
        )
    label = profile["label"]
    if not isinstance(label, str) or re.fullmatch(r"[a-z0-9_]+", label) is None:
        fail("profile label must contain only lowercase letters, digits, and underscores")
    if not isinstance(profile["kind"], str) or profile["kind"] not in {
        "note_reshape",
        "transfer",
        "shielded_ics20_withdrawal",
    }:
        fail(f"{label}: unsupported kind {profile['kind']!r}")
    for field in ("n_in", "n_out", "witness_format_version"):
        if type(profile[field]) is not int or profile[field] <= 0:
            fail(f"{label}: {field} must be a positive integer")
    if not isinstance(profile["status"], str) or profile["status"] not in {
        "candidate",
        "certified",
    }:
        fail(f"{label}: unsupported status {profile['status']!r}")

    if runtime_profiles is None:
        runtime_profiles = load_runtime_profiles()
    registered = runtime_profiles.get(label)
    if registered is None:
        fail(f"{label}: label is not present in a runtime circuit registry")
    expected_kind, expected_n_in, expected_n_out = registered
    if (
        profile["kind"],
        profile["n_in"],
        profile["n_out"],
    ) != registered:
        fail(
            f"{label}: kind/shape "
            f"{(profile['kind'], profile['n_in'], profile['n_out'])!r} does not match "
            f"registered {(expected_kind, expected_n_in, expected_n_out)!r}"
        )
    profile_abi = PROFILE_ABI.get(label)
    if profile_abi is None:
        fail(f"{label}: runtime family has no registered FV witness ABI")
    expected_witness_version, expected_witness = profile_abi
    if profile["witness_format_version"] != expected_witness_version:
        fail(
            f"{label}: witness format version "
            f"{profile['witness_format_version']!r} != registered "
            f"{expected_witness_version!r}"
        )
    if profile["witness"] != expected_witness:
        fail(
            f"{label}: witness path {profile['witness']!r} != registered "
            f"{expected_witness!r}"
        )

    theorem_root = profile["theorem_root"]
    coverage_report = profile["coverage_report"]
    if profile["status"] == "certified":
        expected_theorem_root = CERTIFICATION_ROOTS.get(label)
        if expected_theorem_root is None:
            fail(f"{label}: no exact certification backend is registered")
        if theorem_root != expected_theorem_root:
            fail(
                f"{label}: theorem root {theorem_root!r} != exact backend root "
                f"{expected_theorem_root!r}"
            )
        expected_coverage = (
            CIRCUIT_FORMAL / f"{label}-constraint-coverage-report.json"
        ).resolve()
        if coverage_report is None:
            fail(f"{label}: certified profiles require a coverage root")
        actual_coverage = profile_path(
            label, "coverage_report", coverage_report, root=ROOT
        )
        if actual_coverage != expected_coverage:
            fail(f"{label}: coverage root must be {expected_coverage}")
    else:
        if theorem_root is not None or coverage_report is not None:
            fail(
                f"{label}: candidate profiles must have null theorem and coverage roots"
            )

    witness_path = profile_path(
        label, "witness", profile["witness"], root=GNARK
    )
    artifact_dir = profile_path(
        label, "artifact_dir", profile["artifact_dir"], root=GNARK
    )
    manifest_path = profile_path(
        label, "manifest", profile["manifest"], root=GNARK
    )
    if not witness_path.is_file():
        fail(f"{label}: missing witness file {witness_path}")
    witness_bytes = witness_path.read_bytes()
    validate_witness_header(
        label,
        profile["kind"],
        profile["witness_format_version"],
        witness_bytes,
    )
    if not artifact_dir.is_dir():
        fail(f"{label}: missing artifact directory {artifact_dir}")
    if not manifest_path.is_file():
        fail(f"{label}: missing semantic manifest {manifest_path}")
    expected_artifact_dir = (GNARK / "artifacts" / label).resolve()
    if artifact_dir != expected_artifact_dir:
        fail(f"{label}: artifact_dir must be {expected_artifact_dir}")
    expected_manifest = artifact_dir / f"{label}-manifest.json"
    if manifest_path != expected_manifest:
        fail(f"{label}: manifest must be {expected_manifest}")

    sr1cs_path = artifact_dir / f"{label}.sr1cs"
    if not sr1cs_path.is_file():
        fail(f"{label}: missing deployed SR1CS {sr1cs_path}")
    for artifact in (
        "circuit_metadata.json",
        "proving_key.bin",
        "verifying_key.bin",
        "verifying_key.json",
    ):
        if not (artifact_dir / artifact).is_file():
            fail(f"{label}: missing deployed artifact {artifact_dir / artifact}")

    manifest = load_json(manifest_path, f"{label} manifest")
    if not isinstance(manifest, dict) or set(manifest) != MANIFEST_FIELDS:
        fail(f"{label}: constraint manifest has an unexpected field set")
    if manifest.get("schema") != "shieldd.gnark.constraint_manifest.v1":
        fail(f"{label}: unsupported constraint manifest schema")
    if manifest.get("circuit") != label:
        fail(f"{label}: constraint manifest names {manifest.get('circuit')!r}")
    expected_shape = {"n_in": profile["n_in"], "n_out": profile["n_out"]}
    if manifest.get("shape") != expected_shape:
        fail(
            f"{label}: constraint manifest shape {manifest.get('shape')!r} "
            f"!= catalog shape {expected_shape!r}"
        )
    manifest_counts = {
        field: require_nonnegative_int(
            label, f"manifest.{field}", manifest.get(field)
        )
        for field in (
            "nb_constraints",
            "nb_public_variables",
            "nb_secret_variables",
            "nb_internal_variables",
        )
    }
    if manifest_counts["nb_public_variables"] < 1:
        fail(f"{label}: manifest must include the constant public wire")
    require_sha256(
        label, "manifest.sr1cs_sha256_hex", manifest.get("sr1cs_sha256_hex")
    )
    for field in ("segments", "semantic_bindings", "witness_wires"):
        if not isinstance(manifest.get(field), list):
            fail(f"{label}: manifest.{field} must be an array")
    breakdown = manifest.get("breakdown")
    expected_breakdown_fields = {
        "total_constraints",
        "constraints_by_kind",
        "segments_by_kind",
        "unclassified_constraints",
        "unclassified_segments",
    }
    if not isinstance(breakdown, dict) or set(breakdown) != expected_breakdown_fields:
        fail(f"{label}: constraint manifest has an invalid breakdown")
    total_constraints = require_nonnegative_int(
        label, "breakdown.total_constraints", breakdown.get("total_constraints")
    )
    validate_manifest_segments(
        label, manifest["segments"], breakdown, total_constraints
    )
    validate_manifest_witness_wires(
        label,
        manifest["witness_wires"],
        manifest_counts["nb_public_variables"],
        manifest_counts["nb_secret_variables"],
    )

    sr1cs_hash = sha256(sr1cs_path)
    if manifest.get("sr1cs_sha256_hex") != sr1cs_hash:
        fail(f"{label}: constraint manifest does not bind the deployed SR1CS")
    if manifest_counts["nb_constraints"] != total_constraints:
        fail(f"{label}: constraint manifest total is internally inconsistent")

    metadata_path = artifact_dir / "circuit_metadata.json"
    metadata = load_json(metadata_path, f"{label} metadata")
    if not isinstance(metadata, dict) or set(metadata) != METADATA_FIELDS:
        fail(f"{label}: circuit metadata has an unexpected field set")
    validate_canonical_metadata_json(
        metadata,
        metadata_path.read_text(encoding="utf-8"),
        label,
    )
    if metadata.get("schema") != "shieldd.gnark.circuit_metadata.v1":
        fail(f"{label}: unsupported circuit metadata schema")
    for field in (
        "nb_constraints",
        "nb_public_variables",
        "nb_secret_variables",
        "proving_key_size_bytes",
        "verifying_key_size_bytes",
    ):
        require_nonnegative_int(label, f"metadata.{field}", metadata.get(field))
    for field in (
        "proving_key_sha256_hex",
        "verifying_key_binary_sha256_hex",
        "verifying_key_json_sha256_hex",
    ):
        require_sha256(label, f"metadata.{field}", metadata.get(field))
    metadata_bindings = {
        "schema": "shieldd.gnark.circuit_metadata.v1",
        "curve": "bls12-377",
        "circuit": label,
        "nb_constraints": manifest.get("nb_constraints"),
        "nb_public_variables": manifest.get("nb_public_variables"),
        "nb_secret_variables": manifest.get("nb_secret_variables"),
        "proving_key_size_bytes": (artifact_dir / "proving_key.bin").stat().st_size,
        "verifying_key_size_bytes": (
            artifact_dir / "verifying_key.bin"
        ).stat().st_size,
        "proving_key_sha256_hex": sha256(artifact_dir / "proving_key.bin"),
        "verifying_key_binary_sha256_hex": sha256(
            artifact_dir / "verifying_key.bin"
        ),
        "verifying_key_json_sha256_hex": sha256(
            artifact_dir / "verifying_key.json"
        ),
    }
    for field, expected in metadata_bindings.items():
        if metadata.get(field) != expected:
            fail(
                f"{label}: circuit metadata {field} {metadata.get(field)!r} "
                f"!= {expected!r}"
            )

    report = None
    if coverage_report is not None:
        report_path = profile_path(
            label, "coverage_report", coverage_report, root=ROOT
        )
        if not report_path.is_file():
            fail(f"{label}: missing coverage report {report_path}")
        report = load_json(report_path, f"{label} coverage report")
        if not isinstance(report, dict):
            fail(f"{label}: coverage report must be an object")
        if report.get("schema") != "shieldd.gnark.constraint_coverage_report.v1":
            fail(f"{label}: unsupported coverage report schema")
        if report.get("circuit") != label:
            fail(f"{label}: coverage report names {report.get('circuit')!r}")
        if report.get("nb_constraints") != manifest.get("nb_constraints"):
            fail(f"{label}: coverage report constraint count does not match manifest")
        if report.get("sr1cs_sha256_hex") != sr1cs_hash:
            fail(f"{label}: coverage report does not bind the deployed SR1CS")
        if report.get("manifest_sha256_hex") != sha256(manifest_path):
            fail(f"{label}: coverage report does not bind the semantic manifest")

    if profile["status"] == "certified":
        if not isinstance(theorem_root, str) or not theorem_root:
            fail(f"{label}: certified profiles require a theorem module")
        if re.fullmatch(r"[A-Za-z_][A-Za-z0-9_.]*", theorem_root) is None:
            fail(f"{label}: invalid theorem module {theorem_root!r}")
        theorem_path = LEAN.joinpath(*theorem_root.split(".")).with_suffix(".lean")
        if not theorem_path.is_file():
            fail(f"{label}: missing theorem module source {theorem_path}")
        if report is None:
            fail(f"{label}: certified profiles require theorem and coverage roots")
        obligations = report.get("deployed_obligations", {})
        if obligations.get("circuit") != label:
            fail(f"{label}: deployed obligations name another circuit")
        if obligations.get("sr1cs_sha256_hex") != sr1cs_hash:
            fail(f"{label}: deployed obligations do not bind the deployed SR1CS")
        for field in (
            "pending",
            "functional_assumptions",
            "unmapped",
            "constant_mismatch",
            "instance_unpinned",
            "theorem_missing",
            "contract_missing",
            "relation_mismatch",
            "wire_role_mismatch",
        ):
            if obligations.get(field) != 0:
                fail(f"{label}: certified profile has nonzero {field}")
        if obligations.get("class_errors") != []:
            fail(f"{label}: certified profile has class errors")
        if not isinstance(obligations.get("total_obligations"), int) or obligations[
            "total_obligations"
        ] <= 0:
            fail(f"{label}: certified profile has no deployed obligations")
        if obligations.get("discharged") != obligations.get("total_obligations"):
            fail(f"{label}: certified profile is not fully discharged")
        if manifest.get("breakdown", {}).get("unclassified_constraints") != 0:
            fail(f"{label}: certified manifest has unclassified constraints")
        if not manifest.get("semantic_bindings"):
            fail(f"{label}: certified manifest has no semantic bindings")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--emit-tsv", action="store_true")
    parser.add_argument("--status", choices=("candidate", "certified"))
    parser.add_argument("labels", nargs="*")
    args = parser.parse_args()

    registry_check = subprocess.run(
        [sys.executable, str(GNARK / "check_gnark_family_registries.py")],
        cwd=ROOT,
        capture_output=True,
        text=True,
        check=False,
    )
    if registry_check.returncode:
        detail = registry_check.stderr.strip() or registry_check.stdout.strip()
        fail(f"cross-language family registry parity failed: {detail}")

    profiles = load_profiles()
    runtime_profiles = load_runtime_profiles()
    seen: set[str] = set()
    by_label: dict[str, dict[str, object]] = {}
    for profile in profiles:
        validate_profile(profile, runtime_profiles)
        label = str(profile["label"])
        if label in seen:
            fail(f"duplicate label {label}")
        seen.add(label)
        by_label[label] = profile
    validate_registry_completeness(set(by_label), runtime_profiles)

    labels = args.labels or list(by_label)
    if "all" in labels:
        if len(labels) != 1:
            fail("'all' cannot be combined with explicit labels")
        labels = list(by_label)
    unknown = sorted(set(labels) - set(by_label))
    if unknown:
        fail(f"unknown profiles: {', '.join(unknown)}")
    if args.status:
        labels = [
            label
            for label in labels
            if by_label[label]["status"] == args.status
        ]
        if not labels:
            fail(f"no {args.status} profiles selected")

    if args.emit_tsv:
        for label in labels:
            profile = by_label[label]
            print(
                "\t".join(
                    str(profile[field])
                    for field in (
                        "label",
                        "status",
                        "kind",
                        "n_in",
                        "n_out",
                        "witness",
                        "artifact_dir",
                        "manifest",
                        "witness_format_version",
                    )
                )
            )
    else:
        print(f"FV profile catalog ok: {len(profiles)} profiles")


if __name__ == "__main__":
    main()
