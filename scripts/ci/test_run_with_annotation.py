from __future__ import annotations

import importlib.util
import os
import subprocess
import sys
import unittest
from pathlib import Path


SCRIPT = Path(__file__).with_name("run_with_annotation.py")
SPEC = importlib.util.spec_from_file_location("run_with_annotation", SCRIPT)
assert SPEC is not None and SPEC.loader is not None
WRAPPER = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = WRAPPER
SPEC.loader.exec_module(WRAPPER)


class RunWithAnnotationTests(unittest.TestCase):
    def invoke(
        self, source: str, title: str = "Test failure"
    ) -> subprocess.CompletedProcess[str]:
        return subprocess.run(
            [
                sys.executable,
                str(SCRIPT),
                "--title",
                title,
                "--",
                sys.executable,
                "-c",
                source,
            ],
            capture_output=True,
            text=True,
            encoding="utf-8",
            errors="replace",
            check=False,
        )

    @staticmethod
    def annotation_line(result: subprocess.CompletedProcess[str]) -> str:
        lines = [
            line for line in result.stdout.splitlines() if line.startswith("::error ")
        ]
        if len(lines) != 1:
            raise AssertionError(f"expected one annotation, got {lines!r}")
        return lines[0]

    def test_success_streams_output_without_annotation(self) -> None:
        result = self.invoke("print('ordinary output')")
        self.assertEqual(result.returncode, 0)
        self.assertIn("ordinary output", result.stdout)
        self.assertNotIn("::error ", result.stdout)

    def test_failure_preserves_unusual_exit_status(self) -> None:
        result = self.invoke("print('fatal: broken'); raise SystemExit(37)")
        self.assertEqual(result.returncode, 37)
        self.assertIn("exit status 37", self.annotation_line(result))

    @unittest.skipIf(os.name == "nt", "POSIX signal return codes are not available")
    def test_signal_status_uses_shell_convention(self) -> None:
        result = self.invoke(
            "import os, signal; os.kill(os.getpid(), signal.SIGTERM)"
        )
        self.assertEqual(result.returncode, 128 + 15)
        self.assertIn("exit status 143", self.annotation_line(result))

    def test_annotation_escapes_workflow_delimiters(self) -> None:
        result = self.invoke("print('fatal: 100%, broken'); raise SystemExit(2)")
        line = self.annotation_line(result)
        self.assertIn("fatal%3A 100%25%2C broken", line)
        self.assertIn("%0A", line)
        self.assertNotIn("\x1b", line)

    def test_annotation_redacts_credentials_and_tokens(self) -> None:
        github_token = "ghp_" + "A1" * 20
        jwt = ".".join(("Abcdefgh1234", "Ijklmnop5678", "Qrstuvwx9012"))
        opaque = "aB3dE5fG7hJ9kL2mN4pQ6rS8tU0vW1xY3zC5"
        result = self.invoke(
            "\n".join(
                [
                    "print('error PASSWORD=hunter2')",
                    "print('Authorization: Bearer bearer-secret')",
                    "print('error https://person:password@example.test/path')",
                    f"print('error {github_token}')",
                    f"print('error {jwt}')",
                    f"print('error {opaque}')",
                    "raise SystemExit(1)",
                ]
            )
        )
        line = self.annotation_line(result)
        for secret in (
            "hunter2",
            "bearer-secret",
            "person",
            "password@example",
            github_token,
            jwt,
            opaque,
        ):
            self.assertNotIn(secret, line)
        self.assertIn("[REDACTED]", line)

    def test_annotation_is_bounded_and_keeps_latest_context(self) -> None:
        result = self.invoke(
            "print('\\n'.join(f'error line {i}: ' + 'x' * 200 for i in range(2000))); "
            "print('fatal: final marker'); raise SystemExit(9)"
        )
        line = self.annotation_line(result)
        self.assertLessEqual(
            len((line + "\n").encode("utf-8")), WRAPPER.MAX_ANNOTATION_BYTES
        )
        self.assertIn("final marker", line)
        self.assertIn("truncated", line)

    def test_missing_executable_returns_127_without_leaking_argv(self) -> None:
        missing = "definitely-missing-secret-command-483921"
        result = subprocess.run(
            [
                sys.executable,
                str(SCRIPT),
                "--title",
                "Launch",
                "--",
                missing,
            ],
            capture_output=True,
            text=True,
            encoding="utf-8",
            errors="replace",
            check=False,
        )
        self.assertEqual(result.returncode, 127)
        line = self.annotation_line(result)
        self.assertIn("launch failed", line)
        self.assertNotIn(missing, line)

    def test_empty_failure_has_a_useful_annotation(self) -> None:
        result = self.invoke("raise SystemExit(1)")
        self.assertEqual(result.returncode, 1)
        self.assertIn("produced no output", self.annotation_line(result))

    def test_tail_buffer_never_exceeds_its_limit(self) -> None:
        tail = WRAPPER.ByteTail(limit=8)
        tail.append(b"abcdef")
        tail.append(b"ghijkl")
        self.assertEqual(bytes(tail.data), b"efghijkl")


class FormalWorkflowWiringTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.workflow = (
            SCRIPT.parents[2] / ".github/workflows/formal.yml"
        ).read_text(encoding="utf-8")

    def test_opaque_snarkpack_lanes_use_wrapper(self) -> None:
        for title in (
            "SnarkPack static FV",
            "SnarkPack F*",
            "SnarkPack parity",
            "SnarkPack production Rust suite",
            "SnarkPack independent reference suite",
            "SnarkPack fuzz",
            "SnarkPack DoS",
        ):
            self.assertIn(f'--title "{title}"', self.workflow)
        self.assertIn(
            '--title "SnarkPack extraction ${{ matrix.graph }}"',
            self.workflow,
        )
        self.assertIn(
            '--title "SnarkPack pending Lean modules"',
            self.workflow,
        )
        self.assertIn(
            '--title "SnarkPack slow ${{ matrix.test }}"',
            self.workflow,
        )

    def test_extraction_recovery_remains_failure_only(self) -> None:
        self.assertIn(
            "id: extraction_recovery\n"
            "        if: >-\n"
            "          failure() &&\n"
            "          steps.extraction_compare.outcome == 'failure'",
            self.workflow,
        )
        self.assertIn(
            "snarkpack-extraction-graph-${{ matrix.graph }}-"
            "${{ needs.applicability.outputs.candidate_sha }}-"
            "${{ github.run_attempt }}",
            self.workflow,
        )
        self.assertIn(
            "snarkpack-extraction-merged-"
            "${{ needs.applicability.outputs.candidate_sha }}-"
            "${{ github.run_attempt }}",
            self.workflow,
        )

    def test_formal_caches_have_exact_success_and_progress_keys(self) -> None:
        self.assertIn("snarkpack-extract-v4-", self.workflow)
        self.assertIn("-progress-${{ github.run_id }}-", self.workflow)
        self.assertIn("lean-ipp-v6-", self.workflow)
        self.assertIn("snarkpack-extraction-pass-v1-", self.workflow)
        self.assertIn(
            "steps.extraction_compare.outcome == 'success'",
            self.workflow,
        )
        self.assertIn("steps.lean_build.outcome == 'success'", self.workflow)

    def test_workflow_does_not_mask_diagnostic_failures(self) -> None:
        lines = self.workflow.splitlines()
        for index, line in enumerate(lines):
            if "continue-on-error: true" not in line:
                continue
            nearby = "\n".join(lines[index : index + 4])
            self.assertIn("uses: actions/cache/save@", nearby)

    def test_diagnostic_controls_are_in_the_snarkpack_static_inventory(self) -> None:
        root = SCRIPT.parents[2]
        gate = (
            root / "ci/gates/snarkpack-formal.json"
        ).read_text(encoding="utf-8")
        static_tests = (
            "scripts/ci/test_run_with_annotation.py",
            "scripts/ci/test_snarkpack_lane_fingerprint.py",
            "scripts/ci/test_snarkpack_lean_attestation.py",
        )
        self.assertIn("scripts/ci/run_with_annotation.py", gate)
        runner = (
            root / "scripts/snarkpack-fv.sh"
        ).read_text(encoding="utf-8")
        for static_test in static_tests:
            self.assertIn(static_test, gate)
            self.assertIn(f'python3 "$ROOT/{static_test}"', runner)


if __name__ == "__main__":
    unittest.main()
