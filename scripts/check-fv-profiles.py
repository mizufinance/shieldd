#!/usr/bin/env python3
"""Validate the canonical FV profile catalog and certification claims."""

from __future__ import annotations

import argparse
import hashlib
import json
import posixpath
import re
import stat
import subprocess
import sys
from pathlib import Path, PurePosixPath

SCRIPT_DIR = Path(__file__).resolve().parent
sys.path.insert(0, str(SCRIPT_DIR))
from fv_certification import (
    CERTIFICATION_IDENTITIES,
    backend_identity_errors,
    predicate_consequence_declarations,
    render_lean_certification_checks,
)
from fv_strict_json import StrictJsonError, loads as loads_strict_json
from fv_specification_completeness import (
    SpecificationCompletenessError,
    load_and_validate as load_specification_completeness,
    validate_profile_certification_join,
)


ROOT = Path(__file__).resolve().parents[1]
GNARK = ROOT / "tools" / "gnark"
CATALOG = GNARK / "fv_profiles.json"
CERTIFICATION_BACKENDS = GNARK / "fv_certification_backends.json"
LEAN = GNARK / "lean"
CIRCUIT_FORMAL = ROOT / "crates" / "core" / "component" / "shielded-pool" / "formal"

# Family labels and shapes come from the generated Go runtime registries below.
# This table pins the canonical witness ABI and the complete security-branch
# proof matrix for each runtime family.
PROFILE_ABI = {
    "note_reshape8x1": (
        3,
        (
            (
                "note_reshape8x1",
                "internal/testfixtures/vectors/note_reshape8x1_witness_v3.bin",
            ),
        ),
    ),
    "note_reshape1x8": (
        3,
        (
            (
                "note_reshape1x8",
                "internal/testfixtures/vectors/note_reshape1x8_witness_v3.bin",
            ),
        ),
    ),
    "transfer": (
        16,
        (
            (
                "regulated_unflagged",
                "internal/testfixtures/vectors/transfer_witness_v16.bin",
            ),
            (
                "regulated_flagged_hidden",
                "internal/testfixtures/vectors/transfer_flagged_witness_v16.bin",
            ),
            (
                "unregulated_hidden",
                "internal/testfixtures/vectors/transfer_unregulated_witness_v16.bin",
            ),
        ),
    ),
    "shielded_ics20_withdrawal": (
        8,
        (
            (
                "regulated_optional_real",
                "internal/testfixtures/vectors/"
                "shielded_ics20_withdrawal_witness_v8.bin",
            ),
            (
                "unregulated_optional_dummy",
                "internal/testfixtures/vectors/"
                "shielded_ics20_withdrawal_unregulated_witness_v8.bin",
            ),
        ),
    ),
}

GENERATED = GNARK / "internal" / "generated"
TRANSFER_FAMILIES = GNARK / "transfer_families.json"
NOTE_RESHAPE_FAMILIES = GNARK / "note_reshape_families.json"
WITHDRAWAL_FAMILIES = GNARK / "shielded_ics20_withdrawal_families.json"

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
    "sr1cs_sha256_hex",
    "setup_provenance_sha256_hex",
    "proving_key_sha256_hex",
    "verifying_key_binary_sha256_hex",
    "verifying_key_json_sha256_hex",
)
METADATA_FIELDS = set(METADATA_FIELD_ORDER)
SETUP_PROVENANCE_FIELD_ORDER = (
    "schema",
    "curve",
    "circuit",
    "mode",
    "sr1cs_sha256_hex",
    "proving_key_sha256_hex",
    "verifying_key_binary_sha256_hex",
    "verifying_key_json_sha256_hex",
    "generation_self_tests",
    "setup_transcript",
    "toxic_waste_erasure",
)
SETUP_PROVENANCE_FIELDS = set(SETUP_PROVENANCE_FIELD_ORDER)
SETUP_GENERATION_SELF_TEST_FIELD_ORDER = (
    "proof_case",
    "witness_format_version",
    "witness_sha256_hex",
    "proved_and_verified_in_process",
)
SETUP_GENERATION_SELF_TEST_FIELDS = set(
    SETUP_GENERATION_SELF_TEST_FIELD_ORDER
)
SETUP_MODES = {
    "note_reshape8x1": "fresh_setup",
    "note_reshape1x8": "fresh_setup",
    "transfer": "fresh_setup",
    "shielded_ics20_withdrawal": "fresh_setup",
}
DEPLOYED_ARTIFACT_STATIC_FILES = frozenset(
    {
        "circuit_metadata.json",
        "proving_key.bin",
        "setup_provenance.json",
        "verifying_key.bin",
        "verifying_key.json",
    }
)

