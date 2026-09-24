import importlib.util
import hashlib
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
            manifest = self.manifest_fixture(root)
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


    def manifest_fixture(self, root):
        files = {}
        for name in ("include/shieldd.h", "lib/libshieldd.a"):
            path = root / name
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_bytes(b"fixture")
            files[name] = hashlib.sha256(b"fixture").hexdigest()
        return {"source_revision": "a" * 40, "target": "test", "groups": ["native"],
                "files": files, "provenance": {"native": {"profile": "release",
                "debug_assertions": False, "suite": "shieldd-jubjub-pari-v1"}}}

    def test_sha256_known_answer(self):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "payload"
            path.write_bytes(b"abc")
            self.assertEqual(stage.digest(path),
                "ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad")

    def test_missing_required_deliverable_is_rejected(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            manifest = self.manifest_fixture(root)
            target = root / "manifest.json"
            target.write_text(json.dumps(manifest))
            stage.verify(root, "a" * 40, "test")
            del manifest["files"]["lib/libshieldd.a"]
            target.write_text(json.dumps(manifest))
            with self.assertRaisesRegex(ValueError, "omits required deliverables"):
                stage.verify(root, "a" * 40, "test")

    def test_checksum_matching_external_file_is_rejected(self):
        with tempfile.TemporaryDirectory() as directory:
            outer = Path(directory)
            root = outer / "artifacts"
            root.mkdir()
            manifest = self.manifest_fixture(root)
            target = root / "manifest.json"
            target.write_text(json.dumps(manifest))
            stage.verify(root, "a" * 40, "test")
            outside = outer / "outside.a"
            outside.write_bytes(b"outside fixture")
            manifest["files"]["../outside.a"] = stage.digest(outside)
            target.write_text(json.dumps(manifest))
            with self.assertRaisesRegex(ValueError, "missing or corrupt artifact"):
                stage.verify(root, "a" * 40, "test")

    def test_failed_build_cannot_publish_manifest(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            library = root / "libshieldd.a"
            library.write_bytes(b"fixture")
            event = {"reason": "compiler-artifact", "target": {"name": "shieldd"},
                     "profile": {"debug_assertions": False}, "filenames": [str(library)]}
            process = Mock(stdout=[json.dumps(event)], wait=Mock(return_value=1))
            with patch.object(stage.subprocess, "Popen", return_value=process):
                with self.assertRaisesRegex(RuntimeError, "artifact build failed"):
                    stage.build("native", root / "out", "a" * 40, "test")
            self.assertFalse((root / "out" / "manifest.json").exists())
