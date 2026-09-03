import importlib.util
from pathlib import Path
import sys
import unittest


ROOT = Path(__file__).resolve().parents[2]
SPEC = importlib.util.spec_from_file_location(
    "check_internal_versioning", ROOT / "scripts" / "check_internal_versioning.py"
)
assert SPEC is not None and SPEC.loader is not None
CHECKER = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = CHECKER
SPEC.loader.exec_module(CHECKER)


class InternalVersioningTest(unittest.TestCase):
    def test_rejects_internal_proof_abi_and_witness_revisions(self) -> None:
        failures = CHECKER.violations(
            "fixture.rs", ["TransferAbiV21", "TransferWitnessV8"]
        )
        self.assertEqual(len(failures), 2)

    def test_allows_only_the_two_snarkpack_wire_domains(self) -> None:
        failures = CHECKER.violations(
            "fixture.rs",
            [
                'b"shieldd.nullifier.history.node.v2"',
                'b"shieldd.snarkpack.aggregate_proof.v1\\0"',
                'b"shieldd.snarkpack.aggregate_proof.v2\\0"',
                "historical_generation_indexed_v2",
            ],
        )
        self.assertEqual(failures, [])

    def test_rejects_other_snarkpack_wire_versions(self) -> None:
        failures = CHECKER.violations(
            "fixture.rs",
            [
                'b"shieldd.snarkpack.transcript.v1"',
                'b"shieldd.snarkpack.aggregate_proof.v3"',
            ],
        )
        self.assertEqual(len(failures), 2)

    def test_rejects_internal_statement_domains_in_proto_files(self) -> None:
        failures = CHECKER.violations(
            "fixture.proto", ['string domain = "statement_hash.v8";']
        )
        self.assertEqual(len(failures), 1)


if __name__ == "__main__":
    unittest.main()
