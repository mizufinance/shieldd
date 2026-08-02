#!/usr/bin/env python3
"""Publish and validate locally generated SnarkPack Lean evidence."""

from __future__ import annotations

import argparse
import hashlib
import importlib.util
import json
import os
import re
import sys
import tempfile
import tomllib
from dataclasses import dataclass
from pathlib import Path
from types import ModuleType
from typing import Callable, Iterable, Mapping, Sequence


ROOT = Path(__file__).resolve().parents[2]
SELF = Path("scripts/ci/snarkpack_lean_attestation.py")
IMPACT_SCRIPT = Path("scripts/ci/snarkpack_fv_impact.py")
LEAN_ROOT = Path("crates/crypto/proof-aggregation/formal/lean-ipp")
EVIDENCE_ROOT = Path(
    "crates/crypto/proof-aggregation/formal/snarkpack/lean-cache-v1"
)
DEFAULT_MARKER_DIR = EVIDENCE_ROOT / "modules"
DEFAULT_AUDIT_DIR = EVIDENCE_ROOT / "audits"
VERIFICATION_SCRIPT = LEAN_ROOT / "scripts/verification_manifest.py"
LEAN_ENVIRONMENT_INPUT = Path(
    "crates/crypto/proof-aggregation/formal/snarkpack/aeneas-toolchain.toml"
)
MODULE_RE = re.compile(
    r"^[A-Za-z_][A-Za-z0-9_']*(?:\.[A-Za-z_][A-Za-z0-9_']*)*$"
)
AUDIT_MODULE_RE = re.compile(r"^Ipp\.ProofAudit[A-Za-z0-9_]*$")
AUDIT_DIAGNOSTIC_RE = re.compile(
    r"^info: (?P<source>Ipp[\\/]ProofAudit[A-Za-z0-9_]*\.lean):"
    r"\d+:\d+: ",
    flags=re.MULTILINE,
)
AUDIT_JSON_DATA_RE = re.compile(
    r"^'[^'\r\n]+' "
    r"(?:depends on axioms: \[.*\]|does not depend on any axioms)$",
    flags=re.DOTALL,
)
SHA256_RE = re.compile(r"^[0-9a-f]{64}$")

BUILD_INPUTS = (
    LEAN_ROOT / "lake-manifest.json",
    LEAN_ROOT / "lakefile.lean",
    LEAN_ROOT / "lean-toolchain",
)


class AttestationError(RuntimeError):
    """A Lean success attestation could not be established safely."""


@dataclass(frozen=True)
class FingerprintSet:
    selected: tuple[str, ...]
    fingerprints: Mapping[str, str]
    state_sha256: str


@dataclass(frozen=True)
class AttestationPlan:
    fingerprints: FingerprintSet
    pending: tuple[str, ...]
    pending_audits: tuple[str, ...]


def _load_impact_module(root: Path) -> ModuleType:
    path = root / IMPACT_SCRIPT
    spec = importlib.util.spec_from_file_location(
        "_snarkpack_fv_impact_for_lean_attestation", path
    )
    if spec is None or spec.loader is None:
        raise AttestationError(f"cannot load Lean import planner: {path}")
    module = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = module
    try:
        spec.loader.exec_module(module)
    except (ImportError, OSError, RuntimeError, TypeError, ValueError) as error:
        raise AttestationError(
            f"cannot load Lean import planner: {error}"
        ) from error
    return module


def _load_verification_module(root: Path) -> ModuleType:
    path = root / VERIFICATION_SCRIPT
    spec = importlib.util.spec_from_file_location(
        "_snarkpack_verification_manifest_for_lean_attestation", path
    )
    if spec is None or spec.loader is None:
        raise AttestationError(f"cannot load Lean audit parser: {path}")
    module = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = module
    try:
        spec.loader.exec_module(module)
    except (ImportError, OSError, RuntimeError, TypeError, ValueError) as error:
        raise AttestationError(f"cannot load Lean audit parser: {error}") from error
    return module


