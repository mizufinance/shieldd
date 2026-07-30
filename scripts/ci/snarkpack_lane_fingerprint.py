#!/usr/bin/env python3
"""Fingerprint the exact tracked inputs of one heavy SnarkPack CI lane."""

from __future__ import annotations

import argparse
import hashlib
import importlib.util
import subprocess
import sys
from pathlib import Path
from typing import Iterable, Sequence


ROOT = Path(__file__).resolve().parents[2]
GATE_SCRIPT = Path("scripts/ci/gate-applicability.py")
SELF = Path("scripts/ci/snarkpack_lane_fingerprint.py")

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
    "rust-reference": (
        "shieldd-sdk-proof-aggregation",
        "shieldd-sdk-proof-aggregation-reference",
        "shieldd-sdk-app",
    ),
    "slow": (
        "shieldd-sdk-proof-aggregation",
        "shieldd-sdk-proof-aggregation-reference",
    ),
    "fuzz": ("shieldd-sdk-proof-aggregation-fuzz",),
    "dos": ("shieldd-sdk-proof-aggregation",),
}

LANE_CONTROLS = {
    "parity": (
        Path("scripts/snarkpack-fv.sh"),
        Path(
            "deployments/containerfiles/"
            "Dockerfile.snarkpack-fv-toolchain"
        ),
        Path(
            "crates/crypto/proof-aggregation/formal/snarkpack/"
            "lean-extraction-manifest.json"
        ),
        Path(
            "crates/crypto/proof-aggregation/formal/snarkpack/"
            "aeneas-toolchain.toml"
        ),
        Path(
            "crates/crypto/proof-aggregation/formal/snarkpack/"
            "verification-manifest.json"
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
            "crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted"
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
    "rust-reference": (
        Path(
            "crates/crypto/proof-aggregation/formal/lean-ipp/scripts/"
            "verification_manifest.py"
        ),
        Path(
            "crates/crypto/proof-aggregation/formal/snarkpack/"
            "verification-manifest.json"
        ),
    ),
    "slow": (
        Path(
            "crates/crypto/proof-aggregation/formal/lean-ipp/scripts/"
            "verification_manifest.py"
        ),
    ),
    "fuzz": (),
    "dos": (
        Path(
            "crates/crypto/proof-aggregation/formal/lean-ipp/scripts/"
            "verification_manifest.py"
        ),
    ),
}


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


def local_package_closure(root: Path, packages: Sequence[str]) -> tuple[Path, ...]:
    gate = _load_gate_module(root)
    source = {
        "packages": list(packages),
        "tiers": {"default": "full"},
        "reason": "SnarkPack lane fingerprint",
    }
    try:
        rules = gate.cargo_closure_rules(root, source, "pull_request")
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
) -> subprocess.CompletedProcess:
    try:
        return subprocess.run(
            ["git", *args],
            cwd=root,
            check=False,
            capture_output=True,
            text=text,
            timeout=60,
        )
    except (OSError, subprocess.TimeoutExpired) as error:
        raise FingerprintError(f"git {' '.join(args)} failed: {error}") from error


def tracked_fingerprint(
    root: Path,
    lane: str,
    paths: Iterable[Path],
    contexts: Iterable[str] = (),
) -> str:
    normalized = tuple(
        sorted({path.as_posix() for path in paths})
    )
    if not normalized:
        raise FingerprintError("lane input path set is empty")
    for path in normalized:
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

    inventory = _run_git(root, ["ls-files", "-s", "-z", "--", *normalized])
    if inventory.returncode:
        detail = inventory.stderr.decode("utf-8", errors="replace").strip()
        raise FingerprintError(
            "cannot inventory lane inputs: "
            f"{detail or inventory.returncode}"
        )
    if not inventory.stdout:
        raise FingerprintError("lane tracked-file inventory is empty")

    for args in (
        ["diff", "--quiet", "HEAD", "--", *normalized],
        ["diff", "--cached", "--quiet", "HEAD", "--", *normalized],
    ):
        clean = _run_git(root, args)
        if clean.returncode:
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
    digest.update(inventory.stdout)
    return digest.hexdigest()


def fingerprint(root: Path, lane: str, contexts: Iterable[str]) -> str:
    if lane not in LANE_PACKAGES:
        raise FingerprintError(f"unknown SnarkPack lane: {lane}")
    closure = local_package_closure(root, LANE_PACKAGES[lane])
    controls = COMMON_CONTROLS + LANE_CONTROLS[lane]
    return tracked_fingerprint(root, lane, (*closure, *controls), contexts)


def parser() -> argparse.ArgumentParser:
    result = argparse.ArgumentParser(description=__doc__)
    result.add_argument("--lane", required=True, choices=sorted(LANE_PACKAGES))
    result.add_argument("--context", action="append", default=[])
    result.add_argument("--github-output", type=Path)
    return result


def main(argv: Sequence[str] | None = None) -> int:
    args = parser().parse_args(argv)
    try:
        value = fingerprint(ROOT, args.lane, args.context)
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
