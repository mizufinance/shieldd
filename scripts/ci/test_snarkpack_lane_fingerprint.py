from __future__ import annotations

import importlib.util
import json
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import patch


SCRIPT = Path(__file__).with_name("snarkpack_lane_fingerprint.py")
SPEC = importlib.util.spec_from_file_location(
    "snarkpack_lane_fingerprint", SCRIPT
)
assert SPEC is not None and SPEC.loader is not None
FINGERPRINT = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = FINGERPRINT
SPEC.loader.exec_module(FINGERPRINT)


class SnarkPackLaneFingerprintTests(unittest.TestCase):
    def setUp(self) -> None:
        self.directory = tempfile.TemporaryDirectory()
        self.root = Path(self.directory.name)
        subprocess.run(["git", "init", "-q"], cwd=self.root, check=True)
        subprocess.run(
            ["git", "config", "user.email", "test@example.invalid"],
            cwd=self.root,
            check=True,
        )
        subprocess.run(
            ["git", "config", "user.name", "Test"],
            cwd=self.root,
            check=True,
        )
        (self.root / "control").mkdir()
        (self.root / "crate/src").mkdir(parents=True)
        (self.root / "control/workflow.yml").write_text(
            "jobs: {}\n", encoding="utf-8"
        )
        (self.root / "crate/Cargo.toml").write_text(
            "[package]\nname='fixture'\nversion='0.1.0'\n",
            encoding="utf-8",
        )
        (self.root / "crate/src/lib.rs").write_text(
            "pub fn value() -> u8 { 1 }\n", encoding="utf-8"
        )
        self._commit("initial")

    def tearDown(self) -> None:
        self.directory.cleanup()

    def _commit(self, message: str) -> None:
        subprocess.run(["git", "add", "-A"], cwd=self.root, check=True)
        subprocess.run(
            ["git", "commit", "-qm", message], cwd=self.root, check=True
        )

    def _fingerprint(self, *contexts: str) -> str:
        return FINGERPRINT.tracked_fingerprint(
            self.root,
            "fuzz",
            (Path("control"), Path("crate")),
            contexts,
        )

    def test_fingerprint_is_deterministic_and_order_independent(self) -> None:
        first = self._fingerprint("16")
        second = FINGERPRINT.tracked_fingerprint(
            self.root,
            "fuzz",
            (Path("crate"), Path("control"), Path("crate")),
            ("16",),
        )
        self.assertEqual(first, second)
        self.assertRegex(first, r"^[0-9a-f]{64}$")

    def test_context_change_invalidates_attestation(self) -> None:
        self.assertNotEqual(self._fingerprint("16"), self._fingerprint("256"))

    def test_tracked_dependency_change_invalidates_attestation(self) -> None:
        before = self._fingerprint("16")
        (self.root / "crate/src/lib.rs").write_text(
            "pub fn value() -> u8 { 2 }\n", encoding="utf-8"
        )
        self._commit("change dependency")
        self.assertNotEqual(before, self._fingerprint("16"))

    def test_proof_only_package_subtree_does_not_invalidate_rust_lane(
        self,
    ) -> None:
        proof = self.root / "crate/formal/Proof.lean"
        proof.parent.mkdir()
        proof.write_text("theorem first : True := by trivial\n", encoding="utf-8")
        self._commit("add proof")
        before = FINGERPRINT.tracked_fingerprint(
            self.root,
            "fuzz",
            (Path("crate"),),
            ("16",),
            excluded_paths=(Path("crate/formal"),),
            additional_paths=(Path("control"),),
        )

        proof.write_text(
            "theorem second : True := by trivial\n", encoding="utf-8"
        )

        self.assertEqual(
            before,
            FINGERPRINT.tracked_fingerprint(
                self.root,
                "fuzz",
                (Path("crate"),),
                ("16",),
                excluded_paths=(Path("crate/formal"),),
                additional_paths=(Path("control"),),
            ),
        )
        self._commit("change proof")
        self.assertEqual(
            before,
            FINGERPRINT.tracked_fingerprint(
                self.root,
                "fuzz",
                (Path("crate"),),
                ("16",),
                excluded_paths=(Path("crate/formal"),),
                additional_paths=(Path("control"),),
            ),
        )

    def test_explicit_control_below_excluded_subtree_remains_an_input(
        self,
    ) -> None:
        formal = self.root / "crate/formal"
        formal.mkdir()
        parser = formal / "parser.py"
        parser.write_text("REVISION = 1\n", encoding="utf-8")
        (formal / "Proof.lean").write_text(
            "theorem proof : True := by trivial\n", encoding="utf-8"
        )
        self._commit("add formal inputs")

        def fingerprint() -> str:
            return FINGERPRINT.tracked_fingerprint(
                self.root,
                "dos",
                (Path("crate"),),
                excluded_paths=(Path("crate/formal"),),
                additional_paths=(Path("crate/formal/parser.py"),),
            )

        before = fingerprint()
        parser.write_text("REVISION = 2\n", encoding="utf-8")
        with self.assertRaisesRegex(
            FINGERPRINT.FingerprintError,
            "differ from the frozen candidate commit",
        ):
            fingerprint()
        self._commit("change parser")
        self.assertNotEqual(before, fingerprint())

    def test_dirty_tracked_input_fails_closed(self) -> None:
        (self.root / "crate/src/lib.rs").write_text(
            "pub fn value() -> u8 { 2 }\n", encoding="utf-8"
        )
        with self.assertRaisesRegex(
            FINGERPRINT.FingerprintError,
            "differ from the frozen candidate commit",
        ):
            self._fingerprint("16")

    def test_cleanliness_uses_one_bounded_status_scan(self) -> None:
        calls: list[tuple[tuple[str, ...], int]] = []
        original = FINGERPRINT._run_git

        def recording_run_git(
            root: Path,
            args,
            *,
            text: bool = False,
            timeout_seconds: int = 60,
        ):
            calls.append((tuple(args), timeout_seconds))
            return original(
                root,
                args,
                text=text,
                timeout_seconds=timeout_seconds,
            )

        with patch.object(
            FINGERPRINT, "_run_git", side_effect=recording_run_git
        ):
            self._fingerprint("16")

        cleanliness = [
            (args, timeout)
            for args, timeout in calls
            if args and args[0] in {"status", "diff"}
        ]
        self.assertEqual(len(cleanliness), 1)
        self.assertEqual(cleanliness[0][0][:4], (
            "status",
            "--porcelain=v1",
            "-z",
            "--untracked-files=no",
        ))
        self.assertGreaterEqual(cleanliness[0][1], 180)

    def test_missing_or_untracked_required_input_fails_closed(self) -> None:
        with self.assertRaisesRegex(
            FINGERPRINT.FingerprintError, "required lane input is missing"
        ):
            FINGERPRINT.tracked_fingerprint(
                self.root, "dos", (Path("missing"),)
            )
        untracked = self.root / "untracked.txt"
        untracked.write_text("not committed\n", encoding="utf-8")
        with self.assertRaisesRegex(
            FINGERPRINT.FingerprintError, "has no tracked files"
        ):
            FINGERPRINT.tracked_fingerprint(
                self.root, "dos", (Path("untracked.txt"),)
            )

    def test_every_heavy_lane_has_declared_roots_and_controls(self) -> None:
        self.assertEqual(
            set(FINGERPRINT.LANE_PACKAGES),
            {"parity", "runtime"},
        )
        self.assertEqual(
            set(FINGERPRINT.LANE_PACKAGES),
            set(FINGERPRINT.LANE_CONTROLS),
        )
        self.assertIn(
            Path(".github/workflows/formal.yml"),
            FINGERPRINT.COMMON_CONTROLS,
        )
        self.assertIn(FINGERPRINT.SELF, FINGERPRINT.COMMON_CONTROLS)
        self.assertIn(
            Path("crates/crypto/proof-aggregation/formal"),
            FINGERPRINT.PROOF_ONLY_PACKAGE_PATHS,
        )
        parity_controls = FINGERPRINT.LANE_CONTROLS["parity"]
        self.assertNotIn(
            Path(
                "crates/crypto/proof-aggregation/formal/lean-ipp/"
                "Ipp/Extracted"
            ),
            parity_controls,
        )
        verification_manifest = Path(
            "crates/crypto/proof-aggregation/formal/snarkpack/"
            "verification-manifest.json"
        )
        self.assertNotIn(verification_manifest, parity_controls)
        self.assertNotIn(
            verification_manifest,
            FINGERPRINT.LANE_CONTROLS["runtime"],
        )
        parity_extraction = set(
            FINGERPRINT.parity_extraction_controls(FINGERPRINT.ROOT)
        )
        self.assertIn(FINGERPRINT.EXTRACTION_RUNTIME, parity_extraction)
        self.assertNotIn(
            FINGERPRINT.LEAN_ROOT / "Ipp/Goal.lean",
            parity_extraction,
        )
        manifest = json.loads(
            (
                FINGERPRINT.ROOT / FINGERPRINT.EXTRACTION_MANIFEST
            ).read_text(encoding="utf-8")
        )
        self.assertTrue(
            {
                Path(graph["output"])
                for graph in manifest["graphs"]
            }.issubset(parity_extraction)
        )

    def test_package_closure_uses_bounded_snarkpack_metadata_timeout(
        self,
    ) -> None:
        observed: list[int] = []

        def cargo_closure_rules(
            root: Path,
            source,
            event: str,
            *,
            metadata_timeout_seconds: int,
        ):
            self.assertEqual(root, self.root)
            self.assertEqual(source["packages"], ["fixture"])
            self.assertEqual(event, "pull_request")
            observed.append(metadata_timeout_seconds)
            return [SimpleNamespace(patterns=("crate/**",))]

        gate = SimpleNamespace(cargo_closure_rules=cargo_closure_rules)
        with patch.object(FINGERPRINT, "_load_gate_module", return_value=gate):
            self.assertEqual(
                FINGERPRINT.local_package_closure(
                    self.root, ("fixture",)
                ),
                (Path("crate"),),
            )
            self.assertEqual(
                FINGERPRINT.local_package_closure(
                    self.root,
                    ("fixture",),
                    metadata_timeout_seconds=240,
                ),
                (Path("crate"),),
            )

        self.assertEqual(
            observed,
            [FINGERPRINT.DEFAULT_CARGO_METADATA_TIMEOUT_SECONDS, 240],
        )

    def test_package_proof_exclusion_requires_selected_parent_crate(
        self,
    ) -> None:
        proof_root = Path("crates/crypto/proof-aggregation/formal")
        self.assertEqual(
            FINGERPRINT.package_proof_exclusions(
                (Path("crates/crypto/proof-aggregation"),)
            ),
            (proof_root,),
        )
        self.assertEqual(
            FINGERPRINT.package_proof_exclusions(
                (Path("crates/crypto/proof-aggregation-fuzz"),)
            ),
            (),
        )

    def test_cargo_metadata_timeout_rejects_unbounded_values(self) -> None:
        for value in (True, 0, -1, 901):
            with self.subTest(value=value):
                with self.assertRaisesRegex(
                    FINGERPRINT.FingerprintError,
                    "integer from 1 through 900 seconds",
                ):
                    FINGERPRINT.local_package_closure(
                        self.root,
                        ("fixture",),
                        metadata_timeout_seconds=value,
                    )

        parser = FINGERPRINT.parser()
        for value in ("0", "901", "not-a-number"):
            with self.subTest(cli=value):
                with self.assertRaises(SystemExit):
                    parser.parse_args(
                        [
                            "--lane",
                            "runtime",
                            "--cargo-metadata-timeout-seconds",
                            value,
                        ]
                    )


if __name__ == "__main__":
    unittest.main()
