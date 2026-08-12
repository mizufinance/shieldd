import hashlib
import importlib.util
import json
from pathlib import Path
import subprocess
import tempfile
import unittest
from unittest import mock


ROOT = Path(__file__).resolve().parents[2]
SPEC = importlib.util.spec_from_file_location(
    "proof_artifacts", ROOT / "scripts" / "proof_artifacts.py"
)
assert SPEC is not None and SPEC.loader is not None
PROOF_ARTIFACTS = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(PROOF_ARTIFACTS)


class ProofArtifactsTest(unittest.TestCase):
    def setUp(self) -> None:
        self.temporary = tempfile.TemporaryDirectory()
        self.addCleanup(self.temporary.cleanup)
        self.root = Path(self.temporary.name)
        self.artifacts = self.root / "tools" / "gnark" / "artifacts"
        family_dir = self.artifacts / "transfer"
        family_dir.mkdir(parents=True)
        self.sr1cs = b"synthetic sr1cs"
        self.proving_key = b"synthetic proving key"
        metadata = {
            "schema": "shieldd.gnark.circuit_metadata.v2",
            "circuit": "transfer",
            "sr1cs_sha256_hex": hashlib.sha256(self.sr1cs).hexdigest(),
            "proving_key_sha256_hex": hashlib.sha256(self.proving_key).hexdigest(),
            "proving_key_size_bytes": len(self.proving_key),
        }
        (family_dir / "circuit_metadata.json").write_text(json.dumps(metadata))
        (family_dir / "transfer.sr1cs").write_bytes(self.sr1cs)
        (family_dir / "proving_key.bin").write_bytes(self.proving_key)
        self.original_repo_root = PROOF_ARTIFACTS.REPO_ROOT
        self.original_artifact_root = PROOF_ARTIFACTS.ARTIFACT_ROOT
        self.original_families = PROOF_ARTIFACTS.FAMILIES
        PROOF_ARTIFACTS.REPO_ROOT = self.root
        PROOF_ARTIFACTS.ARTIFACT_ROOT = self.artifacts
        PROOF_ARTIFACTS.FAMILIES = ("transfer",)
        self.addCleanup(self.restore_globals)

    def restore_globals(self) -> None:
        PROOF_ARTIFACTS.REPO_ROOT = self.original_repo_root
        PROOF_ARTIFACTS.ARTIFACT_ROOT = self.original_artifact_root
        PROOF_ARTIFACTS.FAMILIES = self.original_families

    def test_verify_accepts_metadata_pinned_files(self) -> None:
        PROOF_ARTIFACTS.verify()

    def test_materialize_pulls_only_current_paths(self) -> None:
        sr1cs = self.artifacts / "transfer" / "transfer.sr1cs"
        proving_key = self.artifacts / "transfer" / "proving_key.bin"
        sr1cs.unlink()
        proving_key.unlink()

        def fake_run(command: list[str], **kwargs: object) -> subprocess.CompletedProcess:
            if command[:3] == ["git", "lfs", "pull"]:
                sr1cs.write_bytes(self.sr1cs)
                proving_key.write_bytes(self.proving_key)
            return subprocess.CompletedProcess(command, 0)

        with mock.patch.object(PROOF_ARTIFACTS.subprocess, "run", side_effect=fake_run) as run:
            PROOF_ARTIFACTS.materialize()

        self.assertEqual(
            run.call_args_list[0].args[0],
            ["git", "lfs", "install", "--local", "--skip-smudge"],
        )
        command = run.call_args_list[1].args[0]
        self.assertEqual(command[:3], ["git", "lfs", "pull"])
        self.assertEqual(command[-1], "--exclude=")
        self.assertEqual(
            command[-2],
            "--include=tools/gnark/artifacts/transfer/transfer.sr1cs,"
            "tools/gnark/artifacts/transfer/proving_key.bin",
        )

    def test_materialize_installs_filters_without_pull_when_files_are_valid(self) -> None:
        completed = subprocess.CompletedProcess([], 0)
        with mock.patch.object(
            PROOF_ARTIFACTS.subprocess, "run", return_value=completed
        ) as run:
            PROOF_ARTIFACTS.materialize()
        run.assert_called_once_with(
            ["git", "lfs", "install", "--local", "--skip-smudge"],
            cwd=self.root,
            check=False,
        )

    def test_materialize_rejects_missing_lfs_filters(self) -> None:
        completed = subprocess.CompletedProcess([], 1)
        with mock.patch.object(
            PROOF_ARTIFACTS.subprocess, "run", return_value=completed
        ):
            with self.assertRaisesRegex(
                PROOF_ARTIFACTS.ArtifactError,
                "repository-local filters",
            ):
                PROOF_ARTIFACTS.materialize()


if __name__ == "__main__":
    unittest.main()