def _selected_modules(value: str) -> tuple[str, ...]:
    try:
        decoded = json.loads(value)
    except json.JSONDecodeError as error:
        raise AttestationError(
            f"selected Lean modules are malformed JSON: {error}"
        ) from error
    if not isinstance(decoded, list) or not decoded:
        raise AttestationError(
            "selected Lean modules must be a non-empty JSON array"
        )
    selected: list[str] = []
    for index, module in enumerate(decoded):
        if (
            not isinstance(module, str)
            or MODULE_RE.fullmatch(module) is None
        ):
            raise AttestationError(
                f"selected Lean module {index} is invalid"
            )
        selected.append(module)
    if len(set(selected)) != len(selected):
        raise AttestationError("selected Lean modules contain duplicates")
    return tuple(selected)


def _read_required(path: Path, label: str) -> bytes:
    try:
        if path.is_symlink() or not path.is_file():
            raise AttestationError(f"required {label} is not a regular file: {path}")
        return path.read_bytes()
    except OSError as error:
        raise AttestationError(
            f"cannot read required {label} {path}: {error}"
        ) from error


def _dependency_closure(
    selected: Sequence[str],
    imports: Mapping[str, set[str]],
) -> Mapping[str, tuple[str, ...]]:
    states: dict[str, int] = {}
    stack: list[str] = []
    memo: dict[str, frozenset[str]] = {}

    def visit(module: str) -> frozenset[str]:
        state = states.get(module, 0)
        if state == 1:
            try:
                start = stack.index(module)
            except ValueError:
                start = 0
            cycle = " -> ".join((*stack[start:], module))
            raise AttestationError(
                f"cycle detected in Lean import graph: {cycle}"
            )
        if state == 2:
            return memo[module]
        states[module] = 1
        stack.append(module)
        closure = {module}
        for dependency in sorted(imports[module]):
            closure.update(visit(dependency))
        stack.pop()
        states[module] = 2
        memo[module] = frozenset(closure)
        return memo[module]

    return {
        module: tuple(sorted(visit(module)))
        for module in selected
    }


def _digest_files(
    root: Path,
    *,
    domain: str,
    paths: Iterable[Path],
) -> str:
    records: list[tuple[str, str]] = []
    for relative in sorted(set(paths), key=lambda path: path.as_posix()):
        if relative.is_absolute() or ".." in relative.parts:
            raise AttestationError(f"unsafe attestation input path: {relative}")
        content = _read_required(root / relative, "attestation input")
        records.append(
            (relative.as_posix(), hashlib.sha256(content).hexdigest())
        )
    if not records:
        raise AttestationError("attestation input set is empty")
    payload = json.dumps(
        {"domain": domain, "files": records},
        ensure_ascii=True,
        separators=(",", ":"),
        sort_keys=True,
    ).encode("ascii")
    return hashlib.sha256(payload).hexdigest()


def _lean_environment_digest(root: Path, path: Path) -> str:
    if path.is_absolute() or ".." in path.parts:
        raise AttestationError(f"unsafe Lean environment path: {path}")
    content = _read_required(root / path, "Lean environment contract")
    try:
        payload = tomllib.loads(content.decode("utf-8"))
    except (UnicodeError, tomllib.TOMLDecodeError) as error:
        raise AttestationError(
            f"invalid Lean environment contract {path}: {error}"
        ) from error
    toolchain = payload.get("toolchain")
    if not isinstance(toolchain, dict):
        raise AttestationError(
            f"Lean environment contract has no [toolchain] table: {path}"
        )
    lean = toolchain.get("lean")
    if not isinstance(lean, str) or not lean:
        raise AttestationError(
            f"Lean environment contract has invalid toolchain.lean: {path}"
        )
    projected = json.dumps(
        {
            "lean": lean,
            "schema_version": 2,
        },
        ensure_ascii=True,
        separators=(",", ":"),
        sort_keys=True,
    ).encode("ascii")
    return hashlib.sha256(projected).hexdigest()