SEGMENT_KINDS = {"adapter", "gadget", "glue", "marker", "unclassified"}
SUPPORTED_CERTIFICATION_BACKENDS = {
    "generation_backend": {"note_reshape", "deployed_family"},
    "benchmark_backend": {"certified_statement_hash"},
    "evidence_backend": {"certified_circuit"},
}
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


def authenticated_path(
    path: Path,
    label: str,
    *,
    root: Path,
    expected_kind: str,
) -> Path:
    """Resolve one ordinary repository path without filesystem aliases."""

    if expected_kind not in {"file", "directory"}:
        fail(f"{label}: unsupported authenticated path kind {expected_kind!r}")
    unresolved_root = Path(root)
    if unresolved_root.is_symlink():
        fail(f"{label}: authenticated path root is symlinked: {unresolved_root}")
    try:
        root_metadata = unresolved_root.lstat()
    except OSError as error:
        fail(f"{label}: cannot inspect authenticated path root: {error}")
    if not stat.S_ISDIR(root_metadata.st_mode):
        fail(f"{label}: authenticated path root is not a directory")
    resolved_root = unresolved_root.resolve()

    unresolved = Path(path)
    try:
        relative = unresolved.relative_to(unresolved_root)
    except ValueError:
        fail(f"{label}: authenticated path is outside {unresolved_root}")
    if any(part in {"", ".", ".."} for part in relative.parts):
        fail(f"{label}: authenticated path is not normalized")

    current = unresolved_root
    parts = relative.parts
    for index, part in enumerate(parts):
        current /= part
        try:
            metadata = current.lstat()
        except OSError as error:
            fail(f"{label}: cannot inspect {current}: {error}")
        if stat.S_ISLNK(metadata.st_mode):
            fail(f"{label}: symlinked path component: {current}")
        if index + 1 < len(parts) and not stat.S_ISDIR(metadata.st_mode):
            fail(f"{label}: non-directory path component: {current}")

    try:
        resolved = current.resolve(strict=True)
    except OSError as error:
        fail(f"{label}: cannot resolve authenticated path: {error}")
    if not resolved.is_relative_to(resolved_root):
        fail(f"{label}: authenticated path escapes {unresolved_root}")
    try:
        metadata = resolved.lstat()
    except OSError as error:
        fail(f"{label}: cannot inspect authenticated path: {error}")
    if expected_kind == "file":
        if not stat.S_ISREG(metadata.st_mode):
            fail(f"{label}: authenticated path is not a regular file")
        if metadata.st_nlink != 1:
            fail(
                f"{label}: regular file has {metadata.st_nlink} physical aliases"
            )
    elif not stat.S_ISDIR(metadata.st_mode):
        fail(f"{label}: authenticated path is not a directory")
    return resolved


def authenticated_relative_path(
    label: str,
    field: str,
    value: object,
    *,
    base: Path,
    expected_kind: str,
) -> Path:
    """Authenticate one normalized path relative to an explicit trusted base."""

    if not isinstance(value, str) or not value:
        fail(f"{label}: {field} must be a non-empty relative path")
    pure = PurePosixPath(value)
    if (
        pure.is_absolute()
        or "\\" in value
        or str(pure) != value
        or any(part in {"", ".", ".."} for part in pure.parts)
        or any(character in value for character in "\t\r\n")
    ):
        fail(f"{label}: {field} must be a normalized relative path")
    return authenticated_path(
        Path(base).joinpath(*pure.parts),
        f"{label}.{field}",
        root=base,
        expected_kind=expected_kind,
    )


def validate_specification_completeness(
    profiles: list[dict[str, object]],
) -> None:
    try:
        manifests = {
            str(profile["label"]): profile_path(
                str(profile["label"]),
                "manifest",
                profile["manifest"],
                base=GNARK,
                expected_kind="file",
            )
            for profile in profiles
        }
        statuses = load_specification_completeness(
            manifests=manifests,
            require_relation_evidence=True,
        )
        validate_profile_certification_join(profiles, statuses)
    except SpecificationCompletenessError as error:
        fail(f"specification completeness failed: {error}")


def sha256(path: Path) -> str:
    path = authenticated_path(
        path,
        f"SHA-256 source {path}",
        root=ROOT,
        expected_kind="file",
    )
    return hashlib.sha256(path.read_bytes()).hexdigest()


