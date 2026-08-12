#!/usr/bin/env python3
"""Measure and budget exact Lean build inputs without invoking Lean."""

from __future__ import annotations

import argparse
import hashlib
import json
import platform
import re
import subprocess
import sys
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable


ROOT = Path(__file__).resolve().parents[1]
LEAN = ROOT / "tools/gnark/lean"
DEFAULT_BUDGETS = LEAN / "build-budgets.json"
IMPORT = re.compile(r"^\s*import\s+(.+?)\s*$")
LOCAL_PREFIX = "ShielddGnarkFormal."


def sha256_bytes(value: bytes) -> str:
    return hashlib.sha256(value).hexdigest()


def sha256_file(path: Path) -> str:
    return sha256_bytes(path.read_bytes())


def is_generated(path: Path) -> bool:
    with path.open("r", encoding="utf-8") as source:
        return "GENERATED" in source.read(1024)


def tree_digest(paths: Iterable[Path], root: Path) -> str:
    digest = hashlib.sha256()
    for path in sorted(set(paths)):
        relative = path.relative_to(root).as_posix().encode()
        contents = path.read_bytes()
        digest.update(len(relative).to_bytes(8, "big"))
        digest.update(relative)
        digest.update(len(contents).to_bytes(8, "big"))
        digest.update(contents)
    return digest.hexdigest()


def digest_map_digest(values: dict[str, str]) -> str:
    return sha256_bytes(
        json.dumps(values, sort_keys=True, separators=(",", ":")).encode()
    )


def cache_identity(
    *,
    target: str,
    platform_name: str,
    toolchain_sha256: str,
    lake_manifest_sha256: str,
    semantic: dict[str, str],
    sources: dict[str, str],
) -> tuple[str, dict[str, str]]:
    """Stable cache key based only on proof-relevant content."""

    components = {
        "target": sha256_bytes(target.encode()),
        "platform": sha256_bytes(platform_name.encode()),
        "toolchain": toolchain_sha256,
        "lake_manifest": lake_manifest_sha256,
        "semantic_inputs": digest_map_digest(semantic),
        "proof_sources": digest_map_digest(sources),
    }
    return "fv-lean-v1-" + digest_map_digest(components), components


def module_path(lean_dir: Path, module: str) -> Path:
    return lean_dir.joinpath(*module.split(".")).with_suffix(".lean")


def imports(path: Path) -> tuple[str, ...]:
    result: list[str] = []
    for line in path.read_text(encoding="utf-8").splitlines():
        match = IMPORT.match(line)
        if not match:
            continue
        # Lean permits several module names after one import keyword.
        result.extend(match.group(1).split())
    return tuple(result)


@dataclass(frozen=True)
class Closure:
    modules: tuple[str, ...]
    paths: tuple[Path, ...]

    @property
    def generated_paths(self) -> tuple[Path, ...]:
        return tuple(path for path in self.paths if is_generated(path))


def import_closure(lean_dir: Path, target: str) -> Closure:
    pending = [target]
    visited: set[str] = set()
    paths: dict[str, Path] = {}
    while pending:
        module = pending.pop()
        if module in visited:
            continue
        path = module_path(lean_dir, module)
        if not path.is_file():
            raise ValueError(f"unknown target or local import {module}: {path}")
        visited.add(module)
        paths[module] = path
        for dependency in imports(path):
            dependency_path = module_path(lean_dir, dependency)
            if dependency_path.is_file():
                pending.append(dependency)
            elif dependency.startswith(LOCAL_PREFIX):
                raise ValueError(f"{module}: unresolved local import {dependency}")
    modules = tuple(sorted(visited))
    return Closure(modules, tuple(paths[module] for module in modules))


def git_value(*args: str, root: Path = ROOT) -> str | None:
    result = subprocess.run(
        ["git", *args],
        cwd=root,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.DEVNULL,
        check=False,
    )
    return result.stdout.strip() if result.returncode == 0 else None


def semantic_digests(root: Path) -> dict[str, str]:
    gnark = root / "tools/gnark"
    formal = root / "crates/core/component/shielded-pool/formal"
    result: dict[str, str] = {}
    inventory = gnark / "artifacts/certified-template-inventory.json"
    if inventory.is_file():
        result["template_inventory"] = sha256_file(inventory)
    for path in sorted(formal.glob("*-deployed-slice-ir.json")):
        result[f"relation_ir:{path.name.removesuffix('-deployed-slice-ir.json')}"] = (
            sha256_file(path)
        )
    return result


