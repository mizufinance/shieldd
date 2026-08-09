"""Fail-closed JSON and repository-path reads for formal generators."""

from __future__ import annotations

import hashlib
import json
import math
import stat
from dataclasses import dataclass, field
from pathlib import Path
from typing import Literal


ROOT = Path(__file__).resolve().parents[4]
CanonicalEncoding = Literal[
    "pretty", "pretty_utf8", "pretty_go", "compact", "known"
]
TEMPLATE_INVENTORY_FIELDS = (
    "schema",
    "circuits",
    "template_count",
    "constraint_segment_count",
    "templates",
)
TEMPLATE_REGISTRY_FIELDS = (
    "schema",
    "field_modulus",
    "templates",
)
DEPLOYED_IR_FIELDS = (
    "schema",
    "circuit",
    "sr1cs_sha256_hex",
    "nb_constraints",
    "classes",
    "segments",
)
CONSTRAINT_MANIFEST_FIELDS = (
    "schema",
    "circuit",
    "shape",
    "nb_constraints",
    "nb_public_variables",
    "nb_secret_variables",
    "nb_internal_variables",
    "sr1cs_sha256_hex",
    "witness_wires",
    "semantic_bindings",
    "segments",
    "breakdown",
)
DEPLOYED_COVERAGE_FIELDS = (
    "schema",
    "circuit",
    "functional_assumption_allowlist",
    "classes",
)
KNOWN_SCHEMA_CONTRACTS: dict[
    str,
    tuple[
        tuple[str, ...],
        Literal["pretty", "pretty_utf8", "pretty_go", "compact"],
    ],
] = {
    "shieldd.gnark.normalized_template_inventory.v1": (
        TEMPLATE_INVENTORY_FIELDS,
        "pretty",
    ),
    "shieldd.gnark.proof_template_registry.v1": (
        TEMPLATE_REGISTRY_FIELDS,
        "pretty",
    ),
    "shieldd.gnark.deployed_slice_ir.v3": (DEPLOYED_IR_FIELDS, "pretty"),
    "shieldd.gnark.constraint_manifest.v1": (
        CONSTRAINT_MANIFEST_FIELDS,
        "pretty_go",
    ),
    "shieldd.gnark.deployed_coverage_manifest.v5": (
        DEPLOYED_COVERAGE_FIELDS,
        "pretty",
    ),
    "shieldd.gnark.fv_profiles.v2": (("schema", "profiles"), "pretty"),
    "shieldd.gnark.predicate_consequence_roster.v1": (
        ("schema", "profiles"),
        "pretty",
    ),
    "shieldd.gnark.specification_requirements.v3": (
        (
            "schema",
            "statements",
            "lean_declaration_fingerprints",
            "test_source_fingerprints",
            "profile_sets",
            "requirements",
        ),
        "pretty_utf8",
    ),
    "shieldd.gnark.proof_template_ownership.v1": (
        (
            "schema",
            "registry_schema",
            "templates",
            "shared_files",
            "families",
        ),
        "pretty",
    ),
}


@dataclass
class RepoPathAudit:
    """Authenticate one set of regular, unaliased files below the repository."""

    identities: dict[tuple[int, int], str] = field(default_factory=dict)

    def inspect(self, path: Path, *, label: str) -> str:
        if not path.is_absolute():
            raise ValueError(f"{label}: repository path is not absolute: {path}")
        try:
            relative = path.relative_to(ROOT)
        except ValueError as error:
            raise ValueError(f"{label}: file is outside repository: {path}") from error
        if not relative.parts or any(part in {".", ".."} for part in relative.parts):
            raise ValueError(f"{label}: non-canonical repository path: {path}")
        cursor = ROOT
        for part in relative.parts:
            cursor = cursor / part
            if cursor.is_symlink():
                raise ValueError(f"{label}: symlinked repository file: {path}")
        try:
            resolved = path.resolve(strict=True)
        except OSError as error:
            raise ValueError(f"{label}: missing repository file: {path}") from error
        if resolved != path:
            raise ValueError(f"{label}: non-canonical repository path: {path}")
        metadata = resolved.stat()
        if not stat.S_ISREG(metadata.st_mode):
            raise ValueError(f"{label}: repository path is not a file: {path}")
        if metadata.st_nlink != 1:
            raise ValueError(
                f"{label}: physical file has {metadata.st_nlink} hard-link aliases: "
                f"{path}"
            )
        relative_text = relative.as_posix()
        identity = (metadata.st_dev, metadata.st_ino)
        previous = self.identities.get(identity)
        if previous is not None and previous != relative_text:
            raise ValueError(
                f"{label}: physical file alias {relative_text!r} duplicates "
                f"{previous!r}"
            )
        self.identities[identity] = relative_text
        return relative_text


