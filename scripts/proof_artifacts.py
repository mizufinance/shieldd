#!/usr/bin/env python3
"""Manage the current POC proof-artifact bundle outside Git LFS."""

from __future__ import annotations

import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import urllib.error
import urllib.request
import zipfile


REPO_ROOT = Path(__file__).resolve().parents[1]
ARTIFACT_ROOT = REPO_ROOT / "tools" / "gnark" / "artifacts"
BUNDLE_CONFIG = ARTIFACT_ROOT / "current-bundle.json"
SCHEMA = "shieldd.proof_artifact_bundle.v1"


class ArtifactError(RuntimeError):
    pass


def load_config() -> dict[str, object]:
    config = json.loads(BUNDLE_CONFIG.read_text())
    if config.get("schema") != SCHEMA:
        raise ArtifactError(f"unsupported bundle schema in {BUNDLE_CONFIG}")
    families = config.get("families")
    if not isinstance(families, list) or not families or not all(
        isinstance(family, str) and family for family in families
    ):
        raise ArtifactError("bundle families must be a non-empty string list")
    return config


def external_files(config: dict[str, object]) -> list[tuple[Path, str, int | None]]:
    files: list[tuple[Path, str, int | None]] = []
    for family in config["families"]:
        assert isinstance(family, str)
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


def verify(root: Path | None = None) -> None:
    config = load_config()
    root = root or ARTIFACT_ROOT
    for source, expected_hash, expected_size in external_files(config):
        path = root / source.relative_to(ARTIFACT_ROOT)
        verify_file(path, expected_hash, expected_size)


def pack(output: Path) -> None:
    config = load_config()
    verify()
    output.parent.mkdir(parents=True, exist_ok=True)
    temporary = output.with_suffix(output.suffix + ".tmp")
    try:
        with zipfile.ZipFile(
            temporary, "w", compression=zipfile.ZIP_DEFLATED, compresslevel=6
        ) as bundle:
            for source, _, _ in external_files(config):
                bundle.write(source, source.relative_to(ARTIFACT_ROOT).as_posix())
        os.replace(temporary, output)
    finally:
        temporary.unlink(missing_ok=True)


def download_current_bundle(output: Path, config: dict[str, object]) -> None:
    repository = config["repository"]
    release_tag = config["release_tag"]
    asset_name = config["asset"]
    assert all(isinstance(value, str) for value in (repository, release_tag, asset_name))
    api = f"https://api.github.com/repos/{repository}/releases/tags/{release_tag}"
    headers = {
        "Accept": "application/vnd.github+json",
        "User-Agent": "shieldd-proof-artifacts",
        "X-GitHub-Api-Version": "2022-11-28",
    }
    token = os.environ.get("GITHUB_TOKEN") or os.environ.get("GH_TOKEN")
    if token:
        headers["Authorization"] = f"Bearer {token}"
    try:
        with urllib.request.urlopen(urllib.request.Request(api, headers=headers)) as response:
            release = json.load(response)
        asset = next(item for item in release["assets"] if item["name"] == asset_name)
        download_headers = dict(headers)
        download_headers["Accept"] = "application/octet-stream"
        with urllib.request.urlopen(
            urllib.request.Request(asset["url"], headers=download_headers)
        ) as response, output.open("wb") as destination:
            shutil.copyfileobj(response, destination)
    except (urllib.error.URLError, KeyError, StopIteration) as error:
        raise ArtifactError(
            f"could not download {asset_name} from release {release_tag}: {error}"
        ) from error


def validate_archive(archive: Path, destination: Path) -> None:
    config = load_config()
    expected = {
        source.relative_to(ARTIFACT_ROOT).as_posix(): (expected_hash, expected_size)
        for source, expected_hash, expected_size in external_files(config)
    }
    with zipfile.ZipFile(archive) as bundle:
        names = bundle.namelist()
        if len(names) != len(set(names)) or set(names) != set(expected):
            raise ArtifactError(
                f"bundle roster mismatch: expected {sorted(expected)}, got {sorted(names)}"
            )
        for name in names:
            member = bundle.getinfo(name)
            if member.is_dir() or (member.external_attr >> 16) & 0o170000 == 0o120000:
                raise ArtifactError(f"bundle member is not a regular file: {name}")
            target = destination / name
            target.parent.mkdir(parents=True, exist_ok=True)
            with bundle.open(member) as source, target.open("wb") as output:
                shutil.copyfileobj(source, output)
            expected_hash, expected_size = expected[name]
            verify_file(target, expected_hash, expected_size)


def materialize(archive: Path | None) -> None:
    config = load_config()
    if archive is None:
        try:
            verify()
            return
        except ArtifactError:
            pass
    with tempfile.TemporaryDirectory(prefix="shieldd-proof-artifacts-") as temporary:
        temporary_root = Path(temporary)
        bundle_path = archive or temporary_root / str(config["asset"])
        if archive is None:
            download_current_bundle(bundle_path, config)
        extracted = temporary_root / "verified"
        validate_archive(bundle_path, extracted)
        for source, _, _ in external_files(config):
            relative = source.relative_to(ARTIFACT_ROOT)
            source.parent.mkdir(parents=True, exist_ok=True)
            temporary_file = source.with_suffix(source.suffix + ".tmp")
            shutil.copyfile(extracted / relative, temporary_file)
            os.replace(temporary_file, source)
    verify()


def publish(archive: Path | None) -> None:
    config = load_config()
    with tempfile.TemporaryDirectory(prefix="shieldd-proof-artifacts-publish-") as temporary:
        temporary_root = Path(temporary)
        bundle = archive or temporary_root / str(config["asset"])
        if archive is None:
            pack(bundle)
        else:
            validate_archive(bundle, temporary_root / "verified")
        repository = str(config["repository"])
        release_tag = str(config["release_tag"])
        view = subprocess.run(
            ["gh", "release", "view", release_tag, "--repo", repository],
            check=False,
            stdout=subprocess.DEVNULL,
            stderr=subprocess.DEVNULL,
        )
        if view.returncode != 0:
            subprocess.run(
                [
                    "gh",
                    "release",
                    "create",
                    release_tag,
                    "--repo",
                    repository,
                    "--prerelease",
                    "--title",
                    "Current POC proof artifacts",
                    "--notes",
                    "Rolling POC asset; superseded proving keys are not retained.",
                ],
                check=True,
            )
        subprocess.run(
            [
                "gh",
                "release",
                "upload",
                release_tag,
                str(bundle),
                "--repo",
                repository,
                "--clobber",
            ],
            check=True,
        )


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser()
    commands = parser.add_subparsers(dest="command", required=True)
    commands.add_parser("verify")
    pack_parser = commands.add_parser("pack")
    pack_parser.add_argument("--output", type=Path, required=True)
    materialize_parser = commands.add_parser("materialize")
    materialize_parser.add_argument("--archive", type=Path)
    publish_parser = commands.add_parser("publish")
    publish_parser.add_argument("--archive", type=Path)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    try:
        if args.command == "verify":
            verify()
        elif args.command == "pack":
            pack(args.output.resolve())
        elif args.command == "materialize":
            materialize(args.archive.resolve() if args.archive else None)
        elif args.command == "publish":
            publish(args.archive.resolve() if args.archive else None)
    except (ArtifactError, OSError, json.JSONDecodeError, zipfile.BadZipFile) as error:
        print(f"proof-artifacts: {error}", file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
