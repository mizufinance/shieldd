from __future__ import annotations

import copy
import hashlib
import importlib.util
import sys
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch


SCRIPT = Path(__file__).with_name(
    "snarkpack_extraction_attestation.py"
)
SPEC = importlib.util.spec_from_file_location(
    "snarkpack_extraction_attestation_test_dependency",
    SCRIPT,
)
assert SPEC and SPEC.loader
ATTESTATION = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = ATTESTATION
SPEC.loader.exec_module(ATTESTATION)
EXTRACTIONS = ATTESTATION.EXTRACTIONS


class SnarkPackExtractionAttestationTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.manifest = copy.deepcopy(EXTRACTIONS.load_manifest())
        for graph in cls.manifest["graphs"]:
            graph.setdefault("source_sha256", "0" * 64)

    @staticmethod
    def source_snapshot(graph) -> dict[str, str]:
        return {
            "git:HEAD": "a" * 40,
            "recipe:graph": EXTRACTIONS.extraction_recipe_sha256(graph),
            "crate/src/lib.rs": "b" * 64,
        }

    @staticmethod
    def write_controls(repo_root: Path) -> None:
        for relative in EXTRACTIONS.CI_ATTESTATION_PATHS:
            control = repo_root.joinpath(*Path(relative).parts)
            control.parent.mkdir(parents=True, exist_ok=True)
            control.write_text(f"{relative}\n", encoding="utf-8")

    def recovery_fixture(self, repo_root: Path):
        manifest = copy.deepcopy(self.manifest)
        graph = manifest["graphs"][0]
        content = b"future imported generated output\n"
        input_hashes = ["c" * 64 for _item in graph["inputs"]]
        source_snapshot = self.source_snapshot(graph)
        record = EXTRACTIONS._recovery_record(
            manifest=manifest,
            graph=graph,
            source_snapshot=source_snapshot,
            input_hashes=input_hashes,
            content=content,
            selected_digest="d" * 64,
        )
        artifact = repo_root / "artifact"
        EXTRACTIONS._write_recovery_artifact(
            artifact,
            record=record,
            output_content=content,
        )
        return (
            manifest,
            graph,
            content,
            input_hashes,
            source_snapshot,
            record,
            artifact,
        )

    def test_recovery_key_matches_exact_post_import_key(self) -> None:
        with tempfile.TemporaryDirectory(
            prefix="snarkpack-extraction-attestation-"
        ) as directory:
            repo_root = Path(directory)
            self.write_controls(repo_root)
            (
                manifest,
                graph,
                content,
                input_hashes,
                source_snapshot,
                record,
                artifact,
            ) = self.recovery_fixture(repo_root)

            with (
                patch.object(EXTRACTIONS, "REPO_ROOT", repo_root),
                patch.object(
                    EXTRACTIONS,
                    "current_graph_source_snapshot",
                    return_value=source_snapshot,
                ),
                patch.object(
                    EXTRACTIONS,
                    "current_input_hashes",
                    return_value=input_hashes,
                ),
            ):
                future = ATTESTATION.recovery_fingerprint(
                    manifest, artifact
                )

                updated_manifest = copy.deepcopy(manifest)
                updated_graph = updated_manifest["graphs"][0]
                EXTRACTIONS._apply_recovery_record(
                    updated_graph, record
                )
                output_path = repo_root.joinpath(
                    *Path(updated_graph["output"]).parts
                )
                output_path.parent.mkdir(parents=True, exist_ok=True)
                output_path.write_bytes(content)
                with patch.object(
                    EXTRACTIONS,
                    "current_graph_source_sha256",
                    return_value=record["source_sha256"],
                ):
                    current = ATTESTATION.current_fingerprint(
                        updated_manifest, graph["id"]
                    )

            self.assertEqual(future, current)

    def test_recovery_key_rejects_source_and_input_drift(self) -> None:
        with tempfile.TemporaryDirectory(
            prefix="snarkpack-extraction-attestation-"
        ) as directory:
            repo_root = Path(directory)
            self.write_controls(repo_root)
            (
                manifest,
                graph,
                _content,
                input_hashes,
                source_snapshot,
                _record,
                artifact,
            ) = self.recovery_fixture(repo_root)
            drifted_snapshot = dict(source_snapshot)
            drifted_snapshot["crate/src/lib.rs"] = "e" * 64

            with (
                patch.object(EXTRACTIONS, "REPO_ROOT", repo_root),
                patch.object(
                    EXTRACTIONS,
                    "current_graph_source_snapshot",
                    return_value=drifted_snapshot,
                ),
                patch.object(
                    EXTRACTIONS,
                    "current_input_hashes",
                    return_value=input_hashes,
                ),
                self.assertRaises(
                    EXTRACTIONS.ManifestError
                ) as source_error,
            ):
                ATTESTATION.recovery_fingerprint(manifest, artifact)
            self.assertIn(
                "source changed before CI attestation",
                str(source_error.exception),
            )

            with (
                patch.object(EXTRACTIONS, "REPO_ROOT", repo_root),
                patch.object(
                    EXTRACTIONS,
                    "current_graph_source_snapshot",
                    return_value=source_snapshot,
                ),
                patch.object(
                    EXTRACTIONS,
                    "current_input_hashes",
                    return_value=[
                        "e" * 64 for _item in graph["inputs"]
                    ],
                ),
                self.assertRaises(
                    EXTRACTIONS.ManifestError
                ) as input_error,
            ):
                ATTESTATION.recovery_fingerprint(manifest, artifact)
            self.assertIn(
                "declared inputs changed before CI attestation",
                str(input_error.exception),
            )

    def test_attestation_key_binds_ci_wrapper_bytes(self) -> None:
        base = "f" * 64
        expected = hashlib.sha256(
            EXTRACTIONS.canonical_json(
                {
                    "schema_version": 1,
                    "base_fingerprint": base,
                    "attestation_script_sha256": hashlib.sha256(
                        SCRIPT.read_bytes()
                    ).hexdigest(),
                }
            )
        ).hexdigest()
        self.assertEqual(
            ATTESTATION._attested_fingerprint(base), expected
        )


if __name__ == "__main__":
    unittest.main()