def load_json(
    path: Path,
    label: str,
    *,
    authenticated_root: Path | None = None,
) -> object:
    if authenticated_root is not None:
        path = authenticated_path(
            path,
            label,
            root=authenticated_root,
            expected_kind="file",
        )
    try:
        raw = path.read_text(encoding="utf-8")
        return loads_strict_json(raw, label)
    except (OSError, UnicodeError, StrictJsonError) as error:
        fail(f"{label}: cannot load strict JSON: {error}")


def load_certification_backends() -> dict[str, dict[str, object]]:
    data = load_json(
        CERTIFICATION_BACKENDS,
        "certification backend registry",
        authenticated_root=ROOT,
    )
    if not isinstance(data, dict) or set(data) != {"schema", "backends"}:
        fail("certification backend registry has an unexpected field set")
    if data.get("schema") != "shieldd.gnark.fv_certification_backends.v1":
        fail("unsupported certification backend registry schema")
    entries = data.get("backends")
    if not isinstance(entries, list) or not entries:
        fail("certification backend registry must contain backends")

    module_pattern = re.compile(r"[A-Za-z_][A-Za-z0-9_.]*")
    backend_fields = {
        "label",
        "contract_module",
        "theorem_root",
        "generation_backend",
        "benchmark_backend",
        "evidence_backend",
        "lt_seating_artifact",
        "build_modules",
        "axiom_targets",
    }
    backends: dict[str, dict[str, object]] = {}
    for index, backend in enumerate(entries, start=1):
        if not isinstance(backend, dict) or set(backend) != backend_fields:
            fail(f"certification backend {index} has an unexpected field set")
        label = backend.get("label")
        if (
            not isinstance(label, str)
            or re.fullmatch(r"[a-z0-9_]+", label) is None
            or label in backends
        ):
            fail(f"certification backend {index} has an invalid or duplicate label")
        contract_module = backend.get("contract_module")
        if (
            not isinstance(contract_module, str)
            or re.fullmatch(r"[A-Za-z_][A-Za-z0-9_]*", contract_module) is None
        ):
            fail(f"{label}: invalid contract module")
        theorem_root = backend.get("theorem_root")
        if not isinstance(theorem_root, str) or module_pattern.fullmatch(
            theorem_root
        ) is None:
            fail(f"{label}: invalid certification theorem root")
        for field in (
            "generation_backend",
            "benchmark_backend",
            "evidence_backend",
        ):
            value = backend.get(field)
            if value not in SUPPORTED_CERTIFICATION_BACKENDS[field]:
                fail(f"{label}: unsupported {field} {value!r}")

        seating = backend.get("lt_seating_artifact")
        if seating is not None:
            if (
                not isinstance(seating, str)
                or not seating
                or Path(seating).is_absolute()
                or "\\" in seating
                or posixpath.normpath(seating) != seating
            ):
                fail(f"{label}: invalid LT seating artifact path")
            seating_path = authenticated_relative_path(
                label,
                "lt_seating_artifact",
                seating,
                base=ROOT,
                expected_kind="file",
            )
            sidecar_path = authenticated_path(
                Path(f"{seating_path}.sha256"),
                f"{label}.lt_seating_artifact sidecar",
                root=ROOT,
                expected_kind="file",
            )
            try:
                sidecar = sidecar_path.read_text(encoding="ascii")
            except (OSError, UnicodeError) as error:
                fail(f"{label}: cannot read LT seating sidecar: {error}")
            if re.fullmatch(r"[0-9a-f]{64}\n", sidecar) is None:
                fail(
                    f"{label}: LT seating sidecar must be one lowercase "
                    "SHA-256 line"
                )
            if sidecar.removesuffix("\n") != sha256(seating_path):
                fail(f"{label}: LT seating sidecar does not match seating bytes")

        build_modules = backend.get("build_modules")
        if (
            not isinstance(build_modules, list)
            or not build_modules
            or len(build_modules) != len(set(build_modules))
            or any(
                not isinstance(module, str)
                or module_pattern.fullmatch(module) is None
                for module in build_modules
            )
        ):
            fail(f"{label}: invalid or duplicate build modules")
        if theorem_root not in build_modules:
            fail(f"{label}: theorem root is not a build target")
        for module in build_modules:
            source = LEAN.joinpath(*module.split(".")).with_suffix(".lean")
            authenticated_path(
                source,
                f"{label} build module {module}",
                root=ROOT,
                expected_kind="file",
            )

        axiom_targets = backend.get("axiom_targets")
        if not isinstance(axiom_targets, list) or not axiom_targets:
            fail(f"{label}: certification backend has no axiom targets")
        seen_roots: set[str] = set()
        for target_index, target in enumerate(axiom_targets, start=1):
            if not isinstance(target, dict) or set(target) != {
                "root_module",
                "declarations",
            }:
                fail(f"{label}: axiom target {target_index} has invalid fields")
            root_module = target.get("root_module")
            declarations = target.get("declarations")
            if (
                not isinstance(root_module, str)
                or module_pattern.fullmatch(root_module) is None
                or root_module in seen_roots
            ):
                fail(f"{label}: axiom target {target_index} has an invalid root")
            seen_roots.add(root_module)
            root_source = LEAN.joinpath(*root_module.split(".")).with_suffix(
                ".lean"
            )
            authenticated_path(
                root_source,
                f"{label} axiom root {root_module}",
                root=ROOT,
                expected_kind="file",
            )
            if (
                not isinstance(declarations, list)
                or not declarations
                or len(declarations) != len(set(declarations))
                or any(
                    not isinstance(declaration, str)
                    or module_pattern.fullmatch(declaration) is None
                    for declaration in declarations
                )
            ):
                fail(
                    f"{label}: axiom target {target_index} has invalid declarations"
                )
        identity_errors = backend_identity_errors(backend)
        if identity_errors:
            fail(
                f"{label}: certification backend does not match its "
                "code-owned identity: "
                + "; ".join(identity_errors)
            )
        backends[label] = backend
    return backends


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


