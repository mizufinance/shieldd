#!/usr/bin/env python3
"""Memory-bounded axiom closure over serialized Lean module declarations."""

from __future__ import annotations

import argparse
import os
from pathlib import Path
import subprocess
import sys
from typing import Iterable

from formal_json import decode_json

ALLOWED_MASK = 0b011
FORBIDDEN_MASK = 0b100
MAX_BATCH_BYTES = 256 * 1024 * 1024
MAX_BATCH_MODULES = 128


def mask_is_allowed(mask: int) -> bool:
    """Accept any subset of the approved proof-irrelevance axioms."""

    return mask & ~ALLOWED_MASK == 0


def public_name_key(name: str) -> str:
    key = "a"
    for component in name.split("."):
        key += f"s{len(component.encode('utf-8'))}:{component}"
    return key


def resolve_module(
    global_masks: dict[str, int],
    declarations: list[dict[str, object]],
    global_forbidden: dict[str, str] | None = None,
    global_parents: dict[str, str] | None = None,
    global_displays: dict[str, str] | None = None,
) -> None:
    if global_forbidden is None:
        global_forbidden = {}
    if global_parents is None:
        global_parents = {}
    if global_displays is None:
        global_displays = {}
    local = {str(decl["name"]): int(decl.get("seed", 0)) for decl in declarations}
    local_forbidden = {
        str(decl["name"]): str(decl.get("display", decl["name"]))
        for decl in declarations
        if int(decl.get("seed", 0)) & FORBIDDEN_MASK
    }
    local_parents: dict[str, str] = {}
    local_displays = {
        str(decl["name"]): str(decl.get("display", decl["name"]))
        for decl in declarations
        if int(decl.get("seed", 0)) & FORBIDDEN_MASK
    }
    changed = True
    while changed:
        changed = False
        for decl in declarations:
            name = str(decl["name"])
            mask = local[name]
            for dependency in decl.get("deps", []):
                dep = str(dependency)
                dependency_mask = local.get(dep, global_masks.get(dep, 0))
                mask |= dependency_mask
                if dependency_mask & FORBIDDEN_MASK and name not in local_forbidden:
                    local_forbidden[name] = local_forbidden.get(
                        dep, global_forbidden.get(dep, dep)
                    )
                    local_parents[name] = dep
                    local_displays[name] = str(decl.get("display", name))
            if mask != local[name]:
                local[name] = mask
                changed = True
    global_masks.update(local)
    global_forbidden.update(local_forbidden)
    global_parents.update(local_parents)
    global_displays.update(local_displays)


def batches(order: Iterable[tuple[str, int]]) -> Iterable[list[str]]:
    batch: list[str] = []
    size = 0
    for module, module_bytes in order:
        if batch and (
            len(batch) >= MAX_BATCH_MODULES
            or size + module_bytes > MAX_BATCH_BYTES
        ):
            yield batch
            batch = []
            size = 0
        batch.append(module)
        size += module_bytes
    if batch:
        yield batch


def lean_environment(lean_dir: Path) -> dict[str, str]:
    env = os.environ.copy()
    env["LEAN_PATH"] = subprocess.check_output(
        ["lake", "env", "printenv", "LEAN_PATH"], cwd=lean_dir, text=True
    ).strip()
    return env


def module_order(
    executable: Path, roots: list[str], lean_dir: Path, env: dict[str, str]
) -> list[tuple[str, int]]:
    output = subprocess.check_output(
        [str(executable), "order", *roots], cwd=lean_dir, env=env, text=True
    )
    order: list[tuple[str, int]] = []
    for line in output.splitlines():
        module, byte_size = line.split("\t", 1)
        order.append((module, int(byte_size)))
    return order


def collect_masks(
    executable: Path,
    order: list[tuple[str, int]],
    lean_dir: Path,
    env: dict[str, str],
) -> tuple[
    dict[str, int], dict[str, str], dict[str, str], dict[str, str]
]:
    masks: dict[str, int] = {}
    forbidden: dict[str, str] = {}
    parents: dict[str, str] = {}
    displays: dict[str, str] = {}
    completed = 0
    for batch in batches(order):
        process = subprocess.Popen(
            [str(executable), "summaries", *batch],
            cwd=lean_dir,
            env=env,
            stdout=subprocess.PIPE,
        )
        assert process.stdout is not None
        for line in process.stdout:
            summary = decode_json(
                line,
                label=f"olean summary JSONL record {completed + 1}",
                top_level=dict,
            )
            assert isinstance(summary, dict)
            resolve_module(
                masks, summary["declarations"], forbidden, parents, displays
            )
            completed += 1
            if completed % 500 == 0:
                print(
                    f"olean axiom audit: indexed {completed}/{len(order)} modules",
                    file=sys.stderr,
                )
        returncode = process.wait()
        if returncode != 0:
            raise SystemExit(f"olean summary worker failed with status {returncode}")
    return masks, forbidden, parents, displays


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--lean-dir", type=Path, required=True)
    parser.add_argument("--root-module", action="append", required=True)
    parser.add_argument("--declaration", action="append", required=True)
    args = parser.parse_args()

    lean_dir = args.lean_dir.resolve()
    executable = lean_dir / ".lake/build/bin/oleanAxiomAudit"
    if not executable.is_file():
        raise SystemExit(f"missing auditor executable: {executable}")
    env = lean_environment(lean_dir)
    order = module_order(executable, args.root_module, lean_dir, env)
    masks, forbidden, parents, displays = collect_masks(
        executable, order, lean_dir, env
    )

    ok = True
    for declaration in args.declaration:
        key = public_name_key(declaration)
        mask = masks.get(key)
        if mask is None:
            print(f"olean axiom audit: declaration not found: {declaration}", file=sys.stderr)
            ok = False
            continue
        names: list[str] = []
        if mask & 0b001:
            names.append("propext")
        if mask & 0b010:
            names.append("Quot.sound")
        if mask & FORBIDDEN_MASK:
            names.append("FORBIDDEN")
        print(f"'{declaration}' depends on axioms: [{', '.join(names)}]")
        if mask & FORBIDDEN_MASK:
            print(
                f"olean axiom audit: forbidden dependency for {declaration}: "
                f"{forbidden.get(key, 'unknown')}",
                file=sys.stderr,
            )
            path: list[str] = []
            cursor = key
            while cursor not in path and len(path) < 200:
                path.append(cursor)
                if cursor not in parents:
                    break
                cursor = parents[cursor]
            labels = [displays.get(item, item) for item in path]
            print(
                "olean axiom audit: dependency path: " + " -> ".join(labels),
                file=sys.stderr,
            )
        ok &= mask_is_allowed(mask)
    return 0 if ok else 1


if __name__ == "__main__":
    raise SystemExit(main())
