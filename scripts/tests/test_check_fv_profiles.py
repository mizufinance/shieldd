import importlib.util
import json
import tempfile
import unittest
from pathlib import Path


SCRIPT = Path(__file__).resolve().parents[1] / "check-fv-profiles.py"
SPEC = importlib.util.spec_from_file_location("check_fv_profiles", SCRIPT)
assert SPEC is not None and SPEC.loader is not None
CHECK = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(CHECK)


def transfer_profile() -> dict[str, object]:
    return {
        "label": "transfer",
        "kind": "transfer",
        "n_in": 2,
        "n_out": 2,
        "witness_format_version": 11,
        "witness": "internal/testfixtures/vectors/transfer_witness_v11.bin",
        "artifact_dir": "artifacts/transfer",
        "manifest": "artifacts/transfer/transfer-manifest.json",
        "status": "candidate",
        "theorem_root": None,
        "coverage_report": None,
    }


class ProfilePromotionTests(unittest.TestCase):
    def test_candidate_manifest_accepts_explicit_unclassified_bucket(self) -> None:
        segments = [
            {
                "index": 1,
                "op": "candidate.unmodeled",
                "args": ["reason=semantic_trace_pending"],
                "kind": "unclassified",
                "start": 0,
                "end": 67_014,
                "constraint_count": 67_014,
                "classification_note": "candidate coverage pending",
            }
        ]
        breakdown = {
            "total_constraints": 67_014,
            "constraints_by_kind": {"unclassified": 67_014},
            "segments_by_kind": {"unclassified": 1},
            "unclassified_constraints": 67_014,
            "unclassified_segments": 1,
        }

        CHECK.validate_manifest_segments(
            "shielded_ics20_withdrawal", segments, breakdown, 67_014
        )

    def test_manifest_recomputes_segment_and_unclassified_totals(self) -> None:
        segments = [
            {
                "index": 1,
                "op": "candidate.unmodeled",
                "kind": "unclassified",
                "start": 0,
                "end": 3,
                "constraint_count": 3,
            }
        ]
        breakdown = {
            "total_constraints": 3,
            "constraints_by_kind": {"unclassified": 2},
            "segments_by_kind": {"unclassified": 1},
            "unclassified_constraints": 3,
            "unclassified_segments": 1,
        }
        with self.assertRaisesRegex(SystemExit, "constraint total"):
            CHECK.validate_manifest_segments("candidate", segments, breakdown, 3)

        breakdown["constraints_by_kind"]["unclassified"] = 3
        breakdown["unclassified_constraints"] = 0
        with self.assertRaisesRegex(SystemExit, "unclassified constraint total"):
            CHECK.validate_manifest_segments("candidate", segments, breakdown, 3)

    def test_transfer_cannot_self_promote_without_an_exact_backend(self) -> None:
        profile = transfer_profile()
        profile["status"] = "certified"
        profile["theorem_root"] = CHECK.CERTIFICATION_ROOTS["note_reshape2x1"]
        profile["coverage_report"] = (
            "../../crates/core/component/shielded-pool/formal/"
            "note_reshape2x1-constraint-coverage-report.json"
        )

        with self.assertRaisesRegex(SystemExit, "no exact certification backend"):
            CHECK.validate_profile(profile)

    def test_candidate_cannot_publish_partial_certification_roots(self) -> None:
        profile = transfer_profile()
        profile["coverage_report"] = (
            "../../crates/core/component/shielded-pool/formal/"
            "note_reshape2x1-constraint-coverage-report.json"
        )

        with self.assertRaisesRegex(
            SystemExit, "must have null theorem and coverage roots"
        ):
            CHECK.validate_profile(profile)

    def test_profile_cannot_redirect_or_relabel_the_canonical_witness(self) -> None:
        profile = transfer_profile()
        profile["witness"] = (
            "internal/testfixtures/vectors/shielded_ics20_withdrawal_witness_v6.bin"
        )
        with self.assertRaisesRegex(SystemExit, "witness path"):
            CHECK.validate_profile(profile)

        profile = transfer_profile()
        profile["witness_format_version"] = 12
        with self.assertRaisesRegex(SystemExit, "witness format version"):
            CHECK.validate_profile(profile)

    def test_profile_paths_reject_lexical_aliases(self) -> None:
        with self.assertRaisesRegex(SystemExit, "normalized relative path"):
            CHECK.profile_path(
                "transfer",
                "witness",
                "internal/testfixtures/../testfixtures/vectors/transfer_witness_v11.bin",
                root=CHECK.GNARK,
            )

    def test_strict_json_rejects_duplicate_keys(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "duplicate.json"
            path.write_text('{"schema": 1, "schema": 2}', encoding="utf-8")
            with self.assertRaisesRegex(SystemExit, "duplicate JSON key 'schema'"):
                CHECK.load_json(path, "test")

    def test_metadata_rejects_formatting_aliases(self) -> None:
        path = CHECK.GNARK / "artifacts/transfer/circuit_metadata.json"
        metadata = CHECK.load_json(path, "transfer metadata")
        self.assertIsInstance(metadata, dict)
        CHECK.validate_canonical_metadata_json(
            metadata,
            path.read_text(encoding="utf-8"),
            "transfer",
        )
        with self.assertRaisesRegex(SystemExit, "not canonical"):
            CHECK.validate_canonical_metadata_json(
                metadata,
                json.dumps(metadata),
                "transfer",
            )

    def test_witness_header_rejects_noncanonical_magic_and_length(self) -> None:
        canonical = b"PTWG" + (11).to_bytes(4, "little") + (12).to_bytes(
            4, "little"
        )
        CHECK.validate_witness_header("transfer", "transfer", 11, canonical)

        with self.assertRaisesRegex(SystemExit, "witness magic"):
            CHECK.validate_witness_header(
                "transfer", "transfer", 11, b"XXXX" + canonical[4:]
            )
        with self.assertRaisesRegex(SystemExit, "witness header length"):
            CHECK.validate_witness_header(
                "transfer",
                "transfer",
                11,
                canonical[:8] + (13).to_bytes(4, "little"),
            )

    def test_new_generated_runtime_family_requires_an_fv_profile(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            registry = Path(directory) / "transfer_families_generated.go"
            registry.write_text(
                """package generated

var TransferFamilies = []TransferFamilySpec{
    {Label: "transfer", NIn: 2, NOut: 2},
    {Label: "transfer3x3", NIn: 3, NOut: 3},
}
""",
                encoding="utf-8",
            )
            runtime = CHECK.parse_generated_go_registry(
                registry, "TransferFamilies", "transfer"
            )
            abi = {
                "transfer": (
                    11,
                    "internal/testfixtures/vectors/transfer_witness_v11.bin",
                ),
                "transfer3x3": (
                    11,
                    "internal/testfixtures/vectors/transfer3x3_witness_v11.bin",
                ),
            }
            with self.assertRaisesRegex(
                SystemExit,
                r"catalog/runtime registry mismatch: missing=\['transfer3x3'\]",
            ):
                CHECK.validate_registry_completeness(
                    {"transfer"}, runtime, profile_abi=abi
                )

    def test_runtime_registry_shapes_match_current_profile_abi(self) -> None:
        runtime = CHECK.load_runtime_profiles()
        self.assertEqual(set(runtime), set(CHECK.PROFILE_ABI))
        self.assertEqual(runtime["transfer"], ("transfer", 2, 2))
        self.assertEqual(
            runtime["shielded_ics20_withdrawal"],
            ("shielded_ics20_withdrawal", 2, 1),
        )


if __name__ == "__main__":
    unittest.main()
