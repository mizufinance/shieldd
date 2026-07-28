#!/usr/bin/env python3
"""Reject forbidden modules anywhere in a local Lean import closure."""

from __future__ import annotations

import argparse
from pathlib import Path
import re

from lean_affected_modules import local_imports, module_sources


def import_closure(
    sources: dict[str, Path],
    roots: list[str],
) -> set[str]:
    unknown = set(roots) - sources.keys()
    if unknown:
        raise ValueError(f"unknown root modules: {sorted(unknown)}")
    known = set(sources)
    dependencies = {
        module: local_imports(path, known) for module, path in sources.items()
    }
    closure: set[str] = set()

    def collect(module: str) -> None:
        if module in closure:
            return
        closure.add(module)
        for dependency in dependencies[module]:
            collect(dependency)

    for root in roots:
        collect(root)
    return closure


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--lean-dir", type=Path, required=True)
    parser.add_argument("--root", action="append", required=True)
    parser.add_argument("--forbid-regex", required=True)
    args = parser.parse_args()
    sources = module_sources(args.lean_dir.resolve())
    closure = import_closure(sources, args.root)
    forbidden = re.compile(args.forbid_regex)
    violations = sorted(module for module in closure if forbidden.search(module))
    if violations:
        raise SystemExit(
            "forbidden modules in Lean import closure:\n" + "\n".join(violations)
        )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
