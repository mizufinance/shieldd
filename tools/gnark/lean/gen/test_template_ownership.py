from __future__ import annotations

import copy
import json
import os
import tempfile
import time
import unittest
from pathlib import Path
from unittest import mock

import gen_template_ownership as ownership
from write_if_changed import write_if_changed


class TemplateOwnershipTests(unittest.TestCase):
    def write_repo_json(self, payload: object, name: str) -> tuple[tempfile.TemporaryDirectory, Path]:
        directory = tempfile.TemporaryDirectory(dir=ownership.ROOT)
        path = Path(directory.name) / name
        path.write_text(
            json.dumps(payload, indent=2) + "\n", encoding="utf-8"
        )
        return directory, path

    def test_every_active_template_has_exact_owned_bytes(self) -> None:
        rendered = ownership.render()
        active_ids = set()
        for path in ownership.certified_ir_paths():
            ir = json.loads(path.read_text())
            active_ids.update(
                segment["proof_template_id"]
                for segment in ir["segments"]
                if segment["constraint_count"] > 0
            )
        self.assertEqual(
            {item["proof_template_id"] for item in rendered["templates"]},
            active_ids,
        )
        for item in rendered["templates"]:
            self.assertTrue(item["files"], item["proof_template_id"])
            self.assertEqual(
                item["template_files_sha256_hex"],
                ownership.aggregate(item["files"]),
            )

    def test_family_closure_uses_only_consumed_templates(self) -> None:
        rendered = ownership.render()
        certified = {
            json.loads(path.read_text())["circuit"]
            for path in ownership.certified_ir_paths()
        }
        self.assertEqual(
            {family["circuit"] for family in rendered["families"]},
            certified,
        )
        for family in rendered["families"]:
            self.assertTrue(family["proof_template_ids"], family["circuit"])
            self.assertEqual(
                len(family["proof_template_ids"]),
                len(set(family["proof_template_ids"])),
            )

    def test_explicit_ir_set_controls_ownership_closure(self) -> None:
        path = ownership.certified_ir_paths()[0]
        ir = json.loads(path.read_text())
        rendered = ownership.render((path,))
        self.assertEqual(
            [family["circuit"] for family in rendered["families"]],
            [ir["circuit"]],
        )
        expected_ids = {
            segment["proof_template_id"]
            for segment in ir["segments"]
            if segment["constraint_count"] > 0
        }
        self.assertEqual(
            {item["proof_template_id"] for item in rendered["templates"]},
            expected_ids,
        )
        self.assertTrue(
            all(
                item["consumers"] == [ir["circuit"]]
                for item in rendered["templates"]
            )
        )

    def test_identical_manifest_write_preserves_mtime(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "ownership.json"
            source = ownership.encoded()
            self.assertTrue(write_if_changed(path, source))
            first = path.stat().st_mtime_ns
            time.sleep(0.02)
            self.assertFalse(write_if_changed(path, source))
            self.assertEqual(path.stat().st_mtime_ns, first)

    def test_committed_validator_recomputes_all_canonical_bytes(self) -> None:
        committed = ownership.render()
        with tempfile.TemporaryDirectory(dir=ownership.ROOT) as directory:
            baseline = Path(directory) / "proof-template-ownership.json"
            baseline.write_text(
                json.dumps(committed, indent=2) + "\n", encoding="utf-8"
            )
            self.assertEqual(
                ownership.validate_committed_ownership(baseline), committed
            )
        mutations = []
        stale_file = copy.deepcopy(committed)
        stale_file["templates"][0]["files"][0]["sha256_hex"] = "0" * 64
        mutations.append(stale_file)
        stale_template = copy.deepcopy(committed)
        stale_template["templates"][0]["template_files_sha256_hex"] = "0" * 64
        mutations.append(stale_template)
        stale_family = copy.deepcopy(committed)
        stale_family["families"][0]["semantic_closure_sha256_hex"] = "0" * 64
        mutations.append(stale_family)
        for index, drifted in enumerate(mutations):
            with self.subTest(index=index):
                with tempfile.TemporaryDirectory(
                    dir=ownership.ROOT
                ) as directory:
                    path = Path(directory) / "proof-template-ownership.json"
                    path.write_text(
                        json.dumps(drifted, indent=2) + "\n",
                        encoding="utf-8",
                    )
                    with self.assertRaisesRegex(
                        ValueError, "stale or non-canonical"
                    ):
                        ownership.validate_committed_ownership(path)

        changed_path = (
            ownership.ROOT
            / committed["templates"][0]["files"][0]["path"]
        )
        original_sha256 = ownership.sha256

        def changed_sha256(path: Path) -> str:
            if path == changed_path:
                return "0" * 64
            return original_sha256(path)

        with mock.patch.object(
            ownership, "sha256", side_effect=changed_sha256
        ):
            with tempfile.TemporaryDirectory(dir=ownership.ROOT) as directory:
                baseline = Path(directory) / "proof-template-ownership.json"
                baseline.write_text(
                    json.dumps(committed, indent=2) + "\n",
                    encoding="utf-8",
                )
                with self.assertRaisesRegex(
                    ValueError, "stale or non-canonical"
                ):
                    ownership.validate_committed_ownership(baseline)

    def test_profile_catalog_is_an_exact_four_circuit_contract(self) -> None:
        catalog = ownership.load_catalog()
        mutations = []
        missing_field = copy.deepcopy(catalog)
        missing_field["profiles"][0].pop("theorem_root")
        mutations.append(missing_field)
        extra_field = copy.deepcopy(catalog)
        extra_field["profiles"][0]["alias"] = "retired_profile"
        mutations.append(extra_field)
        missing_profile = copy.deepcopy(catalog)
        missing_profile["profiles"].pop()
        mutations.append(missing_profile)
        uncertified = copy.deepcopy(catalog)
        uncertified["profiles"][0]["status"] = "experimental"
        mutations.append(uncertified)
        reordered = copy.deepcopy(catalog)
        reordered["profiles"][0], reordered["profiles"][1] = (
            reordered["profiles"][1],
            reordered["profiles"][0],
        )
        mutations.append(reordered)
        for index, mutation in enumerate(mutations):
            with self.subTest(index=index):
                directory, path = self.write_repo_json(
                    mutation, f"catalog-{index}.json"
                )
                try:
                    with self.assertRaises(ValueError):
                        ownership.load_catalog(path)
                finally:
                    directory.cleanup()

    def test_catalog_and_registry_reject_noncanonical_json(self) -> None:
        with tempfile.TemporaryDirectory(dir=ownership.ROOT) as directory:
            duplicate = Path(directory) / "duplicate.json"
            duplicate.write_text(
                '{"schema":"x","schema":"y","profiles":[]}',
                encoding="utf-8",
            )
            with self.assertRaisesRegex(ValueError, "duplicate JSON key"):
                ownership.load_catalog(duplicate)
            nonfinite = Path(directory) / "nonfinite.json"
            nonfinite.write_text(
                '{"schema":"shieldd.gnark.proof_template_registry.v1",'
                '"field_modulus":NaN,"templates":[]}',
                encoding="utf-8",
            )
            with self.assertRaisesRegex(ValueError, "non-finite JSON"):
                ownership.load_registry(nonfinite)

    def test_registry_schema_and_canonical_relation_paths_are_exact(self) -> None:
        registry = ownership.load_registry()
        mutations = []
        extra_field = copy.deepcopy(registry)
        extra_field["templates"][0]["alias"] = "relation"
        mutations.append(extra_field)
        path_escape = copy.deepcopy(registry)
        path_escape["templates"][0]["canonical_relation_file"] = (
            "../proof-template-relations/relation.sr1cs.gz"
        )
        mutations.append(path_escape)
        digest_drift = copy.deepcopy(registry)
        digest_drift["templates"][0]["canonical_relation_sha256_hex"] = "0" * 64
        mutations.append(digest_drift)
        unsorted = copy.deepcopy(registry)
        unsorted["templates"][0], unsorted["templates"][1] = (
            unsorted["templates"][1],
            unsorted["templates"][0],
        )
        mutations.append(unsorted)
        for index, mutation in enumerate(mutations):
            with self.subTest(index=index):
                directory, path = self.write_repo_json(
                    mutation, f"registry-{index}.json"
                )
                try:
                    with self.assertRaises(ValueError):
                        ownership.load_registry(path)
                finally:
                    directory.cleanup()

    def test_every_ir_is_exactly_and_canonically_validated(self) -> None:
        source_path = ownership.certified_ir_paths()[0]
        source = ownership.load_ir(source_path)
        mutations = []
        extra_top = copy.deepcopy(source)
        extra_top["unreviewed"] = True
        mutations.append(extra_top)
        extra_segment = copy.deepcopy(source)
        extra_segment["segments"][1]["unreviewed"] = True
        mutations.append(extra_segment)
        overlapping_role = copy.deepcopy(source)
        overlapping_role["segments"][1]["wire_roles"]["output"].append(
            overlapping_role["segments"][1]["wire_roles"]["input"][0]
        )
        mutations.append(overlapping_role)
        missing_class_instance = copy.deepcopy(source)
        missing_class_instance["classes"][0]["instance_segment_indices"].pop()
        mutations.append(missing_class_instance)
        for index, mutation in enumerate(mutations):
            with self.subTest(index=index):
                directory, path = self.write_repo_json(
                    mutation, source_path.name
                )
                try:
                    with self.assertRaises(ValueError):
                        ownership.load_ir(path)
                finally:
                    directory.cleanup()

    def test_owned_file_audit_rejects_symlinks_escape_and_hardlink_aliases(
        self,
    ) -> None:
        with tempfile.TemporaryDirectory(dir=ownership.ROOT) as directory:
            root = Path(directory)
            source = root / "source.lean"
            source.write_text("theorem source : True := True.intro\n")
            audit = ownership.RepoFileAudit()
            source_relative = audit.inspect(source, label="source")
            self.assertEqual(
                source_relative, source.relative_to(ownership.ROOT).as_posix()
            )
            self.assertEqual(
                audit.inspect(source, label="same source"), source_relative
            )

            hardlink = root / "hardlink.lean"
            os.link(source, hardlink)
            with self.assertRaisesRegex(ValueError, "hard-link aliases"):
                audit.inspect(hardlink, label="hard link")

            symlink = root / "symlink.lean"
            os.symlink(source.name, symlink)
            with self.assertRaisesRegex(ValueError, "symlinked"):
                ownership.RepoFileAudit().inspect(symlink, label="symlink")

        with tempfile.TemporaryDirectory() as directory:
            outside = Path(directory) / "outside.lean"
            outside.write_text("theorem outside : True := True.intro\n")
            with self.assertRaisesRegex(ValueError, "outside repository"):
                ownership.RepoFileAudit().inspect(outside, label="outside")


if __name__ == "__main__":
    unittest.main()
