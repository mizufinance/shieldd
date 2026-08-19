#!/usr/bin/env python3
"""Render stamped whole-circuit evidence for every certified circuit."""

from __future__ import annotations

import argparse
import ast
import hashlib
import json
import re
import stat
import sys
from pathlib import Path
from typing import Any

from fv_certification import (
    CERTIFICATION_IDENTITIES,
    backend_identity_errors,
)
from fv_strict_json import StrictJsonError, loads as loads_strict_json
from fv_specification_completeness import (
    SpecificationCompletenessError,
    load_and_validate as load_specification_completeness,
    validate_profile_certification_join,
)


ROOT = Path(__file__).resolve().parents[1]
FORMAL = ROOT / "crates/core/component/shielded-pool/formal"
GNARK = ROOT / "tools/gnark"
LEAN = GNARK / "lean"
BACKEND_REGISTRY = GNARK / "fv_certification_backends.json"
sys.path.insert(0, str(LEAN / "gen"))
from gen_template_ownership import validate_committed_ownership
from lean_affected_modules import local_imports, module_sources
from write_if_changed import write_if_changed

PROFILE_CATALOG = GNARK / "fv_profiles.json"
PROFILE_FIELDS = {
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
BACKEND_FIELDS = {
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
METADATA_FIELDS = {
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
}
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
NOTE_RESHAPE_GENERATOR_ROOTS = (
    "gen_note_reshape_family.py",
    "gen_note_reshape_1x8_commitments.py",
    "gen_note_reshape_padded_spends.py",
    "gen_note_reshape_padded_commitments.py",
    "gen_note_reshape_dtk_seating.py",
    "gen_note_reshape_canonical_address.py",
    "gen_note_reshape_balance_seating.py",
    "gen_note_reshape_1x8_statement_seating.py",
)
NOTE_RESHAPE_GENERATOR_ASSETS = (
    LEAN / "gen/templates/NoteReshapeCanonicalAddress.lean.tmpl",
)


def load_strict_json(
    path: Path,
    label: str,
    *,
    canonical: bool = False,
    root: Path = ROOT,
) -> Any:
    path = canonical_source_paths([path], root)[0]

    try:
        text = path.read_text(encoding="utf-8")
        value = loads_strict_json(text, label)
    except (OSError, UnicodeError, StrictJsonError) as error:
        raise ValueError(f"{label}: cannot load strict JSON: {error}") from error
    if canonical:
        expected = json.dumps(value, indent=2, allow_nan=False) + "\n"
        if text != expected:
            raise ValueError(f"{label}: not canonical two-space JSON")
    return value


def load_profile_catalog(
    path: Path = PROFILE_CATALOG,
    root: Path = ROOT,
) -> dict[str, dict[str, Any]]:
    data = load_strict_json(
        path, "FV profile catalog", canonical=True, root=root
    )
    if (
        not isinstance(data, dict)
        or set(data) != {"schema", "profiles"}
        or data.get("schema") != "shieldd.gnark.fv_profiles.v2"
    ):
        raise ValueError("invalid FV profile catalog")
    entries = data.get("profiles")
    if not isinstance(entries, list) or not entries:
        raise ValueError("FV profile catalog must contain profiles")

    profiles: dict[str, dict[str, Any]] = {}
    for index, profile in enumerate(entries, start=1):
        if not isinstance(profile, dict) or set(profile) != PROFILE_FIELDS:
            raise ValueError(f"FV profile {index} has an unexpected field set")
        label = profile.get("label")
        kind = profile.get("kind")
        status = profile.get("status")
        if not isinstance(label, str) or not label or label in profiles:
            raise ValueError(f"FV profile {index} has an invalid or duplicate label")
        if not isinstance(kind, str) or not kind:
            raise ValueError(f"{label}: invalid FV profile kind")
        if status not in {"candidate", "certified"}:
            raise ValueError(f"{label}: invalid FV profile status")
        proof_witnesses = profile.get("proof_witnesses")
        if not isinstance(proof_witnesses, list) or not proof_witnesses:
            raise ValueError(f"{label}: invalid proof-witness matrix")
        seen_cases: set[str] = set()
        seen_paths: set[str] = set()
        for proof_index, proof_witness in enumerate(proof_witnesses, start=1):
            if (
                not isinstance(proof_witness, dict)
                or set(proof_witness) != {"case", "path"}
            ):
                raise ValueError(
                    f"{label}: proof witness {proof_index} has an "
                    "unexpected field set"
                )
            proof_case = proof_witness.get("case")
            witness_path = proof_witness.get("path")
            if (
                not isinstance(proof_case, str)
                or not proof_case
                or proof_case in seen_cases
            ):
                raise ValueError(
                    f"{label}: proof witness {proof_index} has an invalid "
                    "or duplicate case"
                )
            if (
                not isinstance(witness_path, str)
                or not witness_path
                or witness_path in seen_paths
            ):
                raise ValueError(
                    f"{label}: proof witness {proof_index} has an invalid "
                    "or duplicate path"
                )
            seen_cases.add(proof_case)
            seen_paths.add(witness_path)
        theorem_root = profile.get("theorem_root")
        coverage_report = profile.get("coverage_report")
        if status == "candidate":
            if theorem_root is not None or coverage_report is not None:
                raise ValueError(
                    f"{label}: candidate profile publishes certification roots"
                )
        elif (
            not isinstance(theorem_root, str)
            or not theorem_root
            or not isinstance(coverage_report, str)
            or not coverage_report
        ):
            raise ValueError(f"{label}: certified profile has incomplete roots")
        profiles[label] = profile
    return profiles


def load_backend_registry(
    profiles: dict[str, dict[str, Any]],
    path: Path = BACKEND_REGISTRY,
    root: Path = ROOT,
) -> dict[str, dict[str, Any]]:
    data = load_strict_json(
        path,
        "certification backend registry",
        canonical=True,
        root=root,
    )
    if (
        not isinstance(data, dict)
        or set(data) != {"schema", "backends"}
        or data.get("schema")
        != "shieldd.gnark.fv_certification_backends.v1"
    ):
        raise ValueError("invalid certified-circuit evidence backend registry")
    entries = data.get("backends")
    if not isinstance(entries, list) or not entries:
        raise ValueError("certification backend registry must contain backends")

    backends: dict[str, dict[str, Any]] = {}
    for index, backend in enumerate(entries, start=1):
        if not isinstance(backend, dict) or set(backend) != BACKEND_FIELDS:
            raise ValueError(
                f"certification backend {index} has an unexpected field set"
            )
        label = backend.get("label")
        if not isinstance(label, str) or not label or label in backends:
            raise ValueError(
                f"certification backend {index} has an invalid or duplicate label"
            )
        if (
            backend.get("evidence_backend") != "certified_circuit"
            or backend.get("benchmark_backend") != "certified_statement_hash"
        ):
            raise ValueError(f"{label}: unsupported certification backend")
        identity_errors = backend_identity_errors(backend)
        if identity_errors:
            raise ValueError(
                f"{label}: certification backend does not match its code-owned "
                f"identity: {'; '.join(identity_errors)}"
            )
        backends[label] = backend

    certified = {
        label for label, profile in profiles.items()
        if profile["status"] == "certified"
    }
    if set(backends) != certified:
        raise ValueError(
            "certification backend/profile mismatch: "
            f"missing={sorted(certified - set(backends))}, "
            f"unexpected={sorted(set(backends) - certified)}"
        )
    for label, backend in backends.items():
        profile = profiles[label]
        identity = CERTIFICATION_IDENTITIES.get(label)
        if identity is None:
            raise ValueError(f"{label}: no code-owned certification identity")
        if (
            profile["kind"] != identity.kind
            or profile["theorem_root"] != backend["theorem_root"]
        ):
            raise ValueError(
                f"{label}: certified profile does not match its backend identity"
            )
    return backends


OWNERSHIP = GNARK / "artifacts/proof-template-ownership.json"


def sha256(path: Path) -> str:
    path = canonical_source_paths([path], ROOT)[0]
    return hashlib.sha256(path.read_bytes()).hexdigest()


def is_lower_sha256(value: object) -> bool:
    return (
        isinstance(value, str)
        and len(value) == 64
        and all(character in "0123456789abcdef" for character in value)
    )


def validate_setup_provenance(
    circuit: str, artifact_dir: Path
) -> dict[str, Any]:
    path = artifact_dir / "setup_provenance.json"
    provenance = load_strict_json(path, f"{circuit} setup provenance")
    if (
        not isinstance(provenance, dict)
        or set(provenance) != SETUP_PROVENANCE_FIELDS
        or provenance.get("schema") != "shieldd.gnark.setup_provenance.v2"
        or provenance.get("curve") != "bls12-377"
        or provenance.get("circuit") != circuit
        or provenance.get("mode") != SETUP_MODES[circuit]
        or provenance.get("setup_transcript") != "not_recorded"
        or provenance.get("toxic_waste_erasure")
        != "not_mechanically_verified"
    ):
        raise ValueError(f"{circuit}: invalid setup provenance")
    bindings = {
        "sr1cs_sha256_hex": sha256(artifact_dir / f"{circuit}.sr1cs"),
        "proving_key_sha256_hex": sha256(artifact_dir / "proving_key.bin"),
        "verifying_key_binary_sha256_hex": sha256(
            artifact_dir / "verifying_key.bin"
        ),
        "verifying_key_json_sha256_hex": sha256(
            artifact_dir / "verifying_key.json"
        ),
    }
    for field, expected in bindings.items():
        if provenance.get(field) != expected:
            raise ValueError(f"{circuit}: setup provenance {field} is stale")
    self_tests = provenance.get("generation_self_tests")
    profile = PROFILE_BY_LABEL[circuit]
    expected_witnesses = profile["proof_witnesses"]
    if (
        not isinstance(self_tests, list)
        or not isinstance(expected_witnesses, list)
        or len(self_tests) != len(expected_witnesses)
    ):
        raise ValueError(
            f"{circuit}: incomplete setup generation self-test matrix"
        )
    canonical_self_tests: list[dict[str, Any]] = []
    for index, (self_test, witness) in enumerate(
        zip(self_tests, expected_witnesses, strict=True)
    ):
        if (
            not isinstance(self_test, dict)
            or set(self_test) != SETUP_GENERATION_SELF_TEST_FIELDS
            or not isinstance(witness, dict)
            or self_test.get("proof_case") != witness.get("case")
            or self_test.get("witness_format_version")
            != profile["witness_format_version"]
            or self_test.get("witness_sha256_hex")
            != sha256(GNARK / str(witness.get("path")))
            or self_test.get("proved_and_verified_in_process") is not True
        ):
            raise ValueError(
                f"{circuit}: invalid setup generation self-test {index}"
            )
        canonical_self_tests.append(
            {
                field: self_test[field]
                for field in SETUP_GENERATION_SELF_TEST_FIELD_ORDER
            }
        )
    canonical_provenance = {
        field: (
            canonical_self_tests
            if field == "generation_self_tests"
            else provenance[field]
        )
        for field in SETUP_PROVENANCE_FIELD_ORDER
    }
    canonical = (
        json.dumps(canonical_provenance, indent=2, allow_nan=False) + "\n"
    )
    if path.read_text(encoding="utf-8") != canonical:
        raise ValueError(f"{circuit}: setup provenance is not canonical JSON")
    return provenance


def template_semantic_closure(
    circuit: str,
    path: Path = OWNERSHIP,
    root: Path = ROOT,
) -> str:
    path = canonical_source_paths([path], root)[0]
    ownership = validate_committed_ownership(path)
    if (
        not isinstance(ownership, dict)
        or set(ownership)
        != {
            "schema",
            "registry_schema",
            "templates",
            "shared_files",
            "families",
        }
        or ownership.get("schema")
        != "shieldd.gnark.proof_template_ownership.v1"
        or ownership.get("registry_schema")
        != "shieldd.gnark.proof_template_registry.v1"
    ):
        raise ValueError("invalid proof-template ownership schema")

    templates = ownership["templates"]
    shared_files = ownership["shared_files"]
    families = ownership["families"]
    if (
        not isinstance(templates, list)
        or not templates
        or not isinstance(shared_files, list)
        or not shared_files
        or not isinstance(families, list)
        or not families
    ):
        raise ValueError("proof-template ownership has an empty roster")

    def validate_file(entry: object, label: str) -> tuple[str, str]:
        if not isinstance(entry, dict) or set(entry) != {
            "path",
            "sha256_hex",
        }:
            raise ValueError(f"{label}: invalid ownership file entry")
        relative = entry["path"]
        digest = entry["sha256_hex"]
        if (
            not isinstance(relative, str)
            or not relative
            or not is_lower_sha256(digest)
        ):
            raise ValueError(f"{label}: invalid ownership file binding")
        return relative, digest

    template_consumers: dict[str, tuple[str, ...]] = {}
    template_ids: list[str] = []
    for index, entry in enumerate(templates):
        label = f"proof-template ownership templates[{index}]"
        if not isinstance(entry, dict) or set(entry) != {
            "proof_template_id",
            "consumers",
            "files",
            "template_files_sha256_hex",
        }:
            raise ValueError(f"{label}: unexpected field set")
        template_id = entry["proof_template_id"]
        consumers = entry["consumers"]
        files = entry["files"]
        if (
            not isinstance(template_id, str)
            or re.fullmatch(r"[a-z0-9_.]+@[0-9a-f]{64}", template_id)
            is None
            or template_id in template_consumers
            or not isinstance(consumers, list)
            or not consumers
            or any(
                not isinstance(consumer, str) or not consumer
                for consumer in consumers
            )
            or consumers != sorted(set(consumers))
            or not isinstance(files, list)
            or not files
            or not is_lower_sha256(entry["template_files_sha256_hex"])
        ):
            raise ValueError(f"{label}: invalid template binding")
        file_bindings = [
            validate_file(file, f"{label}.files[{file_index}]")
            for file_index, file in enumerate(files)
        ]
        if [binding[0] for binding in file_bindings] != sorted(
            {binding[0] for binding in file_bindings}
        ):
            raise ValueError(f"{label}: file paths are not sorted and unique")
        template_ids.append(template_id)
        template_consumers[template_id] = tuple(consumers)
    if template_ids != sorted(template_ids):
        raise ValueError("proof-template ownership templates are not sorted")

    shared_bindings = [
        validate_file(entry, f"proof-template ownership shared_files[{index}]")
        for index, entry in enumerate(shared_files)
    ]
    if len({binding[0] for binding in shared_bindings}) != len(
        shared_bindings
    ):
        raise ValueError("proof-template ownership shared files are not unique")

    family_templates: dict[str, tuple[str, ...]] = {}
    family_closures: dict[str, str] = {}
    family_order: list[str] = []
    for index, entry in enumerate(families):
        label = f"proof-template ownership families[{index}]"
        if not isinstance(entry, dict) or set(entry) != {
            "circuit",
            "proof_template_ids",
            "semantic_closure_sha256_hex",
        }:
            raise ValueError(f"{label}: unexpected field set")
        family = entry["circuit"]
        ids = entry["proof_template_ids"]
        closure = entry["semantic_closure_sha256_hex"]
        if (
            not isinstance(family, str)
            or not family
            or family in family_templates
            or not isinstance(ids, list)
            or not ids
            or any(
                not isinstance(template_id, str)
                for template_id in ids
            )
            or ids != sorted(set(ids))
            or not is_lower_sha256(closure)
        ):
            raise ValueError(f"{label}: invalid family binding")
        unknown_ids = sorted(set(ids) - set(template_consumers))
        if unknown_ids:
            raise ValueError(
                f"{label}: unknown proof-template IDs {unknown_ids}"
            )
        family_order.append(family)
        family_templates[family] = tuple(ids)
        family_closures[family] = closure
    if family_order != sorted(family_order):
        raise ValueError("proof-template ownership families are not sorted")
    if set(family_templates) != set(FAMILIES):
        raise ValueError(
            "proof-template ownership family roster mismatch: "
            f"missing={sorted(set(FAMILIES)-set(family_templates))}, "
            f"unexpected={sorted(set(family_templates)-set(FAMILIES))}"
        )

    for template_id, consumers in template_consumers.items():
        expected_consumers = tuple(
            sorted(
                family
                for family, ids in family_templates.items()
                if template_id in ids
            )
        )
        if consumers != expected_consumers:
            raise ValueError(
                f"{template_id}: ownership consumers {consumers} "
                f"!= family roster {expected_consumers}"
            )
    try:
        return family_closures[circuit]
    except KeyError as error:
        raise ValueError(f"missing ownership closure for {circuit}") from error


def canonical_source_paths(
    paths: list[Path], root: Path = ROOT
) -> list[Path]:
    unresolved_root = Path(root)
    if unresolved_root.is_symlink():
        raise ValueError(f"symlinked source closure root: {unresolved_root}")
    resolved_root = unresolved_root.resolve()
    if not resolved_root.is_dir():
        raise ValueError(f"missing source closure root: {unresolved_root}")

    canonical: list[Path] = []
    logical_paths: set[Path] = set()
    physical_paths: dict[tuple[int, int], Path] = {}
    for raw_path in paths:
        unresolved = Path(raw_path)
        try:
            relative = unresolved.relative_to(unresolved_root)
        except ValueError as error:
            raise ValueError(
                f"source closure path is outside its root: {unresolved}"
            ) from error
        if relative in logical_paths:
            raise ValueError(f"duplicate source closure path: {relative}")

        component = unresolved_root
        for part in relative.parts:
            component /= part
            if component.is_symlink():
                raise ValueError(
                    f"symlinked source closure path component: {relative}"
                )
        path = unresolved.resolve()
        if not path.is_relative_to(resolved_root):
            raise ValueError(f"source closure path escapes root: {relative}")
        if not path.is_file():
            raise ValueError(f"missing source closure file: {relative}")

        stat = path.stat()
        if stat.st_nlink != 1:
            raise ValueError(
                f"physical source closure alias count {stat.st_nlink}: "
                f"{relative}"
            )
        physical = (stat.st_dev, stat.st_ino)
        prior_relative = physical_paths.get(physical)
        if prior_relative is not None:
            raise ValueError(
                "physical source closure alias: "
                f"{prior_relative} and {relative}"
            )
        logical_paths.add(relative)
        physical_paths[physical] = relative
        canonical.append(path)
    return sorted(canonical)


PROFILE_BY_LABEL = load_profile_catalog()
BACKEND_BY_LABEL = load_backend_registry(PROFILE_BY_LABEL)
FAMILIES = {
    label: backend["contract_module"]
    for label, backend in BACKEND_BY_LABEL.items()
}


def aggregate(paths: list[Path], root: Path = ROOT) -> str:
    digest = hashlib.sha256()
    resolved_root = Path(root).resolve()
    for path in canonical_source_paths(paths, root):
        digest.update(str(path.relative_to(resolved_root)).encode())
        digest.update(b"\0")
        digest.update(path.read_bytes())
        digest.update(b"\0")
    return digest.hexdigest()


def soundness_source_paths(circuit: str) -> list[Path]:
    sources = module_sources(LEAN)
    known = set(sources)
    identity = CERTIFICATION_IDENTITIES[circuit]
    backend = BACKEND_BY_LABEL[circuit]
    roots = {
        identity.theorem_root,
        identity.security_root,
        *backend["build_modules"],
        *(
            target["root_module"]
            for target in backend["axiom_targets"]
        ),
    }
    for root in roots:
        if root not in sources:
            raise ValueError(f"missing soundness root: {root}")
    closure: set[str] = set()
    pending = list(roots)
    while pending:
        module = pending.pop()
        if module in closure:
            continue
        closure.add(module)
        pending.extend(local_imports(sources[module], known))
    return sorted(sources[module] for module in closure)


def soundness_source_closure(circuit: str) -> str:
    return aggregate(soundness_source_paths(circuit))


def profile_kind(circuit: str) -> str:
    return PROFILE_BY_LABEL[circuit]["kind"]


def final_theorem(circuit: str) -> str:
    return CERTIFICATION_IDENTITIES[circuit].final_declaration


def artifact_metadata(circuit: str, artifact_dir: Path) -> dict[str, Any]:
    validate_setup_provenance(circuit, artifact_dir)
    path = artifact_dir / "circuit_metadata.json"
    metadata = load_strict_json(path, f"{circuit} circuit metadata")
    if (
        not isinstance(metadata, dict)
        or set(metadata) != METADATA_FIELDS
        or metadata.get("schema") != "shieldd.gnark.circuit_metadata.v2"
        or metadata.get("curve") != "bls12-377"
        or metadata.get("circuit") != circuit
    ):
        raise ValueError(f"{circuit}: invalid circuit metadata")
    bindings = {
        "sr1cs_sha256_hex": sha256(artifact_dir / f"{circuit}.sr1cs"),
        "setup_provenance_sha256_hex": sha256(
            artifact_dir / "setup_provenance.json"
        ),
        "proving_key_sha256_hex": sha256(artifact_dir / "proving_key.bin"),
        "verifying_key_binary_sha256_hex": sha256(
            artifact_dir / "verifying_key.bin"
        ),
        "verifying_key_json_sha256_hex": sha256(
            artifact_dir / "verifying_key.json"
        ),
    }
    for field, expected in bindings.items():
        if metadata.get(field) != expected:
            raise ValueError(f"{circuit}: metadata {field} is stale")
    return metadata


def external_assumptions(kind: str) -> list[str]:
    if kind == "note_reshape":
        return [
            "ExternalAuthorization: every fixed-slot randomized key is nonidentity before its signature verifies against the transaction effect hash; because the transaction contains a shielded proof, its aggregate binding key is nonidentity and its binding signature verifies against the final transaction auth hash.",
            "TransactionProjection: the fixed family shape, action anchor, asset-policy anchor, user-status anchor, sole public-input/body projection, and deployed proof family are accepted.",
            "LiveState: the SCT anchor is live, the asset-policy and mutable user-status roots are exact and current, both registries are authorized and well formed, every proof-bound nullifier is fresh, and all nullifiers are unique across the enclosing transaction.",
            "ActionEffects: nullifiers are inserted atomically and every proof-bound output is persisted, including fixed dummy/private slots.",
            "TransactionAtomicity: the enclosing state delta commits or rolls back every transaction effect atomically.",
        ]
    if kind == "transfer":
        return [
            "ExternalAuthorization: both fixed-slot randomized keys are nonidentity before their signatures verify against the transaction effect hash; because the transaction contains a shielded proof, its aggregate binding key is nonidentity and its binding signature verifies against the final transaction auth hash.",
            "TransactionProjection: fixed shape, action anchor, public-input/body projection, empty serialized input compliance ciphertexts, canonical output compliance encoding, and proof family are accepted.",
            "LiveState: the SCT anchor is live, the asset-policy and mutable user-status roots are exact and current, both registries are authorized and well formed, the timestamp is fresh, both distinct nullifiers are fresh, and all nullifiers are transaction-wide unique.",
            "ActionEffects: nullifier insertion is internally atomic and both proof-bound outputs are persisted without dummy/private suppression.",
            "TransactionAtomicity: the enclosing StateDelta commits or rolls back all transaction effects atomically.",
        ]
    if kind == "shielded_ics20_withdrawal":
        return [
            "ExternalAuthorization: both fixed-slot randomized keys are nonidentity before their signatures verify against the transaction effect hash; because the transaction contains a shielded proof, its aggregate binding key is nonidentity and its binding signature verifies against the final transaction auth hash.",
            "TransactionProjection: fixed shape, action anchor, withdrawal-body effect-hash limbs, public-input/body projection, and proof family are accepted.",
            "LiveState: the SCT anchor is live, the asset-policy and mutable user-status roots are exact and current, both registries are authorized and well formed, the timestamp is fresh, both distinct nullifiers are fresh, and all nullifiers are transaction-wide unique.",
            "WithdrawalPolicy: withdrawals are enabled and the non-zero payload, stateful packet context, payload projection, and empty serialized input compliance ciphertext are valid.",
            "ActionEffects: nullifier insertion is internally atomic, the proof-bound change output is persisted, and the withdrawal transition succeeds.",
            "TransactionAtomicity: the enclosing StateDelta commits or rolls back proof-bound and withdrawal effects all-or-nothing.",
        ]
    raise ValueError(f"unsupported certified profile kind: {kind}")


def local_python_source_closure(
    roots: list[Path], generator_dir: Path | None = None
) -> list[Path]:
    """Return roots plus every repository-local Python module they import."""

    if generator_dir is None:
        generator_dir = LEAN / "gen"
    unresolved_generator_dir = Path(generator_dir)
    generator_dir = unresolved_generator_dir.resolve()
    local_paths = canonical_source_paths(
        list(unresolved_generator_dir.glob("*.py")),
        unresolved_generator_dir,
    )
    local_modules = {
        path.stem: path
        for path in local_paths
    }
    pending = canonical_source_paths(roots, unresolved_generator_dir)
    closure: set[Path] = set()
    while pending:
        path = pending.pop()
        if path in closure:
            continue
        if not path.is_file() or path.parent != generator_dir:
            raise ValueError(f"invalid local generator source root: {path}")
        try:
            tree = ast.parse(path.read_text(encoding="utf-8"), filename=str(path))
        except (OSError, UnicodeError, SyntaxError) as error:
            raise ValueError(f"cannot parse generator source {path}: {error}") from error
        closure.add(path)
        imported: set[str] = set()
        for node in ast.walk(tree):
            if isinstance(node, ast.Import):
                imported.update(alias.name.split(".", 1)[0] for alias in node.names)
            elif (
                isinstance(node, ast.ImportFrom)
                and node.level == 0
                and node.module is not None
            ):
                imported.add(node.module.split(".", 1)[0])
        pending.extend(
            local_modules[module]
            for module in sorted(imported)
            if module in local_modules
        )
    return sorted(closure)


def generator_source_paths(backend: dict[str, object]) -> list[Path]:
    generation_backend = backend["generation_backend"]
    generator_dir = LEAN / "gen"
    if generation_backend == "note_reshape":
        roots = [
            generator_dir / filename
            for filename in NOTE_RESHAPE_GENERATOR_ROOTS
        ]
    elif generation_backend == "deployed_family":
        roots = [generator_dir / "gen_deployed_family.py"]
    else:
        raise ValueError(f"unsupported generation backend: {generation_backend}")
    paths = local_python_source_closure(roots)
    if generation_backend == "note_reshape":
        balance_templates = sorted(
            (
                LEAN / "ShielddGnarkFormal/Deployed"
            ).glob("NoteReshape1x8Balance*.lean")
        )
        balance_templates.extend(
            [
                LEAN
                / "ShielddGnarkFormal/Deployed/NoteReshape8x1Balance.lean",
            ]
        )
        assets = [*NOTE_RESHAPE_GENERATOR_ASSETS, *balance_templates]
        for path in assets:
            if not path.is_file() or path.is_symlink():
                raise ValueError(
                    f"missing or symlinked NoteReshape generator asset: {path}"
                )
        paths.extend(assets)
    return canonical_source_paths(paths)


def generator_source_closure(backend: dict[str, object]) -> str:
    return aggregate(generator_source_paths(backend))


def template_generator_source_paths(
    generator_dir: Path | None = None,
) -> list[Path]:
    if generator_dir is None:
        generator_dir = LEAN / "gen"
    roots = sorted(generator_dir.glob("gen_*semantics*.py"))
    roots.extend(sorted(generator_dir.glob("gen_*representatives.py")))
    if not roots:
        raise ValueError("no template-semantics generators found")
    return local_python_source_closure(roots, generator_dir)


def template_generator_source_closure() -> str:
    return aggregate(template_generator_source_paths())


def render(circuit: str, specification_status: dict[str, object]) -> str:
    setup_assumption_ids = specification_status[
        "setup_trust_assumption_ids"
    ]
    if not isinstance(setup_assumption_ids, list) or not all(
        isinstance(assumption_id, str)
        for assumption_id in setup_assumption_ids
    ):
        raise ValueError(
            f"{circuit}: invalid specification setup trust assumptions"
        )
    backend = BACKEND_BY_LABEL[circuit]
    identity = CERTIFICATION_IDENTITIES[circuit]
    module = FAMILIES[circuit]
    soundness_module = backend["theorem_root"]
    theorem = final_theorem(circuit)
    kind = profile_kind(circuit)
    artifact_dir = GNARK / "artifacts" / circuit
    contract_dir = LEAN / "ShielddGnarkFormal/Deployed/Contracts" / module
    metadata_path = artifact_dir / "circuit_metadata.json"
    metadata = artifact_metadata(circuit, artifact_dir)
    fields = {
        "whole_circuit_sr1cs_sha256": sha256(artifact_dir / f"{circuit}.sr1cs"),
        "manifest_sha256": sha256(artifact_dir / f"{circuit}-manifest.json"),
        "coverage_report_sha256": sha256(FORMAL / f"{circuit}-constraint-coverage-report.json"),
        "coverage_manifest_sha256": sha256(FORMAL / f"{circuit}-coverage-manifest.json"),
        "coverage_ir_sha256": sha256(FORMAL / f"{circuit}-deployed-slice-ir.json"),
        "circuit_metadata_sha256": sha256(metadata_path),
        "setup_provenance_sha256": sha256(
            artifact_dir / "setup_provenance.json"
        ),
        "metadata_sr1cs_sha256_hex": metadata["sr1cs_sha256_hex"],
        "metadata_setup_provenance_sha256_hex": metadata[
            "setup_provenance_sha256_hex"
        ],
        "proving_key_sha256_hex": metadata["proving_key_sha256_hex"],
        "verifying_key_binary_sha256_hex": metadata[
            "verifying_key_binary_sha256_hex"
        ],
        "verifying_key_json_sha256_hex": metadata[
            "verifying_key_json_sha256_hex"
        ],
        "nb_constraints": str(metadata["nb_constraints"]),
        "deployed_circuit_facts_source_sha256": sha256(contract_dir / "CircuitFacts.lean"),
        "deployed_capstone_source_sha256": sha256(contract_dir / "Capstone.lean"),
        "deployed_role_bindings_source_sha256": sha256(contract_dir / "RoleBindings.lean"),
        "deployed_semantic_bindings_source_sha256": sha256(contract_dir / "SemanticBindings.lean"),
        "family_generator_source_closure_sha256": generator_source_closure(backend),
        "template_semantics_generator_source_closure_sha256": template_generator_source_closure(),
        "proof_template_ownership_sha256": sha256(OWNERSHIP),
        "template_semantics_closure_sha256": template_semantic_closure(circuit),
        "soundness_source_closure_sha256": soundness_source_closure(circuit),
        "template_inventory_sha256": sha256(GNARK / "artifacts/certified-template-inventory.json"),
        "fv_profile_catalog_sha256": sha256(GNARK / "fv_profiles.json"),
        "certification_backend_registry_sha256": sha256(BACKEND_REGISTRY),
        "certification_identity_source_sha256": sha256(
            ROOT / "scripts/fv_certification.py"
        ),
        "specification_predicate_matrix_sha256": sha256(
            FORMAL / "fv-specification-predicate-matrix.json"
        ),
        "native_predicate_census_sha256": sha256(
            FORMAL / "native-circuit-predicate-census.json"
        ),
        "specification_claim_set": str(specification_status["claim_set"]),
        "specification_computed_status": str(
            specification_status["computed_status"]
        ),
        "specification_relation_evidence": str(
            specification_status["relation_evidence"]
        ),
        "specification_setup_trust_status": str(
            specification_status["setup_trust_status"]
        ),
        "specification_setup_trust_assumption_ids": ",".join(
            setup_assumption_ids
        ),
        "certified_protocol_semantics_pin_sha256": sha256(
            LEAN / "certified-protocol-semantics.sha256"
        ),
        "wiring_certificate_sha256": sha256(FORMAL / f"{circuit}-wiring-cert.json"),
        "constraint_coverage_script_sha256": sha256(ROOT / "scripts/check-constraint-coverage.sh"),
        "root_source_sha256": sha256(LEAN / "ShielddGnarkFormal.lean"),
        "lakefile_sha256": sha256(LEAN / "lakefile.lean"),
        "lake_manifest_sha256": sha256(LEAN / "lake-manifest.json"),
        "lean_toolchain_sha256": sha256(LEAN / "lean-toolchain"),
    }
    semantic_seams = contract_dir / "SemanticSeams.lean"
    if semantic_seams.is_file():
        fields["deployed_semantic_seams_source_sha256"] = sha256(semantic_seams)
        fields["deployed_semantic_seams_closure_sha256"] = aggregate(
            list(contract_dir.glob("SemanticSeam*.lean"))
        )
    seating = backend["lt_seating_artifact"]
    if seating is not None:
        fields["lt_seating_sha256"] = sha256(ROOT / seating)
    lines = [
        f"artifact: {circuit}-whole-circuit-lean",
        "scope: whole-circuit",
        f"target: {circuit} deployed relation to protocol validity",
        "engine: Lean 4 / normalized-relation deployed-template proofs",
        f"theorem: {theorem}",
        f"root_module: {soundness_module}",
        f"security_theorem: {identity.security_declaration}",
        f"security_root_module: {identity.security_root}",
        f"exact_circuit_facts_theorem: Shieldd.GnarkFormal.Deployed.Contracts.{module}.{circuit}_circuitFacts",
        "model: exact deployed rows imply typed circuit facts; handwritten refinement maps only those facts into the independent protocol relation",
        "axiom_baseline: propext, Quot.sound",
        "named_external_assumptions:",
    ]
    lines.extend(f"- {assumption}" for assumption in external_assumptions(kind))
    lines.extend([
        "decaf_relation_status: exact-extracted-gadgets-composed",
        "known_limitations:",
        "- The named external checks are explicit premises of the final theorem and are not claimed to be enforced by R1CS.",
        "- The current SR1CS pins the new per-asset status rows, but the status-specific protocol refinement remains candidate work and is not claimed by this theorem.",
        "- Binding one public field to the complete native statement relies on the documented Poseidon public-input-hash collision-resistance assumption; Withdrawal payload projection additionally relies on the documented BLAKE2b-512 effect-hash assumption.",
        "- The theorem proves the modeled cryptographic relations; protocol interpretation, gnark compilation, and Groth16 remain in the documented trust boundary.",
        "- setup_provenance.json records fresh-versus-reused setup and the setup command's per-case in-process generation self-tests. It does not retain proof bytes or proof digests; fresh schema-v4 release receipts are per-run operational prove/verify evidence and are not signed portable attestations. No setup transcript is recorded and toxic-waste erasure is not mechanically verified.",
        "",
    ])
    lines.extend(f"{key}: {value}" for key, value in fields.items())
    return "\n".join(lines) + "\n"


def expected_managed_artifacts(
    circuits: set[str], formal: Path = FORMAL
) -> set[Path]:
    expected: set[Path] = set()
    for circuit in circuits:
        artifact = formal / f"{circuit}-whole-circuit-lean-artifact.txt"
        expected.add(artifact)
        expected.add(Path(f"{artifact}.sha256"))
    return expected


def audit_managed_artifact_path(
    path: Path,
    formal: Path = FORMAL,
    *,
    allow_missing: bool,
) -> Path:
    """Authenticate one managed output path without following aliases."""

    unresolved_root = Path(formal)
    if unresolved_root.is_symlink():
        raise ValueError(f"symlinked managed artifact root: {unresolved_root}")
    try:
        root_metadata = unresolved_root.lstat()
    except OSError as error:
        raise ValueError(
            f"cannot inspect managed artifact root {unresolved_root}: {error}"
        ) from error
    if not stat.S_ISDIR(root_metadata.st_mode):
        raise ValueError(
            f"managed artifact root is not a directory: {unresolved_root}"
        )
    resolved_root = unresolved_root.resolve()
    unresolved = Path(path)
    try:
        relative = unresolved.relative_to(unresolved_root)
    except ValueError as error:
        raise ValueError(
            f"managed artifact path is outside its root: {unresolved}"
        ) from error
    if any(part in {"", ".", ".."} for part in relative.parts):
        raise ValueError(f"managed artifact path is not normalized: {relative}")

    current = unresolved_root
    for index, part in enumerate(relative.parts):
        current /= part
        try:
            metadata = current.lstat()
        except FileNotFoundError:
            if allow_missing and index + 1 == len(relative.parts):
                return current
            raise ValueError(f"missing managed artifact path: {relative}")
        except OSError as error:
            raise ValueError(
                f"cannot inspect managed artifact path {relative}: {error}"
            ) from error
        if stat.S_ISLNK(metadata.st_mode):
            raise ValueError(
                f"symlinked managed artifact path component: {relative}"
            )
        if index + 1 < len(relative.parts):
            if not stat.S_ISDIR(metadata.st_mode):
                raise ValueError(
                    f"non-directory managed artifact path component: {relative}"
                )
            continue
        if not stat.S_ISREG(metadata.st_mode):
            raise ValueError(
                f"managed artifact is not a regular file: {relative}"
            )
        if metadata.st_nlink != 1:
            raise ValueError(
                "physical managed artifact alias count "
                f"{metadata.st_nlink}: {relative}"
            )

    resolved = current.resolve(strict=True)
    if not resolved.is_relative_to(resolved_root):
        raise ValueError(f"managed artifact path escapes root: {relative}")
    return resolved


def managed_artifacts(formal: Path = FORMAL) -> set[Path]:
    paths = set(formal.glob("*-whole-circuit-lean-artifact.txt")) | set(
        formal.glob("*-whole-circuit-lean-artifact.txt.sha256")
    )
    for path in paths:
        audit_managed_artifact_path(
            path,
            formal,
            allow_missing=False,
        )
    return paths


def unexpected_managed_artifacts(
    circuits: set[str], formal: Path = FORMAL
) -> list[Path]:
    return sorted(
        managed_artifacts(formal) - expected_managed_artifacts(circuits, formal)
    )


def validate_expected_managed_artifacts(
    circuits: set[str],
    formal: Path = FORMAL,
    *,
    allow_missing: bool = False,
) -> None:
    """Require every managed output to be one ordinary, unaliased file."""

    for path in sorted(expected_managed_artifacts(circuits, formal)):
        audit_managed_artifact_path(
            path,
            formal,
            allow_missing=allow_missing,
        )


def specification_manifests() -> dict[str, Path]:
    unresolved: dict[Path, str] = {}
    for label, profile in PROFILE_BY_LABEL.items():
        raw = profile.get("manifest")
        if not isinstance(raw, str) or not raw:
            raise ValueError(f"{label}: invalid FV profile manifest path")
        path = GNARK / raw
        if path in unresolved:
            raise ValueError(
                f"{label}: FV profile manifest duplicates "
                f"{unresolved[path]}"
            )
        unresolved[path] = label
    canonical = canonical_source_paths(list(unresolved), GNARK)
    labels_by_canonical = {
        path.resolve(): label for path, label in unresolved.items()
    }
    manifests = {
        labels_by_canonical[path]: path for path in canonical
    }
    return manifests


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    try:
        specification_status_rows = load_specification_completeness(
            manifests=specification_manifests(),
            require_relation_evidence=True,
        )
        validate_profile_certification_join(
            list(PROFILE_BY_LABEL.values()), specification_status_rows
        )
        specification_statuses = {
            str(status["profile"]): status
            for status in specification_status_rows
        }
    except (SpecificationCompletenessError, ValueError) as error:
        raise SystemExit(f"specification completeness failed: {error}") from error
    try:
        unexpected = unexpected_managed_artifacts(set(FAMILIES))
        validate_expected_managed_artifacts(
            set(FAMILIES),
            allow_missing=not args.check,
        )
    except ValueError as error:
        raise SystemExit(
            f"invalid certified family artifact ownership: {error}"
        ) from error
    if args.check and unexpected:
        rendered = ", ".join(str(path) for path in unexpected)
        raise SystemExit(f"unexpected certified family artifacts: {rendered}")
    if not args.check:
        for path in unexpected:
            path.unlink()
            print(f"removed {path}")

    for circuit in FAMILIES:
        path = FORMAL / f"{circuit}-whole-circuit-lean-artifact.txt"
        sidecar = Path(f"{path}.sha256")
        contents = render(circuit, specification_statuses[circuit])
        digest = hashlib.sha256(contents.encode()).hexdigest() + "\n"
        if args.check:
            if not path.is_file():
                raise SystemExit(f"missing family artifact: {path}")
            if path.read_text() != contents:
                raise SystemExit(f"stale family artifact: {path}")
            if not sidecar.is_file() or sidecar.read_text() != digest:
                raise SystemExit(f"stale family artifact sidecar: {sidecar}")
        else:
            if write_if_changed(path, contents):
                print(f"wrote {path}")
            if write_if_changed(sidecar, digest):
                print(f"wrote {sidecar}")


if __name__ == "__main__":
    main()