def validate_setup_provenance(
    label: str,
    provenance: object,
    raw: str,
    expected_proof_witnesses: tuple[tuple[str, str], ...],
    witness_version: int,
    artifact_dir: Path,
) -> None:
    if (
        not isinstance(provenance, dict)
        or set(provenance) != SETUP_PROVENANCE_FIELDS
    ):
        fail(f"{label}: setup provenance has an unexpected field set")
    self_tests = provenance.get("generation_self_tests")
    if not isinstance(self_tests, list) or not self_tests:
        fail(f"{label}: setup provenance has no generation self-tests")
    canonical_self_tests: list[dict[str, object]] = []
    actual_cases: list[str] = []
    for index, self_test in enumerate(self_tests):
        if (
            not isinstance(self_test, dict)
            or set(self_test) != SETUP_GENERATION_SELF_TEST_FIELDS
        ):
            fail(
                f"{label}: setup provenance generation self-test {index} "
                "has an unexpected field set"
            )
        proof_case = self_test.get("proof_case")
        if not isinstance(proof_case, str):
            fail(
                f"{label}: setup provenance generation self-test {index} "
                "has an invalid case"
            )
        actual_cases.append(proof_case)
        if self_test.get("witness_format_version") != witness_version:
            fail(
                f"{label}/{proof_case}: setup provenance witness version "
                "does not match the profile"
            )
        require_sha256(
            label,
            (
                "setup_provenance.generation_self_tests"
                f"[{index}].witness_sha256_hex"
            ),
            self_test.get("witness_sha256_hex"),
        )
        if self_test.get("proved_and_verified_in_process") is not True:
            fail(
                f"{label}/{proof_case}: setup provenance generation "
                "self-test did not prove and verify in process"
            )
        canonical_self_tests.append(
            {
                field: self_test[field]
                for field in SETUP_GENERATION_SELF_TEST_FIELD_ORDER
            }
        )
    expected_cases = [proof_case for proof_case, _ in expected_proof_witnesses]
    if actual_cases != expected_cases:
        fail(
            f"{label}: setup provenance cases {actual_cases!r} != "
            f"canonical profile cases {expected_cases!r}"
        )
    for self_test, (_, witness_rel) in zip(
        self_tests, expected_proof_witnesses, strict=True
    ):
        if self_test["witness_sha256_hex"] != sha256(GNARK / witness_rel):
            fail(
                f"{label}/{self_test['proof_case']}: setup provenance does "
                "not bind the canonical witness"
            )

    expected_values = {
        "schema": "shieldd.gnark.setup_provenance.v2",
        "curve": "bls12-377",
        "circuit": label,
        "mode": SETUP_MODES[label],
        "sr1cs_sha256_hex": sha256(artifact_dir / f"{label}.sr1cs"),
        "proving_key_sha256_hex": sha256(
            artifact_dir / "proving_key.bin"
        ),
        "verifying_key_binary_sha256_hex": sha256(
            artifact_dir / "verifying_key.bin"
        ),
        "verifying_key_json_sha256_hex": sha256(
            artifact_dir / "verifying_key.json"
        ),
        "generation_self_tests": canonical_self_tests,
        "setup_transcript": "not_recorded",
        "toxic_waste_erasure": "not_mechanically_verified",
    }
    for field, expected in expected_values.items():
        if provenance.get(field) != expected:
            fail(
                f"{label}: setup provenance {field} "
                f"{provenance.get(field)!r} != {expected!r}"
            )
    canonical = json.dumps(expected_values, indent=2, allow_nan=False) + "\n"
    if raw != canonical:
        fail(
            f"{label}: setup provenance is not canonical "
            "two-space-indented JSON"
        )


