#!/usr/bin/env python3
"""Select Rust packages whose documentation does not require proving keys."""

from __future__ import annotations

from collections.abc import Iterator
import json
from pathlib import Path
import subprocess


PROVING_KEYS_FEATURE = "bundled-proving-keys"


def _feature_closure(
    package: dict[str, object],
    enabled_features: tuple[str, ...],
    *,
    use_default: bool,
) -> frozenset[str]:
    features = package.get("features", {})
    if not isinstance(features, dict):
        raise ValueError("cargo metadata features must be an object")

    pending = list(enabled_features)
    if use_default:
        pending.append("default")
    closure: set[str] = set()
    while pending:
        feature = pending.pop()
        if feature in closure:
            continue
        closure.add(feature)
        expansion = features.get(feature, [])
        if not isinstance(expansion, list) or not all(
            isinstance(item, str) for item in expansion
        ):
            raise ValueError("cargo metadata feature expansion must be a string list")
        pending.extend(expansion)
    return frozenset(closure)


def _activates_proving_keys(features: frozenset[str]) -> bool:
    return any(
        feature == PROVING_KEYS_FEATURE
        or feature.endswith(f"/{PROVING_KEYS_FEATURE}")
        for feature in features
    )


def _dependency_key(dependency: dict[str, object]) -> str:
    rename = dependency.get("rename")
    name = dependency.get("name")
    if rename is not None and not isinstance(rename, str):
        raise ValueError("cargo metadata dependency rename must be a string or null")
    if not isinstance(name, str):
        raise ValueError("cargo metadata dependency name must be a string")
    return rename or name


def _dependency_is_active(
    dependency: dict[str, object], feature_closure: frozenset[str]
) -> bool:
    if dependency.get("optional") is not True:
        return True
    key = _dependency_key(dependency)
    return any(
        feature in {key, f"dep:{key}"}
        or feature.startswith(f"{key}/")
        or feature.startswith(f"{key}?/")
        for feature in feature_closure
    )


def _dependency_features(
    dependency: dict[str, object], feature_closure: frozenset[str]
) -> tuple[str, ...]:
    configured = dependency.get("features", [])
    if not isinstance(configured, list) or not all(
        isinstance(feature, str) for feature in configured
    ):
        raise ValueError("cargo metadata dependency features must be a string list")
    key = _dependency_key(dependency)
    forwarded = []
    for feature in feature_closure:
        for prefix in (f"{key}/", f"{key}?/"):
            if feature.startswith(prefix):
                forwarded.append(feature.removeprefix(prefix))
    return tuple(sorted(set([*configured, *forwarded])))


def _configuration_activates_proving_keys(
    package_name: str,
    enabled_features: tuple[str, ...],
    *,
    use_default: bool,
    include_dev_dependencies: bool,
    packages: dict[str, dict[str, object]],
    visiting: set[tuple[str, tuple[str, ...], bool, bool]],
) -> bool:
    package = packages[package_name]
    closure = _feature_closure(
        package,
        enabled_features,
        use_default=use_default,
    )
    if _activates_proving_keys(closure):
        return True

    visit = (
        package_name,
        tuple(sorted(enabled_features)),
        use_default,
        include_dev_dependencies,
    )
    if visit in visiting:
        return False
    visiting.add(visit)
    try:
        dependencies = package.get("dependencies", [])
        if not isinstance(dependencies, list):
            raise ValueError("cargo metadata dependencies must be a list")
        for dependency in dependencies:
            if not isinstance(dependency, dict):
                raise ValueError("cargo metadata dependency must be an object")
            if dependency.get("kind") == "dev" and not include_dev_dependencies:
                continue
            if not _dependency_is_active(dependency, closure):
                continue
            dependency_features = _dependency_features(dependency, closure)
            if PROVING_KEYS_FEATURE in dependency_features:
                return True
            dependency_name = dependency.get("name")
            if not isinstance(dependency_name, str):
                raise ValueError("cargo metadata dependency name must be a string")
            if dependency_name not in packages:
                continue
            uses_default = dependency.get("uses_default_features")
            if not isinstance(uses_default, bool):
                raise ValueError(
                    "cargo metadata uses_default_features must be a boolean"
                )
            if _configuration_activates_proving_keys(
                dependency_name,
                dependency_features,
                use_default=uses_default,
                include_dev_dependencies=False,
                packages=packages,
                visiting=visiting,
            ):
                return True
        return False
    finally:
        visiting.remove(visit)


def package_activates_proving_keys(
    package_name: str,
    packages: dict[str, dict[str, object]],
) -> bool:
    """Return whether documenting a package enables bundled proving keys."""
    return _configuration_activates_proving_keys(
        package_name,
        (),
        use_default=True,
        include_dev_dependencies=True,
        packages=packages,
        visiting=set(),
    )


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
        if package_activates_proving_keys(name, by_name):
            continue
        targets = package.get("targets", [])
        if not isinstance(targets, list):
            raise ValueError("cargo metadata targets must be a list")
        if any(
            isinstance(target, dict) and target.get("doc") is True
            for target in targets
        ):
            selected.append(name)
    return sorted(set(selected))


def git_packages_from_lock(lock_text: str) -> Iterator[str]:
    """Yield package specs for git dependencies in a Cargo lockfile."""
    try:
        import tomllib
    except ModuleNotFoundError:
        tomllib = None

    if tomllib is not None:
        lock = tomllib.loads(lock_text)
        for package in lock.get("package", []):
            source = package.get("source")
            if source and source.startswith("git+"):
                yield f"{package['name']}@{package['version']}"
        return

    current: dict[str, str] = {}
    for line in [*lock_text.splitlines(), "[[package]]"]:
        line = line.strip()
        if line == "[[package]]":
            source = current.get("source")
            if source and source.startswith("git+"):
                yield f"{current['name']}@{current['version']}"
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
    root = Path(__file__).resolve().parents[1]
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
