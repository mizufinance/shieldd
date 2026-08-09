#!/usr/bin/env python3
"""Fingerprint the exact tracked inputs of one heavy SnarkPack CI lane."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
import sys
import tomllib
from dataclasses import dataclass
from pathlib import Path
from typing import Any, Iterable, Mapping, Sequence


ROOT = Path(__file__).resolve().parents[2]
GATE_SCRIPT = Path("scripts/ci/gate-applicability.py")
SELF = Path("scripts/ci/snarkpack_lane_fingerprint.py")
LEAN_ROOT = Path("crates/crypto/proof-aggregation/formal/lean-ipp")
EXTRACTION_MANIFEST = Path(
    "crates/crypto/proof-aggregation/formal/snarkpack/"
    "lean-extraction-manifest.json"
)
EXTRACTION_RUNTIME = LEAN_ROOT / "Ipp/Extracted/AeneasRuntime.lean"
# Cargo package roots contain the formal campaign, but Rust compilation and
# test binaries do not consume it. Lanes re-add the exact formal parsers and
# extraction manifests they execute through LANE_CONTROLS below.
PROOF_ONLY_PACKAGE_PATHS = (
    Path("crates/crypto/proof-aggregation/formal"),
)

COMMON_CONTROLS = (
    Path(".github/workflows/formal.yml"),
    Path(".github/actions/setup-nix-rust"),
    Path(".cargo/config.toml"),
    Path(".gitattributes"),
    Path(".gitmodules"),
    Path("rust-toolchain.toml"),
    Path("flake.lock"),
    Path("flake.nix"),
    Path("justfile"),
    Path("scripts/ci/run_with_annotation.py"),
    GATE_SCRIPT,
    SELF,
)

LANE_PACKAGES = {
    "parity": ("ark-ip-proofs",),
    "runtime": (
        "shieldd-sdk-proof-aggregation",
        "shieldd-sdk-proof-aggregation-fuzz",
        "shieldd-sdk-proof-aggregation-reference",
        "shieldd-sdk-app",
    ),
}

LANE_CONTROLS = {
    "parity": (
        Path("scripts/snarkpack-fv.sh"),
        Path(
            "deployments/containerfiles/"
            "Dockerfile.snarkpack-fv-toolchain"
        ),
        EXTRACTION_MANIFEST,
        Path(
            "crates/crypto/proof-aggregation/formal/snarkpack/"
            "aeneas-toolchain.toml"
        ),
        Path(
            "crates/crypto/proof-aggregation/formal/lean-ipp/scripts/"
            "extractions.py"
        ),
        Path(
            "crates/crypto/proof-aggregation/formal/lean-ipp/scripts/"
            "normalize_aeneas_lean.py"
        ),
        Path(
            "crates/crypto/proof-aggregation/formal/lean-ipp/scripts/"
            "verification_manifest.py"
        ),
        Path(
            "crates/crypto/proof-aggregation/formal/lean-ipp/"
            "lake-manifest.json"
        ),
        Path(
            "crates/crypto/proof-aggregation/formal/lean-ipp/lakefile.lean"
        ),
        Path(
            "crates/crypto/proof-aggregation/formal/lean-ipp/lean-toolchain"
        ),
    ),
    "runtime": (
        Path(
            "crates/crypto/proof-aggregation/formal/lean-ipp/scripts/"
            "verification_manifest.py"
        ),
    ),
}

DEFAULT_CARGO_METADATA_TIMEOUT_SECONDS = 180
MAX_CARGO_METADATA_TIMEOUT_SECONDS = 900


class FingerprintError(RuntimeError):
    """The lane's exact tracked input set could not be established."""


@dataclass(frozen=True)
class CargoSelection:
    directories: tuple[Path, ...]
    metadata_projection: bytes
    lock_projection: bytes


@dataclass(frozen=True)
class LockedPackage:
    name: str
    version: str
    source: str | None
    checksum: str | None
    dependencies: tuple[str, ...]

    @property
    def identity(self) -> tuple[str, str, str | None]:
        return (self.name, self.version, self.source)


def _validated_cargo_metadata_timeout(value: int) -> int:
    if (
        isinstance(value, bool)
        or not isinstance(value, int)
        or not 1 <= value <= MAX_CARGO_METADATA_TIMEOUT_SECONDS
    ):
        raise FingerprintError(
            "cargo metadata timeout must be an integer from 1 through "
            f"{MAX_CARGO_METADATA_TIMEOUT_SECONDS} seconds"
        )
    return value


