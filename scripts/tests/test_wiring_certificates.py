from __future__ import annotations

import hashlib
import json
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
GNARK = ROOT / "tools/gnark"
FORMAL = ROOT / "crates/core/component/shielded-pool/formal"


class WiringCertificateClosureTests(unittest.TestCase):
    def test_every_certified_profile_has_a_pinned_wiring_certificate(self) -> None:
        catalog = json.loads((GNARK / "fv_profiles.json").read_text())
        certified = [
            profile["label"]
            for profile in catalog["profiles"]
            if profile["status"] == "certified"
        ]
        self.assertTrue(certified)
        for circuit in certified:
            with self.subTest(circuit=circuit):
                certificate_path = FORMAL / f"{circuit}-wiring-cert.json"
                sidecar_path = Path(f"{certificate_path}.sha256")
                certificate = json.loads(certificate_path.read_text())
                self.assertEqual(
                    certificate["schema"],
                    "shieldd.gnark.gadget_wiring_certificate.v1",
                )
                self.assertEqual(certificate["circuit"], circuit)
                self.assertEqual(
                    certificate["sr1cs_sha256_hex"],
                    json.loads(
                        (
                            GNARK
                            / "artifacts"
                            / circuit
                            / "circuit_metadata.json"
                        ).read_text()
                    )["sr1cs_sha256_hex"],
                )
                self.assertEqual(
                    sidecar_path.read_text().strip(),
                    hashlib.sha256(certificate_path.read_bytes()).hexdigest(),
                )


if __name__ == "__main__":
    unittest.main()
