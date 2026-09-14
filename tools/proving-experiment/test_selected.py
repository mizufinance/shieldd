import copy
import json
from pathlib import Path
import unittest
from selected_workers import parse_selected, MSM
from api_gate import CACHE
from selected_gate import fixtures
from api_gate import digest

class SelectedTests(unittest.TestCase):
    def test_selected_header_rejects_wrong_backend_extra_and_unbounded_values(self):
        raw={'schema':'shieldd.proving_experiment.selected_b.v1','op':'verify','payload_bytes':0,'error':None,'statement':None,'verified':True,'initialization':None,'request':None}
        self.assertTrue(parse_selected(copy.deepcopy(raw),'B').verified)
        for changes in ({'schema':'shieldd.proving_experiment.selected_c.v1'},{'payload_bytes':True},{'payload_bytes':1048577},{'payload_bytes':-1}):
            with self.assertRaises(RuntimeError): parse_selected(raw|changes,'B')
        with self.assertRaises(TypeError): parse_selected(raw|{'unexpected':1},'B')

    def test_selected_msm_is_the_validated_combined_binary(self):
        header=json.loads((CACHE/'gnark-combined-full/samples.jsonl').read_text().splitlines()[0])
        expected=next(f['sha256'] for f in header['files'] if Path(f['path']).name=='msmworker-combined')
        self.assertEqual(digest(MSM.read_bytes()),expected)

    def test_all_six_fixture_identities_and_statement_encodings_match(self):
        b,c=fixtures('B'),fixtures('C')
        self.assertEqual(len(b),6)
        self.assertEqual({x.scenario for x in b},{x.scenario for x in c})
        for f in b+c:
            self.assertEqual(digest(f.path.read_bytes()),f.sha256)
            self.assertEqual(len(bytes.fromhex(f.statement)),32)

if __name__=='__main__': unittest.main()