def semantic_digests_for_target(
    root: Path, target: str
) -> dict[str, str]:
    """Select relation digests that can affect one certified target."""

    all_digests = semantic_digests(root)
    inventory_digest = all_digests.get("template_inventory")
    inventory_path = root / "tools/gnark/artifacts/certified-template-inventory.json"
    selected: dict[str, str] = {}
    if inventory_digest is not None:
        selected["template_inventory"] = inventory_digest
    target_lower = target.lower()
    candidates = (
        "note_reshape1x8",
        "note_reshape8x1",
        "shielded_ics20_withdrawal",
        "transfer",
    )
    circuits = tuple(
        circuit for circuit in candidates
        if circuit.replace("_", "") in target_lower.replace("_", "")
    )
    if not circuits:
        return all_digests
    for circuit in circuits:
        key = f"relation_ir:{circuit}"
        if key in all_digests:
            selected[key] = all_digests[key]
    if inventory_path.is_file():
        inventory = json.loads(inventory_path.read_text(encoding="utf-8"))
        templates = sorted(
            entry["template_key"]
            for entry in inventory.get("templates", [])
            if any(circuit in entry.get("circuits", []) for circuit in circuits)
        )
        selected["target_template_inventory"] = sha256_bytes(
            json.dumps(templates, separators=(",", ":")).encode()
        )
        selected.pop("template_inventory", None)
    return selected


def source_digests(root: Path) -> dict[str, str]:
    lean = root / "tools/gnark/lean"
    generator_root = lean / "gen"
    extractor_root = root / "tools/gnark/third_party/gnark-lean-extractor"
    generated_markers = ("/Deployed/Contracts/", "/Deployed/Templates/Generated/")
    proof_sources = [
        path
        for path in (lean / "ShielddGnarkFormal").rglob("*.lean")
        if not any(marker in path.as_posix() for marker in generated_markers)
        and not is_generated(path)
    ]
    return {
        "generator": tree_digest(generator_root.glob("*.py"), root),
        "proof_substrate": tree_digest(proof_sources, root),
        "extractor": tree_digest(
            (
                path
                for path in extractor_root.rglob("*")
                if path.is_file()
                and path.suffix in {".go", ".mod", ".sum"}
            ),
            root,
        ),
    }


def changed_digests(
    current: dict[str, str], baseline_path: Path | None
) -> list[str]:
    if baseline_path is None:
        return []
    baseline = json.loads(baseline_path.read_text(encoding="utf-8"))
    previous = baseline.get("digests", {})
    return sorted(
        key for key in set(previous) | set(current) if previous.get(key) != current.get(key)
    )


def snapshot(
    *,
    root: Path,
    lean_dir: Path,
    target: str,
    change_class: str,
    cache_state: str,
    baseline: Path | None,
    wall_seconds: int | None,
    peak_rss_mb: int | None,
    status: str,
) -> dict[str, object]:
    closure = import_closure(lean_dir, target)
    generated = closure.generated_paths
    semantic = semantic_digests_for_target(root, target)
    sources = source_digests(root)
    digests = semantic | sources
    toolchain = lean_dir / "lean-toolchain"
    lake_manifest = lean_dir / "lake-manifest.json"
    platform_name = platform.system().lower() + "-" + platform.machine().lower()
    toolchain_digest = sha256_file(toolchain)
    lake_manifest_digest = sha256_file(lake_manifest)
    identity, identity_components = cache_identity(
        target=target,
        platform_name=platform_name,
        toolchain_sha256=toolchain_digest,
        lake_manifest_sha256=lake_manifest_digest,
        semantic=semantic,
        sources=sources,
    )
    result: dict[str, object] = {
        "schema": "shieldd.fv.lean_build_metrics.v1",
        "target": target,
        "change_class": change_class,
        "cache_state": cache_state,
        "status": status,
        "platform": platform_name,
        "commit": git_value("rev-parse", "HEAD", root=root),
        "toolchain": toolchain.read_text(encoding="utf-8").strip(),
        "toolchain_sha256": toolchain_digest,
        "lake_manifest_sha256": lake_manifest_digest,
        "cache_identity": identity,
        "cache_identity_components": identity_components,
        "module_count": len(closure.modules),
        "generated_module_count": len(generated),
        "source_bytes": sum(path.stat().st_size for path in closure.paths),
        "generated_source_bytes": sum(path.stat().st_size for path in generated),
        "digests": digests,
        "changed_digests": changed_digests(digests, baseline),
    }
    if wall_seconds is not None:
        result["wall_seconds"] = wall_seconds
    if peak_rss_mb is not None:
        result["peak_rss_mb"] = peak_rss_mb
    return result