def fingerprints(
    root: Path,
    selected: Sequence[str],
    *,
    build_inputs: Sequence[Path] = BUILD_INPUTS,
    environment_input: Path = LEAN_ENVIRONMENT_INPUT,
) -> FingerprintSet:
    if not selected:
        raise AttestationError("selected Lean modules must be non-empty")
    if len(set(selected)) != len(selected):
        raise AttestationError("selected Lean modules contain duplicates")
    for module in selected:
        if MODULE_RE.fullmatch(module) is None:
            raise AttestationError(f"invalid selected Lean module: {module!r}")

    impact = _load_impact_module(root)
    try:
        modules, imports = impact.lean_import_graph(root)
    except impact.ImpactError as error:
        raise AttestationError(f"invalid Lean import graph: {error}") from error
    unknown = sorted(set(selected) - set(modules))
    if unknown:
        raise AttestationError(
            "unknown selected Lean module(s): " + ", ".join(unknown)
        )
    closures = _dependency_closure(selected, imports)

    build_sha256 = _digest_files(
        root,
        domain="snarkpack-lean-build-inputs-v8",
        paths=build_inputs,
    )
    environment_sha256 = _lean_environment_digest(root, environment_input)
    by_module: dict[str, str] = {}
    for module in selected:
        dependency_sha256 = _digest_files(
            root,
            domain=f"snarkpack-lean-module-v8:{module}",
            paths=(modules[dependency] for dependency in closures[module]),
        )
        payload = json.dumps(
            {
                "build_sha256": build_sha256,
                "dependency_sha256": dependency_sha256,
                "environment_sha256": environment_sha256,
                "module": module,
                "schema_version": 8,
            },
            ensure_ascii=True,
            separators=(",", ":"),
            sort_keys=True,
        ).encode("ascii")
        by_module[module] = hashlib.sha256(payload).hexdigest()

    state_payload = json.dumps(
        {
            "modules": [
                [module, by_module[module]]
                for module in selected
            ],
            "schema_version": 8,
        },
        ensure_ascii=True,
        separators=(",", ":"),
        sort_keys=True,
    ).encode("ascii")
    return FingerprintSet(
        selected=tuple(selected),
        fingerprints=by_module,
        state_sha256=hashlib.sha256(state_payload).hexdigest(),
    )


def _marker_path(marker_dir: Path, module: str) -> Path:
    if MODULE_RE.fullmatch(module) is None:
        raise AttestationError(f"invalid marker module: {module!r}")
    return marker_dir / f"{module}.sha256"


def _audit_log_path(audit_dir: Path, module: str) -> Path:
    if AUDIT_MODULE_RE.fullmatch(module) is None:
        raise AttestationError(f"invalid audit module: {module!r}")
    return audit_dir / f"{module}.log"


def _audit_metadata_path(audit_dir: Path, module: str) -> Path:
    if AUDIT_MODULE_RE.fullmatch(module) is None:
        raise AttestationError(f"invalid audit module: {module!r}")
    return audit_dir / f"{module}.json"


def _read_marker(path: Path) -> str | None:
    if not path.exists():
        return None
    if path.is_symlink() or not path.is_file():
        raise AttestationError(f"Lean attestation marker is not a regular file: {path}")
    try:
        raw = path.read_text(encoding="ascii")
    except (OSError, UnicodeError) as error:
        raise AttestationError(
            f"cannot read Lean attestation marker {path}: {error}"
        ) from error
    value = raw.removesuffix("\n")
    if not SHA256_RE.fullmatch(value):
        raise AttestationError(f"malformed Lean attestation marker: {path}")
    return value


