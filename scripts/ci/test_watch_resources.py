import os
import contextlib
import io
from pathlib import Path
import subprocess
import sys
import unittest
from unittest import mock

import watch_resources


class WatchResourcesTests(unittest.TestCase):
    def invoke(self, source: str) -> subprocess.CompletedProcess[str]:
        return subprocess.run(
            [sys.executable, str(Path(__file__).with_name("watch_resources.py")),
             "--title", "Resource check", "--", sys.executable, "-c", source],
            capture_output=True, text=True, check=False,
        )

    def test_success_preserves_command_output_and_reports_only_counters(self):
        result = self.invoke("print('control output')")
        self.assertEqual(result.returncode, 0)
        self.assertIn("control output", result.stdout)
        self.assertIn("::notice title=Runner resources - Resource check::", result.stdout)
        self.assertIn('"disk_available_bytes"', result.stdout)
        self.assertNotIn("control output", result.stdout.split("::notice", 1)[1].splitlines()[0])

    def test_failure_preserves_command_exit_status(self):
        self.assertEqual(self.invoke("raise SystemExit(37)").returncode, 37)

    def test_unavailable_telemetry_does_not_change_command_result(self):
        with (
            mock.patch.object(watch_resources.shutil, "disk_usage", side_effect=OSError),
            mock.patch.object(watch_resources.os, "getloadavg", side_effect=OSError),
            contextlib.redirect_stdout(io.StringIO()) as output,
        ):
            status = watch_resources.run(
                [sys.executable, "-c", "raise SystemExit(37)"], "Resource check"
            )
        self.assertEqual(status, 37)
        self.assertIn('"disk_available_bytes"%3A null', output.getvalue())
        self.assertIn('"load_1m"%3A null', output.getvalue())

    @unittest.skipIf(os.name == "nt", "requires POSIX signals")
    def test_terminated_command_remains_failed(self):
        result = self.invoke("import os, signal; os.kill(os.getpid(), signal.SIGTERM)")
        self.assertEqual(result.returncode, 143)


if __name__ == "__main__":
    unittest.main()