def _cargo_metadata_timeout_argument(value: str) -> int:
    try:
        parsed = int(value, 10)
    except ValueError as error:
        raise argparse.ArgumentTypeError(
            "cargo metadata timeout must be an integer"
        ) from error
    try:
        return _validated_cargo_metadata_timeout(parsed)
    except FingerprintError as error:
        raise argparse.ArgumentTypeError(str(error)) from error


def cargo_metadata(
    root: Path,
    *,
    timeout_seconds: int = DEFAULT_CARGO_METADATA_TIMEOUT_SECONDS,
) -> dict[str, Any]:
    timeout = _validated_cargo_metadata_timeout(timeout_seconds)
    try:
        result = subprocess.run(
            [
                "cargo",
                "metadata",
                "--locked",
                "--offline",
                "--format-version=1",
                "--no-deps",
            ],
            cwd=root,
            check=False,
            capture_output=True,
            text=True,
            timeout=timeout,
        )
    except (OSError, subprocess.TimeoutExpired) as error:
        raise FingerprintError(f"cargo metadata failed: {error}") from error
    if result.returncode:
        raise FingerprintError(
            "cargo metadata --locked --offline failed: "
            + (result.stderr.strip() or str(result.returncode))
        )
    try:
        value = json.loads(result.stdout)
    except json.JSONDecodeError as error:
        raise FingerprintError(
            f"cargo metadata returned malformed JSON: {error}"
        ) from error
    if not isinstance(value, dict):
        raise FingerprintError("cargo metadata must be an object")
    return value


def _repo_relative_path(root: Path, value: str, label: str) -> Path:
    try:
        path = Path(value)
        absolute = path.resolve() if path.is_absolute() else (root / path).resolve()
        return absolute.relative_to(root.resolve())
    except (OSError, ValueError) as error:
        raise FingerprintError(f"{label} is outside the repository: {value}") from error


_METADATA_PATH_FIELDS = {
    "license_file",
    "manifest_path",
    "path",
    "readme",
    "src_path",
}


def _canonical_metadata_value(
    root: Path, value: Any, *, field: str | None = None
) -> Any:
    if isinstance(value, dict):
        return {
            key: _canonical_metadata_value(root, item, field=key)
            for key, item in sorted(value.items())
            if key != "id"
        }
    if isinstance(value, list):
        return [
            _canonical_metadata_value(root, item, field=field) for item in value
        ]
    if field in _METADATA_PATH_FIELDS and isinstance(value, str):
        return _repo_relative_path(root, value, f"Cargo metadata {field}").as_posix()
    return value


def _canonical_json(value: Any) -> bytes:
    return json.dumps(
        value,
        ensure_ascii=False,
        separators=(",", ":"),
        sort_keys=True,
    ).encode("utf-8")


def local_metadata_projection(
    root: Path,
    metadata: Mapping[str, Any],
    directories: Iterable[Path],
) -> bytes:
    selected = {path.as_posix() for path in directories}
    packages = metadata.get("packages")
    if not isinstance(packages, list):
        raise FingerprintError("cargo metadata.packages must be an array")
    projected: list[dict[str, Any]] = []
    found: set[str] = set()
    for index, value in enumerate(packages):
        if not isinstance(value, dict):
            raise FingerprintError(f"cargo metadata package {index} is not an object")
        manifest = value.get("manifest_path")
        if not isinstance(manifest, str):
            raise FingerprintError(
                f"cargo metadata package {index} has no manifest path"
            )
        directory = _repo_relative_path(
            root, str(Path(manifest).parent), f"Cargo package {index}"
        ).as_posix()
        if directory not in selected:
            continue
        found.add(directory)
        package = _canonical_metadata_value(root, value)
        assert isinstance(package, dict)
        for field in ("dependencies", "targets"):
            items = package.get(field)
            if isinstance(items, list):
                package[field] = sorted(items, key=_canonical_json)
        projected.append(package)
    missing = sorted(selected - found)
    if missing:
        raise FingerprintError(
            "selected Cargo package metadata is missing: " + ", ".join(missing)
        )
    projected.sort(key=_canonical_json)
    return _canonical_json({"schema_version": 1, "packages": projected})


def _lock_string(value: Any, label: str) -> str:
    if not isinstance(value, str) or not value:
        raise FingerprintError(f"{label} must be a non-empty string")
    return value