def _atomic_write(path: Path, content: bytes) -> None:
    try:
        path.parent.mkdir(parents=True, exist_ok=True)
    except OSError as error:
        raise AttestationError(
            f"cannot create Lean attestation directory {path.parent}: {error}"
        ) from error
    if path.parent.is_symlink() or not path.parent.is_dir():
        raise AttestationError(
            f"Lean attestation directory is not a regular directory: {path.parent}"
        )
    temporary: Path | None = None
    try:
        descriptor, name = tempfile.mkstemp(
            prefix=f".{path.name}.",
            suffix=".tmp",
            dir=path.parent,
        )
        temporary = Path(name)
        with os.fdopen(descriptor, "wb") as output:
            output.write(content)
            output.flush()
            os.fsync(output.fileno())
        os.replace(temporary, path)
        temporary = None
    except OSError as error:
        raise AttestationError(
            f"cannot atomically record Lean attestation {path}: {error}"
        ) from error
    finally:
        if temporary is not None:
            try:
                temporary.unlink(missing_ok=True)
            except OSError:
                pass


def _module_audit_log(text: str, module: str) -> str:
    expected_source = f"{module.replace('.', '/')}.lean"
    matches = list(AUDIT_DIAGNOSTIC_RE.finditer(text))
    chunks: list[str] = []
    for index, match in enumerate(matches):
        source = match.group("source").replace("\\", "/")
        if source != expected_source:
            continue
        end = matches[index + 1].start() if index + 1 < len(matches) else len(text)
        chunks.append(text[match.start():end].rstrip() + "\n")
    for line_text in text.lstrip("\ufeff").splitlines():
        try:
            diagnostic = json.loads(line_text)
        except (json.JSONDecodeError, TypeError):
            continue
        if not isinstance(diagnostic, dict):
            continue
        source = diagnostic.get("fileName")
        position = diagnostic.get("pos")
        data = diagnostic.get("data")
        if (
            diagnostic.get("severity") != "information"
            or not isinstance(source, str)
            or source.replace("\\", "/") != expected_source
            or not isinstance(position, dict)
            or not isinstance(data, str)
            or AUDIT_JSON_DATA_RE.fullmatch(data) is None
        ):
            continue
        source_line = position.get("line")
        source_column = position.get("column")
        if (
            not isinstance(source_line, int)
            or isinstance(source_line, bool)
            or not isinstance(source_column, int)
            or isinstance(source_column, bool)
        ):
            continue
        chunks.append(line_text.rstrip() + "\n")
    if not chunks:
        raise AttestationError(
            f"Lean build log contains no audit diagnostics for {module}"
        )
    return "".join(chunks)


def _audit_metadata(
    audit_dir: Path,
    module: str,
) -> Mapping[str, object] | None:
    path = _audit_metadata_path(audit_dir, module)
    if not path.exists():
        return None
    if path.is_symlink() or not path.is_file():
        raise AttestationError(
            f"Lean audit metadata is not a regular file: {path}"
        )
    try:
        value = json.loads(path.read_text(encoding="utf-8"))
    except (OSError, UnicodeError, json.JSONDecodeError) as error:
        raise AttestationError(f"cannot read Lean audit metadata {path}: {error}") from error
    if not isinstance(value, dict):
        raise AttestationError(f"Lean audit metadata is not an object: {path}")
    expected_keys = {
        "fingerprint",
        "log_sha256",
        "module",
        "schema_version",
    }
    if set(value) != expected_keys:
        raise AttestationError(
            f"Lean audit metadata fields differ from schema for {module}"
        )
    return value


def _read_current_audit_log(
    audit_dir: Path,
    module: str,
    fingerprint: str,
) -> str | None:
    metadata = _audit_metadata(audit_dir, module)
    if metadata is None:
        return None
    expected_metadata = {
        "fingerprint": fingerprint,
        "module": module,
        "schema_version": 1,
    }
    for key, expected in expected_metadata.items():
        if metadata.get(key) != expected:
            return None
    log_sha256 = metadata.get("log_sha256")
    if not isinstance(log_sha256, str) or SHA256_RE.fullmatch(log_sha256) is None:
        raise AttestationError(
            f"Lean audit metadata has invalid log_sha256 for {module}"
        )
    path = _audit_log_path(audit_dir, module)
    if not path.exists():
        return None
    content = _read_required(path, "Lean audit log")
    if hashlib.sha256(content).hexdigest() != log_sha256:
        raise AttestationError(f"Lean audit log digest mismatch for {module}")
    try:
        return content.decode("utf-8")
    except UnicodeError as error:
        raise AttestationError(
            f"Lean audit log is not UTF-8 for {module}: {error}"
        ) from error


