from __future__ import annotations

import importlib.util
import json
import os
import re
import sys
import tempfile
import unittest
from copy import deepcopy
from pathlib import Path
from unittest import mock


SCRIPTS = Path(__file__).resolve().parents[1]
SCRIPT = SCRIPTS / "gen-certified-circuit-artifacts.py"
sys.path.insert(0, str(SCRIPTS))
SPEC = importlib.util.spec_from_file_location(
    "gen_certified_circuit_artifacts", SCRIPT
)
assert SPEC is not None and SPEC.loader is not None
GEN = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(GEN)


class CertifiedCircuitArtifactTests(unittest.TestCase):
    def test_aggregate_rejects_symlinks_and_physical_aliases(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            source = root / "source.lean"
            source.write_text("source", encoding="utf-8")

            file_alias = root / "file-alias.lean"
            file_alias.symlink_to(source)
            with self.assertRaisesRegex(
                ValueError, "symlinked source closure path component"
            ):
                GEN.aggregate([file_alias], root)

            target_directory = root / "target"
            target_directory.mkdir()
            nested_source = target_directory / "nested.lean"
            nested_source.write_text("nested", encoding="utf-8")
            component_alias = root / "component"
            component_alias.symlink_to(
                target_directory, target_is_directory=True
            )
            with self.assertRaisesRegex(
                ValueError, "symlinked source closure path component"
            ):
                GEN.aggregate([component_alias / "nested.lean"], root)

            physical_alias = root / "physical-alias.lean"
            os.link(source, physical_alias)
            with self.assertRaisesRegex(
                ValueError, "physical source closure alias"
            ):
                GEN.aggregate([source, physical_alias], root)

    def test_aggregate_accepts_distinct_ordinary_sources(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            first = root / "A.lean"
            second = root / "Nested" / "B.lean"
            second.parent.mkdir()
            first.write_text("import Nested.B\n", encoding="utf-8")
            second.write_text("", encoding="utf-8")

            self.assertRegex(
                GEN.aggregate([first, second], root),
                r"^[0-9a-f]{64}$",
            )

    def test_local_python_closure_rejects_generator_symlink_and_alias(
        self,
    ) -> None:
        with tempfile.TemporaryDirectory() as directory:
            workspace = Path(directory)

            symlink_root = workspace / "symlink"
            symlink_root.mkdir()
            target = workspace / "target.py"
            target.write_text("", encoding="utf-8")
            symlink = symlink_root / "gen_root.py"
            symlink.symlink_to(target)
            with self.assertRaisesRegex(
                ValueError, "symlinked source closure path component"
            ):
                GEN.local_python_source_closure([symlink], symlink_root)

            alias_root = workspace / "alias"
            alias_root.mkdir()
            first = alias_root / "gen_first.py"
            first.write_text("", encoding="utf-8")
            second = alias_root / "gen_second.py"
            os.link(first, second)
            with self.assertRaisesRegex(
                ValueError, "physical source closure alias"
            ):
                GEN.local_python_source_closure([first], alias_root)

    def test_local_python_closure_follows_ordinary_imports(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            generator_dir = Path(directory)
            root = generator_dir / "gen_root.py"
            helper = generator_dir / "helper.py"
            unrelated = generator_dir / "unrelated.py"
            root.write_text("import helper\n", encoding="utf-8")
            helper.write_text("", encoding="utf-8")
            unrelated.write_text("", encoding="utf-8")

            self.assertEqual(
                {path.name for path in GEN.local_python_source_closure(
                    [root], generator_dir
                )},
                {"gen_root.py", "helper.py"},
            )

    def test_template_generator_discovery_rejects_symlinked_root(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            workspace = Path(directory)
            generator_dir = workspace / "gen"
            generator_dir.mkdir()
            target = workspace / "target.py"
            target.write_text("", encoding="utf-8")
            (generator_dir / "gen_bad_semantics.py").symlink_to(target)

            with self.assertRaisesRegex(
                ValueError, "symlinked source closure path component"
            ):
                GEN.template_generator_source_paths(generator_dir)

    def test_strict_json_rejects_ambiguous_values(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "input.json"
            cases = (
                ('{"schema": 1, "schema": 2}', "duplicate JSON key 'schema'"),
                ('{"schema": 1e10000}', "non-finite JSON number"),
                ('{"schema": "\\udfff"}', "unpaired Unicode surrogate"),
            )
            for source, message in cases:
                with self.subTest(message=message):
                    path.write_text(source, encoding="utf-8")
                    with self.assertRaisesRegex(ValueError, message):
                        GEN.load_strict_json(path, "test", root=path.parent)

    def test_template_semantic_closure_strictly_validates_ownership(
        self,
    ) -> None:
        with mock.patch.object(
            GEN,
            "validate_committed_ownership",
            wraps=GEN.validate_committed_ownership,
        ) as validator:
            self.assertRegex(
                GEN.template_semantic_closure("transfer"),
                r"^[0-9a-f]{64}$",
            )
        validator.assert_called_once_with(GEN.OWNERSHIP.resolve())

    def test_candidate_cannot_publish_certification_roots(self) -> None:
        catalog = json.loads(GEN.PROFILE_CATALOG.read_text(encoding="utf-8"))
        transfer = next(
            profile
            for profile in catalog["profiles"]
            if profile["label"] == "transfer"
        )
        transfer["status"] = "candidate"
        transfer["theorem_root"] = "ShielddGnarkFormal.Deployed.TransferRefinement"
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "profiles.json"
            path.write_text(
                json.dumps(catalog, indent=2, allow_nan=False) + "\n",
                encoding="utf-8",
            )
            with self.assertRaisesRegex(
                ValueError, "candidate profile publishes certification roots"
            ):
                GEN.load_profile_catalog(path, path.parent)

    def test_profile_catalog_rejects_symlinked_root_and_hardlink(self) -> None:
        catalog_bytes = GEN.PROFILE_CATALOG.read_bytes()
        with tempfile.TemporaryDirectory() as directory:
            workspace = Path(directory)
            target = workspace / "target"
            target.mkdir()
            (target / "profiles.json").write_bytes(catalog_bytes)
            alias_root = workspace / "alias"
            alias_root.symlink_to(target, target_is_directory=True)
            with self.assertRaisesRegex(
                ValueError, "symlinked source closure root"
            ):
                GEN.load_profile_catalog(
                    alias_root / "profiles.json", alias_root
                )

            hardlink_root = workspace / "hardlink"
            hardlink_root.mkdir()
            source = hardlink_root / "source.json"
            source.write_bytes(catalog_bytes)
            alias = hardlink_root / "alias.json"
            os.link(source, alias)
            with self.assertRaisesRegex(
                ValueError, "physical source closure alias"
            ):
                GEN.load_profile_catalog(alias, hardlink_root)

    def test_specification_manifests_reject_leaf_and_component_symlinks(
        self,
    ) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            target = root / "target.json"
            target.write_text("{}\n", encoding="utf-8")
            leaf = root / "leaf.json"
            leaf.symlink_to(target)
            with (
                mock.patch.object(GEN, "GNARK", root),
                mock.patch.object(
                    GEN,
                    "PROFILE_BY_LABEL",
                    {"leaf": {"manifest": "leaf.json"}},
                ),
                self.assertRaisesRegex(
                    ValueError, "symlinked source closure path component"
                ),
            ):
                GEN.specification_manifests()

            target_dir = root / "target-dir"
            target_dir.mkdir()
            (target_dir / "manifest.json").write_text(
                "{}\n", encoding="utf-8"
            )
            component = root / "component"
            component.symlink_to(target_dir, target_is_directory=True)
            with (
                mock.patch.object(GEN, "GNARK", root),
                mock.patch.object(
                    GEN,
                    "PROFILE_BY_LABEL",
                    {"component": {"manifest": "component/manifest.json"}},
                ),
                self.assertRaisesRegex(
                    ValueError, "symlinked source closure path component"
                ),
            ):
                GEN.specification_manifests()

    def test_backend_set_must_equal_certified_profile_set(self) -> None:
        profiles = deepcopy(GEN.PROFILE_BY_LABEL)
        profiles["transfer"]["status"] = "candidate"
        profiles["transfer"]["theorem_root"] = None
        profiles["transfer"]["coverage_report"] = None
        with self.assertRaisesRegex(
            ValueError, "certification backend/profile mismatch"
        ):
            GEN.load_backend_registry(profiles)

    def test_note_reshape_generator_provenance_covers_every_adapter(self) -> None:
        backend = GEN.BACKEND_BY_LABEL["note_reshape1x8"]
        paths = {
            path.name
            for path in GEN.generator_source_paths(backend)
        }
        self.assertTrue(
            {
                *GEN.NOTE_RESHAPE_GENERATOR_ROOTS,
                "note_reshape_adapter_model.py",
                "template_ir.py",
                "write_if_changed.py",
                "NoteReshapeCanonicalAddress.lean.tmpl",
                "NoteReshape1x8Balance.lean",
                "NoteReshape8x1Balance.lean",
            }
            <= paths,
            paths,
        )

    def test_deployed_generator_provenance_follows_local_imports(self) -> None:
        backend = GEN.BACKEND_BY_LABEL["transfer"]
        paths = {
            path.name
            for path in GEN.generator_source_paths(backend)
        }
        self.assertIn("gen_deployed_family.py", paths)
        self.assertIn("gen_note_reshape_family.py", paths)
        self.assertIn("write_if_changed.py", paths)

    def test_soundness_closure_pins_every_compiled_and_audited_root(self) -> None:
        sources = GEN.module_sources(GEN.LEAN)
        for circuit, backend in GEN.BACKEND_BY_LABEL.items():
            closure = set(GEN.soundness_source_paths(circuit))
            roots = {
                backend["theorem_root"],
                *backend["build_modules"],
                *(
                    target["root_module"]
                    for target in backend["axiom_targets"]
                ),
            }
            with self.subTest(circuit=circuit):
                self.assertEqual(
                    set(),
                    {
                        root
                        for root in roots
                        if sources[root] not in closure
                    },
                )

    def test_generated_soundness_sources_have_pinned_generator_owners(
        self,
    ) -> None:
        owner_pattern = re.compile(
            r"GENERATED by ([A-Za-z0-9_./-]+\.py)\b"
        )
        soundness_sources = {
            path
            for circuit in GEN.BACKEND_BY_LABEL
            for path in GEN.soundness_source_paths(circuit)
        }
        owners = {
            Path(match.group(1)).name
            for path in soundness_sources
            for match in owner_pattern.finditer(
                path.read_text(encoding="utf-8")
            )
        }
        pinned_generators = {
            path.name
            for backend in GEN.BACKEND_BY_LABEL.values()
            for path in GEN.generator_source_paths(backend)
        }
        pinned_generators.update(
            path.name
            for path in GEN.template_generator_source_paths()
        )
        self.assertTrue(owners)
        self.assertTrue(
            {
                "gen_note_reshape_canonical_address.py",
                "gen_deployed_family.py",
                "gen_certified_statement_hash_semantics.py",
            }
            <= owners,
            owners,
        )
        self.assertEqual(set(), owners - pinned_generators)

    def test_orphaned_artifact_and_sidecar_are_rejected(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            formal = Path(directory)
            expected = formal / "family-whole-circuit-lean-artifact.txt"
            expected.write_text("expected", encoding="utf-8")
            Path(f"{expected}.sha256").write_text("digest", encoding="utf-8")
            orphan = formal / "retired-whole-circuit-lean-artifact.txt"
            orphan.write_text("stale", encoding="utf-8")
            orphan_sidecar = Path(f"{orphan}.sha256")
            orphan_sidecar.write_text("stale", encoding="utf-8")
            (formal / "unrelated.txt").write_text("ignored", encoding="utf-8")

            self.assertEqual(
                GEN.unexpected_managed_artifacts({"family"}, formal),
                [orphan, orphan_sidecar],
            )

    def test_expected_managed_artifacts_reject_aliases(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            formal = Path(directory)
            artifact = formal / "family-whole-circuit-lean-artifact.txt"
            sidecar = Path(f"{artifact}.sha256")
            target = formal / "target.txt"
            target.write_text("artifact", encoding="utf-8")
            artifact.symlink_to(target.name)
            sidecar.write_text("digest", encoding="utf-8")
            with self.assertRaisesRegex(
                ValueError, "symlinked managed artifact path component"
            ):
                GEN.validate_expected_managed_artifacts(
                    {"family"}, formal
                )

        with tempfile.TemporaryDirectory() as directory:
            formal = Path(directory)
            artifact = formal / "family-whole-circuit-lean-artifact.txt"
            sidecar = Path(f"{artifact}.sha256")
            artifact.write_text("artifact", encoding="utf-8")
            sidecar.write_text("digest", encoding="utf-8")
            alias = formal / "alias.txt"
            os.link(artifact, alias)
            with self.assertRaisesRegex(
                ValueError, "physical managed artifact alias"
            ):
                GEN.validate_expected_managed_artifacts(
                    {"family"}, formal
                )

    def test_write_mode_authenticates_missing_managed_outputs(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            formal = Path(directory)
            GEN.validate_expected_managed_artifacts(
                {"family"},
                formal,
                allow_missing=True,
            )
            with self.assertRaisesRegex(
                ValueError, "missing managed artifact path"
            ):
                GEN.validate_expected_managed_artifacts(
                    {"family"},
                    formal,
                    allow_missing=False,
                )

    def test_unexpected_managed_artifact_cannot_hide_through_alias(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            formal = Path(directory)
            target = formal / "target.txt"
            target.write_text("stale", encoding="utf-8")
            orphan = formal / "retired-whole-circuit-lean-artifact.txt"
            orphan.symlink_to(target.name)
            with self.assertRaisesRegex(
                ValueError, "symlinked managed artifact path component"
            ):
                GEN.unexpected_managed_artifacts({"family"}, formal)


if __name__ == "__main__":
    unittest.main()
