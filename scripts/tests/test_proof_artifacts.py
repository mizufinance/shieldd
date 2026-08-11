import hashlib
import importlib.util
import json
from pathlib import Path
import tempfile
import unittest
import zipfile


ROOT = Path(__file__).resolve().parents[2]
SPEC = importlib.util.spec_from_file_location(
    "proof_artifacts", ROOT / "scripts" / "proof_artifacts.py"
)
assert SPEC is not None and SPEC.loader is not None
PROOF_ARTIFACTS = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(PROOF_ARTIFACTS)


class ProofArtifactBundleTest(unittest.TestCase):
    def setUp(self) -> None:
        self.temporary = tempfile.TemporaryDirectory()
        self.addCleanup(self.temporary.cleanup)
        self.root = Path(self.temporary.name)
        self.artifacts = self.root / "artifacts"
        family_dir = self.artifacts / "transfer"
        family_dir.mkdir(parents=True)
        self.sr1cs = b"synthetic sr1cs"
        self.proving_key = b"synthetic proving key"
        metadata = {
            "schema": "shieldd.gnark.circuit_metadata.v2",
            "circuit": "transfer",
            "sr1cs_sha256_hex": hashlib.sha256(self.sr1cs).hexdigest(),
            "proving_key_sha256_hex": hashlib.sha256(
                self.proving_key
            ).hexdigest(),
            "proving_key_size_bytes": len(self.proving_key),
        }
        (family_dir / "circuit_metadata.json").write_text(json.dumps(metadata))
        (family_dir / "transfer.sr1cs").write_bytes(self.sr1cs)
        (family_dir / "proving_key.bin").write_bytes(self.proving_key)
        self.config = self.artifacts / "current-bundle.json"
        self.config.write_text(
            json.dumps(
                {
                    "schema": PROOF_ARTIFACTS.SCHEMA,
                    "repository": "example/shieldd",
                    "release_tag": "current",
                    "asset": "proofs.zip",
                    "families": ["transfer"],
                }
            )
        )
        self.original_artifact_root = PROOF_ARTIFACTS.ARTIFACT_ROOT
        self.original_bundle_config = PROOF_ARTIFACTS.BUNDLE_CONFIG
        PROOF_ARTIFACTS.ARTIFACT_ROOT = self.artifacts
        PROOF_ARTIFACTS.BUNDLE_CONFIG = self.config
        self.addCleanup(self.restore_globals)

    def restore_globals(self) -> None:
        PROOF_ARTIFACTS.ARTIFACT_ROOT = self.original_artifact_root
        PROOF_ARTIFACTS.BUNDLE_CONFIG = self.original_bundle_config

    def test_pack_and_materialize_round_trip(self) -> None:
        archive = self.root / "proofs.zip"
        PROOF_ARTIFACTS.pack(archive)
        (self.artifacts / "transfer" / "transfer.sr1cs").unlink()
        (self.artifacts / "transfer" / "proving_key.bin").unlink()

        PROOF_ARTIFACTS.materialize(archive)

        self.assertEqual(
            (self.artifacts / "transfer" / "transfer.sr1cs").read_bytes(),
            self.sr1cs,
        )
        self.assertEqual(
            (self.artifacts / "transfer" / "proving_key.bin").read_bytes(),
            self.proving_key,
        )

    def test_archive_rejects_unexpected_members(self) -> None:
        archive = self.root / "proofs.zip"
        with zipfile.ZipFile(archive, "w") as bundle:
            bundle.writestr("unexpected", b"data")

        with tempfile.TemporaryDirectory() as destination:
            with self.assertRaises(PROOF_ARTIFACTS.ArtifactError):
                PROOF_ARTIFACTS.validate_archive(archive, Path(destination))


if __name__ == "__main__":
    unittest.main()