def plan(
    fingerprint_set: FingerprintSet,
    marker_dir: Path,
    *,
    exact_cache: bool,
    force_all: bool,
    audit_dir: Path = DEFAULT_AUDIT_DIR,
) -> AttestationPlan:
    pending: list[str] = []
    pending_audits: list[str] = []
    for module in fingerprint_set.selected:
        expected = fingerprint_set.fingerprints[module]
        actual = _read_marker(_marker_path(marker_dir, module))
        proof_current = actual == expected
        is_audit = AUDIT_MODULE_RE.fullmatch(module) is not None
        audit_current = (
            _read_current_audit_log(audit_dir, module, expected) is not None
            if is_audit
            else True
        )
        if exact_cache and (not proof_current or not audit_current):
            if actual is None:
                detail = "missing marker"
            elif actual != expected:
                detail = "mismatched marker"
            else:
                detail = "missing or stale audit evidence"
            raise AttestationError(
                f"committed Lean cache has {detail} for {module}; "
                "run `just snarkpack-lean-cache` locally and commit the result"
            )
        if force_all or not proof_current:
            pending.append(module)
        if is_audit and (force_all or not audit_current):
            pending_audits.append(module)
    return AttestationPlan(
        fingerprint_set,
        tuple(pending),
        tuple(pending_audits),
    )


def record(
    fingerprint_set: FingerprintSet,
    marker_dir: Path,
) -> None:
    try:
        marker_dir.mkdir(parents=True, exist_ok=True)
    except OSError as error:
        raise AttestationError(
            f"cannot create Lean attestation directory {marker_dir}: {error}"
        ) from error
    if marker_dir.is_symlink() or not marker_dir.is_dir():
        raise AttestationError(
            f"Lean attestation directory is not a regular directory: {marker_dir}"
        )
    for module in fingerprint_set.selected:
        destination = _marker_path(marker_dir, module)
        temporary: Path | None = None
        try:
            descriptor, name = tempfile.mkstemp(
                prefix=f".{module}.",
                suffix=".tmp",
                dir=marker_dir,
                text=True,
            )
            temporary = Path(name)
            with os.fdopen(descriptor, "w", encoding="ascii", newline="\n") as output:
                output.write(f"{fingerprint_set.fingerprints[module]}\n")
                output.flush()
                os.fsync(output.fileno())
            os.replace(temporary, destination)
            temporary = None
        except OSError as error:
            raise AttestationError(
                f"cannot atomically record Lean attestation for {module}: {error}"
            ) from error
        finally:
            if temporary is not None:
                try:
                    temporary.unlink(missing_ok=True)
                except OSError:
                    pass


AuditValidator = Callable[[str, str], None]


def _manifest_audit_validator(root: Path) -> AuditValidator:
    verification = _load_verification_module(root)
    try:
        manifest = verification.load_manifest()
        _, allowed_axioms = verification.validate_audit_contract(
            manifest,
            lean_root=root / LEAN_ROOT,
        )
    except (OSError, RuntimeError, TypeError, ValueError) as error:
        raise AttestationError(f"cannot validate Lean audit contract: {error}") from error

    def validate(module: str, text: str) -> None:
        try:
            diagnostics = verification.selected_manifest_audit_diagnostics(
                manifest,
                [module],
                lean_root=root / LEAN_ROOT,
            )
            verification.audit_log_summary(
                text,
                expected_diagnostics=diagnostics,
                allowed_axioms=allowed_axioms,
            )
        except (OSError, RuntimeError, TypeError, ValueError) as error:
            raise AttestationError(
                f"cached Lean audit rejected for {module}: {error}"
            ) from error

    return validate


