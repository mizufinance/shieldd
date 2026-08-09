#!/usr/bin/env python3

import importlib.util
import json
import sys
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
RUNNER = ROOT / "scripts/run-fv-specification-tests.py"
sys.path.insert(0, str(RUNNER.parent))
SPEC = importlib.util.spec_from_file_location("fv_test_runner", RUNNER)
assert SPEC is not None and SPEC.loader is not None
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


def event(action: str, test: str) -> str:
    return json.dumps({"Action": action, "Test": test})


class GoExecutionCountsTests(unittest.TestCase):
    def test_accepts_one_parent_pass_with_passing_subtests(self) -> None:
        output = "\n".join(
            (
                event("run", "TestSecurity"),
                event("run", "TestSecurity/first"),
                event("pass", "TestSecurity/first"),
                event("run", "TestSecurity/second"),
                event("pass", "TestSecurity/second"),
                event("pass", "TestSecurity"),
            )
        )
        self.assertEqual(
            MODULE.go_execution_counts(output, "TestSecurity"),
            (1, 0),
        )

    def test_counts_skips_anywhere_under_exact_selector(self) -> None:
        output = "\n".join(
            (
                event("run", "TestSecurity"),
                event("skip", "TestSecurity/adversarial_case"),
                event("pass", "TestSecurity"),
                event("skip", "TestUnrelated"),
            )
        )
        self.assertEqual(
            MODULE.go_execution_counts(output, "TestSecurity"),
            (1, 1),
        )

    def test_counts_top_level_skip_without_parent_pass(self) -> None:
        output = event("skip", "TestSecurity")
        self.assertEqual(
            MODULE.go_execution_counts(output, "TestSecurity"),
            (0, 1),
        )

    def test_rejects_ambiguous_or_invalid_json_events(self) -> None:
        invalid_events = {
            "duplicate key": (
                '{"Action":"run","Action":"pass","Test":"TestSecurity"}',
                "duplicate JSON key",
            ),
            "non-finite number": (
                '{"Action":"run","Test":"TestSecurity","Elapsed":NaN}',
                "non-finite JSON number",
            ),
            "overflowing exponent": (
                '{"Action":"run","Test":"TestSecurity","Elapsed":1e10000}',
                "non-finite JSON number",
            ),
            "unpaired surrogate": (
                '{"Action":"run","Test":"\\ud800"}',
                "unpaired Unicode surrogate",
            ),
            "invalid JSON": (
                '{"Action":"run","Test":"TestSecurity"',
                "invalid JSON",
            ),
        }
        for case, (output, message) in invalid_events.items():
            with self.subTest(case=case):
                with self.assertRaisesRegex(SystemExit, message):
                    MODULE.go_execution_counts(output, "TestSecurity")


class CargoBaseTests(unittest.TestCase):
    def test_binary_target_uses_exact_cargo_bin(self) -> None:
        execution = {
            "build_profile": "default",
            "package": "shieldd-constraint-coverage",
            "cargo_target": "bin:shieldd-constraint-coverage",
            "features": [],
        }
        self.assertEqual(
            MODULE.cargo_base(execution),
            [
                "cargo",
                "test",
                "-p",
                "shieldd-constraint-coverage",
                "--bin",
                "shieldd-constraint-coverage",
            ],
        )

    def test_empty_binary_target_is_rejected(self) -> None:
        execution = {
            "build_profile": "default",
            "package": "shieldd-constraint-coverage",
            "cargo_target": "bin:",
            "features": [],
        }
        with self.assertRaisesRegex(SystemExit, "non-empty binary target"):
            MODULE.cargo_base(execution)


if __name__ == "__main__":
    unittest.main()