def _locked_packages(value: Mapping[str, Any]) -> tuple[LockedPackage, ...]:
    raw_packages = value.get("package")
    if not isinstance(raw_packages, list) or not raw_packages:
        raise FingerprintError("Cargo.lock must contain package entries")
    packages: list[LockedPackage] = []
    identities: set[tuple[str, str, str | None]] = set()
    for index, raw in enumerate(raw_packages):
        if not isinstance(raw, dict):
            raise FingerprintError(f"Cargo.lock package {index} is not an object")
        source = raw.get("source")
        checksum = raw.get("checksum")
        if source is not None and not isinstance(source, str):
            raise FingerprintError(f"Cargo.lock package {index}.source is invalid")
        if checksum is not None and not isinstance(checksum, str):
            raise FingerprintError(f"Cargo.lock package {index}.checksum is invalid")
        dependencies = raw.get("dependencies", [])
        if not isinstance(dependencies, list) or any(
            not isinstance(item, str) or not item for item in dependencies
        ):
            raise FingerprintError(
                f"Cargo.lock package {index}.dependencies is invalid"
            )
        package = LockedPackage(
            name=_lock_string(raw.get("name"), f"Cargo.lock package {index}.name"),
            version=_lock_string(
                raw.get("version"), f"Cargo.lock package {index}.version"
            ),
            source=source,
            checksum=checksum,
            dependencies=tuple(dependencies),
        )
        if package.identity in identities:
            raise FingerprintError(
                f"duplicate Cargo.lock package identity {package.identity!r}"
            )
        identities.add(package.identity)
        packages.append(package)
    return tuple(packages)


def _resolve_locked_dependency(
    dependency: str,
    packages_by_name: Mapping[str, tuple[LockedPackage, ...]],
) -> LockedPackage:
    matches: list[LockedPackage] = []
    for name, packages in packages_by_name.items():
        if dependency != name and not dependency.startswith(f"{name} "):
            continue
        for package in packages:
            forms = {package.name, f"{package.name} {package.version}"}
            if package.source is not None:
                forms.add(
                    f"{package.name} {package.version} ({package.source})"
                )
            if dependency in forms:
                matches.append(package)
    if len(matches) != 1:
        raise FingerprintError(
            f"Cargo.lock dependency {dependency!r} resolved to {len(matches)} packages"
        )
    return matches[0]


def cargo_lock_projection_from_data(
    value: Mapping[str, Any], roots: Sequence[str]
) -> bytes:
    packages = _locked_packages(value)
    by_name: dict[str, tuple[LockedPackage, ...]] = {}
    for name in sorted({package.name for package in packages}):
        by_name[name] = tuple(
            package for package in packages if package.name == name
        )

    pending: list[LockedPackage] = []
    for name in roots:
        candidates = tuple(
            package for package in by_name.get(name, ()) if package.source is None
        )
        if len(candidates) != 1:
            raise FingerprintError(
                f"Cargo.lock root package {name!r} resolved to "
                f"{len(candidates)} packages"
            )
        pending.append(candidates[0])

    selected: dict[tuple[str, str, str | None], LockedPackage] = {}
    edges: dict[tuple[str, str, str | None], tuple[LockedPackage, ...]] = {}
    while pending:
        package = pending.pop()
        if package.identity in selected:
            continue
        selected[package.identity] = package
        dependencies = tuple(
            _resolve_locked_dependency(dependency, by_name)
            for dependency in package.dependencies
        )
        edges[package.identity] = dependencies
        pending.extend(dependencies)

    def identity_value(package: LockedPackage) -> dict[str, str | None]:
        return {
            "name": package.name,
            "version": package.version,
            "source": package.source,
        }

    projection = []
    for identity in sorted(
        selected, key=lambda item: (item[0], item[1], item[2] or "")
    ):
        package = selected[identity]
        dependencies = sorted(
            (identity_value(item) for item in edges[identity]),
            key=_canonical_json,
        )
        projection.append(
            {
                **identity_value(package),
                "checksum": package.checksum,
                "dependencies": dependencies,
            }
        )
    return _canonical_json({"schema_version": 1, "packages": projection})