def record_audit_evidence(
    fingerprint_set: FingerprintSet,
    audit_dir: Path,
    build_log: Path,
    *,
    validator: AuditValidator,
) -> None:
    audit_modules = tuple(
        module
        for module in fingerprint_set.selected
        if AUDIT_MODULE_RE.fullmatch(module)
    )
    if not audit_modules:
        return
    try:
        text = _read_required(build_log, "Lean build log").decode("utf-8")
    except UnicodeError as error:
        raise AttestationError(f"Lean build log is not UTF-8: {error}") from error
    prepared: list[tuple[str, bytes, bytes]] = []
    for module in audit_modules:
        module_log = _module_audit_log(text, module)
        validator(module, module_log)
        content = module_log.encode("utf-8")
        metadata = json.dumps(
            {
                "fingerprint": fingerprint_set.fingerprints[module],
                "log_sha256": hashlib.sha256(content).hexdigest(),
                "module": module,
                "schema_version": 1,
            },
            ensure_ascii=True,
            separators=(",", ":"),
            sort_keys=True,
        ).encode("ascii") + b"\n"
        prepared.append((module, content, metadata))
    for module, content, metadata in prepared:
        _atomic_write(_audit_log_path(audit_dir, module), content)
        _atomic_write(_audit_metadata_path(audit_dir, module), metadata)


def record_audit_evidence_from_dir(
    fingerprint_set: FingerprintSet,
    audit_dir: Path,
    input_dir: Path,
    *,
    validator: AuditValidator,
) -> None:
    audit_modules = tuple(
        module
        for module in fingerprint_set.selected
        if AUDIT_MODULE_RE.fullmatch(module)
    )
    prepared: list[tuple[str, bytes, bytes]] = []
    for module in audit_modules:
        source = input_dir / f"{module}.log"
        try:
            text = _read_required(source, "refreshed Lean audit log").decode("utf-8")
        except UnicodeError as error:
            raise AttestationError(
                f"refreshed Lean audit log is not UTF-8 for {module}: {error}"
            ) from error
        module_log = _module_audit_log(text, module)
        validator(module, module_log)
        content = module_log.encode("utf-8")
        metadata = json.dumps(
            {
                "fingerprint": fingerprint_set.fingerprints[module],
                "log_sha256": hashlib.sha256(content).hexdigest(),
                "module": module,
                "schema_version": 1,
            },
            ensure_ascii=True,
            separators=(",", ":"),
            sort_keys=True,
        ).encode("ascii") + b"\n"
        prepared.append((module, content, metadata))
    for module, content, metadata in prepared:
        _atomic_write(_audit_log_path(audit_dir, module), content)
        _atomic_write(_audit_metadata_path(audit_dir, module), metadata)


def compare_audit_evidence_from_dir(
    fingerprint_set: FingerprintSet,
    audit_dir: Path,
    input_dir: Path,
    *,
    validator: AuditValidator,
) -> int:
    """Require fresh diagnostics to equal committed source-bound evidence."""
    checked = 0
    for module in fingerprint_set.selected:
        if AUDIT_MODULE_RE.fullmatch(module) is None:
            continue
        expected = _read_current_audit_log(
            audit_dir, module, fingerprint_set.fingerprints[module]
        )
        if expected is None:
            raise AttestationError(
                f"missing or stale cached Lean audit evidence for {module}"
            )
        source = input_dir / f"{module}.log"
        try:
            fresh_text = _read_required(
                source, "fresh Lean audit log"
            ).decode("utf-8")
        except UnicodeError as error:
            raise AttestationError(
                f"fresh Lean audit log is not UTF-8 for {module}: {error}"
            ) from error
        fresh = _module_audit_log(fresh_text, module)
        validator(module, expected)
        validator(module, fresh)
        if fresh != expected:
            expected_sha256 = hashlib.sha256(
                expected.encode("utf-8")
            ).hexdigest()
            fresh_sha256 = hashlib.sha256(
                fresh.encode("utf-8")
            ).hexdigest()
            raise AttestationError(
                f"fresh Lean audit differs from committed evidence for {module}; "
                f"expected {expected_sha256}, got {fresh_sha256}"
            )
        checked += 1
    return checked