def _reject_duplicate_keys(
    label: object, pairs: list[tuple[str, object]]
) -> dict[str, object]:
    result: dict[str, object] = {}
    for key, value in pairs:
        if key in result:
            raise ValueError(f"{label}: duplicate JSON key {key!r}")
        result[key] = value
    return result


def _reject_non_finite(label: object, token: str) -> object:
    raise ValueError(f"{label}: non-finite JSON number {token!r}")


def _finite_float(label: object, token: str) -> float:
    value = float(token)
    if not math.isfinite(value):
        raise ValueError(f"{label}: non-finite JSON number {token!r}")
    return value


def _reject_unpaired_surrogates(label: object, value: object) -> None:
    if isinstance(value, str):
        if any(0xD800 <= ord(character) <= 0xDFFF for character in value):
            raise ValueError(
                f"{label}: JSON string contains an unpaired Unicode surrogate"
            )
        return
    if isinstance(value, list):
        for element in value:
            _reject_unpaired_surrogates(label, element)
        return
    if isinstance(value, dict):
        for key, element in value.items():
            _reject_unpaired_surrogates(label, key)
            _reject_unpaired_surrogates(label, element)


def decode_json(
    source: str | bytes,
    *,
    label: object = "JSON input",
    top_level: type | None = None,
) -> object:
    """Decode untrusted JSON with unique keys, finite numbers, and strict UTF-8."""

    if isinstance(source, bytes):
        try:
            text = source.decode("utf-8", errors="strict")
        except UnicodeError as error:
            raise ValueError(f"{label}: invalid UTF-8 JSON") from error
    elif isinstance(source, str):
        text = source
    else:
        raise TypeError(
            f"{label}: JSON source must be str or bytes, "
            f"got {type(source).__name__}"
        )
    try:
        payload = json.loads(
            text,
            object_pairs_hook=lambda pairs: _reject_duplicate_keys(label, pairs),
            parse_constant=lambda token: _reject_non_finite(label, token),
            parse_float=lambda token: _finite_float(label, token),
        )
    except json.JSONDecodeError as error:
        raise ValueError(f"{label}: invalid JSON") from error
    _reject_unpaired_surrogates(label, payload)
    if top_level is not None and not isinstance(payload, top_level):
        raise ValueError(
            f"{label}: expected top-level {top_level.__name__}, "
            f"got {type(payload).__name__}"
        )
    return payload


