#!/usr/bin/env python3
"""Enforce bounded Git LFS storage, download, and artifact-rotation policy."""

from __future__ import annotations

import argparse
import json
import os
from pathlib import Path
import re
import subprocess
import sys

from proof_artifacts import ArtifactError, BUNDLE_BYTE_BUDGETS, Bundle, cache_info


ROOT = Path(__file__).resolve().parents[1]
LFS_ATTRIBUTES = "filter=lfs diff=lfs merge=lfs -text"
FAMILIES = (
    "note_reshape1x8",
    "note_reshape8x1",
    "shielded_ics20_withdrawal",
    "transfer",
)
ALLOWED_LFS_PATHS = {
    path
    for family in FAMILIES
    for path in (
        f"tools/gnark/artifacts/{family}/{family}.sr1cs",
        f"tools/gnark/artifacts/{family}/proving_key.bin",
    )
}
EXPECTED_WORKFLOW_RESTORES = {
    "containers.yml": 2,
    "formal.yml": 3,
    "orbis-integration.yml": 1,
    "release.yml": 1,
    "rust.yml": 5,
    "smoke.yml": 1,
}


def fail(message: str) -> None:
    print(f"LFS policy: {message}", file=sys.stderr)
    raise SystemExit(1)


def run_git(*args: str) -> str:
    try:
        return subprocess.run(
            ["git", *args],
            cwd=ROOT,
            check=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
        ).stdout
    except (FileNotFoundError, subprocess.CalledProcessError) as error:
        fail(f"could not run git {' '.join(args)}: {error}")


def event_base() -> str | None:
    event_path = os.environ.get("GITHUB_EVENT_PATH")
    if not event_path:
        return None
    try:
        event = json.loads(Path(event_path).read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError) as error:
        fail(f"could not read GitHub event payload: {error}")
    pull_request = event.get("pull_request")
    if isinstance(pull_request, dict):
        base = pull_request.get("base")
        if isinstance(base, dict) and isinstance(base.get("sha"), str):
            return base["sha"]
    merge_group = event.get("merge_group")
    if isinstance(merge_group, dict) and isinstance(
        merge_group.get("base_sha"), str
    ):
        return merge_group["base_sha"]
    return None


def enforce_attributes() -> None:
    attribute_rules = {
        line.split(maxsplit=1)[0]: line.split(maxsplit=1)[1]
        for line in (ROOT / ".gitattributes").read_text().splitlines()
        if line.strip()
        and not line.lstrip().startswith("#")
        and "filter=lfs" in line
    }
    if set(attribute_rules) != ALLOWED_LFS_PATHS:
        fail(
            ".gitattributes LFS paths differ from the current proof artifacts: "
            f"expected {sorted(ALLOWED_LFS_PATHS)}, got {sorted(attribute_rules)}"
        )
    for path, attributes in attribute_rules.items():
        if attributes != LFS_ATTRIBUTES:
            fail(f"unexpected LFS attributes for {path}: {attributes}")


def enforce_workflow_fanout() -> None:
    workflows = ROOT / ".github" / "workflows"
    observed: dict[str, int] = {}
    for workflow in workflows.glob("*.yml"):
        text = workflow.read_text(encoding="utf-8")
        relative = workflow.relative_to(ROOT)
        if re.search(r"(?m)^\s+lfs:\s*true\s*$", text):
            fail(f"{relative} hydrates every LFS object during checkout")
        if "materialize-proof-artifacts" in text:
            fail(f"{relative} uses the removed self-fetching artifact action")
        if re.search(r"proof_artifacts\.py[\"']?\s+materialize(?:\s|$)", text):
            fail(f"{relative} can fetch LFS objects outside the preparer action")

        prepare_count = text.count("/prepare-proof-artifacts")
        restore_count = text.count("/restore-proof-artifacts")
        if prepare_count > 1:
            fail(f"{relative} has {prepare_count} proof-artifact preparers")
        if restore_count and prepare_count != 1:
            fail(f"{relative} restores proof artifacts without one preparer")
        if restore_count:
            observed[workflow.name] = restore_count

    if observed != EXPECTED_WORKFLOW_RESTORES:
        fail(
            "workflow proof-artifact fan-out changed without a policy update: "
            f"expected {EXPECTED_WORKFLOW_RESTORES}, got {observed}"
        )

    prepare = (
        ROOT / ".github/actions/prepare-proof-artifacts/action.yml"
    ).read_text(encoding="utf-8")
    restore = (
        ROOT / ".github/actions/restore-proof-artifacts/action.yml"
    ).read_text(encoding="utf-8")
    if prepare.count("materialize --bundle") != 2:
        fail("the preparer must contain only primary and full-seed materialization")
    if "actions/cache/save@" not in prepare:
        fail("the preparer does not publish its cache before consumers start")
    if prepare.count("lookup-only: true") != 1:
        fail("full base-cache seeding must use one lookup-only cache probe")
    if "materialize" in restore or "git lfs pull" in restore.lower():
        fail("the restore-only action contains an LFS fallback")
    for name, action in (("prepare", prepare), ("restore", restore)):
        if "proof-artifacts-lfs-v2-" not in action:
            fail(f"the {name} action does not use deterministic v2 cache keys")
        if "restore-keys:" in action:
            fail(f"the {name} action permits inexact proof-artifact cache restores")

    legacy = ROOT / ".github/actions/materialize-proof-artifacts/action.yml"
    if legacy.exists():
        fail("the obsolete self-fetching proof-artifact action still exists")

    rust = (workflows / "rust.yml").read_text(encoding="utf-8")
    go_gnark = rust.partition("\n  go-gnark:")[2].partition("\n  gnark-rust:")[0]
    if "uses: ./.github/actions/restore-proof-artifacts" not in go_gnark:
        fail("the Go gnark tests do not restore the prepared runtime bundle")
    gnark_rust = rust.partition("\n  gnark-rust:")[2].partition("\n  summary:")[0]
    if (
        "uses: ./.github/actions/restore-proof-artifacts" not in gnark_rust
        or "bundle: full" not in gnark_rust
    ):
        fail("manual gnark replay does not restore the prepared full bundle")

    formal = (workflows / "formal.yml").read_text(encoding="utf-8")
    soundness_artifacts = formal.partition("\n  soundness-artifacts:")[2].partition(
        "\n  soundness-gate:"
    )[0]
    if (
        "uses: ./.github/actions/prepare-proof-artifacts"
        not in soundness_artifacts
        or "bundle: full" not in soundness_artifacts
    ):
        fail("semantic soundness does not prepare one full artifact bundle")

    containers = (workflows / "containers.yml").read_text(encoding="utf-8")
    container_preparer = containers.partition("\n  proof-artifacts:")[2].partition(
        "\n  build_amd64:"
    )[0]
    if (
        "github.ref_type == 'branch'" not in container_preparer
        or "seed-full:" not in container_preparer
    ):
        fail("base-branch container runs do not seed the full artifact cache")
    if "bundle: full" in container_preparer:
        fail("base-branch cache seeding hydrates the full bundle on every push")


