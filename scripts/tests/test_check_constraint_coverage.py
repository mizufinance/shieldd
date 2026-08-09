import subprocess
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
CHECK = ROOT / "scripts/check-constraint-coverage.sh"


def bridge_import_function() -> str:
    lines = CHECK.read_text().splitlines()
    start = lines.index("bridge_import_for_theorem() {")
    end = next(i for i in range(start + 1, len(lines)) if lines[i] == "}")
    return "\n".join(lines[start : end + 1])


class BridgeImportTests(unittest.TestCase):
    def mapped_import(self, theorem: str) -> str:
        script = bridge_import_function() + '\nbridge_import_for_theorem "$1"'
        result = subprocess.run(
            ["bash", "-c", script, "bridge-import-test", theorem],
            check=True,
            capture_output=True,
            text=True,
        )
        return result.stdout.strip()

    def test_split_semantic_bridge_modules_resolve(self) -> None:
        self.assertEqual(
            self.mapped_import(
                "Shieldd.GnarkFormal.Deployed.DecafAssertOnCurve.circuit_sound"
            ),
            "ShielddGnarkFormal.Deployed.DecafAssertOnCurveBridge",
        )
        self.assertEqual(
            self.mapped_import(
                "Shieldd.GnarkFormal.DtkBridge."
                "decaf377_diversifiedTransmissionKey_sound"
            ),
            "ShielddGnarkFormal.DtkBridge.Semantics",
        )
        self.assertEqual(
            self.mapped_import(
                "Shieldd.GnarkFormal.isZeroExtracted_implies_is_zero"
            ),
            "ShielddGnarkFormal.ExtractedProofs",
        )

    def test_generic_namespace_mapping_remains_available(self) -> None:
        self.assertEqual(
            self.mapped_import("Shieldd.GnarkFormal.Poseidon3Bridge.circuit_sound"),
            "ShielddGnarkFormal.Poseidon3Bridge",
        )


if __name__ == "__main__":
    unittest.main()
