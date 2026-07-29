from __future__ import annotations

import copy
import importlib.util
import json
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import patch


SCRIPT = Path(__file__).with_name("extractions.py")
sys.path.insert(0, str(SCRIPT.parent))
SPEC = importlib.util.spec_from_file_location("extractions", SCRIPT)
assert SPEC and SPEC.loader
EXTRACTIONS = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = EXTRACTIONS
SPEC.loader.exec_module(EXTRACTIONS)


class ExtractionManifestTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.manifest = EXTRACTIONS.load_manifest()

    def validate(self, manifest, *, verify_files: bool = False) -> None:
        EXTRACTIONS.validate_manifest(manifest, verify_files=verify_files)

    def assert_invalid(self, manifest, needle: str, *, verify_files: bool = False) -> None:
        with self.assertRaises(EXTRACTIONS.ManifestError) as raised:
            self.validate(manifest, verify_files=verify_files)
        self.assertIn(needle, str(raised.exception))

    def test_real_manifest_schema_hashes_and_exact_coverage(self):
        self.validate(self.manifest, verify_files=True)
        self.assertEqual(self.manifest["schema_version"], 2)
        outputs = [graph["output"] for graph in self.manifest["graphs"]]
        self.assertEqual(EXTRACTIONS.EXPECTED_GRAPH_COUNT, 37)
        self.assertEqual(len(outputs), EXTRACTIONS.EXPECTED_GRAPH_COUNT)
        self.assertEqual(len(set(outputs)), EXTRACTIONS.EXPECTED_GRAPH_COUNT)
        self.assertEqual(
            {Path(output).name for output in outputs},
            {
                path.name
                for path in (
                    EXTRACTIONS.REPO_ROOT
                    / "crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted"
                ).glob("*Generated.lean")
            },
        )

    def test_canonical_pretty_json_is_enforced(self):
        with tempfile.TemporaryDirectory(prefix="extractions-test-") as directory:
            path = Path(directory) / "manifest.json"
            path.write_text(json.dumps(self.manifest), encoding="utf-8")
            with self.assertRaises(EXTRACTIONS.ManifestError) as raised:
                EXTRACTIONS.load_manifest(path)
            self.assertIn("canonical pretty JSON", str(raised.exception))

    def test_unknown_and_missing_fields_are_rejected_at_each_level(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["unknown"] = True
        self.assert_invalid(manifest, "unknown unknown")

        manifest = copy.deepcopy(self.manifest)
        del manifest["toolchains"]["lean"]
        self.assert_invalid(manifest, "missing lean")

        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["normalization"]["unknown"] = True
        self.assert_invalid(manifest, "unknown unknown")

        manifest = copy.deepcopy(self.manifest)
        del manifest["graphs"][0]["inputs"][0]["sha256"]
        self.assert_invalid(manifest, "missing sha256")

    def test_null_or_non_commit_tool_revisions_are_rejected(self):
        for key, value in (
            ("hax_commit", None),
            ("charon_commit", "unknown"),
            ("aeneas_commit", "e0a1596"),
        ):
            with self.subTest(key=key):
                manifest = copy.deepcopy(self.manifest)
                manifest["toolchains"][key] = value
                self.assert_invalid(manifest, f"toolchains.{key}")

    def test_schema_one_is_rejected(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["schema_version"] = 1
        self.assert_invalid(manifest, "schema_version: expected 2")

    def test_duplicate_ids_and_outputs_are_rejected(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][1]["id"] = manifest["graphs"][0]["id"]
        self.assert_invalid(manifest, "duplicate graph id")

        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][1]["output"] = manifest["graphs"][0]["output"]
        self.assert_invalid(manifest, "duplicate output")

    def test_absolute_backslash_and_parent_paths_are_rejected(self):
        for path in (
            "/tmp/Generated.lean",
            r"C:\tmp\Generated.lean",
            "../Ipp/Extracted/FooGenerated.lean",
        ):
            with self.subTest(path=path):
                manifest = copy.deepcopy(self.manifest)
                manifest["graphs"][0]["output"] = path
                self.assert_invalid(manifest, "output")

    def test_roots_and_features_must_be_sorted(self):
        manifest = copy.deepcopy(self.manifest)
        graph = next(graph for graph in manifest["graphs"] if len(graph["roots"]) > 1)
        graph["roots"] = list(reversed(graph["roots"]))
        self.assert_invalid(manifest, "expected sorted array")

        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["features"] = ["z", "a"]
        self.assert_invalid(manifest, "expected sorted array")

    def test_source_hash_mismatch_is_rejected(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["inputs"][0]["sha256"] = "f" * 64
        self.assert_invalid(manifest, "stale", verify_files=True)

    def test_selected_digest_and_output_normalized_hash_must_match(self):
        manifest = copy.deepcopy(self.manifest)
        del manifest["graphs"][0]["normalization"][
            "selected_raw_declarations_sha256"
        ]
        self.assert_invalid(
            manifest, "missing selected_raw_declarations_sha256"
        )

        for malformed in ("f" * 63, "F" * 64, ["f" * 64]):
            with self.subTest(malformed=malformed):
                manifest = copy.deepcopy(self.manifest)
                manifest["graphs"][0]["normalization"][
                    "selected_raw_declarations_sha256"
                ] = malformed
                self.assert_invalid(
                    manifest, "selected_raw_declarations_sha256"
                )

        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["normalization"]["raw_sha256"] = []
        self.assert_invalid(manifest, "unknown raw_sha256")

        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["normalization"]["normalized_sha256"] = "f" * 64
        self.assert_invalid(manifest, "do not match")

    def test_generated_output_shape_and_exact_record_coverage_are_required(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"].pop()
        self.assert_invalid(
            manifest,
            f"expected {EXTRACTIONS.EXPECTED_GRAPH_COUNT} records",
        )

        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["output"] = (
            "crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted/"
            "AeneasRuntime.lean"
        )
        self.assert_invalid(manifest, "expected Ipp/Extracted/*Generated.lean")

    def test_extraction_command_shape_and_parity_command_are_pinned(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["extractions"][0]["argv"] = ["cargo", "hax"]
        self.assert_invalid(manifest, "expected cargo hax into")

        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["parity"][0]["argv"] = ["cargo", "check"]
        self.assert_invalid(manifest, "expected cargo test")

    def test_shared_runtime_change_affects_every_graph(self):
        changed = SimpleNamespace(stdout=f"{EXTRACTIONS.RUNTIME_REPO_PATH}\n")
        with patch.object(EXTRACTIONS, "_git", return_value=changed):
            self.assertEqual(
                EXTRACTIONS.affected_graph_ids(self.manifest, "base"),
                sorted(graph["id"] for graph in self.manifest["graphs"]),
            )

    def test_shards_are_stable_disjoint_and_cover_the_manifest(self):
        shards = [
            EXTRACTIONS.select_graphs(
                self.manifest, None, shard_index=index, shard_count=4
            )
            for index in range(4)
        ]
        ids = [[graph["id"] for graph in shard] for shard in shards]
        self.assertEqual([len(shard) for shard in ids], [10, 9, 9, 9])
        self.assertEqual(
            len({graph_id for shard in ids for graph_id in shard}),
            EXTRACTIONS.EXPECTED_GRAPH_COUNT,
        )
        self.assertEqual(
            [
                graph["id"]
                for position, graph in enumerate(self.manifest["graphs"])
                if position % 4 == 2
            ],
            ids[2],
        )

    def test_requested_graphs_keep_manifest_position_when_sharded(self):
        requested = [
            self.manifest["graphs"][1]["id"],
            self.manifest["graphs"][4]["id"],
            self.manifest["graphs"][9]["id"],
        ]
        selected = EXTRACTIONS.select_graphs(
            self.manifest, requested, shard_index=1, shard_count=4
        )
        self.assertEqual(
            [graph["id"] for graph in selected],
            [self.manifest["graphs"][1]["id"], self.manifest["graphs"][9]["id"]],
        )

    def test_invalid_shard_arguments_fail_closed(self):
        for index, count, needle in (
            (0, None, "used together"),
            (None, 4, "used together"),
            (0, 0, "positive"),
            (-1, 4, "must be in"),
            (4, 4, "must be in"),
        ):
            with self.subTest(index=index, count=count):
                with self.assertRaises(EXTRACTIONS.ManifestError) as raised:
                    EXTRACTIONS.select_graphs(
                        self.manifest,
                        None,
                        shard_index=index,
                        shard_count=count,
                    )
                self.assertIn(needle, str(raised.exception))

    def test_regenerate_refreshes_selected_graph_input_hashes(self):
        selected = self.manifest["graphs"][0]
        unselected = self.manifest["graphs"][1]
        manifest = copy.deepcopy(self.manifest)
        selected_copy = next(
            graph for graph in manifest["graphs"] if graph["id"] == selected["id"]
        )
        selected_copy["inputs"][0]["sha256"] = "f" * 64
        original_unselected_inputs = copy.deepcopy(
            next(
                graph
                for graph in manifest["graphs"]
                if graph["id"] == unselected["id"]
            )["inputs"]
        )

        with tempfile.TemporaryDirectory(prefix="extractions-test-") as directory:
            repo_root = Path(directory)
            manifest_path = repo_root / "manifest.json"
            for item in selected_copy["inputs"]:
                path = repo_root.joinpath(*Path(item["path"]).parts)
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_bytes(f"current:{item['path']}".encode())
            output = repo_root.joinpath(*Path(selected_copy["output"]).parts)
            output.parent.mkdir(parents=True, exist_ok=True)
            manifest_path.write_bytes(EXTRACTIONS.canonical_json(manifest))
            args = SimpleNamespace(
                update_manifest=True,
                manifest=manifest_path,
                graph=[selected["id"]],
            )

            with (
                patch.object(EXTRACTIONS, "REPO_ROOT", repo_root),
                patch.object(EXTRACTIONS, "validate_manifest"),
                patch.object(
                    EXTRACTIONS,
                    "reproduce_graph",
                    return_value=(b"generated\n", "a" * 64),
                ),
            ):
                EXTRACTIONS.command_regenerate(args)

            updated = EXTRACTIONS.load_manifest(manifest_path)
            updated_selected = next(
                graph
                for graph in updated["graphs"]
                if graph["id"] == selected["id"]
            )
            self.assertEqual(
                [item["sha256"] for item in updated_selected["inputs"]],
                [
                    EXTRACTIONS.sha256_file(
                        repo_root.joinpath(*Path(item["path"]).parts)
                    )
                    for item in selected_copy["inputs"]
                ],
            )
            updated_unselected = next(
                graph
                for graph in updated["graphs"]
                if graph["id"] == unselected["id"]
            )
            self.assertEqual(updated_unselected["inputs"], original_unselected_inputs)

    def test_command_failure_preserves_command_cwd_stdout_and_stderr(self):
        completed = subprocess.CompletedProcess(
            ["git", "status"],
            128,
            stdout="partial stdout\n",
            stderr="fatal: detected dubious ownership\n",
        )
        with patch.object(EXTRACTIONS.subprocess, "run", return_value=completed):
            with self.assertRaises(EXTRACTIONS.ManifestError) as raised:
                EXTRACTIONS.run_command(
                    ["git", "status"],
                    cwd=EXTRACTIONS.REPO_ROOT,
                )
        message = str(raised.exception)
        self.assertIn("git status", message)
        self.assertIn(str(EXTRACTIONS.REPO_ROOT), message)
        self.assertIn("partial stdout", message)
        self.assertIn("detected dubious ownership", message)


if __name__ == "__main__":
    unittest.main()