def cache_snapshot(
    *, root: Path, lean_dir: Path, target: str
) -> dict[str, object]:
    """Compute a cache identity without requiring a buildable umbrella module."""

    semantic = semantic_digests_for_target(root, target)
    sources = source_digests(root)
    toolchain = lean_dir / "lean-toolchain"
    lake_manifest = lean_dir / "lake-manifest.json"
    platform_name = platform.system().lower() + "-" + platform.machine().lower()
    identity, components = cache_identity(
        target=target,
        platform_name=platform_name,
        toolchain_sha256=sha256_file(toolchain),
        lake_manifest_sha256=sha256_file(lake_manifest),
        semantic=semantic,
        sources=sources,
    )
    return {
        "cache_identity": identity,
        "cache_identity_components": components,
    }


def load_budgets(path: Path) -> dict[str, object]:
    value = json.loads(path.read_text(encoding="utf-8"))
    if value.get("schema") != "shieldd.fv.lean_build_budgets.v1":
        raise ValueError(f"unsupported Lean build budget schema in {path}")
    return value


def violations(metrics: dict[str, object], budgets: dict[str, object]) -> list[str]:
    change_class = str(metrics["change_class"])
    cache_state = str(metrics["cache_state"])
    classes = budgets["change_classes"]
    if change_class not in classes:
        raise ValueError(f"unknown build change class: {change_class}")
    limits = classes[change_class]
    failures: list[str] = []
    seconds_key = f"max_{cache_state}_seconds"
    checks = {
        "wall_seconds": limits.get(seconds_key),
        "peak_rss_mb": limits.get("max_peak_rss_mb"),
        "module_count": limits.get("max_import_modules"),
        "generated_module_count": limits.get("max_generated_modules"),
        "source_bytes": limits.get("max_source_bytes"),
        "generated_source_bytes": limits.get("max_generated_source_bytes"),
    }
    for key, maximum in checks.items():
        actual = metrics.get(key)
        if maximum is not None and actual is not None and int(actual) > int(maximum):
            failures.append(f"{key}={actual} exceeds {maximum}")
    return failures


def write_json(path: Path | None, value: dict[str, object]) -> None:
    encoded = json.dumps(value, indent=2, sort_keys=True) + "\n"
    if path is None:
        sys.stdout.write(encoded)
        return
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(encoded, encoding="utf-8")


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--root", type=Path, default=ROOT)
    parser.add_argument("--lean-dir", type=Path)
    parser.add_argument("--budgets", type=Path, default=DEFAULT_BUDGETS)
    subparsers = parser.add_subparsers(dest="command", required=True)

    record = subparsers.add_parser("record")
    record.add_argument("--target", required=True)
    record.add_argument("--change-class", required=True)
    record.add_argument("--cache-state", choices=("cold", "warm"), required=True)
    record.add_argument("--baseline", type=Path)
    record.add_argument("--wall-seconds", type=int)
    record.add_argument("--peak-rss-mb", type=int)
    record.add_argument("--status", default="not-run")
    record.add_argument("--output", type=Path)
    record.add_argument("--check-budget", action="store_true")

    check = subparsers.add_parser("check")
    check.add_argument("metrics", type=Path)

    identity = subparsers.add_parser("cache-key")
    identity.add_argument("--target", required=True)
    identity.add_argument("--github-output", type=Path)

    args = parser.parse_args()
    root = args.root.resolve()
    lean_dir = (args.lean_dir or root / "tools/gnark/lean").resolve()
    budgets_path = args.budgets
    if not budgets_path.is_absolute():
        budgets_path = root / budgets_path

    if args.command == "record":
        result = snapshot(
            root=root,
            lean_dir=lean_dir,
            target=args.target,
            change_class=args.change_class,
            cache_state=args.cache_state,
            baseline=args.baseline,
            wall_seconds=args.wall_seconds,
            peak_rss_mb=args.peak_rss_mb,
            status=args.status,
        )
        write_json(args.output, result)
        if args.check_budget:
            failures = violations(result, load_budgets(budgets_path))
            if failures:
                print("Lean build budget exceeded: " + "; ".join(failures), file=sys.stderr)
                return 1
        return 0

    if args.command == "cache-key":
        result = cache_snapshot(root=root, lean_dir=lean_dir, target=args.target)
        key = str(result["cache_identity"])
        if args.github_output is None:
            print(key)
        else:
            with args.github_output.open("a", encoding="utf-8") as output:
                output.write(f"key={key}\n")
                output.write(
                    "semantic-inputs="
                    + str(result["cache_identity_components"]["semantic_inputs"])
                    + "\n"
                )
        return 0

    metrics = json.loads(args.metrics.read_text(encoding="utf-8"))
    failures = violations(metrics, load_budgets(budgets_path))
    if failures:
        print("Lean build budget exceeded: " + "; ".join(failures), file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