def cargo_lock_projection(root: Path, roots: Sequence[str]) -> bytes:
    path = root / "Cargo.lock"
    try:
        value = tomllib.loads(path.read_text(encoding="utf-8"))
    except (OSError, UnicodeError, tomllib.TOMLDecodeError) as error:
        raise FingerprintError(f"cannot read Cargo.lock: {error}") from error
    return cargo_lock_projection_from_data(value, roots)


def cargo_selection(
    root: Path,
    packages: Sequence[str],
    *,
    metadata_timeout_seconds: int = DEFAULT_CARGO_METADATA_TIMEOUT_SECONDS,
) -> CargoSelection:
    metadata = cargo_metadata(root, timeout_seconds=metadata_timeout_seconds)
    raw_packages = metadata.get("packages")
    if not isinstance(raw_packages, list) or not raw_packages:
        raise FingerprintError("cargo metadata.packages must be a non-empty array")
    by_name: dict[str, list[dict[str, Any]]] = {}
    by_dir: dict[str, dict[str, Any]] = {}
    for index, value in enumerate(raw_packages):
        if not isinstance(value, dict):
            raise FingerprintError(f"cargo metadata package {index} is not an object")
        name = _lock_string(value.get("name"), f"cargo package {index}.name")
        manifest = _lock_string(
            value.get("manifest_path"), f"cargo package {name}.manifest_path"
        )
        directory = _repo_relative_path(
            root, str(Path(manifest).parent), f"cargo package {name}"
        ).as_posix()
        if directory in by_dir:
            raise FingerprintError(f"duplicate local Cargo directory {directory}")
        by_name.setdefault(name, []).append(value)
        by_dir[directory] = value

    pending: list[dict[str, Any]] = []
    for name in packages:
        candidates = by_name.get(name, [])
        if len(candidates) != 1:
            raise FingerprintError(
                f"cargo root package {name!r} resolved to {len(candidates)} packages"
            )
        pending.append(candidates[0])

    directories: set[str] = set()
    while pending:
        package = pending.pop()
        name = str(package["name"])
        directory = _repo_relative_path(
            root,
            str(Path(str(package["manifest_path"])).parent),
            f"cargo package {name}",
        ).as_posix()
        if directory in directories:
            continue
        directories.add(directory)
        dependencies = package.get("dependencies")
        if not isinstance(dependencies, list):
            raise FingerprintError(
                f"cargo package {name}.dependencies must be an array"
            )
        for dependency in dependencies:
            if not isinstance(dependency, dict):
                raise FingerprintError(
                    f"cargo package {name} dependency is not an object"
                )
            dependency_path = dependency.get("path")
            if dependency_path is None:
                continue
            if not isinstance(dependency_path, str):
                raise FingerprintError(
                    f"cargo package {name} dependency path is invalid"
                )
            dependency_dir = _repo_relative_path(
                root, dependency_path, f"cargo dependency of {name}"
            ).as_posix()
            if dependency_dir not in by_dir:
                raise FingerprintError(
                    f"cargo dependency {dependency_dir!r} is absent from metadata"
                )
            pending.append(by_dir[dependency_dir])

    selected_directories = tuple(
        Path(directory) for directory in sorted(directories)
    )
    if not selected_directories:
        raise FingerprintError("local Cargo closure contains no directories")
    return CargoSelection(
        directories=selected_directories,
        metadata_projection=local_metadata_projection(
            root, metadata, selected_directories
        ),
        lock_projection=cargo_lock_projection(root, packages),
    )


def _run_git(
    root: Path,
    args: Sequence[str],
    *,
    text: bool = False,
    timeout_seconds: int = 60,
) -> subprocess.CompletedProcess:
    try:
        return subprocess.run(
            ["git", *args],
            cwd=root,
            check=False,
            capture_output=True,
            text=text,
            timeout=timeout_seconds,
        )
    except (OSError, subprocess.TimeoutExpired) as error:
        raise FingerprintError(f"git {' '.join(args)} failed: {error}") from error


def _normalized_paths(paths: Iterable[Path]) -> tuple[str, ...]:
    normalized = tuple(sorted({path.as_posix() for path in paths}))
    for value in normalized:
        path = Path(value)
        if (
            path.is_absolute()
            or ".." in path.parts
            or value in {"", "."}
            or any(character in value for character in ("\0", "\n", "\r"))
        ):
            raise FingerprintError(f"unsafe lane input path: {value!r}")
    return normalized


