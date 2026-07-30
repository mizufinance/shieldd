#!/usr/bin/env python3
"""Plan and record content-addressed SnarkPack Lean module attestations."""

from __future__ import annotations

import argparse
import hashlib
import importlib.util
import json
import os
import re
import sys
import tempfile
from dataclasses import dataclass
from pathlib import Path
from types import ModuleType
from typing import Iterable, Mapping, Sequence


ROOT = Path(__file__).resolve().parents[2]
SELF = Path("scripts/ci/snarkpack_lean_attestation.py")
IMPACT_SCRIPT = Path("scripts/ci/snarkpack_fv_impact.py")
LEAN_ROOT = Path("crates/crypto/proof-aggregation/formal/lean-ipp")
DEFAULT_MARKER_DIR = LEAN_ROOT / ".lake/snarkpack-ci-success-v6"
MODULE_RE = re.compile(
    r"^[A-Za-z_][A-Za-z0-9_']*(?:\.[A-Za-z_][A-Za-z0-9_']*)*$"
)
SHA256_RE = re.compile(r"^[0-9a-f]{64}$")

CONTROL_INPUTS = (
    Path(".github/workflows/formal.yml"),
    Path("ci/gates/snarkpack-formal.json"),
    Path("justfile"),
    Path("scripts/ci/gate-applicability.py"),
    Path("scripts/ci/run_with_annotation.py"),
    IMPACT_SCRIPT,
    SELF,
    Path("scripts/snarkpack-fv.sh"),
    LEAN_ROOT / "lake-manifest.json",
    LEAN_ROOT / "lakefile.lean",
    LEAN_ROOT / "lean-toolchain",
    LEAN_ROOT / "scripts/verification_manifest.py",
    Path(
        "crates/crypto/proof-aggregation/formal/snarkpack/"
        "verification-manifest.json"
    ),
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


def fingerprints(
    root: Path,
    selected: Sequence[str],
    *,
    control_inputs: Sequence[Path] = CONTROL_INPUTS,
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

    control_sha256 = _digest_files(
        root,
        domain="snarkpack-lean-controls-v6",
        paths=control_inputs,
    )
    by_module: dict[str, str] = {}
    for module in selected:
        dependency_sha256 = _digest_files(
            root,
            domain=f"snarkpack-lean-module-v6:{module}",
            paths=(modules[dependency] for dependency in closures[module]),
        )
        payload = json.dumps(
            {
                "control_sha256": control_sha256,
                "dependency_sha256": dependency_sha256,
                "module": module,
                "schema_version": 6,
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
            "schema_version": 6,
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


def plan(
    fingerprint_set: FingerprintSet,
    marker_dir: Path,
    *,
    exact_cache: bool,
    force_all: bool,
) -> AttestationPlan:
    pending: list[str] = []
    for module in fingerprint_set.selected:
        expected = fingerprint_set.fingerprints[module]
        actual = _read_marker(_marker_path(marker_dir, module))
        if exact_cache and actual != expected:
            detail = "missing" if actual is None else "mismatched"
            raise AttestationError(
                f"exact Lean cache has {detail} marker for {module}"
            )
        if force_all or actual != expected:
            pending.append(module)
    return AttestationPlan(fingerprint_set, tuple(pending))


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
    for command in ("fingerprint", "plan", "record"):
        child = subparsers.add_parser(command)
        child.add_argument("--modules-json", required=True)
        child.add_argument("--marker-dir", type=Path, default=DEFAULT_MARKER_DIR)
        if command in {"fingerprint", "plan"}:
            child.add_argument("--github-output", type=Path)
        if command == "plan":
            child.add_argument("--exact-cache", action="store_true")
            child.add_argument("--force-all", action="store_true")
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
            )
            outputs = {
                "pending": str(bool(result.pending)).lower(),
                "pending_modules": json.dumps(
                    list(result.pending), separators=(",", ":")
                ),
                "state_sha256": values.state_sha256,
            }
            if args.github_output is None:
                print(json.dumps(outputs, separators=(",", ":"), sort_keys=True))
            else:
                _write_github_output(args.github_output, outputs)
        else:
            record(values, args.marker_dir)
        return 0
    except AttestationError as error:
        print(f"SnarkPack Lean attestation failed: {error}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
