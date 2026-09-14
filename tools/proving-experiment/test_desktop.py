from dataclasses import asdict
from pathlib import Path
import json
import tempfile
import unittest
from desktop import ORDERS, Sample, load_samples
from api_gate import digest, parse_header

class DesktopRecordTests(unittest.TestCase):
    def test_schedule_has_exactly_five_samples_per_backend(self):
        self.assertTrue(all(sorted(order) == list("ABC") for order in ORDERS))
        self.assertEqual(len(ORDERS), 5)
        self.assertEqual({c: ''.join(ORDERS).count(c) for c in "ABC"}, {c: 5 for c in "ABC"})

    def test_resume_rejects_changed_proof_and_duplicate_measurement(self):
        with tempfile.TemporaryDirectory() as directory:
            out = Path(directory); (out / "proofs").mkdir()
            proof = b"verified-test-record"
            sample = Sample("first/A", "A", "first", True, 100, 10, 90, digest(proof), len(proof), True, 200, {})
            encoded = json.dumps(asdict(sample))+"\n"
            path = out / "proofs/first-A.bin"; path.write_bytes(proof)
            log = out / "samples.jsonl"; log.write_text(encoded)
            samples, ids, hashes = load_samples(out)
            self.assertEqual((len(samples), ids, hashes), (1, {"first/A"}, {digest(proof)}))
            log.write_text(encoded+encoded)
            with self.assertRaisesRegex(RuntimeError, "duplicate"):
                load_samples(out)
            log.write_text(encoded); path.write_bytes(proof+b"changed")
            with self.assertRaisesRegex(RuntimeError, "hash mismatch"):
                load_samples(out)

    def test_worker_records_reject_unbounded_and_unknown_fields(self):
        for raw in [{"schema":"x", "op":"prove", "payload_bytes":-1}, {"schema":"x", "op":"prove", "payload_bytes":2**31}, {"schema":"x", "op":"prove", "payload_bytes":0, "unexpected":True}]:
            with self.assertRaises(RuntimeError):
                parse_header(raw)

if __name__ == "__main__":
    unittest.main()
