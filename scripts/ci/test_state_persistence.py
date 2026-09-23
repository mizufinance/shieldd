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
if pathlib.Path(sys.argv[0]).name == "cargo":
    binary = pathlib.Path(os.environ["CARGO_TARGET_DIR"]) / "ci/examples/state_persistence"
    binary.parent.mkdir(parents=True, exist_ok=True)
    binary.write_text(pathlib.Path(__file__).read_text())
    binary.chmod(0o755)
else:
    pathlib.Path(sys.argv[2]).write_text("committed state")
''')
            cargo.chmod(0o755)
            calls = work / "calls"
            env = dict(os.environ, PATH=str(tools) + os.pathsep + os.environ["PATH"],
                       SHIELDD_PARI_KEYS="target/dev-pari-keys", REGISTRY_CALLS=str(calls))
            subprocess.run(["bash", str(scripts / "check_state_persistence.sh")], cwd=root,
                           env=env, check=True, capture_output=True, text=True)
            invocations = [json.loads(line) for line in calls.read_text().splitlines()]
            self.assertEqual(len(invocations), 2)
            invocation = invocations[0]
            self.assertEqual(Path(invocation["cwd"]), root.resolve())
            self.assertEqual(invocation["registry"], str((root / "target/dev-pari-keys").resolve()))
            self.assertEqual(Path(invocation["target"]).resolve(), root.resolve() / "target")
            self.assertEqual(invocation["args"],
                             ["test", "--locked", "--profile", "ci", "--workspace", "--all-features", "--no-run"])
            database, output = map(Path, invocations[1]["args"])
            self.assertEqual(database.name, "db")
            self.assertEqual(output.name, "result")
            self.assertEqual(database.parent, output.parent)
            self.assertFalse(output.parent.exists(), "temporary fixture directory is cleaned up")


if __name__ == "__main__":
    unittest.main()
