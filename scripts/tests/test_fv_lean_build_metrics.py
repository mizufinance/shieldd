import importlib.util
import json
import sys
import tempfile
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
SPEC = importlib.util.spec_from_file_location(
    "fv_lean_build_metrics", ROOT / "scripts/fv_lean_build_metrics.py"
)
assert SPEC is not None and SPEC.loader is not None
METRICS = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = METRICS
SPEC.loader.exec_module(METRICS)


class LeanBuildMetricsTests(unittest.TestCase):
    def test_cache_identity_is_content_addressed_and_target_specific(self) -> None:
        common = {
            "platform_name": "linux-x86_64",
            "toolchain_sha256": "toolchain",
            "lake_manifest_sha256": "lake",
            "semantic": {"ir": "one"},
            "sources": {"generator": "two"},
        }
        first, components = METRICS.cache_identity(target="A", **common)
        second, _ = METRICS.cache_identity(target="A", **common)
        other_target, _ = METRICS.cache_identity(target="B", **common)
        other_ir, _ = METRICS.cache_identity(
            target="A", **(common | {"semantic": {"ir": "changed"}})
        )
        self.assertEqual(first, second)
        self.assertNotEqual(first, other_target)
        self.assertNotEqual(first, other_ir)
        self.assertEqual(set(components), {
            "target", "platform", "toolchain", "lake_manifest",
            "semantic_inputs", "proof_sources",
        })

    def test_import_closure_counts_only_reachable_generated_modules(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            lean = Path(directory)
            (lean / "App").mkdir()
            (lean / "App/Main.lean").write_text(
                "import App.Middle\nimport Mathlib\n", encoding="utf-8"
            )
            (lean / "App/Middle.lean").write_text(
                "import App.Generated\n", encoding="utf-8"
            )
            (lean / "App/Generated.lean").write_text(
                "/- GENERATED; DO NOT EDIT. -/\n", encoding="utf-8"
            )
            (lean / "App/Unrelated.lean").write_text("", encoding="utf-8")
            closure = METRICS.import_closure(lean, "App.Main")
            self.assertEqual(
                closure.modules, ("App.Generated", "App.Main", "App.Middle")
            )
            self.assertEqual(len(closure.generated_paths), 1)

    def test_cache_snapshot_accepts_an_all_circuit_scope(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            lean = root / "tools/gnark/lean"
            lean.mkdir(parents=True)
            (lean / "lean-toolchain").write_text("leanprover/lean4:test\n")
            (lean / "lake-manifest.json").write_text("{}\n")
            result = METRICS.cache_snapshot(
                root=root,
                lean_dir=lean,
                target="certified-circuits-all",
            )

        self.assertTrue(str(result["cache_identity"]).startswith("fv-lean-v1-"))

    def test_target_semantic_inputs_exclude_unrelated_circuit_irs(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            formal = root / "crates/core/component/shielded-pool/formal"
            artifacts = root / "tools/gnark/artifacts"
            formal.mkdir(parents=True)
            artifacts.mkdir(parents=True)
            (formal / "transfer-deployed-slice-ir.json").write_text("transfer")
            (formal / "note_reshape1x8-deployed-slice-ir.json").write_text("note")
            (artifacts / "certified-template-inventory.json").write_text(
                json.dumps({
                    "templates": [
                        {"template_key": "t", "circuits": ["transfer"]},
                        {"template_key": "n", "circuits": ["note_reshape1x8"]},
                    ]
                })
            )
            selected = METRICS.semantic_digests_for_target(
                root, "ShielddGnarkFormal.Deployed.TransferRefinement"
            )
            self.assertIn("relation_ir:transfer", selected)
            self.assertNotIn("relation_ir:note_reshape1x8", selected)
            self.assertIn("target_template_inventory", selected)

    def test_missing_local_import_fails_closed(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            lean = Path(directory)
            (lean / "ShielddGnarkFormal").mkdir()
            (lean / "ShielddGnarkFormal/Main.lean").write_text(
                "import ShielddGnarkFormal.Missing\n", encoding="utf-8"
            )
            with self.assertRaisesRegex(ValueError, "unresolved local import"):
                METRICS.import_closure(lean, "ShielddGnarkFormal.Main")

    def test_budget_selects_cold_or_warm_limit(self) -> None:
        budgets = {
            "change_classes": {
                "seating": {
                    "max_cold_seconds": 10,
                    "max_warm_seconds": 2,
                    "max_peak_rss_mb": 20,
                    "max_import_modules": 4,
                    "max_generated_modules": 1,
                }
            }
        }
        warm = {
            "change_class": "seating",
            "cache_state": "warm",
            "wall_seconds": 3,
            "peak_rss_mb": 10,
            "module_count": 3,
            "generated_module_count": 1,
        }
        self.assertEqual(
            METRICS.violations(warm, budgets), ["wall_seconds=3 exceeds 2"]
        )
        cold = dict(warm, cache_state="cold")
        self.assertEqual(METRICS.violations(cold, budgets), [])

    def test_changed_digests_reports_added_removed_and_modified_keys(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            baseline = Path(directory) / "baseline.json"
            baseline.write_text(
                json.dumps({"digests": {"same": "a", "changed": "old", "gone": "x"}}),
                encoding="utf-8",
            )
            self.assertEqual(
                METRICS.changed_digests(
                    {"same": "a", "changed": "new", "added": "y"}, baseline
                ),
                ["added", "changed", "gone"],
            )


if __name__ == "__main__":
    unittest.main()
