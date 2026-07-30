#!/usr/bin/env python3
"""Regression tests for the fail-closed formal workflow summary."""

from __future__ import annotations

import os
from pathlib import Path
import subprocess
import sys
import unittest


SCRIPT = Path(__file__).with_name("enforce_formal_result.py")


def full_environment() -> dict[str, str]:
    env = os.environ.copy()
    env.update(
        {
            "EVENT_NAME": "pull_request",
            "APPLICABILITY": "success",
            "SNARKPACK_STATUS": "run",
            "SNARKPACK_TIER": "full",
            "SNARKPACK_EXPLANATION": "selected",
            "STATIC_RUN": "true",
            "EXTRACT_RUN": "true",
            "SNARKPACK_LEAN_RUN": "true",
            "FSTAR_RUN": "true",
            "PARITY_RUN": "true",
            "RUST_REFERENCE_RUN": "true",
            "FUZZ_RUN": "true",
            "DOS_RUN": "true",
            "SOUNDNESS_STATUS": "run",
            "SOUNDNESS_TIER": "full",
            "SOUNDNESS_EXPLANATION": "selected",
            "STATIC": "success",
            "EXTRACT": "success",
            "SNARKPACK_LEAN": "success",
            "FSTAR": "success",
            "PARITY": "success",
            "RUST_REFERENCE": "success",
            "SLOW": "success",
            "FUZZ": "success",
            "DOS": "success",
            "PUBLICATION": "success",
            "GATE": "success",
            "SEAM": "success",
            "VK": "success",
            "ALLOY": "success",
            "LEAN": "success",
        }
    )
    return env


def run_summary(env: dict[str, str]) -> subprocess.CompletedProcess[str]:
    return subprocess.run(
        [sys.executable, str(SCRIPT)],
        check=False,
        capture_output=True,
        text=True,
        env=env,
    )


def select_snarkpack_skip(env: dict[str, str]) -> None:
    env["SNARKPACK_STATUS"] = "skip"
    env["SNARKPACK_TIER"] = "none"
    env["SOUNDNESS_STATUS"] = "skip"
    env["SOUNDNESS_TIER"] = "none"
    for name in (
        "STATIC_RUN",
        "EXTRACT_RUN",
        "SNARKPACK_LEAN_RUN",
        "FSTAR_RUN",
        "PARITY_RUN",
        "RUST_REFERENCE_RUN",
        "FUZZ_RUN",
        "DOS_RUN",
    ):
        env[name] = "false"
    for name in (
        "STATIC",
        "EXTRACT",
        "SNARKPACK_LEAN",
        "FSTAR",
        "PARITY",
        "RUST_REFERENCE",
        "SLOW",
        "FUZZ",
        "DOS",
        "PUBLICATION",
    ):
        env[name] = "skipped"


class EnforceFormalResultTests(unittest.TestCase):
    def test_full_success_passes(self) -> None:
        result = run_summary(full_environment())
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertIn("formal passed", result.stdout)

    def test_explained_skip_requires_no_snarkpack_lane(self) -> None:
        env = full_environment()
        select_snarkpack_skip(env)
        result = run_summary(env)
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertIn("snarkpack explained skip", result.stdout)

    def test_selected_failure_is_fatal(self) -> None:
        env = full_environment()
        env["SNARKPACK_LEAN"] = "failure"
        result = run_summary(env)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn("snarkpack-lean=failure", result.stderr)

    def test_slow_lane_is_required_with_rust_reference(self) -> None:
        env = full_environment()
        env["SLOW"] = "skipped"
        result = run_summary(env)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn("snarkpack-slow=skipped", result.stderr)

    def test_unselected_lane_must_report_skipped(self) -> None:
        env = full_environment()
        env["EXTRACT_RUN"] = "false"
        result = run_summary(env)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn(
            "unselected snarkpack-extract lane returned success; "
            "expected skipped",
            result.stderr,
        )

    def test_unselected_lane_failure_is_fatal(self) -> None:
        env = full_environment()
        env["FUZZ_RUN"] = "false"
        env["FUZZ"] = "failure"
        result = run_summary(env)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn(
            "unselected snarkpack-fuzz lane returned failure; expected skipped",
            result.stderr,
        )

    def test_slow_lane_selection_tracks_rust_reference(self) -> None:
        env = full_environment()
        env["RUST_REFERENCE_RUN"] = "false"
        env["RUST_REFERENCE"] = "skipped"
        result = run_summary(env)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn(
            "unselected snarkpack-slow lane returned success; expected skipped",
            result.stderr,
        )

    def test_publication_closure_is_required_for_snarkpack(self) -> None:
        env = full_environment()
        env["PUBLICATION"] = "skipped"
        result = run_summary(env)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn("snarkpack-publication=skipped", result.stderr)

    def test_snarkpack_skip_must_not_run_publication(self) -> None:
        env = full_environment()
        select_snarkpack_skip(env)
        env["PUBLICATION"] = "success"
        result = run_summary(env)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn(
            "SnarkPack skip unexpectedly ran publication closure",
            result.stderr,
        )

    def test_snarkpack_skip_must_not_run_any_lane(self) -> None:
        env = full_environment()
        select_snarkpack_skip(env)
        env["SNARKPACK_LEAN"] = "success"
        result = run_summary(env)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn(
            "unselected snarkpack-lean lane returned success; expected skipped",
            result.stderr,
        )

    def test_invalid_selection_is_fatal(self) -> None:
        env = full_environment()
        env["FUZZ_RUN"] = ""
        result = run_summary(env)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn("invalid impact selection", result.stderr)

    def test_missing_input_is_fatal(self) -> None:
        env = full_environment()
        del env["APPLICABILITY"]
        result = run_summary(env)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn("missing workflow result input", result.stderr)


if __name__ == "__main__":
    unittest.main()