def validate_audit_evidence(
    fingerprint_set: FingerprintSet,
    audit_dir: Path,
    *,
    validator: AuditValidator,
) -> int:
    checked = 0
    for module in fingerprint_set.selected:
        if AUDIT_MODULE_RE.fullmatch(module) is None:
            continue
        text = _read_current_audit_log(
            audit_dir, module, fingerprint_set.fingerprints[module]
        )
        if text is None:
            raise AttestationError(
                f"missing or stale cached Lean audit evidence for {module}"
            )
        validator(module, text)
        checked += 1
    return checked


def _write_github_output(path: Path, values: Mapping[str, str]) -> None:
    for label, value in values.items():
        if "\n" in value or "\r" in value:
            raise AttestationError(f"GitHub output {label} contains a newline")
    try:
        with path.open("a", encoding="utf-8", newline="\n") as output:
            for label, value in values.items():
                output.write(f"{label}={value}\n")
    except OSError as error:
        raise AttestationError(f"cannot write GitHub output {path}: {error}") from error


def parser() -> argparse.ArgumentParser:
    result = argparse.ArgumentParser(description=__doc__)
    subparsers = result.add_subparsers(dest="command", required=True)
    for command in (
        "fingerprint",
        "plan",
        "record",
        "record-audit",
        "compare-audit",
        "validate-audit",
    ):
        child = subparsers.add_parser(command)
        child.add_argument("--modules-json", required=True)
        child.add_argument("--marker-dir", type=Path, default=DEFAULT_MARKER_DIR)
        child.add_argument("--audit-dir", type=Path, default=DEFAULT_AUDIT_DIR)
        if command in {"fingerprint", "plan"}:
            child.add_argument("--github-output", type=Path)
        if command == "plan":
            child.add_argument("--exact-cache", action="store_true")
            child.add_argument("--force-all", action="store_true")
        if command in {"record-audit", "compare-audit"}:
            child.add_argument("--input-dir", type=Path, required=True)
    return result


def main(argv: Sequence[str] | None = None) -> int:
    args = parser().parse_args(argv)
    try:
        selected = _selected_modules(args.modules_json)
        values = fingerprints(ROOT, selected)
        if args.command == "fingerprint":
            outputs = {"state_sha256": values.state_sha256}
            if args.github_output is None:
                print(json.dumps(outputs, separators=(",", ":"), sort_keys=True))
            else:
                _write_github_output(args.github_output, outputs)
        elif args.command == "plan":
            result = plan(
                values,
                args.marker_dir,
                exact_cache=args.exact_cache,
                force_all=args.force_all,
                audit_dir=args.audit_dir,
            )
            outputs = {
                "pending": str(bool(result.pending)).lower(),
                "pending_modules": json.dumps(
                    list(result.pending), separators=(",", ":")
                ),
                "pending_audits": str(bool(result.pending_audits)).lower(),
                "pending_audit_modules": json.dumps(
                    list(result.pending_audits), separators=(",", ":")
                ),
                "state_sha256": values.state_sha256,
            }
            if args.github_output is None:
                print(json.dumps(outputs, separators=(",", ":"), sort_keys=True))
            else:
                _write_github_output(args.github_output, outputs)
        elif args.command == "record":
            record(values, args.marker_dir)
        elif args.command == "record-audit":
            record_audit_evidence_from_dir(
                values,
                args.audit_dir,
                args.input_dir,
                validator=_manifest_audit_validator(ROOT),
            )
        elif args.command == "compare-audit":
            checked = compare_audit_evidence_from_dir(
                values,
                args.audit_dir,
                args.input_dir,
                validator=_manifest_audit_validator(ROOT),
            )
            print(
                f"{checked} fresh Lean audit module(s) match committed evidence"
            )
        else:
            checked = validate_audit_evidence(
                values,
                args.audit_dir,
                validator=_manifest_audit_validator(ROOT),
            )
            print(f"{checked} cached Lean audit module(s) revalidated")
        return 0
    except AttestationError as error:
        print(f"SnarkPack Lean attestation failed: {error}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
