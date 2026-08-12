#!/usr/bin/env python3
"""Enforce narrow Git LFS tracking and prohibit automatic proof replays."""

from pathlib import Path
import re
import subprocess
import sys


ROOT = Path(__file__).resolve().parents[1]
LFS_ATTRIBUTES = "filter=lfs diff=lfs merge=lfs -text"
ALLOWED_LFS_PATHS = {
    "tools/gnark/artifacts/note_reshape1x8/note_reshape1x8.sr1cs",
    "tools/gnark/artifacts/note_reshape1x8/proving_key.bin",
    "tools/gnark/artifacts/note_reshape8x1/note_reshape8x1.sr1cs",
    "tools/gnark/artifacts/note_reshape8x1/proving_key.bin",
    "tools/gnark/artifacts/shielded_ics20_withdrawal/shielded_ics20_withdrawal.sr1cs",
    "tools/gnark/artifacts/shielded_ics20_withdrawal/proving_key.bin",
    "tools/gnark/artifacts/transfer/transfer.sr1cs",
    "tools/gnark/artifacts/transfer/proving_key.bin",
}


def fail(message: str) -> None:
    print(f"LFS policy: {message}", file=sys.stderr)
    raise SystemExit(1)


attribute_rules = {
    line.split(maxsplit=1)[0]: line.split(maxsplit=1)[1]
    for line in (ROOT / ".gitattributes").read_text().splitlines()
    if line.strip() and not line.lstrip().startswith("#") and "filter=lfs" in line
}
if set(attribute_rules) != ALLOWED_LFS_PATHS:
    fail(
        ".gitattributes LFS paths differ from the current proof artifacts: "
        f"expected {sorted(ALLOWED_LFS_PATHS)}, got {sorted(attribute_rules)}"
    )
for path, attributes in attribute_rules.items():
    if attributes != LFS_ATTRIBUTES:
        fail(f"unexpected LFS attributes for {path}: {attributes}")

for workflow in (ROOT / ".github" / "workflows").glob("*.yml"):
    if re.search(r"(?m)^\s+lfs:\s*true\s*$", workflow.read_text()):
        fail(f"{workflow.relative_to(ROOT)} hydrates every LFS object during checkout")

rust_workflow = (ROOT / ".github" / "workflows" / "rust.yml").read_text()
go_gnark_job = rust_workflow.partition("\n  go-gnark:")[2].partition("\n  gnark-rust:")[0]
if "uses: ./.github/actions/materialize-proof-artifacts" not in go_gnark_job:
    fail("the Go gnark test job does not materialize current proof artifacts")

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

try:
    tracked = subprocess.run(
        ["git", "lfs", "ls-files", "--name-only"],
        cwd=ROOT,
        check=True,
        stdout=subprocess.PIPE,
        text=True,
    ).stdout.splitlines()
except (FileNotFoundError, subprocess.CalledProcessError) as error:
    fail(f"could not inspect tracked LFS files: {error}")

tracked_paths = set(tracked)
if tracked_paths != ALLOWED_LFS_PATHS:
    fail(
        "tracked LFS files differ from the current proof artifacts: "
        f"expected {sorted(ALLOWED_LFS_PATHS)}, got {sorted(tracked_paths)}"
    )
