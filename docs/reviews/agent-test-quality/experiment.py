"""Run bounded test-quality experiments in disposable copies; never edit the repo."""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess
import sys
import tempfile

EXTRA_TESTS = '''

    def manifest_fixture(self, root):
        files = {}
        for name in ("include/shieldd.h", "lib/libshieldd.a"):
            path = root / name
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_bytes(b"fixture")
            files[name] = stage.digest(path)
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
'''

MUTATIONS = {
    "sha1_instead_of_sha256": ('hashlib.file_digest(source, "sha256")', 'hashlib.file_digest(source, "sha1")'),
    "omit_required_deliverables_check": ('    if not required.issubset(manifest["files"]):\n        raise ValueError("artifact manifest omits required deliverables")\n', ''),
    "omit_path_containment_check": ('not path.is_relative_to(directory.resolve()) or ', ''),
    "ignore_failed_build_exit": ('    if process.wait():\n        raise RuntimeError("artifact build failed")\n', '    process.wait()\n'),
    "omit_revision_check": ('    if manifest["source_revision"] != expected:\n        raise ValueError("artifact source revision does not match the selected Shieldd commit")\n', ''),
    "omit_suite_check": ('        if record.get("suite") != "shieldd-jubjub-pari-v1":\n            raise ValueError("artifact cryptographic suite mismatch")\n', ''),
    "omit_checksum_check": (' or digest(path) != checksum', ''),
}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo", required=True, type=Path)
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args()
    repo = args.repo.resolve()
    args.output.mkdir(parents=True, exist_ok=True)
    source_path = Path("scripts/stage_artifacts.py")
    test_path = Path("scripts/tests/test_stage_artifacts.py")
    header_path = Path("crates/bin/shieldd/include/shieldd.h")
    originals = {p: (repo / p).read_bytes() for p in (source_path, test_path, header_path)}
    source = originals[source_path].decode()
    results = []
    for name, mutation in [("baseline", None), *MUTATIONS.items()]:
        candidate = source
        if mutation:
            old, new = mutation
            assert source.count(old) == 1, name
            candidate = source.replace(old, new)
        for strengthened in (False, True):
            with tempfile.TemporaryDirectory(prefix="shieldd-test-mutant-") as directory:
                root = Path(directory)
                for path, contents in originals.items():
                    (root / path).parent.mkdir(parents=True, exist_ok=True)
                    (root / path).write_bytes(contents)
                (root / source_path).write_text(candidate)
                if strengthened:
                    (root / test_path).write_text(originals[test_path].decode() + EXTRA_TESTS)
                command = [sys.executable, "-B", "-m", "unittest", "discover", "-s", "scripts/tests", "-p", "test_stage_artifacts.py", "-v"]
                run = subprocess.run(command, cwd=root, capture_output=True, text=True, timeout=30)
                label = name + ("-strengthened" if strengthened else "-existing")
                log = label + ".log"
                (args.output / log).write_text(run.stdout + run.stderr)
                results.append({"variant": name, "suite": "strengthened" if strengthened else "existing", "exit_code": run.returncode, "log": log})
                print(label, "PASS" if run.returncode == 0 else "FAIL", flush=True)
    for path, contents in originals.items():
        assert (repo / path).read_bytes() == contents, f"source changed: {path}"
    manifest = {"source_sha256": {str(p): hashlib.sha256(b).hexdigest() for p, b in originals.items()}, "mutations": MUTATIONS, "results": results,
                "scope": "Seven hand-selected staging-script mutants; no Rust, proof or repository-wide mutation campaign. Additional tests exist only in temporary experiment copies."}
    (args.output / "results.json").write_text(json.dumps(manifest, indent=2) + "\n")


if __name__ == "__main__":
    main()
