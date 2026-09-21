from pathlib import Path
import subprocess
import unittest

ROOT = Path(__file__).resolve().parents[2]

class OrbisRuntimeTest(unittest.TestCase):
    def test_pinned_decaf_runtime_is_rejected_before_startup(self):
        result = subprocess.run(
            ["bash", "-c", 'source "$1"; ensure_orbis_images', "orbis-runtime", str(ROOT / "scripts/lib/common.sh")],
            cwd=ROOT, capture_output=True, text=True,
        )
        self.assertNotEqual(result.returncode, 0)
        self.assertIn("decaf377", result.stdout + result.stderr)
        self.assertIn("BLS12-381", result.stdout + result.stderr)

if __name__ == "__main__": unittest.main()
