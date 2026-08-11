#!/usr/bin/env python3
"""Materialize and validate the current Git LFS proof artifacts."""

from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
import subprocess
import sys


REPO_ROOT = Path(__file__).resolve().parents[1]
ARTIFACT_ROOT = REPO_ROOT / "tools" / "gnark" / "artifacts"
FAMILIES = (
    "note_reshape1x8",
    "note_reshape8x1",
    "shielded_ics20_withdrawal",
    "transfer",
)


class ArtifactError(RuntimeError):
    pass


def required_hash(metadata: dict[str, object], field: str, family: str) -> str:
    value = metadata.get(field)
    if not isinstance(value, str) or len(value) != 64 or any(
        char not in "0123456789abcdef" for char in value
    ):
        raise ArtifactError(f"invalid {field} for {family}")
    return value


def required_size(metadata: dict[str, object], field: str, family: str) -> int:
    value = metadata.get(field)
    if not isinstance(value, int) or isinstance(value, bool) or value <= 0:
        raise ArtifactError(f"invalid {field} for {family}")
    return value


def artifact_files() -> list[tuple[Path, str, int | None]]:
    files: list[tuple[Path, str, int | None]] = []
    for family in FAMILIES:
        directory = ARTIFACT_ROOT / family
        metadata = json.loads((directory / "circuit_metadata.json").read_text())
        if metadata.get("schema") != "shieldd.gnark.circuit_metadata.v2":
            raise ArtifactError(f"unsupported circuit metadata for {family}")
        if metadata.get("circuit") != family:
            raise ArtifactError(f"circuit metadata identity mismatch for {family}")
        files.extend(
            [
                (
                    directory / f"{family}.sr1cs",
                    required_hash(metadata, "sr1cs_sha256_hex", family),
                    None,
                ),
                (
                    directory / "proving_key.bin",
                    required_hash(metadata, "proving_key_sha256_hex", family),
                    required_size(metadata, "proving_key_size_bytes", family),
                ),
            ]
        )
    return files


def lfs_paths() -> list[str]:
    return [
        path.relative_to(REPO_ROOT).as_posix()
        for path, _, _ in artifact_files()
    ]


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as source:
        for chunk in iter(lambda: source.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def verify_file(path: Path, expected_hash: str, expected_size: int | None) -> None:
    if not path.is_file() or path.is_symlink():
        raise ArtifactError(f"missing regular proof artifact: {path}")
    actual_size = path.stat().st_size
    if expected_size is not None and actual_size != expected_size:
        raise ArtifactError(
            f"size mismatch for {path}: expected {expected_size}, got {actual_size}"
        )
    actual_hash = sha256(path)
    if actual_hash != expected_hash:
        raise ArtifactError(
            f"hash mismatch for {path}: expected {expected_hash}, got {actual_hash}"
        )


def verify() -> None:
    for path, expected_hash, expected_size in artifact_files():
        verify_file(path, expected_hash, expected_size)


def materialize() -> None:
    try:
        verify()
        return
    except ArtifactError:
        pass

    command = [
        "git",
        "lfs",
        "pull",
        f"--include={','.join(lfs_paths())}",
        "--exclude=",
    ]
    result = subprocess.run(command, cwd=REPO_ROOT, check=False)
    if result.returncode != 0:
        raise ArtifactError(
            "Git LFS could not fetch the current proof artifacts; install Git LFS, "
            "authenticate to the repository, and retry"
        )
    verify()


def main() -> int:
    parser = argparse.ArgumentParser()
    commands = parser.add_subparsers(dest="command", required=True)
    commands.add_parser("verify")
    commands.add_parser("materialize")
    args = parser.parse_args()
    try:
        if args.command == "verify":
            verify()
        else:
            materialize()
    except (ArtifactError, OSError, json.JSONDecodeError) as error:
        print(f"proof-artifacts: {error}", file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