def deployed_artifact_roster(label: str) -> frozenset[str]:
    return DEPLOYED_ARTIFACT_STATIC_FILES | {
        f"{label}.sr1cs",
        f"{label}-manifest.json",
    }


def validate_deployed_artifact_roster(label: str, artifact_dir: Path) -> None:
    expected = deployed_artifact_roster(label)
    try:
        actual = {entry.name for entry in artifact_dir.iterdir()}
    except OSError as error:
        fail(f"{label}: cannot enumerate deployed artifact directory: {error}")
    if actual != expected:
        fail(
            f"{label}: deployed artifact directory roster mismatch: "
            f"missing={sorted(expected - actual)!r} "
            f"extra={sorted(actual - expected)!r}"
        )


def validate_manifest_semantic_bindings(
    label: str, bindings: object, max_wire: int
) -> None:
    if not isinstance(bindings, list) or not bindings:
        fail(f"{label}: manifest.semantic_bindings must be a nonempty array")
    names: set[str] = set()
    for binding_index, binding in enumerate(bindings, start=1):
        if not isinstance(binding, dict) or set(binding) != {
            "name",
            "expressions",
        }:
            fail(
                f"{label}: semantic binding {binding_index} has an "
                "unexpected field set"
            )
        name = binding["name"]
        if not isinstance(name, str) or not name or name in names:
            fail(
                f"{label}: semantic binding {binding_index} has an invalid "
                "or duplicate name"
            )
        names.add(name)
        expressions = binding["expressions"]
        if not isinstance(expressions, list) or not expressions:
            fail(f"{label}: semantic binding {binding_index} has no expressions")
        for expression_index, expression in enumerate(expressions, start=1):
            if not isinstance(expression, dict) or set(expression) != {
                "constant",
                "terms",
            }:
                fail(
                    f"{label}: semantic binding {binding_index} expression "
                    f"{expression_index} has an unexpected field set"
                )
            constant = expression["constant"]
            terms = expression["terms"]
            if not isinstance(constant, str) or not constant.isdigit():
                fail(
                    f"{label}: semantic binding {binding_index} expression "
                    f"{expression_index} has an invalid constant"
                )
            if not isinstance(terms, list):
                fail(
                    f"{label}: semantic binding {binding_index} expression "
                    f"{expression_index} has invalid terms"
                )
            wire_ids: list[int] = []
            for term_index, term in enumerate(terms, start=1):
                if not isinstance(term, dict) or set(term) != {
                    "wire_id",
                    "coefficient",
                }:
                    fail(
                        f"{label}: semantic binding {binding_index} expression "
                        f"{expression_index} term {term_index} has an "
                        "unexpected field set"
                    )
                wire_id = term["wire_id"]
                coefficient = term["coefficient"]
                if (
                    not isinstance(wire_id, int)
                    or isinstance(wire_id, bool)
                    or wire_id < 1
                    or wire_id > max_wire
                    or not isinstance(coefficient, str)
                    or not coefficient.isdigit()
                ):
                    fail(
                        f"{label}: semantic binding {binding_index} expression "
                        f"{expression_index} term {term_index} is invalid"
                    )
                wire_ids.append(wire_id)
            if wire_ids != sorted(set(wire_ids)):
                fail(
                    f"{label}: semantic binding {binding_index} expression "
                    f"{expression_index} wire IDs are not sorted and unique"
                )


