#!/usr/bin/env python3
"""Reject LFS tracking and automatic proof-replay schedules."""

from pathlib import Path
import re
import subprocess
import sys


ROOT = Path(__file__).resolve().parents[1]
LFS_POINTER_PREFIX = b"version https://git-lfs.github.com/spec/v1\n"


def fail(message: str) -> None:
    print(f"no-lfs guard: {message}", file=sys.stderr)
    raise SystemExit(1)


attributes = (ROOT / ".gitattributes").read_text()
if "filter=lfs" in attributes:
    fail(".gitattributes enables an LFS filter")

for workflow in (ROOT / ".github" / "workflows").glob("*.yml"):
    if re.search(r"(?m)^\s+lfs:\s*true\s*$", workflow.read_text()):
        fail(f"{workflow.relative_to(ROOT)} hydrates LFS during checkout")

for scheduled_proof_workflow in (
    ROOT / ".github" / "workflows" / "formal-scheduled.yml",
    ROOT / ".github" / "workflows" / "rust.yml",
    ROOT / ".github" / "workflows" / "snarkpack-release-audit.yml",
):
    if scheduled_proof_workflow.name == "formal-scheduled.yml":
        if scheduled_proof_workflow.exists():
            fail("the automatic formal proof workflow has returned")
        continue
    if re.search(r"(?m)^\s+schedule:\s*$", scheduled_proof_workflow.read_text()):
        fail(f"{scheduled_proof_workflow.relative_to(ROOT)} schedules proof work")

tracked = subprocess.run(
    ["git", "ls-files", "-z"],
    cwd=ROOT,
    check=True,
    stdout=subprocess.PIPE,
).stdout.split(b"\0")
for raw_path in tracked:
    if not raw_path:
        continue
    path = ROOT / raw_path.decode()
    if path.is_file() and not path.is_symlink():
        with path.open("rb") as source:
            if source.read(len(LFS_POINTER_PREFIX)) == LFS_POINTER_PREFIX:
                fail(f"tracked file is an LFS pointer: {path.relative_to(ROOT)}")
