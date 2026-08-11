#!/usr/bin/env python3
"""Execute every exact test selector cited by the FV specification matrix."""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import re
import subprocess
import sys
from pathlib import Path
from typing import Any

from fv_specification_completeness import (
    CLAIM_SET,
    MATRIX,
    ROOT,
    execution_plan_digest,
    execution_tests,
    load_and_validate,
    load_strict_json,
)
from fv_strict_json import StrictJsonError, loads as loads_strict_json


RECEIPT_SCHEMA = "shieldd.gnark.specification_test_receipt.v1"


def fail(message: str) -> None:
    raise SystemExit(f"FV specification test execution failed: {message}")


def sha256_bytes(value: bytes) -> str:
    return hashlib.sha256(value).hexdigest()


def run(command: list[str], *, cwd: Path) -> subprocess.CompletedProcess[str]:
    environment = os.environ.copy()
    environment["SHIELDD_FV_EVIDENCE_REQUIRED"] = "1"
    result = subprocess.run(
        command,
        cwd=cwd,
        env=environment,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        check=False,
    )
    if result.returncode:
        fail(
            f"command failed ({' '.join(command)}):\n{result.stdout.rstrip()}"
        )
    return result


def rust_path_fragments(path: str) -> tuple[str, ...]:
    if "/tests/" in path:
        return ()
    marker = "/src/"
    if marker not in path:
        fail(f"Rust test path has no src boundary: {path}")
    suffix = path.split(marker, 1)[1]
    parts = suffix.removesuffix(".rs").split("/")
    if parts[-1] in {"lib", "mod"}:
        parts.pop()
    return tuple(parts)


def resolve_rust_selector(
    test: dict[str, Any],
    listed: tuple[str, ...],
) -> str:
    symbol = str(test["symbol"])
    candidates = [
        name
        for name in listed
        if name == symbol or name.endswith(f"::{symbol}")
    ]
    fragments = rust_path_fragments(str(test["path"]))
    if fragments:
        path_fragment = "::".join(fragments)
        narrowed = [
            candidate
            for candidate in candidates
            if candidate == path_fragment
            or candidate.startswith(f"{path_fragment}::")
            or f"::{path_fragment}::" in candidate
        ]
        if narrowed:
            candidates = narrowed
    if len(candidates) != 1:
        fail(
            f"{test['id']}: selector {symbol!r} resolves to "
            f"{candidates!r}, expected exactly one runnable Rust test"
        )
    return candidates[0]


def cargo_base(execution: dict[str, Any]) -> list[str]:
    command = ["cargo", "test"]
    if execution["build_profile"] == "release":
        command.append("--release")
    command.extend(["-p", str(execution["package"])])
    cargo_target = execution["cargo_target"]
    if cargo_target == "lib":
        command.append("--lib")
    elif isinstance(cargo_target, str) and cargo_target.startswith("bin:"):
        binary_target = cargo_target.removeprefix("bin:")
        if not binary_target:
            fail("cargo execution requires a non-empty binary target")
        command.extend(["--bin", binary_target])
    elif isinstance(cargo_target, str) and cargo_target:
        command.extend(["--test", cargo_target])
    else:
        fail(
            "cargo execution requires a concrete library, binary, "
            "or integration-test target"
        )
    features = execution["features"]
    if features:
        command.extend(["--features", ",".join(features)])
    return command


def rust_listing(
    execution: dict[str, Any],
    cache: dict[tuple[Any, ...], tuple[str, ...]],
) -> tuple[str, ...]:
    key = (
        execution["package"],
        execution["cargo_target"],
        execution["build_profile"],
        tuple(execution["features"]),
    )
    if key not in cache:
        result = run(
            cargo_base(execution) + ["--", "--list"],
            cwd=ROOT / execution["working_directory"],
        )
        names: list[str] = []
        for line in result.stdout.splitlines():
            match = re.fullmatch(r"(.+): test", line.strip())
            if match:
                names.append(match.group(1))
        cache[key] = tuple(names)
    return cache[key]


def execute_rust(
    test: dict[str, Any],
    listing_cache: dict[tuple[Any, ...], tuple[str, ...]],
) -> tuple[str, list[str], str, int, int]:
    execution = test["execution"]
    resolved = resolve_rust_selector(
        test,
        rust_listing(execution, listing_cache),
    )
    command = cargo_base(execution) + [
        resolved,
        "--",
        "--exact",
        "--nocapture",
    ]
    result = run(command, cwd=ROOT / execution["working_directory"])
    summaries = re.findall(
        r"test result: ok\. (\d+) passed; 0 failed; (\d+) ignored;",
        result.stdout,
    )
    if summaries != [("1", "0")]:
        fail(
            f"{test['id']}: exact Rust selector did not execute once "
            f"without skips:\n{result.stdout.rstrip()}"
        )
    if not re.search(
        rf"(?m)^test {re.escape(resolved)} \.\.\. ok$",
        result.stdout,
    ):
        fail(f"{test['id']}: libtest did not report the exact selector passing")
    return resolved, command, result.stdout, 1, 0