def parse_generated_go_registry(
    path: Path,
    variable: str,
    kind: str,
    *,
    expected_fields: set[str] | None = None,
    root: Path = ROOT,
) -> dict[str, tuple[str, int, int]]:
    """Read the literal family slice that the Go prover runtime iterates."""

    path = authenticated_path(
        path,
        f"{variable} generated Go registry",
        root=root,
        expected_kind="file",
    )
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
    data = load_json(path, label, authenticated_root=ROOT)
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

    transfer_data = load_json(
        TRANSFER_FAMILIES,
        "transfer family registry",
        authenticated_root=ROOT,
    )
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
    note_reshape_data = load_json(
        NOTE_RESHAPE_FAMILIES,
        "note reshape registry",
        authenticated_root=ROOT,
    )
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
        WITHDRAWAL_FAMILIES,
        "shielded ICS-20 withdrawal registry",
        authenticated_root=ROOT,
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
    profile_abi: dict[str, tuple[int, tuple[tuple[str, str], ...]]] = PROFILE_ABI,
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
    identity_labels = set(CERTIFICATION_IDENTITIES)
    if identity_labels != runtime_labels:
        missing = sorted(runtime_labels - identity_labels)
        extra = sorted(identity_labels - runtime_labels)
        fail(
            "runtime/code-owned certification identity mismatch: "
            f"missing={missing}, extra={extra}"
        )


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
        constraint_rows = require_nonnegative_int(
            label,
            f"witness_wires[{expected_id - 1}].constraint_rows",
            wire.get("constraint_rows"),
        )
        if constraint_rows == 0:
            fail(
                f"{label}: witness wire {expected_id} {path!r} "
                "influences no constraints"
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
    base: Path,
    expected_kind: str,
) -> Path:
    return authenticated_relative_path(
        label,
        field,
        value,
        base=base,
        expected_kind=expected_kind,
    )


