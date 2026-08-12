import os
import subprocess
import tempfile
import time
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
SAFE_BUILD = ROOT / "scripts/lean-build-safe.sh"
LEAF_BENCH = ROOT / "scripts/lean-leaf-bench.sh"
FV_LEAN = ROOT / "scripts/fv-lean.sh"


class SafeLeanBuildTests(unittest.TestCase):
    def test_tier_wrapper_names_fast_affected_and_full_explicitly(self) -> None:
        source = FV_LEAN.read_text(encoding="utf-8")
        self.assertIn("fast|affected|full", source)
        self.assertIn('check-lean-circuit-fv.sh" fast', source)
        self.assertIn('check-lean-circuit-fv.sh" affected', source)
        self.assertIn('check-lean-circuit-fv.sh" release', source)

    def test_edit_loop_tiers_exit_before_release_evidence_closure(self) -> None:
        source = (ROOT / "scripts/check-lean-circuit-fv.sh").read_text()
        fast_exit = source.index('lean circuit fv ok (fast)')
        affected_exit = source.index('lean circuit fv ok (affected)')
        evidence_closure = source.index('echo "==> family evidence closure"')
        drift_exit = source.index('lean circuit fv ok (drift)')
        self.assertLess(fast_exit, evidence_closure)
        self.assertLess(affected_exit, evidence_closure)
        self.assertLess(evidence_closure, drift_exit)

    def test_rss_sampler_uses_portable_ps_output_selection(self) -> None:
        for script in (SAFE_BUILD, LEAF_BENCH):
            with self.subTest(script=script.name):
                source = script.read_text(encoding="utf-8")
                self.assertIn("ps -e -o rss= -o pgid=", source)
                self.assertNotIn("ps aux -o pgid=", source)

    def run_with_fake_lake(
        self,
        script: str,
        *,
        environment: dict[str, str] | None = None,
        timeout: float = 10,
    ) -> subprocess.CompletedProcess[str]:
        with tempfile.TemporaryDirectory() as directory:
            fake_bin = Path(directory)
            lake = fake_bin / "lake"
            lake.write_text("#!/usr/bin/env bash\n" + script, encoding="utf-8")
            lake.chmod(0o755)
            env = os.environ.copy()
            env["PATH"] = f"{fake_bin}{os.pathsep}{env['PATH']}"
            env.update(environment or {})
            return subprocess.run(
                [str(SAFE_BUILD), "Test.Module"],
                cwd=ROOT,
                env=env,
                capture_output=True,
                text=True,
                timeout=timeout,
                check=False,
            )

    def test_success_discards_verbose_lake_output(self) -> None:
        result = self.run_with_fake_lake(
            """
i=0
while (( i < 4000 )); do
  printf 'verbose build noise that must stay out of Codex output\\n'
  ((i += 1))
done
printf 'Built Test.Module\\n'
printf 'Build completed successfully.\\n'
"""
        )

        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertLess(len(result.stdout), 500)
        self.assertIn("Built Test.Module", result.stdout)
        self.assertIn("Build completed successfully.", result.stdout)
        self.assertNotIn("verbose build noise", result.stdout)

    def test_failure_returns_only_the_bounded_log_tail(self) -> None:
        result = self.run_with_fake_lake(
            """
i=0
while (( i < 4000 )); do
  printf 'failure noise that must be truncated before tool output\\n'
  ((i += 1))
done
printf 'failure-tail-marker\\n'
exit 23
""",
            environment={"LEAN_BUILD_FAILURE_LOG_BYTES": "128"},
        )

        self.assertEqual(result.returncode, 23)
        self.assertLess(len(result.stdout), 500)
        self.assertLess(len(result.stderr), 1000)
        self.assertIn("failure-tail-marker", result.stdout)
        self.assertIn("failure log truncated", result.stderr)

    def test_time_ceiling_kills_the_build_process_group(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            temp = Path(directory)
            fake_bin = temp / "bin"
            fake_bin.mkdir()
            pid_file = temp / "lake.pid"
            lake = fake_bin / "lake"
            lake.write_text(
                "#!/usr/bin/env bash\n"
                "printf '%s\\n' \"$$\" >\"$LEAN_BUILD_TEST_PID_FILE\"\n"
                "exec sleep 60\n",
                encoding="utf-8",
            )
            lake.chmod(0o755)
            env = os.environ.copy()
            env["PATH"] = f"{fake_bin}{os.pathsep}{env['PATH']}"
            env["LEAN_BUILD_MAX_SECS"] = "1"
            env["LEAN_BUILD_TEST_PID_FILE"] = str(pid_file)

            result = subprocess.run(
                [str(SAFE_BUILD), "Test.Module"],
                cwd=ROOT,
                env=env,
                capture_output=True,
                text=True,
                timeout=10,
                check=False,
            )

            self.assertNotEqual(result.returncode, 0)
            self.assertIn("terminated on time ceiling", result.stderr)
            lake_pid = int(pid_file.read_text(encoding="utf-8"))
            for _ in range(20):
                try:
                    os.kill(lake_pid, 0)
                except ProcessLookupError:
                    break
                time.sleep(0.05)
            else:
                self.fail(f"guarded build process {lake_pid} survived the timeout")


if __name__ == "__main__":
    unittest.main()
