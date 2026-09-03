#!/usr/bin/env python3
"""Reject revision counters on pre-launch, Shieldd-owned formats."""

from __future__ import annotations

import re
import subprocess
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
TEXT_SUFFIXES = {
    ".go",
    ".json",
    ".md",
    ".proto",
    ".py",
    ".rs",
    ".sh",
    ".toml",
    ".yaml",
    ".yml",
}
EXCLUDED_PREFIXES = ("third_party/", "crates/proto/src/gen/")
EXCLUDED_PATHS = {
    "scripts/check_internal_versioning.py",
    "scripts/tests/test_check_internal_versioning.py",
}

RULES = (
    (
        "numeric schema or format guard",
        re.compile(r"\b(?:SCHEMA_VERSION|FORMAT_VERSION|schema_version|format_version)\b"),
    ),
    (
        "revisioned witness symbol",
        re.compile(r"\b[A-Za-z][A-Za-z0-9_]*WitnessV[0-9]+\b"),
    ),
    (
        "revisioned internal proof ABI symbol",
        re.compile(r"\b(?:Transfer|NoteReshape|ShieldedIcs20Withdrawal)AbiV[0-9]+\b"),
    ),
    (
        "revisioned witness artifact",
        re.compile(r"(?:^|[/_-])witness[_-]v[0-9]+(?:\b|[._-])", re.IGNORECASE),
    ),
    (
        "revisioned current implementation path",
        re.compile(
            r"\b(?:process_proposal|deliver_tx_bytes)[_-]v[0-9]+\b|"
            r"poc-[a-z0-9_-]+-v[0-9]+\b"
        ),
    ),
    (
        "revisioned proof statement domain",
        re.compile(r"public_input_hash\.v[0-9]+|statement(?:_hash)?\.v[0-9]+"),
    ),
    (
        "revisioned Shieldd artifact schema",
        re.compile(
            r"shieldd\.(?:gnark\.|proof-artifact-cache|note-reshape-witness-roles)"
            r"[^\"'\s]*\.v[0-9]+"
        ),
    ),
)


def violations(relative: str, lines: list[str]) -> list[str]:
    failures = []
    for line_number, line in enumerate(lines, 1):
        for description, pattern in RULES:
            if pattern.search(line):
                failures.append(f"{relative}:{line_number}: {description}: {line.strip()}")
    return failures


def tracked_files() -> list[Path]:
    output = subprocess.check_output(
        ["git", "ls-files", "--cached", "--others", "--exclude-standard", "-z"],
        cwd=ROOT,
    )
    return [ROOT / value.decode() for value in output.split(b"\0") if value]


def main() -> int:
    failures: list[str] = []
    for path in tracked_files():
        relative = path.relative_to(ROOT).as_posix()
        if (
            path.suffix not in TEXT_SUFFIXES
            or relative in EXCLUDED_PATHS
            or relative.startswith(EXCLUDED_PREFIXES)
        ):
            continue
        try:
            lines = path.read_text(encoding="utf-8").splitlines()
        except (OSError, UnicodeDecodeError):
            continue
        failures.extend(violations(relative, lines))

    if failures:
        print("Internal revision counters are not allowed:", file=sys.stderr)
        print("\n".join(failures), file=sys.stderr)
        print(
            "Use a semantic identity or exact content fingerprint; retain versions only at "
            "external or consensus boundaries.",
            file=sys.stderr,
        )
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