def execute_go(
    test: dict[str, Any],
) -> tuple[str, list[str], str, int, int]:
    execution = test["execution"]
    symbol = str(execution["selector"])
    cwd = ROOT / execution["working_directory"]
    listing = run(
        [
            "go",
            "test",
            str(execution["package"]),
            "-list",
            f"^{re.escape(symbol)}$",
        ],
        cwd=cwd,
    )
    listed = [
        line.strip()
        for line in listing.stdout.splitlines()
        if line.strip() == symbol
    ]
    if listed != [symbol]:
        fail(
            f"{test['id']}: Go selector {symbol!r} did not list exactly once"
        )
    command = [
        "go",
        "test",
        str(execution["package"]),
        "-run",
        f"^{re.escape(symbol)}$",
        "-count=1",
        "-json",
    ]
    result = run(command, cwd=cwd)
    passes, skips = go_execution_counts(result.stdout, symbol)
    if passes != 1 or skips != 0:
        fail(
            f"{test['id']}: exact Go selector parent-pass/subtree-skip "
            f"count is {passes}/{skips}, expected 1/0"
        )
    return symbol, command, result.stdout, passes, skips


def go_execution_counts(output: str, symbol: str) -> tuple[int, int]:
    """Count the exact parent pass and every skip in its subtest tree."""

    parent_passes = 0
    subtree_skips = 0
    subtree_prefix = f"{symbol}/"
    for index, line in enumerate(output.splitlines(), start=1):
        if not line:
            continue
        try:
            event = loads_strict_json(
                line, f"go test JSON event line {index}"
            )
        except StrictJsonError as error:
            fail(str(error))
        if not isinstance(event, dict):
            fail(f"go test JSON event line {index} is not an object")
        test_name = event.get("Test")
        if not isinstance(test_name, str):
            continue
        action = event.get("Action")
        if test_name == symbol and action == "pass":
            parent_passes += 1
        if (
            action == "skip"
            and (test_name == symbol or test_name.startswith(subtree_prefix))
        ):
            subtree_skips += 1
    return parent_passes, subtree_skips


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--receipt", required=True, type=Path)
    parser.add_argument("--nonce", required=True)
    args = parser.parse_args()
    if re.fullmatch(r"[0-9a-f]{32,128}", args.nonce) is None:
        fail("--nonce must be 32-128 lowercase hexadecimal characters")

    load_and_validate()
    matrix = load_strict_json(
        MATRIX,
        "specification predicate matrix",
        canonical=True,
    )
    tests = execution_tests(matrix)
    listing_cache: dict[tuple[Any, ...], tuple[str, ...]] = {}
    execution_cache: dict[
        tuple[str, str, str],
        tuple[str, list[str], str, int, int],
    ] = {}
    results: list[dict[str, Any]] = []
    for test in tests:
        execution = test["execution"]
        cache_key = (
            str(test["path"]),
            str(test["symbol"]),
            json.dumps(execution, sort_keys=True, separators=(",", ":")),
        )
        cached = execution_cache.get(cache_key)
        if cached is None:
            if execution["runner"] == "cargo_test":
                cached = execute_rust(test, listing_cache)
            elif execution["runner"] == "go_test":
                cached = execute_go(test)
            else:
                fail(
                    f"{test['id']}: unsupported runner "
                    f"{execution['runner']!r}"
                )
            execution_cache[cache_key] = cached
            reused = False
        else:
            reused = True
        resolved, command, output, executed, skipped = cached
        source = ROOT / test["path"]
        results.append(
            {
                "test_id": test["id"],
                "runner": execution["runner"],
                "resolved_selector": resolved,
                "command": command,
                "source_sha256": sha256_bytes(source.read_bytes()),
                "output_sha256": sha256_bytes(output.encode()),
                "executed": executed,
                "skipped": skipped,
                "status": "passed",
            }
        )
        suffix = " [shared exact execution]" if reused else ""
        print(f"FV evidence passed: {test['id']} ({resolved}){suffix}")

    receipt = {
        "schema": RECEIPT_SCHEMA,
        "claim_set": CLAIM_SET,
        "nonce": args.nonce,
        "matrix_sha256": sha256_bytes(MATRIX.read_bytes()),
        "execution_plan_sha256": execution_plan_digest(matrix),
        "results": results,
    }
    args.receipt.parent.mkdir(parents=True, exist_ok=True)
    args.receipt.write_text(
        json.dumps(receipt, indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )
    print(
        "FV specification evidence receipt written: "
        f"{args.receipt} tests={len(results)}"
    )


if __name__ == "__main__":
    main()
