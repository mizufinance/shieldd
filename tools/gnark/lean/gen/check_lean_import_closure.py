#!/usr/bin/env python3
"""Reject forbidden modules anywhere in a local Lean import closure."""

from __future__ import annotations

import argparse
from pathlib import Path
import re

from lean_affected_modules import (
    declared_imports,
    local_imports,
    module_sources,
)


def missing_local_imports(
    sources: dict[str, Path],
    prefixes: tuple[str, ...],
    modules: set[str] | None = None,
) -> list[tuple[str, str]]:
    known = set(sources)
    checked = known if modules is None else modules
    return sorted(
        (module, dependency)
        for module, path in sources.items()
        if module in checked
        for dependency in declared_imports(path)
        if dependency.startswith(prefixes) and dependency not in known
    )


def import_closure(
    sources: dict[str, Path],
    roots: list[str],
) -> set[str]:
    unknown = set(roots) - sources.keys()
    if unknown:
        raise ValueError(f"unknown root modules: {sorted(unknown)}")
    known = set(sources)
    closure: set[str] = set()

    def collect(module: str) -> None:
        if module in closure:
            return
        closure.add(module)
        for dependency in local_imports(sources[module], known):
            collect(dependency)

    for root in roots:
        collect(root)
    return closure


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--lean-dir", type=Path, required=True)
    parser.add_argument("--root", action="append")
    parser.add_argument("--forbid-regex")
    parser.add_argument("--check-all-local-imports", action="store_true")
    parser.add_argument(
        "--local-prefix",
        action="append",
        default=[],
        help="namespace prefix whose imports must resolve to a local source",
    )
    args = parser.parse_args()
    sources = module_sources(args.lean_dir)
    if args.check_all_local_imports:
        prefixes = tuple(args.local_prefix or ["ShielddGnarkFormal."])
        checked = import_closure(sources, args.root) if args.root else None
        missing = missing_local_imports(sources, prefixes, checked)
        if missing:
            details = "\n".join(
                f"{module}: {dependency}" for module, dependency in missing
            )
            raise SystemExit(f"unresolved local Lean imports:\n{details}")
    if args.forbid_regex:
        if not args.root:
            parser.error("--forbid-regex requires --root")
        closure = import_closure(sources, args.root)
        forbidden = re.compile(args.forbid_regex)
        violations = sorted(
            module for module in closure if forbidden.search(module)
        )
        if violations:
            raise SystemExit(
                "forbidden modules in Lean import closure:\n"
                + "\n".join(violations)
            )
    if args.root and not args.check_all_local_imports and not args.forbid_regex:
        parser.error("--root requires an import check")
    if not args.check_all_local_imports and not args.forbid_regex:
        parser.error("select an import check")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