def _tracked_inventory(
    root: Path,
    paths: Sequence[str],
    *,
    excluded_paths: Sequence[str] = (),
) -> set[bytes]:
    arguments = ["ls-files", "-s", "-z", "--", *paths]
    arguments.extend(
        f":(top,literal,exclude){path}" for path in excluded_paths
    )
    inventory = _run_git(root, arguments)
    if inventory.returncode:
        detail = inventory.stderr.decode("utf-8", errors="replace").strip()
        raise FingerprintError(
            "cannot inventory lane inputs: "
            f"{detail or inventory.returncode}"
        )
    return {
        record
        for record in inventory.stdout.split(b"\0")
        if record
    }


def _dirty_tracked_inputs(
    root: Path,
    paths: Sequence[str],
    *,
    excluded_paths: Sequence[str] = (),
) -> bytes:
    arguments = [
        "status",
        "--porcelain=v1",
        "-z",
        "--untracked-files=no",
        "--ignore-submodules=none",
        "--no-renames",
        "--",
        *paths,
    ]
    arguments.extend(
        f":(top,literal,exclude){path}" for path in excluded_paths
    )
    clean = _run_git(
        root,
        arguments,
        timeout_seconds=180,
    )
    if clean.returncode:
        detail = clean.stderr.decode("utf-8", errors="replace").strip()
        raise FingerprintError(
            "cannot check frozen lane inputs: "
            f"{detail or clean.returncode}"
        )
    return clean.stdout


def package_proof_exclusions(
    package_roots: Iterable[Path],
) -> tuple[Path, ...]:
    """Return proof-only subtrees nested in the selected Cargo closure."""
    roots = tuple(package_roots)
    return tuple(
        path
        for path in PROOF_ONLY_PACKAGE_PATHS
        if any(path == root or path.is_relative_to(root) for root in roots)
    )


def parity_extraction_controls(root: Path) -> tuple[Path, ...]:
    """Return exact generated/runtime Lean files read by parity preflight."""
    try:
        manifest = json.loads(
            (root / EXTRACTION_MANIFEST).read_text(encoding="utf-8")
        )
    except (OSError, UnicodeError, json.JSONDecodeError) as error:
        raise FingerprintError(
            f"cannot read extraction manifest for parity: {error}"
        ) from error
    if not isinstance(manifest, dict):
        raise FingerprintError("extraction manifest for parity must be an object")
    graphs = manifest.get("graphs")
    if not isinstance(graphs, list) or not graphs:
        raise FingerprintError(
            "extraction manifest for parity has no graph array"
        )

    controls = {EXTRACTION_RUNTIME}
    for index, graph in enumerate(graphs):
        if not isinstance(graph, dict):
            raise FingerprintError(
                f"extraction manifest graph {index} is not an object"
            )
        output = graph.get("output")
        normalization = graph.get("normalization")
        if not isinstance(output, str) or not output:
            raise FingerprintError(
                f"extraction manifest graph {index} has no output"
            )
        if not isinstance(normalization, dict):
            raise FingerprintError(
                f"extraction manifest graph {index} has no normalization"
            )
        reuse_modules = normalization.get("reuse_modules")
        if not isinstance(reuse_modules, list) or any(
            not isinstance(module, str) or not module
            for module in reuse_modules
        ):
            raise FingerprintError(
                f"extraction manifest graph {index} has invalid reuse modules"
            )
        controls.add(Path(output))
        for module in reuse_modules:
            parts = module.split(".")
            if any(not part.isidentifier() for part in parts):
                raise FingerprintError(
                    f"extraction manifest graph {index} has invalid "
                    f"reuse module {module!r}"
                )
            controls.add(LEAN_ROOT.joinpath(*parts).with_suffix(".lean"))
    return tuple(sorted(controls, key=lambda path: path.as_posix()))


def lane_controls(root: Path, lane: str) -> tuple[Path, ...]:
    controls = (*COMMON_CONTROLS, *LANE_CONTROLS[lane])
    if lane == "parity":
        controls = (*controls, *parity_extraction_controls(root))
    return tuple(controls)


