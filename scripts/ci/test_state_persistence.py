import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import unittest


class StatePersistenceTests(unittest.TestCase):
    def test_runs_once_in_current_checkout_with_resolved_registry_and_shared_target(self):
        with tempfile.TemporaryDirectory() as directory:
            work = Path(directory)
            root = work / "repo"
            scripts = root / "scripts/ci"
            scripts.mkdir(parents=True)
            shutil.copyfile(Path(__file__).with_name("check_state_persistence.sh"), scripts / "check_state_persistence.sh")
            tools = work / "bin"
            tools.mkdir()
            cargo = tools / "cargo"
            cargo.write_text(f"#!{sys.executable}\n" + '''import json, os, pathlib, sys
with open(os.environ["REGISTRY_CALLS"], "a") as calls:
    calls.write(json.dumps({"cwd": os.getcwd(), "registry": os.environ["SHIELDD_PARI_KEYS"],
                           "target": os.environ["CARGO_TARGET_DIR"], "args": sys.argv[1:]}) + "\\n")
pathlib.Path(sys.argv[-1]).write_text("committed state")
''')
            cargo.chmod(0o755)
            calls = work / "calls"
            env = dict(os.environ, PATH=str(tools) + os.pathsep + os.environ["PATH"],
                       SHIELDD_PARI_KEYS="target/dev-pari-keys", REGISTRY_CALLS=str(calls))
            subprocess.run(["bash", str(scripts / "check_state_persistence.sh")], cwd=root,
                           env=env, check=True, capture_output=True, text=True)
            invocations = [json.loads(line) for line in calls.read_text().splitlines()]
            self.assertEqual(len(invocations), 1)
            invocation = invocations[0]
            self.assertEqual(Path(invocation["cwd"]), root.resolve())
            self.assertEqual(invocation["registry"], str((root / "target/dev-pari-keys").resolve()))
            self.assertEqual(Path(invocation["target"]).resolve(), root.resolve() / "target")
            self.assertEqual(invocation["args"][:-2],
                             ["run", "--locked", "--profile", "ci", "-p", "shieldd", "--example", "state_persistence", "--"])
            self.assertFalse(Path(invocation["args"][-1]).exists(), "temporary fixture output is cleaned up")


if __name__ == "__main__":
    unittest.main()
