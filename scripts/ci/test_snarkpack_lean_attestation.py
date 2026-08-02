from __future__ import annotations

import importlib.util
import json
import sys
import tempfile
import unittest
from pathlib import Path


SCRIPT = Path(__file__).with_name("snarkpack_lean_attestation.py")
SPEC = importlib.util.spec_from_file_location(
    "snarkpack_lean_attestation", SCRIPT
)
assert SPEC is not None and SPEC.loader is not None
ATTESTATION = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = ATTESTATION
SPEC.loader.exec_module(ATTESTATION)


class SnarkPackLeanAttestationTests(unittest.TestCase):
    def setUp(self) -> None:
        self.directory = tempfile.TemporaryDirectory()
        self.root = Path(self.directory.name)
        self.lean = (
            self.root
            / "crates/crypto/proof-aggregation/formal/lean-ipp/Ipp"
        )
        self.lean.mkdir(parents=True)
        self.build_inputs = (Path("control/toolchain"),)
        self.audit_control = Path("control/workflow")
        self.environment_input = Path("control/aeneas-toolchain.toml")
        for path, text in (
            (self.build_inputs[0], "leanprover/lean4:v4.19.0\n"),
            (self.audit_control, "jobs: {}\n"),
            (
                self.environment_input,
                "[toolchain]\n"
                'lean = "leanprover/lean4:v4.19.0"\n'
                'hax_commit = "uncharged"\n'
                'image_digest = "sha256:'
                + "1" * 64
                + '"\n',
            ),
            (ATTESTATION.IMPACT_SCRIPT, self._impact_source()),
            (
                Path(
                    "crates/crypto/proof-aggregation/formal/lean-ipp/"
                    "Ipp/Base.lean"
                ),
                "def base : Nat := 1\n",
            ),
            (
                Path(
                    "crates/crypto/proof-aggregation/formal/lean-ipp/"
                    "Ipp/Middle.lean"
                ),
                "import Ipp.Base\n\ndef middle : Nat := base\n",
            ),
            (
                Path(
                    "crates/crypto/proof-aggregation/formal/lean-ipp/"
                    "Ipp/Top.lean"
                ),
                "import Ipp.Middle\n\ntheorem top : middle = 1 := rfl\n",
            ),
            (
                Path(
                    "crates/crypto/proof-aggregation/formal/lean-ipp/"
                    "Ipp/Other.lean"
                ),
                "def other : Nat := 7\n",
            ),
            (
                Path(
                    "crates/crypto/proof-aggregation/formal/lean-ipp/"
                    "Ipp/ProofAuditTest.lean"
                ),
                "import Ipp.Base\n\n#print axioms base\n",
            ),
        ):
            absolute = self.root / path
            absolute.parent.mkdir(parents=True, exist_ok=True)
            absolute.write_text(text, encoding="utf-8")
        self.markers = self.root / "markers"
        self.audits = self.root / "audits"

    def tearDown(self) -> None:
        self.directory.cleanup()

    def test_default_cache_is_committed_not_lake_state(self) -> None:
        self.assertEqual(
            ATTESTATION.DEFAULT_MARKER_DIR,
            ATTESTATION.EVIDENCE_ROOT / "modules",
        )
        self.assertEqual(
            ATTESTATION.DEFAULT_AUDIT_DIR,
            ATTESTATION.EVIDENCE_ROOT / "audits",
        )
        self.assertNotIn(".lake", ATTESTATION.EVIDENCE_ROOT.parts)

    @staticmethod
    def _impact_source() -> str:
        real = Path(__file__).with_name("snarkpack_fv_impact.py")
        return real.read_text(encoding="utf-8")

    def _fingerprints(
        self, selected: tuple[str, ...]
    ) -> ATTESTATION.FingerprintSet:
        return ATTESTATION.fingerprints(
            self.root,
            selected,
            build_inputs=self.build_inputs,
            environment_input=self.environment_input,
        )

    def test_fingerprint_binds_transitive_dependencies_not_reverse_users(self) -> None:
        before = self._fingerprints(("Ipp.Middle", "Ipp.Top"))
        other = self.lean / "Other.lean"
        other.write_text("def other : Nat := 8\n", encoding="utf-8")
        unrelated = self._fingerprints(("Ipp.Middle", "Ipp.Top"))
        self.assertEqual(before.fingerprints, unrelated.fingerprints)

        base = self.lean / "Base.lean"
        base.write_text("def base : Nat := 2\n", encoding="utf-8")
        after = self._fingerprints(("Ipp.Middle", "Ipp.Top"))
        self.assertNotEqual(
            before.fingerprints["Ipp.Middle"],
            after.fingerprints["Ipp.Middle"],
        )
        self.assertNotEqual(
            before.fingerprints["Ipp.Top"],
            after.fingerprints["Ipp.Top"],
        )

    def test_build_input_change_invalidates_every_selected_module(self) -> None:
        before = self._fingerprints(("Ipp.Middle", "Ipp.Other"))
        (self.root / self.build_inputs[0]).write_text(
            "leanprover/lean4:v4.20.0\n", encoding="utf-8"
        )
        after = self._fingerprints(("Ipp.Middle", "Ipp.Other"))
        self.assertNotEqual(before.state_sha256, after.state_sha256)
        self.assertNotEqual(before.fingerprints, after.fingerprints)

    def test_audit_control_change_does_not_invalidate_proof_builds(self) -> None:
        before = self._fingerprints(("Ipp.Middle", "Ipp.Other"))
        (self.root / self.audit_control).write_text(
            "jobs: {lean: {}}\n", encoding="utf-8"
        )
        after = self._fingerprints(("Ipp.Middle", "Ipp.Other"))
        self.assertEqual(before, after)

    def test_control_only_change_reuses_proof_and_raw_audit_evidence(self) -> None:
        before = self._fingerprints(("Ipp.ProofAuditTest",))
        build_log = self.root / "build.log"
        build_log.write_text(
            "info: Ipp/ProofAuditTest.lean:3:0: "
            "'base' does not depend on any axioms\n",
            encoding="utf-8",
        )
        ATTESTATION.record_audit_evidence(
            before,
            self.audits,
            build_log,
            validator=lambda _module, _text: None,
        )
        ATTESTATION.record(before, self.markers)
        (self.root / self.audit_control).write_text(
            "jobs: {lean: {parser: changed}}\n", encoding="utf-8"
        )
        after = self._fingerprints(("Ipp.ProofAuditTest",))
        result = ATTESTATION.plan(
            after,
            self.markers,
            exact_cache=True,
            force_all=False,
            audit_dir=self.audits,
        )
        self.assertEqual(before, after)
        self.assertEqual(result.pending, ())
        self.assertEqual(result.pending_audits, ())

    def test_lean_environment_projection_invalidates_only_relevant_changes(self) -> None:
        before = self._fingerprints(("Ipp.Middle",))
        environment = self.root / self.environment_input
        environment.write_text(
            "[toolchain]\n"
            'lean = "leanprover/lean4:v4.19.0"\n'
            'hax_commit = "changed-but-unrelated"\n'
            'image_digest = "sha256:'
            + "2" * 64
            + '"\n',
            encoding="utf-8",
        )
        unrelated = self._fingerprints(("Ipp.Middle",))
        self.assertEqual(before, unrelated)
        environment.write_text(
            "[toolchain]\n"
            'lean = "leanprover/lean4:v4.20.0"\n'
            'hax_commit = "changed-but-unrelated"\n'
            'image_digest = "sha256:'
            + "3" * 64
            + '"\n',
            encoding="utf-8",
        )
        changed = self._fingerprints(("Ipp.Middle",))
        self.assertNotEqual(before, changed)

    def test_prefix_cache_reuses_matching_modules_and_rebuilds_stale_ones(self) -> None:
        initial = self._fingerprints(("Ipp.Middle", "Ipp.Top"))
        empty = ATTESTATION.plan(
            initial, self.markers, exact_cache=False, force_all=False
        )
        self.assertEqual(empty.pending, ("Ipp.Middle", "Ipp.Top"))
        ATTESTATION.record(initial, self.markers)

        reused = ATTESTATION.plan(
            initial, self.markers, exact_cache=False, force_all=False
        )
        self.assertEqual(reused.pending, ())

        top = self.lean / "Top.lean"
        top.write_text(
            "import Ipp.Middle\n\ntheorem top : middle = 1 := by rfl\n",
            encoding="utf-8",
        )
        changed = self._fingerprints(("Ipp.Middle", "Ipp.Top"))
        pending = ATTESTATION.plan(
            changed, self.markers, exact_cache=False, force_all=False
        )
        self.assertEqual(pending.pending, ("Ipp.Top",))

    def test_exact_cache_missing_or_mismatched_marker_is_fatal(self) -> None:
        values = self._fingerprints(("Ipp.Middle",))
        with self.assertRaisesRegex(
            ATTESTATION.AttestationError,
            "committed Lean cache has missing marker",
        ):
            ATTESTATION.plan(
                values, self.markers, exact_cache=True, force_all=False
            )
        ATTESTATION.record(values, self.markers)
        marker = self.markers / "Ipp.Middle.sha256"
        marker.write_text("0" * 64 + "\n", encoding="ascii")
        with self.assertRaisesRegex(
            ATTESTATION.AttestationError,
            "committed Lean cache has mismatched marker",
        ):
            ATTESTATION.plan(
                values, self.markers, exact_cache=True, force_all=False
            )

    def test_force_all_rebuilds_even_valid_exact_cache(self) -> None:
        values = self._fingerprints(("Ipp.Middle", "Ipp.Top"))
        ATTESTATION.record(values, self.markers)
        result = ATTESTATION.plan(
            values, self.markers, exact_cache=True, force_all=True
        )
        self.assertEqual(result.pending, ("Ipp.Middle", "Ipp.Top"))

    def test_record_writes_exact_markers_without_temporary_files(self) -> None:
        values = self._fingerprints(("Ipp.Middle", "Ipp.Top"))
        ATTESTATION.record(values, self.markers)
        for module in values.selected:
            marker = self.markers / f"{module}.sha256"
            self.assertEqual(
                marker.read_text(encoding="ascii"),
                f"{values.fingerprints[module]}\n",
            )
        self.assertEqual(
            sorted(path.name for path in self.markers.glob("*.tmp")),
            [],
        )

    def test_malformed_restored_marker_fails_closed(self) -> None:
        values = self._fingerprints(("Ipp.Middle",))
        self.markers.mkdir()
        (self.markers / "Ipp.Middle.sha256").write_text(
            "not-a-digest\n", encoding="ascii"
        )
        with self.assertRaisesRegex(
            ATTESTATION.AttestationError, "malformed Lean attestation marker"
        ):
            ATTESTATION.plan(
                values, self.markers, exact_cache=False, force_all=False
            )

    def test_audit_evidence_is_content_addressed_and_revalidated(self) -> None:
        values = self._fingerprints(("Ipp.ProofAuditTest",))
        build_log = self.root / "build.log"
        build_log.write_text(
            "noise before\n"
            "info: Ipp/ProofAuditTest.lean:3:0: "
            "'base' does not depend on any axioms\n"
            "noise after\n",
            encoding="utf-8",
        )
        validated: list[tuple[str, str]] = []

        def validator(module: str, text: str) -> None:
            validated.append((module, text))
            self.assertIn("'base' does not depend on any axioms", text)

        ATTESTATION.record_audit_evidence(
            values,
            self.audits,
            build_log,
            validator=validator,
        )
        ATTESTATION.record(values, self.markers)
        result = ATTESTATION.plan(
            values,
            self.markers,
            exact_cache=True,
            force_all=False,
            audit_dir=self.audits,
        )
        self.assertEqual(result.pending, ())
        self.assertEqual(result.pending_audits, ())
        checked = ATTESTATION.validate_audit_evidence(
            values,
            self.audits,
            validator=validator,
        )
        self.assertEqual(checked, 1)
        self.assertEqual(
            [module for module, _ in validated],
            ["Ipp.ProofAuditTest", "Ipp.ProofAuditTest"],
        )

    def test_refreshed_json_audit_evidence_is_extracted_by_source(self) -> None:
        values = self._fingerprints(("Ipp.ProofAuditTest",))
        refreshed = self.root / "refreshed"
        refreshed.mkdir()
        expected = {
            "data": "'base' does not depend on any axioms",
            "fileName": "Ipp/ProofAuditTest.lean",
            "pos": {"column": 0, "line": 3},
            "severity": "information",
        }
        foreign = {
            **expected,
            "data": "'foreign' does not depend on any axioms",
            "fileName": "Ipp/ProofAuditOther.lean",
        }
        (refreshed / "Ipp.ProofAuditTest.log").write_text(
            json.dumps(foreign) + "\n" + json.dumps(expected) + "\n",
            encoding="utf-8",
        )
        validated: list[tuple[str, str]] = []

        ATTESTATION.record_audit_evidence_from_dir(
            values,
            self.audits,
            refreshed,
            validator=lambda module, text: validated.append((module, text)),
        )

        self.assertEqual(len(validated), 1)
        module, text = validated[0]
        self.assertEqual(module, "Ipp.ProofAuditTest")
        self.assertIn("'base' does not depend on any axioms", text)
        self.assertNotIn("foreign", text)
        self.assertEqual(
            (self.audits / "Ipp.ProofAuditTest.log").read_text(
                encoding="utf-8"
            ),
            text,
        )

    def test_fresh_audit_comparison_is_read_only_and_exact(self) -> None:
        values = self._fingerprints(("Ipp.ProofAuditTest",))
        refreshed = self.root / "refreshed"
        refreshed.mkdir()
        source = refreshed / "Ipp.ProofAuditTest.log"
        diagnostic = {
            "data": "'base' does not depend on any axioms",
            "fileName": "Ipp/ProofAuditTest.lean",
            "pos": {"column": 0, "line": 3},
            "severity": "information",
        }
        source.write_text(json.dumps(diagnostic) + "\n", encoding="utf-8")
        ATTESTATION.record(values, self.markers)
        ATTESTATION.record_audit_evidence_from_dir(
            values,
            self.audits,
            refreshed,
            validator=lambda _module, _text: None,
        )
        before = {
            path.name: path.read_bytes()
            for path in self.audits.iterdir()
        }

        checked = ATTESTATION.compare_audit_evidence_from_dir(
            values,
            self.audits,
            refreshed,
            validator=lambda _module, _text: None,
        )
        self.assertEqual(checked, 1)
        self.assertEqual(
            before,
            {path.name: path.read_bytes() for path in self.audits.iterdir()},
        )

        diagnostic["data"] = "'base' depends on axioms: [propext]"
        source.write_text(json.dumps(diagnostic) + "\n", encoding="utf-8")
        with self.assertRaisesRegex(
            ATTESTATION.AttestationError,
            "fresh Lean audit differs from committed evidence",
        ):
            ATTESTATION.compare_audit_evidence_from_dir(
                values,
                self.audits,
                refreshed,
                validator=lambda _module, _text: None,
            )

    def test_missing_or_tampered_audit_evidence_rebuilds_or_fails_exact(self) -> None:
        values = self._fingerprints(("Ipp.ProofAuditTest",))
        ATTESTATION.record(values, self.markers)
        prefix = ATTESTATION.plan(
            values,
            self.markers,
            exact_cache=False,
            force_all=False,
            audit_dir=self.audits,
        )
        self.assertEqual(prefix.pending, ())
        self.assertEqual(prefix.pending_audits, ("Ipp.ProofAuditTest",))
        with self.assertRaisesRegex(
            ATTESTATION.AttestationError,
            "missing or stale audit evidence",
        ):
            ATTESTATION.plan(
                values,
                self.markers,
                exact_cache=True,
                force_all=False,
                audit_dir=self.audits,
            )

        build_log = self.root / "build.log"
        build_log.write_text(
            "info: Ipp/ProofAuditTest.lean:3:0: "
            "'base' does not depend on any axioms\n",
            encoding="utf-8",
        )
        ATTESTATION.record_audit_evidence(
            values,
            self.audits,
            build_log,
            validator=lambda _module, _text: None,
        )
        (self.audits / "Ipp.ProofAuditTest.log").write_text(
            "tampered\n", encoding="utf-8"
        )
        with self.assertRaisesRegex(
            ATTESTATION.AttestationError, "audit log digest mismatch"
        ):
            ATTESTATION.plan(
                values,
                self.markers,
                exact_cache=False,
                force_all=False,
                audit_dir=self.audits,
            )

    def test_invalid_refreshed_logs_write_no_partial_audit_evidence(self) -> None:
        values = self._fingerprints(("Ipp.ProofAuditTest",))
        refreshed = self.root / "refreshed"
        refreshed.mkdir()
        (refreshed / "Ipp.ProofAuditTest.log").write_text(
            "no diagnostics\n", encoding="utf-8"
        )
        with self.assertRaisesRegex(
            ATTESTATION.AttestationError, "contains no audit diagnostics"
        ):
            ATTESTATION.record_audit_evidence_from_dir(
                values,
                self.audits,
                refreshed,
                validator=lambda _module, _text: None,
            )
        self.assertFalse(self.audits.exists())

    def test_selection_parser_rejects_empty_duplicate_and_unsafe_modules(self) -> None:
        for value in (
            "[]",
            '["Ipp.Top","Ipp.Top"]',
            '["Ipp.Top; touch bad"]',
            '{"module":"Ipp.Top"}',
        ):
            with self.subTest(value=value), self.assertRaises(
                ATTESTATION.AttestationError
            ):
                ATTESTATION._selected_modules(value)
        self.assertEqual(
            ATTESTATION._selected_modules(json.dumps(["Ipp.Top"])),
            ("Ipp.Top",),
        )

    def test_noncanonical_import_is_rejected_by_shared_strict_graph(self) -> None:
        (self.lean / "Top.lean").write_text(
            "import Ipp.Middle -- hidden dependency text\n",
            encoding="utf-8",
        )
        with self.assertRaisesRegex(
            ATTESTATION.AttestationError, "noncanonical Lean import"
        ):
            self._fingerprints(("Ipp.Top",))


if __name__ == "__main__":
    unittest.main()
