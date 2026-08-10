import subprocess
import tempfile
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
SAMPLER = ROOT / "scripts/linux-process-group-rss.py"


class LinuxProcessGroupRssTests(unittest.TestCase):
    def write_process(
        self,
        proc_root: Path,
        pid: int,
        *,
        command: str,
        process_group: int,
        rss_kb: int | None,
    ) -> None:
        process = proc_root / str(pid)
        process.mkdir()
        (process / "stat").write_text(
            f"{pid} ({command}) S 1 {process_group} 0 0 0\n",
            encoding="utf-8",
        )
        status = f"Name:\t{command}\n"
        if rss_kb is not None:
            status += f"VmRSS:\t{rss_kb} kB\n"
        (process / "status").write_text(status, encoding="utf-8")

    def sample(self, proc_root: Path, process_group: int) -> subprocess.CompletedProcess[str]:
        return subprocess.run(
            [
                "python3",
                str(SAMPLER),
                str(process_group),
                "--proc-root",
                str(proc_root),
            ],
            cwd=ROOT,
            capture_output=True,
            text=True,
            check=False,
        )

    def test_sums_only_the_selected_process_group(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            proc_root = Path(directory)
            self.write_process(
                proc_root,
                101,
                command="lake worker",
                process_group=777,
                rss_kb=125,
            )
            self.write_process(
                proc_root,
                102,
                command="lean) worker",
                process_group=777,
                rss_kb=250,
            )
            self.write_process(
                proc_root,
                103,
                command="unrelated",
                process_group=999,
                rss_kb=1000,
            )

            result = self.sample(proc_root, 777)

            self.assertEqual(result.returncode, 0, result.stderr)
            self.assertEqual(result.stdout, "375\n")

    def test_process_without_resident_memory_is_ignored(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            proc_root = Path(directory)
            self.write_process(
                proc_root,
                101,
                command="exited",
                process_group=777,
                rss_kb=None,
            )

            result = self.sample(proc_root, 777)

            self.assertEqual(result.returncode, 0, result.stderr)
            self.assertEqual(result.stdout, "0\n")


if __name__ == "__main__":
    unittest.main()
