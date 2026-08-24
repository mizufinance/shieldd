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

    def test_annotation_redacts_credentials_and_tokens(self) -> None:
        token = "ghp_" + "A1" * 20
        result = self.invoke(
            f"print('error PASSWORD=hunter2 {token}'); raise SystemExit(1)"
        )
        line = self.annotation_line(result)
        self.assertNotIn("hunter2", line)
        self.assertNotIn(token, line)
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

    def test_empty_failure_has_a_useful_annotation(self) -> None:
        result = self.invoke("raise SystemExit(1)")
        self.assertEqual(result.returncode, 1)
        self.assertIn("produced no output", self.annotation_line(result))

    def test_tail_buffer_never_exceeds_its_limit(self) -> None:
        tail = WRAPPER.ByteTail(limit=8)
        tail.append(b"abcdef")
        tail.append(b"ghijkl")
        self.assertEqual(bytes(tail.data), b"efghijkl")


if __name__ == "__main__":
    unittest.main()