def load_profiles() -> list[dict[str, object]]:
    data = load_json(CATALOG, "catalog", authenticated_root=ROOT)
    if not isinstance(data, dict) or set(data) != {"schema", "profiles"}:
        fail("catalog must contain exactly schema and profiles")
    if data.get("schema") != "shieldd.gnark.fv_profiles.v2":
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
        "proof_witnesses",
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
    identity = CERTIFICATION_IDENTITIES.get(label)
    if identity is None:
        fail(f"{label}: no code-owned certification identity")
    if profile["kind"] != identity.kind:
        fail(
            f"{label}: kind {profile['kind']!r} != code-owned certification "
            f"kind {identity.kind!r}"
        )
    profile_abi = PROFILE_ABI.get(label)
    if profile_abi is None:
        fail(f"{label}: runtime family has no registered FV witness ABI")
    expected_witness_version, expected_proof_witnesses = profile_abi
    if profile["witness_format_version"] != expected_witness_version:
        fail(
            f"{label}: witness format version "
            f"{profile['witness_format_version']!r} != registered "
            f"{expected_witness_version!r}"
        )
    proof_witnesses = profile["proof_witnesses"]
    if not isinstance(proof_witnesses, list) or not proof_witnesses:
        fail(f"{label}: proof_witnesses must be a nonempty array")
    actual_proof_witnesses: list[tuple[str, str]] = []
    seen_cases: set[str] = set()
    seen_paths: set[str] = set()
    for index, proof_witness in enumerate(proof_witnesses):
        if not isinstance(proof_witness, dict) or set(proof_witness) != {
            "case",
            "path",
        }:
            fail(
                f"{label}: proof_witnesses[{index}] must contain exactly "
                "case and path"
            )
        proof_case = proof_witness["case"]
        witness_path = proof_witness["path"]
        if (
            not isinstance(proof_case, str)
            or re.fullmatch(r"[a-z0-9_]+", proof_case) is None
        ):
            fail(
                f"{label}: proof_witnesses[{index}].case must contain only "
                "lowercase letters, digits, and underscores"
            )
        if proof_case in seen_cases:
            fail(f"{label}: duplicate proof witness case {proof_case!r}")
        if not isinstance(witness_path, str):
            fail(f"{label}: proof_witnesses[{index}].path must be a string")
        if witness_path in seen_paths:
            fail(f"{label}: duplicate proof witness path {witness_path!r}")
        seen_cases.add(proof_case)
        seen_paths.add(witness_path)
        actual_proof_witnesses.append((proof_case, witness_path))
    if tuple(actual_proof_witnesses) != expected_proof_witnesses:
        fail(
            f"{label}: proof witness matrix {tuple(actual_proof_witnesses)!r} "
            f"!= registered {expected_proof_witnesses!r}"
        )

    theorem_root = profile["theorem_root"]
    coverage_report = profile["coverage_report"]
    if profile["status"] == "certified":
        backend = load_certification_backends().get(label)
        if backend is None:
            fail(f"{label}: no exact certification backend is registered")
        expected_theorem_root = backend["theorem_root"]
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
            label,
            "coverage_report",
            coverage_report,
            base=ROOT,
            expected_kind="file",
        )
        if actual_coverage != expected_coverage:
            fail(f"{label}: coverage root must be {expected_coverage}")
    else:
        if theorem_root is not None or coverage_report is not None:
            fail(
                f"{label}: candidate profiles must have null theorem and coverage roots"
            )

    witness_paths = [
        (
            proof_case,
            profile_path(
                label,
                f"proof_witnesses[{index}].path",
                witness_path,
                base=GNARK,
                expected_kind="file",
            ),
        )
        for index, (proof_case, witness_path) in enumerate(
            actual_proof_witnesses
        )
    ]
    artifact_dir = profile_path(
        label,
        "artifact_dir",
        profile["artifact_dir"],
        base=GNARK,
        expected_kind="directory",
    )
    manifest_path = profile_path(
        label,
        "manifest",
        profile["manifest"],
        base=GNARK,
        expected_kind="file",
    )
    for proof_case, witness_path in witness_paths:
        witness_bytes = witness_path.read_bytes()
        validate_witness_header(
            f"{label}/{proof_case}",
            profile["kind"],
            profile["witness_format_version"],
            witness_bytes,
        )
    expected_artifact_dir = (GNARK / "artifacts" / label).resolve()
    if artifact_dir != expected_artifact_dir:
        fail(f"{label}: artifact_dir must be {expected_artifact_dir}")
    expected_manifest = artifact_dir / f"{label}-manifest.json"
    if manifest_path != expected_manifest:
        fail(f"{label}: manifest must be {expected_manifest}")

    validate_deployed_artifact_roster(label, artifact_dir)
    artifact_files = {
        name: authenticated_path(
            artifact_dir / name,
            f"{label} deployed artifact {name}",
            root=ROOT,
            expected_kind="file",
        )
        for name in (
            f"{label}.sr1cs",
            f"{label}-manifest.json",
            "setup_provenance.json",
            "circuit_metadata.json",
            "proving_key.bin",
            "verifying_key.bin",
            "verifying_key.json",
        )
    }
    sr1cs_path = artifact_files[f"{label}.sr1cs"]
    setup_provenance_path = artifact_files["setup_provenance.json"]
    setup_provenance = load_json(
        setup_provenance_path,
        f"{label} setup provenance",
        authenticated_root=ROOT,
    )
    validate_setup_provenance(
        label,
        setup_provenance,
        setup_provenance_path.read_text(encoding="utf-8"),
        expected_proof_witnesses,
        expected_witness_version,
        artifact_dir,
    )

    manifest = load_json(
        manifest_path,
        f"{label} manifest",
        authenticated_root=ROOT,
    )
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
    if (
        manifest_counts["nb_public_variables"]
        != identity.public_variable_count
    ):
        fail(
            f"{label}: manifest public-variable count "
            f"{manifest_counts['nb_public_variables']} != code-owned "
            f"{identity.public_variable_count}"
        )
    require_sha256(
        label, "manifest.sr1cs_sha256_hex", manifest.get("sr1cs_sha256_hex")
    )
    for field in ("segments", "semantic_bindings", "witness_wires"):
        if not isinstance(manifest.get(field), list):
            fail(f"{label}: manifest.{field} must be an array")
    validate_manifest_semantic_bindings(
        label,
        manifest["semantic_bindings"],
        manifest_counts["nb_public_variables"]
        + manifest_counts["nb_secret_variables"]
        + manifest_counts["nb_internal_variables"]
        - 1,
    )
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

    metadata_path = artifact_files["circuit_metadata.json"]
    metadata = load_json(
        metadata_path,
        f"{label} metadata",
        authenticated_root=ROOT,
    )
    if not isinstance(metadata, dict) or set(metadata) != METADATA_FIELDS:
        fail(f"{label}: circuit metadata has an unexpected field set")
    validate_canonical_metadata_json(
        metadata,
        metadata_path.read_text(encoding="utf-8"),
        label,
    )
    if metadata.get("schema") != "shieldd.gnark.circuit_metadata.v2":
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
        "sr1cs_sha256_hex",
        "setup_provenance_sha256_hex",
        "proving_key_sha256_hex",
        "verifying_key_binary_sha256_hex",
        "verifying_key_json_sha256_hex",
    ):
        require_sha256(label, f"metadata.{field}", metadata.get(field))
    metadata_bindings = {
        "schema": "shieldd.gnark.circuit_metadata.v2",
        "curve": "bls12-377",
        "circuit": label,
        "nb_constraints": manifest.get("nb_constraints"),
        "nb_public_variables": manifest.get("nb_public_variables"),
        "nb_secret_variables": manifest.get("nb_secret_variables"),
        "sr1cs_sha256_hex": sr1cs_hash,
        "setup_provenance_sha256_hex": sha256(
            setup_provenance_path
        ),
        "proving_key_size_bytes": artifact_files[
            "proving_key.bin"
        ].stat().st_size,
        "verifying_key_size_bytes": (
            artifact_files["verifying_key.bin"]
        ).stat().st_size,
        "proving_key_sha256_hex": sha256(
            artifact_files["proving_key.bin"]
        ),
        "verifying_key_binary_sha256_hex": sha256(
            artifact_files["verifying_key.bin"]
        ),
        "verifying_key_json_sha256_hex": sha256(
            artifact_files["verifying_key.json"]
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
            label,
            "coverage_report",
            coverage_report,
            base=ROOT,
            expected_kind="file",
        )
        report = load_json(
            report_path,
            f"{label} coverage report",
            authenticated_root=ROOT,
        )
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
        authenticated_path(
            theorem_path,
            f"{label} theorem module source",
            root=ROOT,
            expected_kind="file",
        )
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
    output = parser.add_mutually_exclusive_group()
    output.add_argument(
        "--emit-tsv",
        action="store_true",
        help=(
            "emit one row per profile; the witness column is the first "
            "canonical proof witness"
        ),
    )
    output.add_argument(
        "--emit-proof-witness-tsv",
        action="store_true",
        help="emit one row for every canonical proof-witness case",
    )
    output.add_argument(
        "--emit-lean-certification-checks",
        action="store_true",
        help="emit exact final-refinement theorem type checks for selected profiles",
    )
    parser.add_argument("--status", choices=("candidate", "certified"))
    parser.add_argument(
        "--allow-empty",
        action="store_true",
        help="allow a status filter to select no profiles",
    )
    parser.add_argument("labels", nargs="*")
    args = parser.parse_args()
    registry_checker = authenticated_path(
        GNARK / "check_gnark_family_registries.py",
        "cross-language family registry checker",
        root=ROOT,
        expected_kind="file",
    )
    registry_check = subprocess.run(
        [sys.executable, str(registry_checker)],
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
    validate_specification_completeness(profiles)
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
    certified_labels = {
        label
        for label, profile in by_label.items()
        if profile["status"] == "certified"
    }
    backend_labels = set(load_certification_backends())
    if certified_labels != backend_labels:
        missing = sorted(certified_labels - backend_labels)
        extra = sorted(backend_labels - certified_labels)
        fail(
            "certified catalog/backend registry mismatch: "
            f"missing={missing}, extra={extra}"
        )

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
        if not labels and not args.allow_empty:
            fail(f"no {args.status} profiles selected")

    if args.emit_lean_certification_checks:
        not_certified = [
            label
            for label in labels
            if by_label[label]["status"] != "certified"
        ]
        if not_certified:
            fail(
                "Lean certification checks require certified profiles: "
                + ", ".join(not_certified)
            )
        print(render_lean_certification_checks(labels), end="")
    elif args.emit_tsv:
        for label in labels:
            profile = by_label[label]
            proof_witnesses = profile["proof_witnesses"]
            assert isinstance(proof_witnesses, list)
            first_proof_witness = proof_witnesses[0]
            assert isinstance(first_proof_witness, dict)
            print(
                "\t".join(
                    (
                        str(profile["label"]),
                        str(profile["status"]),
                        str(profile["kind"]),
                        str(profile["n_in"]),
                        str(profile["n_out"]),
                        str(first_proof_witness["path"]),
                        str(profile["artifact_dir"]),
                        str(profile["manifest"]),
                        str(profile["witness_format_version"]),
                    )
                )
            )
    elif args.emit_proof_witness_tsv:
        for label in labels:
            profile = by_label[label]
            proof_witnesses = profile["proof_witnesses"]
            assert isinstance(proof_witnesses, list)
            for proof_witness in proof_witnesses:
                assert isinstance(proof_witness, dict)
                print(
                    "\t".join(
                        (
                            str(profile["label"]),
                            str(profile["status"]),
                            str(profile["kind"]),
                            str(profile["n_in"]),
                            str(profile["n_out"]),
                            str(proof_witness["case"]),
                            str(proof_witness["path"]),
                            str(profile["artifact_dir"]),
                            str(profile["manifest"]),
                            str(profile["witness_format_version"]),
                        )
                    )
                )
    else:
        print(f"FV profile catalog ok: {len(profiles)} profiles")


if __name__ == "__main__":
    main()