def tracked_fingerprint(
    root: Path,
    lane: str,
    paths: Iterable[Path],
    contexts: Iterable[str] = (),
    *,
    excluded_paths: Iterable[Path] = (),
    additional_paths: Iterable[Path] = (),
    projections: Mapping[str, bytes] | None = None,
) -> str:
    normalized = _normalized_paths(paths)
    excluded = _normalized_paths(excluded_paths)
    additional = _normalized_paths(additional_paths)
    if not normalized:
        raise FingerprintError("lane input path set is empty")
    for path in (*normalized, *additional):
        absolute = root / path
        if not absolute.exists():
            raise FingerprintError(f"required lane input is missing: {path}")
        listed = _run_git(root, ["ls-files", "-z", "--", path])
        if listed.returncode:
            detail = listed.stderr.decode("utf-8", errors="replace").strip()
            raise FingerprintError(
                f"cannot inventory required lane input {path}: "
                f"{detail or listed.returncode}"
            )
        if not listed.stdout:
            raise FingerprintError(
                f"required lane input has no tracked files: {path}"
            )

    inventory = _tracked_inventory(
        root,
        normalized,
        excluded_paths=excluded,
    )
    if additional:
        # Explicit lane controls remain inputs even when they live below a
        # proof-only subtree excluded from the generic Cargo package closure.
        inventory.update(_tracked_inventory(root, additional))
    if not inventory:
        raise FingerprintError("lane tracked-file inventory is empty")

    dirty = _dirty_tracked_inputs(
        root,
        normalized,
        excluded_paths=excluded,
    )
    if additional:
        dirty += _dirty_tracked_inputs(root, additional)
    if dirty:
        raise FingerprintError(
            "lane inputs differ from the frozen candidate commit"
        )

    projection_items = sorted((projections or {}).items())
    for label, value in projection_items:
        if (
            not label
            or any(character in label for character in ("\0", "\n", "\r"))
            or not isinstance(value, bytes)
        ):
            raise FingerprintError("lane projection must map safe labels to bytes")

    digest = hashlib.sha256()
    digest.update(b"snarkpack-lane-pass-v2\0")
    digest.update(lane.encode("utf-8"))
    digest.update(b"\0")
    for context in contexts:
        digest.update(context.encode("utf-8"))
        digest.update(b"\0")
    for record in sorted(inventory):
        digest.update(record)
        digest.update(b"\0")
    for label, value in projection_items:
        digest.update(b"projection\0")
        digest.update(label.encode("utf-8"))
        digest.update(b"\0")
        digest.update(str(len(value)).encode("ascii"))
        digest.update(b"\0")
        digest.update(value)
        digest.update(b"\0")
    return digest.hexdigest()


def fingerprint(
    root: Path,
    lane: str,
    contexts: Iterable[str],
    *,
    metadata_timeout_seconds: int = DEFAULT_CARGO_METADATA_TIMEOUT_SECONDS,
) -> str:
    if lane not in LANE_PACKAGES:
        raise FingerprintError(f"unknown SnarkPack lane: {lane}")
    selection = cargo_selection(
        root,
        LANE_PACKAGES[lane],
        metadata_timeout_seconds=metadata_timeout_seconds,
    )
    controls = lane_controls(root, lane)
    return tracked_fingerprint(
        root,
        lane,
        selection.directories,
        contexts,
        excluded_paths=package_proof_exclusions(selection.directories),
        additional_paths=controls,
        projections={
            "cargo-lock-closure-v1": selection.lock_projection,
            "cargo-local-metadata-v1": selection.metadata_projection,
        },
    )


def parser() -> argparse.ArgumentParser:
    result = argparse.ArgumentParser(description=__doc__)
    result.add_argument("--lane", required=True, choices=sorted(LANE_PACKAGES))
    result.add_argument("--context", action="append", default=[])
    result.add_argument("--github-output", type=Path)
    result.add_argument(
        "--cargo-metadata-timeout-seconds",
        type=_cargo_metadata_timeout_argument,
        default=DEFAULT_CARGO_METADATA_TIMEOUT_SECONDS,
        help=(
            "bounded cargo metadata timeout used to resolve the local package "
            f"closure (default: {DEFAULT_CARGO_METADATA_TIMEOUT_SECONDS})"
        ),
    )
    return result


def main(argv: Sequence[str] | None = None) -> int:
    args = parser().parse_args(argv)
    try:
        value = fingerprint(
            ROOT,
            args.lane,
            args.context,
            metadata_timeout_seconds=args.cargo_metadata_timeout_seconds,
        )
        if args.github_output is None:
            print(value)
        else:
            with args.github_output.open("a", encoding="utf-8") as output:
                output.write(f"sha256={value}\n")
        return 0
    except FingerprintError as error:
        print(f"SnarkPack lane fingerprint failed: {error}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
