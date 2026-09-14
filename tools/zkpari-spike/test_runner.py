import tempfile
from pathlib import Path
import unittest
from run import ProofRecord, ProcessUsage, WorkloadTracker, SCENARIOS, backend_order, batch_request, corpus_entry, load_corpus, load_samples, save
from report import quantile, speedup_interval


class CorpusTests(unittest.TestCase):
    def proof(self, i):
        return ProofRecord(SCENARIOS[i % 6], "01" + "00" * 31, f"{i+1:02x}" + "00" * 127)

    def test_resume_preserves_prefix_and_rejects_gap_and_changed_identity(self):
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp)
            prefix = root / "corpus/zkpari"
            for i in range(2):
                save(prefix / f"{i:04}.json", corpus_entry(i, self.proof(i), "keys"))
            self.assertEqual(load_corpus(root,"zkpari","keys"), [self.proof(0),self.proof(1)])
            with self.assertRaises(RuntimeError): load_corpus(root,"zkpari","wrong-key")
            (prefix / "0000.json").unlink()
            with self.assertRaises(RuntimeError): load_corpus(root,"zkpari","keys")

    def test_duplicate_proof_bytes_cannot_enter_corpus(self):
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp)
            first = self.proof(0)
            second = ProofRecord(SCENARIOS[1], first.statement, first.proof)
            for i,p in enumerate((first,second)):
                save(root / "corpus/zkpari" / f"{i:04}.json", corpus_entry(i,p,"keys"))
            with self.assertRaises(RuntimeError): load_corpus(root,"zkpari","keys")

    def test_bad_wire_records_rejected(self):
        with self.assertRaises(RuntimeError): ProofRecord("unknown","00"*32,"00"*128)
        with self.assertRaises(RuntimeError): ProofRecord(SCENARIOS[0],"00"*31,"00"*128)
        with self.assertRaises(RuntimeError): ProofRecord(SCENARIOS[0],"00"*32,"AB"*128)


class MeasurementTests(unittest.TestCase):
    def test_short_ui_cpu_spike_does_not_abort_proving(self):
        renderer = ProcessUsage(1389, 610, 2 * 1024**3, "/Codex (Renderer)", 99)
        tracker = WorkloadTracker()
        self.assertEqual(tracker.classify([renderer], [], 0), (0, []))
        self.assertEqual(tracker.classify([renderer], [], 29), (0, []))
        self.assertEqual(tracker.classify([], [], 30), (0, []))
        self.assertEqual(tracker.classify([renderer], [], 40), (0, []))
        self.assertEqual(tracker.classify([renderer], [], 70), (0, [1389]))

    def test_aggregate_verifier_payload_does_not_carry_individual_proofs(self):
        records=[{"statement":"hash", "proof":"individual"}]
        self.assertEqual(batch_request("groth16",records,"wrapped"),{"op":"batch","statements":["hash"],"aggregate":"wrapped"})
        self.assertEqual(batch_request("zkpari",records),{"op":"batch","proofs":records})

    def test_resource_monitor_distinguishes_own_build_children(self):
        processes=[ProcessUsage(1,0,5,"/cargo"),ProcessUsage(2,1,10,"/rustc"),ProcessUsage(3,9,20,"/go")]
        tracker = WorkloadTracker()
        self.assertEqual(tracker.classify(processes,[1],0),(15,[3]))
        unknown = [ProcessUsage(4,9,2*1024**3,"/unlisted-compute",99)]
        self.assertEqual(tracker.classify(unknown,[],1),(0,[]))
        self.assertEqual(tracker.classify(unknown,[],31),(0,[4]))
        self.assertEqual(tracker.classify([ProcessUsage(5,9,20,"/rocqchk")],[],32),(0,[5]))

    def test_interrupted_final_append_preserves_completed_samples(self):
        with tempfile.TemporaryDirectory() as temp:
            path=Path(temp)/"samples.jsonl"
            path.write_bytes(b'{"sample_id":"done"}\n{"sample_id":')
            with self.assertRaises(RuntimeError): load_samples(path)
            self.assertEqual(load_samples(path,repair_tail=True),[{"sample_id":"done"}])
            self.assertEqual(path.read_bytes(),b'{"sample_id":"done"}\n')
            path.write_bytes(b'not json\n')
            with self.assertRaises(ValueError): load_samples(path,repair_tail=True)

    def test_backend_order_balanced_in_thirty_blocks(self):
        self.assertEqual(sum(backend_order(i)[0] == "groth16" for i in range(30)), 15)

    def test_paired_bootstrap_preserves_known_ratio(self):
        candidate = list(range(1,31))
        ratio = speedup_interval([v*2 for v in candidate],candidate)
        self.assertEqual((ratio["ratio"],ratio["ci95_low"],ratio["ci95_high"]),(2,2,2))
        with self.assertRaises(ValueError): speedup_interval([1],[1,2])

    def test_p95_interpolation(self):
        self.assertAlmostEqual(quantile(list(range(1,31)),.95),28.55)


if __name__ == "__main__": unittest.main()
