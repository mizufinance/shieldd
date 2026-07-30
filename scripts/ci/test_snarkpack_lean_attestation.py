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
        self.controls = (Path("control/toolchain"), Path("control/workflow"))
        for path, text in (
            (self.controls[0], "leanprover/lean4:v4.19.0\n"),
            (self.controls[1], "jobs: {}\n"),
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
        ):
            absolute = self.root / path
            absolute.parent.mkdir(parents=True, exist_ok=True)
            absolute.write_text(text, encoding="utf-8")
        self.markers = self.root / "markers"

    def tearDown(self) -> None:
        self.directory.cleanup()

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
            control_inputs=self.controls,
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

    def test_control_change_invalidates_every_selected_module(self) -> None:
        before = self._fingerprints(("Ipp.Middle", "Ipp.Other"))
        (self.root / self.controls[1]).write_text(
            "jobs: {lean: {}}\n", encoding="utf-8"
        )
        after = self._fingerprints(("Ipp.Middle", "Ipp.Other"))
        self.assertNotEqual(before.state_sha256, after.state_sha256)
        self.assertNotEqual(before.fingerprints, after.fingerprints)

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
            ATTESTATION.AttestationError, "exact Lean cache has missing marker"
        ):
            ATTESTATION.plan(
                values, self.markers, exact_cache=True, force_all=False
            )
        ATTESTATION.record(values, self.markers)
        marker = self.markers / "Ipp.Middle.sha256"
        marker.write_text("0" * 64 + "\n", encoding="ascii")
        with self.assertRaisesRegex(
            ATTESTATION.AttestationError,
            "exact Lean cache has mismatched marker",
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
