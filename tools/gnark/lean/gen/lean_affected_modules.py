#!/usr/bin/env python3
"""Find and serially rebuild the local Lean modules affected by a source change."""

from __future__ import annotations

import argparse
from collections import defaultdict
import os
from pathlib import Path
import signal
import subprocess

from lean_import_parser import parse_lean_imports


ROOT = Path(__file__).resolve().parents[4]
LEAN = ROOT / "tools/gnark/lean"
SAFE_BUILD = ROOT / "scripts/lean-build-safe.sh"


def module_sources(lean_dir: Path) -> dict[str, Path]:
    unresolved_root = Path(lean_dir)
    if unresolved_root.is_symlink():
        raise ValueError(f"symlinked Lean source root: {unresolved_root}")
    root = unresolved_root.resolve()
    if not root.is_dir():
        raise ValueError(f"missing Lean source root: {unresolved_root}")

    sources: dict[str, Path] = {}
    physical_sources: dict[tuple[int, int], str] = {}
    for directory, child_dirs, filenames in os.walk(
        unresolved_root, followlinks=False
    ):
        directory_path = Path(directory)
        relative_directory = directory_path.relative_to(unresolved_root)
        child_dirs[:] = sorted(
            name for name in child_dirs if name != ".lake"
        )
        for name in child_dirs:
            component = directory_path / name
            if component.is_symlink():
                relative = component.relative_to(unresolved_root)
                raise ValueError(
                    f"symlinked Lean source directory component: {relative}"
                )

        for name in sorted(filenames):
            if not name.endswith(".lean"):
                continue
            unresolved = directory_path / name
            relative = relative_directory / name
            if unresolved.is_symlink():
                raise ValueError(f"symlinked Lean source: {relative}")
            path = unresolved.resolve()
            if not path.is_relative_to(root):
                raise ValueError(f"Lean source escapes source root: {relative}")
            if not path.is_file():
                raise ValueError(f"invalid Lean source: {relative}")

            module = ".".join(relative.with_suffix("").parts)
            if module in sources:
                raise ValueError(f"duplicate Lean module label: {module}")
            stat = path.stat()
            if stat.st_nlink != 1:
                raise ValueError(
                    "physical Lean source alias count "
                    f"{stat.st_nlink}: {relative}"
                )
            physical = (stat.st_dev, stat.st_ino)
            prior_module = physical_sources.get(physical)
            if prior_module is not None:
                raise ValueError(
                    "physical Lean source alias: "
                    f"{prior_module} and {module}"
                )
            sources[module] = path
            physical_sources[physical] = module
    return sources


def declared_imports(path: Path) -> tuple[str, ...]:
    try:
        source = path.read_text(encoding="utf-8")
    except (OSError, UnicodeError) as error:
        raise ValueError(f"{path}: cannot read Lean source: {error}") from error
    return parse_lean_imports(source, label=path)


def local_imports(path: Path, known: set[str]) -> tuple[str, ...]:
    declared = declared_imports(path)
    missing_local = sorted(
        name
        for name in declared
        if name.startswith("ShielddGnarkFormal.") and name not in known
    )
    if missing_local:
        raise ValueError(
            f"{path}: unresolved local Lean imports: {missing_local}"
        )
    return tuple(name for name in declared if name in known)


def affected_order(
    sources: dict[str, Path], root: str, changed: set[str]
) -> list[str]:
    if root not in sources:
        raise ValueError(f"unknown root module: {root}")
    unknown = changed - sources.keys()
    if unknown:
        raise ValueError(f"unknown changed modules: {sorted(unknown)}")

    known = set(sources)
    dependencies = {
        module: local_imports(path, known) for module, path in sources.items()
    }
    root_closure: set[str] = set()

    def collect(module: str) -> None:
        if module in root_closure:
            return
        root_closure.add(module)
        for dependency in dependencies[module]:
            collect(dependency)

    collect(root)
    consumers: dict[str, set[str]] = defaultdict(set)
    for module in root_closure:
        for dependency in dependencies[module]:
            consumers[dependency].add(module)

    affected = changed & root_closure
    frontier = list(affected)
    while frontier:
        dependency = frontier.pop()
        for consumer in consumers[dependency]:
            if consumer not in affected:
                affected.add(consumer)
                frontier.append(consumer)

    order: list[str] = []
    visiting: set[str] = set()
    visited: set[str] = set()

    def visit(module: str) -> None:
        if module in visited:
            return
        if module in visiting:
            raise ValueError(f"local import cycle through {module}")
        visiting.add(module)
        for dependency in dependencies[module]:
            if dependency in affected:
                visit(dependency)
        visiting.remove(module)
        visited.add(module)
        if module in affected:
            order.append(module)

    visit(root)
    return order


def artifact_is_current(
    lean_dir: Path,
    sources: dict[str, Path],
    dependencies: dict[str, tuple[str, ...]],
    module: str,
) -> bool:
    """Fast conservative check for an up-to-date local module artifact."""
    artifact = lean_dir / ".lake/build/lib" / Path(*module.split("."))
    artifact = artifact.with_suffix(".olean")
    if not artifact.is_file():
        return False
    artifact_mtime = artifact.stat().st_mtime_ns
    if sources[module].stat().st_mtime_ns > artifact_mtime:
        return False
    for dependency in dependencies[module]:
        dependency_artifact = lean_dir / ".lake/build/lib" / Path(
            *dependency.split(".")
        )
        dependency_artifact = dependency_artifact.with_suffix(".olean")
        if (
            not dependency_artifact.is_file()
            or dependency_artifact.stat().st_mtime_ns > artifact_mtime
        ):
            return False
    return True


def run_safe_build(module: str, environment: dict[str, str]) -> int:
    process = subprocess.Popen(
        ["bash", str(SAFE_BUILD), module],
        cwd=ROOT,
        env=environment,
        start_new_session=True,
    )
    try:
        return process.wait()
    except KeyboardInterrupt:
        os.killpg(process.pid, signal.SIGTERM)
        try:
            process.wait(timeout=10)
        except subprocess.TimeoutExpired:
            os.killpg(process.pid, signal.SIGKILL)
            process.wait()
        raise


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--lean-dir", type=Path, default=LEAN)
    parser.add_argument("--root-module", required=True)
    parser.add_argument("--changed-module", action="append", required=True)
    parser.add_argument("--run", action="store_true")
    args = parser.parse_args()

    unresolved_lean_dir = args.lean_dir
    sources = module_sources(unresolved_lean_dir)
    lean_dir = unresolved_lean_dir.resolve()
    known = set(sources)
    dependencies = {
        module: local_imports(path, known) for module, path in sources.items()
    }
    order = affected_order(sources, args.root_module, set(args.changed_module))
    print(f"affected Lean modules: {len(order)}", flush=True)
    if not args.run:
        print("\n".join(order))
        return 0

    environment = os.environ.copy()
    environment.setdefault("LEAN_BUILD_MAX_RSS_MB", "8192")
    environment.setdefault("LEAN_BUILD_MAX_SECS", "1800")
    environment["LEAN_NUM_THREADS"] = "1"
    for index, module in enumerate(order, 1):
        if artifact_is_current(lean_dir, sources, dependencies, module):
            continue
        current = subprocess.run(
            ["lake", "--no-build", "--quiet", "build", module],
            cwd=lean_dir,
            env=environment,
            stdout=subprocess.DEVNULL,
            stderr=subprocess.DEVNULL,
        )
        if current.returncode == 0:
            continue
        print(f"serial Lean build [{index}/{len(order)}]: {module}", flush=True)
        returncode = run_safe_build(module, environment)
        if returncode != 0:
            return returncode
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
