from __future__ import annotations

import sys
import unittest
from pathlib import Path
from unittest.mock import patch


SCRIPTS = Path(__file__).resolve().parents[1]
ROOT = SCRIPTS.parent
sys.path.insert(0, str(SCRIPTS))

import fv_rust_evidence_classification as CLASSIFICATION
import fv_specification_completeness as CHECK
import gen_fv_specification_matrix as GENERATE


def selected_specs() -> tuple[tuple[str, str, str], ...]:
    return tuple(
        spec
        for owners in (
            CLASSIFICATION.PROPERTY_OWNER_SPECS,
            CLASSIFICATION.ARTIFACT_OWNER_SPECS,
        )
        for specs in owners.values()
        for spec in specs
    )


class RustEvidenceClassificationTests(unittest.TestCase):
    def test_source_censuses_are_exact_spec_projections(self) -> None:
        self.assertEqual(
            CLASSIFICATION.PROPERTY_SOURCE_CENSUS,
            tuple(
                sorted(
                    {
                        path
                        for specs in (
                            CLASSIFICATION.PROPERTY_OWNER_SPECS.values()
                        )
                        for _, path, _ in specs
                    }
                )
            ),
        )
        self.assertEqual(
            CLASSIFICATION.ARTIFACT_SOURCE_CENSUS,
            tuple(
                sorted(
                    {
                        path
                        for specs in (
                            CLASSIFICATION.ARTIFACT_OWNER_SPECS.values()
                        )
                        for _, path, _ in specs
                    }
                )
            ),
        )

    def test_every_classified_selector_is_live_and_nonignored(self) -> None:
        classified = {
            (path, symbol)
            for _, path, symbol in selected_specs()
        } | {
            (path, symbol)
            for path, symbols in CLASSIFICATION.EXCLUSION_SYMBOLS.items()
            for symbol in symbols
        }
        by_path: dict[str, set[str]] = {}
        for path, symbol in classified:
            by_path.setdefault(path, set()).add(symbol)

        for relative_path, expected in sorted(by_path.items()):
            source = (ROOT / relative_path).read_text(encoding="utf-8")
            live = {
                function["name"]
                for function in CHECK._rust_function_declarations(source)
                if CHECK._rust_has_named_attribute(
                    function["attributes_scrubbed"],
                    "test",
                )
                and not CHECK._rust_has_named_attribute(
                    function["attributes_scrubbed"],
                    "ignore",
                )
            }
            self.assertTrue(
                expected <= live,
                f"{relative_path}: stale={sorted(expected-live)}",
            )

    def test_normative_selections_need_no_nondefault_feature(self) -> None:
        by_path: dict[str, set[str]] = {}
        for _, path, symbol in selected_specs():
            by_path.setdefault(path, set()).add(symbol)
        gated: list[tuple[str, str]] = []
        for relative_path, selected in sorted(by_path.items()):
            path = ROOT / relative_path
            source = path.read_text(encoding="utf-8")
            for function in CHECK._rust_function_declarations(source):
                if (
                    function["name"] in selected
                    and CHECK._rust_cfg_expressions_disable_test(
                        function["feature_cfg_expressions"],
                        CHECK._rust_test_enabled_features(
                            path,
                            "classification",
                            function["name"],
                        ),
                    )
                ):
                    gated.append((relative_path, function["name"]))
        self.assertEqual(gated, [])

    def test_proof_guarded_evidence_uses_release_prover_execution(self) -> None:
        declarations_by_path: dict[str, dict[str, dict[str, object]]] = {}
        guarded: list[str] = []
        for test in GENERATE.tests():
            relative_path = test["path"]
            if not relative_path.endswith(".rs"):
                continue
            declarations = declarations_by_path.get(relative_path)
            if declarations is None:
                source = (ROOT / relative_path).read_text(encoding="utf-8")
                declarations = {
                    function["name"]: function
                    for function in CHECK._rust_function_declarations(source)
                }
                declarations_by_path[relative_path] = declarations
            declaration = declarations.get(test["symbol"])
            if declaration is None:
                continue
            body = str(declaration["body"])
            if (
                "should_skip_" not in body
                or "_proof_roundtrip_tests" not in body
            ):
                continue
            guarded.append(test["id"])
            execution = GENERATE.execution_for(test)
            self.assertEqual(execution["build_profile"], "release", test["id"])
            self.assertTrue(execution["prover_required"], test["id"])
            checked_execution = CHECK.expected_test_execution(
                test["id"], relative_path, test["symbol"]
            )
            self.assertEqual(
                checked_execution["build_profile"], "release", test["id"]
            )
            self.assertTrue(
                checked_execution["prover_required"], test["id"]
            )

        self.assertIn("TRANSFER-PUBLIC-PROJECTION", guarded)

    def test_evidence_ids_do_not_collide_with_existing_ledgers(self) -> None:
        rendered = {
            test["id"]
            for contract in (
                GENERATE.property_test_contract(),
                GENERATE.artifact_test_contract(),
            )
            for test in contract["tests"]
        }
        proposed = {
            CLASSIFICATION.evidence_test_id(prefix, symbol)
            for prefix, owners in (
                ("PROPERTY", CLASSIFICATION.PROPERTY_OWNER_SPECS),
                ("ARTIFACT", CLASSIFICATION.ARTIFACT_OWNER_SPECS),
            )
            for specs in owners.values()
            for _, _, symbol in specs
        }
        existing = rendered - proposed
        CLASSIFICATION.validate_no_existing_id_collisions(existing)
        proposed_id = CLASSIFICATION.evidence_test_id(
            "PROPERTY",
            selected_specs()[0][2],
        )
        with self.assertRaisesRegex(ValueError, proposed_id):
            CLASSIFICATION.validate_no_existing_id_collisions(
                (*existing, proposed_id)
            )

    def test_invalid_kind_and_root_fail_closed(self) -> None:
        valid_path = "crates/view/src/note_manager.rs"
        for spec, error in (
            (
                ("unknown", valid_path, "invalid_kind_fixture"),
                "unsupported evidence kind",
            ),
            (
                ("invariant", "outside/security/root.rs", "bad_root_fixture"),
                "outside the Rust security roots",
            ),
        ):
            with self.subTest(error=error), patch.dict(
                CLASSIFICATION.PROPERTY_OWNER_SPECS,
                {"INVALID-FIXTURE": (spec,)},
            ):
                with self.assertRaisesRegex(ValueError, error):
                    CLASSIFICATION._validate()

    def test_exclusion_reason_coverage_fails_closed(self) -> None:
        with patch.dict(
            CLASSIFICATION.EXCLUSION_SYMBOLS,
            {"crates/view/src/unreasoned.rs": ("unreasoned_fixture",)},
        ):
            with self.assertRaisesRegex(ValueError, "unreasoned=.*unreasoned.rs"):
                CLASSIFICATION._validate()


if __name__ == "__main__":
    unittest.main()
