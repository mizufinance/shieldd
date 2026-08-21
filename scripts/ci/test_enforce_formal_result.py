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
            "APPLICABILITY": "success",
            "SNARKPACK_STATUS": "run",
            "SNARKPACK_TIER": "full",
            "SNARKPACK_EXPLANATION": "selected",
            "STATIC_RUN": "true",
            "EXTRACT_RUN": "true",
            "EXTRACT_CACHE_HIT": "",
            "SNARKPACK_LEAN_RUN": "true",
            "FSTAR_RUN": "true",
            "FSTAR_FORCE_ALL": "false",
            "FSTAR_CACHE_HIT": "",
            "PARITY_RUN": "true",
            "PARITY_CACHE_HIT": "",
            "RUST_REFERENCE_RUN": "true",
            "FUZZ_RUN": "true",
            "DOS_RUN": "true",
            "RUNTIME_CACHE_HIT": "",
            "SOUNDNESS_STATUS": "run",
            "SOUNDNESS_TIER": "full",
            "SOUNDNESS_EXPLANATION": "selected",
            "STATIC": "success",
            "EXTRACT": "success",
            "FSTAR": "success",
            "PARITY": "success",
            "RUNTIME": "success",
            "PUBLICATION": "success",
            "POLICY": "skipped",
            "ARTIFACTS": "success",
            "GATE": "success",
            "SEAM": "success",
            "ALLOY": "success",
            "REPLAY": "success",
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
    env["FSTAR_FORCE_ALL"] = "false"
    env["EXTRACT_CACHE_HIT"] = ""
    env["FSTAR_CACHE_HIT"] = ""
    env["PARITY_CACHE_HIT"] = ""
    env["RUNTIME_CACHE_HIT"] = ""
    for name in (
        "STATIC",
        "EXTRACT",
        "FSTAR",
        "PARITY",
        "RUNTIME",
        "PUBLICATION",
    ):
        env[name] = "skipped"
    for name in ("POLICY", "ARTIFACTS", "GATE", "SEAM", "ALLOY", "REPLAY"):
        env[name] = "skipped"


class EnforceFormalResultTests(unittest.TestCase):
    def test_full_success_passes(self) -> None:
        result = run_summary(full_environment())
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertIn("formal passed", result.stdout)

    def test_pr_soundness_skips_deferred_replay(self) -> None:
        env = full_environment()
        env["SOUNDNESS_TIER"] = "pr"
        env["REPLAY"] = "skipped"
        result = run_summary(env)
        self.assertEqual(result.returncode, 0, result.stderr)

        env["REPLAY"] = "success"
        result = run_summary(env)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn("PR soundness unexpectedly ran", result.stderr)

    def test_scheduled_full_run_requires_alloy(self) -> None:
        env = full_environment()
        result = run_summary(env)
        self.assertEqual(result.returncode, 0, result.stderr)

        env["ALLOY"] = "skipped"
        result = run_summary(env)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn("soundness-alloy=skipped", result.stderr)

    def test_soundness_policy_runs_no_heavy_lane(self) -> None:
        env = full_environment()
        env["SOUNDNESS_TIER"] = "policy"
        env["POLICY"] = "success"
        for name in ("ARTIFACTS", "GATE", "SEAM", "ALLOY", "REPLAY"):
            env[name] = "skipped"
        result = run_summary(env)
        self.assertEqual(result.returncode, 0, result.stderr)

        env["GATE"] = "success"
        result = run_summary(env)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn("soundness policy unexpectedly ran", result.stderr)

    def test_explained_skip_requires_no_snarkpack_lane(self) -> None:
        env = full_environment()
        select_snarkpack_skip(env)
        result = run_summary(env)
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertIn("snarkpack explained skip", result.stdout)

    def test_selected_failure_is_fatal(self) -> None:
        env = full_environment()
        env["RUNTIME"] = "failure"
        result = run_summary(env)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn("snarkpack-runtime=failure", result.stderr)

    def test_runtime_lane_is_required_with_rust_reference(self) -> None:
        env = full_environment()
        env["RUNTIME"] = "skipped"
        result = run_summary(env)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn("snarkpack-runtime=skipped", result.stderr)

    def test_exact_cache_hits_skip_compute_lanes(self) -> None:
        env = full_environment()
        env["EXTRACT_CACHE_HIT"] = "true"
        env["FSTAR_CACHE_HIT"] = "true"
        env["PARITY_CACHE_HIT"] = "true"
        env["RUNTIME_CACHE_HIT"] = "true"
        env["FSTAR"] = "skipped"
        env["EXTRACT"] = "skipped"
        env["PARITY"] = "skipped"
        env["RUNTIME"] = "skipped"
        result = run_summary(env)
        self.assertEqual(result.returncode, 0, result.stderr)

    def test_cached_lane_must_actually_skip_compute(self) -> None:
        env = full_environment()
        env["RUNTIME_CACHE_HIT"] = "true"
        result = run_summary(env)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn(
            "cached snarkpack-runtime lane returned success; expected skipped",
            result.stderr,
        )

    def test_forced_fstar_ignores_exact_cache(self) -> None:
        env = full_environment()
        env["FSTAR_FORCE_ALL"] = "true"
        result = run_summary(env)
        self.assertEqual(result.returncode, 0, result.stderr)

        env["FSTAR_CACHE_HIT"] = "true"
        env["FSTAR"] = "skipped"
        result = run_summary(env)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn("incorrectly served from cache", result.stderr)

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
        env["RUST_REFERENCE_RUN"] = "false"
        env["FUZZ_RUN"] = "false"
        env["DOS_RUN"] = "false"
        env["RUNTIME"] = "failure"
        result = run_summary(env)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn(
            "unselected snarkpack-runtime lane returned failure; expected skipped",
            result.stderr,
        )

    def test_runtime_lane_selection_tracks_all_runtime_modes(self) -> None:
        env = full_environment()
        env["RUST_REFERENCE_RUN"] = "false"
        env["FUZZ_RUN"] = "false"
        env["DOS_RUN"] = "false"
        result = run_summary(env)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn(
            "unselected snarkpack-runtime lane returned success; expected skipped",
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
        env["RUNTIME"] = "success"
        result = run_summary(env)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn(
            "unselected snarkpack-runtime lane returned success; expected skipped",
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
