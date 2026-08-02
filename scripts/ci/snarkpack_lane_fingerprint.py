#!/usr/bin/env python3
"""Fingerprint the exact tracked inputs of one heavy SnarkPack CI lane."""

from __future__ import annotations

import argparse
import hashlib
import importlib.util
import json
import subprocess
import sys
from pathlib import Path
from typing import Iterable, Sequence


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
    Path("Cargo.lock"),
    Path("Cargo.toml"),
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


def _load_gate_module(root: Path):
    path = root / GATE_SCRIPT
    spec = importlib.util.spec_from_file_location(
        "_snarkpack_gate_applicability", path
    )
    if spec is None or spec.loader is None:
        raise FingerprintError(f"cannot load gate applicability module: {path}")
    module = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = module
    try:
        spec.loader.exec_module(module)
    except (OSError, ImportError) as error:
        raise FingerprintError(
            f"cannot load gate applicability module: {error}"
        ) from error
    return module


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


def local_package_closure(
    root: Path,
    packages: Sequence[str],
    *,
    metadata_timeout_seconds: int = DEFAULT_CARGO_METADATA_TIMEOUT_SECONDS,
) -> tuple[Path, ...]:
    timeout = _validated_cargo_metadata_timeout(metadata_timeout_seconds)
    gate = _load_gate_module(root)
    source = {
        "packages": list(packages),
        "tiers": {"default": "full"},
        "reason": "SnarkPack lane fingerprint",
    }
    try:
        rules = gate.cargo_closure_rules(
            root,
            source,
            "pull_request",
            metadata_timeout_seconds=timeout,
        )
    except (OSError, RuntimeError, TypeError, ValueError) as error:
        raise FingerprintError(
            f"cannot resolve local Cargo closure: {error}"
        ) from error
    if not rules:
        raise FingerprintError("local Cargo closure is empty")
    suffix = "/**"
    directories = tuple(
        sorted(
            {
                Path(pattern[: -len(suffix)])
                for pattern in rules[0].patterns
                if pattern.endswith(suffix)
            },
            key=lambda path: path.as_posix(),
        )
    )
    if not directories:
        raise FingerprintError("local Cargo closure contains no directories")
    return directories


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

    digest = hashlib.sha256()
    digest.update(b"snarkpack-lane-pass-v1\0")
    digest.update(lane.encode("utf-8"))
    digest.update(b"\0")
    for context in contexts:
        digest.update(context.encode("utf-8"))
        digest.update(b"\0")
    for record in sorted(inventory):
        digest.update(record)
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
    closure = local_package_closure(
        root,
        LANE_PACKAGES[lane],
        metadata_timeout_seconds=metadata_timeout_seconds,
    )
    controls = lane_controls(root, lane)
    return tracked_fingerprint(
        root,
        lane,
        closure,
        contexts,
        excluded_paths=package_proof_exclusions(closure),
        additional_paths=controls,
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
