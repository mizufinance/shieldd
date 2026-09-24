#!/usr/bin/env python3
"""Select documentable Rust workspace packages and pinned Git dependencies."""

from __future__ import annotations

from collections.abc import Iterator
import json
from pathlib import Path
import subprocess


def workspace_package_specs(metadata: dict[str, object]) -> list[str]:
    """Return documented workspace package names in stable order."""
    packages = metadata.get("packages", [])
    if not isinstance(packages, list):
        raise ValueError("cargo metadata packages must be a list")

    by_name: dict[str, dict[str, object]] = {}
    for package in packages:
        if not isinstance(package, dict):
            raise ValueError("cargo metadata package must be an object")
        name = package.get("name")
        if not isinstance(name, str):
            raise ValueError("cargo metadata package name must be a string")
        if name in by_name:
            raise ValueError(f"duplicate workspace package name: {name}")
        by_name[name] = package

    selected: list[str] = []
    for name, package in by_name.items():
        targets = package.get("targets", [])
        if not isinstance(targets, list):
            raise ValueError("cargo metadata targets must be a list")
        if any(
            isinstance(target, dict) and target.get("doc") is True
            for target in targets
        ):
            selected.append(name)
    return sorted(set(selected))


def git_package_spec(package: dict[str, str]) -> str | None:
    source = package.get("source", "")
    if not source.startswith("git+"):
        return None
    return f"{source.split('#')[0]}#{package['name']}@{package['version']}"


def git_packages_from_lock(lock_text: str) -> Iterator[str]:
    """Yield package specs for git dependencies in a Cargo lockfile."""
    try:
        import tomllib
    except ModuleNotFoundError:
        tomllib = None

    if tomllib is not None:
        lock = tomllib.loads(lock_text)
        for package in lock.get("package", []):
            if spec := git_package_spec(package):
                yield spec
        return

    current: dict[str, str] = {}
    for line in [*lock_text.splitlines(), "[[package]]"]:
        line = line.strip()
        if line == "[[package]]":
            if spec := git_package_spec(current):
                yield spec
            current = {}
            continue
        if "=" not in line:
            continue
        key, value = line.split("=", 1)
        key = key.strip()
        value = value.strip()
        if (
            key in {"name", "version", "source"}
            and value.startswith('"')
            and value.endswith('"')
        ):
            current[key] = value[1:-1]


def main() -> None:
    root = Path(__file__).resolve().parents[2]
    metadata = json.loads(
        subprocess.check_output(
            ["cargo", "metadata", "--format-version=1", "--no-deps"],
            cwd=root,
            text=True,
        )
    )
    lock_text = (root / "Cargo.lock").read_text()
    specs = [
        *workspace_package_specs(metadata),
        *git_packages_from_lock(lock_text),
    ]
    for spec in sorted(set(specs)):
        print(spec)


if __name__ == "__main__":
    main()