def read_json(
    path: Path,
    *,
    top_level: type = dict,
    expected_schema: str | None = None,
    expected_fields: tuple[str, ...] | frozenset[str] | set[str] | None = None,
    canonical: CanonicalEncoding | None = None,
    expected_sha256_hex: str | None = None,
    repo_owned: bool = True,
    path_audit: RepoPathAudit | None = None,
) -> object:
    """Read JSON with unique semantics and optional producer-byte authentication."""

    if repo_owned:
        (path_audit or RepoPathAudit()).inspect(path, label="formal JSON input")
    try:
        raw = path.read_bytes()
    except OSError as error:
        raise ValueError(f"{path}: cannot read UTF-8 JSON") from error
    if expected_sha256_hex is not None:
        actual_digest = hashlib.sha256(raw).hexdigest()
        if actual_digest != expected_sha256_hex:
            raise ValueError(
                f"{path}: source digest drifted: "
                f"{actual_digest} != {expected_sha256_hex}"
            )
    payload = decode_json(raw, label=path, top_level=top_level)
    source = raw.decode("utf-8", errors="strict")
    effective_canonical = canonical
    if isinstance(payload, dict):
        contract = KNOWN_SCHEMA_CONTRACTS.get(payload.get("schema"))
    else:
        contract = None
    if canonical == "known":
        if contract is None:
            raise ValueError(
                f"{path}: JSON schema has no canonical producer contract"
            )
        if expected_fields is None:
            expected_fields = contract[0]
        effective_canonical = contract[1]
    elif canonical is not None and expected_fields is None and contract is not None:
        expected_fields = contract[0]
    if expected_schema is not None:
        if not isinstance(payload, dict) or payload.get("schema") != expected_schema:
            actual = payload.get("schema") if isinstance(payload, dict) else None
            raise ValueError(
                f"{path}: schema drifted: {actual!r} != {expected_schema!r}"
            )
    if expected_fields is not None:
        if not isinstance(payload, dict):
            raise ValueError(f"{path}: exact fields require a JSON object")
        expected_field_set = set(expected_fields)
        actual_fields = set(payload)
        if actual_fields != expected_field_set:
            raise ValueError(
                f"{path}: fields drifted; "
                f"missing={sorted(expected_field_set - actual_fields)}, "
                f"extra={sorted(actual_fields - expected_field_set)}"
            )
        if isinstance(expected_fields, tuple) and tuple(payload) != expected_fields:
            raise ValueError(
                f"{path}: top-level field order drifted: "
                f"{tuple(payload)!r} != {expected_fields!r}"
            )
    if effective_canonical is not None:
        if effective_canonical == "pretty":
            expected_source = json.dumps(payload, indent=2) + "\n"
        elif effective_canonical == "pretty_utf8":
            expected_source = (
                json.dumps(payload, indent=2, ensure_ascii=False) + "\n"
            )
        elif effective_canonical == "pretty_go":
            expected_source = (
                json.dumps(payload, indent=2)
                .replace("&", "\\u0026")
                .replace("<", "\\u003c")
                .replace(">", "\\u003e")
                + "\n"
            )
        elif effective_canonical == "compact":
            expected_source = json.dumps(payload)
        else:
            raise ValueError(
                f"{path}: unknown canonical JSON encoding {effective_canonical}"
            )
        if source != expected_source:
            raise ValueError(
                f"{path}: JSON bytes are not canonical "
                f"{effective_canonical} encoding"
            )
    return payload


def read_json_object(path: Path, **kwargs: object) -> dict:
    payload = read_json(path, top_level=dict, **kwargs)
    assert isinstance(payload, dict)
    return payload


def is_repo_path(path: Path) -> bool:
    if not path.is_absolute():
        return False
    try:
        path.relative_to(ROOT)
        return True
    except ValueError:
        return False


def read_template_inventory(path: Path) -> dict:
    return read_json_object(
        path,
        expected_schema="shieldd.gnark.normalized_template_inventory.v1",
        expected_fields=TEMPLATE_INVENTORY_FIELDS,
        canonical="pretty",
    )


def read_template_registry(path: Path) -> dict:
    return read_json_object(
        path,
        expected_schema="shieldd.gnark.proof_template_registry.v1",
        expected_fields=TEMPLATE_REGISTRY_FIELDS,
        canonical="pretty",
    )


def read_deployed_ir(path: Path, *, repo_owned: bool | None = None) -> dict:
    if repo_owned is None:
        repo_owned = is_repo_path(path)
    return read_json_object(
        path,
        expected_schema="shieldd.gnark.deployed_slice_ir.v3",
        expected_fields=DEPLOYED_IR_FIELDS,
        canonical="pretty",
        repo_owned=repo_owned,
    )


def read_constraint_manifest(
    path: Path, *, repo_owned: bool | None = None
) -> dict:
    if repo_owned is None:
        repo_owned = is_repo_path(path)
    return read_json_object(
        path,
        expected_schema="shieldd.gnark.constraint_manifest.v1",
        expected_fields=CONSTRAINT_MANIFEST_FIELDS,
        canonical="pretty_go",
        repo_owned=repo_owned,
    )


def read_coverage_manifest(
    path: Path, *, repo_owned: bool | None = None
) -> dict:
    if repo_owned is None:
        repo_owned = is_repo_path(path)
    return read_json_object(
        path,
        expected_schema="shieldd.gnark.deployed_coverage_manifest.v5",
        expected_fields=DEPLOYED_COVERAGE_FIELDS,
        canonical="pretty",
        repo_owned=repo_owned,
    )


def read_known_formal_object(path: Path) -> dict:
    """Dispatch a schema-bearing formal artifact to its producer contract."""

    return read_json_object(
        path,
        canonical="known",
        repo_owned=is_repo_path(path),
    )