def enforce_proof_scheduling() -> None:
    workflows = ROOT / ".github" / "workflows"
    removed = workflows / "formal-scheduled.yml"
    if removed.exists():
        fail("the automatic formal proof workflow has returned")
    for relative in ("rust.yml", "snarkpack-release-audit.yml"):
        workflow = workflows / relative
        if re.search(r"(?m)^\s+schedule:\s*$", workflow.read_text()):
            fail(f"{workflow.relative_to(ROOT)} schedules proof work")


def enforce_bundle_budgets() -> None:
    expected_objects = {
        Bundle.RUNTIME: len(FAMILIES),
        Bundle.CONSTRAINTS: len(FAMILIES),
        Bundle.FULL: 2 * len(FAMILIES),
    }
    for bundle, object_count in expected_objects.items():
        try:
            info = cache_info(bundle)
        except ArtifactError as error:
            fail(str(error))
        if info.object_count != object_count:
            fail(
                f"{bundle.value} bundle has {info.object_count} objects; "
                f"expected {object_count}"
            )
        if info.size_bytes > BUNDLE_BYTE_BUDGETS[bundle.value]:
            fail(
                f"{bundle.value} bundle exceeds its byte budget: "
                f"{info.size_bytes} > {BUNDLE_BYTE_BUDGETS[bundle.value]}"
            )


def enforce_paired_rotations(base: str | None) -> None:
    if base is None:
        return
    changed = set(run_git("diff", "--name-only", f"{base}...HEAD").splitlines())
    for family in FAMILIES:
        root = f"tools/gnark/artifacts/{family}"
        sr1cs_changed = f"{root}/{family}.sr1cs" in changed
        proving_key_changed = f"{root}/proving_key.bin" in changed
        if sr1cs_changed != proving_key_changed:
            fail(
                f"{family} rotates only one setup object; SR1CS and proving key "
                "must rotate together"
            )
        if not sr1cs_changed:
            continue
        required = {
            f"{root}/circuit_metadata.json",
            f"{root}/setup_provenance.json",
            f"{root}/verifying_key.bin",
            f"{root}/verifying_key.json",
        }
        missing = required - changed
        if missing:
            fail(
                f"{family} setup rotation is missing committed evidence updates: "
                f"{sorted(missing)}"
            )


def enforce_tracked_files() -> None:
    tracked_paths = set(run_git("lfs", "ls-files", "--name-only").splitlines())
    if tracked_paths != ALLOWED_LFS_PATHS:
        fail(
            "tracked LFS files differ from the current proof artifacts: "
            f"expected {sorted(ALLOWED_LFS_PATHS)}, got {sorted(tracked_paths)}"
        )


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--base",
        help="Compare artifact rotations with this base commit (auto-detected in CI).",
    )
    args = parser.parse_args()
    enforce_attributes()
    enforce_workflow_fanout()
    enforce_proof_scheduling()
    enforce_bundle_budgets()
    enforce_paired_rotations(args.base or event_base())
    enforce_tracked_files()
    print("LFS policy: bounded storage, download fan-out, and rotations verified")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
