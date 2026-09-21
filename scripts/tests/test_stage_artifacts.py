import importlib.util
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import Mock, patch

SPEC = importlib.util.spec_from_file_location("stage_artifacts", Path(__file__).resolve().parents[1] / "stage_artifacts.py")
stage = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(stage)


class StagedArtifactsTests(unittest.TestCase):
    def test_default_build_pins_host_target_despite_cargo_environment(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            library = root / "libshieldd.a"
            library.write_bytes(b"fixture")
            event = {"reason": "compiler-artifact", "target": {"name": "shieldd"},
                     "profile": {"debug_assertions": False}, "filenames": [str(library)]}
            process = Mock(stdout=[json.dumps(event)], wait=Mock(return_value=0))
            with patch.dict(stage.os.environ, {"CARGO_BUILD_TARGET": "foreign-target"}), \
                 patch.object(stage.subprocess, "Popen", return_value=process) as spawn, \
                 patch.object(stage.subprocess, "check_output", return_value="host: native-target\n"):
                stage.build("native", root / "out", "a" * 40, None)
            command = spawn.call_args.args[0]
            self.assertIn("--target", command)
            self.assertEqual(command[command.index("--target") + 1], "native-target")
            stage.verify(root / "out", "a" * 40, "native-target")

    def test_manifest_binds_suite_revision_profile_and_bytes(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            files = {}
            for name in ("include/shieldd.h", "lib/libshieldd.a"):
                path = root / name
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_bytes(b"fixture")
                files[name] = stage.digest(path)
            manifest = {"source_revision": "a" * 40, "target": "test", "groups": ["native"],
                        "files": files, "provenance": {"native": {"profile": "release",
                        "debug_assertions": False, "suite": "shieldd-jubjub-pari-v1"}}}
            def write():
                (root / "manifest.json").write_text(json.dumps(manifest))
            write()
            stage.verify(root, "a" * 40, "test")
            for revision, target, profile in (("b" * 40, "test", "release"), ("a" * 40, "other", "release"), ("a" * 40, "test", "ci")):
                with self.assertRaises(ValueError):
                    stage.verify(root, revision, target, profile)
            manifest["provenance"]["native"]["suite"] = "wrong"
            write()
            with self.assertRaises(ValueError): stage.verify(root, "a" * 40, "test")
            manifest["provenance"]["native"]["suite"] = "shieldd-jubjub-pari-v1"
            write()
            (root / "lib/libshieldd.a").write_bytes(b"changed")
            with self.assertRaises(ValueError): stage.verify(root, "a" * 40, "test")
